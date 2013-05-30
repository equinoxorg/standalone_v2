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

void EXTI0_1_IRQHandler(void)
{
	if (EXTI_GetITStatus(EXTI_Line0) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//Do Something about it
		
		//Debouncing
		delay(50000);
		while(GPIOA->IDR & GPIO_IDR_0){}
		EXTI->PR |= EXTI_PR_PR0 ;
	}
}

void EXTI4_15_IRQHandler(void)
{
	if (EXTI_GetITStatus(EXTI_Line5) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//USB_FLG_1 Error!!
		
		//Disable USB_EN_1
		GPIO_ResetBits(GPIOF , GPIO_Pin_7 );
		
		//Clear the EXTI line 5 pending bit
    EXTI_ClearITPendingBit(EXTI_Line5);
	}
	
	if (EXTI_GetITStatus(EXTI_Line6) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//USB_FLG_2 Error!!
		
		//Disable USB_EN_2
		GPIO_ResetBits(GPIOF , GPIO_Pin_6 );
		
		//Clear the EXTI line 5 pending bit
    EXTI_ClearITPendingBit(EXTI_Line6);
	}
	/*
	if (EXTI_GetITStatus(EXTI_Line7) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//Do Something
		
		//Clear the EXTI line 7 pending bit
    EXTI_ClearITPendingBit(EXTI_Line7);
	}
	
	if (EXTI_GetITStatus(EXTI_Line8) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//Do Something
		
		//Clear the EXTI line 8 pending bit
    EXTI_ClearITPendingBit(EXTI_Line8);
	}
	
	if (EXTI_GetITStatus(EXTI_Line9) != RESET) {
		//Check Which Pin Caused Interrupt
		
		//Do Something
		
		//Clear the EXTI line 9 pending bit
    EXTI_ClearITPendingBit(EXTI_Line9);
	}
	*/
}

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
