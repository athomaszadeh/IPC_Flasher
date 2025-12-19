import can
import time

# -----------------------------
# Configuration
# -----------------------------
CHANNEL = 'PCAN_USBBUS1'   # 0x57
BITRATE = 500000
TARGET_ID = 273154049      # decimal, 29-bit extended
TIMEOUT_LIMIT = 5.0        # Total seconds to wait

# -----------------------------
# Open CAN bus
# -----------------------------
bus = can.Bus(
    interface='pcan',
    channel=CHANNEL,
    bitrate=BITRATE
)

print(f"Listening for CAN ID: {TARGET_ID}...")

# Track the start time
start_time = time.time()
result_value = -1 
pcba_id = -1  # Default to -1 in case of timeout

# -----------------------------
# Receive loop
# -----------------------------
try:
    while True:
        # 1. Check for total timeout
        if (time.time() - start_time) > TIMEOUT_LIMIT:
            # Set the requested error value
            pcba_id = -1
            print(f"Timeout reached. PCBAID = {pcba_id}")
            break

        # 2. Poll the bus
        msg = bus.recv(timeout=0.1)
        
        if msg is None:
            continue

        # 3. Match 29-bit ID
        if msg.is_extended_id and msg.arbitration_id == TARGET_ID:
            data = msg.data
            
            if len(data) < 6:
                continue

            # Extract bytes
            # Byte 4 is the PCBAID
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