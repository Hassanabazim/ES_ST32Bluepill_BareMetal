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
	.file	"main.c"
	.text
	.global	global_u32var
	.data
	.align	2
	.type	global_u32var, %object
	.size	global_u32var, 4
global_u32var:
	.word	5
	.global	local_u8var
	.bss
	.type	local_u8var, %object
	.size	local_u8var, 1
local_u8var:
	.space	1
	.global	const_var
	.section	.rodata
	.align	1
	.type	const_var, %object
	.size	const_var, 2
const_var:
	.space	2
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	MRCC_enSysClkINIT
	movs	r0, #66
	bl	MRCC_enEnablePeripheralCLK
	movs	r1, #3
	movs	r0, #1
	bl	HLED_enInit
	movs	r1, #1
	movs	r0, #1
	bl	HLED_enInit
.L2:
	movs	r1, #3
	movs	r0, #1
	bl	HLED_enSetON
	movs	r1, #1
	movs	r0, #1
	bl	HLED_enSetON
	b	.L2
	.size	main, .-main
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
