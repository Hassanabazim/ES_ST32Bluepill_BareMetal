# 1 "Startup/startup.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "Startup/startup.c"
# 9 "Startup/startup.c"
# 1 "LIB/STD_TYPES.h" 1
# 15 "LIB/STD_TYPES.h"
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed long s32;
typedef unsigned long u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;
typedef long double f128;
# 10 "Startup/startup.c" 2





extern u32 _estack ;
extern u32 _sidata ;
extern u32 _etext ;
extern u32 _sdata ;
extern u32 _edata ;
extern u32 _sbss ;
extern u32 _ebss ;

void __libc_init_array(void);
void main(void);


void Reset_Handler(void);
void NMI_Handler(void) __attribute__((weak,alias("Default_Handler")));
void HardFault_Handler(void) __attribute__((weak,alias("Default_Handler")));
void MemMangage_Handler(void) __attribute__((weak,alias("Default_Handler")));
void BusFault_Handler(void) __attribute__((weak,alias("Default_Handler")));
void UsageFault_Handler(void) __attribute__((weak,alias("Default_Handler")));
void SVCall_Handler(void) __attribute__((weak,alias("Default_Handler")));
void DebugMon_Handler(void) __attribute__((weak,alias("Default_Handler")));
void PendSV_Handler(void) __attribute__((weak,alias("Default_Handler")));
void sysTick_Handler(void) __attribute__((weak,alias("Default_Handler")));
void WWDG_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void PVD_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TAMPER_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void RTC_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void FLASH_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void RCC_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI0_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI1_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI4_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel1_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel4_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel5_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel6_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA1_Channel7_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void ADC1_2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void USB_HP_CAN_TX_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void USB_LP_CAN_RX0_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void CAN_RX1_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void CAN_SCE_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI9_5_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM1_BRK_TIM9_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM1_UP_TIM10_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM1_TRG_COM_TIM11_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM1_CC_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM4_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void I2C1_EV_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void I2C1_ER_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void I2C2_EV_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void I2C2_ER_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void SPI1_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void SPI2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void USART1_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void USART2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void USART3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void EXTI15_10_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void RTCAlarm_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM8_BRK_TIM12_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM8_UP_TIM13_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM8_TRG_COM_TIM14_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM8_CC_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void ADC3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void FSMC_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void SDIO_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM5_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void SPI3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void UART4_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void UART5_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM6_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void TIM7_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA2_Channel1_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA2_Channel2_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA2_Channel3_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));
void DMA2_Channel4_5_IRQHandler(void) __attribute__((weak,alias("Default_Handler")));



u32 vectors[] __attribute__((section(".isr_vector"))) = {
(u32) &_estack,
(u32) &Reset_Handler,
(u32) &NMI_Handler,
(u32) &HardFault_Handler,
(u32) &MemMangage_Handler,
(u32) &BusFault_Handler,
(u32) &UsageFault_Handler,
0,
0,
0,
0,
(u32) &SVCall_Handler,
(u32) &DebugMon_Handler,
(u32) &PendSV_Handler,
(u32) &sysTick_Handler,
(u32) &WWDG_IRQHandler,
(u32) &PVD_IRQHandler,
(u32) &TAMPER_IRQHandler,
(u32) &RTC_IRQHandler,
(u32) &FLASH_IRQHandler,
(u32) &RCC_IRQHandler,
(u32) &EXTI0_IRQHandler,
(u32) &EXTI1_IRQHandler,
(u32) &EXTI2_IRQHandler,
(u32) &EXTI3_IRQHandler,
(u32) &EXTI4_IRQHandler,
(u32) &DMA1_Channel1_IRQHandler,
(u32) &DMA1_Channel2_IRQHandler,
(u32) &DMA1_Channel3_IRQHandler,
(u32) &DMA1_Channel4_IRQHandler,
(u32) &DMA1_Channel5_IRQHandler,
(u32) &DMA1_Channel6_IRQHandler,
(u32) &DMA1_Channel7_IRQHandler,
(u32) &ADC1_2_IRQHandler,
(u32) &USB_HP_CAN_TX_IRQHandler,
(u32) &USB_LP_CAN_RX0_IRQHandler,
(u32) &CAN_RX1_IRQHandler,
(u32) &CAN_SCE_IRQHandler,
(u32) &EXTI9_5_IRQHandler,
(u32) &TIM1_BRK_TIM9_IRQHandler,
(u32) &TIM1_UP_TIM10_IRQHandler,
(u32) &TIM1_TRG_COM_TIM11_IRQHandler,
(u32) &TIM1_CC_IRQHandler,
(u32) &TIM2_IRQHandler,
(u32) &TIM3_IRQHandler,
(u32) &TIM4_IRQHandler,
(u32) &I2C1_EV_IRQHandler,
(u32) &I2C1_ER_IRQHandler,
(u32) &I2C2_EV_IRQHandler,
(u32) &I2C2_ER_IRQHandler,
(u32) &SPI1_IRQHandler,
(u32) &SPI2_IRQHandler,
(u32) &USART1_IRQHandler,
(u32) &USART2_IRQHandler,
(u32) &USART3_IRQHandler,
(u32) &EXTI15_10_IRQHandler,
(u32) &RTCAlarm_IRQHandler,
0,
(u32) &TIM8_BRK_TIM12_IRQHandler,
(u32) &TIM8_UP_TIM13_IRQHandler,
(u32) &TIM8_TRG_COM_TIM14_IRQHandler,
(u32) &TIM8_CC_IRQHandler,
(u32) &ADC3_IRQHandler,
(u32) &FSMC_IRQHandler,
(u32) &SDIO_IRQHandler,
(u32) &TIM5_IRQHandler,
(u32) &SPI3_IRQHandler,
(u32) &UART4_IRQHandler,
(u32) &UART5_IRQHandler,
(u32) &TIM6_IRQHandler,
(u32) &TIM7_IRQHandler,
(u32) &DMA2_Channel1_IRQHandler,
(u32) &DMA2_Channel2_IRQHandler,
(u32) &DMA2_Channel3_IRQHandler,
(u32) &DMA2_Channel4_5_IRQHandler
};

void Reset_Handler(void)
{




 u32 *ptr2Src = (u32*)&_etext;
 u32 *ptr2sDes = (u32*)&_sdata;
 u32 *ptr2eDes = (u32*)&_edata;
 u32 *ptr2sBss = (u32*)&_sbss;
 u32 *ptr2eBss = (u32*)&_ebss;

 while (ptr2sDes < ptr2eDes)
 {
  *(ptr2sDes++) = *(ptr2Src++);
 }



 while (ptr2sBss < ptr2eBss)
 {
  *(ptr2sBss++) = 0;
 }



 __libc_init_array();



 main();

 while (1);
}

void Default_Handler(void)
{
 while (1);
}
