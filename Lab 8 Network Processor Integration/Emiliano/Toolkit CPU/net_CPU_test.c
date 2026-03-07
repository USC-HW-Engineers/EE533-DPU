#define CTRL_REG  0x1000  // Control Register Address (4096 decimal)
#define FIFO_BASE 0x0C00  // Start of Convertible FIFO buffer (3072 decimal)
#define PAYLOAD_OFFSET 8  // Assuming payload starts after 8 words of headers

/**
 * EE 533 Lab 8: Network Processor Test
 * 
 * Logic:
 * 1. Poll the control register for packet_ready.
 * 2. Switch the FIFO to Processor Mode.
 * 3. Modify a value in the packet payload.
 * 4. Trigger the packet transmission.
 */
void main() {
    volatile int* ctrl = (int*)CTRL_REG;
    volatile int* fifo = (int*)FIFO_BASE;
    int val;

    while(1) {
        // 1. Poll for packet_ready (Bit 0 of Control Reg)
        while(!(*ctrl & 0x1));

        // 2. Take control: Set mode_select = 1 (Bit 1)
        // This stops the network from writing/reading and gives control to the CPU
        *ctrl = 0x2;

        // 3. Process: Read an integer from the packet payload
        // Note: Word index 8 corresponds to byte offset 32
        val = fifo[PAYLOAD_OFFSET];

        // 4. Modify: Add a constant (e.g., 100)
        val = val + 100;

        // 5. Write back to the same location
        fifo[PAYLOAD_OFFSET] = val;

        // 6. Finish: Send the packet
        // Set cpu_packet_done = 1 (Bit 2) and mode_select = 0 (Bit 1)
        // This tells the FIFO to send the modified packet back to the network
        *ctrl = 0x4; 
    }
}
