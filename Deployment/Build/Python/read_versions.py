import can
import time

# -----------------------------
# Configuration
# -----------------------------
CHANNEL = 'PCAN_USBBUS1'
BITRATE = 500000
# 2420191233 in decimal is 0x90412001 in hex
TARGET_ID = 272707585  
TIMEOUT_LIMIT = 5.0

bus = can.Bus(interface='pcan', channel=CHANNEL, bitrate=BITRATE)

print(f"Listening for Version Frame ID: {TARGET_ID}...")

start_time = time.time()
found_versions = False

try:
    while (time.time() - start_time) < TIMEOUT_LIMIT:
        msg = bus.recv(timeout=0.1)
        
        if msg is None:
            continue

        # Match the 29-bit ID
        if msg.is_extended_id and msg.arbitration_id == TARGET_ID:
            data = msg.data
            
            if len(data) >= 7:
                # Extract Boot Version (Bytes 0, 1, 2)
                boot_major = data[2]
                boot_minor = data[1]
                boot_patch = data[0]
                
                # Extract App Version (Bytes 3, 4, 5)
                app_major = data[5]
                app_minor = data[4]
                app_patch = data[3]
                
                # Extract Hardware ID (Byte 6)
                hw_id = data[6]

                # Format as strings
                ipc_boot = f"{boot_major}.{boot_minor}.{boot_patch}"
                ipc_app = f"{app_major}.{app_minor}.{app_patch}"

                print("-" * 30)
                #print(f"IPC Hardware ID: {hw_id}")
                print(f"IPC Boot Version: {ipc_boot}")
                print(f"IPC App Version:  {ipc_app}")
                print("-" * 30)
                
                found_versions = True
                break

    if not found_versions:
        print("Timeout: Version frame not found on bus.")

except KeyboardInterrupt:
    print("\nStopped by user.")
finally:
    bus.shutdown()