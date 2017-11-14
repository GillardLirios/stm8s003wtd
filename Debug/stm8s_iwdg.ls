   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  77                     ; 42 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  77                     ; 43 {
  79                     	switch	.text
  80  0000               _IWDG_WriteAccessCmd:
  84                     ; 45     assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  86                     ; 47     IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
  88  0000 c750e0        	ld	20704,a
  89                     ; 48 }
  92  0003 81            	ret
 182                     ; 57 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 182                     ; 58 {
 183                     	switch	.text
 184  0004               _IWDG_SetPrescaler:
 188                     ; 60     assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 190                     ; 62     IWDG->PR = (uint8_t)IWDG_Prescaler;
 192  0004 c750e1        	ld	20705,a
 193                     ; 63 }
 196  0007 81            	ret
 230                     ; 72 void IWDG_SetReload(uint8_t IWDG_Reload)
 230                     ; 73 {
 231                     	switch	.text
 232  0008               _IWDG_SetReload:
 236                     ; 74     IWDG->RLR = IWDG_Reload;
 238  0008 c750e2        	ld	20706,a
 239                     ; 75 }
 242  000b 81            	ret
 265                     ; 83 void IWDG_ReloadCounter(void)
 265                     ; 84 {
 266                     	switch	.text
 267  000c               _IWDG_ReloadCounter:
 271                     ; 85     IWDG->KR = IWDG_KEY_REFRESH;
 273  000c 35aa50e0      	mov	20704,#170
 274                     ; 86 }
 277  0010 81            	ret
 300                     ; 93 void IWDG_Enable(void)
 300                     ; 94 {
 301                     	switch	.text
 302  0011               _IWDG_Enable:
 306                     ; 95     IWDG->KR = IWDG_KEY_ENABLE;
 308  0011 35cc50e0      	mov	20704,#204
 309                     ; 96 }
 312  0015 81            	ret
 325                     	xdef	_IWDG_Enable
 326                     	xdef	_IWDG_ReloadCounter
 327                     	xdef	_IWDG_SetReload
 328                     	xdef	_IWDG_SetPrescaler
 329                     	xdef	_IWDG_WriteAccessCmd
 348                     	end
