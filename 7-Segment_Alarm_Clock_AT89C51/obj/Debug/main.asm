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
	.globl _resetfn_PARM_1
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
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
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
G$sel_seg_to_incr$0$0==.
_sel_seg_to_incr::
	.ds 2
G$ret_seg_to_incre$0$0==.
_ret_seg_to_incre::
	.ds 2
G$recnt_incr_seg$0$0==.
_recnt_incr_seg::
	.ds 2
G$begin$0$0==.
_begin::
	.ds 2
G$dig_disp$0$0==.
_dig_disp::
	.ds 1
G$min2$0$0==.
_min2::
	.ds 2
G$min1$0$0==.
_min1::
	.ds 2
G$sec2$0$0==.
_sec2::
	.ds 2
G$sec1$0$0==.
_sec1::
	.ds 2
G$minalarm2$0$0==.
_minalarm2::
	.ds 2
G$minalarm1$0$0==.
_minalarm1::
	.ds 2
G$secalarm2$0$0==.
_secalarm2::
	.ds 2
G$secalarm1$0$0==.
_secalarm1::
	.ds 2
G$alarmmin2$0$0==.
_alarmmin2::
	.ds 2
G$alarmmin1$0$0==.
_alarmmin1::
	.ds 2
G$alarmsec2$0$0==.
_alarmsec2::
	.ds 2
G$alarmsec1$0$0==.
_alarmsec1::
	.ds 2
G$keepmin2$0$0==.
_keepmin2::
	.ds 2
G$keepmin1$0$0==.
_keepmin1::
	.ds 2
G$keepsec2$0$0==.
_keepsec2::
	.ds 2
G$keepsec1$0$0==.
_keepsec1::
	.ds 2
G$loop$0$0==.
_loop::
	.ds 2
G$mode$0$0==.
_mode::
	.ds 2
G$dig_val$0$0==.
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
Lmain.resetfn$mode$1$14==.
_resetfn_PARM_1:
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
	C$main.c$20$1$32 ==.
;	main.c:20: int sel_seg_to_incr=0;
	clr	a
	mov	_sel_seg_to_incr,a
	mov	(_sel_seg_to_incr + 1),a
	C$main.c$21$1$32 ==.
;	main.c:21: int ret_seg_to_incre=0;
	mov	_ret_seg_to_incre,a
	mov	(_ret_seg_to_incre + 1),a
	C$main.c$24$1$32 ==.
;	main.c:24: unsigned char dig_disp=0;
;	1-genFromRTrack replaced	mov	_dig_disp,#0x00
	mov	_dig_disp,a
	C$main.c$25$1$32 ==.
;	main.c:25: int min2=0;
	mov	_min2,a
	mov	(_min2 + 1),a
	C$main.c$26$1$32 ==.
;	main.c:26: int min1=0;
	mov	_min1,a
	mov	(_min1 + 1),a
	C$main.c$27$1$32 ==.
;	main.c:27: int sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
	C$main.c$28$1$32 ==.
;	main.c:28: int sec1=0;
	mov	_sec1,a
	mov	(_sec1 + 1),a
	C$main.c$29$1$32 ==.
;	main.c:29: int minalarm2=0;
	mov	_minalarm2,a
	mov	(_minalarm2 + 1),a
	C$main.c$30$1$32 ==.
;	main.c:30: int minalarm1=0;
	mov	_minalarm1,a
	mov	(_minalarm1 + 1),a
	C$main.c$31$1$32 ==.
;	main.c:31: int secalarm2=0;
	mov	_secalarm2,a
	mov	(_secalarm2 + 1),a
	C$main.c$32$1$32 ==.
;	main.c:32: int secalarm1=0;
	mov	_secalarm1,a
	mov	(_secalarm1 + 1),a
	C$main.c$33$1$32 ==.
;	main.c:33: int alarmmin2=0;
	mov	_alarmmin2,a
	mov	(_alarmmin2 + 1),a
	C$main.c$34$1$32 ==.
;	main.c:34: int alarmmin1=0;
	mov	_alarmmin1,a
	mov	(_alarmmin1 + 1),a
	C$main.c$35$1$32 ==.
;	main.c:35: int alarmsec2=0;
	mov	_alarmsec2,a
	mov	(_alarmsec2 + 1),a
	C$main.c$36$1$32 ==.
;	main.c:36: int alarmsec1=0;
	mov	_alarmsec1,a
	mov	(_alarmsec1 + 1),a
	C$main.c$37$1$32 ==.
;	main.c:37: int keepmin2=0;
	mov	_keepmin2,a
	mov	(_keepmin2 + 1),a
	C$main.c$38$1$32 ==.
;	main.c:38: int keepmin1=0;
	mov	_keepmin1,a
	mov	(_keepmin1 + 1),a
	C$main.c$39$1$32 ==.
;	main.c:39: int keepsec2=0;
	mov	_keepsec2,a
	mov	(_keepsec2 + 1),a
	C$main.c$40$1$32 ==.
;	main.c:40: int keepsec1=0;
	mov	_keepsec1,a
	mov	(_keepsec1 + 1),a
	C$main.c$41$1$32 ==.
;	main.c:41: int loop=0;
	mov	_loop,a
	mov	(_loop + 1),a
	C$main.c$43$1$32 ==.
;	main.c:43: char dig_val[10]={0x40,0xF9,0x24,0x30,0x19,0x12,0x02,0xF8,0x00,0x10};  // Hex values corresponding to digits 0 to 9
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
	G$delay$0$0 ==.
	C$main.c$45$0$0 ==.
;	main.c:45: void delay(int time)  //Function to provide time delay.
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
	C$main.c$48$1$2 ==.
;	main.c:48: for(i=0;i<time;i++)
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
	C$main.c$49$1$2 ==.
;	main.c:49: for(j=0;j<1275;j++);
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
	C$main.c$48$1$2 ==.
;	main.c:48: for(i=0;i<time;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
	C$main.c$50$1$2 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setfn'
;------------------------------------------------------------
	G$setfn$0$0 ==.
	C$main.c$52$1$2 ==.
;	main.c:52: int setfn()  // Function to select miniute and seconds digit set time.
;	-----------------------------------------
;	 function setfn
;	-----------------------------------------
_setfn:
	C$main.c$54$4$6 ==.
;	main.c:54: while(set==0)
00114$:
	jnb	_P1_6,00149$
	ljmp	00116$
00149$:
	C$main.c$56$2$4 ==.
;	main.c:56: switch(recnt_incr_seg)
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
	C$main.c$59$3$5 ==.
;	main.c:59: case 1:
	sjmp	00114$
00101$:
	C$main.c$60$3$5 ==.
;	main.c:60: if(set==0)  //Select the min2 digit
	jb	_P1_6,00104$
	C$main.c$62$4$6 ==.
;	main.c:62: dig_ctrl_4=1;
	setb	_P1_0
	C$main.c$63$4$6 ==.
;	main.c:63: dig_ctrl_3=0;
	clr	_P1_1
	C$main.c$64$4$6 ==.
;	main.c:64: dig_ctrl_2=0;
	clr	_P1_2
	C$main.c$65$4$6 ==.
;	main.c:65: dig_ctrl_1=0;
	clr	_P1_3
	C$main.c$66$4$6 ==.
;	main.c:66: recnt_incr_seg=1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$67$4$6 ==.
;	main.c:67: ret_seg_to_incre=1;
	mov	_ret_seg_to_incre,#0x01
	mov	(_ret_seg_to_incre + 1),#0x00
	C$main.c$68$4$6 ==.
;	main.c:68: P2=dig_val[minalarm2];
	mov	a,_minalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$69$4$6 ==.
;	main.c:69: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	C$main.c$72$3$5 ==.
;	main.c:72: case 2:
00104$:
	C$main.c$73$3$5 ==.
;	main.c:73: if(set==0)  //Select the min1 digit
	jb	_P1_6,00107$
	C$main.c$75$4$7 ==.
;	main.c:75: dig_ctrl_4=0;
	clr	_P1_0
	C$main.c$76$4$7 ==.
;	main.c:76: dig_ctrl_3=1;
	setb	_P1_1
	C$main.c$77$4$7 ==.
;	main.c:77: dig_ctrl_2=0;
	clr	_P1_2
	C$main.c$78$4$7 ==.
;	main.c:78: dig_ctrl_1=0;
	clr	_P1_3
	C$main.c$79$4$7 ==.
;	main.c:79: recnt_incr_seg=2;
	mov	_recnt_incr_seg,#0x02
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$80$4$7 ==.
;	main.c:80: ret_seg_to_incre=2;
	mov	_ret_seg_to_incre,#0x02
	mov	(_ret_seg_to_incre + 1),#0x00
	C$main.c$81$4$7 ==.
;	main.c:81: P2=dig_val[minalarm1];
	mov	a,_minalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$82$4$7 ==.
;	main.c:82: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	C$main.c$85$3$5 ==.
;	main.c:85: case 3:
00107$:
	C$main.c$86$3$5 ==.
;	main.c:86: if(set==0)  //Select the sec 2 digit
	jb	_P1_6,00110$
	C$main.c$88$4$8 ==.
;	main.c:88: dig_ctrl_4=0;
	clr	_P1_0
	C$main.c$89$4$8 ==.
;	main.c:89: dig_ctrl_3=0;
	clr	_P1_1
	C$main.c$90$4$8 ==.
;	main.c:90: dig_ctrl_2=1;
	setb	_P1_2
	C$main.c$91$4$8 ==.
;	main.c:91: dig_ctrl_1=0;
	clr	_P1_3
	C$main.c$92$4$8 ==.
;	main.c:92: recnt_incr_seg=3;
	mov	_recnt_incr_seg,#0x03
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$93$4$8 ==.
;	main.c:93: ret_seg_to_incre=3;
	mov	_ret_seg_to_incre,#0x03
	mov	(_ret_seg_to_incre + 1),#0x00
	C$main.c$94$4$8 ==.
;	main.c:94: P2=dig_val[secalarm2];
	mov	a,_secalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$95$4$8 ==.
;	main.c:95: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	C$main.c$98$3$5 ==.
;	main.c:98: case 4:
00110$:
	C$main.c$99$3$5 ==.
;	main.c:99: if(set==0)  //Select the sec1 digit
	jnb	_P1_6,00157$
	ljmp	00114$
00157$:
	C$main.c$101$4$9 ==.
;	main.c:101: recnt_incr_seg=1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$102$4$9 ==.
;	main.c:102: dig_ctrl_4=0;
	clr	_P1_0
	C$main.c$103$4$9 ==.
;	main.c:103: dig_ctrl_3=0;
	clr	_P1_1
	C$main.c$104$4$9 ==.
;	main.c:104: dig_ctrl_2=0;
	clr	_P1_2
	C$main.c$105$4$9 ==.
;	main.c:105: dig_ctrl_1=1;
	setb	_P1_3
	C$main.c$106$4$9 ==.
;	main.c:106: ret_seg_to_incre=4;
	mov	_ret_seg_to_incre,#0x04
	mov	(_ret_seg_to_incre + 1),#0x00
	C$main.c$107$4$9 ==.
;	main.c:107: P2=dig_val[secalarm1];
	mov	a,_secalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$108$4$9 ==.
;	main.c:108: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	C$main.c$109$4$9 ==.
;	main.c:109: recnt_incr_seg=1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$111$1$3 ==.
;	main.c:111: }
	ljmp	00114$
00116$:
	C$main.c$113$1$3 ==.
;	main.c:113: return(ret_seg_to_incre);
	mov	dpl,_ret_seg_to_incre
	mov	dph,(_ret_seg_to_incre + 1)
	C$main.c$114$1$3 ==.
	XG$setfn$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'increase'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$increase$0$0 ==.
	C$main.c$116$1$3 ==.
;	main.c:116: void increase(int a)  //Function to set the minutes or seconds digit
;	-----------------------------------------
;	 function increase
;	-----------------------------------------
_increase:
	mov	r6,dpl
	mov	r7,dph
	C$main.c$118$2$12 ==.
;	main.c:118: while(incr==0)
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
	ljmp	00117$
00157$:
	C$main.c$120$2$12 ==.
;	main.c:120: switch(a)
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
	C$main.c$123$3$13 ==.
;	main.c:123: case 1:  // Set the min2 digit.
	ljmp	00110$
00101$:
	C$main.c$124$3$13 ==.
;	main.c:124: P2=dig_val[minalarm2];
	mov	a,_minalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$125$3$13 ==.
;	main.c:125: delay(100);
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
	C$main.c$126$3$13 ==.
;	main.c:126: minalarm2++;
	inc	_minalarm2
	clr	a
	cjne	a,_minalarm2,00162$
	inc	(_minalarm2 + 1)
00162$:
	C$main.c$127$3$13 ==.
;	main.c:127: if(minalarm2==6)
	mov	a,#0x06
	cjne	a,_minalarm2,00163$
	clr	a
	cjne	a,(_minalarm2 + 1),00163$
	sjmp	00164$
00163$:
	sjmp	00103$
00164$:
	C$main.c$128$3$13 ==.
;	main.c:128: minalarm2=0;
	clr	a
	mov	_minalarm2,a
	mov	(_minalarm2 + 1),a
00103$:
	C$main.c$129$3$13 ==.
;	main.c:129: P2=dig_val[minalarm2];
	mov	a,_minalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$130$3$13 ==.
;	main.c:130: delay(20);
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
	C$main.c$131$3$13 ==.
;	main.c:131: break;
	C$main.c$133$3$13 ==.
;	main.c:133: case 2:  //Set the min1 digit.
	sjmp	00114$
00104$:
	C$main.c$134$3$13 ==.
;	main.c:134: P2=dig_val[minalarm1];
	mov	a,_minalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$135$3$13 ==.
;	main.c:135: delay(100);
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
	C$main.c$136$3$13 ==.
;	main.c:136: minalarm1++;
	inc	_minalarm1
	clr	a
	cjne	a,_minalarm1,00165$
	inc	(_minalarm1 + 1)
00165$:
	C$main.c$137$3$13 ==.
;	main.c:137: if(minalarm1==10)
	mov	a,#0x0a
	cjne	a,_minalarm1,00166$
	clr	a
	cjne	a,(_minalarm1 + 1),00166$
	sjmp	00167$
00166$:
	sjmp	00106$
00167$:
	C$main.c$138$3$13 ==.
;	main.c:138: minalarm1=0;
	clr	a
	mov	_minalarm1,a
	mov	(_minalarm1 + 1),a
00106$:
	C$main.c$139$3$13 ==.
;	main.c:139: P2=dig_val[minalarm1];
	mov	a,_minalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$140$3$13 ==.
;	main.c:140: delay(20);
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
	C$main.c$141$3$13 ==.
;	main.c:141: break;
	ljmp	00114$
	C$main.c$143$3$13 ==.
;	main.c:143: case 3:  // Set the sec2 digit.
00107$:
	C$main.c$144$3$13 ==.
;	main.c:144: P2=dig_val[secalarm2];
	mov	a,_secalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$145$3$13 ==.
;	main.c:145: delay(100);
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
	C$main.c$146$3$13 ==.
;	main.c:146: secalarm2++;
	inc	_secalarm2
	clr	a
	cjne	a,_secalarm2,00168$
	inc	(_secalarm2 + 1)
00168$:
	C$main.c$147$3$13 ==.
;	main.c:147: if(secalarm2==6)
	mov	a,#0x06
	cjne	a,_secalarm2,00169$
	clr	a
	cjne	a,(_secalarm2 + 1),00169$
	sjmp	00170$
00169$:
	sjmp	00109$
00170$:
	C$main.c$148$3$13 ==.
;	main.c:148: secalarm2=0;
	clr	a
	mov	_secalarm2,a
	mov	(_secalarm2 + 1),a
00109$:
	C$main.c$149$3$13 ==.
;	main.c:149: P2=dig_val[secalarm2];
	mov	a,_secalarm2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$150$3$13 ==.
;	main.c:150: delay(20);
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
	C$main.c$151$3$13 ==.
;	main.c:151: break;
	ljmp	00114$
	C$main.c$153$3$13 ==.
;	main.c:153: case 4:  //Set the sec1 digit.
00110$:
	C$main.c$155$3$13 ==.
;	main.c:155: P2=dig_val[secalarm1];
	mov	a,_secalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$156$3$13 ==.
;	main.c:156: delay(100);
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
	C$main.c$157$3$13 ==.
;	main.c:157: secalarm1++;
	inc	_secalarm1
	clr	a
	cjne	a,_secalarm1,00171$
	inc	(_secalarm1 + 1)
00171$:
	C$main.c$158$3$13 ==.
;	main.c:158: if(secalarm1==10)
	mov	a,#0x0a
	cjne	a,_secalarm1,00172$
	clr	a
	cjne	a,(_secalarm1 + 1),00172$
	sjmp	00173$
00172$:
	sjmp	00112$
00173$:
	C$main.c$159$3$13 ==.
;	main.c:159: secalarm1=0;
	clr	a
	mov	_secalarm1,a
	mov	(_secalarm1 + 1),a
00112$:
	C$main.c$160$3$13 ==.
;	main.c:160: P2=dig_val[secalarm1];
	mov	a,_secalarm1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$161$3$13 ==.
;	main.c:161: delay(20);
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
	C$main.c$163$1$11 ==.
;	main.c:163: }
	ljmp	00114$
00117$:
	C$main.c$165$1$11 ==.
	XG$increase$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetfn'
;------------------------------------------------------------
	G$resetfn$0$0 ==.
	C$main.c$167$1$11 ==.
;	main.c:167: void resetfn(__bit mode)  // Function to bring the clock to reset or set mode.
;	-----------------------------------------
;	 function resetfn
;	-----------------------------------------
_resetfn:
	C$main.c$169$1$15 ==.
;	main.c:169: begin=1;
	mov	_begin,#0x01
	mov	(_begin + 1),#0x00
	C$main.c$170$1$15 ==.
;	main.c:170: dig_ctrl_4=1;  //Enable the min2 digit and disable others
	setb	_P1_0
	C$main.c$171$1$15 ==.
;	main.c:171: dig_ctrl_3=0;
	clr	_P1_1
	C$main.c$172$1$15 ==.
;	main.c:172: dig_ctrl_2=0;
	clr	_P1_2
	C$main.c$173$1$15 ==.
;	main.c:173: dig_ctrl_1=0;
	clr	_P1_3
	C$main.c$174$1$15 ==.
;	main.c:174: if(mode==0)  //Check if clock is in set alarm mode
	jb	_resetfn_PARM_1,00102$
	C$main.c$176$2$16 ==.
;	main.c:176: IE=0x88;  //Disable Timer0 interrupt to stop the display of clock.
	mov	_IE,#0x88
	C$main.c$177$2$16 ==.
;	main.c:177: sel_seg_to_incr=1;
	mov	_sel_seg_to_incr,#0x01
	mov	(_sel_seg_to_incr + 1),#0x00
	C$main.c$178$2$16 ==.
;	main.c:178: recnt_incr_seg=1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$179$2$16 ==.
;	main.c:179: P2=dig_val[keepmin2];
	mov	a,_keepmin2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$180$2$16 ==.
;	main.c:180: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	C$main.c$181$2$16 ==.
;	main.c:181: minalarm2=keepmin2;
	mov	_minalarm2,_keepmin2
	mov	(_minalarm2 + 1),(_keepmin2 + 1)
	C$main.c$182$2$16 ==.
;	main.c:182: minalarm1=keepmin1;
	mov	_minalarm1,_keepmin1
	mov	(_minalarm1 + 1),(_keepmin1 + 1)
	C$main.c$183$2$16 ==.
;	main.c:183: secalarm2=keepsec2;
	mov	_secalarm2,_keepsec2
	mov	(_secalarm2 + 1),(_keepsec2 + 1)
	C$main.c$184$2$16 ==.
;	main.c:184: secalarm1=keepsec1;
	mov	_secalarm1,_keepsec1
	mov	(_secalarm1 + 1),(_keepsec1 + 1)
00102$:
	C$main.c$186$1$15 ==.
;	main.c:186: if(mode==1)  //Check if clock is in set clock mode
	jnb	_resetfn_PARM_1,00116$
	C$main.c$188$2$17 ==.
;	main.c:188: IE=0x80;  //Disable Timer0 interrupt to stop the clock.
	mov	_IE,#0x80
	C$main.c$189$2$17 ==.
;	main.c:189: minalarm2=min2;
	mov	_minalarm2,_min2
	mov	(_minalarm2 + 1),(_min2 + 1)
	C$main.c$190$2$17 ==.
;	main.c:190: minalarm1=min1;
	mov	_minalarm1,_min1
	mov	(_minalarm1 + 1),(_min1 + 1)
	C$main.c$191$2$17 ==.
;	main.c:191: secalarm2=sec2;
	mov	_secalarm2,_sec2
	mov	(_secalarm2 + 1),(_sec2 + 1)
	C$main.c$192$2$17 ==.
;	main.c:192: secalarm1=sec1;
	mov	_secalarm1,_sec1
	mov	(_secalarm1 + 1),(_sec1 + 1)
	C$main.c$193$2$17 ==.
;	main.c:193: sel_seg_to_incr=1;
	mov	_sel_seg_to_incr,#0x01
	mov	(_sel_seg_to_incr + 1),#0x00
	C$main.c$194$2$17 ==.
;	main.c:194: recnt_incr_seg=1;
	mov	_recnt_incr_seg,#0x01
	mov	(_recnt_incr_seg + 1),#0x00
	C$main.c$195$2$17 ==.
;	main.c:195: P2=dig_val[min2];
	mov	a,_min2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$196$2$17 ==.
;	main.c:196: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	C$main.c$198$1$15 ==.
;	main.c:198: while(1)
00116$:
	C$main.c$200$2$18 ==.
;	main.c:200: if(start==0)  //Check if start pin is pressed
	jb	_P3_3,00110$
	C$main.c$202$3$19 ==.
;	main.c:202: if(mode==0)
	jb	_resetfn_PARM_1,00106$
	C$main.c$204$4$20 ==.
;	main.c:204: keepmin2=minalarm2;
	mov	_keepmin2,_minalarm2
	mov	(_keepmin2 + 1),(_minalarm2 + 1)
	C$main.c$205$4$20 ==.
;	main.c:205: keepmin1=minalarm1;
	mov	_keepmin1,_minalarm1
	mov	(_keepmin1 + 1),(_minalarm1 + 1)
	C$main.c$206$4$20 ==.
;	main.c:206: keepsec2=secalarm2;
	mov	_keepsec2,_secalarm2
	mov	(_keepsec2 + 1),(_secalarm2 + 1)
	C$main.c$207$4$20 ==.
;	main.c:207: keepsec1=secalarm1;
	mov	_keepsec1,_secalarm1
	mov	(_keepsec1 + 1),(_secalarm1 + 1)
	C$main.c$208$4$20 ==.
;	main.c:208: alarmmin2=minalarm2;
	mov	_alarmmin2,_minalarm2
	mov	(_alarmmin2 + 1),(_minalarm2 + 1)
	C$main.c$209$4$20 ==.
;	main.c:209: alarmmin1=minalarm1;
	mov	_alarmmin1,_minalarm1
	mov	(_alarmmin1 + 1),(_minalarm1 + 1)
	C$main.c$210$4$20 ==.
;	main.c:210: alarmsec2=secalarm2;
	mov	_alarmsec2,_secalarm2
	mov	(_alarmsec2 + 1),(_secalarm2 + 1)
	C$main.c$211$4$20 ==.
;	main.c:211: alarmsec1=secalarm1;
	mov	_alarmsec1,_secalarm1
	mov	(_alarmsec1 + 1),(_secalarm1 + 1)
00106$:
	C$main.c$213$3$19 ==.
;	main.c:213: if(mode==1)
	jnb	_resetfn_PARM_1,00108$
	C$main.c$215$4$21 ==.
;	main.c:215: min2=minalarm2;
	mov	_min2,_minalarm2
	mov	(_min2 + 1),(_minalarm2 + 1)
	C$main.c$216$4$21 ==.
;	main.c:216: min1=minalarm1;
	mov	_min1,_minalarm1
	mov	(_min1 + 1),(_minalarm1 + 1)
	C$main.c$217$4$21 ==.
;	main.c:217: sec2=secalarm2;
	mov	_sec2,_secalarm2
	mov	(_sec2 + 1),(_secalarm2 + 1)
	C$main.c$218$4$21 ==.
;	main.c:218: sec1=secalarm1;
	mov	_sec1,_secalarm1
	mov	(_sec1 + 1),(_secalarm1 + 1)
00108$:
	C$main.c$220$3$19 ==.
;	main.c:220: TMOD=0x11;  //Reset the timer0
	mov	_TMOD,#0x11
	C$main.c$221$3$19 ==.
;	main.c:221: TL0=0xf6;
	mov	_TL0,#0xf6
	C$main.c$222$3$19 ==.
;	main.c:222: TH0=0xFf;
	mov	_TH0,#0xff
	C$main.c$223$3$19 ==.
;	main.c:223: IE=0x8A;  //Enabling Timer0 interrupt to start the display of clock
	mov	_IE,#0x8a
	C$main.c$224$3$19 ==.
;	main.c:224: TR0=1;
	setb	_TR0
	C$main.c$225$3$19 ==.
;	main.c:225: break;
	sjmp	00118$
00110$:
	C$main.c$227$2$18 ==.
;	main.c:227: if(set==0)  //Check if set pin is pressed
	jb	_P1_6,00112$
	C$main.c$228$2$18 ==.
;	main.c:228: sel_seg_to_incr=setfn();
	lcall	_setfn
	mov	_sel_seg_to_incr,dpl
	mov	(_sel_seg_to_incr + 1),dph
00112$:
	C$main.c$229$2$18 ==.
;	main.c:229: if(incr==0)  //Check if incr pin is pressed
	jb	_P1_7,00116$
	C$main.c$230$2$18 ==.
;	main.c:230: increase(sel_seg_to_incr);
	mov	dpl,_sel_seg_to_incr
	mov	dph,(_sel_seg_to_incr + 1)
	lcall	_increase
	sjmp	00116$
00118$:
	C$main.c$232$1$15 ==.
	XG$resetfn$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
	G$display$0$0 ==.
	C$main.c$234$1$15 ==.
;	main.c:234: void display(void) __interrupt (1)  // Function to display the digits on seven segment using the concept of seven segment multiplexing.
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
	C$main.c$236$1$23 ==.
;	main.c:236: TL0=0x36;  //Reload Timer0
	mov	_TL0,#0x36
	C$main.c$237$1$23 ==.
;	main.c:237: TH0=0xf6;
	mov	_TH0,#0xf6
	C$main.c$238$1$23 ==.
;	main.c:238: P2=0xFF;
	mov	_P2,#0xff
	C$main.c$239$1$23 ==.
;	main.c:239: dig_ctrl_1 = dig_ctrl_3 = dig_ctrl_2 = dig_ctrl_4 = 0;
	clr	_P1_0
	mov	c,_P1_0
	mov	_P1_2,c
	mov	c,_P1_2
	mov	_P1_1,c
	mov	c,_P1_1
	mov	_P1_3,c
	C$main.c$240$1$23 ==.
;	main.c:240: dig_disp++;
	inc	_dig_disp
	C$main.c$241$1$23 ==.
;	main.c:241: dig_disp=dig_disp%4;
	anl	_dig_disp,#0x03
	C$main.c$242$1$23 ==.
;	main.c:242: switch(dig_disp)
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
	C$main.c$244$2$24 ==.
;	main.c:244: case 0:
00101$:
	C$main.c$245$2$24 ==.
;	main.c:245: P2=dig_val[sec1];
	mov	a,_sec1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$246$2$24 ==.
;	main.c:246: dig_ctrl_1 = 1;
	setb	_P1_3
	C$main.c$247$2$24 ==.
;	main.c:247: break;
	C$main.c$249$2$24 ==.
;	main.c:249: case 1:
	sjmp	00106$
00102$:
	C$main.c$250$2$24 ==.
;	main.c:250: P2= dig_val[sec2];
	mov	a,_sec2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$251$2$24 ==.
;	main.c:251: dig_ctrl_2 = 1;
	setb	_P1_2
	C$main.c$252$2$24 ==.
;	main.c:252: break;
	C$main.c$254$2$24 ==.
;	main.c:254: case 2:
	sjmp	00106$
00103$:
	C$main.c$255$2$24 ==.
;	main.c:255: P2= dig_val[min1];
	mov	a,_min1
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$256$2$24 ==.
;	main.c:256: dig_ctrl_3 = 1;
	setb	_P1_1
	C$main.c$257$2$24 ==.
;	main.c:257: break;
	C$main.c$259$2$24 ==.
;	main.c:259: case 3:
	sjmp	00106$
00104$:
	C$main.c$260$2$24 ==.
;	main.c:260: P2= dig_val[min2];
	mov	a,_min2
	add	a,#_dig_val
	mov	r1,a
	mov	_P2,@r1
	C$main.c$261$2$24 ==.
;	main.c:261: dig_ctrl_4 = 1;
	setb	_P1_0
	C$main.c$263$1$23 ==.
;	main.c:263: }
00106$:
	pop	psw
	pop	ar1
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	C$main.c$264$1$23 ==.
	XG$display$0$0 ==.
	reti
;	eliminated unneeded push/pop ar0
;------------------------------------------------------------
;Allocation info for local variables in function 'moveclock'
;------------------------------------------------------------
	G$moveclock$0$0 ==.
	C$main.c$266$1$23 ==.
;	main.c:266: void moveclock(void) __interrupt 3  // Function to increment clock digits
;	-----------------------------------------
;	 function moveclock
;	-----------------------------------------
_moveclock:
	push	acc
	push	psw
	C$main.c$268$1$26 ==.
;	main.c:268: loop++;
	inc	_loop
	clr	a
	cjne	a,_loop,00128$
	inc	(_loop + 1)
00128$:
	C$main.c$269$1$26 ==.
;	main.c:269: if(loop==20)
	mov	a,#0x14
	cjne	a,_loop,00129$
	clr	a
	cjne	a,(_loop + 1),00129$
	sjmp	00130$
00129$:
	ljmp	00111$
00130$:
	C$main.c$271$2$27 ==.
;	main.c:271: sec1++;
	inc	_sec1
	clr	a
	cjne	a,_sec1,00131$
	inc	(_sec1 + 1)
00131$:
	C$main.c$272$2$27 ==.
;	main.c:272: if(sec1==10)
	mov	a,#0x0a
	cjne	a,_sec1,00132$
	clr	a
	cjne	a,(_sec1 + 1),00132$
	sjmp	00133$
00132$:
	sjmp	00108$
00133$:
	C$main.c$274$3$28 ==.
;	main.c:274: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
	C$main.c$275$3$28 ==.
;	main.c:275: sec2++;
	inc	_sec2
;	genFromRTrack removed	clr	a
	cjne	a,_sec2,00134$
	inc	(_sec2 + 1)
00134$:
	C$main.c$276$3$28 ==.
;	main.c:276: if(sec2==6)
	mov	a,#0x06
	cjne	a,_sec2,00135$
	clr	a
	cjne	a,(_sec2 + 1),00135$
	sjmp	00136$
00135$:
	sjmp	00108$
00136$:
	C$main.c$278$4$29 ==.
;	main.c:278: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
	C$main.c$279$4$29 ==.
;	main.c:279: sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
	C$main.c$280$4$29 ==.
;	main.c:280: min1++;
	inc	_min1
;	genFromRTrack removed	clr	a
	cjne	a,_min1,00137$
	inc	(_min1 + 1)
00137$:
	C$main.c$281$4$29 ==.
;	main.c:281: if(min1==10)
	mov	a,#0x0a
	cjne	a,_min1,00138$
	clr	a
	cjne	a,(_min1 + 1),00138$
	sjmp	00139$
00138$:
	sjmp	00108$
00139$:
	C$main.c$283$5$30 ==.
;	main.c:283: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
	C$main.c$284$5$30 ==.
;	main.c:284: sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
	C$main.c$285$5$30 ==.
;	main.c:285: min1=0;
	mov	_min1,a
	mov	(_min1 + 1),a
	C$main.c$286$5$30 ==.
;	main.c:286: min2++;
	inc	_min2
;	genFromRTrack removed	clr	a
	cjne	a,_min2,00140$
	inc	(_min2 + 1)
00140$:
	C$main.c$287$5$30 ==.
;	main.c:287: if(min2==6)
	mov	a,#0x06
	cjne	a,_min2,00141$
	clr	a
	cjne	a,(_min2 + 1),00141$
	sjmp	00142$
00141$:
	sjmp	00108$
00142$:
	C$main.c$289$6$31 ==.
;	main.c:289: sec1=0;
	clr	a
	mov	_sec1,a
	mov	(_sec1 + 1),a
	C$main.c$290$6$31 ==.
;	main.c:290: sec2=0;
	mov	_sec2,a
	mov	(_sec2 + 1),a
	C$main.c$291$6$31 ==.
;	main.c:291: min1=0;
	mov	_min1,a
	mov	(_min1 + 1),a
	C$main.c$292$6$31 ==.
;	main.c:292: min2=0;
	mov	_min2,a
	mov	(_min2 + 1),a
00108$:
	C$main.c$297$2$27 ==.
;	main.c:297: loop=0;
	clr	a
	mov	_loop,a
	mov	(_loop + 1),a
00111$:
	pop	psw
	pop	acc
	C$main.c$299$1$26 ==.
	XG$moveclock$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$301$1$26 ==.
;	main.c:301: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$303$1$32 ==.
;	main.c:303: mode=0;
	clr	a
	mov	_mode,a
	mov	(_mode + 1),a
	C$main.c$304$1$32 ==.
;	main.c:304: set=1;  //Initialize set, reset, start and incr pins as input
	setb	_P1_6
	C$main.c$305$1$32 ==.
;	main.c:305: resetalarm=1;
	setb	_P1_5
	C$main.c$306$1$32 ==.
;	main.c:306: resetclock=1;
	setb	_P1_4
	C$main.c$307$1$32 ==.
;	main.c:307: start=1;
	setb	_P3_3
	C$main.c$308$1$32 ==.
;	main.c:308: incr=1;
	setb	_P1_7
	C$main.c$309$1$32 ==.
;	main.c:309: begin=0;
	clr	a
	mov	_begin,a
	mov	(_begin + 1),a
	C$main.c$310$1$32 ==.
;	main.c:310: TMOD=0x11;  //Intialize Timer 0
	mov	_TMOD,#0x11
	C$main.c$311$1$32 ==.
;	main.c:311: TL0=0xf6;  //Load timer0
	mov	_TL0,#0xf6
	C$main.c$312$1$32 ==.
;	main.c:312: TH0=0xFf;
	mov	_TH0,#0xff
	C$main.c$313$1$32 ==.
;	main.c:313: IE=0x8A;  //Enable Timer0 interrupt
	mov	_IE,#0x8a
	C$main.c$314$1$32 ==.
;	main.c:314: TR0=1;  //Start Timer0
	setb	_TR0
	C$main.c$315$1$32 ==.
;	main.c:315: TL1=0xFD;
	mov	_TL1,#0xfd
	C$main.c$316$1$32 ==.
;	main.c:316: TH1=0x4B;
	mov	_TH1,#0x4b
	C$main.c$317$1$32 ==.
;	main.c:317: TR1=1;  // Start Timer1
	setb	_TR1
	C$main.c$318$1$32 ==.
;	main.c:318: while(1)
00112$:
	C$main.c$320$2$33 ==.
;	main.c:320: if(resetalarm==0)  //Check if reset alarm pin is pressed
	jb	_P1_5,00102$
	C$main.c$322$3$34 ==.
;	main.c:322: resetfn(0);
	clr	_resetfn_PARM_1
	lcall	_resetfn
00102$:
	C$main.c$324$2$33 ==.
;	main.c:324: if(resetclock==0)//Check if reset clock pin is pressed
	jb	_P1_4,00104$
	C$main.c$326$3$35 ==.
;	main.c:326: resetfn(1);
	setb	_resetfn_PARM_1
	lcall	_resetfn
00104$:
	C$main.c$328$2$33 ==.
;	main.c:328: if(min2==alarmmin2&&min1==alarmmin1&&sec2==alarmsec2&&sec1==alarmsec1&&begin==1)// Check for Alarm condition
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
	C$main.c$330$3$36 ==.
;	main.c:330: buzzer=0;
	clr	_P3_7
	C$main.c$331$3$36 ==.
;	main.c:331: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
	C$main.c$332$3$36 ==.
;	main.c:332: buzzer=1;
	setb	_P3_7
	sjmp	00112$
	C$main.c$336$1$32 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
