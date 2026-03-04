	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"newSort.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.word	323
	.word	123
	.word	-455
	.word	2
	.word	98
	.word	125
	.word	10
	.word	65
	.word	-56
	.word	0
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	
	sub r15, r15, r15
	sub sp, sp, sp
	sub fp, fp, fp
	add sp, r15, #9
	lsl sp, sp, #8
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	ldr r3, [r15, #86]
	sub ip, fp, #56
	add r0, r15, #23
	add r1, r15, #123
	add r2, r15, #-455
	add r3, r15, #2
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #98
	add r1, r15, #125
	add r2, r15, #10
	add r3, r15, #65
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #-56
	add r1, r15, #0
	str r0, [ip, #0]
	str r1, [ip, #4]
	b	.L2
.L6:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L3
.L5:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	cmp	r2, r3
	bge	.L4
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	str	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [fp, #-16]
	str	r2, [r3, #-52]
.L4:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L5
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L6
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
.L9:
	b	.L9
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub r15, r15, r15
	sub sp, sp, sp
	sub fp, fp, fp
	add sp, r15, #10
	lsl sp, sp, #8
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	ldr r3, [r15, #86]
	sub ip, fp, #56
	add r0, r15, #23
	add r1, r15, #123
	add r2, r15, #-455
	add r3, r15, #2
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #98
	add r1, r15, #125
	add r2, r15, #10
	add r3, r15, #65
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #-56
	add r1, r15, #0
	str r0, [ip, #0]
	str r1, [ip, #4]
	b	.L12
.L16:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L13
.L15:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	cmp	r2, r3
	bge	.L14
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	str	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [fp, #-16]
	str	r2, [r3, #-52]
.L14:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L13:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L15
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L12:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L16
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
.L19:
	b	.L19
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub r15, r15, r15
	sub sp, sp, sp
	sub fp, fp, fp
	add sp, r15, #11
	lsl sp, sp, #8
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	ldr r3, [r15, #86]
	sub ip, fp, #56
	add r0, r15, #23
	add r1, r15, #123
	add r2, r15, #-455
	add r3, r15, #2
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #98
	add r1, r15, #125
	add r2, r15, #10
	add r3, r15, #65
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #-56
	add r1, r15, #0
	str r0, [ip, #0]
	str r1, [ip, #4]
	b	.L22
.L26:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L23
.L25:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	cmp	r2, r3
	bge	.L24
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	str	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [fp, #-16]
	str	r2, [r3, #-52]
.L24:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L23:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L25
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L22:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L26
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
.L29:
	b	.L29
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

	sub r15, r15, r15
	sub sp, sp, sp
	sub fp, fp, fp
	add sp, r15, #12
	lsl sp, sp, #8
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	ldr r3, [r15, #86]
	sub ip, fp, #56
	add r0, r15, #23
	add r1, r15, #123
	add r2, r15, #-455
	add r3, r15, #2
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #98
	add r1, r15, #125
	add r2, r15, #10
	add r3, r15, #65
	str r0, [ip, #0]
	str r1, [ip, #4]
	str r2, [ip, #8]
	str r3, [ip, #12]
	add ip, ip, #16
	add r0, r15, #-56
	add r1, r15, #0
	str r0, [ip, #0]
	str r1, [ip, #4]
	b	.L32
.L36:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L33
.L35:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	cmp	r2, r3
	bge	.L34
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r3, [r3, #-52]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [r3, #-52]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	str	r2, [r3, #-52]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #4
	add	r3, r3, fp
	ldr	r2, [fp, #-16]
	str	r2, [r3, #-52]
.L34:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L33:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L35
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L32:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L36
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
.L39:
	b	.L39
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop