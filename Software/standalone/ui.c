#include "ui.h"
#include "lcd_hd44780.h"

//Preprocessor
#define KEY_NONE 	0xFF
#define KEY_TICK 	0xEF
#define KEY_CROSS	0xDF

//Private Functions
void keypad_init (void);
uint8_t keypad_get_key (void);
void pwr_sw_init (void);

//Private variables

//Public Variables
OS_TID ui_t;
char pwr_on = 1;

/**
  * @brief  Task which handles all UI including keypad, LCD and all user power outputs.
	* 				Responds to events caused by other tasks and ISRs
  * @param  None
  * @retval Should never exit
  */
__task void ui (void)
{
	uint16_t event_flag = 0;
	uint8_t key;
	
	keypad_init();
	
	lcd_init();
	lcd_backlight(1);
	
	pwr_sw_init();
	
	lcd_write_string("  e.quinox      ");
	lcd_goto_XY(0,1);
	lcd_write_string("     izuba.box  ");
	
	//2 second loading screen
	os_dly_wait(200);
	
	lcd_clear();
	
	
		
	while(1)
	{
		//Wait for a task event or timeout after 5 seconds
		if ( os_evt_wait_or(UI_PWR_SW | UI_EVT_USB_OC | UI_EVT_KEYPAD_1 | UI_EVT_KEYPAD_2 | UI_EVT_KEYPAD_3, 500) == OS_R_EVT )
		{
			//Find which event 
			event_flag = os_evt_get();		
			
			if ( event_flag & UI_PWR_SW )
			{
				if (pwr_on)
				{
					//Turn off all outputs and UI devices
					//Wait only for UI_PWR_SW tasks
					lcd_backlight(0);
					pwr_on = 0;
				}
				else
				{
					lcd_backlight(1);
					//Turn on box
					//Re-init all LCD
					pwr_on = 1;
				}
			}
			
			if ( event_flag & UI_EVT_USB_OC )
			{
				lcd_clear();
				lcd_goto_XY(0,0);
				lcd_write_string("       USB      ");
				lcd_goto_XY(0,1);
				lcd_write_string("      error!    ");
				//2s wait
				os_dly_wait(200);
				lcd_clear();
			}
		
			if ( event_flag & (UI_EVT_KEYPAD_1 | UI_EVT_KEYPAD_2 | UI_EVT_KEYPAD_3) )
			{
				//Debounce time
				os_dly_wait(2);
				
				//Read which key is pressed	
				key = keypad_get_key();			
				
				switch (key)
				{
					case KEY_NONE:
						//No Action
						break;
					//Special Key Cases
					case KEY_TICK:
						printf("./");
						lcd_goto_XY(0,1);
						break;
					case KEY_CROSS:
						printf("X");
						lcd_clear();
						break;
					default:
						//Print the key number
						printf("%i", key);
						lcd_write_int(key);					
				}
				
				//Reset backlight timer
			}
			
			//clear event flags
			os_evt_clr(event_flag, ui_t);
			
		}
		//else
				//printf("UI task timeout\n");
	}
}

void pwr_sw_init (void)
{
	EXTI_InitTypeDef   EXTI_InitStructure;
  NVIC_InitTypeDef   NVIC_InitStructure;
	
	//Enable PA0 as WKUP Pin, this will Wake up Chip from Standby Mode on rising edge
	//Configures pin as input with Pull-down resistor
	PWR_WakeUpPinCmd(PWR_WakeUpPin_1, ENABLE);
	
	//Enable interrupt on PA0 Pin
	// Enable SYSCFG clock 
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
  
  // Connect EXTI0 Line to PA0 pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource0);

  // Configure EXTI0 line 
  EXTI_InitStructure.EXTI_Line = EXTI_Line0;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  // Enable and set EXTI4_15 Interrupt 
  NVIC_InitStructure.NVIC_IRQChannel = EXTI0_1_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPriority = 0x00;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
	
}


/**
  * @brief  Checks which key on the keypad is curently pressed
  * @param  None
  * @retval 8 bit value represing key. For normal numbers it returns 
	*					that number, special keys return a pre-processed value
  */
uint8_t keypad_get_key (void)
{
	uint8_t return_val = KEY_NONE;
	
	//Should use line parameter from interrupt
	
	//Set all output pins
	GPIO_SetBits(GPIOA, GPIO_Pin_15);
	GPIO_SetBits(GPIOB, ( GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 ));
	
	//Cycle pins
	GPIO_ResetBits(GPIOA, GPIO_Pin_15);

	if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
		//Key 1
		return_val = 1;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
		//Key 2
		return_val = 2;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
		//Key 3
		return_val = 3;
	
	GPIO_SetBits(GPIOA, GPIO_Pin_15);


	
	GPIO_ResetBits(GPIOB, GPIO_Pin_4);

	if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
		//Key 4
		return_val = 4;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
		//Key 5
		return_val = 5;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
		//Key 6
		return_val = 6;
	
	GPIO_SetBits(GPIOB, GPIO_Pin_4);

	
	GPIO_ResetBits(GPIOB, GPIO_Pin_5);
	
	if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
		//Key 7
		return_val = 7;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
		//Key 8
		return_val = 8;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
		//Key 9
		return_val = 9;
	
	GPIO_SetBits(GPIOB, GPIO_Pin_5);
		
	GPIO_ResetBits(GPIOB, GPIO_Pin_6);
	
	if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9))
		//Key X
		return_val = KEY_CROSS;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8))
		//Key 0
		return_val = 0;
	else if (!GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_7))
		//Key ./
		return_val = KEY_TICK;
	
	GPIO_SetBits(GPIOB, GPIO_Pin_6);
	
	//Clear all output pins
	GPIO_ResetBits(GPIOA, GPIO_Pin_15);
	GPIO_ResetBits(GPIOB, ( GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 ));
	
	os_dly_wait(10);
		
	return return_val;
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
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource8);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource9);
  // Configure EXTI7 line 
	EXTI_StructInit(&EXTI_InitStructure);
  EXTI_InitStructure.EXTI_Line = (EXTI_Line7 | EXTI_Line8 | EXTI_Line9);
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);
/*
	// Connect EXTI8 Line to PB8 pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource8);

  // Configure EXTI8 line 
	EXTI_StructInit(&EXTI_InitStructure);
  EXTI_InitStructure.EXTI_Line = EXTI_Line8;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);
	
	// Connect EXTI9 Line to PB9 pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource9);

  // Configure EXTI9 line 
	EXTI_StructInit(&EXTI_InitStructure);
  EXTI_InitStructure.EXTI_Line = EXTI_Line9;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);
*/
  // Enable and set EXTI4_15 Interrupt 
  NVIC_InitStructure.NVIC_IRQChannel = EXTI4_15_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPriority = 0x00;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
	
}
