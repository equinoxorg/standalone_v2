#include "payment_control.h"
#include "ui.h"
#include "unlock_codes.h"

//EEPROM Variable Storage Tables
uint16_t VirtAddVarTab[NumbOfVar];

//Task Variables
OS_TID payment_control_t;
U64 payment_control_stk[PAYMENT_CONTROL_STK_SIZE];

#define DEBUG

#define VAR_BOXID_ID 0
uint16_t boxid;

char check_code(uint32_t);
void update_expiry_date(uint8_t);

__task void payment_control (void)
{
	
	os_dly_wait(200);
	
	//Set up RTC
 	if ( rtc_init() != RTC_SUCCESS)
		printf("ERROR: RTC Init Failed \n");
	
#ifndef DEBUG	
	//Allows code to access the flash memory
	FLASH_Unlock();
	
	//Checks for any corruption due to power down whilst writing.
	//Restores if possible
	//Causes debugger issues so disable in debug version
	if ( EE_Init() != FLASH_COMPLETE )
	{
		printf("ERROR: EE_Init() Error\n");
	}
	
	//Attempts to read BoxId from flash memory
	if ( EE_ReadVariable(VAR_BOXID_ID, &boxid) )
	{
		//Read failed
		printf("ERROR: No BoxId \n");
		printf("INFO: Writing Box ID 12345\n");
		if ( EE_WriteVariable(VAR_BOXID_ID, 12345) != FLASH_COMPLETE)
			printf("ERROR: Boxid could not be written\n");
	}
	else
		printf("Boxid: %i \n", boxid);
	
	//Disables access to flash memory
	FLASH_Lock();
#endif
	
	//os_evt_set(UI_PAYMENT_VALID, ui_t);
	
	while(1)
	{
		//10s delay
		//print_time_date();
		os_dly_wait(1000);
	}
}

char check_unlock_code (uint32_t unlock_code)
{
	if (unlock_code == 1234567890)
		return 1;
	else
		return 0;
	
	//NOTE: Code below is never entered, code above overrights
	
	if (check_code(unlock_code)) 
	{

		//Checks if the full unlock code was given
		if (GET_UNLOCK_DAYS(unlock_code) == FULL_UNLOCK) 
		{
				//ee_write_full_unlock(EE_FULL_UNLOCK_CODE);
				return 1;
		}

		//Updates the next unlock code expiry date
		update_expiry_date(GET_UNLOCK_DAYS(unlock_code)); //Needs implementing
		
		return 1;
	} 
	else 
		return 0;
}

char check_code(uint32_t code) {
    char code_valid = 0;
    uint8_t unlock_count;// = ee_read_unlock_count();

    if (check_checksum(code)) {
        if (((GET_UNLOCK_COUNT(code) - unlock_count) <= 1) || (GET_UNLOCK_DAYS(code) == FULL_UNLOCK)) {
            //ee_write_unlock_count(GET_UNLOCK_COUNT(code) + 1);
            code_valid = 1;
        }
    }

    return code_valid;
}
