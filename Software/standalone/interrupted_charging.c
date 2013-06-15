#include "interrupted_charging.h"
#include "ui.h"

float calc_lvdc ( float );
void set_temperature_compensation( float );
void set_current_compensation ( float, float );

#define BULK_CHARGING			1
#define VOLTAGE_SETTLE		2
#define PULSED_CURRENT		3
#define FULLY_CHARGED			4
#define NIGHT_MODE 				5

float v_high = 14.7f;
float v_low = 13.4f;
float v_restart = 12.8f;
float pulse_duty = 0.33f;

//Choosen based on the consumption of running 
//CC circuitry
#define P_NIGHT_MODE 0.7f

#define BATTERY_AHR 	7.0f
#define PV_PANEL_PEAK	7.0f

//Private Variables
int cc_state = BULK_CHARGING;

//Public Variables
U64 interrupted_charging_stk[I_CHARGING_STK_SIZE];
OS_TID interrupted_charging_t;

__task void interrupted_charging (void)
{
	float batt_voltage = 0.0f, batt_current = 0.0f;
	float sol_voltage = 0.0f, sol_current = 0.0f, sol_power = 0.0f;
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
		sol_voltage = get_adc_voltage(ADC_SOL_V);
		sol_current = get_adc_voltage(ADC_SOL_I);
		sol_power = sol_voltage * sol_current;
		
		printf("Time=%i \t State=%i \t V_Batt=%.2f \t I_Batt=%.2f \t V_SOL=%.2f \t I_SOL=%.3f \t P_SOL=%.2f \t duty=%.1f \n",
					os_time_get(), cc_state, batt_voltage, batt_current,sol_voltage, sol_current, sol_power, duty_cycle);
		
		//Check for LVDC voltage
		if ( batt_voltage < calc_lvdc(batt_current) )
		{
			//Turn off outputs and screen.
			//send os event to turn off
			os_evt_set( UI_LVDC, ui_t );
		}
		
		set_temperature_compensation( get_adc_voltage(ADC_TEMP) );
		
		
		switch (cc_state)
		{
			case BULK_CHARGING:
				//Start charging battery with 0.1C current or as high as possible if 0.1C cannot be met
				perturb_and_observe_cc_itter(BATTERY_AHR*0.1f);
			
				set_current_compensation(BATTERY_AHR*0.1f, batt_current);
			
				if (sol_power < P_NIGHT_MODE)
				{
					if (set_mppt() < (P_NIGHT_MODE*1.2))
					{
						cc_state = NIGHT_MODE;
						printf("INFO: Starting Night Mode State\n");
						break;
					}
					printf("INFO: Rescaned Power and Night mode not entered \n");
				}
		
						
				if (batt_voltage > v_high)
				{
					cc_state = VOLTAGE_SETTLE;
					printf("INFO: Starting Voltage Settle Charging State at V=%f \n", batt_voltage);
					break;
				}
				
				os_dly_wait( P_AND_O_PERIOD );

				break;
			
			case VOLTAGE_SETTLE:
				//Diable the MPPT Charging Circuit
				GPIO_ResetBits(GPIOB, GPIO_Pin_0);
			
				if (batt_voltage < v_low)
				{
					GPIO_SetBits(GPIOB, GPIO_Pin_0);
					cc_state = PULSED_CURRENT;
					printf("INFO: Starting Pulsed Current Charging State at V=%f \n", batt_voltage);
					break;
				}				
				//5s delay
				os_dly_wait(50);
				break;
				
			case PULSED_CURRENT:
				counter++;

				if (pulse)
				{
					//If greater than high period seconds, pulse is low. i.e sets up x% duty cycle
					if ( counter > (300 * pulse_duty) )
						pulse = 0;
					
					//Enable MPPT hardware
					GPIO_SetBits(GPIOB, GPIO_Pin_0);
					
					//Run p&o itteration
					perturb_and_observe_cc_itter(BATTERY_AHR*0.05f);
					
					
					if ( counter > 10 )
						{
						set_current_compensation(BATTERY_AHR*0.05f, batt_current);
							
						if (sol_power < P_NIGHT_MODE)
						{
							if (set_mppt() < (P_NIGHT_MODE*1.2))
							{
								cc_state = NIGHT_MODE;
								printf("INFO: Starting Night Mode State\n");
								break;
							}
							printf("INFO: Rescaned Power and Night mode not entered \n");
						}
					}
				}
				else
				{
					//If greater than 30s, reset.
					if ( counter > 300)
					{
						counter = 0;
						pulse = 1;
					}
					//Diable the MPPT Charging Circuit
					GPIO_ResetBits(GPIOB, GPIO_Pin_0);
				}
				
								
				if (batt_voltage > v_high)
				{
					cc_state = FULLY_CHARGED;
					printf("INFO: Starting Fully Charged Charging State at V=%f \n", batt_voltage);
					break;
				}
				
				//100ms delay
				os_dly_wait(10);				
				break;
			case FULLY_CHARGED:
				//Regulate so that Battery current = 0
					//This means that the battery is no longer charged
					//But the panel is used to power any connected load
			
				//Diable the MPPT Charging Circuit
				GPIO_ResetBits(GPIOB, GPIO_Pin_0);				
			
				//Check when to start recharging again.
				if (batt_voltage < v_restart)
				{
					cc_state = BULK_CHARGING;
					printf("INFO: Restarting the Bulk Charging State \n");
					break;
				}
			
				//5s delay
				os_dly_wait(500);
				break;
			
			case NIGHT_MODE:
				//Check every 5 minutes
				//Counter used so that LVDC is still
				//checked every 5 seconds
				if (++counter > 60)
				{
					//Enable MPPT Circuit
					GPIO_SetBits(GPIOB, GPIO_Pin_0);
				
					if (set_mppt() > (P_NIGHT_MODE*1.2)) 
					{
						cc_state = BULK_CHARGING;
						printf("INFO: Exiting Night Mode\n");
						break;
					}
					
					//Diable the MPPT Charging Circuit
					//GPIO_ResetBits(GPIOB, GPIO_Pin_0);
					set_duty_cycle(100);
					
					counter = 0;
				}
				
				//5 second wait time
				os_dly_wait(500);			
				
				break;
			default:
				cc_state = BULK_CHARGING;
				printf("ERROR: Charging State machine entered Unknown State. Restarting with Bulk Charging \n");
		}
	}
}

float calc_lvdc ( float current )
{
	if ( current < (-5.0f * BATTERY_AHR) )
		return 9.0f;
	else if ( current < (-0.1f * BATTERY_AHR) )
		return ( (current / BATTERY_AHR) * (2.2f / 4.9f) ) + 11.2449f;
	else
		return 11.2f;
}


//For explainations of these compensation values please read project report.
void set_temperature_compensation( float temp )
{
	if ( temp < 5 )
	{
		v_high = 14.7;
		pulse_duty = 0.167f;
	}
	else if ( temp < 25 )
	{
		v_high = 14.7;
		pulse_duty = (0.00815f * temp) + 0.1265f;
	}
	else if ( temp < 50 )
	{
		v_high = 16.2f - (0.06f * temp);
		pulse_duty = 0.33f;
	}
	else
	{
		v_high = 13.2;
		pulse_duty = 0.33f;
	}
}

void set_current_compensation (float target_current, float measured_current)
{
	float current_ratio = target_current / measured_current;
	
	if ( current_ratio < 0.25f)
		v_high = v_high * 0.897959184f;
	else
		v_high = v_high * ( (2*current_ratio + 12.7f) / 14.7f);
}


