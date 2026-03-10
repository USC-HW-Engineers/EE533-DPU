	.text
	.align	2
	.global	main
main:
    @ ==========================================================
    @ EE 533 Lab 8: Network Processor Test (ARM_Test.s)
    @ ==========================================================
    @ Logic:
    @ 1. Poll Control Reg (0x1000) for packet_ready (bit 0)
    @ 2. Lock FIFO (bit 1 = 1)
    @ 3. Increment FIFO Word index 8 (offset 64) by 100
    @ 4. Pulse Done (bit 2 = 1) and unlock (bit 1 = 0)
    @ ==========================================================

    @ --- Initialization ---
    sub r15, r15, r15
    @ r10 = 4096 (Control Register 0x1000)
    mov r10, #1
    lsl r10, r10, #12

    @ r2 = 3072 (FIFO Base 0x0C00)
    mov r2, #3
    lsl r2, r2, #10

    @ Constants
    mov r4, #100        @ Value to add
    mov r5, #64         @ Payload offset (Word 8)

.poll:
    @ PHASE 1: Wait for packet
    ldr  r3, [r10, #0]
    and  r3, r3, #1
    cmp  r3, #0
    ble  .poll          @ Loop if ready <= 0

.lock:
    @ PHASE 2: Take control (mode_select = 1)
    mov  r3, #2
    str  r3, [r10, #0]

.done:
    @ PHASE 4: Release and Send (done = 1, mode = 0)
    mov  r3, #4
    str  r3, [r10, #0]
    
    @ Jump back to wait for the next packet
    b    .poll
