/**
  ******************************************************************************
  * @file    standalone/main.c 
  * @author  Ashley Grealish
  * @version V1.0.0
  * @date    31-Jan-2013
  * @brief   Main program body
  ******************************************************************************
  * @attention
	* Based on code examples from ST Micro
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
#include "lcd_hd44780.h"
#include "perturb_and_observe.h"
#include "interrupted_charging.h"

/* Private variables ---------------------------------------------------------*/


/* Private function prototypes -----------------------------------------------*/
void setup_rtc(void);
void print_time_date ( void );
struct tm get_time_struct (void);
void usb_outputs_config (void);
void dc_outputs_config (void);
void EXTI0_Config(void);

OS_TID pwm_out_t, adc_test_t, perturb_and_observe_t, lcd_t, interrupted_charging_t;

void delay (int a)
{
	volatile int i,j;

	for (i=0 ; i < a ; i++)
	{
		j++;
	}

	return;
}

__task void init (void) 
{	
	init_adc();
	
	//Start the P&O charge control algo
	perturb_and_observe_t = os_tsk_create( perturb_and_observe, 0);
	
	//Start the interrupted charging algoritm
	//interrupted_charging_t = os_tsk_create( interrupted_charging, 0);
	
	//printf("Starting lcd task \n");
	//lcd_t = os_tsk_create(lcd, 0);
	
	//printf("Starting pwm_out task \n");
	//pwm_out_t = os_tsk_create( pwm_out, 0);
	
	//printf("Starting adc_in task \n");
	//adc_test_t = os_tsk_create( adc_test, 0);
		
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
			
	usb_outputs_config();
	dc_outputs_config();
	GPIO_SetBits(GPIOF ,(GPIO_Pin_6 | GPIO_Pin_7) );
	GPIO_SetBits(GPIOA ,GPIO_Pin_12 );
	
	
  /* Generate software interrupt: simulate a falling edge applied on EXTI5 line */
	//EXTI_GenerateSWInterrupt(EXTI_Line5);
	
	//os_sys_init (init); 

	while(1)
	{
		//print_time_date();
	}
}


/**
  * @brief  Configure PA0 in interrupt mode
  * @param  None
  * @retval None
  */
void EXTI0_Config(void)
{
  EXTI_InitTypeDef   EXTI_InitStructure;
  GPIO_InitTypeDef   GPIO_InitStructure;
  NVIC_InitTypeDef   NVIC_InitStructure;
  
	// GPIOA Clocks enable 
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOA, ENABLE);
  
  // GPIOA Configuration
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_6;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	//Enable Pull-ups on USB Flag Pins
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP ;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  /* Enable SYSCFG clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);
  
  /* Connect EXTI5 Line to PA5 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource5);

  /* Configure EXTI5 line */
  EXTI_InitStructure.EXTI_Line = EXTI_Line5;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

	/* Connect EXTI6 Line to PA6 pin */
  SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource6);

  /* Configure EXTI6 line */
  EXTI_InitStructure.EXTI_Line = EXTI_Line6;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);

  /* Enable and set EXTI0 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = EXTI4_15_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPriority = 0x00;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}


void usb_outputs_config (void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	//Set up USB Enable Pins
	
	/* GPIOF Clocks enable */
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOF, ENABLE);
  
  /* GPIOF Configuration*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOF, &GPIO_InitStructure);
	
	//Set up USB Error Interrupts
  EXTI0_Config();
}

void dc_outputs_config (void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	/* GPIOF Clocks enable */
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOA, ENABLE);
  
  /* GPIOF Configuration*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
  
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

