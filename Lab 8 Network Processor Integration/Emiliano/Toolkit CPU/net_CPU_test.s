	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"net_CPU_test.c"
	.text
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push {fp}
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, #4096
	str	r3, [fp, #-8]
	mov	r3, #3072
	str	r3, [fp, #-12]
.L3:
	nop
.L2:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L2
	ldr	r3, [fp, #-8]
	mov	r2, #2
	str	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #64
	ldmia	r3, {r2-r3}
	str	r2, [fp, #-20]
	str	r3, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	adds	r0, r2, #100
	adc	r1, r3, #0
	str	r0, [fp, #-20]
	str	r1, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	ip, r3, #64
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	stm	ip, {r2-r3}
	ldr	r3, [fp, #-8]
	mov	r2, #4
	str	r2, [r3]
	b	.L3
	.size	main, .-main
