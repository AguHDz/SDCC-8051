;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DiaSemanaTxt
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
	.globl _LCD_gotoXY
	.globl _LCD_putChar
	.globl _LCD_command
	.globl _LCD_send
	.globl _LCD_send4Bits
	.globl _DS1307_sout
	.globl _DS1307_timeWrite
	.globl _DS1307_timeRead
	.globl _decimalToBCD
	.globl _BCDToDecimal
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
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
	.globl _B
	.globl _A
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
	.globl _I2C_readByte_PARM_1
	.globl _cicloTimeSet_PARM_5
	.globl _cicloTimeSet_PARM_4
	.globl _cicloTimeSet_PARM_3
	.globl _cicloTimeSet_PARM_2
	.globl _timeSec_old
	.globl _k
	.globl _LCD_gotoXY_PARM_2
	.globl _DS1307_time
	.globl _delay_x10_cycles
	.globl _delay_ms
	.globl _I2C_start
	.globl _I2C_reStart
	.globl _I2C_stop
	.globl _I2C_writeByte
	.globl _I2C_readByte
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
_A	=	0x00e0
_B	=	0x00f0
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
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
_k::
	.ds 1
_timeSec_old::
	.ds 1
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
_I2C_writeByte_ACKbit_1_33:
	.ds 1
_I2C_writeByte_sloc0_1_0:
	.ds 1
_I2C_readByte_PARM_1:
	.ds 1
_LCD_send4Bits_sloc0_1_0:
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
;	../Libs/delay.h:48: void delay_x10_cycles(uint8_t x10cycles)
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
;	../Libs/delay.h:66: __endasm;
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
;	../Libs/delay.h:98: void delay_ms(uint16_t delayTimeMS)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
;	../Libs/delay.h:127: __endasm;
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
;	../Libs/delay.h:129: CALL_DELAY_MS;
	mov	dpl,#0x1e
	lcall	_delay_x10_cycles
;	../Libs/delay.h:139: __endasm;
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
;	../Libs/I2C.h:22: void I2C_start(void)    //"start" function for communicate I2C
;	-----------------------------------------
;	 function I2C_start
;	-----------------------------------------
_I2C_start:
;	../Libs/I2C.h:24: SDA_HIGH;
	setb	_P1_0
;	../Libs/I2C.h:25: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:26: SDA_LOW;
	clr	_P1_0
;	../Libs/I2C.h:27: SCL_LOW;
	clr	_P1_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_reStart'
;------------------------------------------------------------
;	../Libs/I2C.h:30: void I2C_reStart(void)
;	-----------------------------------------
;	 function I2C_reStart
;	-----------------------------------------
_I2C_reStart:
;	../Libs/I2C.h:32: SCL_LOW;
	clr	_P1_1
;	../Libs/I2C.h:33: SDA_HIGH;
	setb	_P1_0
;	../Libs/I2C.h:34: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:35: SDA_LOW;
	clr	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_stop'
;------------------------------------------------------------
;	../Libs/I2C.h:38: void I2C_stop(void)   //"stop" function for communicate I2C
;	-----------------------------------------
;	 function I2C_stop
;	-----------------------------------------
_I2C_stop:
;	../Libs/I2C.h:40: SDA_LOW;
	clr	_P1_0
;	../Libs/I2C.h:41: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:42: SDA_HIGH;
	setb	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_writeByte'
;------------------------------------------------------------
;dato                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	../Libs/I2C.h:45: bool I2C_writeByte(uint8_t dato)   //write data to I2C
;	-----------------------------------------
;	 function I2C_writeByte
;	-----------------------------------------
_I2C_writeByte:
	mov	r7,dpl
;	../Libs/I2C.h:51: for(i=0; i<8; i++)
	mov	r6,#0x00
00102$:
;	../Libs/I2C.h:53: SDA = (dato & 0x80);       // SDA = bit de m�s peso del valor dato.
	mov	a,r7
	rlc	a
	mov  _I2C_writeByte_sloc0_1_0,c
	mov	_P1_0,c
;	../Libs/I2C.h:54: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:55: dato<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	../Libs/I2C.h:56: SCL_LOW;
	clr	_P1_1
;	../Libs/I2C.h:51: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	../Libs/I2C.h:60: SDA_INPUT;
	setb	_P1_0
;	../Libs/I2C.h:61: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:62: ACKbit = SDA;
	mov	c,_P1_0
	mov	_I2C_writeByte_ACKbit_1_33,c
;	../Libs/I2C.h:63: SCL_LOW;
	clr	_P1_1
;	../Libs/I2C.h:64: SDA_OUTPUT;
	clr	_P1_0
;	../Libs/I2C.h:65: return ACKbit;
	mov	c,_I2C_writeByte_ACKbit_1_33
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_readByte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;dato                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/I2C.h:68: uint8_t I2C_readByte(bool ACKBit)   //read data from I2C
;	-----------------------------------------
;	 function I2C_readByte
;	-----------------------------------------
_I2C_readByte:
;	../Libs/I2C.h:71: uint8_t dato = 0x00;
	mov	r7,#0x00
;	../Libs/I2C.h:74: SDA_INPUT;
	setb	_P1_0
;	../Libs/I2C.h:75: for(i=0; i<8; i++)
	mov	r6,#0x00
00104$:
;	../Libs/I2C.h:77: dato<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	../Libs/I2C.h:78: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:79: if(SDA) dato|=1;
	jnb	_P1_0,00102$
	orl	ar7,#0x01
00102$:
;	../Libs/I2C.h:80: SCL_LOW;
	clr	_P1_1
;	../Libs/I2C.h:75: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00104$
;	../Libs/I2C.h:84: SDA_OUTPUT;
	clr	_P1_0
;	../Libs/I2C.h:85: SDA = !ACKBit;
	mov	c,_I2C_readByte_PARM_1
	cpl	c
	mov	_P1_0,c
;	../Libs/I2C.h:86: SCL_HIGH;
	setb	_P1_1
;	../Libs/I2C.h:87: SCL_LOW;
	clr	_P1_1
;	../Libs/I2C.h:88: return dato;
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
;	../Libs/math.h:14: uint8_t BCDToDecimal(uint8_t bcdByte)
;	-----------------------------------------
;	 function BCDToDecimal
;	-----------------------------------------
_BCDToDecimal:
	mov	r7,dpl
;	../Libs/math.h:17: a=(((bcdByte & 0xF0) >> 4) * 10);
	mov	a,#0xf0
	anl	a,r7
	swap	a
	anl	a,#0x0f
	mov	b,#0x0a
	mul	ab
	mov	r6,a
;	../Libs/math.h:18: b=(bcdByte & 0x0F);
	mov	a,#0x0f
	anl	a,r7
;	../Libs/math.h:19: dec=a+b;
	add	a,r6
	mov	dpl,a
;	../Libs/math.h:20: return dec;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decimalToBCD'
;------------------------------------------------------------
;decimalByte               Allocated to registers r7 
;a                         Allocated to registers r6 
;b                         Allocated to registers r7 
;bcd                       Allocated to registers 
;------------------------------------------------------------
;	../Libs/math.h:31: uint8_t decimalToBCD (uint8_t decimalByte)
;	-----------------------------------------
;	 function decimalToBCD
;	-----------------------------------------
_decimalToBCD:
	mov	r7,dpl
;	../Libs/math.h:34: a=((decimalByte / 10) << 4);
	mov	b,#0x0a
	mov	a,r7
	div	ab
	swap	a
	anl	a,#0xf0
	mov	r6,a
;	../Libs/math.h:35: b= (decimalByte % 10);
	mov	b,#0x0a
	mov	a,r7
	div	ab
;	../Libs/math.h:36: bcd=a|b;
	mov	a,b
	orl	a,r6
	mov	dpl,a
;	../Libs/math.h:37: return bcd;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_timeRead'
;------------------------------------------------------------
;	../Libs/DS1307.h:91: void DS1307_timeRead(void)
;	-----------------------------------------
;	 function DS1307_timeRead
;	-----------------------------------------
_DS1307_timeRead:
;	../Libs/DS1307.h:93: I2C_start();     // Inicia comunicaci�n I2C.
	lcall	_I2C_start
;	../Libs/DS1307.h:94: I2C_writeByte(0xD0);  // Direcci�n I2C del DS1307.
	mov	dpl,#0xd0
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:95: I2C_writeByte(0x00);  // Primera direcci�n a leer/escribir.
	mov	dpl,#0x00
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:96: I2C_start();     // Reinicia comunicaci�n I2C.
	lcall	_I2C_start
;	../Libs/DS1307.h:97: I2C_writeByte(0xD1);  // DS1307 en Modo Escritura.
	mov	dpl,#0xd1
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:98: DS1307_time.Segundo   = BCDToDecimal(I2C_readByte(1)); // ASK = 1
	setb	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0006),a
;	../Libs/DS1307.h:99: DS1307_time.Minuto    = BCDToDecimal(I2C_readByte(1));
	setb	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0005),a
;	../Libs/DS1307.h:100: DS1307_time.Hora      = BCDToDecimal(I2C_readByte(1));
	setb	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0004),a
;	../Libs/DS1307.h:101: DS1307_time.DiaSemana = I2C_readByte(1);  // Valor 1...7 (igual en decimal que en BCD)
	setb	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	mov	a,dpl
	mov	_DS1307_time,a
;	../Libs/DS1307.h:102: DS1307_time.Dia       = BCDToDecimal(I2C_readByte(1));
	setb	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0001),a
;	../Libs/DS1307.h:103: DS1307_time.Mes       = BCDToDecimal(I2C_readByte(1));
	setb	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0002),a
;	../Libs/DS1307.h:104: DS1307_time.Ano       = BCDToDecimal(I2C_readByte(0)); // ASK = 0
	clr	_I2C_readByte_PARM_1
	lcall	_I2C_readByte
	lcall	_BCDToDecimal
	mov	a,dpl
	mov	(_DS1307_time + 0x0003),a
;	../Libs/DS1307.h:108: I2C_stop();
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_timeWrite'
;------------------------------------------------------------
;	../Libs/DS1307.h:117: void DS1307_timeWrite(void)
;	-----------------------------------------
;	 function DS1307_timeWrite
;	-----------------------------------------
_DS1307_timeWrite:
;	../Libs/DS1307.h:119: I2C_start();     // Inicia comunicaci�n I2C
	lcall	_I2C_start
;	../Libs/DS1307.h:120: I2C_writeByte(0xD0);  // Direcci�n I2C del DS1307.
	mov	dpl,#0xd0
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:121: I2C_writeByte(0x00);  // Primera direcci�n a leer/escribir.
	mov	dpl,#0x00
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:122: I2C_writeByte(decimalToBCD(DS1307_time.Segundo));
	mov	dpl,(_DS1307_time + 0x0006)
	lcall	_decimalToBCD
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:123: I2C_writeByte(decimalToBCD(DS1307_time.Minuto));
	mov	dpl,(_DS1307_time + 0x0005)
	lcall	_decimalToBCD
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:124: I2C_writeByte(decimalToBCD(DS1307_time.Hora));
	mov	dpl,(_DS1307_time + 0x0004)
	lcall	_decimalToBCD
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:125: I2C_writeByte(DS1307_time.DiaSemana);  // Valor 1...7 (igual en decimal que en BCD)
	mov	dpl,_DS1307_time
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:126: I2C_writeByte(decimalToBCD(DS1307_time.Dia));
	mov	dpl,(_DS1307_time + 0x0001)
	lcall	_decimalToBCD
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:127: I2C_writeByte(decimalToBCD(DS1307_time.Mes));
	mov	dpl,(_DS1307_time + 0x0002)
	lcall	_decimalToBCD
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:128: I2C_writeByte(decimalToBCD(DS1307_time.Ano));
	mov	dpl,(_DS1307_time + 0x0003)
	lcall	_decimalToBCD
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:130: I2C_stop();
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'DS1307_sout'
;------------------------------------------------------------
;confSout                  Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/DS1307.h:140: void DS1307_sout(uint8_t confSout)
;	-----------------------------------------
;	 function DS1307_sout
;	-----------------------------------------
_DS1307_sout:
	mov	r7,dpl
;	../Libs/DS1307.h:142: I2C_start();                 // Inicia comunicaci�n I2C
	push	ar7
	lcall	_I2C_start
;	../Libs/DS1307.h:143: I2C_writeByte(0xD0);         // Direcci�n I2C del DS1307.
	mov	dpl,#0xd0
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:144: I2C_writeByte(0x07);         // Escribe en la direcci�n 07h (configuraci�n)
	mov	dpl,#0x07
	lcall	_I2C_writeByte
	pop	ar7
;	../Libs/DS1307.h:145: I2C_writeByte(confSout);     // Escribe byte de configuraci�n del DS1307.
	mov	dpl,r7
	lcall	_I2C_writeByte
;	../Libs/DS1307.h:146: I2C_stop();
	ljmp	_I2C_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_send4Bits'
;------------------------------------------------------------
;date                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.h:169: void LCD_send4Bits(char date)
;	-----------------------------------------
;	 function LCD_send4Bits
;	-----------------------------------------
_LCD_send4Bits:
;	../Libs/LCD.h:171: LCD_DATA_4 = (date & BIT4);
	mov	a,dpl
	mov	r7,a
	mov	c,acc[4]
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_4,c
;	../Libs/LCD.h:172: LCD_DATA_5 = (date & BIT5);
	mov	a,r7
	mov	c,acc[5]
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_5,c
;	../Libs/LCD.h:173: LCD_DATA_6 = (date & BIT6);
	mov	a,r7
	mov	c,acc[6]
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_6,c
;	../Libs/LCD.h:174: LCD_DATA_7 = (date & BIT7);
	mov	a,r7
	rlc	a
	mov  _LCD_send4Bits_sloc0_1_0,c
	mov	_P1_7,c
;	../Libs/LCD.h:175: LCD_EN     = 1;
	setb	_P1_3
;	../Libs/LCD.h:176: delay_ms(2);
	mov	dptr,#0x0002
	lcall	_delay_ms
;	../Libs/LCD.h:177: LCD_EN     = 0;
	clr	_P1_3
;	../Libs/LCD.h:178: delay_ms(2);
	mov	dptr,#0x0002
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_send'
;------------------------------------------------------------
;date                      Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.h:181: void LCD_send(char date)
;	-----------------------------------------
;	 function LCD_send
;	-----------------------------------------
_LCD_send:
;	../Libs/LCD.h:183: LCD_send4Bits(date);
	mov  r7,dpl
	push	ar7
	lcall	_LCD_send4Bits
	pop	ar7
;	../Libs/LCD.h:184: LCD_send4Bits(date<<4);
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
;	../Libs/LCD.h:199: void LCD_command(char comm)
;	-----------------------------------------
;	 function LCD_command
;	-----------------------------------------
_LCD_command:
	mov	r7,dpl
;	../Libs/LCD.h:201: LCD_RS = LCD_CmdMode;
	clr	_P1_2
;	../Libs/LCD.h:202: LCD_send(comm);
	mov	dpl,r7
	ljmp	_LCD_send
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putChar'
;------------------------------------------------------------
;chr                       Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.h:205: void LCD_putChar(char chr)
;	-----------------------------------------
;	 function LCD_putChar
;	-----------------------------------------
_LCD_putChar:
	mov	r7,dpl
;	../Libs/LCD.h:207: LCD_RS = LCD_CharMode;
	setb	_P1_2
;	../Libs/LCD.h:208: LCD_send(chr);
	mov	dpl,r7
	ljmp	_LCD_send
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_gotoXY'
;------------------------------------------------------------
;fila                      Allocated with name '_LCD_gotoXY_PARM_2'
;columna                   Allocated to registers r7 
;------------------------------------------------------------
;	../Libs/LCD.h:212: void LCD_gotoXY(char columna, char fila)
;	-----------------------------------------
;	 function LCD_gotoXY
;	-----------------------------------------
_LCD_gotoXY:
	mov	r7,dpl
;	../Libs/LCD.h:214: if(fila == 0)
	mov	a,_LCD_gotoXY_PARM_2
	jnz	00110$
;	../Libs/LCD.h:215: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_0);
	mov	a,#0x80
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00110$:
;	../Libs/LCD.h:216: else if (fila == 1)
	mov	a,#0x01
	cjne	a,_LCD_gotoXY_PARM_2,00107$
;	../Libs/LCD.h:217: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_1);
	mov	a,#0xc0
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00107$:
;	../Libs/LCD.h:218: else if (fila == 2)
	mov	a,#0x02
	cjne	a,_LCD_gotoXY_PARM_2,00104$
;	../Libs/LCD.h:219: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_2);
	mov	a,#0x94
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00104$:
;	../Libs/LCD.h:220: else if (fila == 3)
	mov	a,#0x03
	cjne	a,_LCD_gotoXY_PARM_2,00112$
;	../Libs/LCD.h:221: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_3);
	mov	a,#0xd4
	add	a,r7
	mov	dpl,a
	ljmp	_LCD_command
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_print'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	../Libs/LCD.h:224: void LCD_print(char *str)
;	-----------------------------------------
;	 function LCD_print
;	-----------------------------------------
_LCD_print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../Libs/LCD.h:226: while(*str)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	../Libs/LCD.h:228: LCD_putChar(*str);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_putChar
	pop	ar5
	pop	ar6
	pop	ar7
;	../Libs/LCD.h:229: str++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
;	../Libs/LCD.h:233: void LCD_init(void)
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
;	../Libs/LCD.h:235: delay_ms(200);   // Espera para asegurar tension estable tras arranque.
	mov	dptr,#0x00c8
	lcall	_delay_ms
;	../Libs/LCD.h:238: LCD_DATA_4 = 0;              // Pines iniciados como salida.
	clr	_P1_4
;	../Libs/LCD.h:239: LCD_DATA_5 = 0;
	clr	_P1_5
;	../Libs/LCD.h:240: LCD_DATA_6 = 0;
	clr	_P1_6
;	../Libs/LCD.h:241: LCD_DATA_7 = 0;
	clr	_P1_7
;	../Libs/LCD.h:242: LCD_RS     = 0;
	clr	_P1_2
;	../Libs/LCD.h:243: LCD_EN     = 0;
	clr	_P1_3
;	../Libs/LCD.h:251: delay_ms(30);    // Espera 15 ms o más.
	mov	dptr,#0x001e
	lcall	_delay_ms
;	../Libs/LCD.h:255: LCD_send4Bits(0b00110000);
	mov	dpl,#0x30
	lcall	_LCD_send4Bits
;	../Libs/LCD.h:256: delay_ms(5);  // Espera > 4.1 ms
	mov	dptr,#0x0005
	lcall	_delay_ms
;	../Libs/LCD.h:257: LCD_send4Bits(0b00110000);
	mov	dpl,#0x30
	lcall	_LCD_send4Bits
;	../Libs/LCD.h:258: delay_ms(1);  // Espera > 100 us
	mov	dptr,#0x0001
	lcall	_delay_ms
;	../Libs/LCD.h:259: LCD_send4Bits(0b00110000);
	mov	dpl,#0x30
	lcall	_LCD_send4Bits
;	../Libs/LCD.h:260: LCD_send4Bits(0b00100000);
	mov	dpl,#0x20
	lcall	_LCD_send4Bits
;	../Libs/LCD.h:261: LCD_command(LCD_CMD_FUNCTION_SET + LCD_CMD_4BIT_INTERFACE + LCD_CMD_2LINES + LCD_CMD_F_FONT_5_8);
	mov	dpl,#0x28
	lcall	_LCD_command
;	../Libs/LCD.h:274: LCD_OFF;
	mov	dpl,#0x08
	lcall	_LCD_command
;	../Libs/LCD.h:275: LCD_command(LCD_CMD_CHARACTER_ENTRY_MODE + LCD_CMD_INCREMENT + LCD_CMD_DISPLAY_SHIFT_OFF);
	mov	dpl,#0x06
	lcall	_LCD_command
;	../Libs/LCD.h:277: LCD_ON;
	mov	dpl,#0x0c
	lcall	_LCD_command
;	../Libs/LCD.h:279: LCD_CLEAR;
	mov	dpl,#0x01
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDPrintDiaSemana'
;------------------------------------------------------------
;	main.c:58: void LCDPrintDiaSemana(void)
;	-----------------------------------------
;	 function LCDPrintDiaSemana
;	-----------------------------------------
_LCDPrintDiaSemana:
;	main.c:60: LCD_print(DiaSemanaTxt[DS1307_time.DiaSemana-1]);
	mov	a,_DS1307_time
	dec	a
	mov	b,#0x04
	mul	ab
	add	a,#_DiaSemanaTxt
	mov	r6,a
	mov	a,#(_DiaSemanaTxt >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x80
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	ljmp	_LCD_print
;------------------------------------------------------------
;Allocation info for local variables in function 'bisiesto'
;------------------------------------------------------------
;	main.c:79: bool bisiesto(void)
;	-----------------------------------------
;	 function bisiesto
;	-----------------------------------------
_bisiesto:
;	main.c:82: return !(DS1307_time.Ano%4);
	mov	a,#0x03
	anl	a,(_DS1307_time + 0x0003)
	mov	r7,a
	cjne	a,#0x01,00103$
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'diasDelMes'
;------------------------------------------------------------
;	main.c:92: uint8_t diasDelMes(void)
;	-----------------------------------------
;	 function diasDelMes
;	-----------------------------------------
_diasDelMes:
;	main.c:94: if(DS1307_time.Mes==2)                        // Mes = febrero
	mov	r7,(_DS1307_time + 0x0002)
	cjne	r7,#0x02,00102$
;	main.c:96: return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
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
;	main.c:98: if((DS1307_time.Mes==4) || (DS1307_time.Mes==6) || (DS1307_time.Mes==9) || (DS1307_time.Mes==11))
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
;	main.c:100: return 30;                    // Meses de 30 días.
	mov	dpl,#0x1e
	ret
00104$:
;	main.c:102: return 31;                        // Meses de 31 días.
	mov	dpl,#0x1f
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDPrintNumero'
;------------------------------------------------------------
;numero                    Allocated to registers r7 
;------------------------------------------------------------
;	main.c:105: void LCDPrintNumero(uint8_t numero)
;	-----------------------------------------
;	 function LCDPrintNumero
;	-----------------------------------------
_LCDPrintNumero:
	mov	r7,dpl
;	main.c:107: LCD_putChar((numero/10)+48);   // Imprime dígito decena.
	mov	b,#0x0a
	mov	a,r7
	div	ab
	add	a,#0x30
	mov	dpl,a
	push	ar7
	lcall	_LCD_putChar
	pop	ar7
;	main.c:108: LCD_putChar((numero%10)+48);   // Improme dígito unidad.
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
;	main.c:121: void timeShow(void)
;	-----------------------------------------
;	 function timeShow
;	-----------------------------------------
_timeShow:
;	main.c:123: LCD_gotoXY(1,0);
	mov	_LCD_gotoXY_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_LCD_gotoXY
;	main.c:124: LCDPrintNumero(DS1307_time.Dia);
	mov	dpl,(_DS1307_time + 0x0001)
	lcall	_LCDPrintNumero
;	main.c:125: LCD_putChar('/');
	mov	dpl,#0x2f
	lcall	_LCD_putChar
;	main.c:126: LCDPrintNumero(DS1307_time.Mes);
	mov	dpl,(_DS1307_time + 0x0002)
	lcall	_LCDPrintNumero
;	main.c:127: LCD_putChar('/');
	mov	dpl,#0x2f
	lcall	_LCD_putChar
;	main.c:128: LCDPrintNumero(DS1307_time.Ano);
	mov	dpl,(_DS1307_time + 0x0003)
	lcall	_LCDPrintNumero
;	main.c:129: LCD_print("   ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:130: LCDPrintDiaSemana();
	lcall	_LCDPrintDiaSemana
;	main.c:131: LCD_print(" ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:132: LCD_gotoXY(1,1);
	mov	_LCD_gotoXY_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_LCD_gotoXY
;	main.c:133: LCDPrintNumero(DS1307_time.Hora);
	mov	dpl,(_DS1307_time + 0x0004)
	lcall	_LCDPrintNumero
;	main.c:134: LCD_putChar(':');
	mov	dpl,#0x3a
	lcall	_LCD_putChar
;	main.c:135: LCDPrintNumero(DS1307_time.Minuto);
	mov	dpl,(_DS1307_time + 0x0005)
	lcall	_LCDPrintNumero
;	main.c:136: LCD_putChar(':');
	mov	dpl,#0x3a
	lcall	_LCD_putChar
;	main.c:137: LCDPrintNumero(DS1307_time.Segundo);
	mov	dpl,(_DS1307_time + 0x0006)
	lcall	_LCDPrintNumero
;	main.c:138: LCD_print("       ");
	mov	dptr,#___str_2
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
;	main.c:141: void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
;	-----------------------------------------
;	 function cicloTimeSet
;	-----------------------------------------
_cicloTimeSet:
	mov	r7,dpl
;	main.c:143: while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
	mov	a,#0x0c
	cjne	a,_cicloTimeSet_PARM_3,00160$
	mov	a,#0x01
	sjmp	00161$
00160$:
	clr	a
00161$:
	mov	r6,a
	mov	r3,_cicloTimeSet_PARM_5
	mov	r4,(_cicloTimeSet_PARM_5 + 1)
	mov	r5,(_cicloTimeSet_PARM_5 + 2)
00112$:
	jnb	_P3_2,00113$
	jnb	_P3_3,00163$
	ljmp	00114$
00163$:
00113$:
;	main.c:145: LCD_CURSOR_OFF;
	mov	dpl,#0x0c
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_LCD_command
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:146: if(P_INC==0)   // Si se ha pulsado INC
	jb	_P3_2,00107$
;	main.c:148: (*dato)++;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	inc	r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	main.c:149: if(*dato>limSup) *dato=limInf;
	clr	c
	mov	a,_cicloTimeSet_PARM_2
	subb	a,r2
	jnc	00108$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
	sjmp	00108$
00107$:
;	main.c:153: (*dato)--;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	dec	r2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	main.c:154: if((*dato<limInf)||(*dato==0xFF)) *dato=limSup; // Si limInf==0 (*Dato)-- puede ser 0xFF.
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,r2
	subb	a,r7
	jc	00103$
	cjne	r1,#0xff,00108$
00103$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_cicloTimeSet_PARM_2
	lcall	__gptrput
00108$:
;	main.c:156: LCD_gotoXY(lcdX, lcdY);
	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
	mov	dpl,_cicloTimeSet_PARM_3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_LCD_gotoXY
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:157: if(lcdX==12) LCDPrintDiaSemana();  // Si se está editando del día de la semana, se imprime el texto.
	mov	a,r6
	jz	00110$
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_LCDPrintDiaSemana
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00111$
00110$:
;	main.c:158: else LCDPrintNumero(*dato);        // El resto son variables numéricas de 2 dígitos.
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_LCDPrintNumero
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00111$:
;	main.c:159: delay_ms(TIEMPO_REPETICION);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	ljmp	00112$
00114$:
;	main.c:161: if(P_SET==0)
	jb	_P3_4,00121$
;	main.c:163: k++;
	inc	_k
;	main.c:164: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
00115$:
	jb	_P3_4,00117$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00115$
00117$:
;	main.c:165: if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_cicloTimeSet_PARM_2
	subb	a,r7
	jnc	00121$
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_cicloTimeSet_PARM_2
	lcall	__gptrput
00121$:
;	main.c:168: if(lcdX==12) lcdX++;       // Si se está editando el día de la semana, se desplaza el cursor
	mov	a,r6
	jz	00123$
	inc	_cicloTimeSet_PARM_3
00123$:
;	main.c:171: LCD_gotoXY(++lcdX, lcdY);
	inc	_cicloTimeSet_PARM_3
	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
	mov	dpl,_cicloTimeSet_PARM_3
	lcall	_LCD_gotoXY
;	main.c:172: LCD_CURSOR_UNDELINE;       // Cursor On
	mov	dpl,#0x0e
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'timeSet'
;------------------------------------------------------------
;	main.c:184: void timeSet(void)
;	-----------------------------------------
;	 function timeSet
;	-----------------------------------------
_timeSet:
;	main.c:193: LCD_gotoXY(7,1);           // Goto posición de Segundos en display.
	mov	_LCD_gotoXY_PARM_2,#0x01
	mov	dpl,#0x07
	lcall	_LCD_gotoXY
;	main.c:194: LCD_print("00");           // 00 en posición de Segundos del display.
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_LCD_print
;	main.c:195: LCD_CURSOR_UNDELINE;       // Cursor On
	mov	dpl,#0x0e
	lcall	_LCD_command
;	main.c:196: DS1307_time.Segundo = 0;   // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
	mov	(_DS1307_time + 0x0006),#0x00
;	main.c:197: while(k<SALIR_SET_TIME)
00119$:
	mov	a,#0x100 - 0x07
	add	a,_k
	jnc	00163$
	ljmp	00121$
00163$:
;	main.c:199: while(k==SET_ANO)     cicloTimeSet(0,99,7,0,&DS1307_time.Ano);            // Set año.
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
;	main.c:200: while(k==SET_MES)     cicloTimeSet(1,12,4,0,&DS1307_time.Mes);            // Set mes.
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
;	main.c:201: while(k==SET_DIA)     cicloTimeSet(1,diasDelMes(),1,0,&DS1307_time.Dia);  // Set día.
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
;	main.c:202: while(k==SET_HORA)    cicloTimeSet(0,23,1,1,&DS1307_time.Hora);           // Set hora.
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
;	main.c:203: while(k==SET_MINUTO)  cicloTimeSet(0,59,4,1,&DS1307_time.Minuto);         // Set minutos.
	sjmp	00110$
00113$:
	mov	a,#0x05
	cjne	a,_k,00116$
	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0005)
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_2,#0x3b
	mov	_cicloTimeSet_PARM_3,#0x04
	mov	_cicloTimeSet_PARM_4,#0x01
	mov	dpl,#0x00
	lcall	_cicloTimeSet
;	main.c:204: while(k==SET_DIA_SEM) cicloTimeSet(1,7,12,0,&DS1307_time.DiaSemana);      // Set día de la semana.
	sjmp	00113$
00116$:
	mov	a,#0x06
	cjne	a,_k,00174$
	sjmp	00175$
00174$:
	ljmp	00119$
00175$:
	mov	_cicloTimeSet_PARM_5,#_DS1307_time
	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
	mov	_cicloTimeSet_PARM_2,#0x07
	mov	_cicloTimeSet_PARM_3,#0x0c
	mov	_cicloTimeSet_PARM_4,#0x00
	mov	dpl,#0x01
	lcall	_cicloTimeSet
	sjmp	00116$
00121$:
;	main.c:206: LCD_CURSOR_OFF;
	mov	dpl,#0x0c
	ljmp	_LCD_command
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:216: void setup(void)
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:218: P_INC = 1;   // Configura Pulsadores como Entradas Digitales.
	setb	_P3_2
;	main.c:219: P_DEC = 1;
	setb	_P3_3
;	main.c:220: P_SET = 1;
	setb	_P3_4
;	main.c:221: SOUT  = 1;
	setb	_P3_5
;	main.c:223: DS1307_sout(0x90);  // Configura 1 Hz en salida SOUT del DS1307
	mov	dpl,#0x90
	lcall	_DS1307_sout
;	main.c:225: LCD_init();  // Inicializa display LCD.
	ljmp	_LCD_init
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:234: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:236: setup();
	lcall	_setup
;	main.c:238: while(1)
00113$:
;	main.c:240: if(P_SET==0)                          // Comprueba si se ha pulsado SET
	jb	_P3_4,00105$
;	main.c:242: k=1;
	mov	_k,#0x01
;	main.c:243: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera fin pulsación y antirebote mecánico.
00101$:
	jb	_P3_4,00103$
	mov	dptr,#0x000a
	lcall	_delay_ms
	sjmp	00101$
00103$:
;	main.c:244: timeSet();
	lcall	_timeSet
;	main.c:245: DS1307_timeWrite();
	lcall	_DS1307_timeWrite
00105$:
;	main.c:248: DS1307_timeRead();
	lcall	_DS1307_timeRead
;	main.c:250: timeShow();      // Actualiza display LCD con fecha y hora.
	lcall	_timeShow
;	main.c:252: while(SOUT);
00106$:
	jb	_P3_5,00106$
;	main.c:253: while(!SOUT);
00109$:
	jb	_P3_5,00113$
	sjmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DiaSemanaTxt:
	.ascii "DOM"
	.db 0x00
	.ascii "LUN"
	.db 0x00
	.ascii "MAR"
	.db 0x00
	.ascii "MIE"
	.db 0x00
	.ascii "JUE"
	.db 0x00
	.ascii "VIE"
	.db 0x00
	.ascii "SAB"
	.db 0x00
___str_0:
	.ascii "   "
	.db 0x00
___str_1:
	.ascii " "
	.db 0x00
___str_2:
	.ascii "       "
	.db 0x00
___str_3:
	.ascii "00"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
