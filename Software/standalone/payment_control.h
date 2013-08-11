#ifndef __payment_control_h
#define __payment_control_h

#include "standalone_config.h"

#include "rtc.h"
#include "eeprom.h"

//Task Parameters
extern OS_TID payment_control_t;
#define PAYMENT_CONTROL_STK_SIZE 40
extern U64 payment_control_stk[PAYMENT_CONTROL_STK_SIZE];

//Task Event Flags
#define PC_SET_BOX_ID	(1 << 0)
#define EE_FULL_UNLOCK_CODE		0x5555

//Public
struct ee_data_s
{
	char valid;
	uint16_t box_id;
	double expiry_date;
	uint16_t full_unlock;
	uint16_t unlock_count;
};

extern struct ee_data_s local_ee_data;

//Public Functions
__task void payment_control (void);
char check_unlock_code (uint32_t);
int get_unlock_days ( void );

//Public Variables

#endif
