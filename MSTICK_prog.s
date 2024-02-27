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
	.file	"MSTICK_prog.c"
	.text
	.global	STK_Callback
	.bss
	.align	2
	.type	STK_Callback, %object
	.size	STK_Callback, 4
STK_Callback:
	.space	4
flag:
	.space	1
	.size	flag, 1
	.text
	.align	1
	.global	MSTK_enInit
	.syntax unified
	.thumb
	.thumb_func
	.type	MSTK_enInit, %function
MSTK_enInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L3
	ldr	r3, [r3]
	ldr	r2, .L3
	bic	r3, r3, #4
	str	r3, [r2]
	movs	r3, #2
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L4:
	.align	2
.L3:
	.word	-536813552
	.size	MSTK_enInit, .-MSTK_enInit
	.align	1
	.global	MSTK_enDelayMS
	.syntax unified
	.thumb
	.thumb_func
	.type	MSTK_enDelayMS, %function
MSTK_enDelayMS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	mov	r2, #1000
	mul	r2, r3, r2
	ldr	r3, .L8
	str	r2, [r3, #4]
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r2, .L8
	orr	r3, r3, #1
	str	r3, [r2]
	nop
.L6:
	ldr	r3, .L8
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L6
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r2, .L8
	bic	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L8
	movs	r2, #0
	str	r2, [r3, #8]
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536813552
	.size	MSTK_enDelayMS, .-MSTK_enDelayMS
	.align	1
	.global	MSTK_enSetIntervalSingle
	.syntax unified
	.thumb
	.thumb_func
	.type	MSTK_enSetIntervalSingle, %function
MSTK_enSetIntervalSingle:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L11
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L12
.L11:
	ldr	r2, .L14
	ldr	r3, [r7]
	str	r3, [r2]
	ldr	r3, .L14+4
	movs	r2, #1
	strb	r2, [r3]
	ldr	r2, .L14+8
	ldr	r3, [r7, #4]
	str	r3, [r2, #4]
	ldr	r3, .L14+8
	ldr	r3, [r3]
	ldr	r2, .L14+8
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L14+8
	ldr	r3, [r3]
	ldr	r2, .L14+8
	orr	r3, r3, #2
	str	r3, [r2]
.L12:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L15:
	.align	2
.L14:
	.word	STK_Callback
	.word	flag
	.word	-536813552
	.size	MSTK_enSetIntervalSingle, .-MSTK_enSetIntervalSingle
	.align	1
	.global	MSTK_enSetIntervalPeriodic
	.syntax unified
	.thumb
	.thumb_func
	.type	MSTK_enSetIntervalPeriodic, %function
MSTK_enSetIntervalPeriodic:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L17
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L18
.L17:
	ldr	r2, .L20
	ldr	r3, [r7]
	str	r3, [r2]
	ldr	r3, .L20+4
	movs	r2, #0
	strb	r2, [r3]
	ldr	r2, .L20+8
	ldr	r3, [r7, #4]
	str	r3, [r2, #4]
	ldr	r3, .L20+8
	ldr	r3, [r3]
	ldr	r2, .L20+8
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L20+8
	ldr	r3, [r3]
	ldr	r2, .L20+8
	orr	r3, r3, #2
	str	r3, [r2]
.L18:
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
	.word	STK_Callback
	.word	flag
	.word	-536813552
	.size	MSTK_enSetIntervalPeriodic, .-MSTK_enSetIntervalPeriodic
	.align	1
	.global	MSTK_enGetElapsedTime
	.syntax unified
	.thumb
	.thumb_func
	.type	MSTK_enGetElapsedTime, %function
MSTK_enGetElapsedTime:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L23
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L24
.L23:
	ldr	r3, .L26
	ldr	r2, [r3, #4]
	ldr	r3, .L26
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L24:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L27:
	.align	2
.L26:
	.word	-536813552
	.size	MSTK_enGetElapsedTime, .-MSTK_enGetElapsedTime
	.align	1
	.global	MSTK_enRemainingValue
	.syntax unified
	.thumb
	.thumb_func
	.type	MSTK_enRemainingValue, %function
MSTK_enRemainingValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L29
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L30
.L29:
	ldr	r3, .L32
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L30:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L33:
	.align	2
.L32:
	.word	-536813552
	.size	MSTK_enRemainingValue, .-MSTK_enRemainingValue
	.align	1
	.global	STK_enStop
	.syntax unified
	.thumb
	.thumb_func
	.type	STK_enStop, %function
STK_enStop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L36
	ldr	r3, [r3]
	ldr	r2, .L36
	bic	r3, r3, #2
	str	r3, [r2]
	movs	r3, #2
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L37:
	.align	2
.L36:
	.word	-536813552
	.size	STK_enStop, .-STK_enStop
	.align	1
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	strb	r3, [r7, #7]
	ldr	r3, .L41
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L39
	ldr	r3, .L41+4
	ldr	r3, [r3]
	ldr	r2, .L41+4
	bic	r3, r3, #2
	str	r3, [r2]
	ldr	r3, .L41+4
	ldr	r3, [r3]
	ldr	r2, .L41+4
	bic	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L41+4
	movs	r2, #0
	str	r2, [r3, #8]
.L39:
	ldr	r3, .L41+8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L40
	ldr	r3, .L41+8
	ldr	r3, [r3]
	blx	r3
.L40:
	ldr	r3, .L41+4
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #7]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	flag
	.word	-536813552
	.word	STK_Callback
	.size	SysTick_Handler, .-SysTick_Handler
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
