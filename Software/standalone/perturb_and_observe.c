#include "perturb_and_observe.h"
#include "trace.h"

//Private Variables
float duty_cycle = 100.0f;

__task void perturb_and_observe (void) {
	
	init_pwm(40000);
	init_adc();
	
	while (1)
	{
		perturb_and_observe_itter();
		os_dly_wait(P_AND_O_PERIOD);
	}
	
}

float set_mppt (void)
{
	float duty_cycle_sweep, duty_cycle_max = 100.0f;
	float v_panel, i_panel, p_panel;//, v_batt, i_batt;
	float p_panel_max = 0.0f;
	
	for ( duty_cycle_sweep = 0; duty_cycle_sweep < 100; duty_cycle_sweep++)
	{
		set_duty_cycle(duty_cycle_sweep);
		
		os_dly_wait(10);
		
		//Read in v_panel and i_panel
		v_panel = get_adc_voltage(ADC_SOL_V);
		i_panel = get_adc_voltage(ADC_SOL_I);
		//v_batt = get_adc_voltage(ADC_BATT_V);
		//i_batt = get_adc_voltage(ADC_BATT_I);
		
		p_panel = v_panel * i_panel;
		
		if ( p_panel > p_panel_max)
		{
			p_panel_max = p_panel;
			duty_cycle_max = duty_cycle_sweep;
		}
		
		//printf("Duty cycle=%f, P_SOL=%.4f, V_SOL=%.4f, I_SOL=%.4f, V_BATT=%.4f, I_BATT=%.4f, TEMP=%.4f\n", duty_cycle_sweep, p_panel, v_panel, i_panel, v_batt, i_batt, get_adc_voltage(ADC_TEMP));
	}
	
	//printf("Duty cycle max: %f, with P=%f\n", duty_cycle_max, p_panel_max);
	
	duty_cycle = duty_cycle_max;
	
	return p_panel_max;
}

void perturb_and_observe_itter (void)
{
	//Start p&o algorithm with  a 1000A target current
	//1000A is never achivable so will MPPT to extract as
	//much power as possible.
	perturb_and_observe_cc_itter (1000.0f);
}

void perturb_and_observe_cc_itter (float i_batt_cc) {

	float v_panel, i_panel, p_panel, delta_v, delta_p;
	float i_batt;
	static float p_panel_delay = 0.0f, v_panel_delay = 0.0f;
	
	//Read in v_panel and i_panel
	v_panel = get_adc_voltage(ADC_SOL_V);
	i_panel = get_adc_voltage(ADC_SOL_I);
	
	i_batt = get_adc_voltage(ADC_BATT_I);
	
	p_panel = v_panel * i_panel;
	
	delta_p = p_panel - p_panel_delay;
	delta_v = v_panel - v_panel_delay;
	
	if (i_batt > i_batt_cc)
		//Increase operating voltage
		duty_cycle -= DUTY_CYCLE_INC;
	else if (delta_p > 0)
	{
		if (delta_v > 0)
			//Increase operating voltage
			duty_cycle -= DUTY_CYCLE_INC;
		else
			//Decrease operating voltage
			duty_cycle += DUTY_CYCLE_INC;
	}
	else
	{
		if (delta_v > 0)
			//Decrease operating voltage
			duty_cycle += DUTY_CYCLE_INC;
		else
			//Increase operating voltage
			duty_cycle -= DUTY_CYCLE_INC; 
	}
	 
	if (duty_cycle > 100.0f)
			duty_cycle = 100.0f;
	else if (duty_cycle < 0.0f)
			duty_cycle = 0.0f;

	p_panel_delay = p_panel;
	v_panel_delay = v_panel;  
	
	/*Set PWM to duty_cycle*/
	set_duty_cycle(duty_cycle);
		
	//printf("V_SOL=%.2f \t I_SOL=%.2f \t P_SOL=%.2f \t duty=%f \n", v_panel, i_panel, p_panel, duty_cycle);
	
}
