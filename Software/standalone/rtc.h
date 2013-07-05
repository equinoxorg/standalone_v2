#ifndef __RTC_H_
#define __RTC_H_

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include <time.h>

#define RTC_SUCCESS 0

int rtc_init(void);
void print_time_date ( void );
struct tm get_time_struct (void);
time_t get_time_t (void);


#endif
