main:
    @ ==========================================================
    @ EE 533 Lab 8: Hardware-Safe Network Processor Test (ARM)
    @ ==========================================================
    @ Uses LSL for address construction and BGE for polling loop.
    @ ==========================================================

    @ --- Initialization ---
    @ Construct r1 = 4096 (0x1000)
    mov r1, #1
    lsl r1, r1, #12

    @ Construct r2 = 3072 (0x0C00)
    mov r2, #3
    lsl r2, r2, #10

    mov r4, #100        @ Value to add to the payload

.poll:
    @ 1. Wait for a packet to arrive in the FIFO (packet_ready = bit 0)
    ldr  r3, [r1, #0]   @ Read Control Register
    and  r3, r3, #1     @ Mask Bit 0
    
    @ In your hardware:
    @ If packet is NOT ready, r3 = 0.
    @ If packet IS ready, r3 = 1.
    @ We want to loop while r3 < 1.
    
    cmp  r3, #1         @ Compare r3 with 1
    bge  .take_control  @ If r3 >= 1, jump to processing
    b    .poll          @ Otherwise, keep polling

.take_control:
    @ 2. Switch FIFO to Processor Mode
    mov  r3, #2         @ Set Bit 1 (mode_select = 1)
    str  r3, [r1, #0]   @ Commit to Control Register

.process:
    @ 3. Modify the payload at Word 8 (Byte 64)
    ldr  r3, [r2, #64]  @ Read from FIFO
    add  r3, r3, r4     @ Add 100
    str  r3, [r2, #64]  @ Write result back

.done:
    @ 4. Signal processing complete and trigger packet send
    mov  r3, #4         @ Set Bit 2 (cpu_packet_done = 1), Bit 1 (mode_select = 0)
    str  r3, [r1, #0]   @ Commit to Control Register
    
    @ 5. Return to start to wait for next packet
    b    .poll
