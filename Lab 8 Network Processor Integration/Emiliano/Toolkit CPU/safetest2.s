	.text
	.align	2
	.global	main
main:
    @ ==========================================================
    @ EE 533 Lab 8: CPU-Only Test FIXED (v4)
    @ ==========================================================
    @ Uses BLE for polling loop (Loop while ready <= 0)
    @ ==========================================================

    @ --- Initialization ---
    @ r10 = 4096 (Control)
    mov r10, #1
    lsl r10, r10, #12

    @ r2 = 3072 (FIFO Base)
    mov r2, #3
    lsl r2, r2, #10

    @ Constants
    mov r4, #100        @ Increment
    mov r5, #64         @ Offset

.wait_for_packet:
    @ PHASE 1: Poll for packet_ready (Bit 0)
    ldr  r3, [r10, #0]
    and  r3, r3, #1
    cmp  r3, #0         @ Compare with 0
    ble  .wait_for_packet @ Loop if ready <= 0 (Supported by parser)

.lock_fifo:
    @ PHASE 2: Lock FIFO (mode_select = 1)
    mov  r3, #2
    str  r3, [r10, #0]

.cpu_processing:
    @ PHASE 3: Modify payload
    ldr  r3, [r2, #64]   @ Read 64-bit word
    add  r3, r3, r4      @ +100
    str  r3, [r2, #64]   @ Store word

.done:
    @ PHASE 4: Signal done (cpu_packet_done = 1)
    mov  r3, #4
    str  r3, [r10, #0]
    
    @ Return to wait. Hardware clears packet_ready automatically.
    b    .wait_for_packet
