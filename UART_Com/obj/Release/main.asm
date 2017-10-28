;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mensajeInicialLine3
	.globl _mensajeInicialLine2
	.globl _mensajeInicialLine1
	.globl _serial_ISR
	.globl _main
	.globl _SendStringONOFFSerally_PARM_2
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
	.globl _contador
	.globl _delay
	.globl _cct_init
	.globl _SerialInitialize
	.globl _SendByteSerially
	.globl _SendCRLFSerially
	.globl _SendStringSerally
	.globl _SendStringCRLFSerally
	.globl _SendStringONOFFSerally
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
_SendStringONOFFSerally_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_contador::
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_serial_ISR
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
;	main.c:34: unsigned char contador = 0;
	mov	_contador,#0x00
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
;	main.c:36: void main()
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
;	main.c:38:     cct_init();
	lcall	_cct_init
;	main.c:39:     SerialInitialize();
	lcall	_SerialInitialize
;	main.c:40:     ES = 0; 
	clr	_ES
;	main.c:41: SendStringCRLFSerally(mensajeInicialLine1);
	mov	dptr,#_mensajeInicialLine1
	mov	b,#0x80
	lcall	_SendStringCRLFSerally
;	main.c:42: SendStringCRLFSerally(mensajeInicialLine2);
	mov	dptr,#_mensajeInicialLine2
	mov	b,#0x80
	lcall	_SendStringCRLFSerally
;	main.c:43: SendStringCRLFSerally(mensajeInicialLine3);
	mov	dptr,#_mensajeInicialLine3
	mov	b,#0x80
	lcall	_SendStringCRLFSerally
;	main.c:45: ES=1;       // Habilita Interrupcion de Puerto Serie.
	setb	_ES
;	main.c:46: EA=1;       // Habilita Interrupciones.
	setb	_EA
;	main.c:48:     while(1)
00102$:
;	main.c:51: P2_0=0;
	clr	_P2_0
;	main.c:52: delay(40000);
	mov	dptr,#0x9c40
	lcall	_delay
;	main.c:53: P2_0=1;
	setb	_P2_0
;	main.c:54: delay(40000);
	mov	dptr,#0x9c40
	lcall	_delay
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;vueltas                   Allocated to registers r6 r7 
;contador                  Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:58: void delay(unsigned int vueltas)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:61: for(contador=0; contador<vueltas; contador++);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cct_init'
;------------------------------------------------------------
;	main.c:64: void cct_init(void)   //initialize cct
;	-----------------------------------------
;	 function cct_init
;	-----------------------------------------
_cct_init:
;	main.c:66:     P0 = 0x00;      //not used
	mov	_P0,#0x00
;	main.c:67:     P1 = 0x00;      //Used for Appliances
	mov	_P1,#0x00
;	main.c:68:     P2 = 0x00;      //not used
	mov	_P2,#0x00
;	main.c:69:     P3 = 0x03;      //used for serial
	mov	_P3,#0x03
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialInitialize'
;------------------------------------------------------------
;	main.c:72: void SerialInitialize(void)                    // INITIALIZE SERIAL PORT
;	-----------------------------------------
;	 function SerialInitialize
;	-----------------------------------------
_SerialInitialize:
;	main.c:74:     TMOD = 0x20;                               // Timer 1 IN MODE 2 -AUTO RELOAD TO GENERATE BAUD RATE
	mov	_TMOD,#0x20
;	main.c:75:     SCON = 0x50;                               // SERIAL MODE 1, 8-DATA BIT 1-START BIT, 1-STOP BIT, REN ENABLED
	mov	_SCON,#0x50
;	main.c:76:     TH1  = Baud_rate;                          // LOAD BAUDRATE TO TIMER REGISTER
	mov	_TH1,#0xfd
;	main.c:77:     TR1  = 1;                                  // START TIMER
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendByteSerially'
;------------------------------------------------------------
;serialdata                Allocated to registers 
;------------------------------------------------------------
;	main.c:80: void SendByteSerially(unsigned char serialdata)
;	-----------------------------------------
;	 function SendByteSerially
;	-----------------------------------------
_SendByteSerially:
	mov	_SBUF,dpl
;	main.c:83:     while(TI == 0);                            // WAIT UNTIL TRANSMISSION TO COMPLETE
00101$:
;	main.c:84:     TI = 0;                                    // CLEAR TRANSMISSION INTERRUPT FLAG
	jbc	_TI,00112$
	sjmp	00101$
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendCRLFSerially'
;------------------------------------------------------------
;	main.c:87: void SendCRLFSerially (void)
;	-----------------------------------------
;	 function SendCRLFSerially
;	-----------------------------------------
_SendCRLFSerially:
;	main.c:89: SendByteSerially(CR);
	mov	dpl,#0x0d
	lcall	_SendByteSerially
;	main.c:90: SendByteSerially(LF);
	mov	dpl,#0x0a
	ljmp	_SendByteSerially
;------------------------------------------------------------
;Allocation info for local variables in function 'SendStringSerally'
;------------------------------------------------------------
;cadena                    Allocated to registers r5 r6 r7 
;contador                  Allocated to registers r4 
;------------------------------------------------------------
;	main.c:93: void SendStringSerally(char* cadena)
;	-----------------------------------------
;	 function SendStringSerally
;	-----------------------------------------
_SendStringSerally:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:96: while (cadena[contador])
	mov	r4,#0x00
00101$:
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jz	00104$
;	main.c:98: SendByteSerially(cadena[contador++]);
	mov	ar3,r4
	inc	r4
	mov	a,r3
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendByteSerially
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendStringCRLFSerally'
;------------------------------------------------------------
;cadena                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:102: void SendStringCRLFSerally(char* cadena)
;	-----------------------------------------
;	 function SendStringCRLFSerally
;	-----------------------------------------
_SendStringCRLFSerally:
;	main.c:104: SendStringSerally(cadena);
	lcall	_SendStringSerally
;	main.c:105: SendCRLFSerially();
	ljmp	_SendCRLFSerially
;------------------------------------------------------------
;Allocation info for local variables in function 'SendStringONOFFSerally'
;------------------------------------------------------------
;texto                     Allocated to registers r5 r6 r7 
;pinPuerto                 Allocated with name '_SendStringONOFFSerally_PARM_2'
;------------------------------------------------------------
;	main.c:108: void SendStringONOFFSerally(char* texto, __sbit pinPuerto)
;	-----------------------------------------
;	 function SendStringONOFFSerally
;	-----------------------------------------
_SendStringONOFFSerally:
;	main.c:110: SendStringSerally(texto);
	lcall	_SendStringSerally
;	main.c:111: if (pinPuerto) SendStringCRLFSerally(" : ON");
	jnb	_SendStringONOFFSerally_PARM_2,00102$
	mov	dptr,#___str_0
	mov	b,#0x80
	ljmp	_SendStringCRLFSerally
00102$:
;	main.c:112: else SendStringCRLFSerally(" : OFF");
	mov	dptr,#___str_1
	mov	b,#0x80
	ljmp	_SendStringCRLFSerally
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_ISR'
;------------------------------------------------------------
;chr                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:115: void serial_ISR (void) __interrupt (4)
;	-----------------------------------------
;	 function serial_ISR
;	-----------------------------------------
_serial_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:118:     char chr=0x00;
	mov	r7,#0x00
;	main.c:119:     if(RI==1)
	jnb	_RI,00102$
;	main.c:121:         chr = SBUF;
	mov	r7,_SBUF
;	main.c:122:         RI = 0;
	clr	_RI
00102$:
;	main.c:125: switch(chr)
	cjne	r7,#0x30,00127$
00127$:
	jnc	00128$
	ljmp	00114$
00128$:
	mov	a,r7
	add	a,#0xff - 0x39
	jnc	00129$
	ljmp	00114$
00129$:
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	add	a,#(00130$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00131$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00130$:
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
00131$:
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
;	main.c:128: case '0':  Salidas = 0x00; SendStringCRLFSerally("Todas las Salidas : OFF");  break;
00103$:
	mov	_P1,#0x00
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_SendStringCRLFSerally
	ljmp	00114$
;	main.c:129: case '1':  Salida1 = !Salida1; SendStringONOFFSerally("Salida 1",Salida1);    break;
00104$:
	cpl	_P1_0
	mov	c,_P1_0
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
	ljmp	00114$
;	main.c:130:      case '2':  Salida2 = !Salida2; SendStringONOFFSerally("Salida 2",Salida2);    break;
00105$:
	cpl	_P1_1
	mov	c,_P1_1
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
	ljmp	00114$
;	main.c:131:      case '3':  Salida3 = !Salida3; SendStringONOFFSerally("Salida 3",Salida3);    break;
00106$:
	cpl	_P1_2
	mov	c,_P1_2
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
;	main.c:132:      case '4':  Salida4 = !Salida4; SendStringONOFFSerally("Salida 4",Salida4);    break;
	sjmp	00114$
00107$:
	cpl	_P1_3
	mov	c,_P1_3
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
;	main.c:133:      case '5':  Salida5 = !Salida5; SendStringONOFFSerally("Salida 5",Salida5);    break;
	sjmp	00114$
00108$:
	cpl	_P1_4
	mov	c,_P1_4
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
;	main.c:134:      case '6':  Salida6 = !Salida6; SendStringONOFFSerally("Salida 6",Salida6);    break;
	sjmp	00114$
00109$:
	cpl	_P1_5
	mov	c,_P1_5
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
;	main.c:135:      case '7':  Salida7 = !Salida7; SendStringONOFFSerally("Salida 7",Salida7);    break;
	sjmp	00114$
00110$:
	cpl	_P1_6
	mov	c,_P1_6
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
;	main.c:136:      case '8':  Salida8 = !Salida8; SendStringONOFFSerally("Salida 8",Salida8);    break;
	sjmp	00114$
00111$:
	cpl	_P1_7
	mov	c,_P1_7
	mov	_SendStringONOFFSerally_PARM_2,c
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_SendStringONOFFSerally
;	main.c:137: case '9':  Salidas = 0xFF; SendStringCRLFSerally("Todas las Salidas : ON");   break;
	sjmp	00114$
00112$:
	mov	_P1,#0xff
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_SendStringCRLFSerally
;	main.c:139:     }
00114$:
;	main.c:141:     RI = 0;
	clr	_RI
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
_mensajeInicialLine1:
	.ascii "Para Activar/Desactivar Salidas (1-8) pulse las Teclas 1 a 8"
	.ascii "."
	.db 0x00
_mensajeInicialLine2:
	.ascii "Tecla 0 Desactiva todas las salidas."
	.db 0x00
_mensajeInicialLine3:
	.ascii "Tecla 9 Activa todas las salidas."
	.db 0x00
___str_0:
	.ascii " : ON"
	.db 0x00
___str_1:
	.ascii " : OFF"
	.db 0x00
___str_2:
	.ascii "Todas las Salidas : OFF"
	.db 0x00
___str_3:
	.ascii "Salida 1"
	.db 0x00
___str_4:
	.ascii "Salida 2"
	.db 0x00
___str_5:
	.ascii "Salida 3"
	.db 0x00
___str_6:
	.ascii "Salida 4"
	.db 0x00
___str_7:
	.ascii "Salida 5"
	.db 0x00
___str_8:
	.ascii "Salida 6"
	.db 0x00
___str_9:
	.ascii "Salida 7"
	.db 0x00
___str_10:
	.ascii "Salida 8"
	.db 0x00
___str_11:
	.ascii "Todas las Salidas : ON"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
