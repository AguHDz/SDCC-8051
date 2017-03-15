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
	.globl _moveclock
	.globl _display
	.globl _resetfn
	.globl _increase
	.globl _setfn
	.globl _delay
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
	.globl _dig_val
	.globl _mode
	.globl _loop
	.globl _keepsec1
	.globl _keepsec2
	.globl _keepmin1
	.globl _keepmin2
	.globl _alarmsec1
	.globl _alarmsec2
	.globl _alarmmin1
	.globl _alarmmin2
	.globl _secalarm1
	.globl _secalarm2
	.globl _minalarm1
	.globl _minalarm2
	.globl _sec1
	.globl _sec2
	.globl _min1
	.globl _min2
	.globl _dig_disp
	.globl _begin
	.globl _recnt_incr_seg
	.globl _ret_seg_to_incre
	.globl _sel_seg_to_incr
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
_sel_seg_to_incr::
	.ds 2
_ret_seg_to_incre::
	.ds 2
_recnt_incr_seg::
	.ds 2
_begin::
	.ds 2
_dig_disp::
	.ds 1
_min2::
	.ds 2
_min1::
	.ds 2
_sec2::
	.ds 2
_sec1::
	.ds 2
_minalarm2::
	.ds 2
_minalarm1::
	.ds 2
_secalarm2::
	.ds 2
_secalarm1::
	.ds 2
_alarmmin2::
	.ds 2
_alarmmin1::
	.ds 2
_alarmsec2::
	.ds 2
_alarmsec1::
	.ds 2
_keepmin2::
	.ds 2
_keepmin1::
	.ds 2
_keepsec2::
	.ds 2
_keepsec1::
	.ds 2
_loop::
	.ds 2
_mode::
	.ds 2
_dig_val::
	.ds 10
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
	ljmp	_display
	.ds	5
	reti
	.ds	7
	ljmp	_moveclock
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
;	main.c:53: int sel_seg_to_incr     =   0;
	clr	a
	mov	_sel_seg_to_incr,a
	mov	(_sel_seg_to_incr + 1),a
;	main.c:54: int ret_seg_to_incre    =   0;
	mov	_ret_seg_to_incre,a
	mov	(_ret_seg_to_incre + 1),a
;	main.c:57: unsigned char dig_disp  =   0;
;	1-genFromRTrack replaced	mov	_dig_disp,#0x00
	mov	_dig_disp,a
;	main.c:58: int min2                =   0;
	mov	_min2,a
	mov	(_min2 + 1),a
;	main.c:59: int min1                =   0;
	mov	_min1,a
	mov	(_min1 + 1),a
;	main.c:60: int sec2                =   0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
;	main.c:61: int sec1                =   0;
	mov	_sec1,a
	mov	(_sec1 + 1),a
;	main.c:62: int minalarm2           =   0;
	mov	_minalarm2,a
	mov	(_minalarm2 + 1),a
;	main.c:63: int minalarm1           =   0;
	mov	_minalarm1,a
	mov	(_minalarm1 + 1),a
;	main.c:64: int secalarm2           =   0;
	mov	_secalarm2,a
	mov	(_secalarm2 + 1),a
;	main.c:65: int secalarm1           =   0;
	mov	_secalarm1,a
	mov	(_secalarm1 + 1),a
;	main.c:66: int alarmmin2           =   0;
	mov	_alarmmin2,a
	mov	(_alarmmin2 + 1),a
;	main.c:67: int alarmmin1           =   0;
	mov	_alarmmin1,a
	mov	(_alarmmin1 + 1),a
;	main.c:68: int alarmsec2           =   0;
	mov	_alarmsec2,a
	mov	(_alarmsec2 + 1),a
;	main.c:69: int alarmsec1           =   0;
	mov	_alarmsec1,a
	mov	(_alarmsec1 + 1),a
;	main.c:70: int keepmin2            =   0;
	mov	_keepmin2,a
	mov	(_keepmin2 + 1),a
;	main.c:71: int keepmin1            =   0;
	mov	_keepmin1,a
	mov	(_keepmin1 + 1),a
;	main.c:72: int keepsec2            =   0;
	mov	_keepsec2,a
	mov	(_keepsec2 + 1),a
;	main.c:73: int keepsec1            =   0;
	mov	_keepsec1,a
	mov	(_keepsec1 + 1),a
;	main.c:74: int loop                =   0;
	mov	_loop,a
	mov	(_loop + 1),a
;	main.c:76: char dig_val[10]        =   {0x40,0xF9,0x24,0x30,0x19,0x12,0x02,0xF8,0x00,0x10};  // Hex values corresponding to digits 0 to 9
	mov	_dig_val,#0x40
	mov	(_dig_val + 0x0001),#0xf9
	mov	(_dig_val + 0x0002),#0x24
	mov	(_dig_val + 0x0003),#0x30
	mov	(_dig_val + 0x0004),#0x19
	mov	(_dig_val + 0x0005),#0x12
	mov	(_dig_val + 0x0006),#0x02
	mov	(_dig_val + 0x0007),#0xf8
;	1-genFromRTrack replaced	mov	(_dig_val + 0x0008),#0x00
	mov	(_dig_val + 0x0008),a
	mov	(_dig_val + 0x0009),#0x10
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
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time                      Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:78: void delay(int time)  //Function to provide time delay.
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	main.c:81: for(i=0;i<time;i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	main.c:82: for(j=0;j<1275;j++);
	mov	r2,#0xfb
	mov	r3,#0x04
00105$:
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
	mov	a,r0
	orl	a,r1
	jnz	00105$
;	main.c:81: for(i=0;i<time;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setfn'
;------------------------------------------------------------
;	main.c:85: int setfn(void)  // Function to select miniute and seconds digit set time.
;	-----------------------------------------
;	 function setfn
;	-----------------------------------------
_setfn:
;	main.c:87: while(set==0)
00114$:
	jnb	_P1_6,00149$
	ljmp	00116$
00149$:
;	main.c:89: switch(recnt_incr_seg)
	mov	a,#0x01
	cjne	a,_recnt_incr_seg,00150$
	dec	a
	cjne	a,(_recnt_incr_seg + 1),00150$
	sjmp	00101$
00150$:
	mov	a,#0x02
	cjne	a,_recnt_incr_seg,00151$
	clr	a
	cjne	a,(_recnt_incr_seg + 1),00151$
	sjmp	00104$
00151$:
	mov	a,#0x03
	cjne	a,_recnt_incr_seg,00152$
	clr	a
	cjne	a,(_recnt_incr_seg + 1),00152$
	sjmp	00107$
00152$:
	mov	a,#0x04
	cjne	a,_recnt_incr_seg,00153$
	clr	a
	cjne	a,(_recnt_incr_seg + 1),00153$
	sjmp	00110$
00153$:
;	main.c:91: case 1:
	sjmp	00114$
00101$:
;	main.c:92: if(set==0)  //Select the min2 digit
	jb	_P1_6,00104$
;	main.c:94: dig_ctrl_4      =   1;
	setb	_P1_0
;	main.c:95: dig_ctrl_3      =   0;
	clr	_P1_1
;	main.c:96: dig_ctrl_2      =   0;
	clr	_P1_2
;	main.c:97: dig_ctrl_1      =   0;
	clr	_P1_3
;	main.c:98: recnt_incr_seg  =   1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:99: ret_seg_to_incre=   1;
	mov	_ret_seg_to_incre,#0x01
	mov	(_ret_seg_to_incre + 1),#0x00
;	main.c:100: P2              =   dig_val[minalarm2];
	mov	a,_minalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:101: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	main.c:103: case 2:
00104$:
;	main.c:104: if(set==0)  //Select the min1 digit
	jb	_P1_6,00107$
;	main.c:106: dig_ctrl_4      =   0;
	clr	_P1_0
;	main.c:107: dig_ctrl_3      =   1;
	setb	_P1_1
;	main.c:108: dig_ctrl_2      =   0;
	clr	_P1_2
;	main.c:109: dig_ctrl_1      =   0;
	clr	_P1_3
;	main.c:110: recnt_incr_seg  =   2;
	mov	_recnt_incr_seg,#0x02
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:111: ret_seg_to_incre=   2;
	mov	_ret_seg_to_incre,#0x02
	mov	(_ret_seg_to_incre + 1),#0x00
;	main.c:112: P2              =   dig_val[minalarm1];
	mov	a,_minalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:113: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	main.c:115: case 3:
00107$:
;	main.c:116: if(set==0)  //Select the sec 2 digit
	jb	_P1_6,00110$
;	main.c:118: dig_ctrl_4      =   0;
	clr	_P1_0
;	main.c:119: dig_ctrl_3      =   0;
	clr	_P1_1
;	main.c:120: dig_ctrl_2      =   1;
	setb	_P1_2
;	main.c:121: dig_ctrl_1      =   0;
	clr	_P1_3
;	main.c:122: recnt_incr_seg  =   3;
	mov	_recnt_incr_seg,#0x03
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:123: ret_seg_to_incre=   3;
	mov	_ret_seg_to_incre,#0x03
	mov	(_ret_seg_to_incre + 1),#0x00
;	main.c:124: P2              =   dig_val[secalarm2];
	mov	a,_secalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:125: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	main.c:127: case 4:
00110$:
;	main.c:128: if(set==0)  //Select the sec1 digit
	jnb	_P1_6,00157$
	ljmp	00114$
00157$:
;	main.c:130: recnt_incr_seg  =   1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:131: dig_ctrl_4      =   0;
	clr	_P1_0
;	main.c:132: dig_ctrl_3      =   0;
	clr	_P1_1
;	main.c:133: dig_ctrl_2      =   0;
	clr	_P1_2
;	main.c:134: dig_ctrl_1      =   1;
	setb	_P1_3
;	main.c:135: ret_seg_to_incre=   4;
	mov	_ret_seg_to_incre,#0x04
	mov	(_ret_seg_to_incre + 1),#0x00
;	main.c:136: P2              =   dig_val[secalarm1];
	mov	a,_secalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:137: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	main.c:138: recnt_incr_seg  =   1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:140: }
	ljmp	00114$
00116$:
;	main.c:142: return(ret_seg_to_incre);
	mov	dpl,_ret_seg_to_incre
	mov	dph,(_ret_seg_to_incre + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'increase'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:145: void increase(int a)  //Function to set the minutes or seconds digit
;	-----------------------------------------
;	 function increase
;	-----------------------------------------
_increase:
	mov	r6,dpl
	mov	r7,dph
;	main.c:147: while(incr==0)
	cjne	r6,#0x01,00149$
	cjne	r7,#0x00,00149$
	mov	a,r6
	sjmp	00150$
00149$:
	clr	a
00150$:
	mov	r5,a
	clr	a
	cjne	r6,#0x02,00151$
	cjne	r7,#0x00,00151$
	inc	a
00151$:
	mov	r4,a
	clr	a
	cjne	r6,#0x03,00153$
	cjne	r7,#0x00,00153$
	inc	a
00153$:
	mov	r3,a
	clr	a
	cjne	r6,#0x04,00155$
	cjne	r7,#0x00,00155$
	inc	a
00155$:
	mov	r7,a
00114$:
	jnb	_P1_7,00157$
	ret
00157$:
;	main.c:149: switch(a)
	mov	a,r5
	jnz	00101$
	mov	a,r4
	jnz	00104$
	mov	a,r3
	jz	00160$
	ljmp	00107$
00160$:
	mov	a,r7
	jz	00114$
;	main.c:151: case 1:  // Set the min2 digit.
	ljmp	00110$
00101$:
;	main.c:152: P2 = dig_val[minalarm2];
	mov	a,_minalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:153: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:154: minalarm2++;
	inc	_minalarm2
	clr	a
	cjne	a,_minalarm2,00162$
	inc	(_minalarm2 + 1)
00162$:
;	main.c:155: if(minalarm2==6) minalarm2 = 0;
	mov	a,#0x06
	cjne	a,_minalarm2,00163$
	clr	a
	cjne	a,(_minalarm2 + 1),00163$
	sjmp	00164$
00163$:
	sjmp	00103$
00164$:
	clr	a
	mov	_minalarm2,a
	mov	(_minalarm2 + 1),a
00103$:
;	main.c:156: P2 = dig_val[minalarm2];
	mov	a,_minalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:157: delay(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:158: break;
;	main.c:159: case 2:  //Set the min1 digit.
	sjmp	00114$
00104$:
;	main.c:160: P2 = dig_val[minalarm1];
	mov	a,_minalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:161: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:162: minalarm1++;
	inc	_minalarm1
	clr	a
	cjne	a,_minalarm1,00165$
	inc	(_minalarm1 + 1)
00165$:
;	main.c:163: if(minalarm1==10)
	mov	a,#0x0a
	cjne	a,_minalarm1,00166$
	clr	a
	cjne	a,(_minalarm1 + 1),00166$
	sjmp	00167$
00166$:
	sjmp	00106$
00167$:
;	main.c:164: minalarm1 = 0;
	clr	a
	mov	_minalarm1,a
	mov	(_minalarm1 + 1),a
00106$:
;	main.c:165: P2 = dig_val[minalarm1];
	mov	a,_minalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:166: delay(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:167: break;
	ljmp	00114$
;	main.c:168: case 3:  // Set the sec2 digit.
00107$:
;	main.c:169: P2 = dig_val[secalarm2];
	mov	a,_secalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:170: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:171: secalarm2++;
	inc	_secalarm2
	clr	a
	cjne	a,_secalarm2,00168$
	inc	(_secalarm2 + 1)
00168$:
;	main.c:172: if(secalarm2==6)
	mov	a,#0x06
	cjne	a,_secalarm2,00169$
	clr	a
	cjne	a,(_secalarm2 + 1),00169$
	sjmp	00170$
00169$:
	sjmp	00109$
00170$:
;	main.c:173: secalarm2 = 0;
	clr	a
	mov	_secalarm2,a
	mov	(_secalarm2 + 1),a
00109$:
;	main.c:174: P2 = dig_val[secalarm2];
	mov	a,_secalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:175: delay(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:176: break;
	ljmp	00114$
;	main.c:177: case 4:  //Set the sec1 digit.
00110$:
;	main.c:179: P2 = dig_val[secalarm1];
	mov	a,_secalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:180: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:181: secalarm1++;
	inc	_secalarm1
	clr	a
	cjne	a,_secalarm1,00171$
	inc	(_secalarm1 + 1)
00171$:
;	main.c:182: if(secalarm1==10)
	mov	a,#0x0a
	cjne	a,_secalarm1,00172$
	clr	a
	cjne	a,(_secalarm1 + 1),00172$
	sjmp	00173$
00172$:
	sjmp	00112$
00173$:
;	main.c:183: secalarm1 = 0;
	clr	a
	mov	_secalarm1,a
	mov	(_secalarm1 + 1),a
00112$:
;	main.c:184: P2 = dig_val[secalarm1];
	mov	a,_secalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:185: delay(20);
	mov	dptr,#0x0014
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:187: }
	ljmp	00114$
;------------------------------------------------------------
;Allocation info for local variables in function 'resetfn'
;------------------------------------------------------------
;mode                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:191: void resetfn(int mode)  // Function to bring the clock to reset or set mode.
;	-----------------------------------------
;	 function resetfn
;	-----------------------------------------
_resetfn:
	mov	r6,dpl
	mov	r7,dph
;	main.c:193: begin       = 1;
	mov	_begin,#0x01
	mov	(_begin + 1),#0x00
;	main.c:194: dig_ctrl_4  = 1;  //Enable the min2 digit and disable others
	setb	_P1_0
;	main.c:195: dig_ctrl_3  = 0;
	clr	_P1_1
;	main.c:196: dig_ctrl_2  = 0;
	clr	_P1_2
;	main.c:197: dig_ctrl_1  = 0;
	clr	_P1_3
;	main.c:199: if(mode==0)  //Check if clock is in set alarm mode
	mov	a,r6
	orl	a,r7
;	main.c:201: IE              =   0x88;  //Disable Timer0 interrupt to stop the display of clock.
;	main.c:202: sel_seg_to_incr =   1;
	jnz	00102$
	mov	_IE,#0x88
	mov	_sel_seg_to_incr,#0x01
	mov	(_sel_seg_to_incr + 1),a
;	main.c:203: recnt_incr_seg  =   1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:204: P2              =   dig_val[keepmin2];
	mov	a,_keepmin2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:205: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:206: minalarm2       =   keepmin2;
	mov	_minalarm2,_keepmin2
	mov	(_minalarm2 + 1),(_keepmin2 + 1)
;	main.c:207: minalarm1       =   keepmin1;
	mov	_minalarm1,_keepmin1
	mov	(_minalarm1 + 1),(_keepmin1 + 1)
;	main.c:208: secalarm2       =   keepsec2;
	mov	_secalarm2,_keepsec2
	mov	(_secalarm2 + 1),(_keepsec2 + 1)
;	main.c:209: secalarm1       =   keepsec1;
	mov	_secalarm1,_keepsec1
	mov	(_secalarm1 + 1),(_keepsec1 + 1)
00102$:
;	main.c:212: if(mode==1)  //Check if clock is in set clock mode
	cjne	r6,#0x01,00145$
	cjne	r7,#0x00,00145$
	mov	a,r6
	sjmp	00146$
00145$:
	clr	a
00146$:
	mov	r5,a
	jz	00116$
;	main.c:214: IE              =   0x80;  //Disable Timer0 interrupt to stop the clock.
	mov	_IE,#0x80
;	main.c:215: minalarm2       =   min2;
	mov	_minalarm2,_min2
	mov	(_minalarm2 + 1),(_min2 + 1)
;	main.c:216: minalarm1       =   min1;
	mov	_minalarm1,_min1
	mov	(_minalarm1 + 1),(_min1 + 1)
;	main.c:217: secalarm2       =   sec2;
	mov	_secalarm2,_sec2
	mov	(_secalarm2 + 1),(_sec2 + 1)
;	main.c:218: secalarm1       =   sec1;
	mov	_secalarm1,_sec1
	mov	(_secalarm1 + 1),(_sec1 + 1)
;	main.c:219: sel_seg_to_incr =   1;
	mov	_sel_seg_to_incr,#0x01
	mov	(_sel_seg_to_incr + 1),#0x00
;	main.c:220: recnt_incr_seg  =   1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
;	main.c:221: P2              =   dig_val[min2];
	mov	a,_min2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:222: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:225: while(1)
00116$:
;	main.c:227: if(start==0)  //Check if start pin is pressed
	jb	_P3_3,00110$
;	main.c:229: if(mode==0)
	mov	a,r6
	orl	a,r7
	jnz	00106$
;	main.c:231: keepmin2    =   minalarm2;
	mov	_keepmin2,_minalarm2
	mov	(_keepmin2 + 1),(_minalarm2 + 1)
;	main.c:232: keepmin1    =   minalarm1;
	mov	_keepmin1,_minalarm1
	mov	(_keepmin1 + 1),(_minalarm1 + 1)
;	main.c:233: keepsec2    =   secalarm2;
	mov	_keepsec2,_secalarm2
	mov	(_keepsec2 + 1),(_secalarm2 + 1)
;	main.c:234: keepsec1    =   secalarm1;
	mov	_keepsec1,_secalarm1
	mov	(_keepsec1 + 1),(_secalarm1 + 1)
;	main.c:235: alarmmin2   =   minalarm2;
	mov	_alarmmin2,_minalarm2
	mov	(_alarmmin2 + 1),(_minalarm2 + 1)
;	main.c:236: alarmmin1   =   minalarm1;
	mov	_alarmmin1,_minalarm1
	mov	(_alarmmin1 + 1),(_minalarm1 + 1)
;	main.c:237: alarmsec2   =   secalarm2;
	mov	_alarmsec2,_secalarm2
	mov	(_alarmsec2 + 1),(_secalarm2 + 1)
;	main.c:238: alarmsec1   =   secalarm1;
	mov	_alarmsec1,_secalarm1
	mov	(_alarmsec1 + 1),(_secalarm1 + 1)
00106$:
;	main.c:241: if(mode==1)
	mov	a,r5
	jz	00108$
;	main.c:243: min2    =   minalarm2;
	mov	_min2,_minalarm2
	mov	(_min2 + 1),(_minalarm2 + 1)
;	main.c:244: min1    =   minalarm1;
	mov	_min1,_minalarm1
	mov	(_min1 + 1),(_minalarm1 + 1)
;	main.c:245: sec2    =   secalarm2;
	mov	_sec2,_secalarm2
	mov	(_sec2 + 1),(_secalarm2 + 1)
;	main.c:246: sec1    =   secalarm1;
	mov	_sec1,_secalarm1
	mov	(_sec1 + 1),(_secalarm1 + 1)
00108$:
;	main.c:249: TMOD    =   0x11;  //Reset the timer0
	mov	_TMOD,#0x11
;	main.c:250: TL0     =   0xf6;
	mov	_TL0,#0xf6
;	main.c:251: TH0     =   0xFf;
	mov	_TH0,#0xff
;	main.c:252: IE      =   0x8A;  //Enabling Timer0 interrupt to start the display of clock
	mov	_IE,#0x8a
;	main.c:253: TR0     =   1;
	setb	_TR0
;	main.c:254: break;
	ret
00110$:
;	main.c:257: if(set==0)  //Check if set pin is pressed
	jb	_P1_6,00112$
;	main.c:258: sel_seg_to_incr =   setfn();
	push	ar7
	push	ar6
	push	ar5
	lcall	_setfn
	mov	_sel_seg_to_incr,dpl
	mov	(_sel_seg_to_incr + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
00112$:
;	main.c:260: if(incr==0)  //Check if incr pin is pressed
	jb	_P1_7,00116$
;	main.c:261: increase(sel_seg_to_incr);
	mov	dpl,_sel_seg_to_incr
	mov	dph,(_sel_seg_to_incr + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_increase
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	main.c:265: void display(void) __interrupt (1)  // Function to display the digits on seven segment using the concept of seven segment multiplexing.
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
	push	acc
	push	b
	push	dpl
	push	dph
	push	ar1
	push	psw
	mov	psw,#0x00
;	main.c:267: TL0         =   0x36;  //Reload Timer0
	mov	_TL0,#0x36
;	main.c:268: TH0         =   0xf6;
	mov	_TH0,#0xf6
;	main.c:269: P2          =   0xFF;
	mov	_P2,#0xff
;	main.c:270: dig_ctrl_1  =   0;
	clr	_P1_3
;	main.c:271: dig_ctrl_3  =   0;
	clr	_P1_1
;	main.c:272: dig_ctrl_2  =   0;
	clr	_P1_2
;	main.c:273: dig_ctrl_4  =   0;
	clr	_P1_0
;	main.c:275: dig_disp++;
	inc	_dig_disp
;	main.c:276: dig_disp=dig_disp%4;
	anl	_dig_disp,#0x03
;	main.c:278: switch(dig_disp)
	mov	a,_dig_disp
	add	a,#0xff - 0x03
	jc	00106$
	mov	a,_dig_disp
	mov	b,#0x03
	mul	ab
	mov	dptr,#00112$
	jmp	@a+dptr
00112$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	main.c:280: case 0:
00101$:
;	main.c:281: P2=dig_val[sec1];
	mov	a,_sec1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:282: dig_ctrl_1 = 1;
	setb	_P1_3
;	main.c:283: break;
;	main.c:285: case 1:
	sjmp	00106$
00102$:
;	main.c:286: P2= dig_val[sec2];
	mov	a,_sec2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:287: dig_ctrl_2 = 1;
	setb	_P1_2
;	main.c:288: break;
;	main.c:290: case 2:
	sjmp	00106$
00103$:
;	main.c:291: P2= dig_val[min1];
	mov	a,_min1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:292: dig_ctrl_3 = 1;
	setb	_P1_1
;	main.c:293: break;
;	main.c:295: case 3:
	sjmp	00106$
00104$:
;	main.c:296: P2= dig_val[min2];
	mov	a,_min2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
;	main.c:297: dig_ctrl_4 = 1;
	setb	_P1_0
;	main.c:299: }
00106$:
	pop	psw
	pop	ar1
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop ar0
;------------------------------------------------------------
;Allocation info for local variables in function 'moveclock'
;------------------------------------------------------------
;	main.c:302: void moveclock(void) __interrupt 3  // Function to increment clock digits
;	-----------------------------------------
;	 function moveclock
;	-----------------------------------------
_moveclock:
	push	acc
	push	psw
;	main.c:304: loop++;
	inc	_loop
	clr	a
	cjne	a,_loop,00128$
	inc	(_loop + 1)
00128$:
;	main.c:305: if(loop==20)
	mov	a,#0x14
	cjne	a,_loop,00129$
	clr	a
	cjne	a,(_loop + 1),00129$
	sjmp	00130$
00129$:
	ljmp	00111$
00130$:
;	main.c:307: sec1++;
	inc	_sec1
	clr	a
	cjne	a,_sec1,00131$
	inc	(_sec1 + 1)
00131$:
;	main.c:308: if(sec1==10)
	mov	a,#0x0a
	cjne	a,_sec1,00132$
	clr	a
	cjne	a,(_sec1 + 1),00132$
	sjmp	00133$
00132$:
	sjmp	00108$
00133$:
;	main.c:310: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
;	main.c:311: sec2++;
	inc	_sec2
;	genFromRTrack removed	clr	a
	cjne	a,_sec2,00134$
	inc	(_sec2 + 1)
00134$:
;	main.c:312: if(sec2==6)
	mov	a,#0x06
	cjne	a,_sec2,00135$
	clr	a
	cjne	a,(_sec2 + 1),00135$
	sjmp	00136$
00135$:
	sjmp	00108$
00136$:
;	main.c:314: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
;	main.c:315: sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
;	main.c:316: min1++;
	inc	_min1
;	genFromRTrack removed	clr	a
	cjne	a,_min1,00137$
	inc	(_min1 + 1)
00137$:
;	main.c:317: if(min1==10)
	mov	a,#0x0a
	cjne	a,_min1,00138$
	clr	a
	cjne	a,(_min1 + 1),00138$
	sjmp	00139$
00138$:
	sjmp	00108$
00139$:
;	main.c:319: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
;	main.c:320: sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
;	main.c:321: min1=0;
	mov	_min1,a
	mov	(_min1 + 1),a
;	main.c:322: min2++;
	inc	_min2
;	genFromRTrack removed	clr	a
	cjne	a,_min2,00140$
	inc	(_min2 + 1)
00140$:
;	main.c:323: if(min2==6)
	mov	a,#0x06
	cjne	a,_min2,00141$
	clr	a
	cjne	a,(_min2 + 1),00141$
	sjmp	00142$
00141$:
	sjmp	00108$
00142$:
;	main.c:325: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
;	main.c:326: sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
;	main.c:327: min1=0;
	mov	_min1,a
	mov	(_min1 + 1),a
;	main.c:328: min2=0;
	mov	_min2,a
	mov	(_min2 + 1),a
00108$:
;	main.c:333: loop=0;
	clr	a
	mov	_loop,a
	mov	(_loop + 1),a
00111$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:337: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:339: mode        =   0;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
;	main.c:340: set         =   1;          //Initialize set, reset, start and incr pins as input
	setb	_P1_6
;	main.c:341: resetalarm  =   1;
	setb	_P1_5
;	main.c:342: resetclock  =   1;
	setb	_P1_4
;	main.c:343: start       =   1;
	setb	_P3_3
;	main.c:344: incr        =   1;
	setb	_P1_7
;	main.c:345: begin       =   0;
	clr	a
	mov	_begin,a
	mov	(_begin + 1),a
;	main.c:346: TMOD        =   0x11;       //Intialize Timer 0
	mov	_TMOD,#0x11
;	main.c:347: TL0         =   0xf6;       //Load timer0
	mov	_TL0,#0xf6
;	main.c:348: TH0         =   0xFf;
	mov	_TH0,#0xff
;	main.c:349: IE          =   0x8A;       //Enable Timer0 interrupt
	mov	_IE,#0x8a
;	main.c:350: TR0         =   1;          //Start Timer0
	setb	_TR0
;	main.c:351: TL1         =   0xFD;
	mov	_TL1,#0xfd
;	main.c:352: TH1         =   0x4B;
	mov	_TH1,#0x4b
;	main.c:353: TR1         =   1;          // Start Timer1
	setb	_TR1
;	main.c:355: while(1)
00112$:
;	main.c:357: if(resetalarm==0)     //Check if reset alarm pin is pressed
	jb	_P1_5,00102$
;	main.c:359: resetfn(0);
	mov	dptr,#0x0000
	lcall	_resetfn
00102$:
;	main.c:361: if(resetclock==0)     //Check if reset clock pin is pressed
	jb	_P1_4,00104$
;	main.c:363: resetfn(1);
	mov	dptr,#0x0001
	lcall	_resetfn
00104$:
;	main.c:365: if(min2==alarmmin2&&min1==alarmmin1&&sec2==alarmsec2&&sec1==alarmsec1&&begin==1)  // Check for Alarm condition
	mov	a,_alarmmin2
	cjne	a,_min2,00112$
	mov	a,(_alarmmin2 + 1)
	cjne	a,(_min2 + 1),00112$
	mov	a,_alarmmin1
	cjne	a,_min1,00112$
	mov	a,(_alarmmin1 + 1)
	cjne	a,(_min1 + 1),00112$
	mov	a,_alarmsec2
	cjne	a,_sec2,00112$
	mov	a,(_alarmsec2 + 1)
	cjne	a,(_sec2 + 1),00112$
	mov	a,_alarmsec1
	cjne	a,_sec1,00112$
	mov	a,(_alarmsec1 + 1)
	cjne	a,(_sec1 + 1),00112$
	mov	a,#0x01
	cjne	a,_begin,00150$
	dec	a
	cjne	a,(_begin + 1),00150$
	sjmp	00151$
00150$:
	sjmp	00112$
00151$:
;	main.c:367: buzzer=0;
	clr	_P3_7
;	main.c:368: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	main.c:369: buzzer=1;
	setb	_P3_7
	sjmp	00112$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
