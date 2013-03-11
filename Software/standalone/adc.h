#ifndef __adc_h
#define __adc_h

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>

/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
void init_adc(void);
float get_adc_voltage (uint32_t);
__task void adc_in (void);

#endif
