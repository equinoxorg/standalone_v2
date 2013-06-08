#include "payment_control.h"


//Task Variables
OS_TID payment_control_t;
U64 payment_control_stk[PAYMENT_CONTROL_STK_SIZE];

__task void payment_control (void)
{
	
	//Set up RTC
	rtc_init();
	
	while(1)
	{
		//0.1s delay
		print_time_date();
		os_dly_wait(10);
	}
}
