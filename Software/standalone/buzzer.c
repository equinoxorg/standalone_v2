#include "buzzer.h"

void delay (int a)
{
	volatile int i,j;

	for (i=0; i < a; i++)
		j++;	
}

void buzzer_init (void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	/* GPIOA Clocks enable */
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOA, ENABLE);
  
  /* GPIOA Configuration*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	
	GPIO_ResetBits(GPIOA, GPIO_Pin_8 );
	
}

void buzz(int cycles)
{
	int i;
	
	for (i=0; i<cycles*200; i++)
	{
		GPIO_SetBits(GPIOA, GPIO_Pin_8 );
		delay(2000);
		GPIO_ResetBits(GPIOA, GPIO_Pin_8 );
		delay(2000);
	}
}
