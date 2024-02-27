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
	.file	"MGPIO_prog.c"
	.text
	.align	1
	.global	MGPIO_enSetPinDirection
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enSetPinDirection, %function
MGPIO_enSetPinDirection:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L2
	cmp	r3, #3
	bgt	.L3
	cmp	r3, #1
	beq	.L4
	cmp	r3, #2
	beq	.L5
	b	.L3
.L4:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L6
	ldr	r3, .L17
	ldr	r3, [r3]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L17
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L17
	ldr	r3, [r3]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17
	orrs	r3, r3, r1
	str	r3, [r2]
	b	.L9
.L6:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L8
	ldrb	r3, [r7, #6]
	subs	r3, r3, #8
	strb	r3, [r7, #6]
	ldr	r3, .L17
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L17
	ands	r3, r3, r1
	str	r3, [r2, #4]
	ldr	r3, .L17
	ldr	r3, [r3, #4]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17
	orrs	r3, r3, r1
	str	r3, [r2, #4]
	b	.L9
.L8:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L9
.L5:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L10
	ldr	r3, .L17+4
	ldr	r3, [r3]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	mvn	r1, #15
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+4
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L17+4
	ldr	r3, [r3]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+4
	orrs	r3, r3, r1
	str	r3, [r2]
	b	.L9
.L10:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L12
	ldrb	r3, [r7, #6]
	subs	r3, r3, #8
	strb	r3, [r7, #6]
	ldr	r3, .L17+4
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	mvn	r1, #15
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+4
	ands	r3, r3, r1
	str	r3, [r2, #4]
	ldr	r3, .L17+4
	ldr	r3, [r3, #4]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+4
	orrs	r3, r3, r1
	str	r3, [r2, #4]
	b	.L9
.L12:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L9
.L2:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L13
	ldr	r3, .L17+8
	ldr	r3, [r3]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	movs	r1, #15
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L17+8
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L17+8
	ldr	r3, [r3]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+8
	orrs	r3, r3, r1
	str	r3, [r2]
	b	.L9
.L13:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L15
	ldrb	r3, [r7, #6]
	subs	r3, r3, #8
	strb	r3, [r7, #6]
	ldr	r3, .L17+8
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	mvn	r1, #15
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+8
	ands	r3, r3, r1
	str	r3, [r2, #4]
	ldr	r3, .L17+8
	ldr	r3, [r3, #4]
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	lsls	r2, r2, #2
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L17+8
	orrs	r3, r3, r1
	str	r3, [r2, #4]
	b	.L9
.L15:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L9
.L3:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L9:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L18:
	.align	2
.L17:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enSetPinDirection, .-MGPIO_enSetPinDirection
	.align	1
	.global	MGPIO_enSetPinValue
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enSetPinValue, %function
MGPIO_enSetPinValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L20
	cmp	r3, #3
	bgt	.L21
	cmp	r3, #1
	beq	.L22
	cmp	r3, #2
	beq	.L23
	b	.L21
.L22:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L24
	ldr	r3, .L35
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L35
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	b	.L27
.L24:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L26
	ldr	r3, .L35
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L35
	ands	r3, r3, r1
	str	r3, [r2, #12]
	b	.L27
.L26:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L27
.L23:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L28
	ldr	r3, .L35+4
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L35+4
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	b	.L27
.L28:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L30
	ldr	r3, .L35+4
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L35+4
	ands	r3, r3, r1
	str	r3, [r2, #12]
	b	.L27
.L30:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L27
.L20:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L31
	ldr	r3, .L35+8
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L35+8
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	b	.L27
.L31:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L33
	ldr	r3, .L35+8
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mvns	r2, r2
	mov	r1, r2
	ldr	r2, .L35+8
	ands	r3, r3, r1
	str	r3, [r2, #12]
	b	.L27
.L33:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L27
.L21:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L27:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L36:
	.align	2
.L35:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enSetPinValue, .-MGPIO_enSetPinValue
	.align	1
	.global	MGPIO_enTogglePin
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enTogglePin, %function
MGPIO_enTogglePin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L38
	cmp	r3, #3
	bgt	.L39
	cmp	r3, #1
	beq	.L40
	cmp	r3, #2
	beq	.L41
	b	.L39
.L40:
	ldr	r3, .L44
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L44
	eors	r3, r3, r1
	str	r3, [r2, #12]
	b	.L42
.L41:
	ldr	r3, .L44+4
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L44+4
	eors	r3, r3, r1
	str	r3, [r2, #12]
	b	.L42
.L38:
	ldr	r3, .L44+8
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L44+8
	eors	r3, r3, r1
	str	r3, [r2, #12]
	b	.L42
.L39:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L42:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L45:
	.align	2
.L44:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enTogglePin, .-MGPIO_enTogglePin
	.align	1
	.global	MGPIO_enGetPinValue
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enGetPinValue, %function
MGPIO_enGetPinValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	str	r2, [r7]
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L47
	cmp	r3, #3
	bgt	.L48
	cmp	r3, #1
	beq	.L49
	cmp	r3, #2
	beq	.L50
	b	.L48
.L49:
	ldr	r3, .L53
	ldr	r2, [r3, #8]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsr	r3, r2, r3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L51
.L50:
	ldr	r3, .L53+4
	ldr	r2, [r3, #8]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsr	r3, r2, r3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L51
.L47:
	ldr	r3, .L53+8
	ldr	r2, [r3, #8]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsr	r3, r2, r3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L51
.L48:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L51:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L54:
	.align	2
.L53:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enGetPinValue, .-MGPIO_enGetPinValue
	.align	1
	.global	MGPIO_enSetPortDirection
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enSetPortDirection, %function
MGPIO_enSetPortDirection:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L56
	cmp	r3, #3
	bgt	.L57
	cmp	r3, #1
	beq	.L58
	cmp	r3, #2
	beq	.L59
	b	.L57
.L58:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L60
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	mov	r2, #286331153
	mul	r2, r3, r2
	ldr	r3, .L71
	str	r2, [r3]
	b	.L63
.L60:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L62
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	mov	r2, #286331153
	mul	r2, r3, r2
	ldr	r3, .L71
	str	r2, [r3, #4]
	b	.L63
.L62:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L63
.L59:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L64
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	mov	r2, #286331153
	mul	r2, r3, r2
	ldr	r3, .L71+4
	str	r2, [r3]
	b	.L63
.L64:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L66
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	mov	r2, #286331153
	mul	r2, r3, r2
	ldr	r3, .L71+4
	str	r2, [r3, #4]
	b	.L63
.L66:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L63
.L56:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L67
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	mov	r2, #286331153
	mul	r2, r3, r2
	ldr	r3, .L71+8
	str	r2, [r3]
	b	.L63
.L67:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L69
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	mov	r2, #286331153
	mul	r2, r3, r2
	ldr	r3, .L71+8
	str	r2, [r3, #4]
	b	.L63
.L69:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L63
.L57:
	movs	r3, #0
	strb	r3, [r7, #15]
.L63:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L72:
	.align	2
.L71:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enSetPortDirection, .-MGPIO_enSetPortDirection
	.align	1
	.global	MGPIO_enSetPortValue
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enSetPortValue, %function
MGPIO_enSetPortValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L74
	cmp	r3, #3
	bgt	.L75
	cmp	r3, #1
	beq	.L76
	cmp	r3, #2
	beq	.L77
	b	.L75
.L76:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L78
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L78
	ldr	r3, .L95
	ldr	r3, [r3, #12]
	ldr	r2, .L95
	orr	r3, r3, #255
	str	r3, [r2, #12]
	b	.L79
.L78:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L80
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L80
	ldr	r3, .L95
	ldr	r3, [r3, #12]
	ldr	r2, .L95
	orr	r3, r3, #65280
	str	r3, [r2, #12]
	b	.L79
.L80:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L81
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L81
	ldr	r3, .L95
	ldr	r3, [r3, #12]
	ldr	r2, .L95
	bic	r3, r3, #255
	str	r3, [r2, #12]
	ldr	r3, .L95
	ldr	r2, .L95
	ldr	r3, [r3, #12]
	str	r3, [r2, #12]
	b	.L79
.L81:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L82
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L82
	ldr	r3, .L95
	ldr	r3, [r3, #12]
	ldr	r2, .L95
	bic	r3, r3, #65280
	str	r3, [r2, #12]
	ldr	r3, .L95
	ldr	r2, .L95
	ldr	r3, [r3, #12]
	str	r3, [r2, #12]
	b	.L79
.L82:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L83
.L79:
	b	.L83
.L77:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L84
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
	ldr	r3, .L95+4
	ldr	r3, [r3, #12]
	ldr	r2, .L95+4
	orr	r3, r3, #255
	str	r3, [r2, #12]
	b	.L85
.L84:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L86
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L86
	ldr	r3, .L95+4
	ldr	r3, [r3, #12]
	ldr	r2, .L95+4
	orr	r3, r3, #65280
	str	r3, [r2, #12]
	b	.L85
.L86:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L87
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L87
	ldr	r3, .L95+4
	ldr	r3, [r3, #12]
	ldr	r2, .L95+4
	bic	r3, r3, #255
	str	r3, [r2, #12]
	ldr	r3, .L95+4
	ldr	r2, .L95+4
	ldr	r3, [r3, #12]
	str	r3, [r2, #12]
	b	.L85
.L87:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L88
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L88
	ldr	r3, .L95+4
	ldr	r3, [r3, #12]
	ldr	r2, .L95+4
	bic	r3, r3, #65280
	str	r3, [r2, #12]
	ldr	r3, .L95+4
	ldr	r2, .L95+4
	ldr	r3, [r3, #12]
	str	r3, [r2, #12]
	b	.L85
.L88:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L83
.L85:
	b	.L83
.L74:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L89
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L89
	ldr	r3, .L95+8
	ldr	r3, [r3, #12]
	ldr	r2, .L95+8
	orr	r3, r3, #255
	str	r3, [r2, #12]
	b	.L90
.L89:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L91
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L91
	ldr	r3, .L95+8
	ldr	r3, [r3, #12]
	ldr	r2, .L95+8
	orr	r3, r3, #65280
	str	r3, [r2, #12]
	b	.L90
.L91:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L92
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L92
	ldr	r3, .L95+8
	ldr	r3, [r3, #12]
	ldr	r2, .L95+8
	bic	r3, r3, #255
	str	r3, [r2, #12]
	ldr	r3, .L95+8
	ldr	r2, .L95+8
	ldr	r3, [r3, #12]
	str	r3, [r2, #12]
	b	.L90
.L92:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L93
	ldr	r3, .L95+8
	ldr	r3, [r3, #12]
	ldr	r2, .L95+8
	bic	r3, r3, #65280
	str	r3, [r2, #12]
	ldr	r3, .L95+8
	ldr	r2, .L95+8
	ldr	r3, [r3, #12]
	str	r3, [r2, #12]
	b	.L90
.L93:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L83
.L90:
	b	.L83
.L75:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L83:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L96:
	.align	2
.L95:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enSetPortValue, .-MGPIO_enSetPortValue
	.align	1
	.global	MGPIO_enSetResetPin
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enSetResetPin, %function
MGPIO_enSetResetPin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L98
	cmp	r3, #3
	bgt	.L99
	cmp	r3, #1
	beq	.L100
	cmp	r3, #2
	beq	.L101
	b	.L99
.L100:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L102
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, .L113
	str	r2, [r3, #16]
	b	.L105
.L102:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L104
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, .L113
	str	r2, [r3, #20]
	b	.L105
.L104:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L105
.L101:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L106
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, .L113+4
	str	r2, [r3, #16]
	b	.L105
.L106:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L108
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, .L113+4
	str	r2, [r3, #20]
	b	.L105
.L108:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L105
.L98:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L109
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, .L113+8
	str	r2, [r3, #16]
	b	.L105
.L109:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L111
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, .L113+8
	str	r2, [r3, #20]
	b	.L105
.L111:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L105
.L99:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L105:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L114:
	.align	2
.L113:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enSetResetPin, .-MGPIO_enSetResetPin
	.align	1
	.global	MGPIO_enLockPin
	.syntax unified
	.thumb
	.thumb_func
	.type	MGPIO_enLockPin, %function
MGPIO_enLockPin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L116
	cmp	r3, #3
	bgt	.L117
	cmp	r3, #1
	beq	.L118
	cmp	r3, #2
	beq	.L119
	b	.L117
.L118:
	ldr	r3, .L131
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L131
	orrs	r3, r3, r1
	str	r3, [r2, #24]
	ldr	r3, .L131
	ldr	r3, [r3, #24]
	ldr	r2, .L131
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131
	ldr	r3, [r3, #24]
	ldr	r2, .L131
	bic	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131
	ldr	r3, [r3, #24]
	ldr	r2, .L131
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L120
	ldr	r3, .L131
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L121
	movs	r3, #2
	strb	r3, [r7, #15]
	b	.L123
.L121:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L123
.L120:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L123
.L119:
	ldr	r3, .L131+4
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L131+4
	orrs	r3, r3, r1
	str	r3, [r2, #24]
	ldr	r3, .L131+4
	ldr	r3, [r3, #24]
	ldr	r2, .L131+4
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131+4
	ldr	r3, [r3, #24]
	ldr	r2, .L131+4
	bic	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131+4
	ldr	r3, [r3, #24]
	ldr	r2, .L131+4
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131+4
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L124
	ldr	r3, .L131+4
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L125
	movs	r3, #2
	strb	r3, [r7, #15]
	b	.L123
.L125:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L123
.L124:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L123
.L116:
	ldr	r3, .L131+8
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, .L131+8
	orrs	r3, r3, r1
	str	r3, [r2, #24]
	ldr	r3, .L131+8
	ldr	r3, [r3, #24]
	ldr	r2, .L131+8
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131+8
	ldr	r3, [r3, #24]
	ldr	r2, .L131+8
	bic	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131+8
	ldr	r3, [r3, #24]
	ldr	r2, .L131+8
	orr	r3, r3, #65536
	str	r3, [r2, #24]
	ldr	r3, .L131+8
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L127
	ldr	r3, .L131+8
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L128
	movs	r3, #2
	strb	r3, [r7, #15]
	b	.L123
.L128:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L123
.L127:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L123
.L117:
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L123:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L132:
	.align	2
.L131:
	.word	1073809408
	.word	1073810432
	.word	1073811456
	.size	MGPIO_enLockPin, .-MGPIO_enLockPin
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
