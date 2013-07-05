#include "ui.h"
#include "lcd_hd44780.h"
#include "interrupted_charging.h"
#include "payment_control.h"

#include "adc.h" //temp, SOC values should be received through CC task

//Preprocessor
#define KEY_NONE 	0xFF
#define KEY_TICK 	0xEF
#define KEY_CROSS	0xDF

//State Machine
#define STATE_NORM 					0
#define STATE_AWAIT_PAYMENT	1
#define STATE_LVDC					2
#define STATE_OFF						3


//Private Functions
void keypad_init (void);
uint8_t keypad_get_key (void);
void pwr_sw_init (void);
char *utoa_b(char *, uint64_t, int, uint8_t);
void lcd_splash_screen (int);
void reset_display (void);
void reset_outputs (void);

//Private variables

//Public Variables
OS_TID ui_t;
int i;
char str [8];
char keypad_result_str [10];
char valid_payment = 0;

int ui_state = STATE_AWAIT_PAYMENT;


U64 ui_stk[UI_STK_SIZE];

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
	int i;
	uint8_t digit_count = 0;
	uint64_t entry_code = 0;
	
	keypad_init();
	
	lcd_init();
	lcd_backlight(1);
	
	buzzer_init();
	
	pwr_sw_init();
	
	usb_outputs_init();
	dc_outputs_init();

	
	lcd_clear();
	lcd_write_string("    e.quinox    ");
	lcd_goto_XY(0,1);
	lcd_write_string("    izuba.box   ");
	
	
	//2 second timeout
	if( os_evt_get() == UI_PAYMENT_VALID )
	{
		ui_state = STATE_NORM;
		valid_payment = 1;
		os_evt_clr(UI_PAYMENT_VALID, ui_t);
		os_dly_wait(200);
	}
	else
	{
		if ( os_evt_wait_or(UI_PAYMENT_VALID, 200) == OS_R_EVT )
		{
			//Find which event 
			ui_state = STATE_NORM;
			valid_payment = 1;
			os_evt_clr(UI_PAYMENT_VALID, ui_t);
			os_dly_wait(200);
		}
	}
	
	reset_display();
	reset_outputs();
	
	while(1)
	{
		//Wait for any task event or timeout after 1 second
		if ( os_evt_wait_or(0xFFFF, 100) == OS_R_EVT )
		{
			//Find which event 
			event_flag = os_evt_get();		
			
			if ( event_flag & UI_LVDC )
			{
				if ( (ui_state != STATE_LVDC) && (ui_state != STATE_OFF) )
				{
					ui_state = UI_LVDC;
					
					//Turn off outputs
					reset_outputs();
					
					lcd_clear();
					lcd_goto_XY(0,0);
					lcd_write_string("    Battery     ");
					lcd_goto_XY(0,1);
					lcd_write_string("     empty!     ");
					
					//Delay and Buzz
					//20 Seconds
					for ( i = 0; i < 5; i++)
					{
						buzz(1);
						//4 second wait
						os_dly_wait(400);
					}
					
					//Turn off Screen
					lcd_power(0);
				}
				
			}
			
			if ( event_flag & UI_PWR_SW )
			{
				if ( ui_state != STATE_OFF )
				{
					//Turn off all outputs and UI devices
					//Wait only for UI_PWR_SW tasks
					lcd_power(0);
								
					ui_state = STATE_OFF;
					reset_outputs();
				}
				else
				{
					
					//Re-init LCD
					lcd_power(1);
					
					lcd_splash_screen(2);
					
					if (valid_payment)
						ui_state = STATE_NORM;
					else
						ui_state = STATE_AWAIT_PAYMENT;
					
					reset_outputs();
					reset_display();
				}
				
				//1 second delay
				os_dly_wait(100);
				EXTI_ClearITPendingBit(EXTI_Line0);
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
				reset_display();
			}
		
			if ( event_flag & (UI_EVT_KEYPAD_1 | UI_EVT_KEYPAD_2 | UI_EVT_KEYPAD_3) )
			{
				if ( (ui_state == STATE_AWAIT_PAYMENT) || (ui_state == STATE_NORM) )
				{
					//Read which key is pressed
					i = 0;
					do
					{
						key = keypad_get_key();		
						i++;
						os_dly_wait(1);
						if ( i > 20)
							break;
					} while (key == KEY_NONE);
					
					if (key != KEY_NONE)
					{					
						lcd_backlight(1);
						buzz(1);
					}
					
					if (ui_state == STATE_AWAIT_PAYMENT)
					{
						//Build number and display on LCD
						
						//If 10 digits or tick then call payment control function
						if (key == KEY_CROSS) {
							//'X' Pressed
							//LCDWriteString("x");
							digit_count = 0;
							entry_code = 0;
							lcd_write_string_XY(6, 0, "__________");
							lcd_goto_XY(6, 0);
						} else if (key == KEY_TICK) {
							//Tick Pressed
							//LCDWriteString("./");
						} else if (key == KEY_NONE) {
							//Tick Pressed
							//LCDWriteString("./");
						} else {
							//Add the keypad to the entry code
							entry_code = (entry_code * 10) + key;
							
							//Make the 
							keypad_result_str[0] = '\0';
							utoa_b(keypad_result_str, entry_code, 10, digit_count);
							lcd_write_string_XY(6, 0, keypad_result_str);
							lcd_goto_XY((7 + digit_count), 0);

							if (digit_count++ == 9) {
								os_dly_wait(50);
								
								//Send code to payment control task
								// but send (uint32_t)entry_code
								if ( check_unlock_code((uint32_t)entry_code) )
								{
									printf("INFO: Valid Unlock code: %s\n", keypad_result_str);
									ui_state = STATE_NORM;
									reset_display();
									reset_outputs();
									valid_payment = 1;
								}
								else
								{							
									printf("INFO: Invalid Unlock code: %s\n", keypad_result_str);
									entry_code = 0;
									digit_count = 0;
									keypad_result_str[0] = '\0';
									reset_display();
									reset_outputs();
								}
							}
						}
					}
					else
					{											
						switch (key)
						{
							case KEY_NONE:
								//No Action
								break;
							//Special Key Cases
							case KEY_TICK:
								printf("./");
								break;
							case KEY_CROSS:
								printf("X");
								break;
							default:
								//Print the key number
								printf("%i", key);			
						}
					}
					
					//Wait for release of key (with time-out)
					i = 0;
					while( keypad_get_key() != KEY_NONE )
					{
						i++;
						os_dly_wait(1);
						if ( i > 20)
							break;
					}			
				}					
			}
			
			//clear event flags
			os_evt_clr(event_flag, ui_t);
			
		}
		
		// Debugging Info on LCD
// 		sprintf(str, "P=%.2f", get_adc_voltage(ADC_SOL_V)*get_adc_voltage(ADC_SOL_I));
// 		lcd_goto_XY(0,0);
// 		lcd_write_string(str);
// 		
// 		str[0] = NULL;
// 		
// 		sprintf(str, "T=%.2f", get_adc_voltage(ADC_TEMP));
// 		lcd_goto_XY(8,0);
// 		lcd_write_string(str);
// 		
// 		str[0] = NULL;
// 		
// 		sprintf(str, "V=%.2f", get_adc_voltage(ADC_BATT_V));
// 		lcd_goto_XY(0,1);
// 		lcd_write_string(str);
// 		
// 		str[0] = NULL;
// 		
// 		sprintf(str, "I=%.2f", get_adc_voltage(ADC_BATT_I));
// 		lcd_goto_XY(8,1);
// 		lcd_write_string(str);
// 		
// 		str[0] = NULL;

		//Update battery levels, days remaining and if normal state then time/date

		if ( (ui_state == STATE_NORM) || (ui_state == STATE_AWAIT_PAYMENT) )
		{
			lcd_batt_level( get_soc() );
			lcd_charging( get_charging_rate() );
		}
		
		if (ui_state == STATE_NORM)
		{
			//Update remaining days
		}

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

  // Enable and set EXTI0_1_IRQn Interrupt 
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
  
  // Connect External Line x to PBx pin 
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource7);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource8);
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB, EXTI_PinSource9);
  
	// Configure External Interrupts on Lines
	EXTI_StructInit(&EXTI_InitStructure);
  EXTI_InitStructure.EXTI_Line = (EXTI_Line7 | EXTI_Line8 | EXTI_Line9);
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

//------------------------------------------------------------------------------
char *utoa_b(char *buf, uint64_t val, int base, uint8_t pad) {
    uint64_t v;
    char c;
    int i = 0;

    v = val;
    do {
        v /= base;
        buf++;
    } while (i++ != pad);
    *buf-- = 0;
    i = 0;
    do {
        c = val % base;
        val /= base;
        if (c >= 10)
            c += 'A' - '0' - 10;
        c += '0';
        *buf-- = c;
    } while (i++ != pad);
    return buf;
}

void lcd_splash_screen (int seconds)
{
	lcd_write_string_XY(0, 0, "    e.quinox    ");
	lcd_write_string_XY(0, 1, "    izuba.box   ");
	
	os_dly_wait(100*seconds);
	
	lcd_clear();
}

void reset_display (void)
{
	switch (ui_state)
	{
		case STATE_NORM:
			lcd_write_string_XY(0, 0, "    e.quinox    ");
			lcd_write_string_XY(0, 1, "          7 days");
			lcd_batt_level( get_soc() );
			break;
		case STATE_AWAIT_PAYMENT:
			lcd_write_string_XY(0, 0, "Enter:__________");
			lcd_write_string_XY(0, 1, "          Locked");
			lcd_write_string_XY(6, 0, keypad_result_str);
			lcd_batt_level( get_soc() );
			break;
		case STATE_LVDC:
			lcd_write_string_XY(0, 0, " Battery Empty  ");
			lcd_write_string_XY(0, 1, "  Turning Off   ");
			break;
		case STATE_OFF:
			break;
	}
}

void reset_outputs (void)
{
	if ( ui_state == STATE_NORM )
	{
		//Turn on box
		USB1_ENABLE();
		USB2_ENABLE();
		DC_ENABLE();
	}
	else
	{
		//Turn on box
		USB1_DISABLE();
		USB2_DISABLE();
		DC_DISABLE();
	}	
	
}

