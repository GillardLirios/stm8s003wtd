   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  14                     .const:	section	.text
  15  0000               _HSIDivFactor:
  16  0000 01            	dc.b	1
  17  0001 02            	dc.b	2
  18  0002 04            	dc.b	4
  19  0003 08            	dc.b	8
  20  0004               _CLKPrescTable:
  21  0004 01            	dc.b	1
  22  0005 02            	dc.b	2
  23  0006 04            	dc.b	4
  24  0007 08            	dc.b	8
  25  0008 0a            	dc.b	10
  26  0009 10            	dc.b	16
  27  000a 14            	dc.b	20
  28  000b 28            	dc.b	40
  57                     ; 66 void CLK_DeInit(void)
  57                     ; 67 {
  59                     	switch	.text
  60  0000               _CLK_DeInit:
  64                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  66  0000 350150c0      	mov	20672,#1
  67                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  69  0004 725f50c1      	clr	20673
  70                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  72  0008 35e150c4      	mov	20676,#225
  73                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  75  000c 725f50c5      	clr	20677
  76                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  78  0010 351850c6      	mov	20678,#24
  79                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  81  0014 35ff50c7      	mov	20679,#255
  82                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  84  0018 35ff50ca      	mov	20682,#255
  85                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  87  001c 725f50c8      	clr	20680
  88                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  90  0020 725f50c9      	clr	20681
  92  0024               L52:
  93                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  95  0024 c650c9        	ld	a,20681
  96  0027 a501          	bcp	a,#1
  97  0029 26f9          	jrne	L52
  98                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 100  002b 725f50c9      	clr	20681
 101                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 103  002f 725f50cc      	clr	20684
 104                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 106  0033 725f50cd      	clr	20685
 107                     ; 84 }
 110  0037 81            	ret
 166                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 166                     ; 96 {
 167                     	switch	.text
 168  0038               _CLK_FastHaltWakeUpCmd:
 172                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 174                     ; 101     if (NewState != DISABLE)
 176  0038 4d            	tnz	a
 177  0039 2706          	jreq	L75
 178                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 180  003b 721450c0      	bset	20672,#2
 182  003f 2004          	jra	L16
 183  0041               L75:
 184                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 186  0041 721550c0      	bres	20672,#2
 187  0045               L16:
 188                     ; 112 }
 191  0045 81            	ret
 226                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 226                     ; 120 {
 227                     	switch	.text
 228  0046               _CLK_HSECmd:
 232                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 234                     ; 125     if (NewState != DISABLE)
 236  0046 4d            	tnz	a
 237  0047 2706          	jreq	L101
 238                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 240  0049 721050c1      	bset	20673,#0
 242  004d 2004          	jra	L301
 243  004f               L101:
 244                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 246  004f 721150c1      	bres	20673,#0
 247  0053               L301:
 248                     ; 136 }
 251  0053 81            	ret
 286                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 286                     ; 144 {
 287                     	switch	.text
 288  0054               _CLK_HSICmd:
 292                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 294                     ; 149     if (NewState != DISABLE)
 296  0054 4d            	tnz	a
 297  0055 2706          	jreq	L321
 298                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 300  0057 721050c0      	bset	20672,#0
 302  005b 2004          	jra	L521
 303  005d               L321:
 304                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 306  005d 721150c0      	bres	20672,#0
 307  0061               L521:
 308                     ; 160 }
 311  0061 81            	ret
 346                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 346                     ; 168 {
 347                     	switch	.text
 348  0062               _CLK_LSICmd:
 352                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 354                     ; 173     if (NewState != DISABLE)
 356  0062 4d            	tnz	a
 357  0063 2706          	jreq	L541
 358                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 360  0065 721650c0      	bset	20672,#3
 362  0069 2004          	jra	L741
 363  006b               L541:
 364                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 366  006b 721750c0      	bres	20672,#3
 367  006f               L741:
 368                     ; 184 }
 371  006f 81            	ret
 406                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 406                     ; 193 {
 407                     	switch	.text
 408  0070               _CLK_CCOCmd:
 412                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414                     ; 198     if (NewState != DISABLE)
 416  0070 4d            	tnz	a
 417  0071 2706          	jreq	L761
 418                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 420  0073 721050c9      	bset	20681,#0
 422  0077 2004          	jra	L171
 423  0079               L761:
 424                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 426  0079 721150c9      	bres	20681,#0
 427  007d               L171:
 428                     ; 209 }
 431  007d 81            	ret
 466                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 466                     ; 219 {
 467                     	switch	.text
 468  007e               _CLK_ClockSwitchCmd:
 472                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 474                     ; 224     if (NewState != DISABLE )
 476  007e 4d            	tnz	a
 477  007f 2706          	jreq	L112
 478                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 480  0081 721250c5      	bset	20677,#1
 482  0085 2004          	jra	L312
 483  0087               L112:
 484                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 486  0087 721350c5      	bres	20677,#1
 487  008b               L312:
 488                     ; 235 }
 491  008b 81            	ret
 527                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 527                     ; 246 {
 528                     	switch	.text
 529  008c               _CLK_SlowActiveHaltWakeUpCmd:
 533                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 535                     ; 251     if (NewState != DISABLE)
 537  008c 4d            	tnz	a
 538  008d 2706          	jreq	L332
 539                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 541  008f 721a50c0      	bset	20672,#5
 543  0093 2004          	jra	L532
 544  0095               L332:
 545                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 547  0095 721b50c0      	bres	20672,#5
 548  0099               L532:
 549                     ; 262 }
 552  0099 81            	ret
 711                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 711                     ; 273 {
 712                     	switch	.text
 713  009a               _CLK_PeripheralClockConfig:
 715  009a 89            	pushw	x
 716       00000000      OFST:	set	0
 719                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 721                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 723                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 725  009b 9e            	ld	a,xh
 726  009c a510          	bcp	a,#16
 727  009e 2633          	jrne	L123
 728                     ; 281         if (NewState != DISABLE)
 730  00a0 0d02          	tnz	(OFST+2,sp)
 731  00a2 2717          	jreq	L323
 732                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 734  00a4 7b01          	ld	a,(OFST+1,sp)
 735  00a6 a40f          	and	a,#15
 736  00a8 5f            	clrw	x
 737  00a9 97            	ld	xl,a
 738  00aa a601          	ld	a,#1
 739  00ac 5d            	tnzw	x
 740  00ad 2704          	jreq	L62
 741  00af               L03:
 742  00af 48            	sll	a
 743  00b0 5a            	decw	x
 744  00b1 26fc          	jrne	L03
 745  00b3               L62:
 746  00b3 ca50c7        	or	a,20679
 747  00b6 c750c7        	ld	20679,a
 749  00b9 2049          	jra	L723
 750  00bb               L323:
 751                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 753  00bb 7b01          	ld	a,(OFST+1,sp)
 754  00bd a40f          	and	a,#15
 755  00bf 5f            	clrw	x
 756  00c0 97            	ld	xl,a
 757  00c1 a601          	ld	a,#1
 758  00c3 5d            	tnzw	x
 759  00c4 2704          	jreq	L23
 760  00c6               L43:
 761  00c6 48            	sll	a
 762  00c7 5a            	decw	x
 763  00c8 26fc          	jrne	L43
 764  00ca               L23:
 765  00ca 43            	cpl	a
 766  00cb c450c7        	and	a,20679
 767  00ce c750c7        	ld	20679,a
 768  00d1 2031          	jra	L723
 769  00d3               L123:
 770                     ; 294         if (NewState != DISABLE)
 772  00d3 0d02          	tnz	(OFST+2,sp)
 773  00d5 2717          	jreq	L133
 774                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 776  00d7 7b01          	ld	a,(OFST+1,sp)
 777  00d9 a40f          	and	a,#15
 778  00db 5f            	clrw	x
 779  00dc 97            	ld	xl,a
 780  00dd a601          	ld	a,#1
 781  00df 5d            	tnzw	x
 782  00e0 2704          	jreq	L63
 783  00e2               L04:
 784  00e2 48            	sll	a
 785  00e3 5a            	decw	x
 786  00e4 26fc          	jrne	L04
 787  00e6               L63:
 788  00e6 ca50ca        	or	a,20682
 789  00e9 c750ca        	ld	20682,a
 791  00ec 2016          	jra	L723
 792  00ee               L133:
 793                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 795  00ee 7b01          	ld	a,(OFST+1,sp)
 796  00f0 a40f          	and	a,#15
 797  00f2 5f            	clrw	x
 798  00f3 97            	ld	xl,a
 799  00f4 a601          	ld	a,#1
 800  00f6 5d            	tnzw	x
 801  00f7 2704          	jreq	L24
 802  00f9               L44:
 803  00f9 48            	sll	a
 804  00fa 5a            	decw	x
 805  00fb 26fc          	jrne	L44
 806  00fd               L24:
 807  00fd 43            	cpl	a
 808  00fe c450ca        	and	a,20682
 809  0101 c750ca        	ld	20682,a
 810  0104               L723:
 811                     ; 306 }
 814  0104 85            	popw	x
 815  0105 81            	ret
1003                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1003                     ; 320 {
1004                     	switch	.text
1005  0106               _CLK_ClockSwitchConfig:
1007  0106 89            	pushw	x
1008  0107 5204          	subw	sp,#4
1009       00000004      OFST:	set	4
1012                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1014  0109 ae0491        	ldw	x,#1169
1015  010c 1f03          	ldw	(OFST-1,sp),x
1016                     ; 324     ErrorStatus Swif = ERROR;
1018                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1020                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1022                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1024                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1026                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1028  010e c650c3        	ld	a,20675
1029  0111 6b01          	ld	(OFST-3,sp),a
1030                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1032  0113 7b05          	ld	a,(OFST+1,sp)
1033  0115 a101          	cp	a,#1
1034  0117 2639          	jrne	L544
1035                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1037  0119 721250c5      	bset	20677,#1
1038                     ; 343         if (ITState != DISABLE)
1040  011d 0d09          	tnz	(OFST+5,sp)
1041  011f 2706          	jreq	L744
1042                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1044  0121 721450c5      	bset	20677,#2
1046  0125 2004          	jra	L154
1047  0127               L744:
1048                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1050  0127 721550c5      	bres	20677,#2
1051  012b               L154:
1052                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1054  012b 7b06          	ld	a,(OFST+2,sp)
1055  012d c750c4        	ld	20676,a
1057  0130 2007          	jra	L754
1058  0132               L354:
1059                     ; 357             DownCounter--;
1061  0132 1e03          	ldw	x,(OFST-1,sp)
1062  0134 1d0001        	subw	x,#1
1063  0137 1f03          	ldw	(OFST-1,sp),x
1064  0139               L754:
1065                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1067  0139 c650c5        	ld	a,20677
1068  013c a501          	bcp	a,#1
1069  013e 2704          	jreq	L364
1071  0140 1e03          	ldw	x,(OFST-1,sp)
1072  0142 26ee          	jrne	L354
1073  0144               L364:
1074                     ; 360         if (DownCounter != 0)
1076  0144 1e03          	ldw	x,(OFST-1,sp)
1077  0146 2706          	jreq	L564
1078                     ; 362             Swif = SUCCESS;
1080  0148 a601          	ld	a,#1
1081  014a 6b02          	ld	(OFST-2,sp),a
1083  014c 201b          	jra	L174
1084  014e               L564:
1085                     ; 366             Swif = ERROR;
1087  014e 0f02          	clr	(OFST-2,sp)
1088  0150 2017          	jra	L174
1089  0152               L544:
1090                     ; 374         if (ITState != DISABLE)
1092  0152 0d09          	tnz	(OFST+5,sp)
1093  0154 2706          	jreq	L374
1094                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1096  0156 721450c5      	bset	20677,#2
1098  015a 2004          	jra	L574
1099  015c               L374:
1100                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1102  015c 721550c5      	bres	20677,#2
1103  0160               L574:
1104                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1106  0160 7b06          	ld	a,(OFST+2,sp)
1107  0162 c750c4        	ld	20676,a
1108                     ; 388         Swif = SUCCESS;
1110  0165 a601          	ld	a,#1
1111  0167 6b02          	ld	(OFST-2,sp),a
1112  0169               L174:
1113                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1115  0169 0d0a          	tnz	(OFST+6,sp)
1116  016b 260c          	jrne	L774
1118  016d 7b01          	ld	a,(OFST-3,sp)
1119  016f a1e1          	cp	a,#225
1120  0171 2606          	jrne	L774
1121                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1123  0173 721150c0      	bres	20672,#0
1125  0177 201e          	jra	L105
1126  0179               L774:
1127                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1129  0179 0d0a          	tnz	(OFST+6,sp)
1130  017b 260c          	jrne	L305
1132  017d 7b01          	ld	a,(OFST-3,sp)
1133  017f a1d2          	cp	a,#210
1134  0181 2606          	jrne	L305
1135                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1137  0183 721750c0      	bres	20672,#3
1139  0187 200e          	jra	L105
1140  0189               L305:
1141                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1143  0189 0d0a          	tnz	(OFST+6,sp)
1144  018b 260a          	jrne	L105
1146  018d 7b01          	ld	a,(OFST-3,sp)
1147  018f a1b4          	cp	a,#180
1148  0191 2604          	jrne	L105
1149                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1151  0193 721150c1      	bres	20673,#0
1152  0197               L105:
1153                     ; 406     return(Swif);
1155  0197 7b02          	ld	a,(OFST-2,sp)
1158  0199 5b06          	addw	sp,#6
1159  019b 81            	ret
1297                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1297                     ; 417 {
1298                     	switch	.text
1299  019c               _CLK_HSIPrescalerConfig:
1301  019c 88            	push	a
1302       00000000      OFST:	set	0
1305                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1307                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1309  019d c650c6        	ld	a,20678
1310  01a0 a4e7          	and	a,#231
1311  01a2 c750c6        	ld	20678,a
1312                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1314  01a5 c650c6        	ld	a,20678
1315  01a8 1a01          	or	a,(OFST+1,sp)
1316  01aa c750c6        	ld	20678,a
1317                     ; 428 }
1320  01ad 84            	pop	a
1321  01ae 81            	ret
1456                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1456                     ; 440 {
1457                     	switch	.text
1458  01af               _CLK_CCOConfig:
1460  01af 88            	push	a
1461       00000000      OFST:	set	0
1464                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1466                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1468  01b0 c650c9        	ld	a,20681
1469  01b3 a4e1          	and	a,#225
1470  01b5 c750c9        	ld	20681,a
1471                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1473  01b8 c650c9        	ld	a,20681
1474  01bb 1a01          	or	a,(OFST+1,sp)
1475  01bd c750c9        	ld	20681,a
1476                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1478  01c0 721050c9      	bset	20681,#0
1479                     ; 454 }
1482  01c4 84            	pop	a
1483  01c5 81            	ret
1548                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1548                     ; 465 {
1549                     	switch	.text
1550  01c6               _CLK_ITConfig:
1552  01c6 89            	pushw	x
1553       00000000      OFST:	set	0
1556                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1558                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1560                     ; 471     if (NewState != DISABLE)
1562  01c7 9f            	ld	a,xl
1563  01c8 4d            	tnz	a
1564  01c9 2719          	jreq	L507
1565                     ; 473         switch (CLK_IT)
1567  01cb 9e            	ld	a,xh
1569                     ; 481         default:
1569                     ; 482             break;
1570  01cc a00c          	sub	a,#12
1571  01ce 270a          	jreq	L146
1572  01d0 a010          	sub	a,#16
1573  01d2 2624          	jrne	L317
1574                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1574                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1576  01d4 721450c5      	bset	20677,#2
1577                     ; 477             break;
1579  01d8 201e          	jra	L317
1580  01da               L146:
1581                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1581                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1583  01da 721450c8      	bset	20680,#2
1584                     ; 480             break;
1586  01de 2018          	jra	L317
1587  01e0               L346:
1588                     ; 481         default:
1588                     ; 482             break;
1590  01e0 2016          	jra	L317
1591  01e2               L117:
1593  01e2 2014          	jra	L317
1594  01e4               L507:
1595                     ; 487         switch (CLK_IT)
1597  01e4 7b01          	ld	a,(OFST+1,sp)
1599                     ; 495         default:
1599                     ; 496             break;
1600  01e6 a00c          	sub	a,#12
1601  01e8 270a          	jreq	L746
1602  01ea a010          	sub	a,#16
1603  01ec 260a          	jrne	L317
1604                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1604                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1606  01ee 721550c5      	bres	20677,#2
1607                     ; 491             break;
1609  01f2 2004          	jra	L317
1610  01f4               L746:
1611                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1611                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1613  01f4 721550c8      	bres	20680,#2
1614                     ; 494             break;
1615  01f8               L317:
1616                     ; 500 }
1619  01f8 85            	popw	x
1620  01f9 81            	ret
1621  01fa               L156:
1622                     ; 495         default:
1622                     ; 496             break;
1624  01fa 20fc          	jra	L317
1625  01fc               L717:
1626  01fc 20fa          	jra	L317
1661                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1661                     ; 508 {
1662                     	switch	.text
1663  01fe               _CLK_SYSCLKConfig:
1665  01fe 88            	push	a
1666       00000000      OFST:	set	0
1669                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1671                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1673  01ff a580          	bcp	a,#128
1674  0201 2614          	jrne	L737
1675                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1677  0203 c650c6        	ld	a,20678
1678  0206 a4e7          	and	a,#231
1679  0208 c750c6        	ld	20678,a
1680                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1682  020b 7b01          	ld	a,(OFST+1,sp)
1683  020d a418          	and	a,#24
1684  020f ca50c6        	or	a,20678
1685  0212 c750c6        	ld	20678,a
1687  0215 2012          	jra	L147
1688  0217               L737:
1689                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1691  0217 c650c6        	ld	a,20678
1692  021a a4f8          	and	a,#248
1693  021c c750c6        	ld	20678,a
1694                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1696  021f 7b01          	ld	a,(OFST+1,sp)
1697  0221 a407          	and	a,#7
1698  0223 ca50c6        	or	a,20678
1699  0226 c750c6        	ld	20678,a
1700  0229               L147:
1701                     ; 524 }
1704  0229 84            	pop	a
1705  022a 81            	ret
1761                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1761                     ; 532 {
1762                     	switch	.text
1763  022b               _CLK_SWIMConfig:
1767                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1769                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1771  022b 4d            	tnz	a
1772  022c 2706          	jreq	L177
1773                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1775  022e 721050cd      	bset	20685,#0
1777  0232 2004          	jra	L377
1778  0234               L177:
1779                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1781  0234 721150cd      	bres	20685,#0
1782  0238               L377:
1783                     ; 548 }
1786  0238 81            	ret
1810                     ; 557 void CLK_ClockSecuritySystemEnable(void)
1810                     ; 558 {
1811                     	switch	.text
1812  0239               _CLK_ClockSecuritySystemEnable:
1816                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
1818  0239 721050c8      	bset	20680,#0
1819                     ; 561 }
1822  023d 81            	ret
1847                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1847                     ; 570 {
1848                     	switch	.text
1849  023e               _CLK_GetSYSCLKSource:
1853                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
1855  023e c650c3        	ld	a,20675
1858  0241 81            	ret
1921                     ; 579 uint32_t CLK_GetClockFreq(void)
1921                     ; 580 {
1922                     	switch	.text
1923  0242               _CLK_GetClockFreq:
1925  0242 5209          	subw	sp,#9
1926       00000009      OFST:	set	9
1929                     ; 582     uint32_t clockfrequency = 0;
1931                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1933                     ; 584     uint8_t tmp = 0, presc = 0;
1937                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1939  0244 c650c3        	ld	a,20675
1940  0247 6b09          	ld	(OFST+0,sp),a
1941                     ; 589     if (clocksource == CLK_SOURCE_HSI)
1943  0249 7b09          	ld	a,(OFST+0,sp)
1944  024b a1e1          	cp	a,#225
1945  024d 2641          	jrne	L7401
1946                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1948  024f c650c6        	ld	a,20678
1949  0252 a418          	and	a,#24
1950  0254 6b09          	ld	(OFST+0,sp),a
1951                     ; 592         tmp = (uint8_t)(tmp >> 3);
1953  0256 0409          	srl	(OFST+0,sp)
1954  0258 0409          	srl	(OFST+0,sp)
1955  025a 0409          	srl	(OFST+0,sp)
1956                     ; 593         presc = HSIDivFactor[tmp];
1958  025c 7b09          	ld	a,(OFST+0,sp)
1959  025e 5f            	clrw	x
1960  025f 97            	ld	xl,a
1961  0260 d60000        	ld	a,(_HSIDivFactor,x)
1962  0263 6b09          	ld	(OFST+0,sp),a
1963                     ; 594         clockfrequency = HSI_VALUE / presc;
1965  0265 7b09          	ld	a,(OFST+0,sp)
1966  0267 b703          	ld	c_lreg+3,a
1967  0269 3f02          	clr	c_lreg+2
1968  026b 3f01          	clr	c_lreg+1
1969  026d 3f00          	clr	c_lreg
1970  026f 96            	ldw	x,sp
1971  0270 1c0001        	addw	x,#OFST-8
1972  0273 cd0000        	call	c_rtol
1974  0276 ae2400        	ldw	x,#9216
1975  0279 bf02          	ldw	c_lreg+2,x
1976  027b ae00f4        	ldw	x,#244
1977  027e bf00          	ldw	c_lreg,x
1978  0280 96            	ldw	x,sp
1979  0281 1c0001        	addw	x,#OFST-8
1980  0284 cd0000        	call	c_ludv
1982  0287 96            	ldw	x,sp
1983  0288 1c0005        	addw	x,#OFST-4
1984  028b cd0000        	call	c_rtol
1987  028e 201c          	jra	L1501
1988  0290               L7401:
1989                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
1991  0290 7b09          	ld	a,(OFST+0,sp)
1992  0292 a1d2          	cp	a,#210
1993  0294 260c          	jrne	L3501
1994                     ; 598         clockfrequency = LSI_VALUE;
1996  0296 aef400        	ldw	x,#62464
1997  0299 1f07          	ldw	(OFST-2,sp),x
1998  029b ae0001        	ldw	x,#1
1999  029e 1f05          	ldw	(OFST-4,sp),x
2001  02a0 200a          	jra	L1501
2002  02a2               L3501:
2003                     ; 602         clockfrequency = HSE_VALUE;
2005  02a2 ae2400        	ldw	x,#9216
2006  02a5 1f07          	ldw	(OFST-2,sp),x
2007  02a7 ae00f4        	ldw	x,#244
2008  02aa 1f05          	ldw	(OFST-4,sp),x
2009  02ac               L1501:
2010                     ; 605     return((uint32_t)clockfrequency);
2012  02ac 96            	ldw	x,sp
2013  02ad 1c0005        	addw	x,#OFST-4
2014  02b0 cd0000        	call	c_ltor
2018  02b3 5b09          	addw	sp,#9
2019  02b5 81            	ret
2118                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2118                     ; 617 {
2119                     	switch	.text
2120  02b6               _CLK_AdjustHSICalibrationValue:
2122  02b6 88            	push	a
2123       00000000      OFST:	set	0
2126                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2128                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2130  02b7 c650cc        	ld	a,20684
2131  02ba a4f8          	and	a,#248
2132  02bc 1a01          	or	a,(OFST+1,sp)
2133  02be c750cc        	ld	20684,a
2134                     ; 625 }
2137  02c1 84            	pop	a
2138  02c2 81            	ret
2162                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2162                     ; 637 {
2163                     	switch	.text
2164  02c3               _CLK_SYSCLKEmergencyClear:
2168                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2170  02c3 721150c5      	bres	20677,#0
2171                     ; 639 }
2174  02c7 81            	ret
2327                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2327                     ; 649 {
2328                     	switch	.text
2329  02c8               _CLK_GetFlagStatus:
2331  02c8 89            	pushw	x
2332  02c9 5203          	subw	sp,#3
2333       00000003      OFST:	set	3
2336                     ; 651     uint16_t statusreg = 0;
2338                     ; 652     uint8_t tmpreg = 0;
2340                     ; 653     FlagStatus bitstatus = RESET;
2342                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2344                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2346  02cb 01            	rrwa	x,a
2347  02cc 9f            	ld	a,xl
2348  02cd a4ff          	and	a,#255
2349  02cf 97            	ld	xl,a
2350  02d0 4f            	clr	a
2351  02d1 02            	rlwa	x,a
2352  02d2 1f01          	ldw	(OFST-2,sp),x
2353  02d4 01            	rrwa	x,a
2354                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2356  02d5 1e01          	ldw	x,(OFST-2,sp)
2357  02d7 a30100        	cpw	x,#256
2358  02da 2607          	jrne	L1221
2359                     ; 664         tmpreg = CLK->ICKR;
2361  02dc c650c0        	ld	a,20672
2362  02df 6b03          	ld	(OFST+0,sp),a
2364  02e1 202f          	jra	L3221
2365  02e3               L1221:
2366                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2368  02e3 1e01          	ldw	x,(OFST-2,sp)
2369  02e5 a30200        	cpw	x,#512
2370  02e8 2607          	jrne	L5221
2371                     ; 668         tmpreg = CLK->ECKR;
2373  02ea c650c1        	ld	a,20673
2374  02ed 6b03          	ld	(OFST+0,sp),a
2376  02ef 2021          	jra	L3221
2377  02f1               L5221:
2378                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2380  02f1 1e01          	ldw	x,(OFST-2,sp)
2381  02f3 a30300        	cpw	x,#768
2382  02f6 2607          	jrne	L1321
2383                     ; 672         tmpreg = CLK->SWCR;
2385  02f8 c650c5        	ld	a,20677
2386  02fb 6b03          	ld	(OFST+0,sp),a
2388  02fd 2013          	jra	L3221
2389  02ff               L1321:
2390                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2392  02ff 1e01          	ldw	x,(OFST-2,sp)
2393  0301 a30400        	cpw	x,#1024
2394  0304 2607          	jrne	L5321
2395                     ; 676         tmpreg = CLK->CSSR;
2397  0306 c650c8        	ld	a,20680
2398  0309 6b03          	ld	(OFST+0,sp),a
2400  030b 2005          	jra	L3221
2401  030d               L5321:
2402                     ; 680         tmpreg = CLK->CCOR;
2404  030d c650c9        	ld	a,20681
2405  0310 6b03          	ld	(OFST+0,sp),a
2406  0312               L3221:
2407                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2409  0312 7b05          	ld	a,(OFST+2,sp)
2410  0314 1503          	bcp	a,(OFST+0,sp)
2411  0316 2706          	jreq	L1421
2412                     ; 685         bitstatus = SET;
2414  0318 a601          	ld	a,#1
2415  031a 6b03          	ld	(OFST+0,sp),a
2417  031c 2002          	jra	L3421
2418  031e               L1421:
2419                     ; 689         bitstatus = RESET;
2421  031e 0f03          	clr	(OFST+0,sp)
2422  0320               L3421:
2423                     ; 693     return((FlagStatus)bitstatus);
2425  0320 7b03          	ld	a,(OFST+0,sp)
2428  0322 5b05          	addw	sp,#5
2429  0324 81            	ret
2475                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2475                     ; 704 {
2476                     	switch	.text
2477  0325               _CLK_GetITStatus:
2479  0325 88            	push	a
2480  0326 88            	push	a
2481       00000001      OFST:	set	1
2484                     ; 706     ITStatus bitstatus = RESET;
2486                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2488                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2490  0327 a11c          	cp	a,#28
2491  0329 2611          	jrne	L7621
2492                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2494  032b c450c5        	and	a,20677
2495  032e a10c          	cp	a,#12
2496  0330 2606          	jrne	L1721
2497                     ; 716             bitstatus = SET;
2499  0332 a601          	ld	a,#1
2500  0334 6b01          	ld	(OFST+0,sp),a
2502  0336 2015          	jra	L5721
2503  0338               L1721:
2504                     ; 720             bitstatus = RESET;
2506  0338 0f01          	clr	(OFST+0,sp)
2507  033a 2011          	jra	L5721
2508  033c               L7621:
2509                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2511  033c c650c8        	ld	a,20680
2512  033f 1402          	and	a,(OFST+1,sp)
2513  0341 a10c          	cp	a,#12
2514  0343 2606          	jrne	L7721
2515                     ; 728             bitstatus = SET;
2517  0345 a601          	ld	a,#1
2518  0347 6b01          	ld	(OFST+0,sp),a
2520  0349 2002          	jra	L5721
2521  034b               L7721:
2522                     ; 732             bitstatus = RESET;
2524  034b 0f01          	clr	(OFST+0,sp)
2525  034d               L5721:
2526                     ; 737     return bitstatus;
2528  034d 7b01          	ld	a,(OFST+0,sp)
2531  034f 85            	popw	x
2532  0350 81            	ret
2568                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2568                     ; 748 {
2569                     	switch	.text
2570  0351               _CLK_ClearITPendingBit:
2574                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2576                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2578  0351 a10c          	cp	a,#12
2579  0353 2606          	jrne	L1231
2580                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2582  0355 721750c8      	bres	20680,#3
2584  0359 2004          	jra	L3231
2585  035b               L1231:
2586                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2588  035b 721750c5      	bres	20677,#3
2589  035f               L3231:
2590                     ; 764 }
2593  035f 81            	ret
2628                     	xdef	_CLKPrescTable
2629                     	xdef	_HSIDivFactor
2630                     	xdef	_CLK_ClearITPendingBit
2631                     	xdef	_CLK_GetITStatus
2632                     	xdef	_CLK_GetFlagStatus
2633                     	xdef	_CLK_GetSYSCLKSource
2634                     	xdef	_CLK_GetClockFreq
2635                     	xdef	_CLK_AdjustHSICalibrationValue
2636                     	xdef	_CLK_SYSCLKEmergencyClear
2637                     	xdef	_CLK_ClockSecuritySystemEnable
2638                     	xdef	_CLK_SWIMConfig
2639                     	xdef	_CLK_SYSCLKConfig
2640                     	xdef	_CLK_ITConfig
2641                     	xdef	_CLK_CCOConfig
2642                     	xdef	_CLK_HSIPrescalerConfig
2643                     	xdef	_CLK_ClockSwitchConfig
2644                     	xdef	_CLK_PeripheralClockConfig
2645                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2646                     	xdef	_CLK_FastHaltWakeUpCmd
2647                     	xdef	_CLK_ClockSwitchCmd
2648                     	xdef	_CLK_CCOCmd
2649                     	xdef	_CLK_LSICmd
2650                     	xdef	_CLK_HSICmd
2651                     	xdef	_CLK_HSECmd
2652                     	xdef	_CLK_DeInit
2653                     	xref.b	c_lreg
2654                     	xref.b	c_x
2673                     	xref	c_ltor
2674                     	xref	c_ludv
2675                     	xref	c_rtol
2676                     	end
