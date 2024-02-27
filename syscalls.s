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
	.file	"syscalls.c"
	.text
	.global	__env
	.bss
	.align	2
	.type	__env, %object
	.size	__env, 4
__env:
	.space	4
	.global	environ
	.data
	.align	2
	.type	environ, %object
	.size	environ, 4
environ:
	.word	__env
	.text
	.align	1
	.global	initialise_monitor_handles
	.syntax unified
	.thumb
	.thumb_func
	.type	initialise_monitor_handles, %function
initialise_monitor_handles:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	initialise_monitor_handles, .-initialise_monitor_handles
	.align	1
	.global	_getpid
	.syntax unified
	.thumb
	.thumb_func
	.type	_getpid, %function
_getpid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	movs	r3, #1
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_getpid, .-_getpid
	.align	1
	.global	_kill
	.syntax unified
	.thumb
	.thumb_func
	.type	_kill, %function
_kill:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	bl	__errno
	mov	r3, r0
	movs	r2, #22
	str	r2, [r3]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_kill, .-_kill
	.align	1
	.global	_exit
	.syntax unified
	.thumb
	.thumb_func
	.type	_exit, %function
_exit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r1, #-1
	ldr	r0, [r7, #4]
	bl	_kill
.L7:
	b	.L7
	.size	_exit, .-_exit
	.align	1
	.weak	_read
	.syntax unified
	.thumb
	.thumb_func
	.type	_read, %function
_read:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L9
.L10:
	bl	__io_getchar
	mov	r1, r0
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L9:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L10
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_read, .-_read
	.align	1
	.weak	_write
	.syntax unified
	.thumb
	.thumb_func
	.type	_write, %function
_write:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L13
.L14:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	__io_putchar
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L13:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L14
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_write, .-_write
	.align	1
	.global	_close
	.syntax unified
	.thumb
	.thumb_func
	.type	_close, %function
_close:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_close, .-_close
	.align	1
	.global	_fstat
	.syntax unified
	.thumb
	.thumb_func
	.type	_fstat, %function
_fstat:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	mov	r2, #8192
	str	r2, [r3, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_fstat, .-_fstat
	.align	1
	.global	_isatty
	.syntax unified
	.thumb
	.thumb_func
	.type	_isatty, %function
_isatty:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_isatty, .-_isatty
	.align	1
	.global	_lseek
	.syntax unified
	.thumb
	.thumb_func
	.type	_lseek, %function
_lseek:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_lseek, .-_lseek
	.align	1
	.global	_open
	.syntax unified
	.thumb
	.thumb_func
	.type	_open, %function
_open:
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 1
	@ link register save eliminated.
	push	{r1, r2, r3}
	push	{r7}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7}
	add	sp, sp, #12
	bx	lr
	.size	_open, .-_open
	.align	1
	.global	_wait
	.syntax unified
	.thumb
	.thumb_func
	.type	_wait, %function
_wait:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	__errno
	mov	r3, r0
	movs	r2, #10
	str	r2, [r3]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_wait, .-_wait
	.align	1
	.global	_unlink
	.syntax unified
	.thumb
	.thumb_func
	.type	_unlink, %function
_unlink:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	__errno
	mov	r3, r0
	movs	r2, #2
	str	r2, [r3]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_unlink, .-_unlink
	.align	1
	.global	_times
	.syntax unified
	.thumb
	.thumb_func
	.type	_times, %function
_times:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_times, .-_times
	.align	1
	.global	_stat
	.syntax unified
	.thumb
	.thumb_func
	.type	_stat, %function
_stat:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	mov	r2, #8192
	str	r2, [r3, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	_stat, .-_stat
	.align	1
	.global	_link
	.syntax unified
	.thumb
	.thumb_func
	.type	_link, %function
_link:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	bl	__errno
	mov	r3, r0
	movs	r2, #31
	str	r2, [r3]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_link, .-_link
	.align	1
	.global	_fork
	.syntax unified
	.thumb
	.thumb_func
	.type	_fork, %function
_fork:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	__errno
	mov	r3, r0
	movs	r2, #11
	str	r2, [r3]
	mov	r3, #-1
	mov	r0, r3
	pop	{r7, pc}
	.size	_fork, .-_fork
	.align	1
	.global	_execve
	.syntax unified
	.thumb
	.thumb_func
	.type	_execve, %function
_execve:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	bl	__errno
	mov	r3, r0
	movs	r2, #12
	str	r2, [r3]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	_execve, .-_execve
	.bss
	.align	2
heap_end.0:
	.space	4
	.size	heap_end.0, 4
	.text
	.align	1
	.global	_sbrk
	.syntax unified
	.thumb
	.thumb_func
	.type	_sbrk, %function
_sbrk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L44
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L41
	ldr	r3, .L44
	ldr	r2, .L44+4
	str	r2, [r3]
.L41:
	ldr	r3, .L44
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, .L44
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	mov	r2, sp
	cmp	r3, r2
	bls	.L42
	bl	__errno
	mov	r3, r0
	movs	r2, #12
	str	r2, [r3]
	mov	r3, #-1
	b	.L43
.L42:
	ldr	r3, .L44
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r2, .L44
	str	r3, [r2]
	ldr	r3, [r7, #12]
.L43:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	heap_end.0
	.word	end
	.size	_sbrk, .-_sbrk
	.weak	__io_putchar
	.weak	__io_getchar
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
