#include "perturb_and_observe.h"



/* TODO:
 * Move scaling of adc reads and filtering to adc code files
 */

__task void perturb_and_observe (void) {
	
	init_pwm(40000);
	
	while (1)
	{
		perturb_and_observe_itter();
		printf("P&O Itteration \n");
		os_dly_wait(P_AND_O_PERIOD);
	}
	
}

void perturb_and_observe_itter (void) {
	static float duty_cycle = 100.0f;
	float v_panel, i_panel, p_panel, delta_v, delta_p;
	static float p_panel_delay = 0.0f, v_panel_delay = 0.0f;
	
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
		
	printf("V_SOL=%.2f, I_SOL=%.2f, P_SOL=%.2f, duty=%f\n", v_panel, i_panel, p_panel, duty_cycle);
	
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
