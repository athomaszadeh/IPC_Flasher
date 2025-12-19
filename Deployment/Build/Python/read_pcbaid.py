import can
import time

# -----------------------------
# Configuration
# -----------------------------
CHANNEL = 'PCAN_USBBUS1'
BITRATE = 500000
TARGET_ID = 273154049  # 0x1046A081
TIMEOUT_LIMIT = 5.0    

# -----------------------------
# Open CAN bus
# -----------------------------
bus = can.Bus(
    interface='pcan',
    channel=CHANNEL,
    bitrate=BITRATE
)

print(f"Listening for CAN ID: {TARGET_ID}...")

# Tracking variables
start_time = time.time()
pcba_id = -1          # Default: Bus exists, but signal not found
bus_has_traffic = False # Flag to detect if ANY CAN traffic exists

# -----------------------------
# Receive loop
# -----------------------------
try:
    while True:
        # 1. Check for total timeout
        if (time.time() - start_time) > TIMEOUT_LIMIT:
            # If the timeout is hit and we never saw a single frame
            if not bus_has_traffic:
                pcba_id = 0
                print(f"Timeout: No CAN traffic detected. pcba_id = {pcba_id}")
            else:
                pcba_id = -1
                print(f"Timeout: Bus active but ID {TARGET_ID} not found. pcba_id = {pcba_id}")
            break

        # 2. Poll the bus
        msg = bus.recv(timeout=0.1)
        
        if msg is None:
            continue

        # --- NEW LOGIC: Any message received proves the bus is alive ---
        bus_has_traffic = True

        # 3. Match 29-bit ID
        if msg.is_extended_id and msg.arbitration_id == TARGET_ID:
            data = msg.data
            
            if len(data) < 6:
                continue

            # Extract PCBAID from Byte 4
            pcba_id = data[4]
            byte5 = data[5]

            # Calculate Value (Bits 32–47)
            result_value = (pcba_id << 8) | byte5

            print(
                f"Matched frame | "
                f"Value = {result_value} (0x{result_value:04X}) | "
                f"PCBAID = {pcba_id}"
            )
            break

except KeyboardInterrupt:
    print("\nStopped by user.")
    pcba_id = -1

finally:
    bus.shutdown()