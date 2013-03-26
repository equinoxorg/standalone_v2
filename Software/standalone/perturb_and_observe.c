#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>
#include "adc.h"
#include "pwm.h"

#define DUTY_CYCLE_INC (float)0.1f
#define V_SCALE (float)((10.0f + 1.32f) / 1.32f )
#define I_SCALE (float)1.515f

#define NO_AVG 128

__task void perturb_and_observe (void) {
	float duty_cycle = 100.0f;
	float v_panel, i_panel, p_panel, delta_v, delta_p;
	float p_panel_delay = 0.0f, v_panel_delay = 0.0f;  
	int i;
	
	while (1)
	{
		//Read in v_panel and i_panel
		v_panel = 0.0f;
		for (i=0; i<NO_AVG; i++)
			v_panel += get_adc_voltage(ADC_Channel_10) * V_SCALE; //PC0
		v_panel /= (float)NO_AVG;
		
		i_panel = 0.0f;
		for (i=0; i<NO_AVG; i++)
			i_panel += get_adc_voltage(ADC_Channel_11) * I_SCALE; //PC1
		i_panel /= (float)NO_AVG;

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
		
		
		printf("V=%.2f, I=%.2f, P=%.2f, duty=%f\n\r", v_panel, i_panel, p_panel, duty_cycle);
		
		os_dly_wait(100);
	}
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
