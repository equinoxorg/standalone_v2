#ifndef __user_outputs_h
#define __user_outputs_h

#include "standalone_config.h"

//Public Functions
void usb_outputs_init (void);
void dc_outputs_init (void);

//Definitions
#define USB1_ENABLE()			GPIO_SetBits(GPIOF , GPIO_Pin_7 );
#define USB1_DISABLE()		GPIO_ResetBits(GPIOF , GPIO_Pin_7 );

#define USB2_ENABLE()			GPIO_SetBits(GPIOF , GPIO_Pin_6 );
#define USB2_DISABLE()		GPIO_ResetBits(GPIOF , GPIO_Pin_6 );

#define DC_ENABLE()				GPIO_SetBits(GPIOA ,GPIO_Pin_12 );
#define DC_DISABLE()			GPIO_ResetBits(GPIOA ,GPIO_Pin_12 );

#endif
