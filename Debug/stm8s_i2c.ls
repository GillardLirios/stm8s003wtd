   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  32                     ; 61 void I2C_DeInit(void)
  32                     ; 62 {
  34                     	switch	.text
  35  0000               _I2C_DeInit:
  39                     ; 63   I2C->CR1 = I2C_CR1_RESET_VALUE;
  41  0000 725f5210      	clr	21008
  42                     ; 64   I2C->CR2 = I2C_CR2_RESET_VALUE;
  44  0004 725f5211      	clr	21009
  45                     ; 65   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  47  0008 725f5212      	clr	21010
  48                     ; 66   I2C->OARL = I2C_OARL_RESET_VALUE;
  50  000c 725f5213      	clr	21011
  51                     ; 67   I2C->OARH = I2C_OARH_RESET_VALUE;
  53  0010 725f5214      	clr	21012
  54                     ; 68   I2C->ITR = I2C_ITR_RESET_VALUE;
  56  0014 725f521a      	clr	21018
  57                     ; 69   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  59  0018 725f521b      	clr	21019
  60                     ; 70   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  62  001c 725f521c      	clr	21020
  63                     ; 71   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  65  0020 3502521d      	mov	21021,#2
  66                     ; 72 }
  69  0024 81            	ret
 248                     .const:	section	.text
 249  0000               L01:
 250  0000 000186a1      	dc.l	100001
 251  0004               L21:
 252  0004 000f4240      	dc.l	1000000
 253                     ; 90 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 253                     ; 91               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 253                     ; 92               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 253                     ; 93 {
 254                     	switch	.text
 255  0025               _I2C_Init:
 257  0025 5209          	subw	sp,#9
 258       00000009      OFST:	set	9
 261                     ; 94   uint16_t result = 0x0004;
 263  0027 1e08          	ldw	x,(OFST-1,sp)
 264                     ; 95   uint16_t tmpval = 0;
 266  0029 1e05          	ldw	x,(OFST-4,sp)
 267                     ; 96   uint8_t tmpccrh = 0;
 269  002b 0f07          	clr	(OFST-2,sp)
 270                     ; 99   assert_param(IS_I2C_ACK_OK(Ack));
 272                     ; 100   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 274                     ; 101   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 276                     ; 102   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 278                     ; 103   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 280                     ; 104   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 282                     ; 109   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 284  002d c65212        	ld	a,21010
 285  0030 a4c0          	and	a,#192
 286  0032 c75212        	ld	21010,a
 287                     ; 111   I2C->FREQR |= InputClockFrequencyMHz;
 289  0035 c65212        	ld	a,21010
 290  0038 1a15          	or	a,(OFST+12,sp)
 291  003a c75212        	ld	21010,a
 292                     ; 115   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 294  003d 72115210      	bres	21008,#0
 295                     ; 118   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 297  0041 c6521c        	ld	a,21020
 298  0044 a430          	and	a,#48
 299  0046 c7521c        	ld	21020,a
 300                     ; 119   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 302  0049 725f521b      	clr	21019
 303                     ; 122   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 305  004d 96            	ldw	x,sp
 306  004e 1c000c        	addw	x,#OFST+3
 307  0051 cd0000        	call	c_ltor
 309  0054 ae0000        	ldw	x,#L01
 310  0057 cd0000        	call	c_lcmp
 312  005a 2403          	jruge	L61
 313  005c cc00e9        	jp	L131
 314  005f               L61:
 315                     ; 125     tmpccrh = I2C_CCRH_FS;
 317  005f a680          	ld	a,#128
 318  0061 6b07          	ld	(OFST-2,sp),a
 319                     ; 127     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 321  0063 0d12          	tnz	(OFST+9,sp)
 322  0065 2630          	jrne	L331
 323                     ; 130       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 325  0067 96            	ldw	x,sp
 326  0068 1c000c        	addw	x,#OFST+3
 327  006b cd0000        	call	c_ltor
 329  006e a603          	ld	a,#3
 330  0070 cd0000        	call	c_smul
 332  0073 96            	ldw	x,sp
 333  0074 1c0001        	addw	x,#OFST-8
 334  0077 cd0000        	call	c_rtol
 336  007a 7b15          	ld	a,(OFST+12,sp)
 337  007c b703          	ld	c_lreg+3,a
 338  007e 3f02          	clr	c_lreg+2
 339  0080 3f01          	clr	c_lreg+1
 340  0082 3f00          	clr	c_lreg
 341  0084 ae0004        	ldw	x,#L21
 342  0087 cd0000        	call	c_lmul
 344  008a 96            	ldw	x,sp
 345  008b 1c0001        	addw	x,#OFST-8
 346  008e cd0000        	call	c_ludv
 348  0091 be02          	ldw	x,c_lreg+2
 349  0093 1f08          	ldw	(OFST-1,sp),x
 351  0095 2034          	jra	L531
 352  0097               L331:
 353                     ; 135       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 355  0097 96            	ldw	x,sp
 356  0098 1c000c        	addw	x,#OFST+3
 357  009b cd0000        	call	c_ltor
 359  009e a619          	ld	a,#25
 360  00a0 cd0000        	call	c_smul
 362  00a3 96            	ldw	x,sp
 363  00a4 1c0001        	addw	x,#OFST-8
 364  00a7 cd0000        	call	c_rtol
 366  00aa 7b15          	ld	a,(OFST+12,sp)
 367  00ac b703          	ld	c_lreg+3,a
 368  00ae 3f02          	clr	c_lreg+2
 369  00b0 3f01          	clr	c_lreg+1
 370  00b2 3f00          	clr	c_lreg
 371  00b4 ae0004        	ldw	x,#L21
 372  00b7 cd0000        	call	c_lmul
 374  00ba 96            	ldw	x,sp
 375  00bb 1c0001        	addw	x,#OFST-8
 376  00be cd0000        	call	c_ludv
 378  00c1 be02          	ldw	x,c_lreg+2
 379  00c3 1f08          	ldw	(OFST-1,sp),x
 380                     ; 137       tmpccrh |= I2C_CCRH_DUTY;
 382  00c5 7b07          	ld	a,(OFST-2,sp)
 383  00c7 aa40          	or	a,#64
 384  00c9 6b07          	ld	(OFST-2,sp),a
 385  00cb               L531:
 386                     ; 141     if (result < (uint16_t)0x01)
 388  00cb 1e08          	ldw	x,(OFST-1,sp)
 389  00cd 2605          	jrne	L731
 390                     ; 144       result = (uint16_t)0x0001;
 392  00cf ae0001        	ldw	x,#1
 393  00d2 1f08          	ldw	(OFST-1,sp),x
 394  00d4               L731:
 395                     ; 150     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 397  00d4 7b15          	ld	a,(OFST+12,sp)
 398  00d6 97            	ld	xl,a
 399  00d7 a603          	ld	a,#3
 400  00d9 42            	mul	x,a
 401  00da a60a          	ld	a,#10
 402  00dc cd0000        	call	c_sdivx
 404  00df 5c            	incw	x
 405  00e0 1f05          	ldw	(OFST-4,sp),x
 406                     ; 151     I2C->TRISER = (uint8_t)tmpval;
 408  00e2 7b06          	ld	a,(OFST-3,sp)
 409  00e4 c7521d        	ld	21021,a
 411  00e7 2043          	jra	L141
 412  00e9               L131:
 413                     ; 158     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 415  00e9 96            	ldw	x,sp
 416  00ea 1c000c        	addw	x,#OFST+3
 417  00ed cd0000        	call	c_ltor
 419  00f0 3803          	sll	c_lreg+3
 420  00f2 3902          	rlc	c_lreg+2
 421  00f4 3901          	rlc	c_lreg+1
 422  00f6 3900          	rlc	c_lreg
 423  00f8 96            	ldw	x,sp
 424  00f9 1c0001        	addw	x,#OFST-8
 425  00fc cd0000        	call	c_rtol
 427  00ff 7b15          	ld	a,(OFST+12,sp)
 428  0101 b703          	ld	c_lreg+3,a
 429  0103 3f02          	clr	c_lreg+2
 430  0105 3f01          	clr	c_lreg+1
 431  0107 3f00          	clr	c_lreg
 432  0109 ae0004        	ldw	x,#L21
 433  010c cd0000        	call	c_lmul
 435  010f 96            	ldw	x,sp
 436  0110 1c0001        	addw	x,#OFST-8
 437  0113 cd0000        	call	c_ludv
 439  0116 be02          	ldw	x,c_lreg+2
 440  0118 1f08          	ldw	(OFST-1,sp),x
 441                     ; 161     if (result < (uint16_t)0x0004)
 443  011a 1e08          	ldw	x,(OFST-1,sp)
 444  011c a30004        	cpw	x,#4
 445  011f 2405          	jruge	L341
 446                     ; 164       result = (uint16_t)0x0004;
 448  0121 ae0004        	ldw	x,#4
 449  0124 1f08          	ldw	(OFST-1,sp),x
 450  0126               L341:
 451                     ; 170     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 453  0126 7b15          	ld	a,(OFST+12,sp)
 454  0128 4c            	inc	a
 455  0129 c7521d        	ld	21021,a
 456  012c               L141:
 457                     ; 175   I2C->CCRL = (uint8_t)result;
 459  012c 7b09          	ld	a,(OFST+0,sp)
 460  012e c7521b        	ld	21019,a
 461                     ; 176   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 463  0131 7b08          	ld	a,(OFST-1,sp)
 464  0133 a40f          	and	a,#15
 465  0135 1a07          	or	a,(OFST-2,sp)
 466  0137 c7521c        	ld	21020,a
 467                     ; 179   I2C->CR1 |= I2C_CR1_PE;
 469  013a 72105210      	bset	21008,#0
 470                     ; 182   I2C_AcknowledgeConfig(Ack);
 472  013e 7b13          	ld	a,(OFST+10,sp)
 473  0140 ad79          	call	_I2C_AcknowledgeConfig
 475                     ; 185   I2C->OARL = (uint8_t)(OwnAddress);
 477  0142 7b11          	ld	a,(OFST+8,sp)
 478  0144 c75213        	ld	21011,a
 479                     ; 186   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 479                     ; 187                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 481  0147 7b10          	ld	a,(OFST+7,sp)
 482  0149 97            	ld	xl,a
 483  014a 7b11          	ld	a,(OFST+8,sp)
 484  014c 9f            	ld	a,xl
 485  014d a403          	and	a,#3
 486  014f 97            	ld	xl,a
 487  0150 4f            	clr	a
 488  0151 02            	rlwa	x,a
 489  0152 a607          	ld	a,#7
 490  0154               L41:
 491  0154 54            	srlw	x
 492  0155 4a            	dec	a
 493  0156 26fc          	jrne	L41
 494  0158 9f            	ld	a,xl
 495  0159 6b04          	ld	(OFST-5,sp),a
 496  015b 7b14          	ld	a,(OFST+11,sp)
 497  015d aa40          	or	a,#64
 498  015f 1a04          	or	a,(OFST-5,sp)
 499  0161 c75214        	ld	21012,a
 500                     ; 188 }
 503  0164 5b09          	addw	sp,#9
 504  0166 81            	ret
 559                     ; 196 void I2C_Cmd(FunctionalState NewState)
 559                     ; 197 {
 560                     	switch	.text
 561  0167               _I2C_Cmd:
 565                     ; 200   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 567                     ; 202   if (NewState != DISABLE)
 569  0167 4d            	tnz	a
 570  0168 2706          	jreq	L371
 571                     ; 205     I2C->CR1 |= I2C_CR1_PE;
 573  016a 72105210      	bset	21008,#0
 575  016e 2004          	jra	L571
 576  0170               L371:
 577                     ; 210     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 579  0170 72115210      	bres	21008,#0
 580  0174               L571:
 581                     ; 212 }
 584  0174 81            	ret
 619                     ; 220 void I2C_GeneralCallCmd(FunctionalState NewState)
 619                     ; 221 {
 620                     	switch	.text
 621  0175               _I2C_GeneralCallCmd:
 625                     ; 224   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 627                     ; 226   if (NewState != DISABLE)
 629  0175 4d            	tnz	a
 630  0176 2706          	jreq	L512
 631                     ; 229     I2C->CR1 |= I2C_CR1_ENGC;
 633  0178 721c5210      	bset	21008,#6
 635  017c 2004          	jra	L712
 636  017e               L512:
 637                     ; 234     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 639  017e 721d5210      	bres	21008,#6
 640  0182               L712:
 641                     ; 236 }
 644  0182 81            	ret
 679                     ; 246 void I2C_GenerateSTART(FunctionalState NewState)
 679                     ; 247 {
 680                     	switch	.text
 681  0183               _I2C_GenerateSTART:
 685                     ; 250   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 687                     ; 252   if (NewState != DISABLE)
 689  0183 4d            	tnz	a
 690  0184 2706          	jreq	L732
 691                     ; 255     I2C->CR2 |= I2C_CR2_START;
 693  0186 72105211      	bset	21009,#0
 695  018a 2004          	jra	L142
 696  018c               L732:
 697                     ; 260     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 699  018c 72115211      	bres	21009,#0
 700  0190               L142:
 701                     ; 262 }
 704  0190 81            	ret
 739                     ; 270 void I2C_GenerateSTOP(FunctionalState NewState)
 739                     ; 271 {
 740                     	switch	.text
 741  0191               _I2C_GenerateSTOP:
 745                     ; 274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 747                     ; 276   if (NewState != DISABLE)
 749  0191 4d            	tnz	a
 750  0192 2706          	jreq	L162
 751                     ; 279     I2C->CR2 |= I2C_CR2_STOP;
 753  0194 72125211      	bset	21009,#1
 755  0198 2004          	jra	L362
 756  019a               L162:
 757                     ; 284     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 759  019a 72135211      	bres	21009,#1
 760  019e               L362:
 761                     ; 286 }
 764  019e 81            	ret
 800                     ; 294 void I2C_SoftwareResetCmd(FunctionalState NewState)
 800                     ; 295 {
 801                     	switch	.text
 802  019f               _I2C_SoftwareResetCmd:
 806                     ; 297   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 808                     ; 299   if (NewState != DISABLE)
 810  019f 4d            	tnz	a
 811  01a0 2706          	jreq	L303
 812                     ; 302     I2C->CR2 |= I2C_CR2_SWRST;
 814  01a2 721e5211      	bset	21009,#7
 816  01a6 2004          	jra	L503
 817  01a8               L303:
 818                     ; 307     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 820  01a8 721f5211      	bres	21009,#7
 821  01ac               L503:
 822                     ; 309 }
 825  01ac 81            	ret
 861                     ; 318 void I2C_StretchClockCmd(FunctionalState NewState)
 861                     ; 319 {
 862                     	switch	.text
 863  01ad               _I2C_StretchClockCmd:
 867                     ; 321   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 869                     ; 323   if (NewState != DISABLE)
 871  01ad 4d            	tnz	a
 872  01ae 2706          	jreq	L523
 873                     ; 326     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
 875  01b0 721f5210      	bres	21008,#7
 877  01b4 2004          	jra	L723
 878  01b6               L523:
 879                     ; 332     I2C->CR1 |= I2C_CR1_NOSTRETCH;
 881  01b6 721e5210      	bset	21008,#7
 882  01ba               L723:
 883                     ; 334 }
 886  01ba 81            	ret
 922                     ; 343 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
 922                     ; 344 {
 923                     	switch	.text
 924  01bb               _I2C_AcknowledgeConfig:
 926  01bb 88            	push	a
 927       00000000      OFST:	set	0
 930                     ; 347   assert_param(IS_I2C_ACK_OK(Ack));
 932                     ; 349   if (Ack == I2C_ACK_NONE)
 934  01bc 4d            	tnz	a
 935  01bd 2606          	jrne	L743
 936                     ; 352     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
 938  01bf 72155211      	bres	21009,#2
 940  01c3 2014          	jra	L153
 941  01c5               L743:
 942                     ; 357     I2C->CR2 |= I2C_CR2_ACK;
 944  01c5 72145211      	bset	21009,#2
 945                     ; 359     if (Ack == I2C_ACK_CURR)
 947  01c9 7b01          	ld	a,(OFST+1,sp)
 948  01cb a101          	cp	a,#1
 949  01cd 2606          	jrne	L353
 950                     ; 362       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
 952  01cf 72175211      	bres	21009,#3
 954  01d3 2004          	jra	L153
 955  01d5               L353:
 956                     ; 367       I2C->CR2 |= I2C_CR2_POS;
 958  01d5 72165211      	bset	21009,#3
 959  01d9               L153:
 960                     ; 370 }
 963  01d9 84            	pop	a
 964  01da 81            	ret
1036                     ; 380 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1036                     ; 381 {
1037                     	switch	.text
1038  01db               _I2C_ITConfig:
1040  01db 89            	pushw	x
1041       00000000      OFST:	set	0
1044                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1046                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1048                     ; 387   if (NewState != DISABLE)
1050  01dc 9f            	ld	a,xl
1051  01dd 4d            	tnz	a
1052  01de 2709          	jreq	L314
1053                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1055  01e0 9e            	ld	a,xh
1056  01e1 ca521a        	or	a,21018
1057  01e4 c7521a        	ld	21018,a
1059  01e7 2009          	jra	L514
1060  01e9               L314:
1061                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1063  01e9 7b01          	ld	a,(OFST+1,sp)
1064  01eb 43            	cpl	a
1065  01ec c4521a        	and	a,21018
1066  01ef c7521a        	ld	21018,a
1067  01f2               L514:
1068                     ; 397 }
1071  01f2 85            	popw	x
1072  01f3 81            	ret
1108                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1108                     ; 406 {
1109                     	switch	.text
1110  01f4               _I2C_FastModeDutyCycleConfig:
1114                     ; 409   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1116                     ; 411   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1118  01f4 a140          	cp	a,#64
1119  01f6 2606          	jrne	L534
1120                     ; 414     I2C->CCRH |= I2C_CCRH_DUTY;
1122  01f8 721c521c      	bset	21020,#6
1124  01fc 2004          	jra	L734
1125  01fe               L534:
1126                     ; 419     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1128  01fe 721d521c      	bres	21020,#6
1129  0202               L734:
1130                     ; 421 }
1133  0202 81            	ret
1156                     ; 428 uint8_t I2C_ReceiveData(void)
1156                     ; 429 {
1157                     	switch	.text
1158  0203               _I2C_ReceiveData:
1162                     ; 431   return ((uint8_t)I2C->DR);
1164  0203 c65216        	ld	a,21014
1167  0206 81            	ret
1232                     ; 441 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1232                     ; 442 {
1233                     	switch	.text
1234  0207               _I2C_Send7bitAddress:
1236  0207 89            	pushw	x
1237       00000000      OFST:	set	0
1240                     ; 444   assert_param(IS_I2C_ADDRESS_OK(Address));
1242                     ; 445   assert_param(IS_I2C_DIRECTION_OK(Direction));
1244                     ; 448   Address &= (uint8_t)0xFE;
1246  0208 7b01          	ld	a,(OFST+1,sp)
1247  020a a4fe          	and	a,#254
1248  020c 6b01          	ld	(OFST+1,sp),a
1249                     ; 451   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1251  020e 7b01          	ld	a,(OFST+1,sp)
1252  0210 1a02          	or	a,(OFST+2,sp)
1253  0212 c75216        	ld	21014,a
1254                     ; 452 }
1257  0215 85            	popw	x
1258  0216 81            	ret
1292                     ; 459 void I2C_SendData(uint8_t Data)
1292                     ; 460 {
1293                     	switch	.text
1294  0217               _I2C_SendData:
1298                     ; 462   I2C->DR = Data;
1300  0217 c75216        	ld	21014,a
1301                     ; 463 }
1304  021a 81            	ret
1528                     ; 579 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1528                     ; 580 {
1529                     	switch	.text
1530  021b               _I2C_CheckEvent:
1532  021b 89            	pushw	x
1533  021c 5206          	subw	sp,#6
1534       00000006      OFST:	set	6
1537                     ; 581   __IO uint16_t lastevent = 0x00;
1539  021e 5f            	clrw	x
1540  021f 1f04          	ldw	(OFST-2,sp),x
1541                     ; 582   uint8_t flag1 = 0x00 ;
1543  0221 7b03          	ld	a,(OFST-3,sp)
1544  0223 97            	ld	xl,a
1545                     ; 583   uint8_t flag2 = 0x00;
1547  0224 7b06          	ld	a,(OFST+0,sp)
1548  0226 97            	ld	xl,a
1549                     ; 584   ErrorStatus status = ERROR;
1551  0227 7b06          	ld	a,(OFST+0,sp)
1552  0229 97            	ld	xl,a
1553                     ; 587   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1555                     ; 589   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1557  022a 1e07          	ldw	x,(OFST+1,sp)
1558  022c a30004        	cpw	x,#4
1559  022f 260b          	jrne	L136
1560                     ; 591     lastevent = I2C->SR2 & I2C_SR2_AF;
1562  0231 c65218        	ld	a,21016
1563  0234 a404          	and	a,#4
1564  0236 5f            	clrw	x
1565  0237 97            	ld	xl,a
1566  0238 1f04          	ldw	(OFST-2,sp),x
1568  023a 201f          	jra	L336
1569  023c               L136:
1570                     ; 595     flag1 = I2C->SR1;
1572  023c c65217        	ld	a,21015
1573  023f 6b03          	ld	(OFST-3,sp),a
1574                     ; 596     flag2 = I2C->SR3;
1576  0241 c65219        	ld	a,21017
1577  0244 6b06          	ld	(OFST+0,sp),a
1578                     ; 597     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1580  0246 7b03          	ld	a,(OFST-3,sp)
1581  0248 5f            	clrw	x
1582  0249 97            	ld	xl,a
1583  024a 1f01          	ldw	(OFST-5,sp),x
1584  024c 7b06          	ld	a,(OFST+0,sp)
1585  024e 5f            	clrw	x
1586  024f 97            	ld	xl,a
1587  0250 4f            	clr	a
1588  0251 02            	rlwa	x,a
1589  0252 01            	rrwa	x,a
1590  0253 1a02          	or	a,(OFST-4,sp)
1591  0255 01            	rrwa	x,a
1592  0256 1a01          	or	a,(OFST-5,sp)
1593  0258 01            	rrwa	x,a
1594  0259 1f04          	ldw	(OFST-2,sp),x
1595  025b               L336:
1596                     ; 600   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1598  025b 1e04          	ldw	x,(OFST-2,sp)
1599  025d 01            	rrwa	x,a
1600  025e 1408          	and	a,(OFST+2,sp)
1601  0260 01            	rrwa	x,a
1602  0261 1407          	and	a,(OFST+1,sp)
1603  0263 01            	rrwa	x,a
1604  0264 1307          	cpw	x,(OFST+1,sp)
1605  0266 2606          	jrne	L536
1606                     ; 603     status = SUCCESS;
1608  0268 a601          	ld	a,#1
1609  026a 6b06          	ld	(OFST+0,sp),a
1611  026c 2002          	jra	L736
1612  026e               L536:
1613                     ; 608     status = ERROR;
1615  026e 0f06          	clr	(OFST+0,sp)
1616  0270               L736:
1617                     ; 612   return status;
1619  0270 7b06          	ld	a,(OFST+0,sp)
1622  0272 5b08          	addw	sp,#8
1623  0274 81            	ret
1676                     ; 629 I2C_Event_TypeDef I2C_GetLastEvent(void)
1676                     ; 630 {
1677                     	switch	.text
1678  0275               _I2C_GetLastEvent:
1680  0275 5206          	subw	sp,#6
1681       00000006      OFST:	set	6
1684                     ; 631   __IO uint16_t lastevent = 0;
1686  0277 5f            	clrw	x
1687  0278 1f05          	ldw	(OFST-1,sp),x
1688                     ; 632   uint16_t flag1 = 0;
1690  027a 1e01          	ldw	x,(OFST-5,sp)
1691                     ; 633   uint16_t flag2 = 0;
1693  027c 1e03          	ldw	x,(OFST-3,sp)
1694                     ; 635   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1696  027e c65218        	ld	a,21016
1697  0281 a504          	bcp	a,#4
1698  0283 2707          	jreq	L766
1699                     ; 637     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1701  0285 ae0004        	ldw	x,#4
1702  0288 1f05          	ldw	(OFST-1,sp),x
1704  028a 201b          	jra	L176
1705  028c               L766:
1706                     ; 642     flag1 = I2C->SR1;
1708  028c c65217        	ld	a,21015
1709  028f 5f            	clrw	x
1710  0290 97            	ld	xl,a
1711  0291 1f01          	ldw	(OFST-5,sp),x
1712                     ; 643     flag2 = I2C->SR3;
1714  0293 c65219        	ld	a,21017
1715  0296 5f            	clrw	x
1716  0297 97            	ld	xl,a
1717  0298 1f03          	ldw	(OFST-3,sp),x
1718                     ; 646     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1720  029a 1e03          	ldw	x,(OFST-3,sp)
1721  029c 4f            	clr	a
1722  029d 02            	rlwa	x,a
1723  029e 01            	rrwa	x,a
1724  029f 1a02          	or	a,(OFST-4,sp)
1725  02a1 01            	rrwa	x,a
1726  02a2 1a01          	or	a,(OFST-5,sp)
1727  02a4 01            	rrwa	x,a
1728  02a5 1f05          	ldw	(OFST-1,sp),x
1729  02a7               L176:
1730                     ; 649   return (I2C_Event_TypeDef)lastevent;
1732  02a7 1e05          	ldw	x,(OFST-1,sp)
1735  02a9 5b06          	addw	sp,#6
1736  02ab 81            	ret
1951                     ; 680 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
1951                     ; 681 {
1952                     	switch	.text
1953  02ac               _I2C_GetFlagStatus:
1955  02ac 89            	pushw	x
1956  02ad 89            	pushw	x
1957       00000002      OFST:	set	2
1960                     ; 682   uint8_t tempreg = 0;
1962  02ae 0f02          	clr	(OFST+0,sp)
1963                     ; 683   uint8_t regindex = 0;
1965  02b0 7b01          	ld	a,(OFST-1,sp)
1966  02b2 97            	ld	xl,a
1967                     ; 684   FlagStatus bitstatus = RESET;
1969  02b3 7b02          	ld	a,(OFST+0,sp)
1970  02b5 97            	ld	xl,a
1971                     ; 687   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
1973                     ; 690   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
1975  02b6 7b03          	ld	a,(OFST+1,sp)
1976  02b8 6b01          	ld	(OFST-1,sp),a
1977                     ; 692   switch (regindex)
1979  02ba 7b01          	ld	a,(OFST-1,sp)
1981                     ; 709     default:
1981                     ; 710       break;
1982  02bc 4a            	dec	a
1983  02bd 2708          	jreq	L376
1984  02bf 4a            	dec	a
1985  02c0 270c          	jreq	L576
1986  02c2 4a            	dec	a
1987  02c3 2710          	jreq	L776
1988  02c5 2013          	jra	L3101
1989  02c7               L376:
1990                     ; 695     case 0x01:
1990                     ; 696       tempreg = (uint8_t)I2C->SR1;
1992  02c7 c65217        	ld	a,21015
1993  02ca 6b02          	ld	(OFST+0,sp),a
1994                     ; 697       break;
1996  02cc 200c          	jra	L3101
1997  02ce               L576:
1998                     ; 700     case 0x02:
1998                     ; 701       tempreg = (uint8_t)I2C->SR2;
2000  02ce c65218        	ld	a,21016
2001  02d1 6b02          	ld	(OFST+0,sp),a
2002                     ; 702       break;
2004  02d3 2005          	jra	L3101
2005  02d5               L776:
2006                     ; 705     case 0x03:
2006                     ; 706       tempreg = (uint8_t)I2C->SR3;
2008  02d5 c65219        	ld	a,21017
2009  02d8 6b02          	ld	(OFST+0,sp),a
2010                     ; 707       break;
2012  02da               L107:
2013                     ; 709     default:
2013                     ; 710       break;
2015  02da               L3101:
2016                     ; 714   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2018  02da 7b04          	ld	a,(OFST+2,sp)
2019  02dc 1502          	bcp	a,(OFST+0,sp)
2020  02de 2706          	jreq	L5101
2021                     ; 717     bitstatus = SET;
2023  02e0 a601          	ld	a,#1
2024  02e2 6b02          	ld	(OFST+0,sp),a
2026  02e4 2002          	jra	L7101
2027  02e6               L5101:
2028                     ; 722     bitstatus = RESET;
2030  02e6 0f02          	clr	(OFST+0,sp)
2031  02e8               L7101:
2032                     ; 725   return bitstatus;
2034  02e8 7b02          	ld	a,(OFST+0,sp)
2037  02ea 5b04          	addw	sp,#4
2038  02ec 81            	ret
2082                     ; 760 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2082                     ; 761 {
2083                     	switch	.text
2084  02ed               _I2C_ClearFlag:
2086  02ed 89            	pushw	x
2087  02ee 89            	pushw	x
2088       00000002      OFST:	set	2
2091                     ; 762   uint16_t flagpos = 0;
2093  02ef 5f            	clrw	x
2094  02f0 1f01          	ldw	(OFST-1,sp),x
2095                     ; 764   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2097                     ; 767   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2099  02f2 7b03          	ld	a,(OFST+1,sp)
2100  02f4 97            	ld	xl,a
2101  02f5 7b04          	ld	a,(OFST+2,sp)
2102  02f7 a4ff          	and	a,#255
2103  02f9 5f            	clrw	x
2104  02fa 02            	rlwa	x,a
2105  02fb 1f01          	ldw	(OFST-1,sp),x
2106  02fd 01            	rrwa	x,a
2107                     ; 769   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2109  02fe 7b02          	ld	a,(OFST+0,sp)
2110  0300 43            	cpl	a
2111  0301 c75218        	ld	21016,a
2112                     ; 770 }
2115  0304 5b04          	addw	sp,#4
2116  0306 81            	ret
2282                     ; 792 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2282                     ; 793 {
2283                     	switch	.text
2284  0307               _I2C_GetITStatus:
2286  0307 89            	pushw	x
2287  0308 5204          	subw	sp,#4
2288       00000004      OFST:	set	4
2291                     ; 794   ITStatus bitstatus = RESET;
2293  030a 7b04          	ld	a,(OFST+0,sp)
2294  030c 97            	ld	xl,a
2295                     ; 795   __IO uint8_t enablestatus = 0;
2297  030d 0f03          	clr	(OFST-1,sp)
2298                     ; 796   uint16_t tempregister = 0;
2300  030f 1e01          	ldw	x,(OFST-3,sp)
2301                     ; 799     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2303                     ; 801   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2305  0311 7b05          	ld	a,(OFST+1,sp)
2306  0313 97            	ld	xl,a
2307  0314 7b06          	ld	a,(OFST+2,sp)
2308  0316 9f            	ld	a,xl
2309  0317 a407          	and	a,#7
2310  0319 97            	ld	xl,a
2311  031a 4f            	clr	a
2312  031b 02            	rlwa	x,a
2313  031c 4f            	clr	a
2314  031d 01            	rrwa	x,a
2315  031e 9f            	ld	a,xl
2316  031f 5f            	clrw	x
2317  0320 97            	ld	xl,a
2318  0321 1f01          	ldw	(OFST-3,sp),x
2319                     ; 804   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2321  0323 c6521a        	ld	a,21018
2322  0326 1402          	and	a,(OFST-2,sp)
2323  0328 6b03          	ld	(OFST-1,sp),a
2324                     ; 806   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2326  032a 7b05          	ld	a,(OFST+1,sp)
2327  032c 97            	ld	xl,a
2328  032d 7b06          	ld	a,(OFST+2,sp)
2329  032f 9f            	ld	a,xl
2330  0330 a430          	and	a,#48
2331  0332 97            	ld	xl,a
2332  0333 4f            	clr	a
2333  0334 02            	rlwa	x,a
2334  0335 a30100        	cpw	x,#256
2335  0338 2615          	jrne	L1311
2336                     ; 809     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2338  033a c65217        	ld	a,21015
2339  033d 1506          	bcp	a,(OFST+2,sp)
2340  033f 270a          	jreq	L3311
2342  0341 0d03          	tnz	(OFST-1,sp)
2343  0343 2706          	jreq	L3311
2344                     ; 812       bitstatus = SET;
2346  0345 a601          	ld	a,#1
2347  0347 6b04          	ld	(OFST+0,sp),a
2349  0349 2017          	jra	L7311
2350  034b               L3311:
2351                     ; 817       bitstatus = RESET;
2353  034b 0f04          	clr	(OFST+0,sp)
2354  034d 2013          	jra	L7311
2355  034f               L1311:
2356                     ; 823     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2358  034f c65218        	ld	a,21016
2359  0352 1506          	bcp	a,(OFST+2,sp)
2360  0354 270a          	jreq	L1411
2362  0356 0d03          	tnz	(OFST-1,sp)
2363  0358 2706          	jreq	L1411
2364                     ; 826       bitstatus = SET;
2366  035a a601          	ld	a,#1
2367  035c 6b04          	ld	(OFST+0,sp),a
2369  035e 2002          	jra	L7311
2370  0360               L1411:
2371                     ; 831       bitstatus = RESET;
2373  0360 0f04          	clr	(OFST+0,sp)
2374  0362               L7311:
2375                     ; 835   return  bitstatus;
2377  0362 7b04          	ld	a,(OFST+0,sp)
2380  0364 5b06          	addw	sp,#6
2381  0366 81            	ret
2426                     ; 873 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2426                     ; 874 {
2427                     	switch	.text
2428  0367               _I2C_ClearITPendingBit:
2430  0367 89            	pushw	x
2431  0368 89            	pushw	x
2432       00000002      OFST:	set	2
2435                     ; 875   uint16_t flagpos = 0;
2437  0369 5f            	clrw	x
2438  036a 1f01          	ldw	(OFST-1,sp),x
2439                     ; 878   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2441                     ; 881   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2443  036c 7b03          	ld	a,(OFST+1,sp)
2444  036e 97            	ld	xl,a
2445  036f 7b04          	ld	a,(OFST+2,sp)
2446  0371 a4ff          	and	a,#255
2447  0373 5f            	clrw	x
2448  0374 02            	rlwa	x,a
2449  0375 1f01          	ldw	(OFST-1,sp),x
2450  0377 01            	rrwa	x,a
2451                     ; 884   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2453  0378 7b02          	ld	a,(OFST+0,sp)
2454  037a 43            	cpl	a
2455  037b c75218        	ld	21016,a
2456                     ; 885 }
2459  037e 5b04          	addw	sp,#4
2460  0380 81            	ret
2473                     	xdef	_I2C_ClearITPendingBit
2474                     	xdef	_I2C_GetITStatus
2475                     	xdef	_I2C_ClearFlag
2476                     	xdef	_I2C_GetFlagStatus
2477                     	xdef	_I2C_GetLastEvent
2478                     	xdef	_I2C_CheckEvent
2479                     	xdef	_I2C_SendData
2480                     	xdef	_I2C_Send7bitAddress
2481                     	xdef	_I2C_ReceiveData
2482                     	xdef	_I2C_ITConfig
2483                     	xdef	_I2C_FastModeDutyCycleConfig
2484                     	xdef	_I2C_AcknowledgeConfig
2485                     	xdef	_I2C_StretchClockCmd
2486                     	xdef	_I2C_SoftwareResetCmd
2487                     	xdef	_I2C_GenerateSTOP
2488                     	xdef	_I2C_GenerateSTART
2489                     	xdef	_I2C_GeneralCallCmd
2490                     	xdef	_I2C_Cmd
2491                     	xdef	_I2C_Init
2492                     	xdef	_I2C_DeInit
2493                     	xref.b	c_lreg
2512                     	xref	c_sdivx
2513                     	xref	c_ludv
2514                     	xref	c_rtol
2515                     	xref	c_smul
2516                     	xref	c_lmul
2517                     	xref	c_lcmp
2518                     	xref	c_ltor
2519                     	end
