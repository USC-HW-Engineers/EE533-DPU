	.cpu arm7tdmi
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 6	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"sort.c"
@ GNU C17 (15:10.3-2021.07-4) version 10.3.1 20210621 (release) (arm-none-eabi)
@	compiled by GNU C version 11.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -D__USES_INITFINI__ sort.c -mcpu=arm7tdmi -marm
@ -mfloat-abi=soft -mlibarch=armv4t -march=armv4t -O0 -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -fallocation-dce
@ -fauto-inc-dec -fdelete-null-pointer-checks -fdwarf2-cfi-asm
@ -fearly-inlining -feliminate-unused-debug-symbols
@ -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
@ -fgcse-lm -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
@ -fmath-errno -fmerge-debug-strings -fpeephole -fplt
@ -fprefetch-loop-arrays -freg-struct-return
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
@ -fsched-stalled-insns-dep -fsemantic-interposition -fshow-column
@ -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
@ -fssa-backprop -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls
@ -ftrapping-math -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-reassoc -ftree-scev-cprop
@ -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss -marm -mbe32
@ -mlittle-endian -mpic-data-is-text-relative -msched-prolog
@ -mthumb-interwork -mvectorize-with-neon-quad

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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}	@
	add	fp, sp, #4	@,,
	sub	sp, sp, #56	@,,
@ sort.c:2: 	int array[10] = {323, 123, -455, 2, 98, 125, 10, 65, -56, 0}; 
	ldr	r3, .L8	@ tmp118,
	sub	ip, fp, #56	@ tmp119,,
	mov	lr, r3	@ tmp120, tmp118
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp120,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp119,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp120,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp119,,,,
	ldm	lr, {r0, r1}	@ tmp120,,
	stm	ip, {r0, r1}	@ tmp119,,
@ sort.c:4: 	for (i = 0 ; i < 10; i++) { 
	mov	r3, #0	@ tmp121,
	str	r3, [fp, #-8]	@ tmp121, i
@ sort.c:4: 	for (i = 0 ; i < 10; i++) { 
	b	.L2		@
.L6:
@ sort.c:5: 		for (j = i+1 ; j < 10 ; j++) { 
	ldr	r3, [fp, #-8]	@ tmp123, i
	add	r3, r3, #1	@ tmp122, tmp123,
	str	r3, [fp, #-12]	@ tmp122, j
@ sort.c:5: 		for (j = i+1 ; j < 10 ; j++) { 
	b	.L3		@
.L5:
@ sort.c:6: 			if (array[j] < array[i]) { 
	ldr	r3, [fp, #-12]	@ tmp124, j
	lsl	r3, r3, #2	@ tmp125, tmp124,
	sub	r3, r3, #4	@ tmp146, tmp125,
	add	r3, r3, fp	@ tmp125, tmp146,
	ldr	r2, [r3, #-52]	@ _1, array[j_5]
@ sort.c:6: 			if (array[j] < array[i]) { 
	ldr	r3, [fp, #-8]	@ tmp126, i
	lsl	r3, r3, #2	@ tmp127, tmp126,
	sub	r3, r3, #4	@ tmp147, tmp127,
	add	r3, r3, fp	@ tmp127, tmp147,
	ldr	r3, [r3, #-52]	@ _2, array[i_4]
@ sort.c:6: 			if (array[j] < array[i]) { 
	cmp	r2, r3	@ _1, _2
	bge	.L4		@,
@ sort.c:7: 				swap = array[j]; 
	ldr	r3, [fp, #-12]	@ tmp128, j
	lsl	r3, r3, #2	@ tmp129, tmp128,
	sub	r3, r3, #4	@ tmp148, tmp129,
	add	r3, r3, fp	@ tmp129, tmp148,
	ldr	r3, [r3, #-52]	@ tmp130, array[j_5]
	str	r3, [fp, #-16]	@ tmp130, swap
@ sort.c:8: 				array[j] = array[i]; 
	ldr	r3, [fp, #-8]	@ tmp131, i
	lsl	r3, r3, #2	@ tmp132, tmp131,
	sub	r3, r3, #4	@ tmp149, tmp132,
	add	r3, r3, fp	@ tmp132, tmp149,
	ldr	r2, [r3, #-52]	@ _3, array[i_4]
@ sort.c:8: 				array[j] = array[i]; 
	ldr	r3, [fp, #-12]	@ tmp133, j
	lsl	r3, r3, #2	@ tmp134, tmp133,
	sub	r3, r3, #4	@ tmp150, tmp134,
	add	r3, r3, fp	@ tmp134, tmp150,
	str	r2, [r3, #-52]	@ _3, array[j_5]
@ sort.c:9: 				array[i] = swap;
	ldr	r3, [fp, #-8]	@ tmp135, i
	lsl	r3, r3, #2	@ tmp136, tmp135,
	sub	r3, r3, #4	@ tmp151, tmp136,
	add	r3, r3, fp	@ tmp136, tmp151,
	ldr	r2, [fp, #-16]	@ tmp137, swap
	str	r2, [r3, #-52]	@ tmp137, array[i_4]
.L4:
@ sort.c:5: 		for (j = i+1 ; j < 10 ; j++) { 
	ldr	r3, [fp, #-12]	@ tmp139, j
	add	r3, r3, #1	@ tmp138, tmp139,
	str	r3, [fp, #-12]	@ tmp138, j
.L3:
@ sort.c:5: 		for (j = i+1 ; j < 10 ; j++) { 
	ldr	r3, [fp, #-12]	@ tmp140, j
	cmp	r3, #9	@ tmp140,
	ble	.L5		@,
@ sort.c:4: 	for (i = 0 ; i < 10; i++) { 
	ldr	r3, [fp, #-8]	@ tmp142, i
	add	r3, r3, #1	@ tmp141, tmp142,
	str	r3, [fp, #-8]	@ tmp141, i
.L2:
@ sort.c:4: 	for (i = 0 ; i < 10; i++) { 
	ldr	r3, [fp, #-8]	@ tmp143, i
	cmp	r3, #9	@ tmp143,
	ble	.L6		@,
	mov	r3, #0	@ _13,
@ sort.c:13: }
	mov	r0, r3	@, <retval>
	sub	sp, fp, #4	@,,
	@ sp needed	@
	pop	{fp, lr}	@
	bx	lr	@
.L9:
	.align	2
.L8:
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
