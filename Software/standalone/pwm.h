#ifndef __pwm_h_
#define __pwm_h_

#include "standalone_config.h"

#include "adc.h"

void set_duty_cycle ( float );
void init_pwm ( uint16_t );
__task void pwm_out ( void );

#endif
