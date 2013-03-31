#ifndef __adc_h
#define __adc_h

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>

#ifndef ADC_VREF
	#define ADC_VREF 3.3f
#endif

#define ADC_BATT_V	ADC_Channel_10
#define ADC_BATT_I	ADC_Channel_11
#define ADC_SOL_V		ADC_Channel_12
#define ADC_SOL_I		ADC_Channel_13

#define SCALE_V_BATT(x)	(x * ((10.0f + 1.32f) / 1.32f ) )
#define SCALE_I_BATT(x) (x * 1.515f)
#define SCALE_V_SOL(x)	x
#define SCALE_I_SOL(x)	x

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
//void init_adc(void);
void init_adc( void );
float get_adc_voltage (uint32_t);
__task void adc_in (void);

#endif
