#include "perturb_and_observe.h"

//Private Variables
float duty_cycle_start = 100.0f;

/* TODO:
 * Move scaling of adc reads and filtering to adc code files
 */

__task void perturb_and_observe (void) {
	
	init_pwm(40000);
	
	while (1)
	{
		perturb_and_observe_itter();
		os_dly_wait(P_AND_O_PERIOD);
	}
	
}

void set_mppt (void)
{
	float duty_cycle, duty_cycle_max = 100.0f;
	float v_panel, i_panel, p_panel;
	float p_panel_max = 0.0f;
	
	for ( duty_cycle = 0; duty_cycle < 100; duty_cycle++)
	{
		set_duty_cycle(duty_cycle);
		
		os_dly_wait(1);
		
		//Read in v_panel and i_panel
		v_panel = get_adc_voltage(ADC_SOL_V);
		i_panel = get_adc_voltage(ADC_SOL_I);
		
		p_panel = v_panel * i_panel;
		
		if ( p_panel > p_panel_max)
		{
			p_panel_max = p_panel;
			duty_cycle_max = duty_cycle;
		}
		
		printf("Duty cycle: %f \t\t P=%f \n", duty_cycle, p_panel);
	}
	
	printf("Duty cycle max: %f, with P=%f\n", duty_cycle_max, p_panel_max);
	
	duty_cycle_start = duty_cycle_max;
}

void perturb_and_observe_itter (void) {
	static float duty_cycle = -1.0f;
	float v_panel, i_panel, p_panel, delta_v, delta_p;
	static float p_panel_delay = 0.0f, v_panel_delay = 0.0f;
	
	if (duty_cycle == -1.0f )
		duty_cycle = duty_cycle_start;
	
	//Read in v_panel and i_panel
	v_panel = get_adc_voltage(ADC_SOL_V);
	i_panel = get_adc_voltage(ADC_SOL_I);
	
	p_panel = v_panel * i_panel;
	
	delta_p = p_panel - p_panel_delay;
	delta_v = v_panel - v_panel_delay;
	
	if (delta_p == 0)
	{
			//duty_cycle = duty_cycle_delay;
	}
	else if (delta_p > 0)
	{
		if (delta_v > 0)
			duty_cycle -= DUTY_CYCLE_INC;
		else
			duty_cycle += DUTY_CYCLE_INC;
	}
	else
	{
		if (delta_v > 0)
			duty_cycle += DUTY_CYCLE_INC;
		else
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
		
	printf("V_SOL=%.2f \t I_SOL=%.2f \t P_SOL=%.2f \t duty=%f \n", v_panel, i_panel, p_panel, duty_cycle);
	
}

// Matlab version of P&O code:
/*
function duty_cycle = fcn( v_panel, i_panel)

    %Stores varialbe values over all fnctional calls
    persistent duty_cycle_delay p_panel_delay v_panel_delay;  
    
    %----------------Check variables for initailsation---------------------
    if isempty(v_panel)
        v_panel = 18;
    end
    if isempty(i_panel)
        i_panel = 0;
    end
    if isempty(duty_cycle_delay)
        duty_cycle_delay = 0.4;
    end
    if isempty(p_panel_delay)
        p_panel_delay = 0;
    end
    if isempty(v_panel_delay)
        v_panel_delay = v_panel;
    end 
    %----------------------------------------------------------------------
    
    p_panel = v_panel * i_panel;
    
    delta_p = p_panel - p_panel_delay;
    delta_v = v_panel - v_panel_delay;
    
    inc = 0.001;
    
    if delta_p == 0
        duty_cycle = duty_cycle_delay;
    elseif delta_p > 0
        if delta_v >= 0
            duty_cycle = duty_cycle_delay - inc;
        else
            duty_cycle = duty_cycle_delay + inc;
        end
    else
        if delta_v > 0
            duty_cycle = duty_cycle_delay + inc;
        else
            duty_cycle = duty_cycle_delay - inc;
        end   
    end       
     
    if duty_cycle > 1
        duty_cycle = 0;
    elseif duty_cycle < 0 
        duty_cycle = 0;
    end
    
    duty_cycle_delay = duty_cycle;
    p_panel_delay = p_panel;
    v_panel_delay = v_panel;   

end
*/
