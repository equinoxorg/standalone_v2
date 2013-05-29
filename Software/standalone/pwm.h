#ifndef __pwm_h_
#define __pwm_h_

	#include <stdio.h>
	#include <RTL.h>
	#include "stm32f0xx.h"
	#include "adc.h"

	void set_duty_cycle ( float );
	void init_pwm ( uint16_t );
	__task void pwm_out ( void );

#endif
