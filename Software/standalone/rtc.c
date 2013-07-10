#include "rtc.h"

//Private Functions
int rtc_lsi_init ( void );

int rtc_init (void) 
{
	uint32_t count = 0x2dc6c00;
	RTC_InitTypeDef   RTC_InitStructure;
		
	// Turn on PWR clock
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR, ENABLE);

	// Allow access to RTC 
  PWR_BackupAccessCmd(ENABLE);
	
	//Forces reset of RTC, resets the time and date to 0
	//RCC_BackupResetCmd(ENABLE);
  //RCC_BackupResetCmd(DISABLE);
	
 	//32.768 External Osc
   RCC_LSEConfig(RCC_LSE_ON);

	//Check for clock stability
	while ( (RCC_GetFlagStatus(RCC_FLAG_LSERDY) == RESET) )
		if (--count==0)
		{
			//Fall back to the LSI clock source
			//Much less accurate than LSE
			return rtc_lsi_init();
		}
		
  // Select the RTC Clock Source
  RCC_RTCCLKConfig(RCC_RTCCLKSource_LSE);
  
  // Enable the RTC Clock 
  RCC_RTCCLKCmd(ENABLE);
  
  // Wait for RTC APB registers synchronisation 
  if ( RTC_WaitForSynchro() == ERROR )
		return RTC_SYNCHRO_ERR;
  
  RTC_InitStructure.RTC_HourFormat = RTC_HourFormat_24;
	//32.768kHz Clock is divided by (0x40 * 0x200) which 
	//gives a 1Hz output from 32.768kHz crystal
  RTC_InitStructure.RTC_AsynchPrediv = 0x40; 	//Max 0x7F
  RTC_InitStructure.RTC_SynchPrediv = 0x0200;	//Max 0x1FFF
  
  if ( RTC_Init(&RTC_InitStructure) == ERROR )
		return RTC_INIT_ERR;
	
	print_time_date();
	
	return RTC_SUCCESS;	
}

//Function which is called on the failure of the 
//external RTC clock source. This sets up the RTC
//clock source as the internal RC clock. This is far
//less acurate but is better than nothing.
int rtc_lsi_init ( void )
{
	uint32_t count = 0x2dc6c00;
	RTC_InitTypeDef   RTC_InitStructure;
	
 	RCC_LSICmd(ENABLE);

	//Check for clock stability
	while ( (RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET) )
		if (--count==0)
		{
			return RTC_LSI_FAILURE;
		}
	
  // Select the RTC Clock Source
	RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);
  
  // Enable the RTC Clock 
  RCC_RTCCLKCmd(ENABLE);
  
  // Wait for RTC APB registers synchronisation 
  if ( RTC_WaitForSynchro() == ERROR )
		return RTC_SYNCHRO_ERR;
  
  RTC_InitStructure.RTC_HourFormat = RTC_HourFormat_24;
	//40kHz Clock is divided by (0x40 * 0x200) which 
	//gives a 1Hz output from 40kHz LSI
  RTC_InitStructure.RTC_AsynchPrediv = 0x40; 	//Max 0x7F
  RTC_InitStructure.RTC_SynchPrediv = 0x0271;	//Max 0x1FFF
  
  if ( RTC_Init(&RTC_InitStructure) == ERROR )
		return RTC_INIT_ERR;
	
	print_time_date();
	
	return RTC_LSI_FALLBACK;	
}

void print_time_date ( void )
{
	RTC_TimeTypeDef   RTC_TimeStructure;
	RTC_DateTypeDef		RTC_DateStructure;
	
	RTC_TimeStructInit(&RTC_TimeStructure);
	RTC_DateStructInit(&RTC_DateStructure);
	
	RTC_GetTime(RTC_Format_BIN, &RTC_TimeStructure);
	RTC_GetDate(RTC_Format_BIN, &RTC_DateStructure);
	
	printf("%i/%i/%i ", RTC_DateStructure.RTC_Date, RTC_DateStructure.RTC_Month,  (RTC_DateStructure.RTC_Year+2000) );
	printf("%i:%i:%i \n", RTC_TimeStructure.RTC_Hours, RTC_TimeStructure.RTC_Minutes, RTC_TimeStructure.RTC_Seconds);
}

time_t get_time_t (void)
{
	struct tm time_s = get_time_struct();
	return mktime (&time_s);
}

struct tm get_time_struct (void)
{
	struct tm result;	
	RTC_TimeTypeDef   RTC_TimeStructure;
	RTC_DateTypeDef		RTC_DateStructure;
	
	RTC_TimeStructInit(&RTC_TimeStructure);
	RTC_DateStructInit(&RTC_DateStructure);
	
	RTC_GetTime(RTC_Format_BIN, &RTC_TimeStructure);
	RTC_GetDate(RTC_Format_BIN, &RTC_DateStructure);
	
	result.tm_sec = RTC_TimeStructure.RTC_Seconds;
	result.tm_min = RTC_TimeStructure.RTC_Minutes;
	result.tm_hour = RTC_TimeStructure.RTC_Hours;
	
	result.tm_mday = RTC_DateStructure.RTC_Date;
	result.tm_mon = RTC_DateStructure.RTC_Month;
	result.tm_year = RTC_DateStructure.RTC_Year - 100;

	mktime(&result);
		
	return result;
}

