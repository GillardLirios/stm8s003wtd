   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 52 void TIM1_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _TIM1_DeInit:
  49                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  51  0000 725f5250      	clr	21072
  52                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  54  0004 725f5251      	clr	21073
  55                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  57  0008 725f5252      	clr	21074
  58                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  60  000c 725f5253      	clr	21075
  61                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  63  0010 725f5254      	clr	21076
  64                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  66  0014 725f5256      	clr	21078
  67                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  69  0018 725f525c      	clr	21084
  70                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  72  001c 725f525d      	clr	21085
  73                     ; 64     TIM1->CCMR1 = 0x01;
  75  0020 35015258      	mov	21080,#1
  76                     ; 65     TIM1->CCMR2 = 0x01;
  78  0024 35015259      	mov	21081,#1
  79                     ; 66     TIM1->CCMR3 = 0x01;
  81  0028 3501525a      	mov	21082,#1
  82                     ; 67     TIM1->CCMR4 = 0x01;
  84  002c 3501525b      	mov	21083,#1
  85                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  87  0030 725f525c      	clr	21084
  88                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  90  0034 725f525d      	clr	21085
  91                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  93  0038 725f5258      	clr	21080
  94                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  96  003c 725f5259      	clr	21081
  97                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  99  0040 725f525a      	clr	21082
 100                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 102  0044 725f525b      	clr	21083
 103                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 105  0048 725f525e      	clr	21086
 106                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 108  004c 725f525f      	clr	21087
 109                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 111  0050 725f5260      	clr	21088
 112                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 114  0054 725f5261      	clr	21089
 115                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 117  0058 35ff5262      	mov	21090,#255
 118                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 120  005c 35ff5263      	mov	21091,#255
 121                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 123  0060 725f5265      	clr	21093
 124                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 126  0064 725f5266      	clr	21094
 127                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 129  0068 725f5267      	clr	21095
 130                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 132  006c 725f5268      	clr	21096
 133                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 135  0070 725f5269      	clr	21097
 136                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 138  0074 725f526a      	clr	21098
 139                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 141  0078 725f526b      	clr	21099
 142                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 144  007c 725f526c      	clr	21100
 145                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 147  0080 725f526f      	clr	21103
 148                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 150  0084 35015257      	mov	21079,#1
 151                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 153  0088 725f526e      	clr	21102
 154                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 156  008c 725f526d      	clr	21101
 157                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 159  0090 725f5264      	clr	21092
 160                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 162  0094 725f5255      	clr	21077
 163                     ; 95 }
 166  0098 81            	ret
 275                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 275                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 275                     ; 107                        uint16_t TIM1_Period,
 275                     ; 108                        uint8_t TIM1_RepetitionCounter)
 275                     ; 109 {
 276                     	switch	.text
 277  0099               _TIM1_TimeBaseInit:
 279  0099 89            	pushw	x
 280       00000000      OFST:	set	0
 283                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 285                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 287  009a 7b06          	ld	a,(OFST+6,sp)
 288  009c c75262        	ld	21090,a
 289                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 291  009f 7b07          	ld	a,(OFST+7,sp)
 292  00a1 c75263        	ld	21091,a
 293                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 295  00a4 9e            	ld	a,xh
 296  00a5 c75260        	ld	21088,a
 297                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 299  00a8 9f            	ld	a,xl
 300  00a9 c75261        	ld	21089,a
 301                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 301                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 303  00ac c65250        	ld	a,21072
 304  00af a48f          	and	a,#143
 305  00b1 1a05          	or	a,(OFST+5,sp)
 306  00b3 c75250        	ld	21072,a
 307                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 309  00b6 7b08          	ld	a,(OFST+8,sp)
 310  00b8 c75264        	ld	21092,a
 311                     ; 129 }
 314  00bb 85            	popw	x
 315  00bc 81            	ret
 600                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 600                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 600                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 600                     ; 153                   uint16_t TIM1_Pulse,
 600                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 600                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 600                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 600                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 600                     ; 158 {
 601                     	switch	.text
 602  00bd               _TIM1_OC1Init:
 604  00bd 89            	pushw	x
 605  00be 5203          	subw	sp,#3
 606       00000003      OFST:	set	3
 609                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 611                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 613                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 615                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 617                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 619                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 621                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 623                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 623                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 625  00c0 c6525c        	ld	a,21084
 626  00c3 a4f0          	and	a,#240
 627  00c5 c7525c        	ld	21084,a
 628                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 628                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 628                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 628                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 630  00c8 7b0c          	ld	a,(OFST+9,sp)
 631  00ca a408          	and	a,#8
 632  00cc 6b03          	ld	(OFST+0,sp),a
 633  00ce 7b0b          	ld	a,(OFST+8,sp)
 634  00d0 a402          	and	a,#2
 635  00d2 1a03          	or	a,(OFST+0,sp)
 636  00d4 6b02          	ld	(OFST-1,sp),a
 637  00d6 7b08          	ld	a,(OFST+5,sp)
 638  00d8 a404          	and	a,#4
 639  00da 6b01          	ld	(OFST-2,sp),a
 640  00dc 9f            	ld	a,xl
 641  00dd a401          	and	a,#1
 642  00df 1a01          	or	a,(OFST-2,sp)
 643  00e1 1a02          	or	a,(OFST-1,sp)
 644  00e3 ca525c        	or	a,21084
 645  00e6 c7525c        	ld	21084,a
 646                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 646                     ; 181                             (uint8_t)TIM1_OCMode);
 648  00e9 c65258        	ld	a,21080
 649  00ec a48f          	and	a,#143
 650  00ee 1a04          	or	a,(OFST+1,sp)
 651  00f0 c75258        	ld	21080,a
 652                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 654  00f3 c6526f        	ld	a,21103
 655  00f6 a4fc          	and	a,#252
 656  00f8 c7526f        	ld	21103,a
 657                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 657                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 659  00fb 7b0e          	ld	a,(OFST+11,sp)
 660  00fd a402          	and	a,#2
 661  00ff 6b03          	ld	(OFST+0,sp),a
 662  0101 7b0d          	ld	a,(OFST+10,sp)
 663  0103 a401          	and	a,#1
 664  0105 1a03          	or	a,(OFST+0,sp)
 665  0107 ca526f        	or	a,21103
 666  010a c7526f        	ld	21103,a
 667                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 669  010d 7b09          	ld	a,(OFST+6,sp)
 670  010f c75265        	ld	21093,a
 671                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 673  0112 7b0a          	ld	a,(OFST+7,sp)
 674  0114 c75266        	ld	21094,a
 675                     ; 192 }
 678  0117 5b05          	addw	sp,#5
 679  0119 81            	ret
 783                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 783                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 783                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 783                     ; 216                   uint16_t TIM1_Pulse,
 783                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 783                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 783                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 783                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 783                     ; 221 {
 784                     	switch	.text
 785  011a               _TIM1_OC2Init:
 787  011a 89            	pushw	x
 788  011b 5203          	subw	sp,#3
 789       00000003      OFST:	set	3
 792                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 794                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 796                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 798                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 800                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 802                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 804                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 806                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 806                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 808  011d c6525c        	ld	a,21084
 809  0120 a40f          	and	a,#15
 810  0122 c7525c        	ld	21084,a
 811                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 811                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 811                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 811                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 813  0125 7b0c          	ld	a,(OFST+9,sp)
 814  0127 a480          	and	a,#128
 815  0129 6b03          	ld	(OFST+0,sp),a
 816  012b 7b0b          	ld	a,(OFST+8,sp)
 817  012d a420          	and	a,#32
 818  012f 1a03          	or	a,(OFST+0,sp)
 819  0131 6b02          	ld	(OFST-1,sp),a
 820  0133 7b08          	ld	a,(OFST+5,sp)
 821  0135 a440          	and	a,#64
 822  0137 6b01          	ld	(OFST-2,sp),a
 823  0139 9f            	ld	a,xl
 824  013a a410          	and	a,#16
 825  013c 1a01          	or	a,(OFST-2,sp)
 826  013e 1a02          	or	a,(OFST-1,sp)
 827  0140 ca525c        	or	a,21084
 828  0143 c7525c        	ld	21084,a
 829                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 829                     ; 245                              (uint8_t)TIM1_OCMode);
 831  0146 c65259        	ld	a,21081
 832  0149 a48f          	and	a,#143
 833  014b 1a04          	or	a,(OFST+1,sp)
 834  014d c75259        	ld	21081,a
 835                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 837  0150 c6526f        	ld	a,21103
 838  0153 a4f3          	and	a,#243
 839  0155 c7526f        	ld	21103,a
 840                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 840                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 842  0158 7b0e          	ld	a,(OFST+11,sp)
 843  015a a408          	and	a,#8
 844  015c 6b03          	ld	(OFST+0,sp),a
 845  015e 7b0d          	ld	a,(OFST+10,sp)
 846  0160 a404          	and	a,#4
 847  0162 1a03          	or	a,(OFST+0,sp)
 848  0164 ca526f        	or	a,21103
 849  0167 c7526f        	ld	21103,a
 850                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 852  016a 7b09          	ld	a,(OFST+6,sp)
 853  016c c75267        	ld	21095,a
 854                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 856  016f 7b0a          	ld	a,(OFST+7,sp)
 857  0171 c75268        	ld	21096,a
 858                     ; 257 }
 861  0174 5b05          	addw	sp,#5
 862  0176 81            	ret
 966                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 966                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
 966                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 966                     ; 281                   uint16_t TIM1_Pulse,
 966                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 966                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 966                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 966                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 966                     ; 286 {
 967                     	switch	.text
 968  0177               _TIM1_OC3Init:
 970  0177 89            	pushw	x
 971  0178 5203          	subw	sp,#3
 972       00000003      OFST:	set	3
 975                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 977                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 979                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 981                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 983                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 985                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 987                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 989                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
 989                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 991  017a c6525d        	ld	a,21085
 992  017d a4f0          	and	a,#240
 993  017f c7525d        	ld	21085,a
 994                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
 994                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
 994                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
 994                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
 996  0182 7b0c          	ld	a,(OFST+9,sp)
 997  0184 a408          	and	a,#8
 998  0186 6b03          	ld	(OFST+0,sp),a
 999  0188 7b0b          	ld	a,(OFST+8,sp)
1000  018a a402          	and	a,#2
1001  018c 1a03          	or	a,(OFST+0,sp)
1002  018e 6b02          	ld	(OFST-1,sp),a
1003  0190 7b08          	ld	a,(OFST+5,sp)
1004  0192 a404          	and	a,#4
1005  0194 6b01          	ld	(OFST-2,sp),a
1006  0196 9f            	ld	a,xl
1007  0197 a401          	and	a,#1
1008  0199 1a01          	or	a,(OFST-2,sp)
1009  019b 1a02          	or	a,(OFST-1,sp)
1010  019d ca525d        	or	a,21085
1011  01a0 c7525d        	ld	21085,a
1012                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1012                     ; 309                              (uint8_t)TIM1_OCMode);
1014  01a3 c6525a        	ld	a,21082
1015  01a6 a48f          	and	a,#143
1016  01a8 1a04          	or	a,(OFST+1,sp)
1017  01aa c7525a        	ld	21082,a
1018                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1020  01ad c6526f        	ld	a,21103
1021  01b0 a4cf          	and	a,#207
1022  01b2 c7526f        	ld	21103,a
1023                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1023                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1025  01b5 7b0e          	ld	a,(OFST+11,sp)
1026  01b7 a420          	and	a,#32
1027  01b9 6b03          	ld	(OFST+0,sp),a
1028  01bb 7b0d          	ld	a,(OFST+10,sp)
1029  01bd a410          	and	a,#16
1030  01bf 1a03          	or	a,(OFST+0,sp)
1031  01c1 ca526f        	or	a,21103
1032  01c4 c7526f        	ld	21103,a
1033                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1035  01c7 7b09          	ld	a,(OFST+6,sp)
1036  01c9 c75269        	ld	21097,a
1037                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1039  01cc 7b0a          	ld	a,(OFST+7,sp)
1040  01ce c7526a        	ld	21098,a
1041                     ; 321 }
1044  01d1 5b05          	addw	sp,#5
1045  01d3 81            	ret
1119                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1119                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1119                     ; 338                   uint16_t TIM1_Pulse,
1119                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1119                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1119                     ; 341 {
1120                     	switch	.text
1121  01d4               _TIM1_OC4Init:
1123  01d4 89            	pushw	x
1124  01d5 88            	push	a
1125       00000001      OFST:	set	1
1128                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1130                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1132                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1134                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1136                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1138  01d6 c6525d        	ld	a,21085
1139  01d9 a4cf          	and	a,#207
1140  01db c7525d        	ld	21085,a
1141                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1141                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1143  01de 7b08          	ld	a,(OFST+7,sp)
1144  01e0 a420          	and	a,#32
1145  01e2 6b01          	ld	(OFST+0,sp),a
1146  01e4 9f            	ld	a,xl
1147  01e5 a410          	and	a,#16
1148  01e7 1a01          	or	a,(OFST+0,sp)
1149  01e9 ca525d        	or	a,21085
1150  01ec c7525d        	ld	21085,a
1151                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1151                     ; 356                             TIM1_OCMode);
1153  01ef c6525b        	ld	a,21083
1154  01f2 a48f          	and	a,#143
1155  01f4 1a02          	or	a,(OFST+1,sp)
1156  01f6 c7525b        	ld	21083,a
1157                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1159  01f9 0d09          	tnz	(OFST+8,sp)
1160  01fb 270a          	jreq	L534
1161                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1163  01fd c6526f        	ld	a,21103
1164  0200 aadf          	or	a,#223
1165  0202 c7526f        	ld	21103,a
1167  0205 2004          	jra	L734
1168  0207               L534:
1169                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1171  0207 721d526f      	bres	21103,#6
1172  020b               L734:
1173                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1175  020b 7b06          	ld	a,(OFST+5,sp)
1176  020d c7526b        	ld	21099,a
1177                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1179  0210 7b07          	ld	a,(OFST+6,sp)
1180  0212 c7526c        	ld	21100,a
1181                     ; 372 }
1184  0215 5b03          	addw	sp,#3
1185  0217 81            	ret
1390                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1390                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1390                     ; 389                      uint8_t TIM1_DeadTime,
1390                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1390                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1390                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1390                     ; 393 {
1391                     	switch	.text
1392  0218               _TIM1_BDTRConfig:
1394  0218 89            	pushw	x
1395  0219 88            	push	a
1396       00000001      OFST:	set	1
1399                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1401                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1403                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1405                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1407                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1409                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1411  021a 7b06          	ld	a,(OFST+5,sp)
1412  021c c7526e        	ld	21102,a
1413                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1413                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1413                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1415  021f 7b07          	ld	a,(OFST+6,sp)
1416  0221 1a08          	or	a,(OFST+7,sp)
1417  0223 1a09          	or	a,(OFST+8,sp)
1418  0225 6b01          	ld	(OFST+0,sp),a
1419  0227 9f            	ld	a,xl
1420  0228 1a02          	or	a,(OFST+1,sp)
1421  022a 1a01          	or	a,(OFST+0,sp)
1422  022c c7526d        	ld	21101,a
1423                     ; 409 }
1426  022f 5b03          	addw	sp,#3
1427  0231 81            	ret
1629                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1629                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1629                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1629                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1629                     ; 427                  uint8_t TIM1_ICFilter)
1629                     ; 428 {
1630                     	switch	.text
1631  0232               _TIM1_ICInit:
1633  0232 89            	pushw	x
1634       00000000      OFST:	set	0
1637                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1639                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1641                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1643                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1645                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1647                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
1649  0233 9e            	ld	a,xh
1650  0234 4d            	tnz	a
1651  0235 2614          	jrne	L766
1652                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
1652                     ; 441                    (uint8_t)TIM1_ICSelection,
1652                     ; 442                    (uint8_t)TIM1_ICFilter);
1654  0237 7b07          	ld	a,(OFST+7,sp)
1655  0239 88            	push	a
1656  023a 7b06          	ld	a,(OFST+6,sp)
1657  023c 97            	ld	xl,a
1658  023d 7b03          	ld	a,(OFST+3,sp)
1659  023f 95            	ld	xh,a
1660  0240 cd080f        	call	L3_TI1_Config
1662  0243 84            	pop	a
1663                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1665  0244 7b06          	ld	a,(OFST+6,sp)
1666  0246 cd06b7        	call	_TIM1_SetIC1Prescaler
1669  0249 2046          	jra	L176
1670  024b               L766:
1671                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
1673  024b 7b01          	ld	a,(OFST+1,sp)
1674  024d a101          	cp	a,#1
1675  024f 2614          	jrne	L376
1676                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
1676                     ; 450                    (uint8_t)TIM1_ICSelection,
1676                     ; 451                    (uint8_t)TIM1_ICFilter);
1678  0251 7b07          	ld	a,(OFST+7,sp)
1679  0253 88            	push	a
1680  0254 7b06          	ld	a,(OFST+6,sp)
1681  0256 97            	ld	xl,a
1682  0257 7b03          	ld	a,(OFST+3,sp)
1683  0259 95            	ld	xh,a
1684  025a cd083f        	call	L5_TI2_Config
1686  025d 84            	pop	a
1687                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1689  025e 7b06          	ld	a,(OFST+6,sp)
1690  0260 cd06c4        	call	_TIM1_SetIC2Prescaler
1693  0263 202c          	jra	L176
1694  0265               L376:
1695                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
1697  0265 7b01          	ld	a,(OFST+1,sp)
1698  0267 a102          	cp	a,#2
1699  0269 2614          	jrne	L776
1700                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
1700                     ; 459                    (uint8_t)TIM1_ICSelection,
1700                     ; 460                    (uint8_t)TIM1_ICFilter);
1702  026b 7b07          	ld	a,(OFST+7,sp)
1703  026d 88            	push	a
1704  026e 7b06          	ld	a,(OFST+6,sp)
1705  0270 97            	ld	xl,a
1706  0271 7b03          	ld	a,(OFST+3,sp)
1707  0273 95            	ld	xh,a
1708  0274 cd086f        	call	L7_TI3_Config
1710  0277 84            	pop	a
1711                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1713  0278 7b06          	ld	a,(OFST+6,sp)
1714  027a cd06d1        	call	_TIM1_SetIC3Prescaler
1717  027d 2012          	jra	L176
1718  027f               L776:
1719                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
1719                     ; 468                    (uint8_t)TIM1_ICSelection,
1719                     ; 469                    (uint8_t)TIM1_ICFilter);
1721  027f 7b07          	ld	a,(OFST+7,sp)
1722  0281 88            	push	a
1723  0282 7b06          	ld	a,(OFST+6,sp)
1724  0284 97            	ld	xl,a
1725  0285 7b03          	ld	a,(OFST+3,sp)
1726  0287 95            	ld	xh,a
1727  0288 cd089f        	call	L11_TI4_Config
1729  028b 84            	pop	a
1730                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1732  028c 7b06          	ld	a,(OFST+6,sp)
1733  028e cd06de        	call	_TIM1_SetIC4Prescaler
1735  0291               L176:
1736                     ; 474 }
1739  0291 85            	popw	x
1740  0292 81            	ret
1836                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1836                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1836                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1836                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1836                     ; 494                      uint8_t TIM1_ICFilter)
1836                     ; 495 {
1837                     	switch	.text
1838  0293               _TIM1_PWMIConfig:
1840  0293 89            	pushw	x
1841  0294 89            	pushw	x
1842       00000002      OFST:	set	2
1845                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1847                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1849                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1851                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1853                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1855                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1857                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1859  0295 9f            	ld	a,xl
1860  0296 a101          	cp	a,#1
1861  0298 2706          	jreq	L157
1862                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
1864  029a a601          	ld	a,#1
1865  029c 6b01          	ld	(OFST-1,sp),a
1867  029e 2002          	jra	L357
1868  02a0               L157:
1869                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
1871  02a0 0f01          	clr	(OFST-1,sp)
1872  02a2               L357:
1873                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1875  02a2 7b07          	ld	a,(OFST+5,sp)
1876  02a4 a101          	cp	a,#1
1877  02a6 2606          	jrne	L557
1878                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
1880  02a8 a602          	ld	a,#2
1881  02aa 6b02          	ld	(OFST+0,sp),a
1883  02ac 2004          	jra	L757
1884  02ae               L557:
1885                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
1887  02ae a601          	ld	a,#1
1888  02b0 6b02          	ld	(OFST+0,sp),a
1889  02b2               L757:
1890                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
1892  02b2 0d03          	tnz	(OFST+1,sp)
1893  02b4 2626          	jrne	L167
1894                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1894                     ; 529                    (uint8_t)TIM1_ICFilter);
1896  02b6 7b09          	ld	a,(OFST+7,sp)
1897  02b8 88            	push	a
1898  02b9 7b08          	ld	a,(OFST+6,sp)
1899  02bb 97            	ld	xl,a
1900  02bc 7b05          	ld	a,(OFST+3,sp)
1901  02be 95            	ld	xh,a
1902  02bf cd080f        	call	L3_TI1_Config
1904  02c2 84            	pop	a
1905                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1907  02c3 7b08          	ld	a,(OFST+6,sp)
1908  02c5 cd06b7        	call	_TIM1_SetIC1Prescaler
1910                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1912  02c8 7b09          	ld	a,(OFST+7,sp)
1913  02ca 88            	push	a
1914  02cb 7b03          	ld	a,(OFST+1,sp)
1915  02cd 97            	ld	xl,a
1916  02ce 7b02          	ld	a,(OFST+0,sp)
1917  02d0 95            	ld	xh,a
1918  02d1 cd083f        	call	L5_TI2_Config
1920  02d4 84            	pop	a
1921                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1923  02d5 7b08          	ld	a,(OFST+6,sp)
1924  02d7 cd06c4        	call	_TIM1_SetIC2Prescaler
1927  02da 2024          	jra	L367
1928  02dc               L167:
1929                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1929                     ; 544                    (uint8_t)TIM1_ICFilter);
1931  02dc 7b09          	ld	a,(OFST+7,sp)
1932  02de 88            	push	a
1933  02df 7b08          	ld	a,(OFST+6,sp)
1934  02e1 97            	ld	xl,a
1935  02e2 7b05          	ld	a,(OFST+3,sp)
1936  02e4 95            	ld	xh,a
1937  02e5 cd083f        	call	L5_TI2_Config
1939  02e8 84            	pop	a
1940                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1942  02e9 7b08          	ld	a,(OFST+6,sp)
1943  02eb cd06c4        	call	_TIM1_SetIC2Prescaler
1945                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1947  02ee 7b09          	ld	a,(OFST+7,sp)
1948  02f0 88            	push	a
1949  02f1 7b03          	ld	a,(OFST+1,sp)
1950  02f3 97            	ld	xl,a
1951  02f4 7b02          	ld	a,(OFST+0,sp)
1952  02f6 95            	ld	xh,a
1953  02f7 cd080f        	call	L3_TI1_Config
1955  02fa 84            	pop	a
1956                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1958  02fb 7b08          	ld	a,(OFST+6,sp)
1959  02fd cd06b7        	call	_TIM1_SetIC1Prescaler
1961  0300               L367:
1962                     ; 555 }
1965  0300 5b04          	addw	sp,#4
1966  0302 81            	ret
2021                     ; 563 void TIM1_Cmd(FunctionalState NewState)
2021                     ; 564 {
2022                     	switch	.text
2023  0303               _TIM1_Cmd:
2027                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2029                     ; 569     if (NewState != DISABLE)
2031  0303 4d            	tnz	a
2032  0304 2706          	jreq	L3101
2033                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2035  0306 72105250      	bset	21072,#0
2037  030a 2004          	jra	L5101
2038  030c               L3101:
2039                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2041  030c 72115250      	bres	21072,#0
2042  0310               L5101:
2043                     ; 577 }
2046  0310 81            	ret
2082                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2082                     ; 586 {
2083                     	switch	.text
2084  0311               _TIM1_CtrlPWMOutputs:
2088                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2090                     ; 592     if (NewState != DISABLE)
2092  0311 4d            	tnz	a
2093  0312 2706          	jreq	L5301
2094                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2096  0314 721e526d      	bset	21101,#7
2098  0318 2004          	jra	L7301
2099  031a               L5301:
2100                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2102  031a 721f526d      	bres	21101,#7
2103  031e               L7301:
2104                     ; 600 }
2107  031e 81            	ret
2214                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2214                     ; 620 {
2215                     	switch	.text
2216  031f               _TIM1_ITConfig:
2218  031f 89            	pushw	x
2219       00000000      OFST:	set	0
2222                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2224                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2226                     ; 625     if (NewState != DISABLE)
2228  0320 9f            	ld	a,xl
2229  0321 4d            	tnz	a
2230  0322 2709          	jreq	L7011
2231                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2233  0324 9e            	ld	a,xh
2234  0325 ca5254        	or	a,21076
2235  0328 c75254        	ld	21076,a
2237  032b 2009          	jra	L1111
2238  032d               L7011:
2239                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2241  032d 7b01          	ld	a,(OFST+1,sp)
2242  032f 43            	cpl	a
2243  0330 c45254        	and	a,21076
2244  0333 c75254        	ld	21076,a
2245  0336               L1111:
2246                     ; 635 }
2249  0336 85            	popw	x
2250  0337 81            	ret
2274                     ; 642 void TIM1_InternalClockConfig(void)
2274                     ; 643 {
2275                     	switch	.text
2276  0338               _TIM1_InternalClockConfig:
2280                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2282  0338 c65252        	ld	a,21074
2283  033b a4f8          	and	a,#248
2284  033d c75252        	ld	21074,a
2285                     ; 646 }
2288  0340 81            	ret
2405                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2405                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2405                     ; 666                               uint8_t ExtTRGFilter)
2405                     ; 667 {
2406                     	switch	.text
2407  0341               _TIM1_ETRClockMode1Config:
2409  0341 89            	pushw	x
2410       00000000      OFST:	set	0
2413                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2415                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2417                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2419  0342 7b05          	ld	a,(OFST+5,sp)
2420  0344 88            	push	a
2421  0345 9f            	ld	a,xl
2422  0346 97            	ld	xl,a
2423  0347 7b02          	ld	a,(OFST+2,sp)
2424  0349 95            	ld	xh,a
2425  034a ad1f          	call	_TIM1_ETRConfig
2427  034c 84            	pop	a
2428                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2428                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2430  034d c65252        	ld	a,21074
2431  0350 a488          	and	a,#136
2432  0352 aa77          	or	a,#119
2433  0354 c75252        	ld	21074,a
2434                     ; 678 }
2437  0357 85            	popw	x
2438  0358 81            	ret
2496                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2496                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2496                     ; 698                               uint8_t ExtTRGFilter)
2496                     ; 699 {
2497                     	switch	.text
2498  0359               _TIM1_ETRClockMode2Config:
2500  0359 89            	pushw	x
2501       00000000      OFST:	set	0
2504                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2506                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2508                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2510  035a 7b05          	ld	a,(OFST+5,sp)
2511  035c 88            	push	a
2512  035d 9f            	ld	a,xl
2513  035e 97            	ld	xl,a
2514  035f 7b02          	ld	a,(OFST+2,sp)
2515  0361 95            	ld	xh,a
2516  0362 ad07          	call	_TIM1_ETRConfig
2518  0364 84            	pop	a
2519                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
2521  0365 721c5253      	bset	21075,#6
2522                     ; 709 }
2525  0369 85            	popw	x
2526  036a 81            	ret
2582                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2582                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2582                     ; 729                     uint8_t ExtTRGFilter)
2582                     ; 730 {
2583                     	switch	.text
2584  036b               _TIM1_ETRConfig:
2586  036b 89            	pushw	x
2587       00000000      OFST:	set	0
2590                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2592                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2592                     ; 735                       (uint8_t)ExtTRGFilter );
2594  036c 9f            	ld	a,xl
2595  036d 1a01          	or	a,(OFST+1,sp)
2596  036f 1a05          	or	a,(OFST+5,sp)
2597  0371 ca5253        	or	a,21075
2598  0374 c75253        	ld	21075,a
2599                     ; 736 }
2602  0377 85            	popw	x
2603  0378 81            	ret
2692                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2692                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2692                     ; 755                                  uint8_t ICFilter)
2692                     ; 756 {
2693                     	switch	.text
2694  0379               _TIM1_TIxExternalClockConfig:
2696  0379 89            	pushw	x
2697       00000000      OFST:	set	0
2700                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2702                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2704                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2706                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2708  037a 9e            	ld	a,xh
2709  037b a160          	cp	a,#96
2710  037d 260f          	jrne	L1131
2711                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2713  037f 7b05          	ld	a,(OFST+5,sp)
2714  0381 88            	push	a
2715  0382 ae0001        	ldw	x,#1
2716  0385 7b03          	ld	a,(OFST+3,sp)
2717  0387 95            	ld	xh,a
2718  0388 cd083f        	call	L5_TI2_Config
2720  038b 84            	pop	a
2722  038c 200d          	jra	L3131
2723  038e               L1131:
2724                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2726  038e 7b05          	ld	a,(OFST+5,sp)
2727  0390 88            	push	a
2728  0391 ae0001        	ldw	x,#1
2729  0394 7b03          	ld	a,(OFST+3,sp)
2730  0396 95            	ld	xh,a
2731  0397 cd080f        	call	L3_TI1_Config
2733  039a 84            	pop	a
2734  039b               L3131:
2735                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2737  039b 7b01          	ld	a,(OFST+1,sp)
2738  039d ad0a          	call	_TIM1_SelectInputTrigger
2740                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2742  039f c65252        	ld	a,21074
2743  03a2 aa07          	or	a,#7
2744  03a4 c75252        	ld	21074,a
2745                     ; 777 }
2748  03a7 85            	popw	x
2749  03a8 81            	ret
2834                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2834                     ; 790 {
2835                     	switch	.text
2836  03a9               _TIM1_SelectInputTrigger:
2838  03a9 88            	push	a
2839       00000000      OFST:	set	0
2842                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2844                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2846  03aa c65252        	ld	a,21074
2847  03ad a48f          	and	a,#143
2848  03af 1a01          	or	a,(OFST+1,sp)
2849  03b1 c75252        	ld	21074,a
2850                     ; 796 }
2853  03b4 84            	pop	a
2854  03b5 81            	ret
2890                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2890                     ; 807 {
2891                     	switch	.text
2892  03b6               _TIM1_UpdateDisableConfig:
2896                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2898                     ; 812     if (NewState != DISABLE)
2900  03b6 4d            	tnz	a
2901  03b7 2706          	jreq	L1731
2902                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
2904  03b9 72125250      	bset	21072,#1
2906  03bd 2004          	jra	L3731
2907  03bf               L1731:
2908                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2910  03bf 72135250      	bres	21072,#1
2911  03c3               L3731:
2912                     ; 820 }
2915  03c3 81            	ret
2973                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2973                     ; 831 {
2974                     	switch	.text
2975  03c4               _TIM1_UpdateRequestConfig:
2979                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2981                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2983  03c4 4d            	tnz	a
2984  03c5 2706          	jreq	L3241
2985                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
2987  03c7 72145250      	bset	21072,#2
2989  03cb 2004          	jra	L5241
2990  03cd               L3241:
2991                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
2993  03cd 72155250      	bres	21072,#2
2994  03d1               L5241:
2995                     ; 844 }
2998  03d1 81            	ret
3034                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
3034                     ; 854 {
3035                     	switch	.text
3036  03d2               _TIM1_SelectHallSensor:
3040                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3042                     ; 859     if (NewState != DISABLE)
3044  03d2 4d            	tnz	a
3045  03d3 2706          	jreq	L5441
3046                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
3048  03d5 721e5251      	bset	21073,#7
3050  03d9 2004          	jra	L7441
3051  03db               L5441:
3052                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3054  03db 721f5251      	bres	21073,#7
3055  03df               L7441:
3056                     ; 867 }
3059  03df 81            	ret
3116                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3116                     ; 879 {
3117                     	switch	.text
3118  03e0               _TIM1_SelectOnePulseMode:
3122                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3124                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3126  03e0 4d            	tnz	a
3127  03e1 2706          	jreq	L7741
3128                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
3130  03e3 72165250      	bset	21072,#3
3132  03e7 2004          	jra	L1051
3133  03e9               L7741:
3134                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3136  03e9 72175250      	bres	21072,#3
3137  03ed               L1051:
3138                     ; 893 }
3141  03ed 81            	ret
3239                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3239                     ; 910 {
3240                     	switch	.text
3241  03ee               _TIM1_SelectOutputTrigger:
3243  03ee 88            	push	a
3244       00000000      OFST:	set	0
3247                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3249                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3249                     ; 916                           (uint8_t) TIM1_TRGOSource);
3251  03ef c65251        	ld	a,21073
3252  03f2 a48f          	and	a,#143
3253  03f4 1a01          	or	a,(OFST+1,sp)
3254  03f6 c75251        	ld	21073,a
3255                     ; 917 }
3258  03f9 84            	pop	a
3259  03fa 81            	ret
3333                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3333                     ; 930 {
3334                     	switch	.text
3335  03fb               _TIM1_SelectSlaveMode:
3337  03fb 88            	push	a
3338       00000000      OFST:	set	0
3341                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3343                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3343                     ; 937                            (uint8_t)TIM1_SlaveMode);
3345  03fc c65252        	ld	a,21074
3346  03ff a4f8          	and	a,#248
3347  0401 1a01          	or	a,(OFST+1,sp)
3348  0403 c75252        	ld	21074,a
3349                     ; 939 }
3352  0406 84            	pop	a
3353  0407 81            	ret
3389                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3389                     ; 948 {
3390                     	switch	.text
3391  0408               _TIM1_SelectMasterSlaveMode:
3395                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3397                     ; 953     if (NewState != DISABLE)
3399  0408 4d            	tnz	a
3400  0409 2706          	jreq	L3161
3401                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
3403  040b 721e5252      	bset	21074,#7
3405  040f 2004          	jra	L5161
3406  0411               L3161:
3407                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3409  0411 721f5252      	bres	21074,#7
3410  0415               L5161:
3411                     ; 961 }
3414  0415 81            	ret
3500                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3500                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3500                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3500                     ; 986 {
3501                     	switch	.text
3502  0416               _TIM1_EncoderInterfaceConfig:
3504  0416 89            	pushw	x
3505       00000000      OFST:	set	0
3508                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3510                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3512                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3514                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3516  0417 9f            	ld	a,xl
3517  0418 4d            	tnz	a
3518  0419 2706          	jreq	L7561
3519                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3521  041b 7212525c      	bset	21084,#1
3523  041f 2004          	jra	L1661
3524  0421               L7561:
3525                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3527  0421 7213525c      	bres	21084,#1
3528  0425               L1661:
3529                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3531  0425 0d05          	tnz	(OFST+5,sp)
3532  0427 2706          	jreq	L3661
3533                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3535  0429 721a525c      	bset	21084,#5
3537  042d 2004          	jra	L5661
3538  042f               L3661:
3539                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3541  042f 721b525c      	bres	21084,#5
3542  0433               L5661:
3543                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3543                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
3545  0433 c65252        	ld	a,21074
3546  0436 a4f0          	and	a,#240
3547  0438 1a01          	or	a,(OFST+1,sp)
3548  043a c75252        	ld	21074,a
3549                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3549                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
3551  043d c65258        	ld	a,21080
3552  0440 a4fc          	and	a,#252
3553  0442 aa01          	or	a,#1
3554  0444 c75258        	ld	21080,a
3555                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3555                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
3557  0447 c65259        	ld	a,21081
3558  044a a4fc          	and	a,#252
3559  044c aa01          	or	a,#1
3560  044e c75259        	ld	21081,a
3561                     ; 1022 }
3564  0451 85            	popw	x
3565  0452 81            	ret
3632                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
3632                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3632                     ; 1037 {
3633                     	switch	.text
3634  0453               _TIM1_PrescalerConfig:
3636  0453 89            	pushw	x
3637       00000000      OFST:	set	0
3640                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3642                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3644  0454 9e            	ld	a,xh
3645  0455 c75260        	ld	21088,a
3646                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
3648  0458 9f            	ld	a,xl
3649  0459 c75261        	ld	21089,a
3650                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3652  045c 7b05          	ld	a,(OFST+5,sp)
3653  045e c75257        	ld	21079,a
3654                     ; 1048 }
3657  0461 85            	popw	x
3658  0462 81            	ret
3694                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3694                     ; 1062 {
3695                     	switch	.text
3696  0463               _TIM1_CounterModeConfig:
3698  0463 88            	push	a
3699       00000000      OFST:	set	0
3702                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3704                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3704                     ; 1069                           | (uint8_t)TIM1_CounterMode);
3706  0464 c65250        	ld	a,21072
3707  0467 a48f          	and	a,#143
3708  0469 1a01          	or	a,(OFST+1,sp)
3709  046b c75250        	ld	21072,a
3710                     ; 1070 }
3713  046e 84            	pop	a
3714  046f 81            	ret
3772                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3772                     ; 1082 {
3773                     	switch	.text
3774  0470               _TIM1_ForcedOC1Config:
3776  0470 88            	push	a
3777       00000000      OFST:	set	0
3780                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3782                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3782                     ; 1088                              (uint8_t)TIM1_ForcedAction);
3784  0471 c65258        	ld	a,21080
3785  0474 a48f          	and	a,#143
3786  0476 1a01          	or	a,(OFST+1,sp)
3787  0478 c75258        	ld	21080,a
3788                     ; 1089 }
3791  047b 84            	pop	a
3792  047c 81            	ret
3828                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3828                     ; 1101 {
3829                     	switch	.text
3830  047d               _TIM1_ForcedOC2Config:
3832  047d 88            	push	a
3833       00000000      OFST:	set	0
3836                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3838                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3838                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
3840  047e c65259        	ld	a,21081
3841  0481 a48f          	and	a,#143
3842  0483 1a01          	or	a,(OFST+1,sp)
3843  0485 c75259        	ld	21081,a
3844                     ; 1108 }
3847  0488 84            	pop	a
3848  0489 81            	ret
3884                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3884                     ; 1121 {
3885                     	switch	.text
3886  048a               _TIM1_ForcedOC3Config:
3888  048a 88            	push	a
3889       00000000      OFST:	set	0
3892                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3894                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3894                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
3896  048b c6525a        	ld	a,21082
3897  048e a48f          	and	a,#143
3898  0490 1a01          	or	a,(OFST+1,sp)
3899  0492 c7525a        	ld	21082,a
3900                     ; 1128 }
3903  0495 84            	pop	a
3904  0496 81            	ret
3940                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3940                     ; 1141 {
3941                     	switch	.text
3942  0497               _TIM1_ForcedOC4Config:
3944  0497 88            	push	a
3945       00000000      OFST:	set	0
3948                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3950                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3950                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
3952  0498 c6525b        	ld	a,21083
3953  049b a48f          	and	a,#143
3954  049d 1a01          	or	a,(OFST+1,sp)
3955  049f c7525b        	ld	21083,a
3956                     ; 1148 }
3959  04a2 84            	pop	a
3960  04a3 81            	ret
3996                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
3996                     ; 1158 {
3997                     	switch	.text
3998  04a4               _TIM1_ARRPreloadConfig:
4002                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4004                     ; 1163     if (NewState != DISABLE)
4006  04a4 4d            	tnz	a
4007  04a5 2706          	jreq	L5502
4008                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
4010  04a7 721e5250      	bset	21072,#7
4012  04ab 2004          	jra	L7502
4013  04ad               L5502:
4014                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4016  04ad 721f5250      	bres	21072,#7
4017  04b1               L7502:
4018                     ; 1171 }
4021  04b1 81            	ret
4056                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
4056                     ; 1181 {
4057                     	switch	.text
4058  04b2               _TIM1_SelectCOM:
4062                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4064                     ; 1186     if (NewState != DISABLE)
4066  04b2 4d            	tnz	a
4067  04b3 2706          	jreq	L7702
4068                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
4070  04b5 72145251      	bset	21073,#2
4072  04b9 2004          	jra	L1012
4073  04bb               L7702:
4074                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4076  04bb 72155251      	bres	21073,#2
4077  04bf               L1012:
4078                     ; 1194 }
4081  04bf 81            	ret
4117                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
4117                     ; 1203 {
4118                     	switch	.text
4119  04c0               _TIM1_CCPreloadControl:
4123                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4125                     ; 1208     if (NewState != DISABLE)
4127  04c0 4d            	tnz	a
4128  04c1 2706          	jreq	L1212
4129                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
4131  04c3 72105251      	bset	21073,#0
4133  04c7 2004          	jra	L3212
4134  04c9               L1212:
4135                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4137  04c9 72115251      	bres	21073,#0
4138  04cd               L3212:
4139                     ; 1216 }
4142  04cd 81            	ret
4178                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4178                     ; 1226 {
4179                     	switch	.text
4180  04ce               _TIM1_OC1PreloadConfig:
4184                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4186                     ; 1231     if (NewState != DISABLE)
4188  04ce 4d            	tnz	a
4189  04cf 2706          	jreq	L3412
4190                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4192  04d1 72165258      	bset	21080,#3
4194  04d5 2004          	jra	L5412
4195  04d7               L3412:
4196                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4198  04d7 72175258      	bres	21080,#3
4199  04db               L5412:
4200                     ; 1239 }
4203  04db 81            	ret
4239                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4239                     ; 1249 {
4240                     	switch	.text
4241  04dc               _TIM1_OC2PreloadConfig:
4245                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4247                     ; 1254     if (NewState != DISABLE)
4249  04dc 4d            	tnz	a
4250  04dd 2706          	jreq	L5612
4251                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4253  04df 72165259      	bset	21081,#3
4255  04e3 2004          	jra	L7612
4256  04e5               L5612:
4257                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4259  04e5 72175259      	bres	21081,#3
4260  04e9               L7612:
4261                     ; 1262 }
4264  04e9 81            	ret
4300                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4300                     ; 1272 {
4301                     	switch	.text
4302  04ea               _TIM1_OC3PreloadConfig:
4306                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4308                     ; 1277     if (NewState != DISABLE)
4310  04ea 4d            	tnz	a
4311  04eb 2706          	jreq	L7022
4312                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4314  04ed 7216525a      	bset	21082,#3
4316  04f1 2004          	jra	L1122
4317  04f3               L7022:
4318                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4320  04f3 7217525a      	bres	21082,#3
4321  04f7               L1122:
4322                     ; 1285 }
4325  04f7 81            	ret
4361                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4361                     ; 1296 {
4362                     	switch	.text
4363  04f8               _TIM1_OC4PreloadConfig:
4367                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4369                     ; 1301     if (NewState != DISABLE)
4371  04f8 4d            	tnz	a
4372  04f9 2706          	jreq	L1322
4373                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4375  04fb 7216525b      	bset	21083,#3
4377  04ff 2004          	jra	L3322
4378  0501               L1322:
4379                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4381  0501 7217525b      	bres	21083,#3
4382  0505               L3322:
4383                     ; 1309 }
4386  0505 81            	ret
4421                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
4421                     ; 1318 {
4422                     	switch	.text
4423  0506               _TIM1_OC1FastConfig:
4427                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4429                     ; 1323     if (NewState != DISABLE)
4431  0506 4d            	tnz	a
4432  0507 2706          	jreq	L3522
4433                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4435  0509 72145258      	bset	21080,#2
4437  050d 2004          	jra	L5522
4438  050f               L3522:
4439                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4441  050f 72155258      	bres	21080,#2
4442  0513               L5522:
4443                     ; 1331 }
4446  0513 81            	ret
4481                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
4481                     ; 1342 {
4482                     	switch	.text
4483  0514               _TIM1_OC2FastConfig:
4487                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4489                     ; 1347     if (NewState != DISABLE)
4491  0514 4d            	tnz	a
4492  0515 2706          	jreq	L5722
4493                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4495  0517 72145259      	bset	21081,#2
4497  051b 2004          	jra	L7722
4498  051d               L5722:
4499                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4501  051d 72155259      	bres	21081,#2
4502  0521               L7722:
4503                     ; 1355 }
4506  0521 81            	ret
4541                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
4541                     ; 1365 {
4542                     	switch	.text
4543  0522               _TIM1_OC3FastConfig:
4547                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4549                     ; 1370     if (NewState != DISABLE)
4551  0522 4d            	tnz	a
4552  0523 2706          	jreq	L7132
4553                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4555  0525 7214525a      	bset	21082,#2
4557  0529 2004          	jra	L1232
4558  052b               L7132:
4559                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4561  052b 7215525a      	bres	21082,#2
4562  052f               L1232:
4563                     ; 1378 }
4566  052f 81            	ret
4601                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
4601                     ; 1388 {
4602                     	switch	.text
4603  0530               _TIM1_OC4FastConfig:
4607                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4609                     ; 1393     if (NewState != DISABLE)
4611  0530 4d            	tnz	a
4612  0531 2706          	jreq	L1432
4613                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4615  0533 7214525b      	bset	21083,#2
4617  0537 2004          	jra	L3432
4618  0539               L1432:
4619                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4621  0539 7215525b      	bres	21083,#2
4622  053d               L3432:
4623                     ; 1401 }
4626  053d 81            	ret
4731                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4731                     ; 1419 {
4732                     	switch	.text
4733  053e               _TIM1_GenerateEvent:
4737                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4739                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
4741  053e c75257        	ld	21079,a
4742                     ; 1425 }
4745  0541 81            	ret
4781                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4781                     ; 1437 {
4782                     	switch	.text
4783  0542               _TIM1_OC1PolarityConfig:
4787                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4789                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4791  0542 4d            	tnz	a
4792  0543 2706          	jreq	L5242
4793                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4795  0545 7212525c      	bset	21084,#1
4797  0549 2004          	jra	L7242
4798  054b               L5242:
4799                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4801  054b 7213525c      	bres	21084,#1
4802  054f               L7242:
4803                     ; 1450 }
4806  054f 81            	ret
4842                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4842                     ; 1462 {
4843                     	switch	.text
4844  0550               _TIM1_OC1NPolarityConfig:
4848                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4850                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4852  0550 4d            	tnz	a
4853  0551 2706          	jreq	L7442
4854                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4856  0553 7216525c      	bset	21084,#3
4858  0557 2004          	jra	L1542
4859  0559               L7442:
4860                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4862  0559 7217525c      	bres	21084,#3
4863  055d               L1542:
4864                     ; 1475 }
4867  055d 81            	ret
4903                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4903                     ; 1487 {
4904                     	switch	.text
4905  055e               _TIM1_OC2PolarityConfig:
4909                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4911                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4913  055e 4d            	tnz	a
4914  055f 2706          	jreq	L1742
4915                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4917  0561 721a525c      	bset	21084,#5
4919  0565 2004          	jra	L3742
4920  0567               L1742:
4921                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4923  0567 721b525c      	bres	21084,#5
4924  056b               L3742:
4925                     ; 1500 }
4928  056b 81            	ret
4964                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4964                     ; 1511 {
4965                     	switch	.text
4966  056c               _TIM1_OC2NPolarityConfig:
4970                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4972                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4974  056c 4d            	tnz	a
4975  056d 2706          	jreq	L3152
4976                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4978  056f 721e525c      	bset	21084,#7
4980  0573 2004          	jra	L5152
4981  0575               L3152:
4982                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
4984  0575 721f525c      	bres	21084,#7
4985  0579               L5152:
4986                     ; 1524 }
4989  0579 81            	ret
5025                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5025                     ; 1536 {
5026                     	switch	.text
5027  057a               _TIM1_OC3PolarityConfig:
5031                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5033                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5035  057a 4d            	tnz	a
5036  057b 2706          	jreq	L5352
5037                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
5039  057d 7212525d      	bset	21085,#1
5041  0581 2004          	jra	L7352
5042  0583               L5352:
5043                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5045  0583 7213525d      	bres	21085,#1
5046  0587               L7352:
5047                     ; 1549 }
5050  0587 81            	ret
5086                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5086                     ; 1561 {
5087                     	switch	.text
5088  0588               _TIM1_OC3NPolarityConfig:
5092                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5094                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5096  0588 4d            	tnz	a
5097  0589 2706          	jreq	L7552
5098                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5100  058b 7216525d      	bset	21085,#3
5102  058f 2004          	jra	L1652
5103  0591               L7552:
5104                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5106  0591 7217525d      	bres	21085,#3
5107  0595               L1652:
5108                     ; 1574 }
5111  0595 81            	ret
5147                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5147                     ; 1585 {
5148                     	switch	.text
5149  0596               _TIM1_OC4PolarityConfig:
5153                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5155                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5157  0596 4d            	tnz	a
5158  0597 2706          	jreq	L1062
5159                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5161  0599 721a525d      	bset	21085,#5
5163  059d 2004          	jra	L3062
5164  059f               L1062:
5165                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5167  059f 721b525d      	bres	21085,#5
5168  05a3               L3062:
5169                     ; 1598 }
5172  05a3 81            	ret
5217                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5217                     ; 1614 {
5218                     	switch	.text
5219  05a4               _TIM1_CCxCmd:
5221  05a4 89            	pushw	x
5222       00000000      OFST:	set	0
5225                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5227                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5229                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
5231  05a5 9e            	ld	a,xh
5232  05a6 4d            	tnz	a
5233  05a7 2610          	jrne	L7262
5234                     ; 1622         if (NewState != DISABLE)
5236  05a9 9f            	ld	a,xl
5237  05aa 4d            	tnz	a
5238  05ab 2706          	jreq	L1362
5239                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5241  05ad 7210525c      	bset	21084,#0
5243  05b1 2040          	jra	L5362
5244  05b3               L1362:
5245                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5247  05b3 7211525c      	bres	21084,#0
5248  05b7 203a          	jra	L5362
5249  05b9               L7262:
5250                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
5252  05b9 7b01          	ld	a,(OFST+1,sp)
5253  05bb a101          	cp	a,#1
5254  05bd 2610          	jrne	L7362
5255                     ; 1635         if (NewState != DISABLE)
5257  05bf 0d02          	tnz	(OFST+2,sp)
5258  05c1 2706          	jreq	L1462
5259                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5261  05c3 7218525c      	bset	21084,#4
5263  05c7 202a          	jra	L5362
5264  05c9               L1462:
5265                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5267  05c9 7219525c      	bres	21084,#4
5268  05cd 2024          	jra	L5362
5269  05cf               L7362:
5270                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
5272  05cf 7b01          	ld	a,(OFST+1,sp)
5273  05d1 a102          	cp	a,#2
5274  05d3 2610          	jrne	L7462
5275                     ; 1647         if (NewState != DISABLE)
5277  05d5 0d02          	tnz	(OFST+2,sp)
5278  05d7 2706          	jreq	L1562
5279                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5281  05d9 7210525d      	bset	21085,#0
5283  05dd 2014          	jra	L5362
5284  05df               L1562:
5285                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5287  05df 7211525d      	bres	21085,#0
5288  05e3 200e          	jra	L5362
5289  05e5               L7462:
5290                     ; 1659         if (NewState != DISABLE)
5292  05e5 0d02          	tnz	(OFST+2,sp)
5293  05e7 2706          	jreq	L7562
5294                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5296  05e9 7218525d      	bset	21085,#4
5298  05ed 2004          	jra	L5362
5299  05ef               L7562:
5300                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5302  05ef 7219525d      	bres	21085,#4
5303  05f3               L5362:
5304                     ; 1668 }
5307  05f3 85            	popw	x
5308  05f4 81            	ret
5353                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5353                     ; 1682 {
5354                     	switch	.text
5355  05f5               _TIM1_CCxNCmd:
5357  05f5 89            	pushw	x
5358       00000000      OFST:	set	0
5361                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5363                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5365                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
5367  05f6 9e            	ld	a,xh
5368  05f7 4d            	tnz	a
5369  05f8 2610          	jrne	L5072
5370                     ; 1690         if (NewState != DISABLE)
5372  05fa 9f            	ld	a,xl
5373  05fb 4d            	tnz	a
5374  05fc 2706          	jreq	L7072
5375                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5377  05fe 7214525c      	bset	21084,#2
5379  0602 202a          	jra	L3172
5380  0604               L7072:
5381                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5383  0604 7215525c      	bres	21084,#2
5384  0608 2024          	jra	L3172
5385  060a               L5072:
5386                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
5388  060a 7b01          	ld	a,(OFST+1,sp)
5389  060c a101          	cp	a,#1
5390  060e 2610          	jrne	L5172
5391                     ; 1702         if (NewState != DISABLE)
5393  0610 0d02          	tnz	(OFST+2,sp)
5394  0612 2706          	jreq	L7172
5395                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5397  0614 721c525c      	bset	21084,#6
5399  0618 2014          	jra	L3172
5400  061a               L7172:
5401                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5403  061a 721d525c      	bres	21084,#6
5404  061e 200e          	jra	L3172
5405  0620               L5172:
5406                     ; 1714         if (NewState != DISABLE)
5408  0620 0d02          	tnz	(OFST+2,sp)
5409  0622 2706          	jreq	L5272
5410                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5412  0624 7214525d      	bset	21085,#2
5414  0628 2004          	jra	L3172
5415  062a               L5272:
5416                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5418  062a 7215525d      	bres	21085,#2
5419  062e               L3172:
5420                     ; 1723 }
5423  062e 85            	popw	x
5424  062f 81            	ret
5469                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5469                     ; 1748 {
5470                     	switch	.text
5471  0630               _TIM1_SelectOCxM:
5473  0630 89            	pushw	x
5474       00000000      OFST:	set	0
5477                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5479                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5481                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
5483  0631 9e            	ld	a,xh
5484  0632 4d            	tnz	a
5485  0633 2610          	jrne	L3572
5486                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5488  0635 7211525c      	bres	21084,#0
5489                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5489                     ; 1760                                 | (uint8_t)TIM1_OCMode);
5491  0639 c65258        	ld	a,21080
5492  063c a48f          	and	a,#143
5493  063e 1a02          	or	a,(OFST+2,sp)
5494  0640 c75258        	ld	21080,a
5496  0643 203a          	jra	L5572
5497  0645               L3572:
5498                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
5500  0645 7b01          	ld	a,(OFST+1,sp)
5501  0647 a101          	cp	a,#1
5502  0649 2610          	jrne	L7572
5503                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5505  064b 7219525c      	bres	21084,#4
5506                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5506                     ; 1769                                 | (uint8_t)TIM1_OCMode);
5508  064f c65259        	ld	a,21081
5509  0652 a48f          	and	a,#143
5510  0654 1a02          	or	a,(OFST+2,sp)
5511  0656 c75259        	ld	21081,a
5513  0659 2024          	jra	L5572
5514  065b               L7572:
5515                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
5517  065b 7b01          	ld	a,(OFST+1,sp)
5518  065d a102          	cp	a,#2
5519  065f 2610          	jrne	L3672
5520                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5522  0661 7211525d      	bres	21085,#0
5523                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5523                     ; 1778                                 | (uint8_t)TIM1_OCMode);
5525  0665 c6525a        	ld	a,21082
5526  0668 a48f          	and	a,#143
5527  066a 1a02          	or	a,(OFST+2,sp)
5528  066c c7525a        	ld	21082,a
5530  066f 200e          	jra	L5572
5531  0671               L3672:
5532                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5534  0671 7219525d      	bres	21085,#4
5535                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5535                     ; 1787                                 | (uint8_t)TIM1_OCMode);
5537  0675 c6525b        	ld	a,21083
5538  0678 a48f          	and	a,#143
5539  067a 1a02          	or	a,(OFST+2,sp)
5540  067c c7525b        	ld	21083,a
5541  067f               L5572:
5542                     ; 1789 }
5545  067f 85            	popw	x
5546  0680 81            	ret
5580                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
5580                     ; 1799 {
5581                     	switch	.text
5582  0681               _TIM1_SetCounter:
5586                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
5588  0681 9e            	ld	a,xh
5589  0682 c7525e        	ld	21086,a
5590                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
5592  0685 9f            	ld	a,xl
5593  0686 c7525f        	ld	21087,a
5594                     ; 1804 }
5597  0689 81            	ret
5631                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
5631                     ; 1814 {
5632                     	switch	.text
5633  068a               _TIM1_SetAutoreload:
5637                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5639  068a 9e            	ld	a,xh
5640  068b c75262        	ld	21090,a
5641                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
5643  068e 9f            	ld	a,xl
5644  068f c75263        	ld	21091,a
5645                     ; 1820 }
5648  0692 81            	ret
5682                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
5682                     ; 1830 {
5683                     	switch	.text
5684  0693               _TIM1_SetCompare1:
5688                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5690  0693 9e            	ld	a,xh
5691  0694 c75265        	ld	21093,a
5692                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
5694  0697 9f            	ld	a,xl
5695  0698 c75266        	ld	21094,a
5696                     ; 1835 }
5699  069b 81            	ret
5733                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
5733                     ; 1845 {
5734                     	switch	.text
5735  069c               _TIM1_SetCompare2:
5739                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5741  069c 9e            	ld	a,xh
5742  069d c75267        	ld	21095,a
5743                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
5745  06a0 9f            	ld	a,xl
5746  06a1 c75268        	ld	21096,a
5747                     ; 1850 }
5750  06a4 81            	ret
5784                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
5784                     ; 1860 {
5785                     	switch	.text
5786  06a5               _TIM1_SetCompare3:
5790                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5792  06a5 9e            	ld	a,xh
5793  06a6 c75269        	ld	21097,a
5794                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
5796  06a9 9f            	ld	a,xl
5797  06aa c7526a        	ld	21098,a
5798                     ; 1865 }
5801  06ad 81            	ret
5835                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
5835                     ; 1875 {
5836                     	switch	.text
5837  06ae               _TIM1_SetCompare4:
5841                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5843  06ae 9e            	ld	a,xh
5844  06af c7526b        	ld	21099,a
5845                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
5847  06b2 9f            	ld	a,xl
5848  06b3 c7526c        	ld	21100,a
5849                     ; 1879 }
5852  06b6 81            	ret
5888                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5888                     ; 1893 {
5889                     	switch	.text
5890  06b7               _TIM1_SetIC1Prescaler:
5892  06b7 88            	push	a
5893       00000000      OFST:	set	0
5896                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5898                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5898                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
5900  06b8 c65258        	ld	a,21080
5901  06bb a4f3          	and	a,#243
5902  06bd 1a01          	or	a,(OFST+1,sp)
5903  06bf c75258        	ld	21080,a
5904                     ; 1901 }
5907  06c2 84            	pop	a
5908  06c3 81            	ret
5944                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5944                     ; 1914 {
5945                     	switch	.text
5946  06c4               _TIM1_SetIC2Prescaler:
5948  06c4 88            	push	a
5949       00000000      OFST:	set	0
5952                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5954                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5954                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
5956  06c5 c65259        	ld	a,21081
5957  06c8 a4f3          	and	a,#243
5958  06ca 1a01          	or	a,(OFST+1,sp)
5959  06cc c75259        	ld	21081,a
5960                     ; 1922 }
5963  06cf 84            	pop	a
5964  06d0 81            	ret
6000                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6000                     ; 1936 {
6001                     	switch	.text
6002  06d1               _TIM1_SetIC3Prescaler:
6004  06d1 88            	push	a
6005       00000000      OFST:	set	0
6008                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6010                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
6010                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
6012  06d2 c6525a        	ld	a,21082
6013  06d5 a4f3          	and	a,#243
6014  06d7 1a01          	or	a,(OFST+1,sp)
6015  06d9 c7525a        	ld	21082,a
6016                     ; 1944 }
6019  06dc 84            	pop	a
6020  06dd 81            	ret
6056                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6056                     ; 1957 {
6057                     	switch	.text
6058  06de               _TIM1_SetIC4Prescaler:
6060  06de 88            	push	a
6061       00000000      OFST:	set	0
6064                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6066                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
6066                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
6068  06df c6525b        	ld	a,21083
6069  06e2 a4f3          	and	a,#243
6070  06e4 1a01          	or	a,(OFST+1,sp)
6071  06e6 c7525b        	ld	21083,a
6072                     ; 1965 }
6075  06e9 84            	pop	a
6076  06ea 81            	ret
6128                     ; 1972 uint16_t TIM1_GetCapture1(void)
6128                     ; 1973 {
6129                     	switch	.text
6130  06eb               _TIM1_GetCapture1:
6132  06eb 5204          	subw	sp,#4
6133       00000004      OFST:	set	4
6136                     ; 1976     uint16_t tmpccr1 = 0;
6138                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
6142                     ; 1979     tmpccr1h = TIM1->CCR1H;
6144  06ed c65265        	ld	a,21093
6145  06f0 6b02          	ld	(OFST-2,sp),a
6146                     ; 1980     tmpccr1l = TIM1->CCR1L;
6148  06f2 c65266        	ld	a,21094
6149  06f5 6b01          	ld	(OFST-3,sp),a
6150                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
6152  06f7 7b01          	ld	a,(OFST-3,sp)
6153  06f9 5f            	clrw	x
6154  06fa 97            	ld	xl,a
6155  06fb 1f03          	ldw	(OFST-1,sp),x
6156                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6158  06fd 7b02          	ld	a,(OFST-2,sp)
6159  06ff 5f            	clrw	x
6160  0700 97            	ld	xl,a
6161  0701 4f            	clr	a
6162  0702 02            	rlwa	x,a
6163  0703 01            	rrwa	x,a
6164  0704 1a04          	or	a,(OFST+0,sp)
6165  0706 01            	rrwa	x,a
6166  0707 1a03          	or	a,(OFST-1,sp)
6167  0709 01            	rrwa	x,a
6168  070a 1f03          	ldw	(OFST-1,sp),x
6169                     ; 1985     return (uint16_t)tmpccr1;
6171  070c 1e03          	ldw	x,(OFST-1,sp)
6174  070e 5b04          	addw	sp,#4
6175  0710 81            	ret
6227                     ; 1993 uint16_t TIM1_GetCapture2(void)
6227                     ; 1994 {
6228                     	switch	.text
6229  0711               _TIM1_GetCapture2:
6231  0711 5204          	subw	sp,#4
6232       00000004      OFST:	set	4
6235                     ; 1997     uint16_t tmpccr2 = 0;
6237                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
6241                     ; 2000     tmpccr2h = TIM1->CCR2H;
6243  0713 c65267        	ld	a,21095
6244  0716 6b02          	ld	(OFST-2,sp),a
6245                     ; 2001     tmpccr2l = TIM1->CCR2L;
6247  0718 c65268        	ld	a,21096
6248  071b 6b01          	ld	(OFST-3,sp),a
6249                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
6251  071d 7b01          	ld	a,(OFST-3,sp)
6252  071f 5f            	clrw	x
6253  0720 97            	ld	xl,a
6254  0721 1f03          	ldw	(OFST-1,sp),x
6255                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6257  0723 7b02          	ld	a,(OFST-2,sp)
6258  0725 5f            	clrw	x
6259  0726 97            	ld	xl,a
6260  0727 4f            	clr	a
6261  0728 02            	rlwa	x,a
6262  0729 01            	rrwa	x,a
6263  072a 1a04          	or	a,(OFST+0,sp)
6264  072c 01            	rrwa	x,a
6265  072d 1a03          	or	a,(OFST-1,sp)
6266  072f 01            	rrwa	x,a
6267  0730 1f03          	ldw	(OFST-1,sp),x
6268                     ; 2006     return (uint16_t)tmpccr2;
6270  0732 1e03          	ldw	x,(OFST-1,sp)
6273  0734 5b04          	addw	sp,#4
6274  0736 81            	ret
6326                     ; 2014 uint16_t TIM1_GetCapture3(void)
6326                     ; 2015 {
6327                     	switch	.text
6328  0737               _TIM1_GetCapture3:
6330  0737 5204          	subw	sp,#4
6331       00000004      OFST:	set	4
6334                     ; 2017     uint16_t tmpccr3 = 0;
6336                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
6340                     ; 2020     tmpccr3h = TIM1->CCR3H;
6342  0739 c65269        	ld	a,21097
6343  073c 6b02          	ld	(OFST-2,sp),a
6344                     ; 2021     tmpccr3l = TIM1->CCR3L;
6346  073e c6526a        	ld	a,21098
6347  0741 6b01          	ld	(OFST-3,sp),a
6348                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
6350  0743 7b01          	ld	a,(OFST-3,sp)
6351  0745 5f            	clrw	x
6352  0746 97            	ld	xl,a
6353  0747 1f03          	ldw	(OFST-1,sp),x
6354                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6356  0749 7b02          	ld	a,(OFST-2,sp)
6357  074b 5f            	clrw	x
6358  074c 97            	ld	xl,a
6359  074d 4f            	clr	a
6360  074e 02            	rlwa	x,a
6361  074f 01            	rrwa	x,a
6362  0750 1a04          	or	a,(OFST+0,sp)
6363  0752 01            	rrwa	x,a
6364  0753 1a03          	or	a,(OFST-1,sp)
6365  0755 01            	rrwa	x,a
6366  0756 1f03          	ldw	(OFST-1,sp),x
6367                     ; 2026     return (uint16_t)tmpccr3;
6369  0758 1e03          	ldw	x,(OFST-1,sp)
6372  075a 5b04          	addw	sp,#4
6373  075c 81            	ret
6425                     ; 2034 uint16_t TIM1_GetCapture4(void)
6425                     ; 2035 {
6426                     	switch	.text
6427  075d               _TIM1_GetCapture4:
6429  075d 5204          	subw	sp,#4
6430       00000004      OFST:	set	4
6433                     ; 2037     uint16_t tmpccr4 = 0;
6435                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
6439                     ; 2040     tmpccr4h = TIM1->CCR4H;
6441  075f c6526b        	ld	a,21099
6442  0762 6b02          	ld	(OFST-2,sp),a
6443                     ; 2041     tmpccr4l = TIM1->CCR4L;
6445  0764 c6526c        	ld	a,21100
6446  0767 6b01          	ld	(OFST-3,sp),a
6447                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
6449  0769 7b01          	ld	a,(OFST-3,sp)
6450  076b 5f            	clrw	x
6451  076c 97            	ld	xl,a
6452  076d 1f03          	ldw	(OFST-1,sp),x
6453                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6455  076f 7b02          	ld	a,(OFST-2,sp)
6456  0771 5f            	clrw	x
6457  0772 97            	ld	xl,a
6458  0773 4f            	clr	a
6459  0774 02            	rlwa	x,a
6460  0775 01            	rrwa	x,a
6461  0776 1a04          	or	a,(OFST+0,sp)
6462  0778 01            	rrwa	x,a
6463  0779 1a03          	or	a,(OFST-1,sp)
6464  077b 01            	rrwa	x,a
6465  077c 1f03          	ldw	(OFST-1,sp),x
6466                     ; 2046     return (uint16_t)tmpccr4;
6468  077e 1e03          	ldw	x,(OFST-1,sp)
6471  0780 5b04          	addw	sp,#4
6472  0782 81            	ret
6506                     ; 2054 uint16_t TIM1_GetCounter(void)
6506                     ; 2055 {
6507                     	switch	.text
6508  0783               _TIM1_GetCounter:
6510  0783 89            	pushw	x
6511       00000002      OFST:	set	2
6514                     ; 2056   uint16_t tmpcntr = 0;
6516                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6518  0784 c6525e        	ld	a,21086
6519  0787 5f            	clrw	x
6520  0788 97            	ld	xl,a
6521  0789 4f            	clr	a
6522  078a 02            	rlwa	x,a
6523  078b 1f01          	ldw	(OFST-1,sp),x
6524                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6526  078d c6525f        	ld	a,21087
6527  0790 5f            	clrw	x
6528  0791 97            	ld	xl,a
6529  0792 01            	rrwa	x,a
6530  0793 1a02          	or	a,(OFST+0,sp)
6531  0795 01            	rrwa	x,a
6532  0796 1a01          	or	a,(OFST-1,sp)
6533  0798 01            	rrwa	x,a
6536  0799 5b02          	addw	sp,#2
6537  079b 81            	ret
6571                     ; 2069 uint16_t TIM1_GetPrescaler(void)
6571                     ; 2070 {
6572                     	switch	.text
6573  079c               _TIM1_GetPrescaler:
6575  079c 89            	pushw	x
6576       00000002      OFST:	set	2
6579                     ; 2071    uint16_t temp = 0;
6581                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
6583  079d c65260        	ld	a,21088
6584  07a0 5f            	clrw	x
6585  07a1 97            	ld	xl,a
6586  07a2 4f            	clr	a
6587  07a3 02            	rlwa	x,a
6588  07a4 1f01          	ldw	(OFST-1,sp),x
6589                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6591  07a6 c65261        	ld	a,21089
6592  07a9 5f            	clrw	x
6593  07aa 97            	ld	xl,a
6594  07ab 01            	rrwa	x,a
6595  07ac 1a02          	or	a,(OFST+0,sp)
6596  07ae 01            	rrwa	x,a
6597  07af 1a01          	or	a,(OFST-1,sp)
6598  07b1 01            	rrwa	x,a
6601  07b2 5b02          	addw	sp,#2
6602  07b4 81            	ret
6776                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6776                     ; 2098 {
6777                     	switch	.text
6778  07b5               _TIM1_GetFlagStatus:
6780  07b5 89            	pushw	x
6781  07b6 89            	pushw	x
6782       00000002      OFST:	set	2
6785                     ; 2099     FlagStatus bitstatus = RESET;
6787                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6791                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6793                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6795  07b7 9f            	ld	a,xl
6796  07b8 c45255        	and	a,21077
6797  07bb 6b01          	ld	(OFST-1,sp),a
6798                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6800  07bd 7b03          	ld	a,(OFST+1,sp)
6801  07bf 6b02          	ld	(OFST+0,sp),a
6802                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6804  07c1 c65256        	ld	a,21078
6805  07c4 1402          	and	a,(OFST+0,sp)
6806  07c6 1a01          	or	a,(OFST-1,sp)
6807  07c8 2706          	jreq	L5643
6808                     ; 2110         bitstatus = SET;
6810  07ca a601          	ld	a,#1
6811  07cc 6b02          	ld	(OFST+0,sp),a
6813  07ce 2002          	jra	L7643
6814  07d0               L5643:
6815                     ; 2114         bitstatus = RESET;
6817  07d0 0f02          	clr	(OFST+0,sp)
6818  07d2               L7643:
6819                     ; 2116     return (FlagStatus)(bitstatus);
6821  07d2 7b02          	ld	a,(OFST+0,sp)
6824  07d4 5b04          	addw	sp,#4
6825  07d6 81            	ret
6860                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6860                     ; 2138 {
6861                     	switch	.text
6862  07d7               _TIM1_ClearFlag:
6864  07d7 89            	pushw	x
6865       00000000      OFST:	set	0
6868                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6870                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6872  07d8 9f            	ld	a,xl
6873  07d9 43            	cpl	a
6874  07da c75255        	ld	21077,a
6875                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6875                     ; 2145                           (uint8_t)0x1E);
6877  07dd 7b01          	ld	a,(OFST+1,sp)
6878  07df 43            	cpl	a
6879  07e0 a41e          	and	a,#30
6880  07e2 c75256        	ld	21078,a
6881                     ; 2146 }
6884  07e5 85            	popw	x
6885  07e6 81            	ret
6949                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6949                     ; 2163 {
6950                     	switch	.text
6951  07e7               _TIM1_GetITStatus:
6953  07e7 88            	push	a
6954  07e8 89            	pushw	x
6955       00000002      OFST:	set	2
6958                     ; 2164     ITStatus bitstatus = RESET;
6960                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
6964                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
6966                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
6968  07e9 c45255        	and	a,21077
6969  07ec 6b01          	ld	(OFST-1,sp),a
6970                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
6972  07ee c65254        	ld	a,21076
6973  07f1 1403          	and	a,(OFST+1,sp)
6974  07f3 6b02          	ld	(OFST+0,sp),a
6975                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
6977  07f5 0d01          	tnz	(OFST-1,sp)
6978  07f7 270a          	jreq	L1453
6980  07f9 0d02          	tnz	(OFST+0,sp)
6981  07fb 2706          	jreq	L1453
6982                     ; 2176         bitstatus = SET;
6984  07fd a601          	ld	a,#1
6985  07ff 6b02          	ld	(OFST+0,sp),a
6987  0801 2002          	jra	L3453
6988  0803               L1453:
6989                     ; 2180         bitstatus = RESET;
6991  0803 0f02          	clr	(OFST+0,sp)
6992  0805               L3453:
6993                     ; 2182     return (ITStatus)(bitstatus);
6995  0805 7b02          	ld	a,(OFST+0,sp)
6998  0807 5b03          	addw	sp,#3
6999  0809 81            	ret
7035                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7035                     ; 2200 {
7036                     	switch	.text
7037  080a               _TIM1_ClearITPendingBit:
7041                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
7043                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
7045  080a 43            	cpl	a
7046  080b c75255        	ld	21077,a
7047                     ; 2206 }
7050  080e 81            	ret
7102                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
7102                     ; 2225                        uint8_t TIM1_ICSelection,
7102                     ; 2226                        uint8_t TIM1_ICFilter)
7102                     ; 2227 {
7103                     	switch	.text
7104  080f               L3_TI1_Config:
7106  080f 89            	pushw	x
7107  0810 88            	push	a
7108       00000001      OFST:	set	1
7111                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7113  0811 7211525c      	bres	21084,#0
7114                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
7114                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7116  0815 7b06          	ld	a,(OFST+5,sp)
7117  0817 97            	ld	xl,a
7118  0818 a610          	ld	a,#16
7119  081a 42            	mul	x,a
7120  081b 9f            	ld	a,xl
7121  081c 1a03          	or	a,(OFST+2,sp)
7122  081e 6b01          	ld	(OFST+0,sp),a
7123  0820 c65258        	ld	a,21080
7124  0823 a40c          	and	a,#12
7125  0825 1a01          	or	a,(OFST+0,sp)
7126  0827 c75258        	ld	21080,a
7127                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7129  082a 0d02          	tnz	(OFST+1,sp)
7130  082c 2706          	jreq	L1163
7131                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
7133  082e 7212525c      	bset	21084,#1
7135  0832 2004          	jra	L3163
7136  0834               L1163:
7137                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7139  0834 7213525c      	bres	21084,#1
7140  0838               L3163:
7141                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7143  0838 7210525c      	bset	21084,#0
7144                     ; 2248 }
7147  083c 5b03          	addw	sp,#3
7148  083e 81            	ret
7200                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
7200                     ; 2267                        uint8_t TIM1_ICSelection,
7200                     ; 2268                        uint8_t TIM1_ICFilter)
7200                     ; 2269 {
7201                     	switch	.text
7202  083f               L5_TI2_Config:
7204  083f 89            	pushw	x
7205  0840 88            	push	a
7206       00000001      OFST:	set	1
7209                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7211  0841 7219525c      	bres	21084,#4
7212                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7212                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7214  0845 7b06          	ld	a,(OFST+5,sp)
7215  0847 97            	ld	xl,a
7216  0848 a610          	ld	a,#16
7217  084a 42            	mul	x,a
7218  084b 9f            	ld	a,xl
7219  084c 1a03          	or	a,(OFST+2,sp)
7220  084e 6b01          	ld	(OFST+0,sp),a
7221  0850 c65259        	ld	a,21081
7222  0853 a40c          	and	a,#12
7223  0855 1a01          	or	a,(OFST+0,sp)
7224  0857 c75259        	ld	21081,a
7225                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7227  085a 0d02          	tnz	(OFST+1,sp)
7228  085c 2706          	jreq	L3463
7229                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7231  085e 721a525c      	bset	21084,#5
7233  0862 2004          	jra	L5463
7234  0864               L3463:
7235                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7237  0864 721b525c      	bres	21084,#5
7238  0868               L5463:
7239                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7241  0868 7218525c      	bset	21084,#4
7242                     ; 2287 }
7245  086c 5b03          	addw	sp,#3
7246  086e 81            	ret
7298                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
7298                     ; 2306                        uint8_t TIM1_ICSelection,
7298                     ; 2307                        uint8_t TIM1_ICFilter)
7298                     ; 2308 {
7299                     	switch	.text
7300  086f               L7_TI3_Config:
7302  086f 89            	pushw	x
7303  0870 88            	push	a
7304       00000001      OFST:	set	1
7307                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7309  0871 7211525d      	bres	21085,#0
7310                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7310                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7312  0875 7b06          	ld	a,(OFST+5,sp)
7313  0877 97            	ld	xl,a
7314  0878 a610          	ld	a,#16
7315  087a 42            	mul	x,a
7316  087b 9f            	ld	a,xl
7317  087c 1a03          	or	a,(OFST+2,sp)
7318  087e 6b01          	ld	(OFST+0,sp),a
7319  0880 c6525a        	ld	a,21082
7320  0883 a40c          	and	a,#12
7321  0885 1a01          	or	a,(OFST+0,sp)
7322  0887 c7525a        	ld	21082,a
7323                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7325  088a 0d02          	tnz	(OFST+1,sp)
7326  088c 2706          	jreq	L5763
7327                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7329  088e 7212525d      	bset	21085,#1
7331  0892 2004          	jra	L7763
7332  0894               L5763:
7333                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7335  0894 7213525d      	bres	21085,#1
7336  0898               L7763:
7337                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7339  0898 7210525d      	bset	21085,#0
7340                     ; 2327 }
7343  089c 5b03          	addw	sp,#3
7344  089e 81            	ret
7396                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
7396                     ; 2347                        uint8_t TIM1_ICSelection,
7396                     ; 2348                        uint8_t TIM1_ICFilter)
7396                     ; 2349 {
7397                     	switch	.text
7398  089f               L11_TI4_Config:
7400  089f 89            	pushw	x
7401  08a0 88            	push	a
7402       00000001      OFST:	set	1
7405                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7407  08a1 7219525d      	bres	21085,#4
7408                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7408                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7410  08a5 7b06          	ld	a,(OFST+5,sp)
7411  08a7 97            	ld	xl,a
7412  08a8 a610          	ld	a,#16
7413  08aa 42            	mul	x,a
7414  08ab 9f            	ld	a,xl
7415  08ac 1a03          	or	a,(OFST+2,sp)
7416  08ae 6b01          	ld	(OFST+0,sp),a
7417  08b0 c6525b        	ld	a,21083
7418  08b3 a40c          	and	a,#12
7419  08b5 1a01          	or	a,(OFST+0,sp)
7420  08b7 c7525b        	ld	21083,a
7421                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7423  08ba 0d02          	tnz	(OFST+1,sp)
7424  08bc 2706          	jreq	L7273
7425                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7427  08be 721a525d      	bset	21085,#5
7429  08c2 2004          	jra	L1373
7430  08c4               L7273:
7431                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7433  08c4 721b525d      	bres	21085,#5
7434  08c8               L1373:
7435                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7437  08c8 7218525d      	bset	21085,#4
7438                     ; 2370 }
7441  08cc 5b03          	addw	sp,#3
7442  08ce 81            	ret
7455                     	xdef	_TIM1_ClearITPendingBit
7456                     	xdef	_TIM1_GetITStatus
7457                     	xdef	_TIM1_ClearFlag
7458                     	xdef	_TIM1_GetFlagStatus
7459                     	xdef	_TIM1_GetPrescaler
7460                     	xdef	_TIM1_GetCounter
7461                     	xdef	_TIM1_GetCapture4
7462                     	xdef	_TIM1_GetCapture3
7463                     	xdef	_TIM1_GetCapture2
7464                     	xdef	_TIM1_GetCapture1
7465                     	xdef	_TIM1_SetIC4Prescaler
7466                     	xdef	_TIM1_SetIC3Prescaler
7467                     	xdef	_TIM1_SetIC2Prescaler
7468                     	xdef	_TIM1_SetIC1Prescaler
7469                     	xdef	_TIM1_SetCompare4
7470                     	xdef	_TIM1_SetCompare3
7471                     	xdef	_TIM1_SetCompare2
7472                     	xdef	_TIM1_SetCompare1
7473                     	xdef	_TIM1_SetAutoreload
7474                     	xdef	_TIM1_SetCounter
7475                     	xdef	_TIM1_SelectOCxM
7476                     	xdef	_TIM1_CCxNCmd
7477                     	xdef	_TIM1_CCxCmd
7478                     	xdef	_TIM1_OC4PolarityConfig
7479                     	xdef	_TIM1_OC3NPolarityConfig
7480                     	xdef	_TIM1_OC3PolarityConfig
7481                     	xdef	_TIM1_OC2NPolarityConfig
7482                     	xdef	_TIM1_OC2PolarityConfig
7483                     	xdef	_TIM1_OC1NPolarityConfig
7484                     	xdef	_TIM1_OC1PolarityConfig
7485                     	xdef	_TIM1_GenerateEvent
7486                     	xdef	_TIM1_OC4FastConfig
7487                     	xdef	_TIM1_OC3FastConfig
7488                     	xdef	_TIM1_OC2FastConfig
7489                     	xdef	_TIM1_OC1FastConfig
7490                     	xdef	_TIM1_OC4PreloadConfig
7491                     	xdef	_TIM1_OC3PreloadConfig
7492                     	xdef	_TIM1_OC2PreloadConfig
7493                     	xdef	_TIM1_OC1PreloadConfig
7494                     	xdef	_TIM1_CCPreloadControl
7495                     	xdef	_TIM1_SelectCOM
7496                     	xdef	_TIM1_ARRPreloadConfig
7497                     	xdef	_TIM1_ForcedOC4Config
7498                     	xdef	_TIM1_ForcedOC3Config
7499                     	xdef	_TIM1_ForcedOC2Config
7500                     	xdef	_TIM1_ForcedOC1Config
7501                     	xdef	_TIM1_CounterModeConfig
7502                     	xdef	_TIM1_PrescalerConfig
7503                     	xdef	_TIM1_EncoderInterfaceConfig
7504                     	xdef	_TIM1_SelectMasterSlaveMode
7505                     	xdef	_TIM1_SelectSlaveMode
7506                     	xdef	_TIM1_SelectOutputTrigger
7507                     	xdef	_TIM1_SelectOnePulseMode
7508                     	xdef	_TIM1_SelectHallSensor
7509                     	xdef	_TIM1_UpdateRequestConfig
7510                     	xdef	_TIM1_UpdateDisableConfig
7511                     	xdef	_TIM1_SelectInputTrigger
7512                     	xdef	_TIM1_TIxExternalClockConfig
7513                     	xdef	_TIM1_ETRConfig
7514                     	xdef	_TIM1_ETRClockMode2Config
7515                     	xdef	_TIM1_ETRClockMode1Config
7516                     	xdef	_TIM1_InternalClockConfig
7517                     	xdef	_TIM1_ITConfig
7518                     	xdef	_TIM1_CtrlPWMOutputs
7519                     	xdef	_TIM1_Cmd
7520                     	xdef	_TIM1_PWMIConfig
7521                     	xdef	_TIM1_ICInit
7522                     	xdef	_TIM1_BDTRConfig
7523                     	xdef	_TIM1_OC4Init
7524                     	xdef	_TIM1_OC3Init
7525                     	xdef	_TIM1_OC2Init
7526                     	xdef	_TIM1_OC1Init
7527                     	xdef	_TIM1_TimeBaseInit
7528                     	xdef	_TIM1_DeInit
7547                     	end
