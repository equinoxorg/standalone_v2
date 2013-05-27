#include "adc.h"

#define ADC1_DR_Address 0x40012440


volatile uint16_t RegularConvData_Tab[4];

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
		case ADC_SOL_V:
			return SCALE_V_SOL( (RegularConvData_Tab[1] * ADC_VREF) / 0xFFF );
		case ADC_SOL_I:
			return SCALE_I_SOL( (RegularConvData_Tab[2] * ADC_VREF) / 0xFFF );
		case ADC_BATT_V:
			return SCALE_V_BATT( (RegularConvData_Tab[3] * ADC_VREF) / 0xFFF );
		case ADC_BATT_I:
			return SCALE_I_BATT( (RegularConvData_Tab[0] * ADC_VREF) / 0xFFF );
		default:
			printf ("ERROR: Attmept to read Invalid ADC Channel \n");
			return -1.0f;
	}
	
}


__task void adc_test(void)
{	
	float sol_v, sol_i, batt_v, batt_i;
	
	while (1)
	{
		sol_v = get_adc_voltage(ADC_SOL_V);
		sol_i = get_adc_voltage(ADC_SOL_I);
		batt_v = get_adc_voltage(ADC_BATT_V);
		batt_i = get_adc_voltage(ADC_BATT_I);
		
		printf("Solar V: %f \n Solar I: %f \n Batt  V: %f \n Batt  I: %f \n", sol_v, sol_i, batt_v, batt_i );
		
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
		
  // GPIOA Periph clock enable 
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);

  
	GPIO_StructInit(&GPIO_InitStructure);
  //Configure ADC Channel1/2/3/4 PA1/2/3/4 as analog input 
  GPIO_InitStructure.GPIO_Pin = (GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 );
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL ;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
  
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
  DMA_InitStructure.DMA_BufferSize = 4;
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
  ADC_InitStructure.ADC_ScanDirection = ADC_ScanDirection_Upward;
  ADC_Init(ADC1, &ADC_InitStructure); 
 
  // Convert the ADC_SOL_V  with 239 Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_SOL_V , ADC_SampleTime_239_5Cycles);
  
  // Convert the ADC_SOL_I  with 239 Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_SOL_I , ADC_SampleTime_239_5Cycles);
  
	// Convert the ADC_BATT_V  with 239 Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_BATT_V , ADC_SampleTime_239_5Cycles);
  
  // Convert the ADC_BATT_I  with 239 Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_BATT_I , ADC_SampleTime_239_5Cycles);
  
  // ADC Calibration  
  ADC_GetCalibrationFactor(ADC1);
  
  // Enable ADC1  
  ADC_Cmd(ADC1, ENABLE);     
  
  // Wait the ADCEN falg  
  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_ADEN)); 
  
  // ADC1 regular Software Start Conv   
  ADC_StartOfConversion(ADC1);
}
