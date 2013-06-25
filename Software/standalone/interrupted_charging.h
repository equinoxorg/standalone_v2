#ifndef __INTERRUPTED_CHARGING_H
#define __INTERRUPTED_CHARGING_H

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include "perturb_and_observe.h"

//Public Functions
__task void interrupted_charging (void);
int get_soc (void);
float get_charging_rate (void);

//Task Parameters
extern OS_TID interrupted_charging_t;
#define I_CHARGING_STK_SIZE 80
extern U64  interrupted_charging_stk[I_CHARGING_STK_SIZE];


#endif
