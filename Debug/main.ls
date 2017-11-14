   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  14                     	xref	_putchar
  56                     ; 44 void putstr(char* str)
  56                     ; 45 {
  58                     	switch	.text
  59  0000               _putstr:
  61  0000 89            	pushw	x
  62       00000000      OFST:	set	0
  65  0001 200e          	jra	L13
  66  0003               L72:
  67                     ; 48 		putchar(*str++);
  69  0003 1e01          	ldw	x,(OFST+1,sp)
  70  0005 1c0001        	addw	x,#1
  71  0008 1f01          	ldw	(OFST+1,sp),x
  72  000a 1d0001        	subw	x,#1
  73  000d f6            	ld	a,(x)
  74  000e cd00c0        	call	_putchar
  76  0011               L13:
  77                     ; 46 	while(*str)
  79  0011 1e01          	ldw	x,(OFST+1,sp)
  80  0013 7d            	tnz	(x)
  81  0014 26ed          	jrne	L72
  82                     ; 50 }
  85  0016 85            	popw	x
  86  0017 81            	ret
  89                     	bsct
  90  0000               _g_uart_rcv_len:
  91  0000 00            	dc.b	0
  92  0001               _u8RcvBufOffset:
  93  0001 00            	dc.b	0
  94  0002               _g_u8LastRecvTickMs:
  95  0002 00000000      	dc.l	0
 130                     ; 61 int main()
 130                     ; 62 {
 131                     	switch	.text
 132  0018               _main:
 136                     ; 66 	 _asm("rim"); //这是必须的，因为系统重启后，软件中断级别为3级，处于最高级，除了TRAP,TLI,RESET三个中断外不响应其他中断。
 139  0018 9a            rim
 141                     ; 67 	IWDG_SetPrescaler(IWDG_Prescaler_256);
 143  0019 a606          	ld	a,#6
 144  001b cd0000        	call	_IWDG_SetPrescaler
 146                     ; 68 	IWDG_SetReload(128);
 148  001e a680          	ld	a,#128
 149  0020 cd0000        	call	_IWDG_SetReload
 151                     ; 70 	init_uart(115200);
 153  0023 aec200        	ldw	x,#49664
 154  0026 89            	pushw	x
 155  0027 ae0001        	ldw	x,#1
 156  002a 89            	pushw	x
 157  002b ad4d          	call	_init_uart
 159  002d 5b04          	addw	sp,#4
 160                     ; 71 	putstr("dh_uart init end\n");
 162  002f ae0000        	ldw	x,#L54
 163  0032 adcc          	call	_putstr
 165                     ; 86 	GPIO_Init(GPIOC,GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_6|GPIO_PIN_7,GPIO_MODE_OUT_PP_LOW_FAST);
 167  0034 4be0          	push	#224
 168  0036 4bd8          	push	#216
 169  0038 ae500a        	ldw	x,#20490
 170  003b cd0000        	call	_GPIO_Init
 172  003e 85            	popw	x
 173                     ; 87 	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_PP_LOW_FAST);
 175  003f 4be0          	push	#224
 176  0041 4b08          	push	#8
 177  0043 ae500f        	ldw	x,#20495
 178  0046 cd0000        	call	_GPIO_Init
 180  0049 85            	popw	x
 181                     ; 92 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER4, ENABLE);
 183  004a ae0001        	ldw	x,#1
 184  004d a604          	ld	a,#4
 185  004f 95            	ld	xh,a
 186  0050 cd0000        	call	_CLK_PeripheralClockConfig
 188                     ; 94 	TIM4_DeInit();
 190  0053 cd0000        	call	_TIM4_DeInit
 192                     ; 95 	TIM4_TimeBaseInit(TIM4_PRESCALER_8,249);
 194  0056 ae00f9        	ldw	x,#249
 195  0059 a603          	ld	a,#3
 196  005b 95            	ld	xh,a
 197  005c cd0000        	call	_TIM4_TimeBaseInit
 199                     ; 96 	TIM4_ITConfig(TIM4_IT_UPDATE,ENABLE);
 201  005f ae0001        	ldw	x,#1
 202  0062 a601          	ld	a,#1
 203  0064 95            	ld	xh,a
 204  0065 cd0000        	call	_TIM4_ITConfig
 206                     ; 98 	TIM4_GenerateEvent(TIM4_EVENTSOURCE_UPDATE);
 208  0068 a601          	ld	a,#1
 209  006a cd0000        	call	_TIM4_GenerateEvent
 211                     ; 101 	TIM4_Cmd(ENABLE);
 213  006d a601          	ld	a,#1
 214  006f cd0000        	call	_TIM4_Cmd
 216                     ; 108   IWDG_Enable();
 218  0072 cd0000        	call	_IWDG_Enable
 220  0075               L74:
 221                     ; 113 	IWDG_ReloadCounter();
 223  0075 cd0000        	call	_IWDG_ReloadCounter
 226  0078 20fb          	jra	L74
 266                     ; 177 void init_uart(u32 baud)
 266                     ; 178 {
 267                     	switch	.text
 268  007a               _init_uart:
 270       00000000      OFST:	set	0
 273                     ; 180 	UART1_DeInit();
 275  007a cd0000        	call	_UART1_DeInit
 277                     ; 181 	GPIO_Init(GPIOD, GPIO_PIN_5, GPIO_MODE_OUT_OD_LOW_FAST);      //USART2_TX-PD5
 279  007d 4ba0          	push	#160
 280  007f 4b20          	push	#32
 281  0081 ae500f        	ldw	x,#20495
 282  0084 cd0000        	call	_GPIO_Init
 284  0087 85            	popw	x
 285                     ; 182 	GPIO_Init(GPIOD, GPIO_PIN_6, GPIO_MODE_IN_PU_NO_IT);        //USART2_RX-PD6       
 287  0088 4b40          	push	#64
 288  008a 4b40          	push	#64
 289  008c ae500f        	ldw	x,#20495
 290  008f cd0000        	call	_GPIO_Init
 292  0092 85            	popw	x
 293                     ; 184 	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);
 295  0093 ae0001        	ldw	x,#1
 296  0096 a603          	ld	a,#3
 297  0098 95            	ld	xh,a
 298  0099 cd0000        	call	_CLK_PeripheralClockConfig
 300                     ; 185 	UART1_Init(baud, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 302  009c 4b0c          	push	#12
 303  009e 4b80          	push	#128
 304  00a0 4b00          	push	#0
 305  00a2 4b00          	push	#0
 306  00a4 4b00          	push	#0
 307  00a6 1e0a          	ldw	x,(OFST+10,sp)
 308  00a8 89            	pushw	x
 309  00a9 1e0a          	ldw	x,(OFST+10,sp)
 310  00ab 89            	pushw	x
 311  00ac cd0000        	call	_UART1_Init
 313  00af 5b09          	addw	sp,#9
 314                     ; 186 	UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
 316  00b1 4b01          	push	#1
 317  00b3 ae0205        	ldw	x,#517
 318  00b6 cd0000        	call	_UART1_ITConfig
 320  00b9 84            	pop	a
 321                     ; 187 	UART1_Cmd(ENABLE);
 323  00ba a601          	ld	a,#1
 324  00bc cd0000        	call	_UART1_Cmd
 326                     ; 191 }
 329  00bf 81            	ret
 366                     ; 207 char putchar (char c)
 366                     ; 208 { 
 367                     	switch	.text
 368  00c0               _putchar:
 370  00c0 88            	push	a
 371       00000000      OFST:	set	0
 374                     ; 212 	UART1_SendData8(c);
 376  00c1 cd0000        	call	_UART1_SendData8
 379  00c4               L111:
 380                     ; 213 	while(!UART1_GetFlagStatus(UART1_FLAG_TXE));
 382  00c4 ae0080        	ldw	x,#128
 383  00c7 cd0000        	call	_UART1_GetFlagStatus
 385  00ca 4d            	tnz	a
 386  00cb 27f7          	jreq	L111
 387                     ; 214 	UART1_ClearFlag(UART1_FLAG_TXE);
 389  00cd ae0080        	ldw	x,#128
 390  00d0 cd0000        	call	_UART1_ClearFlag
 392                     ; 216 	return c; 
 394  00d3 7b01          	ld	a,(OFST+1,sp)
 397  00d5 5b01          	addw	sp,#1
 398  00d7 81            	ret
 459                     	xdef	_putchar
 460                     	xdef	_main
 461                     	switch	.ubsct
 462  0000               _g_u64CurrentTickMs:
 463  0000 00000000      	ds.b	4
 464                     	xdef	_g_u64CurrentTickMs
 465                     	xdef	_g_u8LastRecvTickMs
 466                     	xdef	_u8RcvBufOffset
 467                     	xdef	_g_uart_rcv_len
 468  0004               _u8RcvBuf:
 469  0004 000000000000  	ds.b	64
 470                     	xdef	_u8RcvBuf
 471                     	xdef	_init_uart
 472                     	xdef	_putstr
 473                     	xref	_GPIO_Init
 474                     	xref	_UART1_ClearFlag
 475                     	xref	_UART1_GetFlagStatus
 476                     	xref	_UART1_SendData8
 477                     	xref	_UART1_ITConfig
 478                     	xref	_UART1_Cmd
 479                     	xref	_UART1_Init
 480                     	xref	_UART1_DeInit
 481                     	xref	_TIM4_GenerateEvent
 482                     	xref	_TIM4_ITConfig
 483                     	xref	_TIM4_Cmd
 484                     	xref	_TIM4_TimeBaseInit
 485                     	xref	_TIM4_DeInit
 486                     	xref	_IWDG_Enable
 487                     	xref	_IWDG_ReloadCounter
 488                     	xref	_IWDG_SetReload
 489                     	xref	_IWDG_SetPrescaler
 490                     	xref	_CLK_PeripheralClockConfig
 491                     .const:	section	.text
 492  0000               L54:
 493  0000 64685f756172  	dc.b	"dh_uart init end",10,0
 513                     	end
