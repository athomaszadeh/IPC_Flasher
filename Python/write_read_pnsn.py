import can
import time
import sys

TX_ID = 0x1C66D001
RX_ID = 0x1C66C001

def exchange(bus, label, can_data, timeout=1.0):
    formatted_data = list(can_data)
    while len(formatted_data) < 8:
        formatted_data.append(0x00)
    
    msg = can.Message(arbitration_id=TX_ID, data=formatted_data[:8], is_extended_id=True)
    print(f"[{label}] SEND -> {bytearray(msg.data).hex(' ').upper()}")
    bus.send(msg)
    
    start = time.time()
    while (time.time() - start) < timeout:
        rx = bus.recv(timeout=0.1)
        if rx and rx.arbitration_id == RX_ID:
            print(f"[{label}] RECV <- {rx.data.hex(' ').upper()}")
            return rx.data
    return None

def write_did_segmented(bus, did, string_val):
    did_bytes = [did >> 8, did & 0xFF]
    payload = [0x2E] + did_bytes + list(string_val.encode('ascii'))
    total_len = len(payload)
    
    print(f"\n--- Writing DID {did:04X}: {string_val} ---")
    
    # 1. First Frame
    ff_data = [0x10, total_len] + payload[:6]
    exchange(bus, "WRITE_FF", ff_data)
    
    # 2. Small pause for Flow Control processing
    time.sleep(0.15) 
    
    # 3. Consecutive Frames Loop
    remaining_data = payload[6:]
    frame_index = 1
    
    while len(remaining_data) > 0:
        pci = 0x20 + (frame_index & 0x0F)
        chunk = remaining_data[:7]
        remaining_data = remaining_data[7:]
        
        # We only wait for a response on the VERY LAST frame
        is_last = len(remaining_data) == 0
        label = f"WRITE_CF{frame_index}"
        
        if is_last:
            # Wait longer for the ECU to commit to memory and reply 6E
            res = exchange(bus, label, [pci] + chunk, timeout=2.0)
            if not res or res[1] != 0x6E:
                print(f"Warning: No 6E confirmation for {did:04X}. Sending finalize pulse...")
                bus.send(can.Message(arbitration_id=TX_ID, data=[0x00, 0x05, 0,0,0,0,0,0], is_extended_id=True))
                time.sleep(0.2)
        else:
            exchange(bus, label, [pci] + chunk, timeout=0.05)
            
        frame_index += 1
        time.sleep(0.1) # ECU processing time

def read_did_segmented(bus, did):
    did_bytes = [did >> 8, did & 0xFF]
    ff = exchange(bus, f"READ_{did:04X}", [0x03, 0x22] + did_bytes)
    
    if ff and (ff[0] & 0xF0) == 0x10:
        total_len = ff[1]
        bus.send(can.Message(arbitration_id=TX_ID, data=[0x30,0,0,0,0,0,0,0], is_extended_id=True))
        
        data = list(ff[5:])
        start_wait = time.time()
        while (time.time() - start_wait) < 1.0 and len(data) < (total_len - 3):
            rx = bus.recv(timeout=0.1)
            if rx and rx.arbitration_id == RX_ID:
                # Accept both 2x (ISO-TP) and 36 (Proprietary/Transfer) frames
                if (rx.data[0] & 0xF0) == 0x20 or rx.data[0] == 0x36:
                    data += list(rx.data[1:])
        
        return "".join([chr(b) if 32 <= b <= 126 else "" for b in data]).strip()
    return "READ_FAIL"

def run():
    if len(sys.argv) < 3:
        print("Usage: python script.py [Str1] [Str2]")
        return

    bus = can.interface.Bus(interface='pcan', channel='PCAN_USBBUS1', bitrate=500000)
    
    try:
        # Prerequisites
        exchange(bus, "SEC_SEED", [0x02, 0x27, 0x03])
        exchange(bus, "EXT_SESS", [0x02, 0x10, 0x03])
        exchange(bus, "TESTER_P", [0x02, 0x3E, 0x00])

        # Write
        write_did_segmented(bus, 0x0203, sys.argv[1])
        time.sleep(0.5) # Gap between DIDs
        write_did_segmented(bus, 0x0204, sys.argv[2])

        print("\n--- Verifying ---")
        time.sleep(1.0) # Wait for NVM to settle
        res1 = read_did_segmented(bus, 0x0203)
        res2 = read_did_segmented(bus, 0x0204)

        print(f"\nFinal Results:")
        print(f"0203: {res1} | Match: {res1 == sys.argv[1]}")
        print(f"0204: {res2} | Match: {res2 == sys.argv[2]}")
        
        if res1 == sys.argv[1] and res2 == sys.argv[2]:
            print(f"\nSuccess!")

    finally:
        bus.shutdown()

if __name__ == "__main__":
    run()