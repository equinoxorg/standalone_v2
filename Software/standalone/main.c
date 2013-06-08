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
#include "stm32f0xx.h"
#include "serial.h"
#include "adc.h"
#include "pwm.h"
#include "perturb_and_observe.h"
#include "interrupted_charging.h"
#include "ui.h"
#include "payment_control.h"


/* Private variables ---------------------------------------------------------*/


/* Private function prototypes -----------------------------------------------*/


__task void init (void) 
{	
	//Maximum of four running tasks, so can only launch three tasks here, any more will be ignored.

	//Start the interrupted charging algoritm
	printf("Starting Interrupted Charging Task \n");
	interrupted_charging_t = os_tsk_create_user ( interrupted_charging, 0, &interrupted_charging_stk , sizeof(interrupted_charging_stk) );
	if (!interrupted_charging_t)
		printf("ERROR: Interrupted Charging Task Failed to launch \n");
	
	printf("Starting UI task \n");
	ui_t = os_tsk_create_user (ui, 2, &ui_stk, sizeof(ui_stk) );
	if (!ui_t)
		printf("ERROR: UI Task Failed to launch \n");
	
	printf("Starting Payment Control task \n");
	payment_control_t = os_tsk_create_user (payment_control, 2, &payment_control_stk, sizeof(payment_control_stk) );
	if (!payment_control_t)
		printf("ERROR: Payment Control Task Failed to launch \n");
	
//	//Can be used to test ADC readings
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
			
	os_sys_init(init); 
	
	while(1);
	
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

