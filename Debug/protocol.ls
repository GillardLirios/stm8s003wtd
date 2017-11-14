   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  66                     ; 9 void handle_rcv_data(unsigned char* buf, int len)
  66                     ; 10 {
  68                     	switch	.text
  69  0000               _handle_rcv_data:
  71  0000 89            	pushw	x
  72  0001 89            	pushw	x
  73       00000002      OFST:	set	2
  76                     ; 12 	unsigned short u16Duty=0;
  78  0002 5f            	clrw	x
  79  0003 1f01          	ldw	(OFST-1,sp),x
  80                     ; 36 	if('o'==buf[0] && 'n'==buf[1]&& '\r'==buf[2] && '\n'==buf[3])
  82  0005 1e03          	ldw	x,(OFST+1,sp)
  83  0007 f6            	ld	a,(x)
  84  0008 a16f          	cp	a,#111
  85  000a 2627          	jrne	L33
  87  000c 1e03          	ldw	x,(OFST+1,sp)
  88  000e e601          	ld	a,(1,x)
  89  0010 a16e          	cp	a,#110
  90  0012 261f          	jrne	L33
  92  0014 1e03          	ldw	x,(OFST+1,sp)
  93  0016 e602          	ld	a,(2,x)
  94  0018 a10d          	cp	a,#13
  95  001a 2617          	jrne	L33
  97  001c 1e03          	ldw	x,(OFST+1,sp)
  98  001e e603          	ld	a,(3,x)
  99  0020 a10a          	cp	a,#10
 100  0022 260f          	jrne	L33
 101                     ; 38 		GPIO_WriteHigh(GPIOD,GPIO_PIN_3);
 103  0024 4b08          	push	#8
 104  0026 ae500f        	ldw	x,#20495
 105  0029 cd0000        	call	_GPIO_WriteHigh
 107  002c 84            	pop	a
 108                     ; 39 		putstr("on\r\n");
 110  002d ae0006        	ldw	x,#L53
 111  0030 cd0000        	call	_putstr
 113  0033               L33:
 114                     ; 41 	if('o'==buf[0] && 'f'==buf[1]&& 'f'==buf[2]&&'\r'==buf[3] && '\n'==buf[4])
 116  0033 1e03          	ldw	x,(OFST+1,sp)
 117  0035 f6            	ld	a,(x)
 118  0036 a16f          	cp	a,#111
 119  0038 262f          	jrne	L73
 121  003a 1e03          	ldw	x,(OFST+1,sp)
 122  003c e601          	ld	a,(1,x)
 123  003e a166          	cp	a,#102
 124  0040 2627          	jrne	L73
 126  0042 1e03          	ldw	x,(OFST+1,sp)
 127  0044 e602          	ld	a,(2,x)
 128  0046 a166          	cp	a,#102
 129  0048 261f          	jrne	L73
 131  004a 1e03          	ldw	x,(OFST+1,sp)
 132  004c e603          	ld	a,(3,x)
 133  004e a10d          	cp	a,#13
 134  0050 2617          	jrne	L73
 136  0052 1e03          	ldw	x,(OFST+1,sp)
 137  0054 e604          	ld	a,(4,x)
 138  0056 a10a          	cp	a,#10
 139  0058 260f          	jrne	L73
 140                     ; 43 		GPIO_WriteLow(GPIOD,GPIO_PIN_3);
 142  005a 4b08          	push	#8
 143  005c ae500f        	ldw	x,#20495
 144  005f cd0000        	call	_GPIO_WriteLow
 146  0062 84            	pop	a
 147                     ; 44 		putstr("off\r\n");
 149  0063 ae0000        	ldw	x,#L14
 150  0066 cd0000        	call	_putstr
 152  0069               L73:
 153                     ; 46 	return;
 156  0069 5b04          	addw	sp,#4
 157  006b 81            	ret
 170                     	xref	_putstr
 171                     	xref	_GPIO_WriteLow
 172                     	xref	_GPIO_WriteHigh
 173                     	xdef	_handle_rcv_data
 174                     .const:	section	.text
 175  0000               L14:
 176  0000 6f66660d      	dc.b	"off",13
 177  0004 0a00          	dc.b	10,0
 178  0006               L53:
 179  0006 6f6e0d        	dc.b	"on",13
 180  0009 0a00          	dc.b	10,0
 200                     	end
