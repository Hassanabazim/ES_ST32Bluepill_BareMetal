# 1 "HAL/HLED/HLED_prog.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "HAL/HLED/HLED_prog.c"
# 9 "HAL/HLED/HLED_prog.c"
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
# 10 "HAL/HLED/HLED_prog.c" 2
# 1 "LIB/ERROR_STATE.h" 1
# 12 "LIB/ERROR_STATE.h"
typedef enum {
  OUT_OF_RANG_ERR,
  NULL_PTR_ERR,
  SUCCESS,
  FAILARE
}ErrorState_t;
# 11 "HAL/HLED/HLED_prog.c" 2
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
# 12 "HAL/HLED/HLED_prog.c" 2
# 1 "HAL/HLED/HLED_int.h" 1
# 13 "HAL/HLED/HLED_int.h"
ErrorState_t HLED_enInit(u8 copyu8_LedPort, u8 copyu8_LedPin);
ErrorState_t HLED_enSetON(u8 copyu8_LedPort, u8 copyu8_LedPin);
ErrorState_t HLED_enSetOFF(u8 copyu8_LedPort, u8 copyu8_LedPin);
ErrorState_t HLED_enToggle(u8 copyu8_LedPort, u8 copyu8_LedPin);
# 13 "HAL/HLED/HLED_prog.c" 2
# 1 "HAL/HLED/HLED_priv.h" 1
# 14 "HAL/HLED/HLED_prog.c" 2
# 1 "HAL/HLED/HLED_config.h" 1
# 15 "HAL/HLED/HLED_prog.c" 2


ErrorState_t HLED_enInit(u8 copyu8_LedPort, u8 copyu8_LedPin)
{
 MGPIO_enSetPinDirection(copyu8_LedPort, copyu8_LedPin, OUT_2MHZ_PP);

 return SUCCESS;
}

ErrorState_t HLED_enSetON(u8 copyu8_LedPort, u8 copyu8_LedPin)
{

 MGPIO_enSetPinValue(copyu8_LedPort, copyu8_LedPin, HIGH);







 return SUCCESS;
}

ErrorState_t HLED_enSetOFF(u8 copyu8_LedPort, u8 copyu8_LedPin)
{

 MGPIO_enSetPinValue(copyu8_LedPort, copyu8_LedPin, LOW);







 return SUCCESS;
}

ErrorState_t HLED_enToggle(u8 copyu8_LedPort, u8 copyu8_LedPin)
{
 MGPIO_enTogglePin(copyu8_LedPort, copyu8_LedPin);

 return SUCCESS;
}
