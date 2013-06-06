/**
  ******************************************************************************
  * @file    TIM_PWM_Output/stm32f0xx_it.c 
  * @author  MCD Application Team
  * @version V1.0.0
  * @date    23-March-2012
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and 
  *          peripherals interrupt service routine.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_it.h"
#include <RTL.h>
#include "ui.h"
#include "adc.h"

/** @addtogroup STM32F0_Discovery_Peripheral_Examples
  * @{
  */

/** @addtogroup TIM_PWM_Output
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M0 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/******************************************************************************/
/*                 STM32F0xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f0xx.s).                                               */
/******************************************************************************/

/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
/*void PPP_IRQHandler(void)
{
}*/


void ADC1_COMP_IRQHandler(void)
{
	static int i = 0;
// 	if(ADC_GetITStatus(ADC1, ADC_IT_AWD) == SET)
// 	{
// 		//Turn off DC output
// 		GPIO_ResetBits(GPIOA ,GPIO_Pin_12 );
// 		
// 		ADC_ClearITPendingBit(ADC1, ADC_IT_AWD);
// 	}
// 	
	if(ADC_GetITStatus(ADC1, ADC_IT_EOSEQ) == SET)
	{
		//Turn off DC output
		adc_temp[i] 	= RegularConvData_Tab[0];
		adc_v_sol[i] 	= RegularConvData_Tab[1];
		adc_i_sol[i] 	= RegularConvData_Tab[2];
		adc_v_batt[i] = RegularConvData_Tab[3];
		adc_i_batt[i] = RegularConvData_Tab[4];
		
		if (++i > NO_SAMPLES)
			i = 0;
		
		ADC_ClearITPendingBit(ADC1, ADC_IT_EOSEQ);
	}
}

void EXTI0_1_IRQHandler(void)
{
	if (EXTI_GetITStatus(EXTI_Line0) != RESET) {
		//Check Which Pin Caused Interrupt
			//Only PA0 configures
		
		//Temp: Use switch as Reset Switch
		//NVIC_SystemReset();
		
		//Send event to ui task
		isr_evt_set (UI_PWR_SW , ui_t);
		
		//Clear the EXTI line 0 pending bit
    EXTI_ClearITPendingBit(EXTI_Line0);
	}
}

void EXTI4_15_IRQHandler(void)
{
	if (EXTI_GetITStatus(EXTI_Line5) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//USB_FLG_1 Error!!
		isr_evt_set(UI_EVT_USB_OC, ui_t);
		
		//Disable USB_EN_1
		USB1_DISABLE();
		
		//Clear the EXTI line 5 pending bit
    EXTI_ClearITPendingBit(EXTI_Line5);
	}
	
	if (EXTI_GetITStatus(EXTI_Line6) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//USB_FLG_2 Error!!
		isr_evt_set(UI_EVT_USB_OC, ui_t);
		
		//Disable USB_EN_2
		USB2_DISABLE();
		
		//Clear the EXTI line 5 pending bit
    EXTI_ClearITPendingBit(EXTI_Line6);
	}
	
	if (EXTI_GetITStatus(EXTI_Line7) != RESET) {
		//Check Which Pin Caused Interrupt
		//Keypad line 3 event, buttons 3, 6, 8, ./
		
		//Send event to ui task
		isr_evt_set (UI_EVT_KEYPAD_3 , ui_t);
		
		//Clear the EXTI line 7 pending bit
    EXTI_ClearITPendingBit(EXTI_Line7);
	}
	
	if (EXTI_GetITStatus(EXTI_Line8) != RESET) {
		//Check Which Pin Caused Interrupt
		//Keypad line 2 event, buttons 2, 5, 8, 0
		
		//Send event to ui task
		isr_evt_set (UI_EVT_KEYPAD_2 , ui_t);
		
		//Clear the EXTI line 8 pending bit
    EXTI_ClearITPendingBit(EXTI_Line8);
	}
	
	if (EXTI_GetITStatus(EXTI_Line9) != RESET) {
		//Check Which Pin Caused Interrupt
		//Keypad line 1 event, buttons 1, 4, 7, X
		
		//Send event to ui task
		isr_evt_set (UI_EVT_KEYPAD_1 , ui_t);
		
		//Clear the EXTI line 9 pending bit
    EXTI_ClearITPendingBit(EXTI_Line9);
	}
	
}

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
