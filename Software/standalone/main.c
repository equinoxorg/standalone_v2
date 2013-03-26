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
  */
	
//#define USE_FULL_ASSERT

/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include <RTL.h>
#include "stm32f0xx.h"
#include "serial.h"
#include "adc.h"
#include "pwm.h"

/* Private variables ---------------------------------------------------------*/


/* Private function prototypes -----------------------------------------------*/
__task void charge_control(void);
extern __task void perturb_and_observe (void);

OS_TID charge_control_t, pwm_out_t, adc_in_t, perturb_and_observe_t;

/* Task to set up charge control */
__task void charge_control (void)
{
	// Init required hardware 
	init_pwm(40000);
	
	//Start the P&O charge control algo
	perturb_and_observe_t = os_tsk_create( perturb_and_observe, 0);
	
	//Exit but leave P&O running
	os_tsk_delete_self();
}

__task void init (void) 
{	
	printf("Starting charge controller task \n\r" );
	charge_control_t = os_tsk_create( charge_control, 0);
	
	//printf("Starting pwm_out task \n\r");
	//pwm_out_t = os_tsk_create( pwm_out, 0);
	
	//printf("Starting adc_in task \n\r");
	//adc_in_t = os_tsk_create( adc_in, 0);
		
	os_tsk_delete_self ();
}


/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
int main(void)
{
	Serial.begin(115200); //Open com on uart2 0-1 pins
		
	os_sys_init (init);   
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
	printf("Wrong parameters value: file %s on line %d\r\n", file, line);

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

