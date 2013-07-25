#ifndef __standalone_config_h
#define __standalone_config_h

#include "stm32f0xx.h"
#include <RTL.h>
#include <stdio.h>

#include "trace.h"

//#define DEBUG

#ifdef DEBUG
	#define USE_FULL_ASSERT
#endif

#define BOX_TYPE	HOME

#if BOX_TYPE == HOME
	#define BATTERY_AHR 	7.0f
	#define PV_PANEL_PEAK	7.0f
#endif

#define CODE_AUTHOR "Ashley Grealish"
#define CODE_AUTHOR_EMAIL "ag5509@ic.ac.uk"

#endif
