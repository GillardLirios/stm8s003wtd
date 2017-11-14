#ifndef PROTOCOL_H__
#define PROTOCOL_H__
typedef struct{
	unsigned char version;
	unsigned char run_state:1;
	unsigned char is_bat_discharge:1;
	unsigned char pv_low_voltage:1;
	unsigned char is_bat_charge:1;
	unsigned char soc:4;
	unsigned short charge_current;
	unsigned short dischage_current;
	unsigned char buzzer_on_time;
	unsigned int rand;
	unsigned char checksum;
}t_soc;
void handle_rcv_data(unsigned char* buf, int len);

#endif