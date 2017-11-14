#include "protocol.h"
#include "platform.h"
//#include "dh_iot.h"
//#include "dh_dimming.h"
#include "uart.h"

extern unsigned char g_uart_rcv_len;
extern unsigned char u8PwmDuty[8];
//t_soc g_soc;
int beep_state = 0;
void handle_rcv_data(unsigned char* buf, int len)
{
	int ret = 0;
	unsigned char chksum=0;
	unsigned short u16Duty=0;
//	t_iot iot;
	//len = g_uart_rcv_len;
	//g_uart_rcv_len = 0;
//	putstr("rcv:\n");
	print_data(buf,len);
	
#if 1
	if(len!=15)
		return;
	for(ret=0; ret<14; ret++)
	{
		chksum += buf[ret];
	}
	if(buf[ret] != chksum)
	{
		putstr("chksum err:");
		print_hex(chksum);
		putstr("\n");
		return;
	}
	if(2!=buf[0])
	{
		putstr("ver err:");
		print_hex(buf[0]);
		putstr("\n");
		return;
	}
	
	
	return;
#endif
}


