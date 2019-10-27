;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _Write_Max7219_PARM_2
	.globl _Write_Max7219_byte
	.globl _Write_Max7219
	.globl _Init_Max7219
	.globl _delay
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_dato_1_6:
	.ds 41
_Write_Max7219_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_Write_Max7219_byte_sloc0_1_0:
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;j                         Allocated to registers r6 
;dot                       Allocated to registers r7 
;dato                      Allocated with name '_main_dato_1_6'
;------------------------------------------------------------
;	main.c:49: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:74: unsigned char dot=0b00000000;
	mov	r7,#0x00
;	main.c:75: const char dato[]={
	mov	_main_dato_1_6,#0x7e
	mov	(_main_dato_1_6 + 0x0001),#0x30
	mov	(_main_dato_1_6 + 0x0002),#0x6d
	mov	(_main_dato_1_6 + 0x0003),#0x79
	mov	(_main_dato_1_6 + 0x0004),#0x33
	mov	(_main_dato_1_6 + 0x0005),#0x5b
	mov	(_main_dato_1_6 + 0x0006),#0x5f
	mov	(_main_dato_1_6 + 0x0007),#0x70
	mov	(_main_dato_1_6 + 0x0008),#0x7f
	mov	(_main_dato_1_6 + 0x0009),#0x7b
	mov	(_main_dato_1_6 + 0x000a),#0x77
	mov	(_main_dato_1_6 + 0x000b),#0x1f
	mov	(_main_dato_1_6 + 0x000c),#0x4e
	mov	(_main_dato_1_6 + 0x000d),#0x3d
	mov	(_main_dato_1_6 + 0x000e),#0x4f
	mov	(_main_dato_1_6 + 0x000f),#0x47
	mov	(_main_dato_1_6 + 0x0010),#0x0d
	mov	(_main_dato_1_6 + 0x0011),#0x6f
	mov	(_main_dato_1_6 + 0x0012),#0x37
	mov	(_main_dato_1_6 + 0x0013),#0x17
	mov	(_main_dato_1_6 + 0x0014),#0x04
	mov	(_main_dato_1_6 + 0x0015),#0x06
	mov	(_main_dato_1_6 + 0x0016),#0x38
	mov	(_main_dato_1_6 + 0x0017),#0x0e
	mov	(_main_dato_1_6 + 0x0018),#0x76
	mov	(_main_dato_1_6 + 0x0019),#0x15
	mov	(_main_dato_1_6 + 0x001a),#0x55
	mov	(_main_dato_1_6 + 0x001b),#0x1d
	mov	(_main_dato_1_6 + 0x001c),#0x67
	mov	(_main_dato_1_6 + 0x001d),#0x05
	mov	(_main_dato_1_6 + 0x001e),#0x0f
	mov	(_main_dato_1_6 + 0x001f),#0x3e
	mov	(_main_dato_1_6 + 0x0020),#0x1c
	mov	(_main_dato_1_6 + 0x0021),#0x3b
	mov	(_main_dato_1_6 + 0x0022),#0x40
	mov	(_main_dato_1_6 + 0x0023),#0x08
	mov	(_main_dato_1_6 + 0x0024),#0x01
	mov	(_main_dato_1_6 + 0x0025),#0x31
	mov	(_main_dato_1_6 + 0x0026),#0x09
	mov	(_main_dato_1_6 + 0x0027),#0x80
;	1-genFromRTrack replaced	mov	(_main_dato_1_6 + 0x0028),#0x00
	mov	(_main_dato_1_6 + 0x0028),r7
;	main.c:124: Init_Max7219();
	push	ar7
	lcall	_Init_Max7219
	pop	ar7
;	main.c:126: while(TRUE)
00108$:
;	main.c:129: Write_Max7219(1,dato[HACHE]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x0012)
	mov	dpl,#0x01
	push	ar7
	lcall	_Write_Max7219
;	main.c:130: Write_Max7219(2,dato[CERO]);
	mov	_Write_Max7219_PARM_2,_main_dato_1_6
	mov	dpl,#0x02
	lcall	_Write_Max7219
;	main.c:131: Write_Max7219(3,dato[ELE]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x0017)
	mov	dpl,#0x03
	lcall	_Write_Max7219
;	main.c:132: Write_Max7219(4,dato[AA]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x000a)
	mov	dpl,#0x04
	lcall	_Write_Max7219
;	main.c:133: delay();
	lcall	_delay
;	main.c:134: delay();
	lcall	_delay
;	main.c:135: delay();
	lcall	_delay
;	main.c:136: delay();
	lcall	_delay
;	main.c:137: delay();
	lcall	_delay
;	main.c:138: delay();
	lcall	_delay
;	main.c:139: delay();
	lcall	_delay
;	main.c:142: Write_Max7219(1,dato[CINCO]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x0005)
	mov	dpl,#0x01
	lcall	_Write_Max7219
;	main.c:143: Write_Max7219(2,dato[AA]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x000a)
	mov	dpl,#0x02
	lcall	_Write_Max7219
;	main.c:145: Write_Max7219(4,dato[UU]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x001f)
	mov	dpl,#0x04
	lcall	_Write_Max7219
;	main.c:146: Write_Max7219(5,dato[de]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x000d)
	mov	dpl,#0x05
	lcall	_Write_Max7219
;	main.c:147: Write_Max7219(6,dato[oo]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x001b)
	mov	dpl,#0x06
	lcall	_Write_Max7219
;	main.c:148: Write_Max7219(7,dato[CINCO]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x0005)
	mov	dpl,#0x07
	lcall	_Write_Max7219
;	main.c:149: delay();
	lcall	_delay
;	main.c:150: delay();
	lcall	_delay
;	main.c:151: delay();
	lcall	_delay
;	main.c:152: delay();
	lcall	_delay
;	main.c:153: delay();
	lcall	_delay
;	main.c:154: delay();
	lcall	_delay
;	main.c:155: delay();
	lcall	_delay
;	main.c:158: Write_Max7219(1,dato[AA]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x000a)
	mov	dpl,#0x01
	lcall	_Write_Max7219
;	main.c:159: Write_Max7219(2,BLANCO);
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_Write_Max7219
;	main.c:160: Write_Max7219(3,dato[te]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x001e)
	mov	dpl,#0x03
	lcall	_Write_Max7219
;	main.c:161: Write_Max7219(4,dato[oo]);
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x001b)
	mov	dpl,#0x04
	lcall	_Write_Max7219
;	main.c:165: delay();
	lcall	_delay
;	main.c:166: delay();
	lcall	_delay
;	main.c:167: delay();
	lcall	_delay
;	main.c:168: delay();
	lcall	_delay
;	main.c:169: delay();
	lcall	_delay
;	main.c:170: delay();
	lcall	_delay
;	main.c:171: delay();
	lcall	_delay
;	main.c:172: delay();
	lcall	_delay
	pop	ar7
;	main.c:175: for (i=0; i<9; i++)
	mov	r6,#0x00
00110$:
;	main.c:177: Write_Max7219(i,(dato[BARRA_INFERIOR]));
	mov	_Write_Max7219_PARM_2,(_main_dato_1_6 + 0x0023)
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_Write_Max7219
;	main.c:178: delay();
	lcall	_delay
	pop	ar6
;	main.c:179: Write_Max7219(i,BLANCO);
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,r6
	push	ar6
	lcall	_Write_Max7219
	pop	ar6
	pop	ar7
;	main.c:175: for (i=0; i<9; i++)
	inc	r6
	cjne	r6,#0x09,00145$
00145$:
	jc	00110$
;	main.c:183: for(j=0;j<41;j++)
	mov	r6,#0x00
;	main.c:185: for(i=0; i<8; i++)
00120$:
	mov	a,r6
	add	a,#_main_dato_1_6
	mov	r1,a
	mov	r5,#0x00
00112$:
;	main.c:187: Write_Max7219(i,(dato[j]));
	mov	_Write_Max7219_PARM_2,@r1
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_Write_Max7219
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:185: for(i=0; i<8; i++)
	inc	r5
	cjne	r5,#0x08,00147$
00147$:
	jc	00112$
;	main.c:189: Write_Max7219(i,(dato[j]|dot));
	mov	ar4,@r1
	mov	a,r7
	orl	a,r4
	mov	_Write_Max7219_PARM_2,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_Write_Max7219
;	main.c:190: delay();
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:192: if (dot) dot = 0;
	mov	a,r7
	jz	00104$
	mov	r7,#0x00
	sjmp	00115$
00104$:
;	main.c:193: else dot = PUNTO;
	mov	r7,#0x80
00115$:
;	main.c:183: for(j=0;j<41;j++)
	inc	r6
	cjne	r6,#0x29,00150$
00150$:
	jc	00120$
;	main.c:196: Write_Max7219(8,BLANCO);
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,#0x08
	push	ar7
	lcall	_Write_Max7219
	pop	ar7
	ljmp	00108$
;------------------------------------------------------------
;Allocation info for local variables in function 'Write_Max7219_byte'
;------------------------------------------------------------
;temp                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:205: void Write_Max7219_byte(unsigned char temp)
;	-----------------------------------------
;	 function Write_Max7219_byte
;	-----------------------------------------
_Write_Max7219_byte:
	mov	r7,dpl
;	main.c:208: for (i=0; i<8; i++)
	mov	r6,#0x00
00102$:
;	main.c:210: CLK = LOW;
	clr	_P3_7
;	main.c:211: DIN = (__sbit)(temp&MSB); //(bit)(temp&MSB);
	mov	a,r7
	rlc	a
	mov  _Write_Max7219_byte_sloc0_1_0,c
	mov	_P3_6,c
;	main.c:212: temp <<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	main.c:213: CLK = HIGH;
	setb	_P3_7
;	main.c:208: for (i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00110$
00110$:
	jc	00102$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Write_Max7219'
;------------------------------------------------------------
;dat                       Allocated with name '_Write_Max7219_PARM_2'
;address                   Allocated to registers 
;------------------------------------------------------------
;	main.c:221: void Write_Max7219(unsigned char address,unsigned char dat)
;	-----------------------------------------
;	 function Write_Max7219
;	-----------------------------------------
_Write_Max7219:
;	main.c:223: LOAD = LOW;
	clr	_P3_5
;	main.c:224: Write_Max7219_byte(address);
	lcall	_Write_Max7219_byte
;	main.c:225: Write_Max7219_byte(dat);
	mov	dpl,_Write_Max7219_PARM_2
	lcall	_Write_Max7219_byte
;	main.c:226: LOAD = HIGH;
	setb	_P3_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Max7219'
;------------------------------------------------------------
;	main.c:233: void Init_Max7219(void)
;	-----------------------------------------
;	 function Init_Max7219
;	-----------------------------------------
_Init_Max7219:
;	main.c:235: Write_Max7219(SHUT_DOWN, 	0x01);   //Normal Operation XXXXXXX1 Shutdown Mode   XXXXXXXX0
	mov	_Write_Max7219_PARM_2,#0x01
	mov	dpl,#0x0c
	lcall	_Write_Max7219
;	main.c:236: Write_Max7219(DISPLAY_TEST, 0x00);   //Normal Operation XXXXXXX0 Display Test Mode XXXXXXXX1
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,#0x0f
	lcall	_Write_Max7219
;	main.c:241: Write_Max7219(DECODE_MODE, 	0x00);   //No decode for digits 7–0
	mov	_Write_Max7219_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_Write_Max7219
;	main.c:243: Write_Max7219(SCAN_LIMIT, 	0x07);   //SCAN LIMIT 0~7 0xX0~0xX7
	mov	_Write_Max7219_PARM_2,#0x07
	mov	dpl,#0x0b
	lcall	_Write_Max7219
;	main.c:244: Write_Max7219(INTENSITY, 	0x04);   //Set Intensity   0xX0~0xXf
	mov	_Write_Max7219_PARM_2,#0x04
	mov	dpl,#0x0a
	ljmp	_Write_Max7219
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:247: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	main.c:250: for(i=0;i<=40000;i++);
	mov	r6,#0x41
	mov	r7,#0x9c
00104$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
