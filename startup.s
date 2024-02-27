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
	.file	"startup.c"
	.text
	.global	vectors
	.section	.isr_vector,"aw"
	.align	2
	.type	vectors, %object
	.size	vectors, 300
vectors:
	.word	_estack
	.word	Reset_Handler
	.word	NMI_Handler
	.word	HardFault_Handler
	.word	MemMangage_Handler
	.word	BusFault_Handler
	.word	UsageFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SVCall_Handler
	.word	DebugMon_Handler
	.word	PendSV_Handler
	.word	sysTick_Handler
	.word	WWDG_IRQHandler
	.word	PVD_IRQHandler
	.word	TAMPER_IRQHandler
	.word	RTC_IRQHandler
	.word	FLASH_IRQHandler
	.word	RCC_IRQHandler
	.word	EXTI0_IRQHandler
	.word	EXTI1_IRQHandler
	.word	EXTI2_IRQHandler
	.word	EXTI3_IRQHandler
	.word	EXTI4_IRQHandler
	.word	DMA1_Channel1_IRQHandler
	.word	DMA1_Channel2_IRQHandler
	.word	DMA1_Channel3_IRQHandler
	.word	DMA1_Channel4_IRQHandler
	.word	DMA1_Channel5_IRQHandler
	.word	DMA1_Channel6_IRQHandler
	.word	DMA1_Channel7_IRQHandler
	.word	ADC1_2_IRQHandler
	.word	USB_HP_CAN_TX_IRQHandler
	.word	USB_LP_CAN_RX0_IRQHandler
	.word	CAN_RX1_IRQHandler
	.word	CAN_SCE_IRQHandler
	.word	EXTI9_5_IRQHandler
	.word	TIM1_BRK_TIM9_IRQHandler
	.word	TIM1_UP_TIM10_IRQHandler
	.word	TIM1_TRG_COM_TIM11_IRQHandler
	.word	TIM1_CC_IRQHandler
	.word	TIM2_IRQHandler
	.word	TIM3_IRQHandler
	.word	TIM4_IRQHandler
	.word	I2C1_EV_IRQHandler
	.word	I2C1_ER_IRQHandler
	.word	I2C2_EV_IRQHandler
	.word	I2C2_ER_IRQHandler
	.word	SPI1_IRQHandler
	.word	SPI2_IRQHandler
	.word	USART1_IRQHandler
	.word	USART2_IRQHandler
	.word	USART3_IRQHandler
	.word	EXTI15_10_IRQHandler
	.word	RTCAlarm_IRQHandler
	.word	0
	.word	TIM8_BRK_TIM12_IRQHandler
	.word	TIM8_UP_TIM13_IRQHandler
	.word	TIM8_TRG_COM_TIM14_IRQHandler
	.word	TIM8_CC_IRQHandler
	.word	ADC3_IRQHandler
	.word	FSMC_IRQHandler
	.word	SDIO_IRQHandler
	.word	TIM5_IRQHandler
	.word	SPI3_IRQHandler
	.word	UART4_IRQHandler
	.word	UART5_IRQHandler
	.word	TIM6_IRQHandler
	.word	TIM7_IRQHandler
	.word	DMA2_Channel1_IRQHandler
	.word	DMA2_Channel2_IRQHandler
	.word	DMA2_Channel3_IRQHandler
	.word	DMA2_Channel4_5_IRQHandler
	.text
	.align	1
	.global	Reset_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Reset_Handler, %function
Reset_Handler:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	ldr	r3, .L7
	str	r3, [r7, #20]
	ldr	r3, .L7+4
	str	r3, [r7, #16]
	ldr	r3, .L7+8
	str	r3, [r7, #8]
	ldr	r3, .L7+12
	str	r3, [r7, #12]
	ldr	r3, .L7+16
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r2, [r7, #20]
	adds	r3, r2, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r1, r3, #4
	str	r1, [r7, #16]
	ldr	r2, [r2]
	str	r2, [r3]
.L2:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L3
	b	.L4
.L5:
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
.L4:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L5
	bl	__libc_init_array
	bl	main
.L6:
	b	.L6
.L8:
	.align	2
.L7:
	.word	_etext
	.word	_sdata
	.word	_edata
	.word	_sbss
	.word	_ebss
	.size	Reset_Handler, .-Reset_Handler
	.align	1
	.global	Default_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Default_Handler, %function
Default_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L10:
	b	.L10
	.size	Default_Handler, .-Default_Handler
	.weak	DMA2_Channel4_5_IRQHandler
	.thumb_set DMA2_Channel4_5_IRQHandler,Default_Handler
	.weak	DMA2_Channel3_IRQHandler
	.thumb_set DMA2_Channel3_IRQHandler,Default_Handler
	.weak	DMA2_Channel2_IRQHandler
	.thumb_set DMA2_Channel2_IRQHandler,Default_Handler
	.weak	DMA2_Channel1_IRQHandler
	.thumb_set DMA2_Channel1_IRQHandler,Default_Handler
	.weak	TIM7_IRQHandler
	.thumb_set TIM7_IRQHandler,Default_Handler
	.weak	TIM6_IRQHandler
	.thumb_set TIM6_IRQHandler,Default_Handler
	.weak	UART5_IRQHandler
	.thumb_set UART5_IRQHandler,Default_Handler
	.weak	UART4_IRQHandler
	.thumb_set UART4_IRQHandler,Default_Handler
	.weak	SPI3_IRQHandler
	.thumb_set SPI3_IRQHandler,Default_Handler
	.weak	TIM5_IRQHandler
	.thumb_set TIM5_IRQHandler,Default_Handler
	.weak	SDIO_IRQHandler
	.thumb_set SDIO_IRQHandler,Default_Handler
	.weak	FSMC_IRQHandler
	.thumb_set FSMC_IRQHandler,Default_Handler
	.weak	ADC3_IRQHandler
	.thumb_set ADC3_IRQHandler,Default_Handler
	.weak	TIM8_CC_IRQHandler
	.thumb_set TIM8_CC_IRQHandler,Default_Handler
	.weak	TIM8_TRG_COM_TIM14_IRQHandler
	.thumb_set TIM8_TRG_COM_TIM14_IRQHandler,Default_Handler
	.weak	TIM8_UP_TIM13_IRQHandler
	.thumb_set TIM8_UP_TIM13_IRQHandler,Default_Handler
	.weak	TIM8_BRK_TIM12_IRQHandler
	.thumb_set TIM8_BRK_TIM12_IRQHandler,Default_Handler
	.weak	RTCAlarm_IRQHandler
	.thumb_set RTCAlarm_IRQHandler,Default_Handler
	.weak	EXTI15_10_IRQHandler
	.thumb_set EXTI15_10_IRQHandler,Default_Handler
	.weak	USART3_IRQHandler
	.thumb_set USART3_IRQHandler,Default_Handler
	.weak	USART2_IRQHandler
	.thumb_set USART2_IRQHandler,Default_Handler
	.weak	USART1_IRQHandler
	.thumb_set USART1_IRQHandler,Default_Handler
	.weak	SPI2_IRQHandler
	.thumb_set SPI2_IRQHandler,Default_Handler
	.weak	SPI1_IRQHandler
	.thumb_set SPI1_IRQHandler,Default_Handler
	.weak	I2C2_ER_IRQHandler
	.thumb_set I2C2_ER_IRQHandler,Default_Handler
	.weak	I2C2_EV_IRQHandler
	.thumb_set I2C2_EV_IRQHandler,Default_Handler
	.weak	I2C1_ER_IRQHandler
	.thumb_set I2C1_ER_IRQHandler,Default_Handler
	.weak	I2C1_EV_IRQHandler
	.thumb_set I2C1_EV_IRQHandler,Default_Handler
	.weak	TIM4_IRQHandler
	.thumb_set TIM4_IRQHandler,Default_Handler
	.weak	TIM3_IRQHandler
	.thumb_set TIM3_IRQHandler,Default_Handler
	.weak	TIM2_IRQHandler
	.thumb_set TIM2_IRQHandler,Default_Handler
	.weak	TIM1_CC_IRQHandler
	.thumb_set TIM1_CC_IRQHandler,Default_Handler
	.weak	TIM1_TRG_COM_TIM11_IRQHandler
	.thumb_set TIM1_TRG_COM_TIM11_IRQHandler,Default_Handler
	.weak	TIM1_UP_TIM10_IRQHandler
	.thumb_set TIM1_UP_TIM10_IRQHandler,Default_Handler
	.weak	TIM1_BRK_TIM9_IRQHandler
	.thumb_set TIM1_BRK_TIM9_IRQHandler,Default_Handler
	.weak	EXTI9_5_IRQHandler
	.thumb_set EXTI9_5_IRQHandler,Default_Handler
	.weak	CAN_SCE_IRQHandler
	.thumb_set CAN_SCE_IRQHandler,Default_Handler
	.weak	CAN_RX1_IRQHandler
	.thumb_set CAN_RX1_IRQHandler,Default_Handler
	.weak	USB_LP_CAN_RX0_IRQHandler
	.thumb_set USB_LP_CAN_RX0_IRQHandler,Default_Handler
	.weak	USB_HP_CAN_TX_IRQHandler
	.thumb_set USB_HP_CAN_TX_IRQHandler,Default_Handler
	.weak	ADC1_2_IRQHandler
	.thumb_set ADC1_2_IRQHandler,Default_Handler
	.weak	DMA1_Channel7_IRQHandler
	.thumb_set DMA1_Channel7_IRQHandler,Default_Handler
	.weak	DMA1_Channel6_IRQHandler
	.thumb_set DMA1_Channel6_IRQHandler,Default_Handler
	.weak	DMA1_Channel5_IRQHandler
	.thumb_set DMA1_Channel5_IRQHandler,Default_Handler
	.weak	DMA1_Channel4_IRQHandler
	.thumb_set DMA1_Channel4_IRQHandler,Default_Handler
	.weak	DMA1_Channel3_IRQHandler
	.thumb_set DMA1_Channel3_IRQHandler,Default_Handler
	.weak	DMA1_Channel2_IRQHandler
	.thumb_set DMA1_Channel2_IRQHandler,Default_Handler
	.weak	DMA1_Channel1_IRQHandler
	.thumb_set DMA1_Channel1_IRQHandler,Default_Handler
	.weak	EXTI4_IRQHandler
	.thumb_set EXTI4_IRQHandler,Default_Handler
	.weak	EXTI3_IRQHandler
	.thumb_set EXTI3_IRQHandler,Default_Handler
	.weak	EXTI2_IRQHandler
	.thumb_set EXTI2_IRQHandler,Default_Handler
	.weak	EXTI1_IRQHandler
	.thumb_set EXTI1_IRQHandler,Default_Handler
	.weak	EXTI0_IRQHandler
	.thumb_set EXTI0_IRQHandler,Default_Handler
	.weak	RCC_IRQHandler
	.thumb_set RCC_IRQHandler,Default_Handler
	.weak	FLASH_IRQHandler
	.thumb_set FLASH_IRQHandler,Default_Handler
	.weak	RTC_IRQHandler
	.thumb_set RTC_IRQHandler,Default_Handler
	.weak	TAMPER_IRQHandler
	.thumb_set TAMPER_IRQHandler,Default_Handler
	.weak	PVD_IRQHandler
	.thumb_set PVD_IRQHandler,Default_Handler
	.weak	WWDG_IRQHandler
	.thumb_set WWDG_IRQHandler,Default_Handler
	.weak	sysTick_Handler
	.thumb_set sysTick_Handler,Default_Handler
	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,Default_Handler
	.weak	DebugMon_Handler
	.thumb_set DebugMon_Handler,Default_Handler
	.weak	SVCall_Handler
	.thumb_set SVCall_Handler,Default_Handler
	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,Default_Handler
	.weak	BusFault_Handler
	.thumb_set BusFault_Handler,Default_Handler
	.weak	MemMangage_Handler
	.thumb_set MemMangage_Handler,Default_Handler
	.weak	HardFault_Handler
	.thumb_set HardFault_Handler,Default_Handler
	.weak	NMI_Handler
	.thumb_set NMI_Handler,Default_Handler
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
