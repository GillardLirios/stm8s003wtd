   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  74                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  74                     ; 82 {
  76                     	switch	.text
  77  0000               _FLASH_Unlock:
  81                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  83                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
  85  0000 a1fd          	cp	a,#253
  86  0002 260a          	jrne	L73
  87                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
  89  0004 35565062      	mov	20578,#86
  90                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
  92  0008 35ae5062      	mov	20578,#174
  94  000c 2008          	jra	L14
  95  000e               L73:
  96                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  98  000e 35ae5064      	mov	20580,#174
  99                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 101  0012 35565064      	mov	20580,#86
 102  0016               L14:
 103                     ; 98 }
 106  0016 81            	ret
 141                     ; 106 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 141                     ; 107 {
 142                     	switch	.text
 143  0017               _FLASH_Lock:
 147                     ; 109     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 149                     ; 112   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 151  0017 c4505f        	and	a,20575
 152  001a c7505f        	ld	20575,a
 153                     ; 113 }
 156  001d 81            	ret
 179                     ; 120 void FLASH_DeInit(void)
 179                     ; 121 {
 180                     	switch	.text
 181  001e               _FLASH_DeInit:
 185                     ; 122     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 187  001e 725f505a      	clr	20570
 188                     ; 123     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 190  0022 725f505b      	clr	20571
 191                     ; 124     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 193  0026 35ff505c      	mov	20572,#255
 194                     ; 125     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 196  002a 7217505f      	bres	20575,#3
 197                     ; 126     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 199  002e 7213505f      	bres	20575,#1
 200                     ; 127     (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 202  0032 c6505f        	ld	a,20575
 203                     ; 128 }
 206  0035 81            	ret
 261                     ; 136 void FLASH_ITConfig(FunctionalState NewState)
 261                     ; 137 {
 262                     	switch	.text
 263  0036               _FLASH_ITConfig:
 267                     ; 139   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 269                     ; 141     if (NewState != DISABLE)
 271  0036 4d            	tnz	a
 272  0037 2706          	jreq	L711
 273                     ; 143         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 275  0039 7212505a      	bset	20570,#1
 277  003d 2004          	jra	L121
 278  003f               L711:
 279                     ; 147         FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 281  003f 7213505a      	bres	20570,#1
 282  0043               L121:
 283                     ; 149 }
 286  0043 81            	ret
 320                     ; 158 void FLASH_EraseByte(uint32_t Address)
 320                     ; 159 {
 321                     	switch	.text
 322  0044               _FLASH_EraseByte:
 324       00000000      OFST:	set	0
 327                     ; 161     assert_param(IS_FLASH_ADDRESS_OK(Address));
 329                     ; 164    *(PointerAttr uint8_t*) (uint16_t)Address = FLASH_CLEAR_BYTE; 
 331  0044 1e05          	ldw	x,(OFST+5,sp)
 332  0046 7f            	clr	(x)
 333                     ; 166 }
 336  0047 81            	ret
 379                     ; 176 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 379                     ; 177 {
 380                     	switch	.text
 381  0048               _FLASH_ProgramByte:
 383       00000000      OFST:	set	0
 386                     ; 179     assert_param(IS_FLASH_ADDRESS_OK(Address));
 388                     ; 180     *(PointerAttr uint8_t*) (uint16_t)Address = Data;
 390  0048 7b07          	ld	a,(OFST+7,sp)
 391  004a 1e05          	ldw	x,(OFST+5,sp)
 392  004c f7            	ld	(x),a
 393                     ; 181 }
 396  004d 81            	ret
 430                     ; 190 uint8_t FLASH_ReadByte(uint32_t Address)
 430                     ; 191 {
 431                     	switch	.text
 432  004e               _FLASH_ReadByte:
 434       00000000      OFST:	set	0
 437                     ; 193     assert_param(IS_FLASH_ADDRESS_OK(Address));
 439                     ; 196     return(*(PointerAttr uint8_t *) (uint16_t)Address); 
 441  004e 1e05          	ldw	x,(OFST+5,sp)
 442  0050 f6            	ld	a,(x)
 445  0051 81            	ret
 488                     ; 207 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 488                     ; 208 {
 489                     	switch	.text
 490  0052               _FLASH_ProgramWord:
 492       00000000      OFST:	set	0
 495                     ; 210     assert_param(IS_FLASH_ADDRESS_OK(Address));
 497                     ; 213     FLASH->CR2 |= FLASH_CR2_WPRG;
 499  0052 721c505b      	bset	20571,#6
 500                     ; 214     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 502  0056 721d505c      	bres	20572,#6
 503                     ; 217     *((PointerAttr uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
 505  005a 7b07          	ld	a,(OFST+7,sp)
 506  005c 1e05          	ldw	x,(OFST+5,sp)
 507  005e f7            	ld	(x),a
 508                     ; 219     *(((PointerAttr uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
 510  005f 7b08          	ld	a,(OFST+8,sp)
 511  0061 1e05          	ldw	x,(OFST+5,sp)
 512  0063 e701          	ld	(1,x),a
 513                     ; 221     *(((PointerAttr uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
 515  0065 7b09          	ld	a,(OFST+9,sp)
 516  0067 1e05          	ldw	x,(OFST+5,sp)
 517  0069 e702          	ld	(2,x),a
 518                     ; 223     *(((PointerAttr uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
 520  006b 7b0a          	ld	a,(OFST+10,sp)
 521  006d 1e05          	ldw	x,(OFST+5,sp)
 522  006f e703          	ld	(3,x),a
 523                     ; 224 }
 526  0071 81            	ret
 571                     ; 232 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 571                     ; 233 {
 572                     	switch	.text
 573  0072               _FLASH_ProgramOptionByte:
 575  0072 89            	pushw	x
 576       00000000      OFST:	set	0
 579                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 581                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 583  0073 721e505b      	bset	20571,#7
 584                     ; 239     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 586  0077 721f505c      	bres	20572,#7
 587                     ; 242     if (Address == 0x4800)
 589  007b a34800        	cpw	x,#18432
 590  007e 2607          	jrne	L542
 591                     ; 245        *((NEAR uint8_t*)Address) = Data;
 593  0080 7b05          	ld	a,(OFST+5,sp)
 594  0082 1e01          	ldw	x,(OFST+1,sp)
 595  0084 f7            	ld	(x),a
 597  0085 200c          	jra	L742
 598  0087               L542:
 599                     ; 250        *((NEAR uint8_t*)Address) = Data;
 601  0087 7b05          	ld	a,(OFST+5,sp)
 602  0089 1e01          	ldw	x,(OFST+1,sp)
 603  008b f7            	ld	(x),a
 604                     ; 251        *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 606  008c 7b05          	ld	a,(OFST+5,sp)
 607  008e 43            	cpl	a
 608  008f 1e01          	ldw	x,(OFST+1,sp)
 609  0091 e701          	ld	(1,x),a
 610  0093               L742:
 611                     ; 253     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 613  0093 a6fd          	ld	a,#253
 614  0095 cd017d        	call	_FLASH_WaitForLastOperation
 616                     ; 256     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 618  0098 721f505b      	bres	20571,#7
 619                     ; 257     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 621  009c 721e505c      	bset	20572,#7
 622                     ; 258 }
 625  00a0 85            	popw	x
 626  00a1 81            	ret
 662                     ; 265 void FLASH_EraseOptionByte(uint16_t Address)
 662                     ; 266 {
 663                     	switch	.text
 664  00a2               _FLASH_EraseOptionByte:
 666  00a2 89            	pushw	x
 667       00000000      OFST:	set	0
 670                     ; 268     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 672                     ; 271     FLASH->CR2 |= FLASH_CR2_OPT;
 674  00a3 721e505b      	bset	20571,#7
 675                     ; 272     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 677  00a7 721f505c      	bres	20572,#7
 678                     ; 275      if (Address == 0x4800)
 680  00ab a34800        	cpw	x,#18432
 681  00ae 2603          	jrne	L762
 682                     ; 278        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 684  00b0 7f            	clr	(x)
 686  00b1 2009          	jra	L172
 687  00b3               L762:
 688                     ; 283        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 690  00b3 1e01          	ldw	x,(OFST+1,sp)
 691  00b5 7f            	clr	(x)
 692                     ; 284        *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 694  00b6 1e01          	ldw	x,(OFST+1,sp)
 695  00b8 a6ff          	ld	a,#255
 696  00ba e701          	ld	(1,x),a
 697  00bc               L172:
 698                     ; 286     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 700  00bc a6fd          	ld	a,#253
 701  00be cd017d        	call	_FLASH_WaitForLastOperation
 703                     ; 289     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 705  00c1 721f505b      	bres	20571,#7
 706                     ; 290     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 708  00c5 721e505c      	bset	20572,#7
 709                     ; 291 }
 712  00c9 85            	popw	x
 713  00ca 81            	ret
 776                     ; 297 uint16_t FLASH_ReadOptionByte(uint16_t Address)
 776                     ; 298 {
 777                     	switch	.text
 778  00cb               _FLASH_ReadOptionByte:
 780  00cb 5204          	subw	sp,#4
 781       00000004      OFST:	set	4
 784                     ; 299     uint8_t value_optbyte, value_optbyte_complement = 0;
 786                     ; 300     uint16_t res_value = 0;
 788                     ; 303     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 790                     ; 306     value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
 792  00cd f6            	ld	a,(x)
 793  00ce 6b02          	ld	(OFST-2,sp),a
 794                     ; 307     value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
 796  00d0 e601          	ld	a,(1,x)
 797  00d2 6b01          	ld	(OFST-3,sp),a
 798                     ; 310     if (Address == 0x4800)	 
 800  00d4 a34800        	cpw	x,#18432
 801  00d7 2608          	jrne	L523
 802                     ; 312         res_value =	 value_optbyte;
 804  00d9 7b02          	ld	a,(OFST-2,sp)
 805  00db 5f            	clrw	x
 806  00dc 97            	ld	xl,a
 807  00dd 1f03          	ldw	(OFST-1,sp),x
 809  00df 2023          	jra	L723
 810  00e1               L523:
 811                     ; 316         if (value_optbyte == (uint8_t)(~value_optbyte_complement))
 813  00e1 7b01          	ld	a,(OFST-3,sp)
 814  00e3 43            	cpl	a
 815  00e4 1102          	cp	a,(OFST-2,sp)
 816  00e6 2617          	jrne	L133
 817                     ; 318             res_value = (uint16_t)((uint16_t)value_optbyte << 8);
 819  00e8 7b02          	ld	a,(OFST-2,sp)
 820  00ea 5f            	clrw	x
 821  00eb 97            	ld	xl,a
 822  00ec 4f            	clr	a
 823  00ed 02            	rlwa	x,a
 824  00ee 1f03          	ldw	(OFST-1,sp),x
 825                     ; 319             res_value = res_value | (uint16_t)value_optbyte_complement;
 827  00f0 7b01          	ld	a,(OFST-3,sp)
 828  00f2 5f            	clrw	x
 829  00f3 97            	ld	xl,a
 830  00f4 01            	rrwa	x,a
 831  00f5 1a04          	or	a,(OFST+0,sp)
 832  00f7 01            	rrwa	x,a
 833  00f8 1a03          	or	a,(OFST-1,sp)
 834  00fa 01            	rrwa	x,a
 835  00fb 1f03          	ldw	(OFST-1,sp),x
 837  00fd 2005          	jra	L723
 838  00ff               L133:
 839                     ; 323             res_value = FLASH_OPTIONBYTE_ERROR;
 841  00ff ae5555        	ldw	x,#21845
 842  0102 1f03          	ldw	(OFST-1,sp),x
 843  0104               L723:
 844                     ; 326     return(res_value);
 846  0104 1e03          	ldw	x,(OFST-1,sp)
 849  0106 5b04          	addw	sp,#4
 850  0108 81            	ret
 924                     ; 335 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
 924                     ; 336 {
 925                     	switch	.text
 926  0109               _FLASH_SetLowPowerMode:
 928  0109 88            	push	a
 929       00000000      OFST:	set	0
 932                     ; 338     assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
 934                     ; 341     FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
 936  010a c6505a        	ld	a,20570
 937  010d a4f3          	and	a,#243
 938  010f c7505a        	ld	20570,a
 939                     ; 344     FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
 941  0112 c6505a        	ld	a,20570
 942  0115 1a01          	or	a,(OFST+1,sp)
 943  0117 c7505a        	ld	20570,a
 944                     ; 345 }
 947  011a 84            	pop	a
 948  011b 81            	ret
1006                     ; 353 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1006                     ; 354 {
1007                     	switch	.text
1008  011c               _FLASH_SetProgrammingTime:
1012                     ; 356     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1014                     ; 358     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1016  011c 7211505a      	bres	20570,#0
1017                     ; 359     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1019  0120 ca505a        	or	a,20570
1020  0123 c7505a        	ld	20570,a
1021                     ; 360 }
1024  0126 81            	ret
1049                     ; 367 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1049                     ; 368 {
1050                     	switch	.text
1051  0127               _FLASH_GetLowPowerMode:
1055                     ; 369     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1057  0127 c6505a        	ld	a,20570
1058  012a a40c          	and	a,#12
1061  012c 81            	ret
1086                     ; 377 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1086                     ; 378 {
1087                     	switch	.text
1088  012d               _FLASH_GetProgrammingTime:
1092                     ; 379     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1094  012d c6505a        	ld	a,20570
1095  0130 a401          	and	a,#1
1098  0132 81            	ret
1132                     ; 387 uint32_t FLASH_GetBootSize(void)
1132                     ; 388 {
1133                     	switch	.text
1134  0133               _FLASH_GetBootSize:
1136  0133 5204          	subw	sp,#4
1137       00000004      OFST:	set	4
1140                     ; 389     uint32_t temp = 0;
1142                     ; 392     temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1144  0135 c6505d        	ld	a,20573
1145  0138 5f            	clrw	x
1146  0139 97            	ld	xl,a
1147  013a 90ae0200      	ldw	y,#512
1148  013e cd0000        	call	c_umul
1150  0141 96            	ldw	x,sp
1151  0142 1c0001        	addw	x,#OFST-3
1152  0145 cd0000        	call	c_rtol
1154                     ; 395     if (FLASH->FPR == 0xFF)
1156  0148 c6505d        	ld	a,20573
1157  014b a1ff          	cp	a,#255
1158  014d 2611          	jrne	L354
1159                     ; 397         temp += 512;
1161  014f ae0200        	ldw	x,#512
1162  0152 bf02          	ldw	c_lreg+2,x
1163  0154 ae0000        	ldw	x,#0
1164  0157 bf00          	ldw	c_lreg,x
1165  0159 96            	ldw	x,sp
1166  015a 1c0001        	addw	x,#OFST-3
1167  015d cd0000        	call	c_lgadd
1169  0160               L354:
1170                     ; 401     return(temp);
1172  0160 96            	ldw	x,sp
1173  0161 1c0001        	addw	x,#OFST-3
1174  0164 cd0000        	call	c_ltor
1178  0167 5b04          	addw	sp,#4
1179  0169 81            	ret
1281                     ; 412 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1281                     ; 413 {
1282                     	switch	.text
1283  016a               _FLASH_GetFlagStatus:
1285  016a 88            	push	a
1286       00000001      OFST:	set	1
1289                     ; 414     FlagStatus status = RESET;
1291                     ; 416     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1293                     ; 419     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1295  016b c4505f        	and	a,20575
1296  016e 2706          	jreq	L325
1297                     ; 421         status = SET; /* FLASH_FLAG is set */
1299  0170 a601          	ld	a,#1
1300  0172 6b01          	ld	(OFST+0,sp),a
1302  0174 2002          	jra	L525
1303  0176               L325:
1304                     ; 425         status = RESET; /* FLASH_FLAG is reset*/
1306  0176 0f01          	clr	(OFST+0,sp)
1307  0178               L525:
1308                     ; 429     return status;
1310  0178 7b01          	ld	a,(OFST+0,sp)
1313  017a 5b01          	addw	sp,#1
1314  017c 81            	ret
1399                     ; 531 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1399                     ; 532 {
1400                     	switch	.text
1401  017d               _FLASH_WaitForLastOperation:
1403  017d 5205          	subw	sp,#5
1404       00000005      OFST:	set	5
1407                     ; 533     uint8_t flagstatus = 0x00;
1409  017f 0f05          	clr	(OFST+0,sp)
1410                     ; 534     uint32_t timeout = OPERATION_TIMEOUT;
1412  0181 aeffff        	ldw	x,#65535
1413  0184 1f03          	ldw	(OFST-2,sp),x
1414  0186 ae000f        	ldw	x,#15
1415  0189 1f01          	ldw	(OFST-4,sp),x
1417  018b 2010          	jra	L375
1418  018d               L765:
1419                     ; 560         flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1421  018d c6505f        	ld	a,20575
1422  0190 a405          	and	a,#5
1423  0192 6b05          	ld	(OFST+0,sp),a
1424                     ; 561         timeout--;
1426  0194 96            	ldw	x,sp
1427  0195 1c0001        	addw	x,#OFST-4
1428  0198 a601          	ld	a,#1
1429  019a cd0000        	call	c_lgsbc
1431  019d               L375:
1432                     ; 558     while ((flagstatus == 0x00) && (timeout != 0x00))
1434  019d 0d05          	tnz	(OFST+0,sp)
1435  019f 2609          	jrne	L775
1437  01a1 96            	ldw	x,sp
1438  01a2 1c0001        	addw	x,#OFST-4
1439  01a5 cd0000        	call	c_lzmp
1441  01a8 26e3          	jrne	L765
1442  01aa               L775:
1443                     ; 566     if (timeout == 0x00 )
1445  01aa 96            	ldw	x,sp
1446  01ab 1c0001        	addw	x,#OFST-4
1447  01ae cd0000        	call	c_lzmp
1449  01b1 2604          	jrne	L106
1450                     ; 568         flagstatus = FLASH_STATUS_TIMEOUT;
1452  01b3 a602          	ld	a,#2
1453  01b5 6b05          	ld	(OFST+0,sp),a
1454  01b7               L106:
1455                     ; 571     return((FLASH_Status_TypeDef)flagstatus);
1457  01b7 7b05          	ld	a,(OFST+0,sp)
1460  01b9 5b05          	addw	sp,#5
1461  01bb 81            	ret
1524                     ; 581 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1524                     ; 582 {
1525                     	switch	.text
1526  01bc               _FLASH_EraseBlock:
1528  01bc 89            	pushw	x
1529  01bd 5206          	subw	sp,#6
1530       00000006      OFST:	set	6
1533                     ; 583   uint32_t startaddress = 0;
1535                     ; 593   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1537                     ; 594   if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1539  01bf 7b0b          	ld	a,(OFST+5,sp)
1540  01c1 a1fd          	cp	a,#253
1541  01c3 260c          	jrne	L536
1542                     ; 596       assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1544                     ; 597       startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1546  01c5 ae8000        	ldw	x,#32768
1547  01c8 1f05          	ldw	(OFST-1,sp),x
1548  01ca ae0000        	ldw	x,#0
1549  01cd 1f03          	ldw	(OFST-3,sp),x
1551  01cf 200a          	jra	L736
1552  01d1               L536:
1553                     ; 601       assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1555                     ; 602       startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1557  01d1 ae4000        	ldw	x,#16384
1558  01d4 1f05          	ldw	(OFST-1,sp),x
1559  01d6 ae0000        	ldw	x,#0
1560  01d9 1f03          	ldw	(OFST-3,sp),x
1561  01db               L736:
1562                     ; 610     pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1564  01db 1e07          	ldw	x,(OFST+1,sp)
1565  01dd a640          	ld	a,#64
1566  01df cd0000        	call	c_cmulx
1568  01e2 96            	ldw	x,sp
1569  01e3 1c0003        	addw	x,#OFST-3
1570  01e6 cd0000        	call	c_ladd
1572  01e9 be02          	ldw	x,c_lreg+2
1573  01eb 1f01          	ldw	(OFST-5,sp),x
1574                     ; 614     FLASH->CR2 |= FLASH_CR2_ERASE;
1576  01ed 721a505b      	bset	20571,#5
1577                     ; 615     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1579  01f1 721b505c      	bres	20572,#5
1580                     ; 619     *pwFlash = (uint32_t)0;
1582  01f5 1e01          	ldw	x,(OFST-5,sp)
1583  01f7 a600          	ld	a,#0
1584  01f9 e703          	ld	(3,x),a
1585  01fb a600          	ld	a,#0
1586  01fd e702          	ld	(2,x),a
1587  01ff a600          	ld	a,#0
1588  0201 e701          	ld	(1,x),a
1589  0203 a600          	ld	a,#0
1590  0205 f7            	ld	(x),a
1591                     ; 627 }
1594  0206 5b08          	addw	sp,#8
1595  0208 81            	ret
1699                     ; 638 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
1699                     ; 639                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
1699                     ; 640 {
1700                     	switch	.text
1701  0209               _FLASH_ProgramBlock:
1703  0209 89            	pushw	x
1704  020a 5206          	subw	sp,#6
1705       00000006      OFST:	set	6
1708                     ; 641     uint16_t Count = 0;
1710                     ; 642     uint32_t startaddress = 0;
1712                     ; 645     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1714                     ; 646     assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
1716                     ; 647     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1718  020c 7b0b          	ld	a,(OFST+5,sp)
1719  020e a1fd          	cp	a,#253
1720  0210 260c          	jrne	L317
1721                     ; 649         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1723                     ; 650         startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1725  0212 ae8000        	ldw	x,#32768
1726  0215 1f03          	ldw	(OFST-3,sp),x
1727  0217 ae0000        	ldw	x,#0
1728  021a 1f01          	ldw	(OFST-5,sp),x
1730  021c 200a          	jra	L517
1731  021e               L317:
1732                     ; 654         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1734                     ; 655         startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1736  021e ae4000        	ldw	x,#16384
1737  0221 1f03          	ldw	(OFST-3,sp),x
1738  0223 ae0000        	ldw	x,#0
1739  0226 1f01          	ldw	(OFST-5,sp),x
1740  0228               L517:
1741                     ; 659     startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
1743  0228 1e07          	ldw	x,(OFST+1,sp)
1744  022a a640          	ld	a,#64
1745  022c cd0000        	call	c_cmulx
1747  022f 96            	ldw	x,sp
1748  0230 1c0001        	addw	x,#OFST-5
1749  0233 cd0000        	call	c_lgadd
1751                     ; 662     if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
1753  0236 0d0c          	tnz	(OFST+6,sp)
1754  0238 260a          	jrne	L717
1755                     ; 665         FLASH->CR2 |= FLASH_CR2_PRG;
1757  023a 7210505b      	bset	20571,#0
1758                     ; 666         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
1760  023e 7211505c      	bres	20572,#0
1762  0242 2008          	jra	L127
1763  0244               L717:
1764                     ; 671         FLASH->CR2 |= FLASH_CR2_FPRG;
1766  0244 7218505b      	bset	20571,#4
1767                     ; 672         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
1769  0248 7219505c      	bres	20572,#4
1770  024c               L127:
1771                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1773  024c 5f            	clrw	x
1774  024d 1f05          	ldw	(OFST-1,sp),x
1775  024f               L327:
1776                     ; 682   *((PointerAttr uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));
1778  024f 1e0d          	ldw	x,(OFST+7,sp)
1779  0251 72fb05        	addw	x,(OFST-1,sp)
1780  0254 f6            	ld	a,(x)
1781  0255 1e03          	ldw	x,(OFST-3,sp)
1782  0257 72fb05        	addw	x,(OFST-1,sp)
1783  025a f7            	ld	(x),a
1784                     ; 676     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
1786  025b 1e05          	ldw	x,(OFST-1,sp)
1787  025d 1c0001        	addw	x,#1
1788  0260 1f05          	ldw	(OFST-1,sp),x
1791  0262 1e05          	ldw	x,(OFST-1,sp)
1792  0264 a30040        	cpw	x,#64
1793  0267 25e6          	jrult	L327
1794                     ; 685 }
1797  0269 5b08          	addw	sp,#8
1798  026b 81            	ret
1811                     	xdef	_FLASH_WaitForLastOperation
1812                     	xdef	_FLASH_ProgramBlock
1813                     	xdef	_FLASH_EraseBlock
1814                     	xdef	_FLASH_GetFlagStatus
1815                     	xdef	_FLASH_GetBootSize
1816                     	xdef	_FLASH_GetProgrammingTime
1817                     	xdef	_FLASH_GetLowPowerMode
1818                     	xdef	_FLASH_SetProgrammingTime
1819                     	xdef	_FLASH_SetLowPowerMode
1820                     	xdef	_FLASH_EraseOptionByte
1821                     	xdef	_FLASH_ProgramOptionByte
1822                     	xdef	_FLASH_ReadOptionByte
1823                     	xdef	_FLASH_ProgramWord
1824                     	xdef	_FLASH_ReadByte
1825                     	xdef	_FLASH_ProgramByte
1826                     	xdef	_FLASH_EraseByte
1827                     	xdef	_FLASH_ITConfig
1828                     	xdef	_FLASH_DeInit
1829                     	xdef	_FLASH_Lock
1830                     	xdef	_FLASH_Unlock
1831                     	xref.b	c_lreg
1832                     	xref.b	c_x
1833                     	xref.b	c_y
1852                     	xref	c_ladd
1853                     	xref	c_cmulx
1854                     	xref	c_lzmp
1855                     	xref	c_lgsbc
1856                     	xref	c_ltor
1857                     	xref	c_lgadd
1858                     	xref	c_rtol
1859                     	xref	c_umul
1860                     	end
