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
	.file	"HLED_prog.c"
	.text
	.align	1
	.global	HLED_enInit
	.syntax unified
	.thumb
	.thumb_func
	.type	HLED_enInit, %function
HLED_enInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #2
	mov	r0, r3
	bl	MGPIO_enSetPinDirection
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HLED_enInit, .-HLED_enInit
	.align	1
	.global	HLED_enSetON
	.syntax unified
	.thumb
	.thumb_func
	.type	HLED_enSetON, %function
HLED_enSetON:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #1
	mov	r0, r3
	bl	MGPIO_enSetPinValue
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HLED_enSetON, .-HLED_enSetON
	.align	1
	.global	HLED_enSetOFF
	.syntax unified
	.thumb
	.thumb_func
	.type	HLED_enSetOFF, %function
HLED_enSetOFF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #0
	mov	r0, r3
	bl	MGPIO_enSetPinValue
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HLED_enSetOFF, .-HLED_enSetOFF
	.align	1
	.global	HLED_enToggle
	.syntax unified
	.thumb
	.thumb_func
	.type	HLED_enToggle, %function
HLED_enToggle:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	MGPIO_enTogglePin
	movs	r3, #2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HLED_enToggle, .-HLED_enToggle
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
