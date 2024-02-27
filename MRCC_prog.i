# 1 "MCAL/MRCC/MRCC_prog.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "MCAL/MRCC/MRCC_prog.c"







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
# 9 "MCAL/MRCC/MRCC_prog.c" 2
# 1 "LIB/BIT_MATH.h" 1
# 10 "MCAL/MRCC/MRCC_prog.c" 2
# 1 "LIB/REGISTERS.h" 1
# 14 "LIB/REGISTERS.h"
typedef struct
{
 u32 RCC_CR;
 u32 RCC_CFGR;
 u32 RCC_CIR;
 u32 RCC_APB2RSTR;
 u32 RCC_APB1RSTR;
 u32 RCC_AHBENR;
 u32 RCC_APB2ENR;
 u32 RCC_APB1ENR;
 u32 RCC_BDCR;
 u32 RCC_CSR;
}RCC_REG_DEF_t;
# 36 "LIB/REGISTERS.h"
typedef struct
{
 u32 GPIO_CRL;
 u32 GPIO_CRH;
 u32 GPIO_IDR;
 u32 GPIO_ODR;
 u32 GPIO_BSRR;
 u32 GPIO_BRR;
 u32 GPIO_LCKR;
}GPIO_REG_DEF_t;
# 57 "LIB/REGISTERS.h"
typedef struct
{
 volatile u32 NVIC_ISER[3];
 volatile u32 RESERVED1[29];

 volatile u32 NVIC_ICER[3];
 volatile u32 RESERVED2[29];

 volatile u32 NVIC_ISPR[3];
 volatile u32 RESERVED3[29];

 volatile u32 NVIC_ICPR[3];
 volatile u32 RESERVED4[29];

 volatile u32 NVIC_IABR[3];
 volatile u32 RESERVED5[61];

 volatile u8 NVIC_IPR[240];

}NVIC_REG_DEF_t;
# 90 "LIB/REGISTERS.h"
typedef struct
{
 u32 EXTI_IMR;
 u32 EXTI_EMR;
 u32 EXTI_RTSR;
 u32 EXTI_FTSR;
 u32 EXTI_SWIER;
 u32 EXTI_PR;

}EXTI_REG_DEF_t;
# 108 "LIB/REGISTERS.h"
typedef struct
{
 volatile u32 AFIO_EVCR;
 volatile u32 AFIO_MAPR;
 volatile u32 AFIO_EXTICR[4];
 volatile u32 RESERVED;
 volatile u32 AFIO_MAPR2;

}AFIO_REG_DEF_t;







typedef struct
{
 u32 STK_CTRL;
 u32 STK_LOAD;
 u32 STK_VAL;
 u32 STK_CALIB;

}STK_REG_DEF_t;






typedef struct
{
 u32 DMA_ISR;
 u32 DMA_IFCR;
 u32 DMA_CCR1;
 u32 STK_CALIB;

}DMA_REG_DEF_t;
# 11 "MCAL/MRCC/MRCC_prog.c" 2
# 1 "LIB/ERROR_STATE.h" 1
# 12 "LIB/ERROR_STATE.h"
typedef enum {
  OUT_OF_RANG_ERR,
  NULL_PTR_ERR,
  SUCCESS,
  FAILARE
}ErrorState_t;
# 12 "MCAL/MRCC/MRCC_prog.c" 2
# 1 "MCAL/MRCC/MRCC_int.h" 1
# 18 "MCAL/MRCC/MRCC_int.h"
typedef enum
{
 AHB_BUS_ID,
 APB1_BUS_ID,
 APB2_BUS_ID
}BUS_ID;
# 32 "MCAL/MRCC/MRCC_int.h"
typedef enum
{
 DMA1=0, DMA2=1, SRAM=2, FLITF=4, CRC=6,
 TIM2=32, TIM3=33, TIM4=34, WWD=43, SPI2=46, USART2=49, USART3=50, I2C1=53, I2C2= 54, USB=55, CAN=57,
 MAFIO=64, IOPA=66, IOPB=67, IOPC=68, ADC1=73, ADC2=74, TIM1=75, SPI1=76, USART=78

}peripheral_ID;


ErrorState_t MRCC_enSysClkINIT(void);
ErrorState_t MRCC_enEnablePeripheralCLK(peripheral_ID copy_u8Periphera);
ErrorState_t MRCC_enDisablePeripheralCLK(peripheral_ID copy_u8Peripheral);
# 13 "MCAL/MRCC/MRCC_prog.c" 2
# 1 "MCAL/MRCC/MRCC_config.h" 1
# 14 "MCAL/MRCC/MRCC_prog.c" 2
# 1 "MCAL/MRCC/MRCC_priv.h" 1
# 15 "MCAL/MRCC/MRCC_prog.c" 2


ErrorState_t MRCC_enSysClkINIT(void)
{
# 62 "MCAL/MRCC/MRCC_prog.c"
 ((RCC_REG_DEF_t*)0x40021000)->RCC_CR |= (1<<0);


 while (!(((((RCC_REG_DEF_t*)0x40021000)->RCC_CR >> (1))&1)));


 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR &= ~(1<<0);
# 110 "MCAL/MRCC/MRCC_prog.c"
 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR &= 0xFFFFFF0F;
 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR |= 0 << 4;


 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR &= 0xFFFFF8FF;
 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR |= 0 << 8;


 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR &= 0xFFFFC7FF;
 ((RCC_REG_DEF_t*)0x40021000)->RCC_CFGR |= 0 << 11;
# 128 "MCAL/MRCC/MRCC_prog.c"
 return SUCCESS;
}

ErrorState_t MRCC_enEnablePeripheralCLK(peripheral_ID copy_u8Peripheral)
{
 ErrorState_t local_state = SUCCESS;


 if (copy_u8Peripheral <= 31)
  ((RCC_REG_DEF_t*)0x40021000)->RCC_AHBENR |= (1<<copy_u8Peripheral);

 else if (copy_u8Peripheral <= 63)
 {
  copy_u8Peripheral -= 32;
  ((RCC_REG_DEF_t*)0x40021000)->RCC_APB1ENR |= (1<<copy_u8Peripheral);
 }

 else if (copy_u8Peripheral <= 95)
 {
  copy_u8Peripheral -= 64;
  ((RCC_REG_DEF_t*)0x40021000)->RCC_APB2ENR |= (1<<copy_u8Peripheral);
 }

 else
 {
  local_state = OUT_OF_RANG_ERR;
 }
 return local_state;
}

ErrorState_t MRCC_enDisablePeripheralCLK(peripheral_ID copy_u8Peripheral)
{
 ErrorState_t local_state = SUCCESS;


 if (copy_u8Peripheral <= 31)
  ((RCC_REG_DEF_t*)0x40021000)->RCC_AHBENR &= ~(1<<copy_u8Peripheral);

 else if (copy_u8Peripheral <= 63)
 {
  copy_u8Peripheral -= 32;
  ((RCC_REG_DEF_t*)0x40021000)->RCC_APB1ENR &= ~(1<<copy_u8Peripheral);
 }

 else if (copy_u8Peripheral <= 95)
 {
  copy_u8Peripheral -= 64;
  ((RCC_REG_DEF_t*)0x40021000)->RCC_APB2ENR &= ~(1<<copy_u8Peripheral);
 }

 else
 {
  local_state = OUT_OF_RANG_ERR;
 }
 return local_state ;
}
