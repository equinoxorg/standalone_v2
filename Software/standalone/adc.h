#ifndef __adc_h
#define __adc_h

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>

#ifndef ADC_VREF
	#define ADC_VREF 3.3f
#endif

#define ADC_SOL_V		ADC_Channel_1 //PA1
#define ADC_SOL_I		ADC_Channel_2 //PA2
#define ADC_BATT_V	ADC_Channel_3 //PA3
#define ADC_BATT_I	ADC_Channel_4 //PA4
#define ADC_TEMP		ADC_Channel_TempSensor


#define SCALE_V_SOL(x)	((x) * ((10.0f + 1.32f) / 1.32f ) )
#define SCALE_I_SOL(x)	((x) * 0.606060f)//((x) * 1.515f)
#define SCALE_V_BATT(x)	((x) * ((10.0f + 1.32f) / 1.32f ) )
#define SCALE_I_BATT(x) ((x) * 1.515f * /*Calibration*/ 0.349f)

//Convert a current to an equivilent ADC reading
#define I_BATT_TO_ADC(x)	( (uint16_t) ( ( (x/1.515f) / ADC_VREF ) * 0xFFF) )

#define NO_SAMPLES 16
#define NO_CHANNELS 5

//Public Variables
extern volatile uint16_t RegularConvData_Tab[5];
extern uint16_t adc_v_batt	[NO_SAMPLES];
extern uint16_t adc_i_batt	[NO_SAMPLES];
extern uint16_t adc_v_sol		[NO_SAMPLES];
extern uint16_t adc_i_sol		[NO_SAMPLES];
extern uint16_t adc_temp		[NO_SAMPLES];

/* Private variables ---------------------------------------------------------*/

/* Public function prototypes -----------------------------------------------*/
//void init_adc(void);
void init_adc( void );
float get_adc_voltage (uint32_t);
__task void adc_test (void);

#endif
