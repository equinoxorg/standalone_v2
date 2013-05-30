#include "ui.h"

//Private Functions
void keypad_init (void);

//Private variables

//Public Variables
OS_TID ui_t;

/**
  * @brief  Task which handles all UI including keypad, LCD and all user power outputs.
	* 				Responds to events caused by other tasks and ISRs
  * @param  None
  * @retval None
  */
__task void ui (void)
{
	uint16_t event_flag = 0;
	
	keypad_init();
		
	while(1)
	{
		//Wait for a task event or timeout after 5 seconds
		if ( os_evt_wait_or(UI_EVT_KEYPAD_1 | UI_EVT_KEYPAD_2 | UI_EVT_KEYPAD_3, 500) == OS_R_EVT )
			//Find which event 
			event_flag = os_evt_get();
			//Clear event flags??
		else
			printf("UI task timeout\n");
		
		//If keypad event reset Backlight timeout
		
		//Set all output pins
		GPIO_SetBits(GPIOA, GPIO_Pin_15);
		GPIO_SetBits(GPIOB, ( GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 ));
		
		//Cycle pins
		GPIO_ResetBits(GPIOA, GPIO_Pin_15);
		os_dly_wait(5);

		if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
			//Key 1
			printf("1");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
			//Key 2
			printf("2");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
			//Key 3
			printf("3");
		
		GPIO_SetBits(GPIOA, GPIO_Pin_15);
		os_dly_wait(5);


		
		GPIO_ResetBits(GPIOB, GPIO_Pin_4);
		os_dly_wait(5);
		
		if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
			//Key 4
			printf("4");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
			//Key 5
			printf("5");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
			//Key 6
			printf("6");
		
		GPIO_SetBits(GPIOB, GPIO_Pin_4);
		os_dly_wait(5);
		
		GPIO_ResetBits(GPIOB, GPIO_Pin_5);
		os_dly_wait(5);
		
		if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
			//Key 7
			printf("7");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
			//Key 8
			printf("8");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
			//Key 9
			printf("9");
		
		GPIO_SetBits(GPIOB, GPIO_Pin_5);
		os_dly_wait(5);
		
		
		GPIO_ResetBits(GPIOB, GPIO_Pin_6);
		os_dly_wait(5);
		
		if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
			//Key X
			printf("X");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
			//Key 0
			printf("0");
		else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
			//Key ./
			printf("./");
		
		GPIO_SetBits(GPIOB, GPIO_Pin_6);
		os_dly_wait(5);
		
		//Clear all output pins
		GPIO_ResetBits(GPIOA, GPIO_Pin_15);
		GPIO_ResetBits(GPIOB, ( GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 ));
		
	}
}

/**
  * @brief  Initialises the hardware required for the keypad. Also sets up interrupts for keypad events.
  * @param  None
  * @retval None
  */
void keypad_init (void) 
{
	//Output Pins: PA15, PB6, PB5, PB4
		
	EXTI_InitTypeDef   EXTI_InitStructure;
  GPIO_InitTypeDef   GPIO_InitStructure;
  NVIC_InitTypeDef   NVIC_InitStructure;
 
	// GPIOA Clocks enable 
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOA, ENABLE);
  
  // GPIOA Configuration 
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	GPIO_ResetBits(GPIOA, GPIO_Pin_15);
	
	// GPIOB Clocks enable 
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOB, ENABLE);
  
	GPIO_StructInit(&GPIO_InitStructure);
	
  // GPIOB Configuration 
  GPIO_InitStructure.GPIO_Pin = ( GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 );
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOB, &GPIO_InitStructure);
	
	GPIO_ResetBits(GPIOB, ( GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 ));
	
	//Input Pins with pull-ups and interrupt: PB7, PB8, PB9
	
	// GPIOB Clocks enable 
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOB, ENABLE);
  
	GPIO_StructInit(&GPIO_InitStructure);
	
  // GPIOB Configuration
  GPIO_InitStructure.GPIO_Pin = (GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(GPIOB, &GPIO_InitStructure);

  // Enable SYSCFG clock 
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
  
  // Connect EXTI7 Line to PB7 pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource7);

  // Configure EXTI7 line 
  EXTI_InitStructure.EXTI_Line = EXTI_Line7;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

	// Connect EXTI8 Line to PB8 pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource8);

  // Configure EXTI8 line 
  EXTI_InitStructure.EXTI_Line = EXTI_Line8;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);
	
	// Connect EXTI9 Line to PB9 pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource9);

  // Configure EXTI9 line 
  EXTI_InitStructure.EXTI_Line = EXTI_Line9;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  // Enable and set EXTI4_15 Interrupt 
  NVIC_InitStructure.NVIC_IRQChannel = EXTI4_15_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPriority = 0x00;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
	
}
