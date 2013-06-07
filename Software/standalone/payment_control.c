#include "payment_control.h"


//Task Variables
OS_TID payment_control_t;
U64 payment_control_stk[PAYMENT_CONTROL_STK_SIZE];

__task void payment_control (void)
{
	while(1)
	{
		//10s delay
		os_dly_wait(1000);
	}
}
