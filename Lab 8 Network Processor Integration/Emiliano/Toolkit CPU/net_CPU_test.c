#define CTRL_REG  0x1000  // Control Register Address (4096 decimal)
#define FIFO_BASE 0x0C00  // Start of Convertible FIFO buffer (3072 decimal)

// In send_test.pl, the data is at byte offset 64.
// Since each word is 8 bytes, this is Word Index 8.
#define PAYLOAD_WORD_INDEX 8 

/**
 * EE 533 Lab 8: Network Processor Test (C version)
 * Optimized for 64-bit hardware data paths.
 */
void main() {
    // Use volatile long long* to ensure 64-bit memory accesses (8 bytes)
    volatile int* ctrl = (int*)CTRL_REG;
    volatile long long* fifo = (long long*)FIFO_BASE;
    long long val;

    while(1) {
        // 1. Poll for packet_ready (Bit 0 of Control Reg)
        while(!(*ctrl & 0x1));

        // 2. Take control: Set mode_select = 1 (Bit 1)
        *ctrl = 0x2;

        // 3. Process: Read 64-bit integer from the packet payload
        // index 8 * 8 bytes/word = byte offset 64
        val = fifo[PAYLOAD_WORD_INDEX];

        // 4. Modify: Add a constant (e.g., 100)
        val = val + 100;

        // 5. Write result back to the same 64-bit BRAM slot
        fifo[PAYLOAD_WORD_INDEX] = val;

        // 6. Finish: Send the packet
        // Set cpu_packet_done = 1 (Bit 2) and mode_select = 0 (Bit 1)
        *ctrl = 0x4; 
    }
}
