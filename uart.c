const char HEX[16] = {
	'0','1','2','3','4','5','6','7',
	'8','9','A','B','C','D','E','F',
};

void print_hex(unsigned char c)
{
	unsigned char hexh,hexl;
	hexl = c%16;
	hexh = c/16;
	putchar(HEX[hexh]);
	putchar(HEX[hexl]);
//	putchar('\t');
}
void print_data(unsigned char* buf, unsigned char len)
{
	unsigned char i;	
	unsigned char* ptr = buf;	
	unsigned char hexh,hexl;
	for(i = 0; i < len;)	
	{	
		hexh = *ptr++;
		print_hex(hexh);
		//putchar('x');
		i++;
		if(0==i%4)
		{
			putchar('\t');
			if(0==i%8)
				putchar('\n');
		}
	}
	putchar('\n');

}

#if 1
void putstr(char* str)
{
	while(*str)
	{
		putchar(*str++);
	}
}

#endif