	.text
	.align	2
	.global	main
main:
    @ ==========================================================
    @ EE 533 Lab 8: Fixed Handshake Test (safetest_base_fixed.s)
    @ ==========================================================
    @ r10 = Control Reg (0x1000)
    @ r2  = FIFO Buffer (0x0C00)
    @ r4  = Increment Value (100)

    @ --- Initialization ---
    mov r10, #1
    lsl r10, r10, #12    @ r10 = 0x1000

    mov r2, #3
    lsl r2, r2, #10     @ r2  = 0x0C00

    mov r4, #100        @ Value to add

.poll:
    @ PHASE 1: Wait for packet_ready (Bit 0)
    ldr  r3, [r10, #0]
    and  r3, r3, #1
    cmp  r3, #0
    ble  .poll          @ Loop if Bit 0 == 0

.lock:
    @ PHASE 2: Lock into Processor Mode (mode_select = 1)
    @ Writing 2 sets Bit 1 (mode) and clears Bit 0 (ready)
    mov  r3, #2
    str  r3, [r10, #0]

.modify:
    @ PHASE 3: Modify Word 8 (64-byte offset)
    ldr  r3, [r2, #64]
    add  r3, r3, r4
    str  r3, [r2, #64]

.send:
    @ PHASE 4: Release and Send (done = 1, mode = 0)
    @ Writing 4 sets Bit 2 (done pulse) and clears Bit 1 (mode)
    @ This allows the NetFPGA to read the modified packet out.
    mov  r3, #4
    str  r3, [r10, #0]

    @ Jump back to wait for the next packet
    b    .poll
