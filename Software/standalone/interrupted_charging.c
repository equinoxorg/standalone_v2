#include "interrupted_charging.h"

#define BULK_CHARGING			1
#define VOLTAGE_SETTLE		2
#define PULSED_CURRENT		3
#define FULLY_CHARGED			4
#define NIGHT_MODE 				5

#define V_HI	14.7f
#define V_LO	13.0f
#define V_RESTART 12.8f
#define V_LVDC 11.0f

#define BATTERY_AHR 7.0f


volatile float batt_current = 0.0f;

int state = BULK_CHARGING;

__task void interrupted_charging (void)
{
	float batt_voltage = 0.0f;
	int pulse = 0;
	int counter = 0;
	
	//TODO: initialise hardware
	init_pwm(40000);
	init_adc();
	
	set_mppt();
		
	while (1)
	{
		batt_voltage = get_adc_voltage(ADC_BATT_V);
		batt_current = get_adc_voltage(ADC_BATT_I);
		if (batt_current > 0.05)
			printf("Time=%i \t State=%i \t V_Batt=%.2f \t I_Batt = %.2f \t", os_time_get(), state, batt_voltage, batt_current);
		
		//Check for LVDC voltage
		if (batt_voltage < V_LVDC)
		{
			//Turn off outputs and screen.
			
		}
		
		
		switch (state)
		{
			case BULK_CHARGING:
				//Start charging battery with 0.1C current or as high as possible if 0.1C cannot be met
				perturb_and_observe_cc_itter(BATTERY_AHR*0.1f);
			
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
				if ( ++counter > 50 ) //5s pulse time, change to 30s period with 33% duty cycle
				{				
					counter = 0;
					pulse = !pulse;
				}
				
				if (pulse)
				{
					//Change to Regulate at 0.05C
					perturb_and_observe_cc_itter(BATTERY_AHR*0.05f);
					printf("Battery Current = %f A\n", get_adc_voltage(ADC_BATT_I));
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
			
				//Turn off Gate Driver
				
			
				//Check when to start recharging again.
				if (batt_voltage < V_RESTART)
				{
					state = BULK_CHARGING;
					printf("Restarting the Bulk Charging State \n");
				}
			
				//5s delay
				os_dly_wait(500);
				break;
			
			case NIGHT_MODE:
				//Disable MPPT Circuit
				GPIO_ResetBits(GPIOB, GPIO_Pin_0);
			
				if (get_adc_voltage(ADC_SOL_V) > batt_voltage) //Add proper condition
				{
					GPIO_SetBits(GPIOB, GPIO_Pin_0);
					state = BULK_CHARGING;
					printf("Exiting Night Mode\n");
				}
				//20s wait time
				os_dly_wait(2000);
				break;
			default:
				state = BULK_CHARGING;
				printf("ERROR: Charging State machine entered Unknown State. Restarting with Bulk Charging \n");
		}
	}
}


