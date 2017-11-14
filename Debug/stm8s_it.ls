   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  14                     	bsct
  15  0000               _u64TickMs:
  16  0000 00000000      	dc.l	0
  17  0004               _u64TickTempMs:
  18  0004 00000000      	dc.l	0
  19  0008               _u64TickS:
  20  0008 00000000      	dc.l	0
  21  000c               _u64TickTempUs:
  22  000c 00000000      	dc.l	0
  23  0010               _u16PwmTick:
  24  0010 0000          	dc.w	0
  53                     ; 72 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  53                     ; 73 {
  54                     	switch	.text
  55  0000               f_TRAP_IRQHandler:
  59                     ; 77 }
  62  0000 80            	iret
  84                     ; 84 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  84                     ; 85 
  84                     ; 86 {
  85                     	switch	.text
  86  0001               f_TLI_IRQHandler:
  90                     ; 90 }
  93  0001 80            	iret
 115                     ; 97 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 115                     ; 98 {
 116                     	switch	.text
 117  0002               f_AWU_IRQHandler:
 121                     ; 102 }
 124  0002 80            	iret
 146                     ; 109 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 146                     ; 110 {
 147                     	switch	.text
 148  0003               f_CLK_IRQHandler:
 152                     ; 114 }
 155  0003 80            	iret
 178                     ; 121 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 178                     ; 122 {
 179                     	switch	.text
 180  0004               f_EXTI_PORTA_IRQHandler:
 184                     ; 126 }
 187  0004 80            	iret
 210                     ; 133 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 210                     ; 134 {
 211                     	switch	.text
 212  0005               f_EXTI_PORTB_IRQHandler:
 216                     ; 138 }
 219  0005 80            	iret
 242                     ; 145 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 242                     ; 146 {
 243                     	switch	.text
 244  0006               f_EXTI_PORTC_IRQHandler:
 248                     ; 150 }
 251  0006 80            	iret
 274                     ; 157 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 274                     ; 158 {
 275                     	switch	.text
 276  0007               f_EXTI_PORTD_IRQHandler:
 280                     ; 162 }
 283  0007 80            	iret
 306                     ; 169 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 306                     ; 170 {
 307                     	switch	.text
 308  0008               f_EXTI_PORTE_IRQHandler:
 312                     ; 174 }
 315  0008 80            	iret
 337                     ; 221 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 337                     ; 222 {
 338                     	switch	.text
 339  0009               f_SPI_IRQHandler:
 343                     ; 226 }
 346  0009 80            	iret
 369                     ; 233 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 369                     ; 234 {
 370                     	switch	.text
 371  000a               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 375                     ; 238 }
 378  000a 80            	iret
 401                     ; 245 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 401                     ; 246 {
 402                     	switch	.text
 403  000b               f_TIM1_CAP_COM_IRQHandler:
 407                     ; 250 }
 410  000b 80            	iret
 433                     ; 283  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 433                     ; 284  {
 434                     	switch	.text
 435  000c               f_TIM2_UPD_OVF_BRK_IRQHandler:
 439                     ; 288  }
 442  000c 80            	iret
 465                     ; 295  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 465                     ; 296  {
 466                     	switch	.text
 467  000d               f_TIM2_CAP_COM_IRQHandler:
 471                     ; 300  }
 474  000d 80            	iret
 497                     ; 337  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 497                     ; 338  {
 498                     	switch	.text
 499  000e               f_UART1_TX_IRQHandler:
 503                     ; 342  }
 506  000e 80            	iret
 534                     ; 352  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 534                     ; 353  {
 535                     	switch	.text
 536  000f               f_UART1_RX_IRQHandler:
 538  000f 3b0002        	push	c_x+2
 539  0012 be00          	ldw	x,c_x
 540  0014 89            	pushw	x
 541  0015 3b0002        	push	c_y+2
 542  0018 be00          	ldw	x,c_y
 543  001a 89            	pushw	x
 546                     ; 358 		if(UART1_GetFlagStatus(UART1_FLAG_RXNE) != RESET)
 548  001b ae0020        	ldw	x,#32
 549  001e cd0000        	call	_UART1_GetFlagStatus
 551  0021 4d            	tnz	a
 552  0022 2721          	jreq	L112
 553                     ; 361 			u8RcvBuf[u8RcvBufOffset++] = UART1_ReceiveData8();
 555  0024 b600          	ld	a,_u8RcvBufOffset
 556  0026 97            	ld	xl,a
 557  0027 3c00          	inc	_u8RcvBufOffset
 558  0029 9f            	ld	a,xl
 559  002a 5f            	clrw	x
 560  002b 97            	ld	xl,a
 561  002c 89            	pushw	x
 562  002d cd0000        	call	_UART1_ReceiveData8
 564  0030 85            	popw	x
 565  0031 e700          	ld	(_u8RcvBuf,x),a
 566                     ; 362 			g_u8LastRecvTickMs = 0;
 568  0033 ae0000        	ldw	x,#0
 569  0036 bf02          	ldw	_g_u8LastRecvTickMs+2,x
 570  0038 ae0000        	ldw	x,#0
 571  003b bf00          	ldw	_g_u8LastRecvTickMs,x
 572                     ; 363 			if(u8RcvBufOffset>=MAX_UART_RCV_BUF)
 574  003d b600          	ld	a,_u8RcvBufOffset
 575  003f a140          	cp	a,#64
 576  0041 2502          	jrult	L112
 577                     ; 365 				u8RcvBufOffset = 0;
 579  0043 3f00          	clr	_u8RcvBufOffset
 580  0045               L112:
 581                     ; 369  }
 584  0045 85            	popw	x
 585  0046 bf00          	ldw	c_y,x
 586  0048 320002        	pop	c_y+2
 587  004b 85            	popw	x
 588  004c bf00          	ldw	c_x,x
 589  004e 320002        	pop	c_x+2
 590  0051 80            	iret
 612                     ; 377 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 612                     ; 378 {
 613                     	switch	.text
 614  0052               f_I2C_IRQHandler:
 618                     ; 382 }
 621  0052 80            	iret
 643                     ; 456  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 643                     ; 457  {
 644                     	switch	.text
 645  0053               f_ADC1_IRQHandler:
 649                     ; 461  }
 652  0053 80            	iret
 679                     .const:	section	.text
 680  0000               L25:
 681  0000 000003e8      	dc.l	1000
 682                     ; 482  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 682                     ; 483  {
 683                     	switch	.text
 684  0054               f_TIM4_UPD_OVF_IRQHandler:
 686  0054 3b0002        	push	c_x+2
 687  0057 be00          	ldw	x,c_x
 688  0059 89            	pushw	x
 689  005a 3b0002        	push	c_y+2
 690  005d be00          	ldw	x,c_y
 691  005f 89            	pushw	x
 692  0060 be02          	ldw	x,c_lreg+2
 693  0062 89            	pushw	x
 694  0063 be00          	ldw	x,c_lreg
 695  0065 89            	pushw	x
 698                     ; 493 		u64TickTempMs ++;
 700  0066 ae0004        	ldw	x,#_u64TickTempMs
 701  0069 a601          	ld	a,#1
 702  006b cd0000        	call	c_lgadc
 704                     ; 494 		u64TickMs ++;
 706  006e ae0000        	ldw	x,#_u64TickMs
 707  0071 a601          	ld	a,#1
 708  0073 cd0000        	call	c_lgadc
 710                     ; 497 		if(u64TickTempMs>=1000)
 712  0076 ae0004        	ldw	x,#_u64TickTempMs
 713  0079 cd0000        	call	c_ltor
 715  007c ae0000        	ldw	x,#L25
 716  007f cd0000        	call	c_lcmp
 718  0082 2512          	jrult	L542
 719                     ; 499 			u64TickS ++;
 721  0084 ae0008        	ldw	x,#_u64TickS
 722  0087 a601          	ld	a,#1
 723  0089 cd0000        	call	c_lgadc
 725                     ; 500 			u64TickTempMs = 0;
 727  008c ae0000        	ldw	x,#0
 728  008f bf06          	ldw	_u64TickTempMs+2,x
 729  0091 ae0000        	ldw	x,#0
 730  0094 bf04          	ldw	_u64TickTempMs,x
 731  0096               L542:
 732                     ; 551 	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
 734  0096 a601          	ld	a,#1
 735  0098 cd0000        	call	_TIM4_ClearFlag
 737                     ; 552  }
 740  009b 85            	popw	x
 741  009c bf00          	ldw	c_lreg,x
 742  009e 85            	popw	x
 743  009f bf02          	ldw	c_lreg+2,x
 744  00a1 85            	popw	x
 745  00a2 bf00          	ldw	c_y,x
 746  00a4 320002        	pop	c_y+2
 747  00a7 85            	popw	x
 748  00a8 bf00          	ldw	c_x,x
 749  00aa 320002        	pop	c_x+2
 750  00ad 80            	iret
 773                     ; 560 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 773                     ; 561 {
 774                     	switch	.text
 775  00ae               f_EEPROM_EEC_IRQHandler:
 779                     ; 565 }
 782  00ae 80            	iret
 851                     	xref.b	_g_u8LastRecvTickMs
 852                     	xref.b	_u8RcvBufOffset
 853                     	xref.b	_u8RcvBuf
 854                     	switch	.ubsct
 855  0000               _u16PwmDuty:
 856  0000 000000000000  	ds.b	12
 857                     	xdef	_u16PwmDuty
 858                     	xdef	_u16PwmTick
 859                     	xdef	_u64TickTempUs
 860                     	xdef	_u64TickS
 861                     	xdef	_u64TickTempMs
 862                     	xdef	_u64TickMs
 863                     	xdef	f_EEPROM_EEC_IRQHandler
 864                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 865                     	xdef	f_ADC1_IRQHandler
 866                     	xdef	f_I2C_IRQHandler
 867                     	xdef	f_UART1_RX_IRQHandler
 868                     	xdef	f_UART1_TX_IRQHandler
 869                     	xdef	f_TIM2_CAP_COM_IRQHandler
 870                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 871                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 872                     	xdef	f_TIM1_CAP_COM_IRQHandler
 873                     	xdef	f_SPI_IRQHandler
 874                     	xdef	f_EXTI_PORTE_IRQHandler
 875                     	xdef	f_EXTI_PORTD_IRQHandler
 876                     	xdef	f_EXTI_PORTC_IRQHandler
 877                     	xdef	f_EXTI_PORTB_IRQHandler
 878                     	xdef	f_EXTI_PORTA_IRQHandler
 879                     	xdef	f_CLK_IRQHandler
 880                     	xdef	f_AWU_IRQHandler
 881                     	xdef	f_TLI_IRQHandler
 882                     	xdef	f_TRAP_IRQHandler
 883                     	xref	_UART1_GetFlagStatus
 884                     	xref	_UART1_ReceiveData8
 885                     	xref	_TIM4_ClearFlag
 886                     	xref.b	c_lreg
 887                     	xref.b	c_x
 888                     	xref.b	c_y
 908                     	xref	c_lcmp
 909                     	xref	c_ltor
 910                     	xref	c_lgadc
 911                     	end
