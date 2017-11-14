   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 43 void TIM4_DeInit(void)
  42                     ; 44 {
  44                     	switch	.text
  45  0000               _TIM4_DeInit:
  49                     ; 45     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  51  0000 725f5340      	clr	21312
  52                     ; 46     TIM4->IER = TIM4_IER_RESET_VALUE;
  54  0004 725f5343      	clr	21315
  55                     ; 47     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  57  0008 725f5346      	clr	21318
  58                     ; 48     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  60  000c 725f5347      	clr	21319
  61                     ; 49     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  63  0010 35ff5348      	mov	21320,#255
  64                     ; 50     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  66  0014 725f5344      	clr	21316
  67                     ; 51 }
  70  0018 81            	ret
 176                     ; 59 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 176                     ; 60 {
 177                     	switch	.text
 178  0019               _TIM4_TimeBaseInit:
 182                     ; 62     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 184                     ; 64     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 186  0019 9e            	ld	a,xh
 187  001a c75347        	ld	21319,a
 188                     ; 66     TIM4->ARR = (uint8_t)(TIM4_Period);
 190  001d 9f            	ld	a,xl
 191  001e c75348        	ld	21320,a
 192                     ; 67 }
 195  0021 81            	ret
 250                     ; 77 void TIM4_Cmd(FunctionalState NewState)
 250                     ; 78 {
 251                     	switch	.text
 252  0022               _TIM4_Cmd:
 256                     ; 80     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 258                     ; 83     if (NewState != DISABLE)
 260  0022 4d            	tnz	a
 261  0023 2706          	jreq	L511
 262                     ; 85         TIM4->CR1 |= TIM4_CR1_CEN;
 264  0025 72105340      	bset	21312,#0
 266  0029 2004          	jra	L711
 267  002b               L511:
 268                     ; 89         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 270  002b 72115340      	bres	21312,#0
 271  002f               L711:
 272                     ; 91 }
 275  002f 81            	ret
 333                     ; 103 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 333                     ; 104 {
 334                     	switch	.text
 335  0030               _TIM4_ITConfig:
 337  0030 89            	pushw	x
 338       00000000      OFST:	set	0
 341                     ; 106     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 343                     ; 107     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 345                     ; 109     if (NewState != DISABLE)
 347  0031 9f            	ld	a,xl
 348  0032 4d            	tnz	a
 349  0033 2709          	jreq	L151
 350                     ; 112         TIM4->IER |= (uint8_t)TIM4_IT;
 352  0035 9e            	ld	a,xh
 353  0036 ca5343        	or	a,21315
 354  0039 c75343        	ld	21315,a
 356  003c 2009          	jra	L351
 357  003e               L151:
 358                     ; 117         TIM4->IER &= (uint8_t)(~TIM4_IT);
 360  003e 7b01          	ld	a,(OFST+1,sp)
 361  0040 43            	cpl	a
 362  0041 c45343        	and	a,21315
 363  0044 c75343        	ld	21315,a
 364  0047               L351:
 365                     ; 119 }
 368  0047 85            	popw	x
 369  0048 81            	ret
 405                     ; 127 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 405                     ; 128 {
 406                     	switch	.text
 407  0049               _TIM4_UpdateDisableConfig:
 411                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 413                     ; 133     if (NewState != DISABLE)
 415  0049 4d            	tnz	a
 416  004a 2706          	jreq	L371
 417                     ; 135         TIM4->CR1 |= TIM4_CR1_UDIS;
 419  004c 72125340      	bset	21312,#1
 421  0050 2004          	jra	L571
 422  0052               L371:
 423                     ; 139         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 425  0052 72135340      	bres	21312,#1
 426  0056               L571:
 427                     ; 141 }
 430  0056 81            	ret
 488                     ; 151 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 488                     ; 152 {
 489                     	switch	.text
 490  0057               _TIM4_UpdateRequestConfig:
 494                     ; 154     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 496                     ; 157     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 498  0057 4d            	tnz	a
 499  0058 2706          	jreq	L522
 500                     ; 159         TIM4->CR1 |= TIM4_CR1_URS;
 502  005a 72145340      	bset	21312,#2
 504  005e 2004          	jra	L722
 505  0060               L522:
 506                     ; 163         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 508  0060 72155340      	bres	21312,#2
 509  0064               L722:
 510                     ; 165 }
 513  0064 81            	ret
 570                     ; 175 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 570                     ; 176 {
 571                     	switch	.text
 572  0065               _TIM4_SelectOnePulseMode:
 576                     ; 178     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 578                     ; 181     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 580  0065 4d            	tnz	a
 581  0066 2706          	jreq	L752
 582                     ; 183         TIM4->CR1 |= TIM4_CR1_OPM;
 584  0068 72165340      	bset	21312,#3
 586  006c 2004          	jra	L162
 587  006e               L752:
 588                     ; 187         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 590  006e 72175340      	bres	21312,#3
 591  0072               L162:
 592                     ; 190 }
 595  0072 81            	ret
 663                     ; 212 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 663                     ; 213 {
 664                     	switch	.text
 665  0073               _TIM4_PrescalerConfig:
 669                     ; 215     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 671                     ; 216     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 673                     ; 219     TIM4->PSCR = (uint8_t)Prescaler;
 675  0073 9e            	ld	a,xh
 676  0074 c75347        	ld	21319,a
 677                     ; 222     TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 679  0077 9f            	ld	a,xl
 680  0078 c75345        	ld	21317,a
 681                     ; 223 }
 684  007b 81            	ret
 720                     ; 231 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 720                     ; 232 {
 721                     	switch	.text
 722  007c               _TIM4_ARRPreloadConfig:
 726                     ; 234     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 728                     ; 237     if (NewState != DISABLE)
 730  007c 4d            	tnz	a
 731  007d 2706          	jreq	L333
 732                     ; 239         TIM4->CR1 |= TIM4_CR1_ARPE;
 734  007f 721e5340      	bset	21312,#7
 736  0083 2004          	jra	L533
 737  0085               L333:
 738                     ; 243         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 740  0085 721f5340      	bres	21312,#7
 741  0089               L533:
 742                     ; 245 }
 745  0089 81            	ret
 794                     ; 254 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 794                     ; 255 {
 795                     	switch	.text
 796  008a               _TIM4_GenerateEvent:
 800                     ; 257     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 802                     ; 260     TIM4->EGR = (uint8_t)(TIM4_EventSource);
 804  008a c75345        	ld	21317,a
 805                     ; 261 }
 808  008d 81            	ret
 842                     ; 270 void TIM4_SetCounter(uint8_t Counter)
 842                     ; 271 {
 843                     	switch	.text
 844  008e               _TIM4_SetCounter:
 848                     ; 273     TIM4->CNTR = (uint8_t)(Counter);
 850  008e c75346        	ld	21318,a
 851                     ; 274 }
 854  0091 81            	ret
 888                     ; 283 void TIM4_SetAutoreload(uint8_t Autoreload)
 888                     ; 284 {
 889                     	switch	.text
 890  0092               _TIM4_SetAutoreload:
 894                     ; 286     TIM4->ARR = (uint8_t)(Autoreload);
 896  0092 c75348        	ld	21320,a
 897                     ; 287 }
 900  0095 81            	ret
 923                     ; 294 uint8_t TIM4_GetCounter(void)
 923                     ; 295 {
 924                     	switch	.text
 925  0096               _TIM4_GetCounter:
 929                     ; 297     return (uint8_t)(TIM4->CNTR);
 931  0096 c65346        	ld	a,21318
 934  0099 81            	ret
 958                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
 958                     ; 306 {
 959                     	switch	.text
 960  009a               _TIM4_GetPrescaler:
 964                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
 966  009a c65347        	ld	a,21319
 969  009d 81            	ret
1048                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1048                     ; 319 {
1049                     	switch	.text
1050  009e               _TIM4_GetFlagStatus:
1052  009e 88            	push	a
1053       00000001      OFST:	set	1
1056                     ; 320     FlagStatus bitstatus = RESET;
1058                     ; 323     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1060                     ; 325   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1062  009f c45344        	and	a,21316
1063  00a2 2706          	jreq	L774
1064                     ; 327     bitstatus = SET;
1066  00a4 a601          	ld	a,#1
1067  00a6 6b01          	ld	(OFST+0,sp),a
1069  00a8 2002          	jra	L105
1070  00aa               L774:
1071                     ; 331     bitstatus = RESET;
1073  00aa 0f01          	clr	(OFST+0,sp)
1074  00ac               L105:
1075                     ; 333   return ((FlagStatus)bitstatus);
1077  00ac 7b01          	ld	a,(OFST+0,sp)
1080  00ae 5b01          	addw	sp,#1
1081  00b0 81            	ret
1116                     ; 343 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1116                     ; 344 {
1117                     	switch	.text
1118  00b1               _TIM4_ClearFlag:
1122                     ; 346     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1124                     ; 349     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1126  00b1 43            	cpl	a
1127  00b2 c75344        	ld	21316,a
1128                     ; 351 }
1131  00b5 81            	ret
1195                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1195                     ; 361 {
1196                     	switch	.text
1197  00b6               _TIM4_GetITStatus:
1199  00b6 88            	push	a
1200  00b7 89            	pushw	x
1201       00000002      OFST:	set	2
1204                     ; 362     ITStatus bitstatus = RESET;
1206                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1210                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1212                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1214  00b8 c45344        	and	a,21316
1215  00bb 6b01          	ld	(OFST-1,sp),a
1216                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1218  00bd c65343        	ld	a,21315
1219  00c0 1403          	and	a,(OFST+1,sp)
1220  00c2 6b02          	ld	(OFST+0,sp),a
1221                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1223  00c4 0d01          	tnz	(OFST-1,sp)
1224  00c6 270a          	jreq	L355
1226  00c8 0d02          	tnz	(OFST+0,sp)
1227  00ca 2706          	jreq	L355
1228                     ; 375     bitstatus = (ITStatus)SET;
1230  00cc a601          	ld	a,#1
1231  00ce 6b02          	ld	(OFST+0,sp),a
1233  00d0 2002          	jra	L555
1234  00d2               L355:
1235                     ; 379     bitstatus = (ITStatus)RESET;
1237  00d2 0f02          	clr	(OFST+0,sp)
1238  00d4               L555:
1239                     ; 381   return ((ITStatus)bitstatus);
1241  00d4 7b02          	ld	a,(OFST+0,sp)
1244  00d6 5b03          	addw	sp,#3
1245  00d8 81            	ret
1281                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1281                     ; 392 {
1282                     	switch	.text
1283  00d9               _TIM4_ClearITPendingBit:
1287                     ; 394     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1289                     ; 397     TIM4->SR1 = (uint8_t)(~TIM4_IT);
1291  00d9 43            	cpl	a
1292  00da c75344        	ld	21316,a
1293                     ; 398 }
1296  00dd 81            	ret
1309                     	xdef	_TIM4_ClearITPendingBit
1310                     	xdef	_TIM4_GetITStatus
1311                     	xdef	_TIM4_ClearFlag
1312                     	xdef	_TIM4_GetFlagStatus
1313                     	xdef	_TIM4_GetPrescaler
1314                     	xdef	_TIM4_GetCounter
1315                     	xdef	_TIM4_SetAutoreload
1316                     	xdef	_TIM4_SetCounter
1317                     	xdef	_TIM4_GenerateEvent
1318                     	xdef	_TIM4_ARRPreloadConfig
1319                     	xdef	_TIM4_PrescalerConfig
1320                     	xdef	_TIM4_SelectOnePulseMode
1321                     	xdef	_TIM4_UpdateRequestConfig
1322                     	xdef	_TIM4_UpdateDisableConfig
1323                     	xdef	_TIM4_ITConfig
1324                     	xdef	_TIM4_Cmd
1325                     	xdef	_TIM4_TimeBaseInit
1326                     	xdef	_TIM4_DeInit
1345                     	end
