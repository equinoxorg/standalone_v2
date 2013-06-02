#ifndef __ui_h
#define __ui_h

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include "lcd_hd44780.h"

//Public Variables
extern OS_TID ui_t;
extern char pwr_on;

//Public Functions
__task void ui (void);



//Event Flags
	// Upto 16 event flags per task
#define UI_PWR_SW						(1 << 0)
#define UI_EVT_USB_OC				(1 << 1)
#define UI_EVT_KEYPAD_1			(1 << 2)
#define UI_EVT_KEYPAD_2			(1 << 3)
#define UI_EVT_KEYPAD_3			(1 << 4)

#define UI_PAYMENT_VALID		(1 << 5)
#define UI_PAYMENT_INVALID	(1 << 6)




#endif
