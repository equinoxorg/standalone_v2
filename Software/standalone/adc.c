#include "adc.h"

// TODO: this need to select channel rather than the ADC, there is only 1 ADC
// with 10 channels on the target chip (Discovery board has 16 channels)
float get_adc_voltage ( uint32_t ADC_Channel )
{
	uint16_t ADCConvertedValue = 0;
	float ADCConvertedVoltage = 0;
	
	//Set up reading from the correct Channel, 28 cycle sampling time
	ADC_ChannelConfig(ADC1, ADC_Channel , ADC_SampleTime_28_5Cycles);
	
	//Start the convertions and wait for it to complete
	ADC_StartOfConversion(ADC1);
	while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
	
	// Get ADC converted data 
	ADCConvertedValue = ADC_GetConversionValue(ADC1);
	
	// Compute the voltage 
	ADCConvertedVoltage = (ADCConvertedValue * 3.300) / 0xFFF;

	return ADCConvertedVoltage;
	
}


__task void adc_in (void)
{
	init_adc();
	
	while (1)
	{
		printf("PC0 Voltage %f \n\r", get_adc_voltage(ADC_Channel_10) );
		printf("PC1 Voltage %f \n\r", get_adc_voltage(ADC_Channel_11) );

		//Wait for 1s
		os_dly_wait(100);
	}
}

/**
  * @brief  ADC and TIM configuration
  * @param  None
  * @retval None
  */
void init_adc(void)
{
	ADC_InitTypeDef          ADC_InitStructure;
	GPIO_InitTypeDef         GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure_ADC;
	TIM_OCInitTypeDef        TIM_OCInitStructure_ADC;
		
  /* GPIOC Periph clock enable */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOC, ENABLE);
  
  /* ADC1 and TIM1 Periph clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1 | RCC_APB2Periph_TIM1 , ENABLE);
  
  /* Configure ADC Channel11 PC1 as analog input */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1 ;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
  
	/* Configure ADC Channel10 PC0 as analog input */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 ;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
	
  /* TIM2 Configuration */
  TIM_DeInit(TIM1);
  TIM_TimeBaseStructInit(&TIM_TimeBaseStructure_ADC);
  TIM_OCStructInit(&TIM_OCInitStructure_ADC);  
  /* Time base configuration */
  TIM_TimeBaseStructure_ADC.TIM_Period = 0xFF;
  TIM_TimeBaseStructure_ADC.TIM_Prescaler = 0x0;       
  TIM_TimeBaseStructure_ADC.TIM_ClockDivision = 0x0;    
  TIM_TimeBaseStructure_ADC.TIM_CounterMode = TIM_CounterMode_Up;  
  TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure_ADC);
  
  /* Output Compare PWM Mode configuration */
  TIM_OCInitStructure_ADC.TIM_OCMode = TIM_OCMode_PWM1; /* low edge by default */
  TIM_OCInitStructure_ADC.TIM_OutputState = TIM_OutputState_Enable;           
  TIM_OCInitStructure_ADC.TIM_Pulse = 0x01;
  TIM_OC4Init(TIM1, &TIM_OCInitStructure_ADC);
  
  /* TIM1 enable counter */
  TIM_Cmd(TIM1, ENABLE);
  
  /* Main Output Enable */
  TIM_CtrlPWMOutputs(TIM1, ENABLE);
  
    /* ADCs DeInit */  
  ADC_DeInit(ADC1);
  
  /* Initialize ADC structure */
  ADC_StructInit(&ADC_InitStructure);
  
  /* Configure the ADC1 in continous mode withe a resolutuion equal to 12 bits  */
  ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;
  ADC_InitStructure.ADC_ContinuousConvMode = DISABLE;//ENABLE; 
  ADC_InitStructure.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_Rising;    
  ADC_InitStructure.ADC_ExternalTrigConv =  ADC_ExternalTrigConv_T1_CC4;
  ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
  ADC_InitStructure.ADC_ScanDirection = ADC_ScanDirection_Upward;
  ADC_Init(ADC1, &ADC_InitStructure); 
  
  /* Convert the ADC1 Channel 11 with 28 Cycles as sampling time */ 
  ADC_ChannelConfig(ADC1, ADC_Channel_11, ADC_SampleTime_28_5Cycles);
  
  /* ADC Calibration */
  ADC_GetCalibrationFactor(ADC1);
  
  /* Enable ADCperipheral[PerIdx] */
  ADC_Cmd(ADC1, ENABLE);     
  
  /* Wait the ADCEN falg */
  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_ADEN)); 
  
  /* ADC1 regular Software Start Conv */ 
  ADC_StartOfConversion(ADC1);
}
