; ==========================================================
; EE 533 Lab 8: Network Processor Test (ARM Assembly)
; ==========================================================
; Logic:
; 1. Poll Control Reg (0x1000) for bit 0 (packet_ready)
; 2. Set Control Reg bit 1 (mode_select) to 1
; 3. Read word from FIFO (0x0C00 + offset)
; 4. Add 100 to word
; 5. Write word back to FIFO
; 6. Set Control Reg bit 2 (cpu_packet_done) to 1, bit 1 to 0
; ==========================================================

; --- Register Usage ---
; R1: Control Register Base (0x1000 = 4096)
; R2: FIFO Base (0x0C00 = 3072)
; R3: Temporary Data / Status
; R4: Constant to add (100)
; R5: Payload Byte Offset (32 = 8th word)

START:
    MOV R1, #4096       ; Control Reg address
    MOV R2, #3072       ; FIFO Base address
    MOV R4, #100        ; Constant increment
    MOV R5, #32         ; Byte offset for payload

POLL:
    LW   R3, [R1, #0]   ; Read Control Register
    CMPI R3, #1         ; Is bit 0 set? (using CMP Imm)
    BNE  POLL           ; If not ready, loop

TAKE_CONTROL:
    MOV  R3, #2         ; mode_select = 1
    SW   R3, [R1, #0]   ; Switch FIFO to Processor Mode

PROCESS:
    LW   R3, [R2, R5]   ; Read 64-bit word from FIFO[R5]
    ADD  R3, R3, R4     ; Increment value by 100
    SW   R3, [R2, R5]   ; Write back to FIFO[R5]

DONE:
    MOV  R3, #4         ; cpu_packet_done = 1, mode_select = 0
    SW   R3, [R1, #0]   ; Trigger packet send
    B    POLL           ; Return to polling for next packet
