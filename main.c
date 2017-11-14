/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
 
#include "platform.h"

#include "stm8s_it.h"
#include "protocol.h"
#include "stm8s_tim4.h"
#include "stm8s_spi.h"
#include "stm8s_iwdg.h"
#include "stm8s_beep.h"
#include "stm8s_gpio.h"
#if DEBUG_UART
#include <stdio.h>
#endif
//#include <string.h>
unsigned char u8RcvBuf[MAX_UART_RCV_BUF];
 unsigned char u8RcvBufOffset;
 unsigned long g_u8LastRecvTickMs;
extern unsigned long  u64TickMs;
extern unsigned long  u64TickS;

void wtd_task(void);


#if ENABLE_PWM
void init_pwm(void);
#endif 

void init_uart(u32 baud);

int i=0;
int main()
{
	 _asm("rim"); //这是必须的，因为系统重启后，软件中断级别为3级，处于最高级，除了TRAP,TLI,RESET三个中断外不响应其他中断。
	IWDG_SetPrescaler(IWDG_Prescaler_256);
	IWDG_SetReload(128);
	CLK->SWCR |= 0x02; //开启切换
  CLK->SWR   = 0xb4;		//选择时钟为外部12M
  while((CLK->SWCR & 0x01)==0x01);
  CLK->CKDIVR = 0x80;	//不分频
  CLK->SWCR  &= ~0x02; //关闭切换
	#if ENABLE_IO
	// pwr en output
	GPIO_Init(GPIOA,GPIO_PIN_3,GPIO_MODE_OUT_PP_LOW_FAST);
	// wtd input pulse
	GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOC,GPIO_PIN_4,GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_IN_PU_NO_IT);
	// timer tick
	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_Init(GPIOD,GPIO_PIN_2,GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_OUT_PP_HIGH_FAST);
	#endif
	GPIO_WriteLow(GPIOA,GPIO_PIN_3); // pwr ON

	
	init_uart(115200);
	for(i=0;i<1000;i++){
		putstr(".");
	}
		

	#if 1	// systick
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
	// 4M/125=32000tick/s  ,32000/256level=125Hz
	TIM4_DeInit();
	TIM4_TimeBaseInit(TIM4_PRESCALER_128,125);
	TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
//	TIM4_UpdateRequestConfig(TIM4_UPDATESOURCE_REGULAR);
	TIM4_GenerateEvent(TIM4_EVENTSOURCE_UPDATE);
	//TIM4_SetCounter(125);////设置计数器值
	//TIM4_SetAutoreload(125);
	TIM4_Cmd(ENABLE);
	#endif


 // IWDG_Enable();

	
	while (1)
	{
	
	
	//	GPIO_WriteLow(GPIOD,GPIO_PIN_3);
	//GPIO_WriteHigh(GPIOD,GPIO_PIN_3);
//	GPIO_WriteLow(GPIOC,GPIO_PIN_3);
		IWDG_ReloadCounter();
	//printf("%d ",i++);
		#if 1
		wtd_task();
		#endif
	//printf("%llu%\n",g_u64CurrentTickMs);
		
	}
	return 0;
}

void init_uart(u32 baud)
{
	#if ENABLE_UART
	UART1_DeInit();
	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_OD_LOW_FAST);      //USART2_TX-PD5
	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);        //USART2_RX-PD6       
	
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);
	UART1_Init(baud, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
	UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
	UART1_Cmd(ENABLE);
	
	//enableInterrupts();
	#endif
}

#ifdef __GNUC__ 
/*
	#ifdef _RAISONANCE_
		#define PUTCHAR_PROTOTYPE int putchar (char c)
		#define GETCHAR_PROTOTYPE int getchar (void)
	#elif defined (_COSMIC_)*/
		#define PUTCHAR_PROTOTYPE char putchar (char c)
	//	#define GETCHAR_PROTOTYPE char getchar (void)
/*	#else 
		#define PUTCHAR_PROTOTYPE int putchar (int c)
		#define GETCHAR_PROTOTYPE int getchar (void)*/
#endif /* _RAISONANCE_ */

//PUTCHAR_PROTOTYPE 
char putchar (char c)
{ 
//	return 0;
//发送数据代码
#if ENABLE_UART
	UART1_SendData8(c);
	while(!UART1_GetFlagStatus(UART1_FLAG_TXE));
	UART1_ClearFlag(UART1_FLAG_TXE);
#endif
	return c; 
} 

unsigned long g_u64CurrentTickS;
#define MAX_WTD_PULSE_CNT 300
unsigned char wtd_input_val = 0;
unsigned char wtd_last_input_val = 0;
int wtd_pulse_cnt = 0;
unsigned int pwr_state = 0;
void wtd_task(void)
{
	GPIOC->ODR ^= (uint8_t)GPIO_PIN_7;
	if(g_u64CurrentTickS != u64TickS)
	{
		//printf("%d ",i++);
		GPIOD->ODR ^= (uint8_t)GPIO_PIN_2;
		g_u64CurrentTickS = u64TickS;
		printf("%lu,\t",u64TickS);
		if(0==pwr_state)
		{
			wtd_input_val = ((uint8_t)GPIOC->IDR)>>3;
			wtd_input_val = (wtd_input_val&0x7);
			printf("in:%d, cnt:%d\r\n",(int)wtd_input_val,wtd_pulse_cnt);
			if(wtd_input_val != wtd_last_input_val)
			{
				wtd_last_input_val = wtd_input_val;
				wtd_pulse_cnt = 0;
			}
			else
			{
					wtd_pulse_cnt ++;
					if(wtd_pulse_cnt>MAX_WTD_PULSE_CNT)
					{
						GPIO_WriteHigh(GPIOA,GPIO_PIN_3); // pwr off
						printf("pwr off:%d\n",pwr_state);
						pwr_state ++;
						wtd_pulse_cnt = 0;
					}
			}
		}
		else
		{
			pwr_state ++;
			printf("pwr off:%d\n",pwr_state);
			if(pwr_state>10)
			{
				pwr_state = 0;
				printf("pwr on:%d\n",pwr_state);
				GPIO_WriteLow(GPIOA,GPIO_PIN_3); // pwr on
			}
		}
	}
}
