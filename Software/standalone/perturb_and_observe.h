#ifndef __PERTURB_AND_OBSERVE_H
#define __PERTURB_AND_OBSERVE_H

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include "adc.h"
#include "pwm.h"

#define P_AND_O_PERIOD	100 //1s
#define DUTY_CYCLE_INC (float)1.0f

__task void perturb_and_observe (void);
void perturb_and_observe_itter (void);

#endif
