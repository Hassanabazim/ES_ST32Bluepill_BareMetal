#include "STD_TYPES.h"
#include "ERROR_STATE.h"
#include "MRCC_int.h"
#include "MGPIO_int.h"
#include "MSTICK_int.h"
#include "HLED_int.h"
#include<stdio.h>


u32 global_u32var = 5;
u8 local_u8var;
u16 const const_var = 0;

//extern void initialise_monitor_handles(void);
//2. implement the fault handlers

int main(void)
{
	MRCC_enSysClkINIT();
	MRCC_enEnablePeripheralCLK(IOPA);
	HLED_enInit(PORTA, PIN3);
	HLED_enInit(PORTA, PIN1);

	// MSTK_enInit();
	
	/*initialise_monitor_handles();
	
	printf("Exception : MemManage\n");
	printf("Exception : BusFault\n");
	printf("Exception : Hardfault\n");*/

	while (1)
	{
		HLED_enSetON(PORTA, PIN3);
		HLED_enSetON(PORTA, PIN1);

		/*for (u8 i = 0; i < 4 + global_u32var ; i++)
		{
			for (int j = 0; j < 8; j++)
			{
				HLED_enSetON(PORTA, j);
				MSTK_enDelayMS(200);
				HLED_enSetOFF(PORTA, j);
				if (j == 7)
				{
					for (int k = j-1; k >= 0; k--)
					{
						HLED_enSetON(PORTA, k);
						MSTK_enDelayMS(200);
						HLED_enSetOFF(PORTA, k);
					}
				}

			}
		}

		for (u8 k = 0; k < 4; k++)
		{
			for (u8 i = 0; i < 4; i++)
			{
				HLED_enSetON(PORTA, PIN3 - i);
				HLED_enSetON(PORTA, PIN4 + i);
				MSTK_enDelayMS(200);
				if(i == 3)
				{
					for (u8 j = 0; j < 4; j++)
					{
						HLED_enSetOFF(PORTA, PIN7 - j);
						HLED_enSetOFF(PORTA, PIN0 + j);
						MSTK_enDelayMS(200);
					}
				}
			}
		}

		for (u8 i = 0; i<8; i++)
		{
			MGPIO_enSetPortValue(GPIO_CRL_ID, PORTA, HIGH);
			MSTK_enDelayMS(500);
			MGPIO_enSetPortValue(GPIO_CRL_ID, PORTA, LOW);
			MSTK_enDelayMS(500);

		}


*/

	}
}
