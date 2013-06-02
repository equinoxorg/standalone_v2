#ifndef __PERTURB_AND_OBSERVE_H
#define __PERTURB_AND_OBSERVE_H

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include "adc.h"
#include "pwm.h"

#define P_AND_O_PERIOD	10 //1s
#define DUTY_CYCLE_INC (float)0.1f

__task void perturb_and_observe (void);
void perturb_and_observe_itter (void);
void perturb_and_observe_cc_itter (float);
void set_mppt (void);

#endif
