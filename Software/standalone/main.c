/**
  ******************************************************************************
  * @file    standalone/main.c 
  * @author  Ashley Grealish
  * @version V1.0.0
  * @date    31-Jan-2013
  * @brief   Main program body
  ******************************************************************************
  * @attention
  ******************************************************************************
	*
	* Enviroment Set Up:
	* Follow programming instructions here to upgrade STM32F0 Board Firmware
	* http://dduino.blogspot.co.uk/2012/06/stm32f0-discovery-board.html
	* This improves stability and fixes the many crashes.
  */
	
#define USE_FULL_ASSERT

/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include <RTL.h>
#include <time.h>
#include "stm32f0xx.h"
#include "serial.h"
#include "adc.h"
#include "pwm.h"
#include "perturb_and_observe.h"
#include "interrupted_charging.h"
#include "ui.h"

/* Private variables ---------------------------------------------------------*/
OS_TID pwm_out_t, adc_test_t, perturb_and_observe_t, lcd_t, interrupted_charging_t;

/* Private function prototypes -----------------------------------------------*/
void setup_rtc(void);
void print_time_date ( void );
struct tm get_time_struct (void);


void delay (int a)
{
	volatile int i,j;

	for (i=0; i < a; i++)
		j++;	
}




__task void init (void) 
{	
	//Maximum of four running tasks, so can only launch three tasks here, any more will be ignored.

	
	//Start the P&O charge control algo
	//printf("Starting Peturb and Observe Task \n");
	//perturb_and_observe_t = os_tsk_create( perturb_and_observe, 0);
	
	//Start the interrupted charging algoritm
	printf("Starting Interrupted Charging Task \n");
	//interrupted_charging_t = os_tsk_create( interrupted_charging, 0);
	interrupted_charging_t = os_tsk_create_user ( interrupted_charging, 0, &interrupted_charging_stk , sizeof(interrupted_charging_stk) );
	if (!interrupted_charging_t)
		printf("ERROR: Interrupted Charging Task Failed to launch \n");
	
	printf("Starting UI task \n");
	//ui_t = os_tsk_create(ui, 2);
	ui_t = os_tsk_create_user (ui, 2, &ui_stk, sizeof(ui_stk) );
	if (!ui_t)
		printf("ERROR: UI Task Failed to launch \n");
	
	//printf("Starting pwm_out task \n");
	//pwm_out_t = os_tsk_create( pwm_out, 0);
	
// 	printf("Starting adc_in task \n");
// 	adc_test_t = os_tsk_create( adc_test, 0);
// 	if (!adc_test_t)
// 		printf("ERROR: ADC Task Failed to launch \n");
// 			
	os_tsk_delete_self ();
}


/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
int main(void)
{

	Serial.begin(115200); //Open com on uart1 0-1 pins
	
	//Set up RTC
	setup_rtc();
			
	os_sys_init(init); 

	while(1)
	{
		//print_time_date();
	}
}



void setup_rtc (void) 
{
	// Example Taken from firmware examples and:
	// http://www.st.com/st-web-ui/static/active/en/resource/technical/document/application_note/DM00025071.pdf
	
	RTC_InitTypeDef   RTC_InitStructure;
	
	// Turn on PWR clock
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR, ENABLE);

	// Allow access to RTC *
  PWR_BackupAccessCmd(ENABLE);
  
  // The RTC Clock may varies due to LSI frequency dispersion.
  // Enable the LSI OSC 
  RCC_LSICmd(ENABLE);
	
  // Select the RTC Clock Source
  RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);
  
  // Enable the RTC Clock 
  RCC_RTCCLKCmd(ENABLE);
  
  // Wait for RTC APB registers synchronisation 
  RTC_WaitForSynchro();
  
  RTC_InitStructure.RTC_HourFormat = RTC_HourFormat_24;
  RTC_InitStructure.RTC_AsynchPrediv = 0x7F;
  RTC_InitStructure.RTC_SynchPrediv = 0x0138;
  
  RTC_Init(&RTC_InitStructure);
	
	print_time_date();
}

void print_time_date ( void )
{
	RTC_TimeTypeDef   RTC_TimeStructure;
	RTC_DateTypeDef		RTC_DateStructure;
	
	RTC_TimeStructInit(&RTC_TimeStructure);
	RTC_DateStructInit(&RTC_DateStructure);
	
	RTC_GetTime(RTC_Format_BIN, &RTC_TimeStructure);
	RTC_GetDate(RTC_Format_BIN, &RTC_DateStructure);
	
	printf("RTC Date: %i/%i/%i \n", RTC_DateStructure.RTC_Date, RTC_DateStructure.RTC_Month,  (RTC_DateStructure.RTC_Year+2000) );
	printf("RTC Time: %i:%i:%i \n", RTC_TimeStructure.RTC_Hours, RTC_TimeStructure.RTC_Minutes, RTC_TimeStructure.RTC_Seconds);
}

struct tm get_time_struct (void)
{
	struct tm result;	
	RTC_TimeTypeDef   RTC_TimeStructure;
	RTC_DateTypeDef		RTC_DateStructure;
	
	RTC_TimeStructInit(&RTC_TimeStructure);
	RTC_DateStructInit(&RTC_DateStructure);
	
	RTC_GetTime(RTC_Format_BIN, &RTC_TimeStructure);
	RTC_GetDate(RTC_Format_BIN, &RTC_DateStructure);
	
	result.tm_sec = RTC_TimeStructure.RTC_Seconds;
	result.tm_min = RTC_TimeStructure.RTC_Minutes;
	result.tm_hour = RTC_TimeStructure.RTC_Hours;
	
	result.tm_mday = RTC_DateStructure.RTC_Date;
	result.tm_mon = RTC_DateStructure.RTC_Month;
	result.tm_year = RTC_DateStructure.RTC_Year - 100;

	mktime(&result);
		
	return result;
}




#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
	//
	printf("Wrong parameters value: file %s on line %d\n", file, line);

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

