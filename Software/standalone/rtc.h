#ifndef __RTC_H_
#define __RTC_H_

#include "standalone_config.h"

#include <time.h>

#define RTC_SUCCESS 			(0)
#define RTC_LSI_FALLBACK 	(-1)
#define RTC_LSI_FAILURE		(-2)
#define RTC_SYNCHRO_ERR		(-3)
#define RTC_INIT_ERR			(-4)

int rtc_init(void);
void print_time_date ( void );
struct tm get_time_struct (void);
time_t get_time_t (void);
int rtc_lsi_init ( void );
void get_time_str (char*);
void get_date_str (char*);


#endif
