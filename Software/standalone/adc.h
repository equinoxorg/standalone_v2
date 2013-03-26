#ifndef __adc_h
#define __adc_h

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>

#ifndef ADC_VREF
	#define ADC_VREF 3.3f
#endif

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
//void init_adc(void);
void init_adc(uint32_t);
float get_adc_voltage (uint32_t);
__task void adc_in (void);

#endif
