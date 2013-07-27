#ifndef __ui_h
#define __ui_h

#include "standalone_config.h"

#include "lcd_hd44780.h"
#include "user_outputs.h"
#include "buzzer.h"

//Public Variables
extern OS_TID ui_t;
extern char pwr_on;

#define UI_STK_SIZE 50
extern U64 ui_stk[UI_STK_SIZE];

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

#define UI_LVDC							(1 << 7)

#define UI_BOX_SETUP				(1 << 8)




#endif
