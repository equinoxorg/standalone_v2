#include "payment_control.h"
#include <math.h>
#include "ui.h"
#include "unlock_codes.h"
#include "trace.h"

//EEPROM Variable Storage Tables
uint16_t VirtAddVarTab[NumbOfVar];

//Task Variables
OS_TID payment_control_t;
U64 payment_control_stk[PAYMENT_CONTROL_STK_SIZE];

//#define DEBUG

#define SECONDS_IN_DAY	(60*60*24)

#define VAR_BOXID_ID 0			//16-bit
#define VAR_EXPIRY_DATE 1		//64-bit
#define VAR_FULL_UNLOCK 5		//16-bit
#define VAR_UNLOCK_COUNT 6	//16-bit


#define EE_FULL_UNLOCK_CODE		0x5555

#define EE_SUCCESS	(0)
#define EE_ERROR 		(-1)

struct ee_data_s
{
	char valid;
	uint16_t box_id;
	double expiry_date;
	uint16_t full_unlock;
	uint16_t unlock_count;
};
// ee_data is always an exact copy of the eeprom data
// it should never be modified 

char check_code(uint32_t);
void update_expiry_date(uint8_t);
double four_uint16_to_double ( uint16_t*);
void double_to_four_uint16 ( double, uint16_t*);

int ee_sync (struct ee_data_s*);
// int ee_read_double (uint16_t VirtAddress, double* data);
// int ee_write_double (uint16_t VirtAddress, double data);

struct ee_data_s local_ee_data;

__task void payment_control (void)
{
	int rtc_status;
	os_dly_wait(200);
	
	//Set up RTC
	rtc_status = rtc_init();
 	if ( rtc_status != RTC_SUCCESS)
		TRACE_ERROR("RTC Init Failed with error %i \n", rtc_status);
	
	
#ifndef DEBUG	
	//Allows code to access the flash memory
	FLASH_Unlock();
	
	//Checks for any corruption due to power down whilst writing.
	//Restores if possible
	//Causes debugger issues so disable in debug version
	if ( EE_Init() != FLASH_COMPLETE )
	{
		TRACE_ERROR("EE_Init() Error\n");
	}
	
	//Disables access to flash memory
	FLASH_Lock();
#endif
	
	ee_sync(&local_ee_data);
	
	//Attempts to read BoxId from flash memory
	if ( local_ee_data.box_id == 0 )
	{
		//Read failed
		TRACE_ERROR("No BoxId \n");
		TRACE_INFO("Writing Box ID 12345\n");
		local_ee_data.box_id = 12345;
		ee_sync(&local_ee_data);
	}
	else
		TRACE_INFO("Boxid: %i \n", local_ee_data.box_id );
	
	//Set the boxid in the code check files
	set_box_id(local_ee_data.box_id);
		
	while(1)
	{
		//10s delay
		if ( get_unlock_days() == -1 )
		{
			os_evt_set(UI_PAYMENT_INVALID, ui_t);
		}			
		
		//print_time_date();
		os_dly_wait(1000);
	}
}

int get_unlock_days ( void )
{
	time_t current_time = get_time_t();
	
	if (current_time > local_ee_data.expiry_date)
		return (-1); //-1 indicates expired code
	else
		return ((int) ( floor((float) (local_ee_data.expiry_date - current_time) / (float) (SECONDS_IN_DAY))));
}

int ee_sync (struct ee_data_s* local_data)
{
	//Exact copy of EEPROM data (when valid bit == 1)
	//Used to reduce reads/writes to eeprom
	//Reads are fast but writes take a very long time
	//Writes should be minimised and as each write fully
	//erased flash each time writes should be grouped 
	//together for best perfomance
	static struct ee_data_s ee_data_copy;
	int i;
	int error_status = EE_SUCCESS; 
	
	FLASH_Unlock();
	
	if ( !ee_data_copy.valid )
	{
		for ( i=0; i<NumbOfVar; i++ )
		{
			//load data from eeprom
			if ( EE_ReadVariable( i, &VirtAddVarTab[i] ) != 0)
			{
				TRACE_ERROR("EE_Sync data variable %i could not be read\n", i );	
				error_status = EE_ERROR;
			}
		}
		
		//Put into Ram data strcuture
		ee_data_copy.box_id = VirtAddVarTab[0];
		ee_data_copy.expiry_date = four_uint16_to_double( &VirtAddVarTab[1] );
		ee_data_copy.full_unlock = VirtAddVarTab[5];
		ee_data_copy.unlock_count = VirtAddVarTab[6];
		
		
		ee_data_copy.valid = 1;
	}
	
	if ( !local_data->valid )
	{
		//Copy eeprom data to local copy
		*local_data = ee_data_copy;
		//Below statemwnt already done in copy but just to be clear
		local_data->valid = 1;
	}
	
	if ( 	(ee_data_copy.box_id 			!= local_data->box_id) ||
				(ee_data_copy.expiry_date != local_data->expiry_date) ||
				(ee_data_copy.full_unlock != local_data->full_unlock) ||
				(ee_data_copy.unlock_count != local_data->unlock_count)
		 )
	{
		//Diable RTOS interrupts here
		
		//Write all data from local copy to eeprom
		VirtAddVarTab[0] = local_data->box_id;
		double_to_four_uint16( local_data->expiry_date, &VirtAddVarTab[1] );
		VirtAddVarTab[5] = local_data->full_unlock;
		VirtAddVarTab[6] = local_data->unlock_count;
		
		for ( i=0; i<NumbOfVar; i++ )
		{
			//Write the array to flash
			if ( EE_WriteVariable( i, VirtAddVarTab[i] ) != FLASH_COMPLETE)
			{
				TRACE_ERROR("EE_Sync data variable %i could not be written\n", i );	
				error_status = EE_ERROR;
			}
		}
		
		//Update the local copy of the flash memory
		ee_data_copy = *local_data;
		
		//Re-enable RTOS interrupts here
	}
	
	//Disables access to flash memory
	FLASH_Lock();
	
	return error_status;
}

char check_unlock_code (uint32_t unlock_code)
{
//	//Uncomment this code for simple testing
// 	if (unlock_code == 1234567890)
// 		return 1;
// 	else
// 		return 0;
	
	//Uncomment this section for full code verification
	if (check_code(unlock_code)) 
	{
		TRACE_DEBUG("Unlock code check passed \n");
		//Checks if the full unlock code was given
		if (GET_UNLOCK_DAYS(unlock_code) == FULL_UNLOCK) 
		{
				TRACE_INFO("Full unlock code \n");
				local_ee_data.full_unlock = EE_FULL_UNLOCK_CODE;
				return 1;
		}

		//Updates the next unlock code expiry date
		update_expiry_date(GET_UNLOCK_DAYS(unlock_code)); //Needs implementing
		
		//Sync EEPROM memory
		ee_sync(&local_ee_data);
		
		return 1;
	} 
	else 
	{
		TRACE_DEBUG("Unlock code check failed \n");
		return 0;
	}
}

char check_code(uint32_t code) {
	char code_valid = 0;

	if (check_checksum(code)) {
		TRACE_DEBUG("Checksum correct \n");
		if (((GET_UNLOCK_COUNT(code) - local_ee_data.unlock_count) <= 1) || (GET_UNLOCK_DAYS(code) == FULL_UNLOCK)) {
			TRACE_DEBUG("Unlock count correct")
			local_ee_data.unlock_count = GET_UNLOCK_COUNT(code) + 1;
			code_valid = 1;
		}
		else
		{
			TRACE_DEBUG("Unlock Count Incorrect. Box count %i, Unlock code count %i\n", local_ee_data.unlock_count, GET_UNLOCK_COUNT(code) );
		}
	}
	else
	{
		TRACE_DEBUG("Checksum incorrect \n");
	}

	return code_valid;
}

void update_expiry_date (uint8_t coded_unlock_days)
{
	double unlock_time;
	time_t current_time;
	
	//Calculate time to be added
	switch ( coded_unlock_days )
	{
		case	TWO_DAYS:
			unlock_time = 2 * SECONDS_IN_DAY;
			break;
		case	FIVE_DAYS:
			unlock_time = 5 * SECONDS_IN_DAY;
			break;
		case	SEVEN_DAYS:
			unlock_time = 7 * SECONDS_IN_DAY;
			break;
		case	TWO_WEEKS:
			unlock_time = 14 * SECONDS_IN_DAY;
			break;
		case	THREE_WEEKS:
			unlock_time = 21 * SECONDS_IN_DAY;
			break;
		case	ONE_MONTH:
			unlock_time = 28 * SECONDS_IN_DAY;
			break;
		case	TWO_MONTHS:
			unlock_time = 56 * SECONDS_IN_DAY;
			break;
		default:
			unlock_time = 0;
			TRACE_ERROR("Invalid unlock count!! \n");
	}
	
	//Get time from RTC
	current_time = get_time_t();
	
	//Set unlock time
	local_ee_data.expiry_date = (double) ( current_time + unlock_time );
	
	//Set RTC alarm
	
}

// int ee_write_full_unlock (uint16_t full_unlock)
// {
// 	if ( EE_WriteVariable( VAR_FULL_UNLOCK, full_unlock) != FLASH_COMPLETE)
// 	{
// 		printf("ERROR: Full unlock could not be written\n");	
// 		return EE_ERROR;
// 	}
// 	
// 	return EE_SUCCESS;
// }

// int ee_write_double (uint16_t VirtAddress, double data)
// {
// 	uint16_t data_array[4];
// 	int i;
// 	
// 	//Convert the time_t type to four 16bit data packets
// 	double_to_four_uint16(data, &data_array[0]);
// 		
// 	for (i=0; i<4; i++)
// 		if ( EE_WriteVariable( (VirtAddress+i), data_array[i]) != FLASH_COMPLETE)
// 			return EE_ERROR;
// 	
// 	return EE_SUCCESS;	
// 	
// }

// int ee_read_double (uint16_t VirtAddress, double* data)
// {
// 	uint16_t data_array[4];
// 	int i;
// 	
// 	for (i=0; i<4; i++)
// 		if ( EE_ReadVariable( (VirtAddress+i), &data_array[i]) != FLASH_COMPLETE)
// 			return EE_ERROR;
// 	
// 	*data = four_uint16_to_double( &data_array[0] );
// 		
// 	return EE_SUCCESS;
// }


// int ee_read_unlock_count (uint16_t* unlock_count_ret)
// {
// 	if ( EE_ReadVariable( VAR_UNLOCK_COUNT, unlock_count_ret ) != FLASH_COMPLETE)
// 	{
// 		printf("ERROR: Unlock Count could not be read\n");	
// 		return EE_ERROR;
// 	}
// 	
// 	return EE_SUCCESS;
// }

// int ee_write_unlock_count (uint16_t* unlock_count_in)
// {
// 	if ( EE_WriteVariable( VAR_UNLOCK_COUNT, *unlock_count_in) != FLASH_COMPLETE)
// 	{
// 		printf("ERROR: Unlock count could not be written\n");	
// 		return EE_ERROR;
// 	}
// 	
// 	return EE_SUCCESS;
// }

void double_to_four_uint16 ( double input, uint16_t* output_array)
{
	int i;
	union Data {
		double data_double;
		uint16_t data_uint16[4];
	} data;

	data.data_double = input;

	for (i=0;i<4;i++)
		output_array[i] = data.data_uint16[i];
}

double four_uint16_to_double ( uint16_t* input_array)
{
	int i;
	union Data {
		double data_double;
		uint16_t data_uint16[4];
	} data;

	for (i=0;i<4;i++)
		data.data_uint16[i] = input_array[i];

	return data.data_double;
}
