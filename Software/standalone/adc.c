#include "adc.h"

#define ADC1_DR_Address 0x40012440


volatile uint16_t RegularConvData_Tab[2];

/* Function for reading the latest ADC Reading
 * Parameter: ADC_Channel_x
 * 	Some Channels have been #defined to easier to read names
 * 
 * Returns: float
 * 					The voltage read on the given ADC pin
 */
float get_adc_voltage ( uint32_t ADC_Channel )
{
	
	/* Test DMA1 TC flag */
	while((DMA_GetFlagStatus(DMA1_FLAG_TC1)) == RESET ); 
	
	/* Clear DMA TC flag */
	DMA_ClearFlag(DMA1_FLAG_TC1);
	
	switch (ADC_Channel)
	{
		case ADC_BATT_V:
			return SCALE_V_BATT( (RegularConvData_Tab[0] * ADC_VREF) / 0xFFF );
		case ADC_BATT_I:
			return SCALE_I_BATT( (RegularConvData_Tab[1] * ADC_VREF) / 0xFFF );
		case ADC_SOL_V:
			return SCALE_V_SOL( (RegularConvData_Tab[0] * ADC_VREF) / 0xFFF );
		case ADC_SOL_I:
			return SCALE_I_SOL( (RegularConvData_Tab[1] * ADC_VREF) / 0xFFF );
		default:
			return -1.0f;
	}
	
}


__task void adc_in (void)
{	
	while (1)
	{
		printf("V Solar Voltage %f \n", get_adc_voltage(ADC_SOL_V) );
		printf("I Solar Voltage %f \n", get_adc_voltage(ADC_SOL_I) );
		
		os_dly_wait(100);
	}
}

//
//  * @brief  ADC configuration
//  * @param  None
//  * @retval None
   
void init_adc( void )
{
	ADC_InitTypeDef ADC_InitStructure;
	DMA_InitTypeDef DMA_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;
		
  // GPIOC Periph clock enable 
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOC, ENABLE);

  
	GPIO_StructInit(&GPIO_InitStructure);
  // Configure ADC Channel11 PC1 as analog input 
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1 ;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
	// Configure ADC Channel10 PC0 as analog input 
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 ;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
  
  // ADC1 DeInit    
  ADC_DeInit(ADC1);
  
  // ADC1 Periph clock enable  
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
  
  // DMA1 clock enable  
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1 , ENABLE);
  
  // DMA1 Channel1 Config  
  DMA_DeInit(DMA1_Channel1);
  DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)ADC1_DR_Address;
  DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)RegularConvData_Tab;
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
  DMA_InitStructure.DMA_BufferSize = 2;
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
  DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;
  DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
  DMA_Init(DMA1_Channel1, &DMA_InitStructure);
  
  // DMA1 Channel1 enable  
  DMA_Cmd(DMA1_Channel1, ENABLE);
  
  // ADC DMA request in circular mode  
  ADC_DMARequestModeConfig(ADC1, ADC_DMAMode_Circular);
  
  // Enable ADC_DMA  
  ADC_DMACmd(ADC1, ENABLE);  
  
  // Initialize ADC structure  
  ADC_StructInit(&ADC_InitStructure);
  
  // Configure the ADC1 in continous mode withe a resolutuion equal to 12 bits   
  ADC_InitStructure.ADC_Resolution = ADC_Resolution_12b;
  ADC_InitStructure.ADC_ContinuousConvMode = ENABLE; 
  ADC_InitStructure.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;
  ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
  ADC_InitStructure.ADC_ScanDirection = ADC_ScanDirection_Backward;
  ADC_Init(ADC1, &ADC_InitStructure); 
 
  // Convert the ADC1 Channel 10  with 239 Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_Channel_10 , ADC_SampleTime_239_5Cycles);
  
  // Convert the ADC1 Channel 11  with 239 Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_Channel_11 , ADC_SampleTime_239_5Cycles);
  
  // ADC Calibration  
  ADC_GetCalibrationFactor(ADC1);
  
  // Enable ADC1  
  ADC_Cmd(ADC1, ENABLE);     
  
  // Wait the ADCEN falg  
  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_ADEN)); 
  
  // ADC1 regular Software Start Conv   
  ADC_StartOfConversion(ADC1);
}
