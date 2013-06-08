#include "payment_control.h"
#include "ui.h"

//EEPROM Variable Storage Tables
uint16_t VirtAddVarTab[NumbOfVar];

//Task Variables
OS_TID payment_control_t;
U64 payment_control_stk[PAYMENT_CONTROL_STK_SIZE];

#define VAR_BOXID_ID 0
uint16_t boxid;

__task void payment_control (void)
{
	
	//Set up RTC
	rtc_init();
	
	FLASH_Unlock();
	
	EE_Init();
	
	if ( EE_ReadVariable(VAR_BOXID_ID, &boxid) )
	{
		printf("ERROR: No BoxId \n");
		printf("INFO: Writing Box ID 12345\n");
		if ( EE_WriteVariable(VAR_BOXID_ID, 12345) != FLASH_COMPLETE)
			printf("ERROR: Boxid could not be written\n");
	}
	else
		printf("Boxid: %i \n", boxid);
	
	FLASH_Lock();
	
	os_evt_set(UI_PAYMENT_VALID, ui_t);
	
	while(1)
	{
		//0.1s delay
		print_time_date();
		os_dly_wait(10);
	}
}
