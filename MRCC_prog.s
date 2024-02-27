	.cpu cortex-m3
	.arch armv7-m
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"MRCC_prog.c"
	.text
	.align	1
	.global	MRCC_enSysClkINIT
	.syntax unified
	.thumb
	.thumb_func
	.type	MRCC_enSysClkINIT, %function
MRCC_enSysClkINIT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L4
	ldr	r3, [r3]
	ldr	r2, .L4
	orr	r3, r3, #1
	str	r3, [r2]
	nop
.L2:
	ldr	r3, .L4
	ldr	r3, [r3]
	lsrs	r3, r3, #1
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L2
	ldr	r3, .L4
	ldr	r3, [r3, #4]
	ldr	r2, .L4
	bic	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, .L4
	ldr	r3, [r3, #4]
	ldr	r2, .L4
	bic	r3, r3, #240
	str	r3, [r2, #4]
	ldr	r3, .L4
	ldr	r2, .L4
	ldr	r3, [r3, #4]
	str	r3, [r2, #4]
	ldr	r3, .L4
	ldr	r3, [r3, #4]
	ldr	r2, .L4
	bic	r3, r3, #1792
	str	r3, [r2, #4]
	ldr	r3, .L4
	ldr	r2, .L4
	ldr	r3, [r3, #4]
	str	r3, [r2, #4]
	ldr	r3, .L4
	ldr	r3, [r3, #4]
	ldr	r2, .L4
	bic	r3, r3, #14336
	str	r3, [r2, #4]
	ldr	r3, .L4
	ldr	r2, .L4
	ldr	r3, [r3, #4]
	str	r3, [r2, #4]
	movs	r3, #2
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073876992
	.size	MRCC_enSysClkINIT, .-MRCC_enSysClkINIT
	.align	1
	.global	MRCC_enEnablePeripheralCLK
	.syntax unified
	.thumb
	.thumb_func
	.type	MRCC_enEnablePeripheralCLK, %function
MRCC_enEnablePeripheralCLK:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #31
	bhi	.L7
	ldr	r3, .L12
	ldr	r3, [r3, #20]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L12
	orrs	r3, r3, r1
	str	r3, [r2, #20]
	b	.L8
.L7:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #63
	bhi	.L9
	ldrb	r3, [r7, #7]
	subs	r3, r3, #32
	strb	r3, [r7, #7]
	ldr	r3, .L12
	ldr	r3, [r3, #28]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L12
	orrs	r3, r3, r1
	str	r3, [r2, #28]
	b	.L8
.L9:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #95
	bhi	.L10
	ldrb	r3, [r7, #7]
	subs	r3, r3, #64
	strb	r3, [r7, #7]
	ldr	r3, .L12
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L12
	orrs	r3, r3, r1
	str	r3, [r2, #24]
	b	.L8
.L10:
	movs	r3, #0
	strb	r3, [r7, #15]
.L8:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073876992
	.size	MRCC_enEnablePeripheralCLK, .-MRCC_enEnablePeripheralCLK
	.align	1
	.global	MRCC_enDisablePeripheralCLK
	.syntax unified
	.thumb
	.thumb_func
	.type	MRCC_enDisablePeripheralCLK, %function
MRCC_enDisablePeripheralCLK:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #31
	bhi	.L15
	ldr	r3, .L20
	ldr	r3, [r3, #20]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L20
	ands	r3, r3, r1
	str	r3, [r2, #20]
	b	.L16
.L15:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #63
	bhi	.L17
	ldrb	r3, [r7, #7]
	subs	r3, r3, #32
	strb	r3, [r7, #7]
	ldr	r3, .L20
	ldr	r3, [r3, #28]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L20
	ands	r3, r3, r1
	str	r3, [r2, #28]
	b	.L16
.L17:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #95
	bhi	.L18
	ldrb	r3, [r7, #7]
	subs	r3, r3, #64
	strb	r3, [r7, #7]
	ldr	r3, .L20
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L20
	ands	r3, r3, r1
	str	r3, [r2, #24]
	b	.L16
.L18:
	movs	r3, #0
	strb	r3, [r7, #15]
.L16:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L21:
	.align	2
.L20:
	.word	1073876992
	.size	MRCC_enDisablePeripheralCLK, .-MRCC_enDisablePeripheralCLK
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
