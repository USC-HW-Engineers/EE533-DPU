	.text
	.align	2
	.global	main
main:
    @ --- Initialization ---
    mov r1, #1
    lsl r1, r1, #12
    mov r2, #3
    lsl r2, r2, #10
    mov r4, #100
    mov r5, #64

.wait_for_packet:
    @ PHASE 1: Poll for packet_ready (Bit 0)
    ldr  r2, [r1, #0]
    and  r3, r2, #1
    ble  .wait_for_packet @ Loop if ready == 0

.lock_fifo:
    @ PHASE 2: Lock FIFO (mode_select = 1)
    mov  r2, #2
    str  r2, [r1, #0]

.cpu_processing:
    @ PHASE 3: Modify payload
    ldr  r3, [r2, #64]
    add  r3, r3, r4
    str  r3, [r2, #64]

.trigger_send:
    @ PHASE 4: Signal done (cpu_packet_done = 1, mode_select = 1)
    mov  r2, #6
    str  r2, [r1, #0]

.wait_for_exit:
    @ PHASE 5: Wait for packet to physically leave FIFO
    ldr  r2, [r1, #0]
    and  r3, r2, #1
    xor  r3, r3, #1
    ble  .wait_for_exit

.reset_and_loop:
    @ PHASE 6: Clear Control Register
    mov  r2, #0
    str  r2, [r1, #0]
    b    .wait_for_packet
