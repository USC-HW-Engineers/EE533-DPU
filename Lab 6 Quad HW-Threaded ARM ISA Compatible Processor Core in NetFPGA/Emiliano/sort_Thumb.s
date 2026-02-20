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
	.file	"sort.c"
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
	.align	1
	.global	main
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #0
	adds	r3, r7, #4
	ldr	r2, .L8
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	ldr	r2, [r2]
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L2
.L6:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	b	.L3
.L5:
	adds	r3, r7, #4
	ldr	r2, [r7, #48]
	lsls	r2, r2, #2
	ldr	r2, [r2, r3]
	adds	r3, r7, #4
	ldr	r1, [r7, #52]
	lsls	r1, r1, #2
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bge	.L4
	adds	r3, r7, #4
	ldr	r2, [r7, #48]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	str	r3, [r7, #44]
	adds	r3, r7, #4
	ldr	r2, [r7, #52]
	lsls	r2, r2, #2
	ldr	r1, [r2, r3]
	adds	r3, r7, #4
	ldr	r2, [r7, #48]
	lsls	r2, r2, #2
	str	r1, [r2, r3]
	adds	r3, r7, #4
	ldr	r2, [r7, #52]
	lsls	r2, r2, #2
	ldr	r1, [r7, #44]
	str	r1, [r2, r3]
.L4:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L3:
	ldr	r3, [r7, #48]
	cmp	r3, #9
	ble	.L5
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L2:
	ldr	r3, [r7, #52]
	cmp	r3, #9
	ble	.L6
	movs	r3, #0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r7}
	pop	{r1}
	bx	r1
.L9:
	.align	2
.L8:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
