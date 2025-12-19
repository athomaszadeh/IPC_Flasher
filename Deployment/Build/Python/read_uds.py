import can
import time

TX_ID = 0x1C66D001
RX_ID = 0x1C66C001

def exchange(bus, label, payload):
    # Standard ISO-TP Single Frame wrapping
    can_data = [len(payload)] + list(payload)
    while len(can_data) < 8: can_data.append(0x00)
    msg = can.Message(arbitration_id=TX_ID, data=can_data, is_extended_id=True)
    print(f"[{label}] SEND -> {bytearray(can_data).hex(' ').upper()}")
    bus.send(msg)
    
    start = time.time()
    while (time.time() - start) < 1.0:
        rx = bus.recv(timeout=0.1)
        if rx and rx.arbitration_id == RX_ID:
            print(f"[{label}] RECV <- {rx.data.hex(' ').upper()}")
            return rx.data
    return None

def run():
    print("--- Initializing Hardware ---")
    bus = can.interface.Bus(interface='pcan', channel='PCAN_USBBUS1', bitrate=500000)
    
    try:
        # 1. Security Access Level 2
        exchange(bus, "SEC_SEED", [0x27, 0x03])
        # 2. Extended Session
        exchange(bus, "EXT_SESS", [0x10, 0x03])
        # 3. Tester Present
        exchange(bus, "TESTER_P", [0x3E, 0x00])

        for did in [[0x02, 0x03], [0x02, 0x04]]:
            did_str = f"{did[0]:02X}{did[1]:02X}"
            
            # Request Read - ECU responds with 10 XX (First Frame)
            first_frame = exchange(bus, f"READ_{did_str}", [0x22] + did)
            
            if first_frame and (first_frame[0] & 0xF0) == 0x10:
                total_len = first_frame[1]
                # Send ISO-TP Flow Control (30 00 00...)
                print(f"Sending ISO-TP Flow Control for {did_str}...")
                fc_msg = can.Message(arbitration_id=TX_ID, 
                                    data=[0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00], 
                                    is_extended_id=True)
                bus.send(fc_msg)
                
                # Start payload with data from First Frame (skipping PCI and SID bytes)
                # First frame data starts at index 5 for a Read DID response (10 len 62 02 03 ...)
                full_payload = list(first_frame[5:])
                
                start_wait = time.time()
                while (time.time() - start_wait) < 1.0:
                    rx_cf = bus.recv(timeout=0.2)
                    if rx_cf and rx_cf.arbitration_id == RX_ID:
                        # Consecutive Frame (Starts with 21, 22, etc.)
                        print(f"[{did_str}_DATA] RECV <- {rx_cf.data.hex(' ').upper()}")
                        full_payload += list(rx_cf.data[1:]) # Skip PCI byte
                        
                        # Stop once we have reached the expected length
                        if len(full_payload) >= (total_len - 3): # -3 for 62 02 03
                            break
                
                # Final String Reconstruction
                final_str = "".join([chr(b) if 32 <= b <= 126 else "" for b in full_payload])
                print(f">>> FINAL STRING {did_str}: {final_str}")

    except Exception as e:
        print(f"Error: {e}")
    finally:
        bus.shutdown()
        print("Done.")

if __name__ == "__main__":
    run()