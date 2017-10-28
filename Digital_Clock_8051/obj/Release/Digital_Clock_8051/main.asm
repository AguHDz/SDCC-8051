;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setup
	.globl _timeSet
	.globl _cicloTimeSet
	.globl _timeShow
	.globl _LCDPrintNumero
	.globl _diasDelMes
	.globl _bisiesto
	.globl _LCDPrintDiaSemana
	.globl _LCD_init
	.globl _LCD_print
	.globl _LCD_createChar
	.globl _LCD_displayCursorLeft
	.globl _LCD_displayCursorRight
	.globl _LCD_displayShiftLeft
	.globl _LCD_displayShiftRight
	.globl _LCD_displayOff
	.globl _LCD_displayOn
	.globl _LCD_cursorOff
	.globl _LCD_cursorUnderlineBlink
	.globl _LCD_cursorBlink
	.globl _LCD_cursorUnderline
	.globl _LCD_clear
	.globl _LCD_cursorHome
	.globl _LCD_gotoXY
	.globl _LCD_putChar
	.globl _LCD_command
	.globl _LCD_send
	.globl _LCD_send4Bits
	.globl _LCD_enablePulse
	.globl _DS1307_timeWrite
	.globl _DS1307_timeRead
	.globl _decimalToBCD
	.globl _BCDToDecimal
	.globl _I2C_read
	.globl _I2C_send
	.globl _I2C_stop
	.globl _I2C_start
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _ack
	.globl _I2C_read_PARM_1
	.globl _cicloTimeSet_PARM_5
	.globl _cicloTimeSet_PARM_4
	.globl _cicloTimeSet_PARM_3
	.globl _cicloTimeSet_PARM_2
	.globl _refresco
	.globl _timeSec_old
	.globl _k
	.globl _LCD_createChar_PARM_9
	.globl _LCD_createChar_PARM_8
	.globl _LCD_createChar_PARM_7
	.globl _LCD_createChar_PARM_6
	.globl _LCD_createChar_PARM_5
	.globl _LCD_createChar_PARM_4
	.globl _LCD_createChar_PARM_3
	.globl _LCD_createChar_PARM_2
	.globl _LCD_gotoXY_PARM_2
	.globl _DS1307_time
	.globl _delay_x10_cycles
	.globl _delay_ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_DS1307_time::
	.ds 7
_LCD_gotoXY_PARM_2:
	.ds 1
_LCD_createChar_PARM_2:
	.ds 1
_LCD_createChar_PARM_3:
	.ds 1
_LCD_createChar_PARM_4:
	.ds 1
_LCD_createChar_PARM_5:
	.ds 1
_LCD_createChar_PARM_6:
	.ds 1
_LCD_createChar_PARM_7:
	.ds 1
_LCD_createChar_PARM_8:
	.ds 1
_LCD_createChar_PARM_9:
	.ds 1
_k::
	.ds 1
_timeSec_old::
	.ds 1
_refresco::
	.ds 2
_cicloTimeSet_PARM_2:
	.ds 1
_cicloTimeSet_PARM_3:
	.ds 1
_cicloTimeSet_PARM_4:
	.ds 1
_cicloTimeSet_PARM_5:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_I2C_send_ACKbit_1_26:
	.ds 1
_I2C_read_PARM_1:
	.ds 1
_LCD_send4Bits_sloc0_1_0:
	.ds 1
_ack::
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_x10_cycles'
;------------------------------------------------------------
;x10cycles                 Allocated to registers 
;------------------------------------------------------------
;	../Libs/delay.c:48: void delay_x10_cycles(uint8_t x10cycles)
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
;	../Libs/delay.c:66: __endasm;
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
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;delayTimeMS               Allocated to registers 
;------------------------------------------------------------
;	../Libs/delay.c:98: void delay_ms(uint16_t delayTimeMS)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
;	../Libs/delay.c:127: __endasm;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
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
;	../Libs/delay.c:129: CALL_DELAY_MS;
	mov	dpl,#0x3f
	lcall	_delay_x10_cycles
;	../Libs/delay.c:139: __endasm;
	sjmp	delay_ms_lib_loop
	    delay_ms_lib_fin:
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_start'
;------------------------------------------------------------
;	../Libs/I2C.c:9: void I2C_start(void)
;	-----------------------------------------
;	 function I2C_start
;	-----------------------------------------
_I2C_start:
;	../Libs/I2C.c:11: SDA=1;    //"start" function for communicate I2C
	setb	_P1_0
;	../Libs/I2C.c:12: SCL=1;
	setb	_P1_1
;	../Libs/I2C.c:13: SDA=0;
	clr	_P1_0
;	../Libs/I2C.c:14: SCL=0;
	clr	_P1_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_stop'
;------------------------------------------------------------
;	../Libs/I2C.c:17: void I2C_stop(void)
;	-----------------------------------------
;	 function I2C_stop
;	-----------------------------------------
_I2C_stop:
;	../Libs/I2C.c:19: SDA=0;
	clr	_P1_0
;	../Libs/I2C.c:20: SCL=1;
	setb	_P1_1
;	../Libs/I2C.c:21: SDA=1;   //"stop" function for communicate I2C
	setb	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_send'
;------------------------------------------------------------
;dato                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	../Libs/I2C.c:24: bool I2C_send(uint8_t dato)             //send data to I2C
;	-----------------------------------------
;	 function I2C_send
;	-----------------------------------------
_I2C_send:
	mov	r7,dpl
;	../Libs/I2C.c:28: for(i=0; i<8; i++)
	mov	r6,#0x00
00105$:
;	../Libs/I2C.c:30: if(dato & BIT7) SDA=1;
	mov	a,r7
	jnb	acc.7,00102$
	setb	_P1_0
	sjmp	00103$
00102$:
;	../Libs/I2C.c:31: else SDA=0;
	clr	_P1_0
00103$:
;	../Libs/I2C.c:32: SCL=1;
	setb	_P1_1
;	../Libs/I2C.c:33: dato<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	../Libs/I2C.c:34: SCL=0;
	clr	_P1_1
;	../Libs/I2C.c:28: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00120$
00120$:
	jc	00105$
;	../Libs/I2C.c:36: SDA=1;
	setb	_P1_0
;	../Libs/I2C.c:37: SCL=1;
	setb	_P1_1
;	../Libs/I2C.c:38: ACKbit=SDA;
	mov	c,_P1_0
	mov	_I2C_send_ACKbit_1_26,c
;	../Libs/I2C.c:39: SCL=0;
	clr	_P1_1
;	../Libs/I2C.c:40: return ACKbit;
	mov	c,_I2C_send_ACKbit_1_26
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;dato                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/I2C.c:43: uint8_t I2C_read(bool ACKBit)                      //receive data from I2C
;	-----------------------------------------
;	 function I2C_read
;	-----------------------------------------
_I2C_read:
;	../Libs/I2C.c:46: uint8_t dato=0;
	mov	r7,#0x00
;	../Libs/I2C.c:47: SDA=1;
	setb	_P1_0
;	../Libs/I2C.c:48: for(i=0; i<8; i++)
	mov	r6,#0x00
00110$:
;	../Libs/I2C.c:50: dato<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	../Libs/I2C.c:51: do
00101$:
;	../Libs/I2C.c:53: SCL=1;
	setb	_P1_1
	jnb	_P1_1,00101$
;	../Libs/I2C.c:56: if(SDA) dato|=1;
	jnb	_P1_0,00105$
	orl	ar7,#0x01
00105$:
;	../Libs/I2C.c:57: SCL=0;
	clr	_P1_1
;	../Libs/I2C.c:48: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00135$
00135$:
	jc	00110$
;	../Libs/I2C.c:59: if(ACKBit)SDA=0;
	jnb	_I2C_read_PARM_1,00108$
	clr	_P1_0
	sjmp	00109$
00108$:
;	../Libs/I2C.c:60: else SDA=1;
	setb	_P1_0
00109$:
;	../Libs/I2C.c:61: SCL=1;
	setb	_P1_1
;	../Libs/I2C.c:62: SCL=0;
	clr	_P1_1
;	../Libs/I2C.c:63: SDA=1;
	setb	_P1_0
;	../Libs/I2C.c:64: return dato;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BCDToDecimal'
;------------------------------------------------------------
;bcdByte                   Allocated to registers r7 
;a                         Allocated to registers r6 
;b                         Allocated to registers 
;dec                       Allocated to registers 
;------------------------------------------------------------
;	../Libs/math.c:14: uint8_t BCDToDecimal(uint8_t bcdByte)
;	-----------------------------------------
;	 function BCDToDecimal
;	-----------------------------------------
_BCDToDecimal:
	mov	r7,dpl
;	../Libs/math.c:17: a=(((bcdByte & 0xF0) >> 4) * 10);
	mov	a,#0xf0
	anl	a,r7
	swap	a
	anl	a,#0x0f
	mov	b,#0x0a
	mul	ab
	mov	r6,a
;	../Libs/math.c:18: b=(bcdByte & 0x0F);
	mov	a,#0x0f
	anl	a,r7
;	../Libs/math.c:19: dec=a+b;
	add	a,r6
	mov	dpl,a
;	../Libs/math.c:20: return dec;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decimalToBCD'
;------------------------------------------------------------
;decimalByte               Allocated to registers r7 
;a                         Allocated to registers r6 
;b                         Allocated to registers r7 
;bcd                       Allocated to registers 
;------------------------------------------------------------
;	../Libs/math.c:31: uint8_t decimalToBCD (uint8_t decimalByte)
;	-----------------------------------------
;	 function decimalToBCD
;	-----------------------------------------
_decimalToBCD:
	mov	r7,dpl
;	../Libs/math.c:34: a=((decimalByte / 10) << 4);
	mov	b,#0x0a
	mov	a,r7
	div	ab
	swap	a
	anl	a,#0xf0
	mov	r6,a
;	../Libs/math.c:35: b= (decimalByte % 10);
	mov	b,#0x0a
	mov	a,r7
	div	ab
;	../Libs/math.c:36: bcd=a|b;
	mov	a,b
	orl	a,r6
	mov	dpl,a
;	../Libs/math.c:37: return bcd;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_timeRead'
;------------------------------------------------------------
;	../Libs/DS1307.c:88: void DS1307_timeRead(void)
;	-----------------------------------------
;	 function DS1307_timeRead
;	-----------------------------------------
_DS1307_timeRead:
;	../Libs/DS1307.c:90: I2C_start();     // Inicia comunicaci�n I2C.
	lcall	_I2C_start
;	../Libs/DS1307.c:91: I2C_send(0xD0);  // Direcci�n I2C del DS1307.
	mov	dpl,#0xd0
	lcall	_I2C_send
;	../Libs/DS1307.c:92: I2C_send(0x00);  // Primera direcci�n a leer/escribir.
	mov	dpl,#0x00
	lcall	_I2C_send
;	../Libs/DS1307.c:93: I2C_start();     // Reinicia comunicaci�n I2C.
	lcall	_I2C_start
;	../Libs/DS1307.c:94: I2C_send(0xD1);  // DS1307 en Modo Escritura.
	mov	dpl,#0xd1
	lcall	_I2C_send
;	../Libs/DS1307.c:95: DS1307_time.Segundo   = BCDToDecimal(I2C_read(1)); // ASK = 1
	setb	_I2C_read_PARM_1
	lcall	_I2C_read
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0006),a
;	../Libs/DS1307.c:96: DS1307_time.Minuto    = BCDToDecimal(I2C_read(1));
	setb	_I2C_read_PARM_1
	lcall	_I2C_read
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0005),a
;	../Libs/DS1307.c:97: DS1307_time.Hora      = BCDToDecimal(I2C_read(1));
	setb	_I2C_read_PARM_1
	lcall	_I2C_read
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0004),a
;	../Libs/DS1307.c:98: DS1307_time.DiaSemana = I2C_read(1);  // Valor 1...7 (igual en decimal que en BCD)
	setb	_I2C_read_PARM_1
	lcall	_I2C_read
	mov	a,dpl
	mov	_DS1307_time,a
;	../Libs/DS1307.c:99: DS1307_time.Dia       = BCDToDecimal(I2C_read(1));
	setb	_I2C_read_PARM_1
	lcall	_I2C_read
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0001),a
;	../Libs/DS1307.c:100: DS1307_time.Mes       = BCDToDecimal(I2C_read(1));
	setb	_I2C_read_PARM_1
	lcall	_I2C_read
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0002),a
;	../Libs/DS1307.c:101: DS1307_time.Ano       = BCDToDecimal(I2C_read(0)); // ASK = 0
	clr	_I2C_read_PARM_1
	lcall	_I2C_read
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0003),a
;	../Libs/DS1307.c:105: I2C_stop();
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_timeWrite'
;------------------------------------------------------------
;	../Libs/DS1307.c:114: void DS1307_timeWrite(void)
;	-----------------------------------------
;	 function DS1307_timeWrite
;	-----------------------------------------
_DS1307_timeWrite:
;	../Libs/DS1307.c:116: I2C_start();     // Inicia comunicaci�n I2C
	lcall	_I2C_start
;	../Libs/DS1307.c:117: I2C_send(0xD0);  // Direcci�n I2C del DS1307.
	mov	dpl,#0xd0
	lcall	_I2C_send
;	../Libs/DS1307.c:118: I2C_send(0x00);  // Primera direcci�n a leer/escribir.
	mov	dpl,#0x00
	lcall	_I2C_send
;	../Libs/DS1307.c:119: I2C_send(decimalToBCD(DS1307_time.Segundo));
	mov	dpl,(_DS1307_time + 0x0006)
	lcall	_decimalToBCD
	lcall	_I2C_send
;	../Libs/DS1307.c:120: I2C_send(decimalToBCD(DS1307_time.Minuto));
	mov	dpl,(_DS1307_time + 0x0005)
	lcall	_decimalToBCD
	lcall	_I2C_send
;	../Libs/DS1307.c:121: I2C_send(decimalToBCD(DS1307_time.Hora));
	mov	dpl,(_DS1307_time + 0x0004)
	lcall	_decimalToBCD
	lcall	_I2C_send
;	../Libs/DS1307.c:122: I2C_send(DS1307_time.DiaSemana);  // Valor 1...7 (igual en decimal que en BCD)
	mov	dpl,_DS1307_time
	lcall	_I2C_send
;	../Libs/DS1307.c:123: I2C_send(decimalToBCD(DS1307_time.Dia));
	mov	dpl,(_DS1307_time + 0x0001)
	lcall	_decimalToBCD
	lcall	_I2C_send
;	../Libs/DS1307.c:124: I2C_send(decimalToBCD(DS1307_time.Mes));
	mov	dpl,(_DS1307_time + 0x0002)
	lcall	_decimalToBCD
	lcall	_I2C_send
;	../Libs/DS1307.c:125: I2C_send(decimalToBCD(DS1307_time.Ano));
	mov	dpl,(_DS1307_time + 0x0003)
	lcall	_decimalToBCD
	lcall	_I2C_send
;	../Libs/DS1307.c:126: I2C_send(DS1307_CONF);
	mov	dpl,#0x80
	lcall	_I2C_send
;	../Libs/DS1307.c:127: I2C_stop();
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_enablePulse'
;------------------------------------------------------------
;	../Libs/LCD.c:97: void LCD_enablePulse(void)
;	-----------------------------------------
;	 function LCD_enablePulse
;	-----------------------------------------
_LCD_enablePulse:
;	../Libs/LCD.c:99: LCD_EN     = 1;
	setb	_P1_3
;	../Libs/LCD.c:100: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	../Libs/LCD.c:101: LCD_EN     = 0;
	clr	_P1_3
;	../Libs/LCD.c:102: delay_ms(1);
	mov	dptr,#0x0001
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_send4Bits'
;------------------------------------------------------------
;date                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.c:110: void LCD_send4Bits(char date)
;	-----------------------------------------
;	 function LCD_send4Bits
;	-----------------------------------------
_LCD_send4Bits:
;	../Libs/LCD.c:112: LCD_DATA_4 = (date & BIT4);
	mov	a,dpl
	mov	r7,a
	mov	c,acc[4]
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_4,c
;	../Libs/LCD.c:113: LCD_DATA_5 = (date & BIT5);
	mov	a,r7
	mov	c,acc[5]
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_5,c
;	../Libs/LCD.c:114: LCD_DATA_6 = (date & BIT6);
	mov	a,r7
	mov	c,acc[6]
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_6,c
;	../Libs/LCD.c:115: LCD_DATA_7 = (date & BIT7);
	mov	a,r7
	rlc	a
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_7,c
;	../Libs/LCD.c:116: LCD_enablePulse();
	ljmp	_LCD_enablePulse
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_send'
;------------------------------------------------------------
;date                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.c:119: void LCD_send(char date)
;	-----------------------------------------
;	 function LCD_send
;	-----------------------------------------
_LCD_send:
;	../Libs/LCD.c:121: LCD_send4Bits(date);
	mov  r7,dpl
	push	ar7
	lcall	_LCD_send4Bits
	pop	ar7
;	../Libs/LCD.c:122: LCD_send4Bits(date<<4);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	dpl,a
	ljmp	_LCD_send4Bits
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_command'
;------------------------------------------------------------
;comm                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.c:134: void LCD_command(char comm)
;	-----------------------------------------
;	 function LCD_command
;	-----------------------------------------
_LCD_command:
	mov	r7,dpl
;	../Libs/LCD.c:136: LCD_RS = LCD_CmdMode;
	clr	_P1_2
;	../Libs/LCD.c:137: LCD_send(comm);
	mov	dpl,r7
	ljmp	_LCD_send
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putChar'
;------------------------------------------------------------
;chr                       Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.c:140: void LCD_putChar(char chr)
;	-----------------------------------------
;	 function LCD_putChar
;	-----------------------------------------
_LCD_putChar:
	mov	r7,dpl
;	../Libs/LCD.c:142: LCD_RS = LCD_CharMode;
	setb	_P1_2
;	../Libs/LCD.c:143: LCD_send(chr);
	mov	dpl,r7
	ljmp	_LCD_send
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_gotoXY'
;------------------------------------------------------------
;fila                      Allocated with name '_LCD_gotoXY_PARM_2'
;columna                   Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.c:147: void LCD_gotoXY(char columna, char fila)
;	-----------------------------------------
;	 function LCD_gotoXY
;	-----------------------------------------
_LCD_gotoXY:
	mov	r7,dpl
;	../Libs/LCD.c:149: if(fila == 0)
	mov	a,_LCD_gotoXY_PARM_2
	jnz	00110$
;	../Libs/LCD.c:150: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_0);
	mov	a,#0x80
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00110$:
;	../Libs/LCD.c:151: else if (fila == 1)
	mov	a,#0x01
	cjne	a,_LCD_gotoXY_PARM_2,00107$
;	../Libs/LCD.c:152: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_1);
	mov	a,#0xc0
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00107$:
;	../Libs/LCD.c:153: else if (fila == 2)
	mov	a,#0x02
	cjne	a,_LCD_gotoXY_PARM_2,00104$
;	../Libs/LCD.c:154: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_2);
	mov	a,#0x94
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00104$:
;	../Libs/LCD.c:155: else if (fila == 3)
	mov	a,#0x03
	cjne	a,_LCD_gotoXY_PARM_2,00112$
;	../Libs/LCD.c:156: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_3);
	mov	a,#0xd4
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_cursorHome'
;------------------------------------------------------------
;	../Libs/LCD.c:159: void LCD_cursorHome(void)
;	-----------------------------------------
;	 function LCD_cursorHome
;	-----------------------------------------
_LCD_cursorHome:
;	../Libs/LCD.c:161: LCD_command(LCD_DISPLAY_AND_CURSOR_HOME);
	mov	dpl,#0x02
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_clear'
;------------------------------------------------------------
;	../Libs/LCD.c:164: void LCD_clear(void)
;	-----------------------------------------
;	 function LCD_clear
;	-----------------------------------------
_LCD_clear:
;	../Libs/LCD.c:166: LCD_command(LCD_CLEAR_DISPLAY);
	mov	dpl,#0x01
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_cursorUnderline'
;------------------------------------------------------------
;	../Libs/LCD.c:169: void LCD_cursorUnderline(void)
;	-----------------------------------------
;	 function LCD_cursorUnderline
;	-----------------------------------------
_LCD_cursorUnderline:
;	../Libs/LCD.c:171: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON);
	mov	dpl,#0x0e
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_cursorBlink'
;------------------------------------------------------------
;	../Libs/LCD.c:174: void LCD_cursorBlink(void)
;	-----------------------------------------
;	 function LCD_cursorBlink
;	-----------------------------------------
_LCD_cursorBlink:
;	../Libs/LCD.c:176: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_BLINK_ON);
	mov	dpl,#0x0d
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_cursorUnderlineBlink'
;------------------------------------------------------------
;	../Libs/LCD.c:179: void LCD_cursorUnderlineBlink(void)
;	-----------------------------------------
;	 function LCD_cursorUnderlineBlink
;	-----------------------------------------
_LCD_cursorUnderlineBlink:
;	../Libs/LCD.c:181: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON + LCD_CURSOR_BLINK_ON);
	mov	dpl,#0x0f
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_cursorOff'
;------------------------------------------------------------
;	../Libs/LCD.c:184: void LCD_cursorOff(void)
;	-----------------------------------------
;	 function LCD_cursorOff
;	-----------------------------------------
_LCD_cursorOff:
;	../Libs/LCD.c:186: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_OFF + LCD_CURSOR_BLINK_OFF);
	mov	dpl,#0x0c
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_displayOn'
;------------------------------------------------------------
;	../Libs/LCD.c:189: void LCD_displayOn(void)
;	-----------------------------------------
;	 function LCD_displayOn
;	-----------------------------------------
_LCD_displayOn:
;	../Libs/LCD.c:191: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
	mov	dpl,#0x0c
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_displayOff'
;------------------------------------------------------------
;	../Libs/LCD.c:194: void LCD_displayOff(void)
;	-----------------------------------------
;	 function LCD_displayOff
;	-----------------------------------------
_LCD_displayOff:
;	../Libs/LCD.c:196: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
	mov	dpl,#0x08
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_displayShiftRight'
;------------------------------------------------------------
;	../Libs/LCD.c:210: void LCD_displayShiftRight(void)
;	-----------------------------------------
;	 function LCD_displayShiftRight
;	-----------------------------------------
_LCD_displayShiftRight:
;	../Libs/LCD.c:212: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_RIGHT);
	mov	dpl,#0x1c
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_displayShiftLeft'
;------------------------------------------------------------
;	../Libs/LCD.c:215: void LCD_displayShiftLeft(void)
;	-----------------------------------------
;	 function LCD_displayShiftLeft
;	-----------------------------------------
_LCD_displayShiftLeft:
;	../Libs/LCD.c:217: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_LEFT);
	mov	dpl,#0x18
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_displayCursorRight'
;------------------------------------------------------------
;	../Libs/LCD.c:220: void LCD_displayCursorRight(void)
;	-----------------------------------------
;	 function LCD_displayCursorRight
;	-----------------------------------------
_LCD_displayCursorRight:
;	../Libs/LCD.c:222: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_RIGHT);
	mov	dpl,#0x14
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_displayCursorLeft'
;------------------------------------------------------------
;	../Libs/LCD.c:225: void LCD_displayCursorLeft(void)
;	-----------------------------------------
;	 function LCD_displayCursorLeft
;	-----------------------------------------
_LCD_displayCursorLeft:
;	../Libs/LCD.c:227: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_LEFT);
	mov	dpl,#0x10
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_createChar'
;------------------------------------------------------------
;chardata0                 Allocated with name '_LCD_createChar_PARM_2'
;chardata1                 Allocated with name '_LCD_createChar_PARM_3'
;chardata2                 Allocated with name '_LCD_createChar_PARM_4'
;chardata3                 Allocated with name '_LCD_createChar_PARM_5'
;chardata4                 Allocated with name '_LCD_createChar_PARM_6'
;chardata5                 Allocated with name '_LCD_createChar_PARM_7'
;chardata6                 Allocated with name '_LCD_createChar_PARM_8'
;chardata7                 Allocated with name '_LCD_createChar_PARM_9'
;charnum                   Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.c:230: void LCD_createChar(char charnum,
;	-----------------------------------------
;	 function LCD_createChar
;	-----------------------------------------
_LCD_createChar:
;	../Libs/LCD.c:240: charnum = charnum & 0x07;  // Previene errores sin charnum > 7;
;	../Libs/LCD.c:241: charnum = charnum << 3;
	mov	a,dpl
	anl	a,#0x07
	swap	a
	rr	a
	anl	a,#0xf8
;	../Libs/LCD.c:242: LCD_command(LCD_SET_CGRAM_ADDRESS + charnum);
	add	a,#0x40
	mov	dpl,a
	lcall	_LCD_command
;	../Libs/LCD.c:243: LCD_putChar(chardata0);
	mov	dpl,_LCD_createChar_PARM_2
	lcall	_LCD_putChar
;	../Libs/LCD.c:244: LCD_putChar(chardata1);
	mov	dpl,_LCD_createChar_PARM_3
	lcall	_LCD_putChar
;	../Libs/LCD.c:245: LCD_putChar(chardata2);
	mov	dpl,_LCD_createChar_PARM_4
	lcall	_LCD_putChar
;	../Libs/LCD.c:246: LCD_putChar(chardata3);
	mov	dpl,_LCD_createChar_PARM_5
	lcall	_LCD_putChar
;	../Libs/LCD.c:247: LCD_putChar(chardata4);
	mov	dpl,_LCD_createChar_PARM_6
	lcall	_LCD_putChar
;	../Libs/LCD.c:248: LCD_putChar(chardata5);
	mov	dpl,_LCD_createChar_PARM_7
	lcall	_LCD_putChar
;	../Libs/LCD.c:249: LCD_putChar(chardata6);
	mov	dpl,_LCD_createChar_PARM_8
	lcall	_LCD_putChar
;	../Libs/LCD.c:250: LCD_putChar(chardata7);
	mov	dpl,_LCD_createChar_PARM_9
;	../Libs/LCD.c:251: LCD_clear;    // Necesario para finalizar la creacion de Custom Character.
	ljmp	_LCD_putChar
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_print'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	../Libs/LCD.c:255: void LCD_print(char *str)
;	-----------------------------------------
;	 function LCD_print
;	-----------------------------------------
_LCD_print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../Libs/LCD.c:257: while(*str)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	../Libs/LCD.c:259: LCD_putChar(*str);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_putChar
	pop	ar5
	pop	ar6
	pop	ar7
;	../Libs/LCD.c:260: str++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
;	../Libs/LCD.c:264: void LCD_init(void)
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
;	../Libs/LCD.c:267: LCD_DATA_4 = 0;              // Pines iniciados como salida.
	clr	_P1_4
;	../Libs/LCD.c:268: LCD_DATA_5 = 0;
	clr	_P1_5
;	../Libs/LCD.c:269: LCD_DATA_6 = 0;
	clr	_P1_6
;	../Libs/LCD.c:270: LCD_DATA_7 = 0;
	clr	_P1_7
;	../Libs/LCD.c:271: LCD_RS     = 0;
	clr	_P1_2
;	../Libs/LCD.c:272: LCD_EN     = 0;
	clr	_P1_3
;	../Libs/LCD.c:280: delay_ms(30);    // Espera 15 ms o más.
	mov	dptr,#0x001e
	lcall	_delay_ms
;	../Libs/LCD.c:284: LCD_send4Bits(0b00110000);
	mov	dpl,#0x30
	lcall	_LCD_send4Bits
;	../Libs/LCD.c:285: delay_ms(5);  // Espera > 4.1 ms
	mov	dptr,#0x0005
	lcall	_delay_ms
;	../Libs/LCD.c:286: LCD_send4Bits(0b00110000);
	mov	dpl,#0x30
	lcall	_LCD_send4Bits
;	../Libs/LCD.c:287: delay_ms(1);  // Espera > 100 us
	mov	dptr,#0x0001
	lcall	_delay_ms
;	../Libs/LCD.c:288: LCD_send4Bits(0b00110000);
	mov	dpl,#0x30
	lcall	_LCD_send4Bits
;	../Libs/LCD.c:289: LCD_send4Bits(0b00100000);
	mov	dpl,#0x20
	lcall	_LCD_send4Bits
;	../Libs/LCD.c:290: LCD_command(LCD_FUNCTION_SET + LCD_4BIT_INTERFACE + LCD_2LINES + LCD_F_FONT_5_8);
	mov	dpl,#0x28
	lcall	_LCD_command
;	../Libs/LCD.c:302: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
	mov	dpl,#0x08
	lcall	_LCD_command
;	../Libs/LCD.c:303: LCD_command(LCD_CHARACTER_ENTRY_MODE + LCD_INCREMENT + LCD_DISPLAY_SHIFT_OFF);
	mov	dpl,#0x06
	lcall	_LCD_command
;	../Libs/LCD.c:304: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
	mov	dpl,#0x0c
	lcall	_LCD_command
;	../Libs/LCD.c:305: LCD_command(LCD_CLEAR_DISPLAY);
	mov	dpl,#0x01
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDPrintDiaSemana'
;------------------------------------------------------------
;	main.c:56: void LCDPrintDiaSemana(void)
;	-----------------------------------------
;	 function LCDPrintDiaSemana
;	-----------------------------------------
_LCDPrintDiaSemana:
;	main.c:58: switch(DS1307_time.DiaSemana)
	mov	a,_DS1307_time
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00114$
	ret
00114$:
	mov	a,r7
	add	a,#(00115$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00116$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00115$:
	.db	00108$
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
00116$:
	.db	00108$>>8
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
;	main.c:60: case 1:
00101$:
;	main.c:61: LCD_print("DOM");
	mov	dptr,#___str_0
	mov	b,#0x80
;	main.c:62: break;
;	main.c:63: case 2:
	ljmp	_LCD_print
00102$:
;	main.c:64: LCD_print("LUN");
	mov	dptr,#___str_1
	mov	b,#0x80
;	main.c:65: break;
;	main.c:66: case 3:
	ljmp	_LCD_print
00103$:
;	main.c:67: LCD_print("MAR");
	mov	dptr,#___str_2
	mov	b,#0x80
;	main.c:68: break;
;	main.c:69: case 4:
	ljmp	_LCD_print
00104$:
;	main.c:70: LCD_print("MIE");
	mov	dptr,#___str_3
	mov	b,#0x80
;	main.c:71: break;
;	main.c:72: case 5:
	ljmp	_LCD_print
00105$:
;	main.c:73: LCD_print("JUE");
	mov	dptr,#___str_4
	mov	b,#0x80
;	main.c:74: break;
;	main.c:75: case 6:
	ljmp	_LCD_print
00106$:
;	main.c:76: LCD_print("VIE");
	mov	dptr,#___str_5
	mov	b,#0x80
;	main.c:77: break;
;	main.c:78: case 7:
	ljmp	_LCD_print
00107$:
;	main.c:79: LCD_print("SAB");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:81: }
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bisiesto'
;------------------------------------------------------------
;	main.c:100: bool bisiesto(void)
;	-----------------------------------------
;	 function bisiesto
;	-----------------------------------------
_bisiesto:
;	main.c:103: return !(DS1307_time.Ano%4);
	mov	a,#0x03
	anl	a,(_DS1307_time + 0x0003)
	mov	r7,a
	cjne	a,#0x01,00103$
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'diasDelMes'
;------------------------------------------------------------
;	main.c:113: uint8_t diasDelMes(void)
;	-----------------------------------------
;	 function diasDelMes
;	-----------------------------------------
_diasDelMes:
;	main.c:115: if(DS1307_time.Mes==2)                        // Mes = febrero
	mov	r7,(_DS1307_time + 0x0002)
	cjne	r7,#0x02,00102$
;	main.c:117: return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
	lcall	_bisiesto
	jnc	00110$
	mov	r6,#0x1d
	sjmp	00111$
00110$:
	mov	r6,#0x1c
00111$:
	mov	dpl,r6
	ret
00102$:
;	main.c:119: if((DS1307_time.Mes==4) || (DS1307_time.Mes==6) || (DS1307_time.Mes==9) || (DS1307_time.Mes==11))
	cjne	r7,#0x04,00130$
	sjmp	00103$
00130$:
	cjne	r7,#0x06,00131$
	sjmp	00103$
00131$:
	cjne	r7,#0x09,00132$
	sjmp	00103$
00132$:
	cjne	r7,#0x0b,00104$
00103$:
;	main.c:121: return 30;                    // Meses de 30 días.
	mov	dpl,#0x1e
	ret
00104$:
;	main.c:123: return 31;                        // Meses de 31 días.
	mov	dpl,#0x1f
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDPrintNumero'
;------------------------------------------------------------
;numero                    Allocated to registers r7 
;------------------------------------------------------------
;	main.c:126: void LCDPrintNumero(uint8_t numero)
;	-----------------------------------------
;	 function LCDPrintNumero
;	-----------------------------------------
_LCDPrintNumero:
	mov	r7,dpl
;	main.c:128: LCD_putChar((numero/10)+48);   // Imprime dígito decena.
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar7
	lcall	_LCD_putChar
	pop	ar7
;	main.c:129: LCD_putChar((numero%10)+48);   // Improme dígito unidad.
	mov	b,#0x0a
	mov	a,r7
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,a
	ljmp	_LCD_putChar
;------------------------------------------------------------
;Allocation info for local variables in function 'timeShow'
;------------------------------------------------------------
;	main.c:142: void timeShow(void)
;	-----------------------------------------
;	 function timeShow
;	-----------------------------------------
_timeShow:
;	main.c:144: LCD_gotoXY(1,0);
	mov	_LCD_gotoXY_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_LCD_gotoXY
;	main.c:145: LCDPrintNumero(DS1307_time.Dia);
	mov	dpl,(_DS1307_time + 0x0001)
	lcall	_LCDPrintNumero
;	main.c:146: LCD_putChar('/');
	mov	dpl,#0x2f
	lcall	_LCD_putChar
;	main.c:147: LCDPrintNumero(DS1307_time.Mes);
	mov	dpl,(_DS1307_time + 0x0002)
	lcall	_LCDPrintNumero
;	main.c:148: LCD_putChar('/');
	mov	dpl,#0x2f
	lcall	_LCD_putChar
;	main.c:149: LCDPrintNumero(DS1307_time.Ano);
	mov	dpl,(_DS1307_time + 0x0003)
	lcall	_LCDPrintNumero
;	main.c:150: LCD_print("   ");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:151: LCDPrintDiaSemana();
	lcall	_LCDPrintDiaSemana
;	main.c:152: LCD_print(" ");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:153: LCD_gotoXY(1,1);
	mov	_LCD_gotoXY_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_LCD_gotoXY
;	main.c:154: LCDPrintNumero(DS1307_time.Hora);
	mov	dpl,(_DS1307_time + 0x0004)
	lcall	_LCDPrintNumero
;	main.c:155: LCD_putChar(':');
	mov	dpl,#0x3a
	lcall	_LCD_putChar
;	main.c:156: LCDPrintNumero(DS1307_time.Minuto);
	mov	dpl,(_DS1307_time + 0x0005)
	lcall	_LCDPrintNumero
;	main.c:157: LCD_putChar(':');
	mov	dpl,#0x3a
	lcall	_LCD_putChar
;	main.c:158: LCDPrintNumero(DS1307_time.Segundo);
	mov	dpl,(_DS1307_time + 0x0006)
	lcall	_LCDPrintNumero
;	main.c:159: LCD_print("       ");
	mov	dptr,#___str_9
	mov	b,#0x80
	ljmp	_LCD_print
;------------------------------------------------------------
;Allocation info for local variables in function 'cicloTimeSet'
;------------------------------------------------------------
;limSup                    Allocated with name '_cicloTimeSet_PARM_2'
;lcdX                      Allocated with name '_cicloTimeSet_PARM_3'
;lcdY                      Allocated with name '_cicloTimeSet_PARM_4'
;dato                      Allocated with name '_cicloTimeSet_PARM_5'
;limInf                    Allocated to registers r7 
;------------------------------------------------------------
;	main.c:162: void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
;	-----------------------------------------
;	 function cicloTimeSet
;	-----------------------------------------
_cicloTimeSet:
	mov	r7,dpl
;	main.c:164: while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
	mov	r4,_cicloTimeSet_PARM_5
	mov	r5,(_cicloTimeSet_PARM_5 + 1)
	mov	r6,(_cicloTimeSet_PARM_5 + 2)
00109$:
	jnb	_P3_2,00110$
	jnb	_P3_3,00150$
	ljmp	00111$
00150$:
00110$:
;	main.c:166: LCD_cursorOff();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_LCD_cursorOff
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:167: if(P_INC==0)   // Si se ha pulsado INC
	jb	_P3_2,00107$
;	main.c:169: (*dato)++;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	inc	r3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	main.c:170: if(*dato>limSup) *dato=limInf;
	clr	c
	mov	a,_cicloTimeSet_PARM_2
	subb	a,r3
	jnc	00108$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	sjmp	00108$
00107$:
;	main.c:174: (*dato)--;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	dec	r3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	main.c:175: if((*dato<limInf)||(*dato==0xFF)) *dato=limSup; // Si limInf==0 (*Dato)-- puede ser 0xFF.
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r7
	jc	00103$
	cjne	r2,#0xff,00108$
00103$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,_cicloTimeSet_PARM_2
	lcall	__gptrput
00108$:
;	main.c:177: LCD_gotoXY(lcdX, lcdY);
	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
	mov	dpl,_cicloTimeSet_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_LCD_gotoXY
	pop	ar4
	pop	ar5
	pop	ar6
;	main.c:178: LCDPrintNumero(*dato);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar4
	lcall	_LCDPrintNumero
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:179: delay_ms(TIEMPO_REPETICION);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	ljmp	00109$
00111$:
;	main.c:181: if(P_SET==0)
	jb	_P3_4,00118$
;	main.c:183: k++;
	inc	_k
;	main.c:184: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
00112$:
	jb	_P3_4,00114$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00112$
00114$:
;	main.c:185: if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_cicloTimeSet_PARM_2
	subb	a,r7
	jnc	00118$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,_cicloTimeSet_PARM_2
	lcall	__gptrput
00118$:
;	main.c:188: LCD_gotoXY(++lcdX, lcdY);
	inc	_cicloTimeSet_PARM_3
	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
	mov	dpl,_cicloTimeSet_PARM_3
	lcall	_LCD_gotoXY
;	main.c:189: LCD_cursorUnderline();
	ljmp	_LCD_cursorUnderline
;------------------------------------------------------------
;Allocation info for local variables in function 'timeSet'
;------------------------------------------------------------
;	main.c:203: void timeSet(void)
;	-----------------------------------------
;	 function timeSet
;	-----------------------------------------
_timeSet:
;	main.c:212: LCD_gotoXY(7,1);           // Goto posición de Segundos en display.
	mov	_LCD_gotoXY_PARM_2,#0x01
	mov	dpl,#0x07
	lcall	_LCD_gotoXY
;	main.c:213: LCD_print("00");           // 00 en posición de Segundos del display.
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:214: LCD_cursorUnderline();     // Cursor On
	lcall	_LCD_cursorUnderline
;	main.c:217: DS1307_time.Segundo = 0;            // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
	mov	(_DS1307_time + 0x0006),#0x00
;	main.c:218: while(k<SALIR_SET_TIME)
00138$:
	mov	a,#0x100 - 0x07
	add	a,_k
	jnc	00215$
	ljmp	00140$
00215$:
;	main.c:220: while(k==SET_ANO)    cicloTimeSet(0,99,7,0,&DS1307_time.Ano);            // Set año.
00101$:
	mov	a,#0x01
	cjne	a,_k,00104$
	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0003)
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_2,#0x63
	mov	_cicloTimeSet_PARM_3,#0x07
	mov	_cicloTimeSet_PARM_4,#0x00
	mov	dpl,#0x00
	lcall	_cicloTimeSet
;	main.c:221: while(k==SET_MES)    cicloTimeSet(1,12,4,0,&DS1307_time.Mes);            // Set mes.
	sjmp	00101$
00104$:
	mov	a,#0x02
	cjne	a,_k,00107$
	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0002)
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_2,#0x0c
	mov	_cicloTimeSet_PARM_3,#0x04
	mov	_cicloTimeSet_PARM_4,#0x00
	mov	dpl,#0x01
	lcall	_cicloTimeSet
;	main.c:222: while(k==SET_DIA)    cicloTimeSet(1,diasDelMes(),1,0,&DS1307_time.Dia);  // Set día.
	sjmp	00104$
00107$:
	mov	a,#0x03
	cjne	a,_k,00110$
	lcall	_diasDelMes
	mov	_cicloTimeSet_PARM_2,dpl
	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0001)
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_3,#0x01
	mov	_cicloTimeSet_PARM_4,#0x00
	mov	dpl,#0x01
	lcall	_cicloTimeSet
;	main.c:223: while(k==SET_HORA)   cicloTimeSet(0,23,1,1,&DS1307_time.Hora);           // Set hora.
	sjmp	00107$
00110$:
	mov	a,#0x04
	cjne	a,_k,00113$
	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0004)
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_2,#0x17
	mov	_cicloTimeSet_PARM_3,#0x01
	mov	_cicloTimeSet_PARM_4,#0x01
	mov	dpl,#0x00
	lcall	_cicloTimeSet
;	main.c:224: while(k==SET_MINUTO) cicloTimeSet(0,59,4,1,&DS1307_time.Minuto);         // Set minutos.
	sjmp	00110$
00113$:
	mov	a,#0x05
	cjne	a,_k,00135$
	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0005)
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_2,#0x3b
	mov	_cicloTimeSet_PARM_3,#0x04
	mov	_cicloTimeSet_PARM_4,#0x01
	mov	dpl,#0x00
	lcall	_cicloTimeSet
;	main.c:225: while(k==SET_DIA_SEM)                                             // Set día de la semana.
	sjmp	00113$
00135$:
	mov	a,#0x06
	cjne	a,_k,00226$
	sjmp	00227$
00226$:
	ljmp	00138$
00227$:
;	main.c:230: if(P_INC==0)
	jb	_P3_2,00122$
;	main.c:232: DS1307_time.DiaSemana++;
	mov	a,_DS1307_time
	mov	r7,a
	inc	a
	mov	_DS1307_time,a
;	main.c:233: while(P_INC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
00116$:
	jb	_P3_2,00118$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00116$
00118$:
;	main.c:234: if(DS1307_time.DiaSemana==8)
	mov	a,#0x08
	cjne	a,_DS1307_time,00120$
;	main.c:236: DS1307_time.DiaSemana=1;
	mov	_DS1307_time,#0x01
00120$:
;	main.c:238: LCD_gotoXY(12,0);
	mov	_LCD_gotoXY_PARM_2,#0x00
	mov	dpl,#0x0c
	lcall	_LCD_gotoXY
;	main.c:239: LCDPrintDiaSemana();
	lcall	_LCDPrintDiaSemana
00122$:
;	main.c:241: if(P_DEC==0)
	jb	_P3_3,00129$
;	main.c:243: DS1307_time.DiaSemana--;
	mov	a,_DS1307_time
	mov	r7,a
	dec	a
	mov	_DS1307_time,a
;	main.c:244: while(P_DEC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
00123$:
	jb	_P3_3,00125$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00123$
00125$:
;	main.c:245: if(DS1307_time.DiaSemana==0)
	mov	a,_DS1307_time
	jnz	00127$
;	main.c:247: DS1307_time.DiaSemana=7;
	mov	_DS1307_time,#0x07
00127$:
;	main.c:249: LCD_gotoXY(12,0);
	mov	_LCD_gotoXY_PARM_2,#0x00
	mov	dpl,#0x0c
	lcall	_LCD_gotoXY
;	main.c:250: LCDPrintDiaSemana();
	lcall	_LCDPrintDiaSemana
00129$:
;	main.c:252: if(P_SET==0)
	jb	_P3_4,00134$
;	main.c:254: k=SALIR_SET_TIME;
	mov	_k,#0x07
;	main.c:255: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
00130$:
	jb	_P3_4,00134$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00130$
00134$:
;	main.c:257: LCD_gotoXY(14,0);
	mov	_LCD_gotoXY_PARM_2,#0x00
	mov	dpl,#0x0e
	lcall	_LCD_gotoXY
	ljmp	00135$
00140$:
;	main.c:260: LCD_cursorOff();
	ljmp	_LCD_cursorOff
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:270: void setup(void)
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:272: P_INC = 1;   // Configura Pulsadores como Entradas Digitales.
	setb	_P3_2
;	main.c:273: P_DEC = 1;
	setb	_P3_3
;	main.c:274: P_SET = 1;
	setb	_P3_4
;	main.c:276: LCD_init();  // Inicializa display LCD.
	ljmp	_LCD_init
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:285: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:287: setup();
	lcall	_setup
;	main.c:289: while(1)
00110$:
;	main.c:291: if(P_SET==0)                          // Comprueba si se ha pulsado SET
	jb	_P3_4,00105$
;	main.c:293: k=1;
	mov	_k,#0x01
;	main.c:294: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera fin pulsación y antirebote mecánico.
00101$:
	jb	_P3_4,00103$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00101$
00103$:
;	main.c:295: timeSet();
	lcall	_timeSet
;	main.c:296: DS1307_timeWrite();
	lcall	_DS1307_timeWrite
00105$:
;	main.c:299: DS1307_timeRead();
	lcall	_DS1307_timeRead
;	main.c:303: if(DS1307_time.Segundo != timeSec_old)
	mov	a,_timeSec_old
	cjne	a,(_DS1307_time + 0x0006),00131$
	sjmp	00107$
00131$:
;	main.c:305: timeShow();      // Actualiza display LCD con fecha y hora.
	lcall	_timeShow
;	main.c:306: timeSec_old = DS1307_time.Segundo;
	mov	_timeSec_old,(_DS1307_time + 0x0006)
;	main.c:307: refresco    = 800;
	mov	_refresco,#0x20
	mov	(_refresco + 1),#0x03
	sjmp	00108$
00107$:
;	main.c:309: else refresco = 50;
	mov	_refresco,#0x32
	mov	(_refresco + 1),#0x00
00108$:
;	main.c:310: delay_ms(refresco);
	mov	dpl,_refresco
	mov	dph,(_refresco + 1)
	lcall	_delay_ms
	sjmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "DOM"
	.db 0x00
___str_1:
	.ascii "LUN"
	.db 0x00
___str_2:
	.ascii "MAR"
	.db 0x00
___str_3:
	.ascii "MIE"
	.db 0x00
___str_4:
	.ascii "JUE"
	.db 0x00
___str_5:
	.ascii "VIE"
	.db 0x00
___str_6:
	.ascii "SAB"
	.db 0x00
___str_7:
	.ascii "   "
	.db 0x00
___str_8:
	.ascii " "
	.db 0x00
___str_9:
	.ascii "       "
	.db 0x00
___str_10:
	.ascii "00"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
