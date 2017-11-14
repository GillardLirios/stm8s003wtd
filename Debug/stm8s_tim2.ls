   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 46 void TIM2_DeInit(void)
  42                     ; 47 {
  44                     	switch	.text
  45  0000               _TIM2_DeInit:
  49                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  51  0000 725f5300      	clr	21248
  52                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  54  0004 725f5303      	clr	21251
  55                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  57  0008 725f5305      	clr	21253
  58                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  60  000c 725f530a      	clr	21258
  61                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  63  0010 725f530b      	clr	21259
  64                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  0014 725f530a      	clr	21258
  67                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0018 725f530b      	clr	21259
  70                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  72  001c 725f5307      	clr	21255
  73                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  75  0020 725f5308      	clr	21256
  76                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  78  0024 725f5309      	clr	21257
  79                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  81  0028 725f530c      	clr	21260
  82                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  84  002c 725f530d      	clr	21261
  85                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  87  0030 725f530e      	clr	21262
  88                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  90  0034 35ff530f      	mov	21263,#255
  91                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  93  0038 35ff5310      	mov	21264,#255
  94                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  96  003c 725f5311      	clr	21265
  97                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  99  0040 725f5312      	clr	21266
 100                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 102  0044 725f5313      	clr	21267
 103                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 105  0048 725f5314      	clr	21268
 106                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 108  004c 725f5315      	clr	21269
 109                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 111  0050 725f5316      	clr	21270
 112                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 114  0054 725f5304      	clr	21252
 115                     ; 76 }
 118  0058 81            	ret
 286                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 286                     ; 86                         uint16_t TIM2_Period)
 286                     ; 87 {
 287                     	switch	.text
 288  0059               _TIM2_TimeBaseInit:
 290  0059 88            	push	a
 291       00000000      OFST:	set	0
 294                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 296  005a c7530e        	ld	21262,a
 297                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 299  005d 7b04          	ld	a,(OFST+4,sp)
 300  005f c7530f        	ld	21263,a
 301                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 303  0062 7b05          	ld	a,(OFST+5,sp)
 304  0064 c75310        	ld	21264,a
 305                     ; 93 }
 308  0067 84            	pop	a
 309  0068 81            	ret
 466                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 466                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 466                     ; 106                   uint16_t TIM2_Pulse,
 466                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 466                     ; 108 {
 467                     	switch	.text
 468  0069               _TIM2_OC1Init:
 470  0069 89            	pushw	x
 471  006a 88            	push	a
 472       00000001      OFST:	set	1
 475                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 477                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 479                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 481                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 483  006b c6530a        	ld	a,21258
 484  006e a4fc          	and	a,#252
 485  0070 c7530a        	ld	21258,a
 486                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 486                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 488  0073 7b08          	ld	a,(OFST+7,sp)
 489  0075 a402          	and	a,#2
 490  0077 6b01          	ld	(OFST+0,sp),a
 491  0079 9f            	ld	a,xl
 492  007a a401          	and	a,#1
 493  007c 1a01          	or	a,(OFST+0,sp)
 494  007e ca530a        	or	a,21258
 495  0081 c7530a        	ld	21258,a
 496                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 496                     ; 122                             (uint8_t)TIM2_OCMode);
 498  0084 c65307        	ld	a,21255
 499  0087 a48f          	and	a,#143
 500  0089 1a02          	or	a,(OFST+1,sp)
 501  008b c75307        	ld	21255,a
 502                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 504  008e 7b06          	ld	a,(OFST+5,sp)
 505  0090 c75311        	ld	21265,a
 506                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 508  0093 7b07          	ld	a,(OFST+6,sp)
 509  0095 c75312        	ld	21266,a
 510                     ; 127 }
 513  0098 5b03          	addw	sp,#3
 514  009a 81            	ret
 578                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 578                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 578                     ; 140                   uint16_t TIM2_Pulse,
 578                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 578                     ; 142 {
 579                     	switch	.text
 580  009b               _TIM2_OC2Init:
 582  009b 89            	pushw	x
 583  009c 88            	push	a
 584       00000001      OFST:	set	1
 587                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 589                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 591                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 593                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 595  009d c6530a        	ld	a,21258
 596  00a0 a4cf          	and	a,#207
 597  00a2 c7530a        	ld	21258,a
 598                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 598                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 600  00a5 7b08          	ld	a,(OFST+7,sp)
 601  00a7 a420          	and	a,#32
 602  00a9 6b01          	ld	(OFST+0,sp),a
 603  00ab 9f            	ld	a,xl
 604  00ac a410          	and	a,#16
 605  00ae 1a01          	or	a,(OFST+0,sp)
 606  00b0 ca530a        	or	a,21258
 607  00b3 c7530a        	ld	21258,a
 608                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 608                     ; 158                             (uint8_t)TIM2_OCMode);
 610  00b6 c65308        	ld	a,21256
 611  00b9 a48f          	and	a,#143
 612  00bb 1a02          	or	a,(OFST+1,sp)
 613  00bd c75308        	ld	21256,a
 614                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 616  00c0 7b06          	ld	a,(OFST+5,sp)
 617  00c2 c75313        	ld	21267,a
 618                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 620  00c5 7b07          	ld	a,(OFST+6,sp)
 621  00c7 c75314        	ld	21268,a
 622                     ; 164 }
 625  00ca 5b03          	addw	sp,#3
 626  00cc 81            	ret
 690                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 690                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 690                     ; 177                   uint16_t TIM2_Pulse,
 690                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 690                     ; 179 {
 691                     	switch	.text
 692  00cd               _TIM2_OC3Init:
 694  00cd 89            	pushw	x
 695  00ce 88            	push	a
 696       00000001      OFST:	set	1
 699                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 701                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 703                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 705                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 707  00cf c6530b        	ld	a,21259
 708  00d2 a4fc          	and	a,#252
 709  00d4 c7530b        	ld	21259,a
 710                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 710                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 712  00d7 7b08          	ld	a,(OFST+7,sp)
 713  00d9 a402          	and	a,#2
 714  00db 6b01          	ld	(OFST+0,sp),a
 715  00dd 9f            	ld	a,xl
 716  00de a401          	and	a,#1
 717  00e0 1a01          	or	a,(OFST+0,sp)
 718  00e2 ca530b        	or	a,21259
 719  00e5 c7530b        	ld	21259,a
 720                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 720                     ; 192                             (uint8_t)TIM2_OCMode);
 722  00e8 c65309        	ld	a,21257
 723  00eb a48f          	and	a,#143
 724  00ed 1a02          	or	a,(OFST+1,sp)
 725  00ef c75309        	ld	21257,a
 726                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 728  00f2 7b06          	ld	a,(OFST+5,sp)
 729  00f4 c75315        	ld	21269,a
 730                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 732  00f7 7b07          	ld	a,(OFST+6,sp)
 733  00f9 c75316        	ld	21270,a
 734                     ; 198 }
 737  00fc 5b03          	addw	sp,#3
 738  00fe 81            	ret
 931                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
 931                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
 931                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
 931                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
 931                     ; 214                  uint8_t TIM2_ICFilter)
 931                     ; 215 {
 932                     	switch	.text
 933  00ff               _TIM2_ICInit:
 935  00ff 89            	pushw	x
 936       00000000      OFST:	set	0
 939                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
 941                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
 943                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
 945                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
 947                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
 949                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
 951  0100 9e            	ld	a,xh
 952  0101 4d            	tnz	a
 953  0102 2614          	jrne	L104
 954                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
 954                     ; 227                    (uint8_t)TIM2_ICSelection,
 954                     ; 228                    (uint8_t)TIM2_ICFilter);
 956  0104 7b07          	ld	a,(OFST+7,sp)
 957  0106 88            	push	a
 958  0107 7b06          	ld	a,(OFST+6,sp)
 959  0109 97            	ld	xl,a
 960  010a 7b03          	ld	a,(OFST+3,sp)
 961  010c 95            	ld	xh,a
 962  010d cd044a        	call	L3_TI1_Config
 964  0110 84            	pop	a
 965                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
 967  0111 7b06          	ld	a,(OFST+6,sp)
 968  0113 cd0340        	call	_TIM2_SetIC1Prescaler
 971  0116 202c          	jra	L304
 972  0118               L104:
 973                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
 975  0118 7b01          	ld	a,(OFST+1,sp)
 976  011a a101          	cp	a,#1
 977  011c 2614          	jrne	L504
 978                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
 978                     ; 237                    (uint8_t)TIM2_ICSelection,
 978                     ; 238                    (uint8_t)TIM2_ICFilter);
 980  011e 7b07          	ld	a,(OFST+7,sp)
 981  0120 88            	push	a
 982  0121 7b06          	ld	a,(OFST+6,sp)
 983  0123 97            	ld	xl,a
 984  0124 7b03          	ld	a,(OFST+3,sp)
 985  0126 95            	ld	xh,a
 986  0127 cd047a        	call	L5_TI2_Config
 988  012a 84            	pop	a
 989                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
 991  012b 7b06          	ld	a,(OFST+6,sp)
 992  012d cd034d        	call	_TIM2_SetIC2Prescaler
 995  0130 2012          	jra	L304
 996  0132               L504:
 997                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
 997                     ; 247                    (uint8_t)TIM2_ICSelection,
 997                     ; 248                    (uint8_t)TIM2_ICFilter);
 999  0132 7b07          	ld	a,(OFST+7,sp)
1000  0134 88            	push	a
1001  0135 7b06          	ld	a,(OFST+6,sp)
1002  0137 97            	ld	xl,a
1003  0138 7b03          	ld	a,(OFST+3,sp)
1004  013a 95            	ld	xh,a
1005  013b cd04aa        	call	L7_TI3_Config
1007  013e 84            	pop	a
1008                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1010  013f 7b06          	ld	a,(OFST+6,sp)
1011  0141 cd035a        	call	_TIM2_SetIC3Prescaler
1013  0144               L304:
1014                     ; 253 }
1017  0144 85            	popw	x
1018  0145 81            	ret
1114                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1114                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1114                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1114                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1114                     ; 269                      uint8_t TIM2_ICFilter)
1114                     ; 270 {
1115                     	switch	.text
1116  0146               _TIM2_PWMIConfig:
1118  0146 89            	pushw	x
1119  0147 89            	pushw	x
1120       00000002      OFST:	set	2
1123                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1125                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1127                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1129                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1131                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1133                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1135                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1137  0148 9f            	ld	a,xl
1138  0149 a144          	cp	a,#68
1139  014b 2706          	jreq	L754
1140                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1142  014d a644          	ld	a,#68
1143  014f 6b01          	ld	(OFST-1,sp),a
1145  0151 2002          	jra	L164
1146  0153               L754:
1147                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1149  0153 0f01          	clr	(OFST-1,sp)
1150  0155               L164:
1151                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1153  0155 7b07          	ld	a,(OFST+5,sp)
1154  0157 a101          	cp	a,#1
1155  0159 2606          	jrne	L364
1156                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1158  015b a602          	ld	a,#2
1159  015d 6b02          	ld	(OFST+0,sp),a
1161  015f 2004          	jra	L564
1162  0161               L364:
1163                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1165  0161 a601          	ld	a,#1
1166  0163 6b02          	ld	(OFST+0,sp),a
1167  0165               L564:
1168                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1170  0165 0d03          	tnz	(OFST+1,sp)
1171  0167 2626          	jrne	L764
1172                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1172                     ; 304                    (uint8_t)TIM2_ICFilter);
1174  0169 7b09          	ld	a,(OFST+7,sp)
1175  016b 88            	push	a
1176  016c 7b08          	ld	a,(OFST+6,sp)
1177  016e 97            	ld	xl,a
1178  016f 7b05          	ld	a,(OFST+3,sp)
1179  0171 95            	ld	xh,a
1180  0172 cd044a        	call	L3_TI1_Config
1182  0175 84            	pop	a
1183                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1185  0176 7b08          	ld	a,(OFST+6,sp)
1186  0178 cd0340        	call	_TIM2_SetIC1Prescaler
1188                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1190  017b 7b09          	ld	a,(OFST+7,sp)
1191  017d 88            	push	a
1192  017e 7b03          	ld	a,(OFST+1,sp)
1193  0180 97            	ld	xl,a
1194  0181 7b02          	ld	a,(OFST+0,sp)
1195  0183 95            	ld	xh,a
1196  0184 cd047a        	call	L5_TI2_Config
1198  0187 84            	pop	a
1199                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1201  0188 7b08          	ld	a,(OFST+6,sp)
1202  018a cd034d        	call	_TIM2_SetIC2Prescaler
1205  018d 2024          	jra	L174
1206  018f               L764:
1207                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1207                     ; 319                    (uint8_t)TIM2_ICFilter);
1209  018f 7b09          	ld	a,(OFST+7,sp)
1210  0191 88            	push	a
1211  0192 7b08          	ld	a,(OFST+6,sp)
1212  0194 97            	ld	xl,a
1213  0195 7b05          	ld	a,(OFST+3,sp)
1214  0197 95            	ld	xh,a
1215  0198 cd047a        	call	L5_TI2_Config
1217  019b 84            	pop	a
1218                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1220  019c 7b08          	ld	a,(OFST+6,sp)
1221  019e cd034d        	call	_TIM2_SetIC2Prescaler
1223                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1225  01a1 7b09          	ld	a,(OFST+7,sp)
1226  01a3 88            	push	a
1227  01a4 7b03          	ld	a,(OFST+1,sp)
1228  01a6 97            	ld	xl,a
1229  01a7 7b02          	ld	a,(OFST+0,sp)
1230  01a9 95            	ld	xh,a
1231  01aa cd044a        	call	L3_TI1_Config
1233  01ad 84            	pop	a
1234                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1236  01ae 7b08          	ld	a,(OFST+6,sp)
1237  01b0 cd0340        	call	_TIM2_SetIC1Prescaler
1239  01b3               L174:
1240                     ; 330 }
1243  01b3 5b04          	addw	sp,#4
1244  01b5 81            	ret
1299                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1299                     ; 340 {
1300                     	switch	.text
1301  01b6               _TIM2_Cmd:
1305                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1307                     ; 345     if (NewState != DISABLE)
1309  01b6 4d            	tnz	a
1310  01b7 2706          	jreq	L125
1311                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1313  01b9 72105300      	bset	21248,#0
1315  01bd 2004          	jra	L325
1316  01bf               L125:
1317                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1319  01bf 72115300      	bres	21248,#0
1320  01c3               L325:
1321                     ; 353 }
1324  01c3 81            	ret
1403                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1403                     ; 370 {
1404                     	switch	.text
1405  01c4               _TIM2_ITConfig:
1407  01c4 89            	pushw	x
1408       00000000      OFST:	set	0
1411                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1413                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1415                     ; 375     if (NewState != DISABLE)
1417  01c5 9f            	ld	a,xl
1418  01c6 4d            	tnz	a
1419  01c7 2709          	jreq	L365
1420                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1422  01c9 9e            	ld	a,xh
1423  01ca ca5303        	or	a,21251
1424  01cd c75303        	ld	21251,a
1426  01d0 2009          	jra	L565
1427  01d2               L365:
1428                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1430  01d2 7b01          	ld	a,(OFST+1,sp)
1431  01d4 43            	cpl	a
1432  01d5 c45303        	and	a,21251
1433  01d8 c75303        	ld	21251,a
1434  01db               L565:
1435                     ; 385 }
1438  01db 85            	popw	x
1439  01dc 81            	ret
1475                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1475                     ; 395 {
1476                     	switch	.text
1477  01dd               _TIM2_UpdateDisableConfig:
1481                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1483                     ; 400     if (NewState != DISABLE)
1485  01dd 4d            	tnz	a
1486  01de 2706          	jreq	L506
1487                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1489  01e0 72125300      	bset	21248,#1
1491  01e4 2004          	jra	L706
1492  01e6               L506:
1493                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1495  01e6 72135300      	bres	21248,#1
1496  01ea               L706:
1497                     ; 408 }
1500  01ea 81            	ret
1558                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1558                     ; 419 {
1559                     	switch	.text
1560  01eb               _TIM2_UpdateRequestConfig:
1564                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1566                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1568  01eb 4d            	tnz	a
1569  01ec 2706          	jreq	L736
1570                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1572  01ee 72145300      	bset	21248,#2
1574  01f2 2004          	jra	L146
1575  01f4               L736:
1576                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1578  01f4 72155300      	bres	21248,#2
1579  01f8               L146:
1580                     ; 432 }
1583  01f8 81            	ret
1640                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1640                     ; 444 {
1641                     	switch	.text
1642  01f9               _TIM2_SelectOnePulseMode:
1646                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1648                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1650  01f9 4d            	tnz	a
1651  01fa 2706          	jreq	L176
1652                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1654  01fc 72165300      	bset	21248,#3
1656  0200 2004          	jra	L376
1657  0202               L176:
1658                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1660  0202 72175300      	bres	21248,#3
1661  0206               L376:
1662                     ; 458 }
1665  0206 81            	ret
1733                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
1733                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
1733                     ; 491 {
1734                     	switch	.text
1735  0207               _TIM2_PrescalerConfig:
1739                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
1741                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
1743                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
1745  0207 9e            	ld	a,xh
1746  0208 c7530e        	ld	21262,a
1747                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
1749  020b 9f            	ld	a,xl
1750  020c c75306        	ld	21254,a
1751                     ; 501 }
1754  020f 81            	ret
1812                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1812                     ; 513 {
1813                     	switch	.text
1814  0210               _TIM2_ForcedOC1Config:
1816  0210 88            	push	a
1817       00000000      OFST:	set	0
1820                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1822                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
1822                     ; 519                               | (uint8_t)TIM2_ForcedAction);
1824  0211 c65307        	ld	a,21255
1825  0214 a48f          	and	a,#143
1826  0216 1a01          	or	a,(OFST+1,sp)
1827  0218 c75307        	ld	21255,a
1828                     ; 520 }
1831  021b 84            	pop	a
1832  021c 81            	ret
1868                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1868                     ; 532 {
1869                     	switch	.text
1870  021d               _TIM2_ForcedOC2Config:
1872  021d 88            	push	a
1873       00000000      OFST:	set	0
1876                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1878                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
1878                     ; 538                             | (uint8_t)TIM2_ForcedAction);
1880  021e c65308        	ld	a,21256
1881  0221 a48f          	and	a,#143
1882  0223 1a01          	or	a,(OFST+1,sp)
1883  0225 c75308        	ld	21256,a
1884                     ; 539 }
1887  0228 84            	pop	a
1888  0229 81            	ret
1924                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
1924                     ; 551 {
1925                     	switch	.text
1926  022a               _TIM2_ForcedOC3Config:
1928  022a 88            	push	a
1929       00000000      OFST:	set	0
1932                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
1934                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
1934                     ; 557                               | (uint8_t)TIM2_ForcedAction);
1936  022b c65309        	ld	a,21257
1937  022e a48f          	and	a,#143
1938  0230 1a01          	or	a,(OFST+1,sp)
1939  0232 c75309        	ld	21257,a
1940                     ; 558 }
1943  0235 84            	pop	a
1944  0236 81            	ret
1980                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
1980                     ; 568 {
1981                     	switch	.text
1982  0237               _TIM2_ARRPreloadConfig:
1986                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1988                     ; 573     if (NewState != DISABLE)
1990  0237 4d            	tnz	a
1991  0238 2706          	jreq	L7201
1992                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
1994  023a 721e5300      	bset	21248,#7
1996  023e 2004          	jra	L1301
1997  0240               L7201:
1998                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2000  0240 721f5300      	bres	21248,#7
2001  0244               L1301:
2002                     ; 581 }
2005  0244 81            	ret
2041                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2041                     ; 591 {
2042                     	switch	.text
2043  0245               _TIM2_OC1PreloadConfig:
2047                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2049                     ; 596     if (NewState != DISABLE)
2051  0245 4d            	tnz	a
2052  0246 2706          	jreq	L1501
2053                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2055  0248 72165307      	bset	21255,#3
2057  024c 2004          	jra	L3501
2058  024e               L1501:
2059                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2061  024e 72175307      	bres	21255,#3
2062  0252               L3501:
2063                     ; 604 }
2066  0252 81            	ret
2102                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2102                     ; 614 {
2103                     	switch	.text
2104  0253               _TIM2_OC2PreloadConfig:
2108                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2110                     ; 619     if (NewState != DISABLE)
2112  0253 4d            	tnz	a
2113  0254 2706          	jreq	L3701
2114                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2116  0256 72165308      	bset	21256,#3
2118  025a 2004          	jra	L5701
2119  025c               L3701:
2120                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2122  025c 72175308      	bres	21256,#3
2123  0260               L5701:
2124                     ; 627 }
2127  0260 81            	ret
2163                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2163                     ; 637 {
2164                     	switch	.text
2165  0261               _TIM2_OC3PreloadConfig:
2169                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2171                     ; 642     if (NewState != DISABLE)
2173  0261 4d            	tnz	a
2174  0262 2706          	jreq	L5111
2175                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2177  0264 72165309      	bset	21257,#3
2179  0268 2004          	jra	L7111
2180  026a               L5111:
2181                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2183  026a 72175309      	bres	21257,#3
2184  026e               L7111:
2185                     ; 650 }
2188  026e 81            	ret
2261                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2261                     ; 664 {
2262                     	switch	.text
2263  026f               _TIM2_GenerateEvent:
2267                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2269                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2271  026f c75306        	ld	21254,a
2272                     ; 670 }
2275  0272 81            	ret
2311                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2311                     ; 682 {
2312                     	switch	.text
2313  0273               _TIM2_OC1PolarityConfig:
2317                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2319                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2321  0273 4d            	tnz	a
2322  0274 2706          	jreq	L1711
2323                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2325  0276 7212530a      	bset	21258,#1
2327  027a 2004          	jra	L3711
2328  027c               L1711:
2329                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2331  027c 7213530a      	bres	21258,#1
2332  0280               L3711:
2333                     ; 695 }
2336  0280 81            	ret
2372                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2372                     ; 707 {
2373                     	switch	.text
2374  0281               _TIM2_OC2PolarityConfig:
2378                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2380                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2382  0281 4d            	tnz	a
2383  0282 2706          	jreq	L3121
2384                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2386  0284 721a530a      	bset	21258,#5
2388  0288 2004          	jra	L5121
2389  028a               L3121:
2390                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2392  028a 721b530a      	bres	21258,#5
2393  028e               L5121:
2394                     ; 720 }
2397  028e 81            	ret
2433                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2433                     ; 732 {
2434                     	switch	.text
2435  028f               _TIM2_OC3PolarityConfig:
2439                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2441                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2443  028f 4d            	tnz	a
2444  0290 2706          	jreq	L5321
2445                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2447  0292 7212530b      	bset	21259,#1
2449  0296 2004          	jra	L7321
2450  0298               L5321:
2451                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2453  0298 7213530b      	bres	21259,#1
2454  029c               L7321:
2455                     ; 745 }
2458  029c 81            	ret
2503                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
2503                     ; 760 {
2504                     	switch	.text
2505  029d               _TIM2_CCxCmd:
2507  029d 89            	pushw	x
2508       00000000      OFST:	set	0
2511                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2513                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2515                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
2517  029e 9e            	ld	a,xh
2518  029f 4d            	tnz	a
2519  02a0 2610          	jrne	L3621
2520                     ; 768         if (NewState != DISABLE)
2522  02a2 9f            	ld	a,xl
2523  02a3 4d            	tnz	a
2524  02a4 2706          	jreq	L5621
2525                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
2527  02a6 7210530a      	bset	21258,#0
2529  02aa 202a          	jra	L1721
2530  02ac               L5621:
2531                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2533  02ac 7211530a      	bres	21258,#0
2534  02b0 2024          	jra	L1721
2535  02b2               L3621:
2536                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
2538  02b2 7b01          	ld	a,(OFST+1,sp)
2539  02b4 a101          	cp	a,#1
2540  02b6 2610          	jrne	L3721
2541                     ; 781         if (NewState != DISABLE)
2543  02b8 0d02          	tnz	(OFST+2,sp)
2544  02ba 2706          	jreq	L5721
2545                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
2547  02bc 7218530a      	bset	21258,#4
2549  02c0 2014          	jra	L1721
2550  02c2               L5721:
2551                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2553  02c2 7219530a      	bres	21258,#4
2554  02c6 200e          	jra	L1721
2555  02c8               L3721:
2556                     ; 793         if (NewState != DISABLE)
2558  02c8 0d02          	tnz	(OFST+2,sp)
2559  02ca 2706          	jreq	L3031
2560                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
2562  02cc 7210530b      	bset	21259,#0
2564  02d0 2004          	jra	L1721
2565  02d2               L3031:
2566                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2568  02d2 7211530b      	bres	21259,#0
2569  02d6               L1721:
2570                     ; 802 }
2573  02d6 85            	popw	x
2574  02d7 81            	ret
2619                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
2619                     ; 825 {
2620                     	switch	.text
2621  02d8               _TIM2_SelectOCxM:
2623  02d8 89            	pushw	x
2624       00000000      OFST:	set	0
2627                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
2629                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
2631                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
2633  02d9 9e            	ld	a,xh
2634  02da 4d            	tnz	a
2635  02db 2610          	jrne	L1331
2636                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
2638  02dd 7211530a      	bres	21258,#0
2639                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
2639                     ; 837                                | (uint8_t)TIM2_OCMode);
2641  02e1 c65307        	ld	a,21255
2642  02e4 a48f          	and	a,#143
2643  02e6 1a02          	or	a,(OFST+2,sp)
2644  02e8 c75307        	ld	21255,a
2646  02eb 2024          	jra	L3331
2647  02ed               L1331:
2648                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
2650  02ed 7b01          	ld	a,(OFST+1,sp)
2651  02ef a101          	cp	a,#1
2652  02f1 2610          	jrne	L5331
2653                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
2655  02f3 7219530a      	bres	21258,#4
2656                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
2656                     ; 846                                 | (uint8_t)TIM2_OCMode);
2658  02f7 c65308        	ld	a,21256
2659  02fa a48f          	and	a,#143
2660  02fc 1a02          	or	a,(OFST+2,sp)
2661  02fe c75308        	ld	21256,a
2663  0301 200e          	jra	L3331
2664  0303               L5331:
2665                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
2667  0303 7211530b      	bres	21259,#0
2668                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2668                     ; 855                                 | (uint8_t)TIM2_OCMode);
2670  0307 c65309        	ld	a,21257
2671  030a a48f          	and	a,#143
2672  030c 1a02          	or	a,(OFST+2,sp)
2673  030e c75309        	ld	21257,a
2674  0311               L3331:
2675                     ; 857 }
2678  0311 85            	popw	x
2679  0312 81            	ret
2713                     ; 866 void TIM2_SetCounter(uint16_t Counter)
2713                     ; 867 {
2714                     	switch	.text
2715  0313               _TIM2_SetCounter:
2719                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
2721  0313 9e            	ld	a,xh
2722  0314 c7530c        	ld	21260,a
2723                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
2725  0317 9f            	ld	a,xl
2726  0318 c7530d        	ld	21261,a
2727                     ; 872 }
2730  031b 81            	ret
2764                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
2764                     ; 882 {
2765                     	switch	.text
2766  031c               _TIM2_SetAutoreload:
2770                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
2772  031c 9e            	ld	a,xh
2773  031d c7530f        	ld	21263,a
2774                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
2776  0320 9f            	ld	a,xl
2777  0321 c75310        	ld	21264,a
2778                     ; 888 }
2781  0324 81            	ret
2815                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
2815                     ; 898 {
2816                     	switch	.text
2817  0325               _TIM2_SetCompare1:
2821                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
2823  0325 9e            	ld	a,xh
2824  0326 c75311        	ld	21265,a
2825                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
2827  0329 9f            	ld	a,xl
2828  032a c75312        	ld	21266,a
2829                     ; 903 }
2832  032d 81            	ret
2866                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
2866                     ; 913 {
2867                     	switch	.text
2868  032e               _TIM2_SetCompare2:
2872                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
2874  032e 9e            	ld	a,xh
2875  032f c75313        	ld	21267,a
2876                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
2878  0332 9f            	ld	a,xl
2879  0333 c75314        	ld	21268,a
2880                     ; 918 }
2883  0336 81            	ret
2917                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
2917                     ; 928 {
2918                     	switch	.text
2919  0337               _TIM2_SetCompare3:
2923                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
2925  0337 9e            	ld	a,xh
2926  0338 c75315        	ld	21269,a
2927                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
2929  033b 9f            	ld	a,xl
2930  033c c75316        	ld	21270,a
2931                     ; 933 }
2934  033f 81            	ret
2970                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
2970                     ; 947 {
2971                     	switch	.text
2972  0340               _TIM2_SetIC1Prescaler:
2974  0340 88            	push	a
2975       00000000      OFST:	set	0
2978                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
2980                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
2980                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
2982  0341 c65307        	ld	a,21255
2983  0344 a4f3          	and	a,#243
2984  0346 1a01          	or	a,(OFST+1,sp)
2985  0348 c75307        	ld	21255,a
2986                     ; 954 }
2989  034b 84            	pop	a
2990  034c 81            	ret
3026                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3026                     ; 967 {
3027                     	switch	.text
3028  034d               _TIM2_SetIC2Prescaler:
3030  034d 88            	push	a
3031       00000000      OFST:	set	0
3034                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3036                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3036                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3038  034e c65308        	ld	a,21256
3039  0351 a4f3          	and	a,#243
3040  0353 1a01          	or	a,(OFST+1,sp)
3041  0355 c75308        	ld	21256,a
3042                     ; 974 }
3045  0358 84            	pop	a
3046  0359 81            	ret
3082                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3082                     ; 987 {
3083                     	switch	.text
3084  035a               _TIM2_SetIC3Prescaler:
3086  035a 88            	push	a
3087       00000000      OFST:	set	0
3090                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3092                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3092                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3094  035b c65309        	ld	a,21257
3095  035e a4f3          	and	a,#243
3096  0360 1a01          	or	a,(OFST+1,sp)
3097  0362 c75309        	ld	21257,a
3098                     ; 994 }
3101  0365 84            	pop	a
3102  0366 81            	ret
3154                     ; 1001 uint16_t TIM2_GetCapture1(void)
3154                     ; 1002 {
3155                     	switch	.text
3156  0367               _TIM2_GetCapture1:
3158  0367 5204          	subw	sp,#4
3159       00000004      OFST:	set	4
3162                     ; 1004     uint16_t tmpccr1 = 0;
3164                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3168                     ; 1007     tmpccr1h = TIM2->CCR1H;
3170  0369 c65311        	ld	a,21265
3171  036c 6b02          	ld	(OFST-2,sp),a
3172                     ; 1008     tmpccr1l = TIM2->CCR1L;
3174  036e c65312        	ld	a,21266
3175  0371 6b01          	ld	(OFST-3,sp),a
3176                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3178  0373 7b01          	ld	a,(OFST-3,sp)
3179  0375 5f            	clrw	x
3180  0376 97            	ld	xl,a
3181  0377 1f03          	ldw	(OFST-1,sp),x
3182                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3184  0379 7b02          	ld	a,(OFST-2,sp)
3185  037b 5f            	clrw	x
3186  037c 97            	ld	xl,a
3187  037d 4f            	clr	a
3188  037e 02            	rlwa	x,a
3189  037f 01            	rrwa	x,a
3190  0380 1a04          	or	a,(OFST+0,sp)
3191  0382 01            	rrwa	x,a
3192  0383 1a03          	or	a,(OFST-1,sp)
3193  0385 01            	rrwa	x,a
3194  0386 1f03          	ldw	(OFST-1,sp),x
3195                     ; 1013     return (uint16_t)tmpccr1;
3197  0388 1e03          	ldw	x,(OFST-1,sp)
3200  038a 5b04          	addw	sp,#4
3201  038c 81            	ret
3253                     ; 1021 uint16_t TIM2_GetCapture2(void)
3253                     ; 1022 {
3254                     	switch	.text
3255  038d               _TIM2_GetCapture2:
3257  038d 5204          	subw	sp,#4
3258       00000004      OFST:	set	4
3261                     ; 1024     uint16_t tmpccr2 = 0;
3263                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3267                     ; 1027     tmpccr2h = TIM2->CCR2H;
3269  038f c65313        	ld	a,21267
3270  0392 6b02          	ld	(OFST-2,sp),a
3271                     ; 1028     tmpccr2l = TIM2->CCR2L;
3273  0394 c65314        	ld	a,21268
3274  0397 6b01          	ld	(OFST-3,sp),a
3275                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3277  0399 7b01          	ld	a,(OFST-3,sp)
3278  039b 5f            	clrw	x
3279  039c 97            	ld	xl,a
3280  039d 1f03          	ldw	(OFST-1,sp),x
3281                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3283  039f 7b02          	ld	a,(OFST-2,sp)
3284  03a1 5f            	clrw	x
3285  03a2 97            	ld	xl,a
3286  03a3 4f            	clr	a
3287  03a4 02            	rlwa	x,a
3288  03a5 01            	rrwa	x,a
3289  03a6 1a04          	or	a,(OFST+0,sp)
3290  03a8 01            	rrwa	x,a
3291  03a9 1a03          	or	a,(OFST-1,sp)
3292  03ab 01            	rrwa	x,a
3293  03ac 1f03          	ldw	(OFST-1,sp),x
3294                     ; 1033     return (uint16_t)tmpccr2;
3296  03ae 1e03          	ldw	x,(OFST-1,sp)
3299  03b0 5b04          	addw	sp,#4
3300  03b2 81            	ret
3352                     ; 1041 uint16_t TIM2_GetCapture3(void)
3352                     ; 1042 {
3353                     	switch	.text
3354  03b3               _TIM2_GetCapture3:
3356  03b3 5204          	subw	sp,#4
3357       00000004      OFST:	set	4
3360                     ; 1044     uint16_t tmpccr3 = 0;
3362                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
3366                     ; 1047     tmpccr3h = TIM2->CCR3H;
3368  03b5 c65315        	ld	a,21269
3369  03b8 6b02          	ld	(OFST-2,sp),a
3370                     ; 1048     tmpccr3l = TIM2->CCR3L;
3372  03ba c65316        	ld	a,21270
3373  03bd 6b01          	ld	(OFST-3,sp),a
3374                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
3376  03bf 7b01          	ld	a,(OFST-3,sp)
3377  03c1 5f            	clrw	x
3378  03c2 97            	ld	xl,a
3379  03c3 1f03          	ldw	(OFST-1,sp),x
3380                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3382  03c5 7b02          	ld	a,(OFST-2,sp)
3383  03c7 5f            	clrw	x
3384  03c8 97            	ld	xl,a
3385  03c9 4f            	clr	a
3386  03ca 02            	rlwa	x,a
3387  03cb 01            	rrwa	x,a
3388  03cc 1a04          	or	a,(OFST+0,sp)
3389  03ce 01            	rrwa	x,a
3390  03cf 1a03          	or	a,(OFST-1,sp)
3391  03d1 01            	rrwa	x,a
3392  03d2 1f03          	ldw	(OFST-1,sp),x
3393                     ; 1053     return (uint16_t)tmpccr3;
3395  03d4 1e03          	ldw	x,(OFST-1,sp)
3398  03d6 5b04          	addw	sp,#4
3399  03d8 81            	ret
3433                     ; 1061 uint16_t TIM2_GetCounter(void)
3433                     ; 1062 {
3434                     	switch	.text
3435  03d9               _TIM2_GetCounter:
3437  03d9 89            	pushw	x
3438       00000002      OFST:	set	2
3441                     ; 1063      uint16_t tmpcntr = 0;
3443                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
3445  03da c6530c        	ld	a,21260
3446  03dd 5f            	clrw	x
3447  03de 97            	ld	xl,a
3448  03df 4f            	clr	a
3449  03e0 02            	rlwa	x,a
3450  03e1 1f01          	ldw	(OFST-1,sp),x
3451                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
3453  03e3 c6530d        	ld	a,21261
3454  03e6 5f            	clrw	x
3455  03e7 97            	ld	xl,a
3456  03e8 01            	rrwa	x,a
3457  03e9 1a02          	or	a,(OFST+0,sp)
3458  03eb 01            	rrwa	x,a
3459  03ec 1a01          	or	a,(OFST-1,sp)
3460  03ee 01            	rrwa	x,a
3463  03ef 5b02          	addw	sp,#2
3464  03f1 81            	ret
3488                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
3488                     ; 1077 {
3489                     	switch	.text
3490  03f2               _TIM2_GetPrescaler:
3494                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
3496  03f2 c6530e        	ld	a,21262
3499  03f5 81            	ret
3638                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3638                     ; 1097 {
3639                     	switch	.text
3640  03f6               _TIM2_GetFlagStatus:
3642  03f6 89            	pushw	x
3643  03f7 89            	pushw	x
3644       00000002      OFST:	set	2
3647                     ; 1098     FlagStatus bitstatus = RESET;
3649                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3653                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
3655                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
3657  03f8 9f            	ld	a,xl
3658  03f9 c45304        	and	a,21252
3659  03fc 6b01          	ld	(OFST-1,sp),a
3660                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
3662  03fe 7b03          	ld	a,(OFST+1,sp)
3663  0400 6b02          	ld	(OFST+0,sp),a
3664                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
3666  0402 c65305        	ld	a,21253
3667  0405 1402          	and	a,(OFST+0,sp)
3668  0407 1a01          	or	a,(OFST-1,sp)
3669  0409 2706          	jreq	L5371
3670                     ; 1109         bitstatus = SET;
3672  040b a601          	ld	a,#1
3673  040d 6b02          	ld	(OFST+0,sp),a
3675  040f 2002          	jra	L7371
3676  0411               L5371:
3677                     ; 1113         bitstatus = RESET;
3679  0411 0f02          	clr	(OFST+0,sp)
3680  0413               L7371:
3681                     ; 1115     return (FlagStatus)bitstatus;
3683  0413 7b02          	ld	a,(OFST+0,sp)
3686  0415 5b04          	addw	sp,#4
3687  0417 81            	ret
3722                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3722                     ; 1133 {
3723                     	switch	.text
3724  0418               _TIM2_ClearFlag:
3728                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
3730                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
3732  0418 9f            	ld	a,xl
3733  0419 43            	cpl	a
3734  041a c75304        	ld	21252,a
3735                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
3737  041d 35ff5305      	mov	21253,#255
3738                     ; 1140 }
3741  0421 81            	ret
3805                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3805                     ; 1155 {
3806                     	switch	.text
3807  0422               _TIM2_GetITStatus:
3809  0422 88            	push	a
3810  0423 89            	pushw	x
3811       00000002      OFST:	set	2
3814                     ; 1156     ITStatus bitstatus = RESET;
3816                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
3820                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
3822                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
3824  0424 c45304        	and	a,21252
3825  0427 6b01          	ld	(OFST-1,sp),a
3826                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
3828  0429 c65303        	ld	a,21251
3829  042c 1403          	and	a,(OFST+1,sp)
3830  042e 6b02          	ld	(OFST+0,sp),a
3831                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
3833  0430 0d01          	tnz	(OFST-1,sp)
3834  0432 270a          	jreq	L1102
3836  0434 0d02          	tnz	(OFST+0,sp)
3837  0436 2706          	jreq	L1102
3838                     ; 1168         bitstatus = SET;
3840  0438 a601          	ld	a,#1
3841  043a 6b02          	ld	(OFST+0,sp),a
3843  043c 2002          	jra	L3102
3844  043e               L1102:
3845                     ; 1172         bitstatus = RESET;
3847  043e 0f02          	clr	(OFST+0,sp)
3848  0440               L3102:
3849                     ; 1174     return (ITStatus)(bitstatus);
3851  0440 7b02          	ld	a,(OFST+0,sp)
3854  0442 5b03          	addw	sp,#3
3855  0444 81            	ret
3891                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
3891                     ; 1189 {
3892                     	switch	.text
3893  0445               _TIM2_ClearITPendingBit:
3897                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
3899                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
3901  0445 43            	cpl	a
3902  0446 c75304        	ld	21252,a
3903                     ; 1195 }
3906  0449 81            	ret
3958                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
3958                     ; 1215                        uint8_t TIM2_ICSelection,
3958                     ; 1216                        uint8_t TIM2_ICFilter)
3958                     ; 1217 {
3959                     	switch	.text
3960  044a               L3_TI1_Config:
3962  044a 89            	pushw	x
3963  044b 88            	push	a
3964       00000001      OFST:	set	1
3967                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3969  044c 7211530a      	bres	21258,#0
3970                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
3970                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
3972  0450 7b06          	ld	a,(OFST+5,sp)
3973  0452 97            	ld	xl,a
3974  0453 a610          	ld	a,#16
3975  0455 42            	mul	x,a
3976  0456 9f            	ld	a,xl
3977  0457 1a03          	or	a,(OFST+2,sp)
3978  0459 6b01          	ld	(OFST+0,sp),a
3979  045b c65307        	ld	a,21255
3980  045e a40c          	and	a,#12
3981  0460 1a01          	or	a,(OFST+0,sp)
3982  0462 c75307        	ld	21255,a
3983                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
3985  0465 0d02          	tnz	(OFST+1,sp)
3986  0467 2706          	jreq	L1602
3987                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
3989  0469 7212530a      	bset	21258,#1
3991  046d 2004          	jra	L3602
3992  046f               L1602:
3993                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3995  046f 7213530a      	bres	21258,#1
3996  0473               L3602:
3997                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
3999  0473 7210530a      	bset	21258,#0
4000                     ; 1236 }
4003  0477 5b03          	addw	sp,#3
4004  0479 81            	ret
4056                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4056                     ; 1256                        uint8_t TIM2_ICSelection,
4056                     ; 1257                        uint8_t TIM2_ICFilter)
4056                     ; 1258 {
4057                     	switch	.text
4058  047a               L5_TI2_Config:
4060  047a 89            	pushw	x
4061  047b 88            	push	a
4062       00000001      OFST:	set	1
4065                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4067  047c 7219530a      	bres	21258,#4
4068                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4068                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4070  0480 7b06          	ld	a,(OFST+5,sp)
4071  0482 97            	ld	xl,a
4072  0483 a610          	ld	a,#16
4073  0485 42            	mul	x,a
4074  0486 9f            	ld	a,xl
4075  0487 1a03          	or	a,(OFST+2,sp)
4076  0489 6b01          	ld	(OFST+0,sp),a
4077  048b c65308        	ld	a,21256
4078  048e a40c          	and	a,#12
4079  0490 1a01          	or	a,(OFST+0,sp)
4080  0492 c75308        	ld	21256,a
4081                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4083  0495 0d02          	tnz	(OFST+1,sp)
4084  0497 2706          	jreq	L3112
4085                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4087  0499 721a530a      	bset	21258,#5
4089  049d 2004          	jra	L5112
4090  049f               L3112:
4091                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4093  049f 721b530a      	bres	21258,#5
4094  04a3               L5112:
4095                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4097  04a3 7218530a      	bset	21258,#4
4098                     ; 1280 }
4101  04a7 5b03          	addw	sp,#3
4102  04a9 81            	ret
4154                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4154                     ; 1297                        uint8_t TIM2_ICFilter)
4154                     ; 1298 {
4155                     	switch	.text
4156  04aa               L7_TI3_Config:
4158  04aa 89            	pushw	x
4159  04ab 88            	push	a
4160       00000001      OFST:	set	1
4163                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4165  04ac 7211530b      	bres	21259,#0
4166                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4166                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4168  04b0 7b06          	ld	a,(OFST+5,sp)
4169  04b2 97            	ld	xl,a
4170  04b3 a610          	ld	a,#16
4171  04b5 42            	mul	x,a
4172  04b6 9f            	ld	a,xl
4173  04b7 1a03          	or	a,(OFST+2,sp)
4174  04b9 6b01          	ld	(OFST+0,sp),a
4175  04bb c65309        	ld	a,21257
4176  04be a40c          	and	a,#12
4177  04c0 1a01          	or	a,(OFST+0,sp)
4178  04c2 c75309        	ld	21257,a
4179                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4181  04c5 0d02          	tnz	(OFST+1,sp)
4182  04c7 2706          	jreq	L5412
4183                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4185  04c9 7212530b      	bset	21259,#1
4187  04cd 2004          	jra	L7412
4188  04cf               L5412:
4189                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4191  04cf 7213530b      	bres	21259,#1
4192  04d3               L7412:
4193                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4195  04d3 7210530b      	bset	21259,#0
4196                     ; 1318 }
4199  04d7 5b03          	addw	sp,#3
4200  04d9 81            	ret
4213                     	xdef	_TIM2_ClearITPendingBit
4214                     	xdef	_TIM2_GetITStatus
4215                     	xdef	_TIM2_ClearFlag
4216                     	xdef	_TIM2_GetFlagStatus
4217                     	xdef	_TIM2_GetPrescaler
4218                     	xdef	_TIM2_GetCounter
4219                     	xdef	_TIM2_GetCapture3
4220                     	xdef	_TIM2_GetCapture2
4221                     	xdef	_TIM2_GetCapture1
4222                     	xdef	_TIM2_SetIC3Prescaler
4223                     	xdef	_TIM2_SetIC2Prescaler
4224                     	xdef	_TIM2_SetIC1Prescaler
4225                     	xdef	_TIM2_SetCompare3
4226                     	xdef	_TIM2_SetCompare2
4227                     	xdef	_TIM2_SetCompare1
4228                     	xdef	_TIM2_SetAutoreload
4229                     	xdef	_TIM2_SetCounter
4230                     	xdef	_TIM2_SelectOCxM
4231                     	xdef	_TIM2_CCxCmd
4232                     	xdef	_TIM2_OC3PolarityConfig
4233                     	xdef	_TIM2_OC2PolarityConfig
4234                     	xdef	_TIM2_OC1PolarityConfig
4235                     	xdef	_TIM2_GenerateEvent
4236                     	xdef	_TIM2_OC3PreloadConfig
4237                     	xdef	_TIM2_OC2PreloadConfig
4238                     	xdef	_TIM2_OC1PreloadConfig
4239                     	xdef	_TIM2_ARRPreloadConfig
4240                     	xdef	_TIM2_ForcedOC3Config
4241                     	xdef	_TIM2_ForcedOC2Config
4242                     	xdef	_TIM2_ForcedOC1Config
4243                     	xdef	_TIM2_PrescalerConfig
4244                     	xdef	_TIM2_SelectOnePulseMode
4245                     	xdef	_TIM2_UpdateRequestConfig
4246                     	xdef	_TIM2_UpdateDisableConfig
4247                     	xdef	_TIM2_ITConfig
4248                     	xdef	_TIM2_Cmd
4249                     	xdef	_TIM2_PWMIConfig
4250                     	xdef	_TIM2_ICInit
4251                     	xdef	_TIM2_OC3Init
4252                     	xdef	_TIM2_OC2Init
4253                     	xdef	_TIM2_OC1Init
4254                     	xdef	_TIM2_TimeBaseInit
4255                     	xdef	_TIM2_DeInit
4274                     	end
