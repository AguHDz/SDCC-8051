;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module delay_Lib
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_x10_cycles
	.globl _delay_x100_cycles
	.globl _delay_ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_x10_cycles'
;------------------------------------------------------------
;x10cycles                 Allocated to registers 
;------------------------------------------------------------
;	..\Libs\delay_Lib.c:7: void delay_x10_cycles(uint8_t x10cycles)
;	-----------------------------------------
;	 function delay_x10_cycles
;	-----------------------------------------
_delay_x10_cycles:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	..\Libs\delay_Lib.c:25: __endasm;
	mov	r7,dpl
	dec	r7
	mov	a, r7
	jz	end_delay_x10_cycles
	    loop_delay_x10_cycles:
	mov	r6,#3
	    loop_delay_10_cycles:
	djnz	r6,loop_delay_10_cycles
	nop
	djnz	r7,loop_delay_x10_cycles
	    end_delay_x10_cycles:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_x100_cycles'
;------------------------------------------------------------
;x100cycles                Allocated to registers 
;------------------------------------------------------------
;	..\Libs\delay_Lib.c:30: void delay_x100_cycles(uint8_t x100cycles)
;	-----------------------------------------
;	 function delay_x100_cycles
;	-----------------------------------------
_delay_x100_cycles:
;	..\Libs\delay_Lib.c:49: __endasm;
	mov	r7,dpl
	dec	r7
	mov	a, r7
	mov	r6,#44
	    loop_delay_x100_cycles_init:
	djnz	r6,loop_delay_x100_cycles_init
	nop
	jz	end_delay_x100_cycles
	    loop_delay_x100_cycles:
	mov	r5,#48
	    loop_delay_100_cycles:
	djnz	r5,loop_delay_100_cycles
	nop
	djnz	r7,loop_delay_x100_cycles
	    end_delay_x100_cycles:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;delayTimeMS               Allocated to registers 
;------------------------------------------------------------
;	..\Libs\delay_Lib.c:55: void delay_ms(uint16_t delayTimeMS)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
;	..\Libs\delay_Lib.c:73: __endasm;
	mov	r3,dpl
	mov	r4,dph
	    delay_ms_lib_loop:
	dec	r3
	cjne	r3,#0xff,delay_ms_lib_seguir
	dec	r4
	    delay_ms_lib_seguir:
	mov	a,r3
	orl	a,r4
	jz	delay_ms_lib_fin
;	..\Libs\delay_Lib.c:75: CALL_DELAY_MS;
	mov	dpl,#0x64
	lcall	_delay_x10_cycles
;	..\Libs\delay_Lib.c:80: __endasm;
	sjmp	delay_ms_lib_loop
	    delay_ms_lib_fin:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
