#ifndef __INTERRUPTED_CHARGING_H
#define __INTERRUPTED_CHARGING_H

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include "perturb_and_observe.h"

__task void interrupted_charging (void);

extern U32 interrupted_charging_stk[128];

#endif
