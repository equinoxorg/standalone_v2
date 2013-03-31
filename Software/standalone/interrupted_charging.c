#include "interrupted_charging.h"

#define MPP_CHARGING			0
#define VOLTAGE_SETTLE		1
#define PULSED_CURRENT		2
#define FULLY_CHARGED			3
#define NIGHT_MODE 				4

#define V_HI	13.8f
#define V_LO	13.0f

#define BATTERY_SIZE 7.0f

int state = 0;

__task interrupted_charging (void)
{
	float batt_voltage = 0.0f;
	int pulse = 0;
	int counter = 0;
	
	//TODO: initialise hardware
	
	while (1)
	{
		batt_voltage = get_adc_voltage(ADC_BATT_V); //*scaling factor
		
		switch (state)
		{
			case MPP_CHARGING:
				//Call MPPT algorithm, P&O??
				perturb_and_observe_itter();
			
				if (batt_voltage > V_HI)
				{
					state = VOLTAGE_SETTLE;
					printf("Starting Voltage Settle Charging State at V=%f \n", batt_voltage);
				}
				
				os_dly_wait( P_AND_O_PERIOD );

				break;
			
			case VOLTAGE_SETTLE:				
				if (batt_voltage < V_LO)
				{
					state = PULSED_CURRENT;
					printf("Starting Pulsed Current Charging State at V=%f \n", batt_voltage);
				}				
				//5s delay
				os_dly_wait(50);
				break;
				
			case PULSED_CURRENT:
				if ( ++counter > 50 ) //5s pulse time
				{				
					counter = 0;
					pulse = !pulse;
				}
				
				if (pulse)
				{
					//Regulate at 0.05C
				}
				
								
				if (batt_voltage > V_HI)
				{
					state = FULLY_CHARGED;
					printf("Starting Fully Charged Charging State at V=%f \n", batt_voltage);
				}
				
				//100ms delay
				os_dly_wait(10);				
				break;
			case FULLY_CHARGED:
				//Regulate so that Battery current = 0
					//This means that the battery is no longer charged
					//But the panel is used to power any connected load
			
				//Check when to start recharging again.
			
				//5s delay
				os_dly_wait(500);
				break;
			
			case NIGHT_MODE:
				break;
			default:
				state = MPP_CHARGING;
				printf("ERROR: Charging State machine entered Unknown State. Restarting with MPP Charging \n");
		}
	}
}
