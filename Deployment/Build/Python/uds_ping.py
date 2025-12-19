import can
import time

TX_ID = 0x1C66D001
RX_ID = 0x1C66C001

def brute_force_ping():
    try:
        bus = can.interface.Bus(interface='pcan', channel='PCAN_USBBUS1', bitrate=500000)
        # We REMOVE filters to see if the ECU replies on a surprise ID
        bus.set_filters([]) 
        
        # Common padding bytes used by different manufacturers
        paddings = [0x00, 0xCC, 0xAA]
        
        for pad in paddings:
            print(f"\n--- Testing Padding: {hex(pad)} ---")
            
            # 02 = Length, 3E = Tester Present, 00 = Sub-func
            payload = [0x02, 0x3E, 0x00, pad, pad, pad, pad, pad]
            msg = can.Message(arbitration_id=TX_ID, data=payload, is_extended_id=True)
            
            print(f"Sending: {msg.arbitration_id:08X} | Data: {' '.join(f'{b:02x}' for b in payload)}")
            bus.send(msg)
            
            # Wait 10 seconds for any sign of life
            start_wait = time.time()
            found_something = False
            
            while (time.time() - start_wait) < 10:
                reply = bus.recv(timeout=0.1)
                if reply:
                    # Look for our expected RX_ID OR anything ending in 01
                    clean_id = reply.arbitration_id & 0x1FFFFFFF
                    data_str = ' '.join(f"{b:02X}" for b in reply.data)
                    
                    if clean_id == RX_ID:
                        print(f"!!! MATCHING RESPONSE !!! ID: {clean_id:08X} | Data: {data_str}")
                        return
                    else:
                        # Print other traffic from this ECU to see if it's "talking back" elsewhere
                        if (clean_id & 0xFF) == 0x01:
                            print(f"Observed other ECU traffic: {clean_id:08X} | Data: {data_str}")
            
            if not found_something:
                print(f"No response for padding {hex(pad)} after 10s.")

    except Exception as e:
        print(f"Error: {e}")
    finally:
        bus.shutdown()

if __name__ == "__main__":
    brute_force_ping()