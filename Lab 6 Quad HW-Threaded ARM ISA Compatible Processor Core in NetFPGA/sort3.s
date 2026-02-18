	add	fp, sp, #4
	add	r3, r3, #1
	add	r3, r3, #1
	add	r3, r3, #1
	add	r3, r3, fp
	add	r3, r3, fp
	add	r3, r3, fp
	add	r3, r3, fp
	add	r3, r3, fp
	add	r3, r3, fp
	b	.L2
	b	.L3
	bge	.L4
	ble	.L5
	ble	.L6
	bx	lr
	cmp	r2, r3
	cmp	r3, #9
	cmp	r3, #9
	ldm	lr, {r0, r1}
	ldmia	lr!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	r2, [fp, #-16]
	ldr	r2, [r3, #-52]
	ldr	r2, [r3, #-52]
	ldr	r3, .L8
	ldr	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #-52]
	ldr	r3, [r3, #-52]
	lsl	r3, r3, #2
	lsl	r3, r3, #2
	lsl	r3, r3, #2
	lsl	r3, r3, #2
	lsl	r3, r3, #2
	lsl	r3, r3, #2
	mov	lr, r3
	mov	r0, r3
	mov	r3, #0
	mov	r3, #0
	pop	{fp, lr}
	push	{fp, lr}
	stm	ip, {r0, r1}
	stmia	ip!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	str	r2, [r3, #-52]
	str	r2, [r3, #-52]
	str	r3, [fp, #-12]
	str	r3, [fp, #-12]
	str	r3, [fp, #-16]
	str	r3, [fp, #-8]
	str	r3, [fp, #-8]
	sub	ip, fp, #56
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	r3, r3, #4
	sub	sp, fp, #4
	sub	sp, sp, #56
