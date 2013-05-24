#include "pwm.h"

void TIM_Config(void);

TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure_PWM;
TIM_OCInitTypeDef  TIM_OCInitStructure_PWM;
uint16_t TimerPeriod = 0;

void set_duty_cycle ( float duty_cycle )
{
	uint16_t PWM_Pulse = (uint16_t) (( (100.0 - duty_cycle) * (TimerPeriod - 1)) / 100.0);
	TIM_OC1Init(TIM1, &TIM_OCInitStructure_PWM);
	TIM_OCInitStructure_PWM.TIM_Pulse = PWM_Pulse;	
}

void init_pwm (uint16_t freq ) 
{
	uint16_t Channel1Pulse;
	
	TIM_Config();

	/* Compute the value to be set in ARR regiter to generate signal frequency at 40 Khz */
  TimerPeriod = (SystemCoreClock / freq ) - 1;
  /* Compute CCR1 value to generate a duty cycle at 0% for channel 1 */
  Channel1Pulse = (uint16_t) ( ( 100.0) * (TimerPeriod - 1.0) / 100.0);

  /* TIM1 clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1 , ENABLE);
  
  /* Time Base configuration */
  TIM_TimeBaseStructure_PWM.TIM_Prescaler = 0;
  TIM_TimeBaseStructure_PWM.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure_PWM.TIM_Period = TimerPeriod;
  TIM_TimeBaseStructure_PWM.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure_PWM.TIM_RepetitionCounter = 0;

  TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure_PWM);

  /* Channel 1 Configuration in PWM mode */
  TIM_OCInitStructure_PWM.TIM_OCMode = TIM_OCMode_PWM1;
  TIM_OCInitStructure_PWM.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure_PWM.TIM_OutputNState = TIM_OutputNState_Enable;
  TIM_OCInitStructure_PWM.TIM_OCPolarity = TIM_OCPolarity_Low;
  TIM_OCInitStructure_PWM.TIM_OCNPolarity = TIM_OCNPolarity_High;
  TIM_OCInitStructure_PWM.TIM_OCIdleState = TIM_OCIdleState_Set;
  TIM_OCInitStructure_PWM.TIM_OCNIdleState = TIM_OCIdleState_Reset;
  TIM_OCInitStructure_PWM.TIM_Pulse = Channel1Pulse;
  TIM_OC1Init(TIM1, &TIM_OCInitStructure_PWM);

  /* TIM1 counter enable */
  TIM_Cmd(TIM1, ENABLE);

  /* TIM1 Main Output Enable */
  TIM_CtrlPWMOutputs(TIM1, ENABLE);
  
}

__task void pwm_out (void) {
	float mppt_duty_cycle = 20;
	
	init_pwm(40000);
	
	while(1)
	{
		mppt_duty_cycle += 0.1;
		if (mppt_duty_cycle > 40)
			mppt_duty_cycle = 20;
				
		set_duty_cycle(mppt_duty_cycle);

		//Wait 200ms
		os_dly_wait(20);
	}
}

/**
  * @brief  Configure the TIM1 Pins.
  * @param  None
  * @retval None
  */
void TIM_Config(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;

  /* GPIOA Clocks enable */
  RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOA, ENABLE);
  
  /* GPIOA Configuration: Channel 1N as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7 ;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP ;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
  
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource7, GPIO_AF_2);
	
	/* GPIOC Periph clock enable */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOC, ENABLE);

  /* Configure PC7 in output pushpull mode */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_7;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOC, &GPIO_InitStructure);

}

