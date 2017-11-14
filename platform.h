#ifndef __PLATFORM_H__
#define __PLATFORM_H__
#define DEBUG_UART 1
#define ENABLE_PWM	0
#define ENABLE_IO		1
#define ENABLE_UART 1
#define ENABLE_PWM1	0
#define ENABLE_PWM2 0

#if DEBUG_UART
	#include <stdio.h>
#endif

#if ENABLE_IO
	#include "stm8s_gpio.h"
#endif
#if ENABLE_UART
	#include "stm8s_uart1.h"
	void putstr(char* str);
#endif
//
#if ENABLE_PWM
	#if ENABLE_PWM1
		#include "stm8s_tim1.h"
	#endif
	#if ENABLE_PWM2
		#include "stm8s_tim2.h"
	#endif
#endif



#endif