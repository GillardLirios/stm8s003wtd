   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 46 void UART1_DeInit(void)
  42                     ; 47 {
  44                     	switch	.text
  45  0000               _UART1_DeInit:
  49                     ; 50     (void)UART1->SR;
  51  0000 c65230        	ld	a,21040
  52                     ; 51     (void)UART1->DR;
  54  0003 c65231        	ld	a,21041
  55                     ; 53     UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  57  0006 725f5233      	clr	21043
  58                     ; 54     UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  60  000a 725f5232      	clr	21042
  61                     ; 56     UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  63  000e 725f5234      	clr	21044
  64                     ; 57     UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  66  0012 725f5235      	clr	21045
  67                     ; 58     UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  69  0016 725f5236      	clr	21046
  70                     ; 59     UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  72  001a 725f5237      	clr	21047
  73                     ; 60     UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  75  001e 725f5238      	clr	21048
  76                     ; 62     UART1->GTR = UART1_GTR_RESET_VALUE;
  78  0022 725f5239      	clr	21049
  79                     ; 63     UART1->PSCR = UART1_PSCR_RESET_VALUE;
  81  0026 725f523a      	clr	21050
  82                     ; 64 }
  85  002a 81            	ret
 388                     .const:	section	.text
 389  0000               L01:
 390  0000 00000064      	dc.l	100
 391                     ; 83 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 391                     ; 84                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 391                     ; 85                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 391                     ; 86 {
 392                     	switch	.text
 393  002b               _UART1_Init:
 395  002b 520c          	subw	sp,#12
 396       0000000c      OFST:	set	12
 399                     ; 87     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 403                     ; 90     assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 405                     ; 91     assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 407                     ; 92     assert_param(IS_UART1_STOPBITS_OK(StopBits));
 409                     ; 93     assert_param(IS_UART1_PARITY_OK(Parity));
 411                     ; 94     assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 413                     ; 95     assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 415                     ; 98     UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 417  002d 72195234      	bres	21044,#4
 418                     ; 101     UART1->CR1 |= (uint8_t)WordLength;
 420  0031 c65234        	ld	a,21044
 421  0034 1a13          	or	a,(OFST+7,sp)
 422  0036 c75234        	ld	21044,a
 423                     ; 104     UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 425  0039 c65236        	ld	a,21046
 426  003c a4cf          	and	a,#207
 427  003e c75236        	ld	21046,a
 428                     ; 106     UART1->CR3 |= (uint8_t)StopBits;  
 430  0041 c65236        	ld	a,21046
 431  0044 1a14          	or	a,(OFST+8,sp)
 432  0046 c75236        	ld	21046,a
 433                     ; 109     UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 435  0049 c65234        	ld	a,21044
 436  004c a4f9          	and	a,#249
 437  004e c75234        	ld	21044,a
 438                     ; 111     UART1->CR1 |= (uint8_t)Parity;  
 440  0051 c65234        	ld	a,21044
 441  0054 1a15          	or	a,(OFST+9,sp)
 442  0056 c75234        	ld	21044,a
 443                     ; 114     UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 445  0059 725f5232      	clr	21042
 446                     ; 116     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 448  005d c65233        	ld	a,21043
 449  0060 a40f          	and	a,#15
 450  0062 c75233        	ld	21043,a
 451                     ; 118     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 453  0065 c65233        	ld	a,21043
 454  0068 a4f0          	and	a,#240
 455  006a c75233        	ld	21043,a
 456                     ; 121     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 458  006d 96            	ldw	x,sp
 459  006e 1c000f        	addw	x,#OFST+3
 460  0071 cd0000        	call	c_ltor
 462  0074 a604          	ld	a,#4
 463  0076 cd0000        	call	c_llsh
 465  0079 96            	ldw	x,sp
 466  007a 1c0001        	addw	x,#OFST-11
 467  007d cd0000        	call	c_rtol
 469  0080 cd0000        	call	_CLK_GetClockFreq
 471  0083 96            	ldw	x,sp
 472  0084 1c0001        	addw	x,#OFST-11
 473  0087 cd0000        	call	c_ludv
 475  008a 96            	ldw	x,sp
 476  008b 1c0009        	addw	x,#OFST-3
 477  008e cd0000        	call	c_rtol
 479                     ; 122     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 481  0091 96            	ldw	x,sp
 482  0092 1c000f        	addw	x,#OFST+3
 483  0095 cd0000        	call	c_ltor
 485  0098 a604          	ld	a,#4
 486  009a cd0000        	call	c_llsh
 488  009d 96            	ldw	x,sp
 489  009e 1c0001        	addw	x,#OFST-11
 490  00a1 cd0000        	call	c_rtol
 492  00a4 cd0000        	call	_CLK_GetClockFreq
 494  00a7 a664          	ld	a,#100
 495  00a9 cd0000        	call	c_smul
 497  00ac 96            	ldw	x,sp
 498  00ad 1c0001        	addw	x,#OFST-11
 499  00b0 cd0000        	call	c_ludv
 501  00b3 96            	ldw	x,sp
 502  00b4 1c0005        	addw	x,#OFST-7
 503  00b7 cd0000        	call	c_rtol
 505                     ; 124     UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 507  00ba 96            	ldw	x,sp
 508  00bb 1c0009        	addw	x,#OFST-3
 509  00be cd0000        	call	c_ltor
 511  00c1 a664          	ld	a,#100
 512  00c3 cd0000        	call	c_smul
 514  00c6 96            	ldw	x,sp
 515  00c7 1c0001        	addw	x,#OFST-11
 516  00ca cd0000        	call	c_rtol
 518  00cd 96            	ldw	x,sp
 519  00ce 1c0005        	addw	x,#OFST-7
 520  00d1 cd0000        	call	c_ltor
 522  00d4 96            	ldw	x,sp
 523  00d5 1c0001        	addw	x,#OFST-11
 524  00d8 cd0000        	call	c_lsub
 526  00db a604          	ld	a,#4
 527  00dd cd0000        	call	c_llsh
 529  00e0 ae0000        	ldw	x,#L01
 530  00e3 cd0000        	call	c_ludv
 532  00e6 b603          	ld	a,c_lreg+3
 533  00e8 a40f          	and	a,#15
 534  00ea ca5233        	or	a,21043
 535  00ed c75233        	ld	21043,a
 536                     ; 126     UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 538  00f0 96            	ldw	x,sp
 539  00f1 1c0009        	addw	x,#OFST-3
 540  00f4 cd0000        	call	c_ltor
 542  00f7 a604          	ld	a,#4
 543  00f9 cd0000        	call	c_lursh
 545  00fc b603          	ld	a,c_lreg+3
 546  00fe a4f0          	and	a,#240
 547  0100 b703          	ld	c_lreg+3,a
 548  0102 3f02          	clr	c_lreg+2
 549  0104 3f01          	clr	c_lreg+1
 550  0106 3f00          	clr	c_lreg
 551  0108 b603          	ld	a,c_lreg+3
 552  010a ca5233        	or	a,21043
 553  010d c75233        	ld	21043,a
 554                     ; 128     UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 556  0110 c65232        	ld	a,21042
 557  0113 1a0c          	or	a,(OFST+0,sp)
 558  0115 c75232        	ld	21042,a
 559                     ; 131     UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 561  0118 c65235        	ld	a,21045
 562  011b a4f3          	and	a,#243
 563  011d c75235        	ld	21045,a
 564                     ; 133     UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 566  0120 c65236        	ld	a,21046
 567  0123 a4f8          	and	a,#248
 568  0125 c75236        	ld	21046,a
 569                     ; 135     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 569                     ; 136                                               UART1_CR3_CPHA | UART1_CR3_LBCL));  
 571  0128 7b16          	ld	a,(OFST+10,sp)
 572  012a a407          	and	a,#7
 573  012c ca5236        	or	a,21046
 574  012f c75236        	ld	21046,a
 575                     ; 138     if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 577  0132 7b17          	ld	a,(OFST+11,sp)
 578  0134 a504          	bcp	a,#4
 579  0136 2706          	jreq	L371
 580                     ; 141         UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 582  0138 72165235      	bset	21045,#3
 584  013c 2004          	jra	L571
 585  013e               L371:
 586                     ; 146         UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 588  013e 72175235      	bres	21045,#3
 589  0142               L571:
 590                     ; 148     if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 592  0142 7b17          	ld	a,(OFST+11,sp)
 593  0144 a508          	bcp	a,#8
 594  0146 2706          	jreq	L771
 595                     ; 151         UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 597  0148 72145235      	bset	21045,#2
 599  014c 2004          	jra	L102
 600  014e               L771:
 601                     ; 156         UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 603  014e 72155235      	bres	21045,#2
 604  0152               L102:
 605                     ; 160     if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 607  0152 7b16          	ld	a,(OFST+10,sp)
 608  0154 a580          	bcp	a,#128
 609  0156 2706          	jreq	L302
 610                     ; 163         UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 612  0158 72175236      	bres	21046,#3
 614  015c 200a          	jra	L502
 615  015e               L302:
 616                     ; 167         UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 618  015e 7b16          	ld	a,(OFST+10,sp)
 619  0160 a408          	and	a,#8
 620  0162 ca5236        	or	a,21046
 621  0165 c75236        	ld	21046,a
 622  0168               L502:
 623                     ; 169 }
 626  0168 5b0c          	addw	sp,#12
 627  016a 81            	ret
 682                     ; 177 void UART1_Cmd(FunctionalState NewState)
 682                     ; 178 {
 683                     	switch	.text
 684  016b               _UART1_Cmd:
 688                     ; 179     if (NewState != DISABLE)
 690  016b 4d            	tnz	a
 691  016c 2706          	jreq	L532
 692                     ; 182         UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 694  016e 721b5234      	bres	21044,#5
 696  0172 2004          	jra	L732
 697  0174               L532:
 698                     ; 187         UART1->CR1 |= UART1_CR1_UARTD;  
 700  0174 721a5234      	bset	21044,#5
 701  0178               L732:
 702                     ; 189 }
 705  0178 81            	ret
 830                     ; 205 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 830                     ; 206 {
 831                     	switch	.text
 832  0179               _UART1_ITConfig:
 834  0179 89            	pushw	x
 835  017a 89            	pushw	x
 836       00000002      OFST:	set	2
 839                     ; 207     uint8_t uartreg = 0, itpos = 0x00;
 843                     ; 210     assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 845                     ; 211     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 847                     ; 214     uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 849  017b 9e            	ld	a,xh
 850  017c 6b01          	ld	(OFST-1,sp),a
 851                     ; 216     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 853  017e 9f            	ld	a,xl
 854  017f a40f          	and	a,#15
 855  0181 5f            	clrw	x
 856  0182 97            	ld	xl,a
 857  0183 a601          	ld	a,#1
 858  0185 5d            	tnzw	x
 859  0186 2704          	jreq	L61
 860  0188               L02:
 861  0188 48            	sll	a
 862  0189 5a            	decw	x
 863  018a 26fc          	jrne	L02
 864  018c               L61:
 865  018c 6b02          	ld	(OFST+0,sp),a
 866                     ; 218     if (NewState != DISABLE)
 868  018e 0d07          	tnz	(OFST+5,sp)
 869  0190 272a          	jreq	L713
 870                     ; 221         if (uartreg == 0x01)
 872  0192 7b01          	ld	a,(OFST-1,sp)
 873  0194 a101          	cp	a,#1
 874  0196 260a          	jrne	L123
 875                     ; 223             UART1->CR1 |= itpos;
 877  0198 c65234        	ld	a,21044
 878  019b 1a02          	or	a,(OFST+0,sp)
 879  019d c75234        	ld	21044,a
 881  01a0 2045          	jra	L133
 882  01a2               L123:
 883                     ; 225         else if (uartreg == 0x02)
 885  01a2 7b01          	ld	a,(OFST-1,sp)
 886  01a4 a102          	cp	a,#2
 887  01a6 260a          	jrne	L523
 888                     ; 227             UART1->CR2 |= itpos;
 890  01a8 c65235        	ld	a,21045
 891  01ab 1a02          	or	a,(OFST+0,sp)
 892  01ad c75235        	ld	21045,a
 894  01b0 2035          	jra	L133
 895  01b2               L523:
 896                     ; 231             UART1->CR4 |= itpos;
 898  01b2 c65237        	ld	a,21047
 899  01b5 1a02          	or	a,(OFST+0,sp)
 900  01b7 c75237        	ld	21047,a
 901  01ba 202b          	jra	L133
 902  01bc               L713:
 903                     ; 237         if (uartreg == 0x01)
 905  01bc 7b01          	ld	a,(OFST-1,sp)
 906  01be a101          	cp	a,#1
 907  01c0 260b          	jrne	L333
 908                     ; 239             UART1->CR1 &= (uint8_t)(~itpos);
 910  01c2 7b02          	ld	a,(OFST+0,sp)
 911  01c4 43            	cpl	a
 912  01c5 c45234        	and	a,21044
 913  01c8 c75234        	ld	21044,a
 915  01cb 201a          	jra	L133
 916  01cd               L333:
 917                     ; 241         else if (uartreg == 0x02)
 919  01cd 7b01          	ld	a,(OFST-1,sp)
 920  01cf a102          	cp	a,#2
 921  01d1 260b          	jrne	L733
 922                     ; 243             UART1->CR2 &= (uint8_t)(~itpos);
 924  01d3 7b02          	ld	a,(OFST+0,sp)
 925  01d5 43            	cpl	a
 926  01d6 c45235        	and	a,21045
 927  01d9 c75235        	ld	21045,a
 929  01dc 2009          	jra	L133
 930  01de               L733:
 931                     ; 247             UART1->CR4 &= (uint8_t)(~itpos);
 933  01de 7b02          	ld	a,(OFST+0,sp)
 934  01e0 43            	cpl	a
 935  01e1 c45237        	and	a,21047
 936  01e4 c75237        	ld	21047,a
 937  01e7               L133:
 938                     ; 251 }
 941  01e7 5b04          	addw	sp,#4
 942  01e9 81            	ret
 978                     ; 259 void UART1_HalfDuplexCmd(FunctionalState NewState)
 978                     ; 260 {
 979                     	switch	.text
 980  01ea               _UART1_HalfDuplexCmd:
 984                     ; 261     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 986                     ; 263     if (NewState != DISABLE)
 988  01ea 4d            	tnz	a
 989  01eb 2706          	jreq	L163
 990                     ; 265         UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
 992  01ed 72165238      	bset	21048,#3
 994  01f1 2004          	jra	L363
 995  01f3               L163:
 996                     ; 269         UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
 998  01f3 72175238      	bres	21048,#3
 999  01f7               L363:
1000                     ; 271 }
1003  01f7 81            	ret
1060                     ; 279 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1060                     ; 280 {
1061                     	switch	.text
1062  01f8               _UART1_IrDAConfig:
1066                     ; 281     assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1068                     ; 283     if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1070  01f8 4d            	tnz	a
1071  01f9 2706          	jreq	L314
1072                     ; 285         UART1->CR5 |= UART1_CR5_IRLP;
1074  01fb 72145238      	bset	21048,#2
1076  01ff 2004          	jra	L514
1077  0201               L314:
1078                     ; 289         UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1080  0201 72155238      	bres	21048,#2
1081  0205               L514:
1082                     ; 291 }
1085  0205 81            	ret
1120                     ; 299 void UART1_IrDACmd(FunctionalState NewState)
1120                     ; 300 {
1121                     	switch	.text
1122  0206               _UART1_IrDACmd:
1126                     ; 303     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1128                     ; 305     if (NewState != DISABLE)
1130  0206 4d            	tnz	a
1131  0207 2706          	jreq	L534
1132                     ; 308         UART1->CR5 |= UART1_CR5_IREN;
1134  0209 72125238      	bset	21048,#1
1136  020d 2004          	jra	L734
1137  020f               L534:
1138                     ; 313         UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1140  020f 72135238      	bres	21048,#1
1141  0213               L734:
1142                     ; 315 }
1145  0213 81            	ret
1204                     ; 324 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1204                     ; 325 {
1205                     	switch	.text
1206  0214               _UART1_LINBreakDetectionConfig:
1210                     ; 326     assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1212                     ; 328     if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1214  0214 4d            	tnz	a
1215  0215 2706          	jreq	L764
1216                     ; 330         UART1->CR4 |= UART1_CR4_LBDL;
1218  0217 721a5237      	bset	21047,#5
1220  021b 2004          	jra	L174
1221  021d               L764:
1222                     ; 334         UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1224  021d 721b5237      	bres	21047,#5
1225  0221               L174:
1226                     ; 336 }
1229  0221 81            	ret
1264                     ; 344 void UART1_LINCmd(FunctionalState NewState)
1264                     ; 345 {
1265                     	switch	.text
1266  0222               _UART1_LINCmd:
1270                     ; 346     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1272                     ; 348     if (NewState != DISABLE)
1274  0222 4d            	tnz	a
1275  0223 2706          	jreq	L115
1276                     ; 351         UART1->CR3 |= UART1_CR3_LINEN;
1278  0225 721c5236      	bset	21046,#6
1280  0229 2004          	jra	L315
1281  022b               L115:
1282                     ; 356         UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1284  022b 721d5236      	bres	21046,#6
1285  022f               L315:
1286                     ; 358 }
1289  022f 81            	ret
1324                     ; 365 void UART1_SmartCardCmd(FunctionalState NewState)
1324                     ; 366 {
1325                     	switch	.text
1326  0230               _UART1_SmartCardCmd:
1330                     ; 367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1332                     ; 369     if (NewState != DISABLE)
1334  0230 4d            	tnz	a
1335  0231 2706          	jreq	L335
1336                     ; 372         UART1->CR5 |= UART1_CR5_SCEN;
1338  0233 721a5238      	bset	21048,#5
1340  0237 2004          	jra	L535
1341  0239               L335:
1342                     ; 377         UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1344  0239 721b5238      	bres	21048,#5
1345  023d               L535:
1346                     ; 379 }
1349  023d 81            	ret
1385                     ; 388 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1385                     ; 389 {
1386                     	switch	.text
1387  023e               _UART1_SmartCardNACKCmd:
1391                     ; 390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1393                     ; 392     if (NewState != DISABLE)
1395  023e 4d            	tnz	a
1396  023f 2706          	jreq	L555
1397                     ; 395         UART1->CR5 |= UART1_CR5_NACK;
1399  0241 72185238      	bset	21048,#4
1401  0245 2004          	jra	L755
1402  0247               L555:
1403                     ; 400         UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1405  0247 72195238      	bres	21048,#4
1406  024b               L755:
1407                     ; 402 }
1410  024b 81            	ret
1467                     ; 410 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1467                     ; 411 {
1468                     	switch	.text
1469  024c               _UART1_WakeUpConfig:
1473                     ; 412     assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1475                     ; 414     UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1477  024c 72175234      	bres	21044,#3
1478                     ; 415     UART1->CR1 |= (uint8_t)UART1_WakeUp;
1480  0250 ca5234        	or	a,21044
1481  0253 c75234        	ld	21044,a
1482                     ; 416 }
1485  0256 81            	ret
1521                     ; 423 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1521                     ; 424 {
1522                     	switch	.text
1523  0257               _UART1_ReceiverWakeUpCmd:
1527                     ; 425     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1529                     ; 427     if (NewState != DISABLE)
1531  0257 4d            	tnz	a
1532  0258 2706          	jreq	L526
1533                     ; 430         UART1->CR2 |= UART1_CR2_RWU;
1535  025a 72125235      	bset	21045,#1
1537  025e 2004          	jra	L726
1538  0260               L526:
1539                     ; 435         UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1541  0260 72135235      	bres	21045,#1
1542  0264               L726:
1543                     ; 437 }
1546  0264 81            	ret
1569                     ; 444 uint8_t UART1_ReceiveData8(void)
1569                     ; 445 {
1570                     	switch	.text
1571  0265               _UART1_ReceiveData8:
1575                     ; 446     return ((uint8_t)UART1->DR);
1577  0265 c65231        	ld	a,21041
1580  0268 81            	ret
1614                     ; 454 uint16_t UART1_ReceiveData9(void)
1614                     ; 455 {
1615                     	switch	.text
1616  0269               _UART1_ReceiveData9:
1618  0269 89            	pushw	x
1619       00000002      OFST:	set	2
1622                     ; 456   uint16_t temp = 0;
1624                     ; 458   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1626  026a c65234        	ld	a,21044
1627  026d 5f            	clrw	x
1628  026e a480          	and	a,#128
1629  0270 5f            	clrw	x
1630  0271 02            	rlwa	x,a
1631  0272 58            	sllw	x
1632  0273 1f01          	ldw	(OFST-1,sp),x
1633                     ; 459   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1635  0275 c65231        	ld	a,21041
1636  0278 5f            	clrw	x
1637  0279 97            	ld	xl,a
1638  027a 01            	rrwa	x,a
1639  027b 1a02          	or	a,(OFST+0,sp)
1640  027d 01            	rrwa	x,a
1641  027e 1a01          	or	a,(OFST-1,sp)
1642  0280 01            	rrwa	x,a
1643  0281 01            	rrwa	x,a
1644  0282 a4ff          	and	a,#255
1645  0284 01            	rrwa	x,a
1646  0285 a401          	and	a,#1
1647  0287 01            	rrwa	x,a
1650  0288 5b02          	addw	sp,#2
1651  028a 81            	ret
1685                     ; 467 void UART1_SendData8(uint8_t Data)
1685                     ; 468 {
1686                     	switch	.text
1687  028b               _UART1_SendData8:
1691                     ; 470     UART1->DR = Data;
1693  028b c75231        	ld	21041,a
1694                     ; 471 }
1697  028e 81            	ret
1731                     ; 479 void UART1_SendData9(uint16_t Data)
1731                     ; 480 {
1732                     	switch	.text
1733  028f               _UART1_SendData9:
1735  028f 89            	pushw	x
1736       00000000      OFST:	set	0
1739                     ; 482     UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1741  0290 721d5234      	bres	21044,#6
1742                     ; 484     UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1744  0294 54            	srlw	x
1745  0295 54            	srlw	x
1746  0296 9f            	ld	a,xl
1747  0297 a440          	and	a,#64
1748  0299 ca5234        	or	a,21044
1749  029c c75234        	ld	21044,a
1750                     ; 486     UART1->DR   = (uint8_t)(Data);
1752  029f 7b02          	ld	a,(OFST+2,sp)
1753  02a1 c75231        	ld	21041,a
1754                     ; 487 }
1757  02a4 85            	popw	x
1758  02a5 81            	ret
1781                     ; 494 void UART1_SendBreak(void)
1781                     ; 495 {
1782                     	switch	.text
1783  02a6               _UART1_SendBreak:
1787                     ; 496     UART1->CR2 |= UART1_CR2_SBK;
1789  02a6 72105235      	bset	21045,#0
1790                     ; 497 }
1793  02aa 81            	ret
1827                     ; 504 void UART1_SetAddress(uint8_t UART1_Address)
1827                     ; 505 {
1828                     	switch	.text
1829  02ab               _UART1_SetAddress:
1831  02ab 88            	push	a
1832       00000000      OFST:	set	0
1835                     ; 507     assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
1837                     ; 510     UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
1839  02ac c65237        	ld	a,21047
1840  02af a4f0          	and	a,#240
1841  02b1 c75237        	ld	21047,a
1842                     ; 512     UART1->CR4 |= UART1_Address;
1844  02b4 c65237        	ld	a,21047
1845  02b7 1a01          	or	a,(OFST+1,sp)
1846  02b9 c75237        	ld	21047,a
1847                     ; 513 }
1850  02bc 84            	pop	a
1851  02bd 81            	ret
1885                     ; 521 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
1885                     ; 522 {
1886                     	switch	.text
1887  02be               _UART1_SetGuardTime:
1891                     ; 524     UART1->GTR = UART1_GuardTime;
1893  02be c75239        	ld	21049,a
1894                     ; 525 }
1897  02c1 81            	ret
1931                     ; 549 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
1931                     ; 550 {
1932                     	switch	.text
1933  02c2               _UART1_SetPrescaler:
1937                     ; 552     UART1->PSCR = UART1_Prescaler;
1939  02c2 c7523a        	ld	21050,a
1940                     ; 553 }
1943  02c5 81            	ret
2086                     ; 561 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2086                     ; 562 {
2087                     	switch	.text
2088  02c6               _UART1_GetFlagStatus:
2090  02c6 89            	pushw	x
2091  02c7 88            	push	a
2092       00000001      OFST:	set	1
2095                     ; 563     FlagStatus status = RESET;
2097                     ; 566     assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2099                     ; 570     if (UART1_FLAG == UART1_FLAG_LBDF)
2101  02c8 a30210        	cpw	x,#528
2102  02cb 2610          	jrne	L7501
2103                     ; 572         if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2105  02cd 9f            	ld	a,xl
2106  02ce c45237        	and	a,21047
2107  02d1 2706          	jreq	L1601
2108                     ; 575             status = SET;
2110  02d3 a601          	ld	a,#1
2111  02d5 6b01          	ld	(OFST+0,sp),a
2113  02d7 202b          	jra	L5601
2114  02d9               L1601:
2115                     ; 580             status = RESET;
2117  02d9 0f01          	clr	(OFST+0,sp)
2118  02db 2027          	jra	L5601
2119  02dd               L7501:
2120                     ; 583     else if (UART1_FLAG == UART1_FLAG_SBK)
2122  02dd 1e02          	ldw	x,(OFST+1,sp)
2123  02df a30101        	cpw	x,#257
2124  02e2 2611          	jrne	L7601
2125                     ; 585         if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2127  02e4 c65235        	ld	a,21045
2128  02e7 1503          	bcp	a,(OFST+2,sp)
2129  02e9 2706          	jreq	L1701
2130                     ; 588             status = SET;
2132  02eb a601          	ld	a,#1
2133  02ed 6b01          	ld	(OFST+0,sp),a
2135  02ef 2013          	jra	L5601
2136  02f1               L1701:
2137                     ; 593             status = RESET;
2139  02f1 0f01          	clr	(OFST+0,sp)
2140  02f3 200f          	jra	L5601
2141  02f5               L7601:
2142                     ; 598         if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2144  02f5 c65230        	ld	a,21040
2145  02f8 1503          	bcp	a,(OFST+2,sp)
2146  02fa 2706          	jreq	L7701
2147                     ; 601             status = SET;
2149  02fc a601          	ld	a,#1
2150  02fe 6b01          	ld	(OFST+0,sp),a
2152  0300 2002          	jra	L5601
2153  0302               L7701:
2154                     ; 606             status = RESET;
2156  0302 0f01          	clr	(OFST+0,sp)
2157  0304               L5601:
2158                     ; 610     return status;
2160  0304 7b01          	ld	a,(OFST+0,sp)
2163  0306 5b03          	addw	sp,#3
2164  0308 81            	ret
2199                     ; 640 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2199                     ; 641 {
2200                     	switch	.text
2201  0309               _UART1_ClearFlag:
2205                     ; 642     assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2207                     ; 645     if (UART1_FLAG == UART1_FLAG_RXNE)
2209  0309 a30020        	cpw	x,#32
2210  030c 2606          	jrne	L1211
2211                     ; 647         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2213  030e 35df5230      	mov	21040,#223
2215  0312 2004          	jra	L3211
2216  0314               L1211:
2217                     ; 652         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2219  0314 72195237      	bres	21047,#4
2220  0318               L3211:
2221                     ; 654 }
2224  0318 81            	ret
2306                     ; 669 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2306                     ; 670 {
2307                     	switch	.text
2308  0319               _UART1_GetITStatus:
2310  0319 89            	pushw	x
2311  031a 89            	pushw	x
2312       00000002      OFST:	set	2
2315                     ; 671     ITStatus pendingbitstatus = RESET;
2317                     ; 672     uint8_t itpos = 0;
2319                     ; 673     uint8_t itmask1 = 0;
2321                     ; 674     uint8_t itmask2 = 0;
2323                     ; 675     uint8_t enablestatus = 0;
2325                     ; 678     assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2327                     ; 681     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2329  031b 9f            	ld	a,xl
2330  031c a40f          	and	a,#15
2331  031e 5f            	clrw	x
2332  031f 97            	ld	xl,a
2333  0320 a601          	ld	a,#1
2334  0322 5d            	tnzw	x
2335  0323 2704          	jreq	L27
2336  0325               L47:
2337  0325 48            	sll	a
2338  0326 5a            	decw	x
2339  0327 26fc          	jrne	L47
2340  0329               L27:
2341  0329 6b01          	ld	(OFST-1,sp),a
2342                     ; 683     itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2344  032b 7b04          	ld	a,(OFST+2,sp)
2345  032d 4e            	swap	a
2346  032e a40f          	and	a,#15
2347  0330 6b02          	ld	(OFST+0,sp),a
2348                     ; 685     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2350  0332 7b02          	ld	a,(OFST+0,sp)
2351  0334 5f            	clrw	x
2352  0335 97            	ld	xl,a
2353  0336 a601          	ld	a,#1
2354  0338 5d            	tnzw	x
2355  0339 2704          	jreq	L67
2356  033b               L001:
2357  033b 48            	sll	a
2358  033c 5a            	decw	x
2359  033d 26fc          	jrne	L001
2360  033f               L67:
2361  033f 6b02          	ld	(OFST+0,sp),a
2362                     ; 689     if (UART1_IT == UART1_IT_PE)
2364  0341 1e03          	ldw	x,(OFST+1,sp)
2365  0343 a30100        	cpw	x,#256
2366  0346 261c          	jrne	L7611
2367                     ; 692         enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2369  0348 c65234        	ld	a,21044
2370  034b 1402          	and	a,(OFST+0,sp)
2371  034d 6b02          	ld	(OFST+0,sp),a
2372                     ; 695         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2374  034f c65230        	ld	a,21040
2375  0352 1501          	bcp	a,(OFST-1,sp)
2376  0354 270a          	jreq	L1711
2378  0356 0d02          	tnz	(OFST+0,sp)
2379  0358 2706          	jreq	L1711
2380                     ; 698             pendingbitstatus = SET;
2382  035a a601          	ld	a,#1
2383  035c 6b02          	ld	(OFST+0,sp),a
2385  035e 2041          	jra	L5711
2386  0360               L1711:
2387                     ; 703             pendingbitstatus = RESET;
2389  0360 0f02          	clr	(OFST+0,sp)
2390  0362 203d          	jra	L5711
2391  0364               L7611:
2392                     ; 707     else if (UART1_IT == UART1_IT_LBDF)
2394  0364 1e03          	ldw	x,(OFST+1,sp)
2395  0366 a30346        	cpw	x,#838
2396  0369 261c          	jrne	L7711
2397                     ; 710         enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2399  036b c65237        	ld	a,21047
2400  036e 1402          	and	a,(OFST+0,sp)
2401  0370 6b02          	ld	(OFST+0,sp),a
2402                     ; 712         if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2404  0372 c65237        	ld	a,21047
2405  0375 1501          	bcp	a,(OFST-1,sp)
2406  0377 270a          	jreq	L1021
2408  0379 0d02          	tnz	(OFST+0,sp)
2409  037b 2706          	jreq	L1021
2410                     ; 715             pendingbitstatus = SET;
2412  037d a601          	ld	a,#1
2413  037f 6b02          	ld	(OFST+0,sp),a
2415  0381 201e          	jra	L5711
2416  0383               L1021:
2417                     ; 720             pendingbitstatus = RESET;
2419  0383 0f02          	clr	(OFST+0,sp)
2420  0385 201a          	jra	L5711
2421  0387               L7711:
2422                     ; 726         enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2424  0387 c65235        	ld	a,21045
2425  038a 1402          	and	a,(OFST+0,sp)
2426  038c 6b02          	ld	(OFST+0,sp),a
2427                     ; 728         if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2429  038e c65230        	ld	a,21040
2430  0391 1501          	bcp	a,(OFST-1,sp)
2431  0393 270a          	jreq	L7021
2433  0395 0d02          	tnz	(OFST+0,sp)
2434  0397 2706          	jreq	L7021
2435                     ; 731             pendingbitstatus = SET;
2437  0399 a601          	ld	a,#1
2438  039b 6b02          	ld	(OFST+0,sp),a
2440  039d 2002          	jra	L5711
2441  039f               L7021:
2442                     ; 736             pendingbitstatus = RESET;
2444  039f 0f02          	clr	(OFST+0,sp)
2445  03a1               L5711:
2446                     ; 741     return  pendingbitstatus;
2448  03a1 7b02          	ld	a,(OFST+0,sp)
2451  03a3 5b04          	addw	sp,#4
2452  03a5 81            	ret
2488                     ; 769 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2488                     ; 770 {
2489                     	switch	.text
2490  03a6               _UART1_ClearITPendingBit:
2494                     ; 771     assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2496                     ; 774     if (UART1_IT == UART1_IT_RXNE)
2498  03a6 a30255        	cpw	x,#597
2499  03a9 2606          	jrne	L1321
2500                     ; 776         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2502  03ab 35df5230      	mov	21040,#223
2504  03af 2004          	jra	L3321
2505  03b1               L1321:
2506                     ; 781         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2508  03b1 72195237      	bres	21047,#4
2509  03b5               L3321:
2510                     ; 783 }
2513  03b5 81            	ret
2526                     	xdef	_UART1_ClearITPendingBit
2527                     	xdef	_UART1_GetITStatus
2528                     	xdef	_UART1_ClearFlag
2529                     	xdef	_UART1_GetFlagStatus
2530                     	xdef	_UART1_SetPrescaler
2531                     	xdef	_UART1_SetGuardTime
2532                     	xdef	_UART1_SetAddress
2533                     	xdef	_UART1_SendBreak
2534                     	xdef	_UART1_SendData9
2535                     	xdef	_UART1_SendData8
2536                     	xdef	_UART1_ReceiveData9
2537                     	xdef	_UART1_ReceiveData8
2538                     	xdef	_UART1_ReceiverWakeUpCmd
2539                     	xdef	_UART1_WakeUpConfig
2540                     	xdef	_UART1_SmartCardNACKCmd
2541                     	xdef	_UART1_SmartCardCmd
2542                     	xdef	_UART1_LINCmd
2543                     	xdef	_UART1_LINBreakDetectionConfig
2544                     	xdef	_UART1_IrDACmd
2545                     	xdef	_UART1_IrDAConfig
2546                     	xdef	_UART1_HalfDuplexCmd
2547                     	xdef	_UART1_ITConfig
2548                     	xdef	_UART1_Cmd
2549                     	xdef	_UART1_Init
2550                     	xdef	_UART1_DeInit
2551                     	xref	_CLK_GetClockFreq
2552                     	xref.b	c_lreg
2553                     	xref.b	c_x
2572                     	xref	c_lursh
2573                     	xref	c_lsub
2574                     	xref	c_smul
2575                     	xref	c_ludv
2576                     	xref	c_rtol
2577                     	xref	c_llsh
2578                     	xref	c_ltor
2579                     	end
