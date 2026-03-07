import socket
import struct
import sys

# Configuration
# Node 0 IP address as requested
DEST_IP = "10.0.0.2" # The IP address of NetFPGA 
PORT = 5000
TARGET_VALUE = 5      # The initial value to be incremented by the CPU

# Your net_CPU_test.c uses PAYLOAD_OFFSET 8.
# In your 64-bit architecture (8 bytes per word):
# Word 0 starts at Byte 0
# Word 8 starts at Byte 64 (8 * 8)
OFFSET = 64

def send_packet():
    try:
        # Create a UDP socket
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        
        # Build the payload: 
        # 1. 64 bytes of 'A' as padding to reach word index 8
        # 2. The 64-bit integer TARGET_VALUE packed in Little-Endian format (<Q)
        padding = b'A' * OFFSET
        data = struct.pack('<Q', TARGET_VALUE)
        payload = padding + data
        
        print(f"Sending UDP packet to {DEST_IP}:{PORT}...")
        print(f"Original value at byte offset {OFFSET}: {TARGET_VALUE}")
        
        sock.sendto(payload, (DEST_IP, PORT))
        print("Packet sent successfully.")
        
        print("\nHow to verify:")
        print(f"1. On NetFPGA (10.0.0.2), run:")
        print(f"   sudo tcpdump -i eth1 -XX udp port {PORT}")
        print(f"2. Look for the value at the end of the packet.")
        print(f"   It should have changed from 0x05 to 0x69 (105 decimal).")
        
    except Exception as e:
        print(f"Error: {e}")
    finally:
        sock.close()

if __name__ == "__main__":
    send_packet()
