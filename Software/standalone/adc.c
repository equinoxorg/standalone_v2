#include "adc.h"
#include "pwm.h"

#define ADC1_DR_Address 0x40012440

void adc_init_analog_watchdog (void);

volatile uint16_t RegularConvData_Tab[5];

uint16_t adc_v_batt	[NO_SAMPLES];
uint16_t adc_i_batt	[NO_SAMPLES];
uint16_t adc_v_sol	[NO_SAMPLES];
uint16_t adc_i_sol	[NO_SAMPLES];
uint16_t adc_temp		[NO_SAMPLES];

uint16_t ts_cal1, ts_cal2;

const int filter = 1;

/* Function for reading the latest ADC Reading
 * Parameter: ADC_Channel_x
 * 	Some Channels have been #defined to easier to read names
 * 
 * Returns: float
 * 					The voltage read on the given ADC pin
 */
float get_adc_voltage ( uint32_t ADC_Channel )
{
	float slope = (float)(ts_cal1 - ts_cal2) / (110.0f - 30.0f);
	int i;
	uint32_t sum = 0;
	
	/* Test DMA1 TC flag */
	while((DMA_GetFlagStatus(DMA1_FLAG_TC1)) == RESET ); 
	
	/* Clear DMA TC flag */
	DMA_ClearFlag(DMA1_FLAG_TC1);
	
	switch (ADC_Channel)
	{
		case ADC_SOL_V:
			if (filter)
			{
				sum = 0;
				for (i = 0; i < NO_SAMPLES; i++)
					sum += adc_v_sol[i];
				
				sum = sum / NO_SAMPLES;
				
				return SCALE_V_SOL( (sum * ADC_VREF) / 0xFFF );
			}
			else
				return SCALE_V_SOL( (RegularConvData_Tab[1] * ADC_VREF) / 0xFFF );
		case ADC_SOL_I:
			if (filter)
			{
				sum = 0;
				for (i = 0; i < NO_SAMPLES; i++)
					sum += adc_i_sol[i];
				
				sum = sum / NO_SAMPLES;
				
				return SCALE_I_SOL( (sum * ADC_VREF) / 0xFFF );
			}
			else
				return SCALE_I_SOL( (RegularConvData_Tab[2] * ADC_VREF) / 0xFFF );
		case ADC_BATT_V:
			if (filter)
			{
				sum = 0;
				for (i = 0; i < NO_SAMPLES; i++)
					sum += adc_v_batt[i];
				
				sum = sum / NO_SAMPLES;
				
				return SCALE_V_BATT( (sum * ADC_VREF) / 0xFFF );
			}
			else
				return SCALE_V_BATT( (RegularConvData_Tab[3] * ADC_VREF) / 0xFFF );
		case ADC_BATT_I:
			if (filter)
			{
				sum = 0;
				for (i = 0; i < NO_SAMPLES; i++)
					sum += adc_i_batt[i];
				
				sum = sum / NO_SAMPLES;
				
				return SCALE_I_BATT( (sum * ADC_VREF) / 0xFFF );
			}
			else
				return SCALE_I_BATT( (RegularConvData_Tab[4] * ADC_VREF) / 0xFFF );
		case ADC_TEMP:
			if (filter)
			{
				sum = 0;
				for (i = 0; i < NO_SAMPLES; i++)
					sum += adc_temp[i];
				
				sum = sum / NO_SAMPLES;
				
				//Use the factory calibrated values to get tempreture in degrees
				return ( ((float)ts_cal1 - (float)sum) / slope) + 30.0f;
			}
			else
				//Use the factory calibrated values to get tempreture in degrees
				return ( ((float)ts_cal1 - (float)RegularConvData_Tab[0]) / slope) + 30.0f;
		default:
			printf ("ERROR: Attmept to read Invalid ADC Channel \n");
			return -1.0f;
	}
	
}


__task void adc_test(void)
{	
	float sol_v, sol_i, batt_v, batt_i, temp;

	
	init_pwm(40000);
	init_adc();
	
	set_duty_cycle(82);
	
	while (1)
	{
		sol_v = get_adc_voltage(ADC_SOL_V);
		sol_i = get_adc_voltage(ADC_SOL_I);
		batt_v = get_adc_voltage(ADC_BATT_V);
		batt_i = get_adc_voltage(ADC_BATT_I);
		temp = get_adc_voltage(ADC_TEMP);
		
		printf("Solar V: %f \t Solar I: %f \t Solar P: %f \t Batt  V: %f \t Batt  I: %f \t Batt P: %f \t Temp : %f \n", sol_v, sol_i, sol_i*sol_v, batt_v, batt_i, batt_i*batt_v, temp );
		
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
	NVIC_InitTypeDef   NVIC_InitStructure;
		
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
  DMA_InitStructure.DMA_BufferSize = 5;
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
	
	ADC_JitterCmd(ADC1, ADC_JitterOff_PCLKDiv4, ENABLE);
 
	//ADC Frequency set as 12MHz
	//With 5 ADC readings at 239.5 + 12.5 ADC Cycles 
	//this gives a sampling rate of 
	
  // Convert the ADC_SOL_V  with 239.5 + 12.5 = ADC Cycles as sampling time      
  ADC_ChannelConfig(ADC1, ADC_SOL_V , ADC_SampleTime_239_5Cycles);
  
  // Convert the ADC_SOL_I  with 239.5 + 12.5 = ADC Cycles as sampling time      
  ADC_ChannelConfig(ADC1, ADC_SOL_I , ADC_SampleTime_239_5Cycles);
  
	// Convert the ADC_BATT_V  with 239.5 + 12.5 = ADC Cycles as sampling time      
  ADC_ChannelConfig(ADC1, ADC_BATT_V , ADC_SampleTime_239_5Cycles);
  
  // Convert the ADC_BATT_I  with 239.5 + 12.5 = ADC Cycles as sampling time   
  ADC_ChannelConfig(ADC1, ADC_BATT_I , ADC_SampleTime_239_5Cycles);
	
	//Enable Temperature Sensor
	ADC_TempSensorCmd(ENABLE);
	ADC_ChannelConfig(ADC1, ADC_TEMP, ADC_SampleTime_239_5Cycles);
	
	//Get Temp Calibration Values
	ts_cal1 = *( (uint16_t*) 0x1FFFF7B8 );
  ts_cal2 = *( (uint16_t*) 0x1FFFF7C2 );
	
  // ADC Calibration  
  ADC_GetCalibrationFactor(ADC1);
  
  // Enable ADC1  
  ADC_Cmd(ADC1, ENABLE);     
  
  // Wait the ADCEN falg  
  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_ADEN)); 
	
	//adc_init_analog_watchdog();
  
	ADC_ITConfig(ADC1, ADC_IT_EOSEQ, ENABLE);
	
	/* Enable and set ADC1_COMP Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = ADC1_COMP_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPriority = 0x00;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
	
  // ADC1 regular Software Start Conv   
  ADC_StartOfConversion(ADC1);
}

void adc_init_analog_watchdog (void)
{
	//Set up interruts
	ADC_ITConfig(ADC1, ADC_IT_AWD, ENABLE);
	
	
	
	//   [..] A typical configuration Analog Watchdog is done following these steps :
	//        (#) the ADC guarded channel(s) is (are) selected using the 
	//            ADC_AnalogWatchdogSingleChannelConfig() function.
	//Setup single channel function for ADC Channel 4, ADC_BATT_I
	ADC_AnalogWatchdogSingleChannelConfig(ADC1, ADC_AnalogWatchdog_Channel_4);


	//        (#) The Analog watchdog lower and higher threshold are configured using the  
	//            ADC_AnalogWatchdogThresholdsConfig() function.
	ADC_AnalogWatchdogThresholdsConfig(ADC1, I_BATT_TO_ADC(0.1), I_BATT_TO_ADC(0) );

	//        (#) The Analog watchdog is enabled and configured to enable the check, on one
	//           or more channels, using the  ADC_AnalogWatchdogCmd() function.
	ADC_AnalogWatchdogCmd(ADC1, ENABLE);

	//        (#) Enable the analog watchdog on the selected channel using
	//            ADC_AnalogWatchdogSingleChannelCmd() function
	ADC_AnalogWatchdogSingleChannelCmd(ADC1, ENABLE);

}
