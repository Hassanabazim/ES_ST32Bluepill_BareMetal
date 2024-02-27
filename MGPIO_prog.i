# 1 "MCAL/MGPIO/MGPIO_prog.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "MCAL/MGPIO/MGPIO_prog.c"







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
# 9 "MCAL/MGPIO/MGPIO_prog.c" 2
# 1 "LIB/BIT_MATH.h" 1
# 10 "MCAL/MGPIO/MGPIO_prog.c" 2
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
# 11 "MCAL/MGPIO/MGPIO_prog.c" 2
# 1 "LIB/ERROR_STATE.h" 1
# 12 "LIB/ERROR_STATE.h"
typedef enum {
  OUT_OF_RANG_ERR,
  NULL_PTR_ERR,
  SUCCESS,
  FAILARE
}ErrorState_t;
# 12 "MCAL/MGPIO/MGPIO_prog.c" 2
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
# 13 "MCAL/MGPIO/MGPIO_prog.c" 2
# 1 "MCAL/MGPIO/MGPIO_int.h" 1
# 11 "MCAL/MGPIO/MGPIO_int.h"
typedef enum
{
 GPIO_CRL_ID,
 GPIO_CRH_ID
}GPIO_ID_t;






typedef enum
{
 PORTA = 1, PORTB, PORTC
}PORT_t;







typedef enum
{
 PIN0, PIN1, PIN2, PIN3, PIN4, PIN5, PIN6, PIN7, PIN8, PIN9,
 PIN10, PIN11, PIN12, PIN13, PIN14, PIN15
}PIN_t;
# 59 "MCAL/MGPIO/MGPIO_int.h"
typedef enum
{
 IN_ANALOG,
 OUT_10MHZ_PP,
 OUT_2MHZ_PP,
 OUT_50MHZ_PP,
 IN_FLOATING,
 OUT_10MHZ_OD,
 OUT_2MHZ_OD,
 OUT_50MHZ_OD,
 IN_PU_PD,
 OUT_10MHZ_AF_PP,
 OUT_2MHZ_AF_PP,
 OUT_50MHZ_AF_PP,
 OUT_10MHZ_AF_OD=13,
 OUT_2MHZ_AF_OD,
 OUT_50MHZ_AF_OD
}MODE_t;

typedef enum
{
 LOW, HIGH
}VALUE_t;

typedef enum
{
 GPIO_PIN_RESET,
 GPIO_PIN_SET
}PinMode_t;


ErrorState_t MGPIO_enSetPinDirection(PORT_t copy_u8port, PIN_t copy_u8pin, MODE_t copy_u8Mode);
ErrorState_t MGPIO_enSetPinValue(PORT_t copy_u8port, PIN_t copy_u8pin, VALUE_t copy_u8Value);
ErrorState_t MGPIO_enTogglePin(PORT_t copy_u8port, PIN_t copy_u8pin);
ErrorState_t MGPIO_enGetPinValue(PORT_t copy_u8port, PIN_t copy_u8pin, u8 *pinValue);
ErrorState_t MGPIO_enSetPortDirection(GPIO_ID_t copy_u8CRID,PORT_t copy_u8port, MODE_t copy_u8Mode);
ErrorState_t MGPIO_enSetPortValue(GPIO_ID_t copy_u8CRID, PORT_t copy_u8port, VALUE_t copy_u8Value);
ErrorState_t MGPIO_enSetResetPin(PORT_t copy_u8port,PIN_t copy_u8pin, PinMode_t copy_u8Mode);
ErrorState_t MGPIO_enLockPin(PORT_t copy_u8port, PIN_t copy_u8pin);
# 14 "MCAL/MGPIO/MGPIO_prog.c" 2
# 1 "MCAL/MGPIO/MGPIO_config.h" 1
# 15 "MCAL/MGPIO/MGPIO_prog.c" 2
# 1 "MCAL/MGPIO/MGPIO_priv.h" 1
# 16 "MCAL/MGPIO/MGPIO_prog.c" 2

ErrorState_t MGPIO_enSetPinDirection(PORT_t copy_u8port, PIN_t copy_u8pin, MODE_t copy_u8Mode)
{
 ErrorState_t local_state = SUCCESS;
 switch(copy_u8port)
 {
 case PORTA:
  if (copy_u8pin < 8)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_CRL &= ~(0xF << (copy_u8pin * 4)) ;
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_CRL |= copy_u8Mode << (copy_u8pin * 4) ;
  }
  else if(copy_u8pin < 16)
  {
   copy_u8pin -= 8 ;
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_CRH &= ~(0xF << (copy_u8pin * 4));
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_CRH |= (copy_u8Mode << (copy_u8pin * 4));
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTB:
  if (copy_u8pin < 8)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_CRL &= ~(0xF) << (copy_u8pin * 4) ;
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_CRL |= (copy_u8Mode << (copy_u8pin * 4)) ;
  }
  else if(copy_u8pin < 16)
  {
   copy_u8pin -= 8 ;
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_CRH &= ~(0xF) << (copy_u8pin * 4) ;
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_CRH |= (copy_u8Mode << (copy_u8pin * 4)) ;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTC:
  if (copy_u8pin < 8)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_CRL &= ~(0xF << (copy_u8pin * 4)) ;
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_CRL |= (copy_u8Mode << (copy_u8pin * 4)) ;
  }
  else if(copy_u8pin < 16)
  {
   copy_u8pin -= 8 ;
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_CRH &= ~(0xF) << (copy_u8pin * 4) ;
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_CRH |= (copy_u8Mode << (copy_u8pin * 4)) ;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 default:
  local_state = OUT_OF_RANG_ERR;
  break;
 }
 return local_state;
}

ErrorState_t MGPIO_enSetPinValue(PORT_t copy_u8port, PIN_t copy_u8pin, VALUE_t copy_u8Value)
{
 ErrorState_t local_state = SUCCESS;
 switch(copy_u8port)
 {
 case PORTA:
  if (copy_u8Value == HIGH)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR |= (1<<copy_u8pin);
  }
  else if(copy_u8Value == LOW)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR &= ~(1<<copy_u8pin);
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTB:
  if (copy_u8Value == HIGH)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR |= (1<<copy_u8pin);
  }
  else if(copy_u8Value == LOW)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR &= ~(1<<copy_u8pin);
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;

  }
  break;

 case PORTC:
  if (copy_u8Value == HIGH)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR |= (1<<copy_u8pin);
  }
  else if(copy_u8Value == LOW)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR &= ~(1<<copy_u8pin);
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 default:
  local_state = OUT_OF_RANG_ERR;
  break;
 }
 return local_state;
}

ErrorState_t MGPIO_enTogglePin(PORT_t copy_u8port, PIN_t copy_u8pin)
{
 ErrorState_t local_state = SUCCESS;
 switch(copy_u8port)
 {
 case PORTA:
  ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR ^= (1<<copy_u8pin);
  break;

 case PORTB:
  ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR ^= (1<<copy_u8pin);
  break;

 case PORTC:
  ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR ^= (1<<copy_u8pin);
  break;
 default:
  local_state = OUT_OF_RANG_ERR;
  break;
 }
 return local_state;
}


ErrorState_t MGPIO_enGetPinValue(PORT_t copy_u8port, PIN_t copy_u8pin, u8 *pinValue)
{
 ErrorState_t local_state = SUCCESS;
 switch(copy_u8port)
 {
 case PORTA:
  *pinValue = ((((GPIO_REG_DEF_t*)0x40010800)->GPIO_IDR >> (copy_u8pin))&1);
  break;

 case PORTB:
  *pinValue = ((((GPIO_REG_DEF_t*)0x40010C00)->GPIO_IDR >> (copy_u8pin))&1);
  break;

 case PORTC:
  *pinValue = ((((GPIO_REG_DEF_t*)0x40011000)->GPIO_IDR >> (copy_u8pin))&1);
  break;
 default:
  local_state = OUT_OF_RANG_ERR;
  break;
 }

 return local_state;
}

ErrorState_t MGPIO_enSetPortDirection(GPIO_ID_t copy_u8CRID,PORT_t copy_u8port, MODE_t copy_u8Mode)
{
 ErrorState_t local_state = SUCCESS;
 switch(copy_u8port)
 {
 case PORTA:
  if(copy_u8CRID == GPIO_CRL_ID)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_CRL = copy_u8Mode * 0x11111111 ;
  }
  else if(copy_u8CRID == GPIO_CRH_ID)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_CRH = copy_u8Mode * 0x11111111 ;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;


 case PORTB:
  if(copy_u8CRID == GPIO_CRL_ID)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_CRL = copy_u8Mode * 0x11111111 ;
  }
  else if(copy_u8CRID == GPIO_CRH_ID)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_CRH = copy_u8Mode * 0x11111111 ;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTC:
  if(copy_u8CRID == GPIO_CRL_ID)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_CRL = copy_u8Mode * 0x11111111 ;
  }
  else if(copy_u8CRID == GPIO_CRH_ID)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_CRH = copy_u8Mode * 0x11111111 ;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 default:
  local_state = OUT_OF_RANG_ERR;
 }

 return local_state;
}

ErrorState_t MGPIO_enSetPortValue(GPIO_ID_t copy_u8CRID, PORT_t copy_u8port, VALUE_t copy_u8Value)
{
 ErrorState_t local_state = SUCCESS;

 switch(copy_u8port)
 {
 case PORTA:
  if ((copy_u8Value == HIGH) && (copy_u8CRID == GPIO_CRL_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR |= 0x00FF;
  }
  else if ((copy_u8Value == HIGH) && (copy_u8CRID == GPIO_CRH_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR |= 0xFF00;
  }
  else if ((copy_u8Value == LOW) && (copy_u8CRID == GPIO_CRL_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR &= ~(0x00FF);
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR |= 0x0;
  }
  else if ((copy_u8Value == LOW) && (copy_u8CRID == GPIO_CRH_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR &= ~(0xFF00);
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_ODR |= 0x0;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTB:
  if ((copy_u8Value == HIGH) && (copy_u8CRID == GPIO_CRL_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR |= 0x00FF;
  }
  else if ((copy_u8Value == HIGH) && (copy_u8CRID == GPIO_CRH_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR |= 0xFF00;
  }
  else if ((copy_u8Value == LOW) && (copy_u8CRID == GPIO_CRL_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR &= ~(0x00FF);
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR |= 0x0;
  }
  else if ((copy_u8Value == LOW) && (copy_u8CRID == GPIO_CRH_ID))
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR &= ~(0xFF00);
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_ODR |= 0x0;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTC:
  if ((copy_u8Value == HIGH) && (copy_u8CRID == GPIO_CRL_ID))
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR |= 0x00FF;
  }
  else if ((copy_u8Value == HIGH) && (copy_u8CRID == GPIO_CRH_ID))
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR |= 0xFF00;
  }
  else if ((copy_u8Value == LOW) && (copy_u8CRID == GPIO_CRL_ID))
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR &= ~(0x00FF);
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR |= 0x0;
  }
  else if ((copy_u8Value == LOW) && (copy_u8CRID == GPIO_CRH_ID))
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR &= ~(0xFF00);
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_ODR |= 0x0;
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 default:
  local_state = OUT_OF_RANG_ERR;
  break;

 }
 return local_state;
}

ErrorState_t MGPIO_enSetResetPin(PORT_t copy_u8port,PIN_t copy_u8pin, PinMode_t copy_u8Mode)
{
 ErrorState_t local_state = SUCCESS;
 switch(copy_u8port)
 {
 case PORTA:
  if (copy_u8Mode == GPIO_PIN_SET)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_BSRR = (1<<copy_u8pin);
  }
  else if(copy_u8Mode == GPIO_PIN_RESET)
  {
   ((GPIO_REG_DEF_t*)0x40010800)->GPIO_BRR = (1<<copy_u8pin);
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTB:
  if (copy_u8Mode == GPIO_PIN_SET)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_BSRR = (1<<copy_u8pin);
  }
  else if(copy_u8Mode == GPIO_PIN_RESET)
  {
   ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_BRR = (1<<copy_u8pin);
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 case PORTC:
  if (copy_u8Mode == GPIO_PIN_SET)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_BSRR = (1<<copy_u8pin);
  }
  else if(copy_u8Mode == GPIO_PIN_RESET)
  {
   ((GPIO_REG_DEF_t*)0x40011000)->GPIO_BRR = (1<<copy_u8pin);
  }
  else
  {
   local_state = OUT_OF_RANG_ERR;
  }
  break;

 default:
  local_state = OUT_OF_RANG_ERR;
  break;
 }

 return local_state;
}

ErrorState_t MGPIO_enLockPin(PORT_t copy_u8port, PIN_t copy_u8pin)
{
 ErrorState_t local_state = SUCCESS;
 u8 pinState ;

 switch (copy_u8port)
 {
 case PORTA:
  ((GPIO_REG_DEF_t*)0x40010800)->GPIO_LCKR |= (1<<copy_u8pin);

  ((GPIO_REG_DEF_t*)0x40010800)->GPIO_LCKR |= (1<<16);
  ((GPIO_REG_DEF_t*)0x40010800)->GPIO_LCKR &= ~(1<<16);
  ((GPIO_REG_DEF_t*)0x40010800)->GPIO_LCKR |= (1<<16);

  pinState = ((((GPIO_REG_DEF_t*)0x40010800)->GPIO_LCKR >> (16))&1);
  if (pinState == 0)
  {
   pinState = ((((GPIO_REG_DEF_t*)0x40010800)->GPIO_LCKR >> (16))&1);
   if (pinState == 1)
   {
    local_state = SUCCESS;
   }
   else
   {
    local_state = FAILARE;
   }
  }
  else
  {
   local_state = FAILARE;
  }
  break;

 case PORTB:
  ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_LCKR |= (1<<copy_u8pin);

  ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_LCKR |= (1<<16);
  ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_LCKR &= ~(1<<16);
  ((GPIO_REG_DEF_t*)0x40010C00)->GPIO_LCKR |= (1<<16);

  pinState = ((((GPIO_REG_DEF_t*)0x40010C00)->GPIO_LCKR >> (16))&1);
  if (pinState == 0)
  {
   pinState = ((((GPIO_REG_DEF_t*)0x40010C00)->GPIO_LCKR >> (16))&1);
   if (pinState == 1)
   {
    local_state = SUCCESS;
   }
   else
   {
    local_state = FAILARE;
   }
  }
  else
  {
   local_state = FAILARE;
  }
  break;

 case PORTC:
  ((GPIO_REG_DEF_t*)0x40011000)->GPIO_LCKR |= (1<<copy_u8pin);

  ((GPIO_REG_DEF_t*)0x40011000)->GPIO_LCKR |= (1<<16);
  ((GPIO_REG_DEF_t*)0x40011000)->GPIO_LCKR &= ~(1<<16);
  ((GPIO_REG_DEF_t*)0x40011000)->GPIO_LCKR |= (1<<16);

  pinState = ((((GPIO_REG_DEF_t*)0x40011000)->GPIO_LCKR >> (16))&1);
  if (pinState == 0)
  {
   pinState = ((((GPIO_REG_DEF_t*)0x40011000)->GPIO_LCKR >> (16))&1);
   if (pinState == 1)
   {
    local_state = SUCCESS;
   }
   else
   {
    local_state = FAILARE;
   }
  }
  else
  {
   local_state = FAILARE;
  }
  break;

 default:
  local_state = OUT_OF_RANG_ERR;
  break;
 }

  return local_state;
}
