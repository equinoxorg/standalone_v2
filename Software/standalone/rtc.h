#ifndef __RTC_H_
#define __RTC_H_

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include <time.h>

void rtc_init(void);
void print_time_date ( void );
struct tm get_time_struct (void);


#endif
