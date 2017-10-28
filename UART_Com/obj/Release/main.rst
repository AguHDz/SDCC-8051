                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _mensajeInicialLine3
                                     12 	.globl _mensajeInicialLine2
                                     13 	.globl _mensajeInicialLine1
                                     14 	.globl _serial_ISR
                                     15 	.globl _main
                                     16 	.globl _SendStringONOFFSerally_PARM_2
                                     17 	.globl _TF2
                                     18 	.globl _EXF2
                                     19 	.globl _RCLK
                                     20 	.globl _TCLK
                                     21 	.globl _EXEN2
                                     22 	.globl _TR2
                                     23 	.globl _C_T2
                                     24 	.globl _CP_RL2
                                     25 	.globl _T2CON_7
                                     26 	.globl _T2CON_6
                                     27 	.globl _T2CON_5
                                     28 	.globl _T2CON_4
                                     29 	.globl _T2CON_3
                                     30 	.globl _T2CON_2
                                     31 	.globl _T2CON_1
                                     32 	.globl _T2CON_0
                                     33 	.globl _PT2
                                     34 	.globl _ET2
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _TH2
                                    111 	.globl _TL2
                                    112 	.globl _RCAP2H
                                    113 	.globl _RCAP2L
                                    114 	.globl _T2CON
                                    115 	.globl _B
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _IP
                                    119 	.globl _P3
                                    120 	.globl _IE
                                    121 	.globl _P2
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _P1
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _P0
                                    136 	.globl _contador
                                    137 	.globl _delay
                                    138 	.globl _cct_init
                                    139 	.globl _SerialInitialize
                                    140 	.globl _SendByteSerially
                                    141 	.globl _SendCRLFSerially
                                    142 	.globl _SendStringSerally
                                    143 	.globl _SendStringCRLFSerally
                                    144 	.globl _SendStringONOFFSerally
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000F0   170 _B	=	0x00f0
                           0000C8   171 _T2CON	=	0x00c8
                           0000CA   172 _RCAP2L	=	0x00ca
                           0000CB   173 _RCAP2H	=	0x00cb
                           0000CC   174 _TL2	=	0x00cc
                           0000CD   175 _TH2	=	0x00cd
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000088   189 _IT0	=	0x0088
                           000089   190 _IE0	=	0x0089
                           00008A   191 _IT1	=	0x008a
                           00008B   192 _IE1	=	0x008b
                           00008C   193 _TR0	=	0x008c
                           00008D   194 _TF0	=	0x008d
                           00008E   195 _TR1	=	0x008e
                           00008F   196 _TF1	=	0x008f
                           000090   197 _P1_0	=	0x0090
                           000091   198 _P1_1	=	0x0091
                           000092   199 _P1_2	=	0x0092
                           000093   200 _P1_3	=	0x0093
                           000094   201 _P1_4	=	0x0094
                           000095   202 _P1_5	=	0x0095
                           000096   203 _P1_6	=	0x0096
                           000097   204 _P1_7	=	0x0097
                           000098   205 _RI	=	0x0098
                           000099   206 _TI	=	0x0099
                           00009A   207 _RB8	=	0x009a
                           00009B   208 _TB8	=	0x009b
                           00009C   209 _REN	=	0x009c
                           00009D   210 _SM2	=	0x009d
                           00009E   211 _SM1	=	0x009e
                           00009F   212 _SM0	=	0x009f
                           0000A0   213 _P2_0	=	0x00a0
                           0000A1   214 _P2_1	=	0x00a1
                           0000A2   215 _P2_2	=	0x00a2
                           0000A3   216 _P2_3	=	0x00a3
                           0000A4   217 _P2_4	=	0x00a4
                           0000A5   218 _P2_5	=	0x00a5
                           0000A6   219 _P2_6	=	0x00a6
                           0000A7   220 _P2_7	=	0x00a7
                           0000A8   221 _EX0	=	0x00a8
                           0000A9   222 _ET0	=	0x00a9
                           0000AA   223 _EX1	=	0x00aa
                           0000AB   224 _ET1	=	0x00ab
                           0000AC   225 _ES	=	0x00ac
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000D0   248 _P	=	0x00d0
                           0000D1   249 _F1	=	0x00d1
                           0000D2   250 _OV	=	0x00d2
                           0000D3   251 _RS0	=	0x00d3
                           0000D4   252 _RS1	=	0x00d4
                           0000D5   253 _F0	=	0x00d5
                           0000D6   254 _AC	=	0x00d6
                           0000D7   255 _CY	=	0x00d7
                           0000AD   256 _ET2	=	0x00ad
                           0000BD   257 _PT2	=	0x00bd
                           0000C8   258 _T2CON_0	=	0x00c8
                           0000C9   259 _T2CON_1	=	0x00c9
                           0000CA   260 _T2CON_2	=	0x00ca
                           0000CB   261 _T2CON_3	=	0x00cb
                           0000CC   262 _T2CON_4	=	0x00cc
                           0000CD   263 _T2CON_5	=	0x00cd
                           0000CE   264 _T2CON_6	=	0x00ce
                           0000CF   265 _T2CON_7	=	0x00cf
                           0000C8   266 _CP_RL2	=	0x00c8
                           0000C9   267 _C_T2	=	0x00c9
                           0000CA   268 _TR2	=	0x00ca
                           0000CB   269 _EXEN2	=	0x00cb
                           0000CC   270 _TCLK	=	0x00cc
                           0000CD   271 _RCLK	=	0x00cd
                           0000CE   272 _EXF2	=	0x00ce
                           0000CF   273 _TF2	=	0x00cf
      000000                        274 _SendStringONOFFSerally_PARM_2:
      000000                        275 	.ds 1
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable bit register bank
                                    283 ;--------------------------------------------------------
                                    284 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        285 bits:
      000020                        286 	.ds 1
                           008000   287 	b0 = bits[0]
                           008100   288 	b1 = bits[1]
                           008200   289 	b2 = bits[2]
                           008300   290 	b3 = bits[3]
                           008400   291 	b4 = bits[4]
                           008500   292 	b5 = bits[5]
                           008600   293 	b6 = bits[6]
                           008700   294 	b7 = bits[7]
                                    295 ;--------------------------------------------------------
                                    296 ; internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area DSEG    (DATA)
      000008                        299 _contador::
      000008                        300 	.ds 1
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable items in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 	.area	OSEG    (OVR,DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; Stack segment in internal ram 
                                    308 ;--------------------------------------------------------
                                    309 	.area	SSEG
      000021                        310 __start__stack:
      000021                        311 	.ds	1
                                    312 
                                    313 ;--------------------------------------------------------
                                    314 ; indirectly addressable internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area ISEG    (DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; absolute internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area IABS    (ABS,DATA)
                                    321 	.area IABS    (ABS,DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; bit data
                                    324 ;--------------------------------------------------------
                                    325 	.area BSEG    (BIT)
                                    326 ;--------------------------------------------------------
                                    327 ; paged external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area PSEG    (PAG,XDATA)
                                    330 ;--------------------------------------------------------
                                    331 ; external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XSEG    (XDATA)
                                    334 ;--------------------------------------------------------
                                    335 ; absolute external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area XABS    (ABS,XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; external initialized ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XISEG   (XDATA)
                                    342 	.area HOME    (CODE)
                                    343 	.area GSINIT0 (CODE)
                                    344 	.area GSINIT1 (CODE)
                                    345 	.area GSINIT2 (CODE)
                                    346 	.area GSINIT3 (CODE)
                                    347 	.area GSINIT4 (CODE)
                                    348 	.area GSINIT5 (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.area GSFINAL (CODE)
                                    351 	.area CSEG    (CODE)
                                    352 ;--------------------------------------------------------
                                    353 ; interrupt vector 
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
      000000                        356 __interrupt_vect:
      000000 02 00 29         [24]  357 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  358 	reti
      000004                        359 	.ds	7
      00000B 32               [24]  360 	reti
      00000C                        361 	.ds	7
      000013 32               [24]  362 	reti
      000014                        363 	.ds	7
      00001B 32               [24]  364 	reti
      00001C                        365 	.ds	7
      000023 02 01 6B         [24]  366 	ljmp	_serial_ISR
                                    367 ;--------------------------------------------------------
                                    368 ; global & static initialisations
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.globl __sdcc_gsinit_startup
                                    375 	.globl __sdcc_program_startup
                                    376 	.globl __start__stack
                                    377 	.globl __mcs51_genXINIT
                                    378 	.globl __mcs51_genXRAMCLEAR
                                    379 	.globl __mcs51_genRAMCLEAR
                                    380 ;	main.c:34: unsigned char contador = 0;
      000082 75 08 00         [24]  381 	mov	_contador,#0x00
                                    382 	.area GSFINAL (CODE)
      000085 02 00 26         [24]  383 	ljmp	__sdcc_program_startup
                                    384 ;--------------------------------------------------------
                                    385 ; Home
                                    386 ;--------------------------------------------------------
                                    387 	.area HOME    (CODE)
                                    388 	.area HOME    (CODE)
      000026                        389 __sdcc_program_startup:
      000026 02 00 88         [24]  390 	ljmp	_main
                                    391 ;	return from main will return to caller
                                    392 ;--------------------------------------------------------
                                    393 ; code
                                    394 ;--------------------------------------------------------
                                    395 	.area CSEG    (CODE)
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'main'
                                    398 ;------------------------------------------------------------
                                    399 ;	main.c:36: void main()
                                    400 ;	-----------------------------------------
                                    401 ;	 function main
                                    402 ;	-----------------------------------------
      000088                        403 _main:
                           000007   404 	ar7 = 0x07
                           000006   405 	ar6 = 0x06
                           000005   406 	ar5 = 0x05
                           000004   407 	ar4 = 0x04
                           000003   408 	ar3 = 0x03
                           000002   409 	ar2 = 0x02
                           000001   410 	ar1 = 0x01
                           000000   411 	ar0 = 0x00
                                    412 ;	main.c:38:     cct_init();
      000088 12 00 D8         [24]  413 	lcall	_cct_init
                                    414 ;	main.c:39:     SerialInitialize();
      00008B 12 00 E5         [24]  415 	lcall	_SerialInitialize
                                    416 ;	main.c:40:     ES = 0; 
      00008E C2 AC            [12]  417 	clr	_ES
                                    418 ;	main.c:41: SendStringCRLFSerally(mensajeInicialLine1);
      000090 90 02 AC         [24]  419 	mov	dptr,#_mensajeInicialLine1
      000093 75 F0 80         [24]  420 	mov	b,#0x80
      000096 12 01 4D         [24]  421 	lcall	_SendStringCRLFSerally
                                    422 ;	main.c:42: SendStringCRLFSerally(mensajeInicialLine2);
      000099 90 02 EA         [24]  423 	mov	dptr,#_mensajeInicialLine2
      00009C 75 F0 80         [24]  424 	mov	b,#0x80
      00009F 12 01 4D         [24]  425 	lcall	_SendStringCRLFSerally
                                    426 ;	main.c:43: SendStringCRLFSerally(mensajeInicialLine3);
      0000A2 90 03 0F         [24]  427 	mov	dptr,#_mensajeInicialLine3
      0000A5 75 F0 80         [24]  428 	mov	b,#0x80
      0000A8 12 01 4D         [24]  429 	lcall	_SendStringCRLFSerally
                                    430 ;	main.c:45: ES=1;       // Habilita Interrupcion de Puerto Serie.
      0000AB D2 AC            [12]  431 	setb	_ES
                                    432 ;	main.c:46: EA=1;       // Habilita Interrupciones.
      0000AD D2 AF            [12]  433 	setb	_EA
                                    434 ;	main.c:48:     while(1)
      0000AF                        435 00102$:
                                    436 ;	main.c:51: P2_0=0;
      0000AF C2 A0            [12]  437 	clr	_P2_0
                                    438 ;	main.c:52: delay(40000);
      0000B1 90 9C 40         [24]  439 	mov	dptr,#0x9c40
      0000B4 12 00 C1         [24]  440 	lcall	_delay
                                    441 ;	main.c:53: P2_0=1;
      0000B7 D2 A0            [12]  442 	setb	_P2_0
                                    443 ;	main.c:54: delay(40000);
      0000B9 90 9C 40         [24]  444 	mov	dptr,#0x9c40
      0000BC 12 00 C1         [24]  445 	lcall	_delay
      0000BF 80 EE            [24]  446 	sjmp	00102$
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'delay'
                                    449 ;------------------------------------------------------------
                                    450 ;vueltas                   Allocated to registers r6 r7 
                                    451 ;contador                  Allocated to registers r4 r5 
                                    452 ;------------------------------------------------------------
                                    453 ;	main.c:58: void delay(unsigned int vueltas)
                                    454 ;	-----------------------------------------
                                    455 ;	 function delay
                                    456 ;	-----------------------------------------
      0000C1                        457 _delay:
      0000C1 AE 82            [24]  458 	mov	r6,dpl
      0000C3 AF 83            [24]  459 	mov	r7,dph
                                    460 ;	main.c:61: for(contador=0; contador<vueltas; contador++);
      0000C5 7C 00            [12]  461 	mov	r4,#0x00
      0000C7 7D 00            [12]  462 	mov	r5,#0x00
      0000C9                        463 00103$:
      0000C9 C3               [12]  464 	clr	c
      0000CA EC               [12]  465 	mov	a,r4
      0000CB 9E               [12]  466 	subb	a,r6
      0000CC ED               [12]  467 	mov	a,r5
      0000CD 9F               [12]  468 	subb	a,r7
      0000CE 50 07            [24]  469 	jnc	00105$
      0000D0 0C               [12]  470 	inc	r4
      0000D1 BC 00 F5         [24]  471 	cjne	r4,#0x00,00103$
      0000D4 0D               [12]  472 	inc	r5
      0000D5 80 F2            [24]  473 	sjmp	00103$
      0000D7                        474 00105$:
      0000D7 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'cct_init'
                                    478 ;------------------------------------------------------------
                                    479 ;	main.c:64: void cct_init(void)   //initialize cct
                                    480 ;	-----------------------------------------
                                    481 ;	 function cct_init
                                    482 ;	-----------------------------------------
      0000D8                        483 _cct_init:
                                    484 ;	main.c:66:     P0 = 0x00;      //not used
      0000D8 75 80 00         [24]  485 	mov	_P0,#0x00
                                    486 ;	main.c:67:     P1 = 0x00;      //Used for Appliances
      0000DB 75 90 00         [24]  487 	mov	_P1,#0x00
                                    488 ;	main.c:68:     P2 = 0x00;      //not used
      0000DE 75 A0 00         [24]  489 	mov	_P2,#0x00
                                    490 ;	main.c:69:     P3 = 0x03;      //used for serial
      0000E1 75 B0 03         [24]  491 	mov	_P3,#0x03
      0000E4 22               [24]  492 	ret
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'SerialInitialize'
                                    495 ;------------------------------------------------------------
                                    496 ;	main.c:72: void SerialInitialize(void)                    // INITIALIZE SERIAL PORT
                                    497 ;	-----------------------------------------
                                    498 ;	 function SerialInitialize
                                    499 ;	-----------------------------------------
      0000E5                        500 _SerialInitialize:
                                    501 ;	main.c:74:     TMOD = 0x20;                               // Timer 1 IN MODE 2 -AUTO RELOAD TO GENERATE BAUD RATE
      0000E5 75 89 20         [24]  502 	mov	_TMOD,#0x20
                                    503 ;	main.c:75:     SCON = 0x50;                               // SERIAL MODE 1, 8-DATA BIT 1-START BIT, 1-STOP BIT, REN ENABLED
      0000E8 75 98 50         [24]  504 	mov	_SCON,#0x50
                                    505 ;	main.c:76:     TH1  = Baud_rate;                          // LOAD BAUDRATE TO TIMER REGISTER
      0000EB 75 8D FD         [24]  506 	mov	_TH1,#0xfd
                                    507 ;	main.c:77:     TR1  = 1;                                  // START TIMER
      0000EE D2 8E            [12]  508 	setb	_TR1
      0000F0 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'SendByteSerially'
                                    512 ;------------------------------------------------------------
                                    513 ;serialdata                Allocated to registers 
                                    514 ;------------------------------------------------------------
                                    515 ;	main.c:80: void SendByteSerially(unsigned char serialdata)
                                    516 ;	-----------------------------------------
                                    517 ;	 function SendByteSerially
                                    518 ;	-----------------------------------------
      0000F1                        519 _SendByteSerially:
      0000F1 85 82 99         [24]  520 	mov	_SBUF,dpl
                                    521 ;	main.c:83:     while(TI == 0);                            // WAIT UNTIL TRANSMISSION TO COMPLETE
      0000F4                        522 00101$:
                                    523 ;	main.c:84:     TI = 0;                                    // CLEAR TRANSMISSION INTERRUPT FLAG
      0000F4 10 99 02         [24]  524 	jbc	_TI,00112$
      0000F7 80 FB            [24]  525 	sjmp	00101$
      0000F9                        526 00112$:
      0000F9 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'SendCRLFSerially'
                                    530 ;------------------------------------------------------------
                                    531 ;	main.c:87: void SendCRLFSerially (void)
                                    532 ;	-----------------------------------------
                                    533 ;	 function SendCRLFSerially
                                    534 ;	-----------------------------------------
      0000FA                        535 _SendCRLFSerially:
                                    536 ;	main.c:89: SendByteSerially(CR);
      0000FA 75 82 0D         [24]  537 	mov	dpl,#0x0d
      0000FD 12 00 F1         [24]  538 	lcall	_SendByteSerially
                                    539 ;	main.c:90: SendByteSerially(LF);
      000100 75 82 0A         [24]  540 	mov	dpl,#0x0a
      000103 02 00 F1         [24]  541 	ljmp	_SendByteSerially
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'SendStringSerally'
                                    544 ;------------------------------------------------------------
                                    545 ;cadena                    Allocated to registers r5 r6 r7 
                                    546 ;contador                  Allocated to registers r4 
                                    547 ;------------------------------------------------------------
                                    548 ;	main.c:93: void SendStringSerally(char* cadena)
                                    549 ;	-----------------------------------------
                                    550 ;	 function SendStringSerally
                                    551 ;	-----------------------------------------
      000106                        552 _SendStringSerally:
      000106 AD 82            [24]  553 	mov	r5,dpl
      000108 AE 83            [24]  554 	mov	r6,dph
      00010A AF F0            [24]  555 	mov	r7,b
                                    556 ;	main.c:96: while (cadena[contador])
      00010C 7C 00            [12]  557 	mov	r4,#0x00
      00010E                        558 00101$:
      00010E EC               [12]  559 	mov	a,r4
      00010F 2D               [12]  560 	add	a,r5
      000110 F9               [12]  561 	mov	r1,a
      000111 E4               [12]  562 	clr	a
      000112 3E               [12]  563 	addc	a,r6
      000113 FA               [12]  564 	mov	r2,a
      000114 8F 03            [24]  565 	mov	ar3,r7
      000116 89 82            [24]  566 	mov	dpl,r1
      000118 8A 83            [24]  567 	mov	dph,r2
      00011A 8B F0            [24]  568 	mov	b,r3
      00011C 12 02 8C         [24]  569 	lcall	__gptrget
      00011F 60 2B            [24]  570 	jz	00104$
                                    571 ;	main.c:98: SendByteSerially(cadena[contador++]);
      000121 8C 03            [24]  572 	mov	ar3,r4
      000123 0C               [12]  573 	inc	r4
      000124 EB               [12]  574 	mov	a,r3
      000125 2D               [12]  575 	add	a,r5
      000126 F9               [12]  576 	mov	r1,a
      000127 E4               [12]  577 	clr	a
      000128 3E               [12]  578 	addc	a,r6
      000129 FA               [12]  579 	mov	r2,a
      00012A 8F 03            [24]  580 	mov	ar3,r7
      00012C 89 82            [24]  581 	mov	dpl,r1
      00012E 8A 83            [24]  582 	mov	dph,r2
      000130 8B F0            [24]  583 	mov	b,r3
      000132 12 02 8C         [24]  584 	lcall	__gptrget
      000135 F5 82            [12]  585 	mov	dpl,a
      000137 C0 07            [24]  586 	push	ar7
      000139 C0 06            [24]  587 	push	ar6
      00013B C0 05            [24]  588 	push	ar5
      00013D C0 04            [24]  589 	push	ar4
      00013F 12 00 F1         [24]  590 	lcall	_SendByteSerially
      000142 D0 04            [24]  591 	pop	ar4
      000144 D0 05            [24]  592 	pop	ar5
      000146 D0 06            [24]  593 	pop	ar6
      000148 D0 07            [24]  594 	pop	ar7
      00014A 80 C2            [24]  595 	sjmp	00101$
      00014C                        596 00104$:
      00014C 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'SendStringCRLFSerally'
                                    600 ;------------------------------------------------------------
                                    601 ;cadena                    Allocated to registers r5 r6 r7 
                                    602 ;------------------------------------------------------------
                                    603 ;	main.c:102: void SendStringCRLFSerally(char* cadena)
                                    604 ;	-----------------------------------------
                                    605 ;	 function SendStringCRLFSerally
                                    606 ;	-----------------------------------------
      00014D                        607 _SendStringCRLFSerally:
                                    608 ;	main.c:104: SendStringSerally(cadena);
      00014D 12 01 06         [24]  609 	lcall	_SendStringSerally
                                    610 ;	main.c:105: SendCRLFSerially();
      000150 02 00 FA         [24]  611 	ljmp	_SendCRLFSerially
                                    612 ;------------------------------------------------------------
                                    613 ;Allocation info for local variables in function 'SendStringONOFFSerally'
                                    614 ;------------------------------------------------------------
                                    615 ;texto                     Allocated to registers r5 r6 r7 
                                    616 ;pinPuerto                 Allocated with name '_SendStringONOFFSerally_PARM_2'
                                    617 ;------------------------------------------------------------
                                    618 ;	main.c:108: void SendStringONOFFSerally(char* texto, __sbit pinPuerto)
                                    619 ;	-----------------------------------------
                                    620 ;	 function SendStringONOFFSerally
                                    621 ;	-----------------------------------------
      000153                        622 _SendStringONOFFSerally:
                                    623 ;	main.c:110: SendStringSerally(texto);
      000153 12 01 06         [24]  624 	lcall	_SendStringSerally
                                    625 ;	main.c:111: if (pinPuerto) SendStringCRLFSerally(" : ON");
      000156 30 00 09         [24]  626 	jnb	_SendStringONOFFSerally_PARM_2,00102$
      000159 90 03 31         [24]  627 	mov	dptr,#___str_0
      00015C 75 F0 80         [24]  628 	mov	b,#0x80
      00015F 02 01 4D         [24]  629 	ljmp	_SendStringCRLFSerally
      000162                        630 00102$:
                                    631 ;	main.c:112: else SendStringCRLFSerally(" : OFF");
      000162 90 03 37         [24]  632 	mov	dptr,#___str_1
      000165 75 F0 80         [24]  633 	mov	b,#0x80
      000168 02 01 4D         [24]  634 	ljmp	_SendStringCRLFSerally
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'serial_ISR'
                                    637 ;------------------------------------------------------------
                                    638 ;chr                       Allocated to registers r7 
                                    639 ;------------------------------------------------------------
                                    640 ;	main.c:115: void serial_ISR (void) __interrupt (4)
                                    641 ;	-----------------------------------------
                                    642 ;	 function serial_ISR
                                    643 ;	-----------------------------------------
      00016B                        644 _serial_ISR:
      00016B C0 20            [24]  645 	push	bits
      00016D C0 E0            [24]  646 	push	acc
      00016F C0 F0            [24]  647 	push	b
      000171 C0 82            [24]  648 	push	dpl
      000173 C0 83            [24]  649 	push	dph
      000175 C0 07            [24]  650 	push	(0+7)
      000177 C0 06            [24]  651 	push	(0+6)
      000179 C0 05            [24]  652 	push	(0+5)
      00017B C0 04            [24]  653 	push	(0+4)
      00017D C0 03            [24]  654 	push	(0+3)
      00017F C0 02            [24]  655 	push	(0+2)
      000181 C0 01            [24]  656 	push	(0+1)
      000183 C0 00            [24]  657 	push	(0+0)
      000185 C0 D0            [24]  658 	push	psw
      000187 75 D0 00         [24]  659 	mov	psw,#0x00
                                    660 ;	main.c:118:     char chr=0x00;
      00018A 7F 00            [12]  661 	mov	r7,#0x00
                                    662 ;	main.c:119:     if(RI==1)
      00018C 30 98 04         [24]  663 	jnb	_RI,00102$
                                    664 ;	main.c:121:         chr = SBUF;
      00018F AF 99            [24]  665 	mov	r7,_SBUF
                                    666 ;	main.c:122:         RI = 0;
      000191 C2 98            [12]  667 	clr	_RI
      000193                        668 00102$:
                                    669 ;	main.c:125: switch(chr)
      000193 BF 30 00         [24]  670 	cjne	r7,#0x30,00127$
      000196                        671 00127$:
      000196 50 03            [24]  672 	jnc	00128$
      000198 02 02 6D         [24]  673 	ljmp	00114$
      00019B                        674 00128$:
      00019B EF               [12]  675 	mov	a,r7
      00019C 24 C6            [12]  676 	add	a,#0xff - 0x39
      00019E 50 03            [24]  677 	jnc	00129$
      0001A0 02 02 6D         [24]  678 	ljmp	00114$
      0001A3                        679 00129$:
      0001A3 EF               [12]  680 	mov	a,r7
      0001A4 24 D0            [12]  681 	add	a,#0xd0
      0001A6 FF               [12]  682 	mov	r7,a
      0001A7 24 0A            [12]  683 	add	a,#(00130$-3-.)
      0001A9 83               [24]  684 	movc	a,@a+pc
      0001AA F5 82            [12]  685 	mov	dpl,a
      0001AC EF               [12]  686 	mov	a,r7
      0001AD 24 0E            [12]  687 	add	a,#(00131$-3-.)
      0001AF 83               [24]  688 	movc	a,@a+pc
      0001B0 F5 83            [12]  689 	mov	dph,a
      0001B2 E4               [12]  690 	clr	a
      0001B3 73               [24]  691 	jmp	@a+dptr
      0001B4                        692 00130$:
      0001B4 C8                     693 	.db	00103$
      0001B5 D7                     694 	.db	00104$
      0001B6 E9                     695 	.db	00105$
      0001B7 FB                     696 	.db	00106$
      0001B8 0C                     697 	.db	00107$
      0001B9 1D                     698 	.db	00108$
      0001BA 2E                     699 	.db	00109$
      0001BB 3F                     700 	.db	00110$
      0001BC 50                     701 	.db	00111$
      0001BD 61                     702 	.db	00112$
      0001BE                        703 00131$:
      0001BE 01                     704 	.db	00103$>>8
      0001BF 01                     705 	.db	00104$>>8
      0001C0 01                     706 	.db	00105$>>8
      0001C1 01                     707 	.db	00106$>>8
      0001C2 02                     708 	.db	00107$>>8
      0001C3 02                     709 	.db	00108$>>8
      0001C4 02                     710 	.db	00109$>>8
      0001C5 02                     711 	.db	00110$>>8
      0001C6 02                     712 	.db	00111$>>8
      0001C7 02                     713 	.db	00112$>>8
                                    714 ;	main.c:128: case '0':  Salidas = 0x00; SendStringCRLFSerally("Todas las Salidas : OFF");  break;
      0001C8                        715 00103$:
      0001C8 75 90 00         [24]  716 	mov	_P1,#0x00
      0001CB 90 03 3E         [24]  717 	mov	dptr,#___str_2
      0001CE 75 F0 80         [24]  718 	mov	b,#0x80
      0001D1 12 01 4D         [24]  719 	lcall	_SendStringCRLFSerally
      0001D4 02 02 6D         [24]  720 	ljmp	00114$
                                    721 ;	main.c:129: case '1':  Salida1 = !Salida1; SendStringONOFFSerally("Salida 1",Salida1);    break;
      0001D7                        722 00104$:
      0001D7 B2 90            [12]  723 	cpl	_P1_0
      0001D9 A2 90            [12]  724 	mov	c,_P1_0
      0001DB 92 00            [24]  725 	mov	_SendStringONOFFSerally_PARM_2,c
      0001DD 90 03 56         [24]  726 	mov	dptr,#___str_3
      0001E0 75 F0 80         [24]  727 	mov	b,#0x80
      0001E3 12 01 53         [24]  728 	lcall	_SendStringONOFFSerally
      0001E6 02 02 6D         [24]  729 	ljmp	00114$
                                    730 ;	main.c:130:      case '2':  Salida2 = !Salida2; SendStringONOFFSerally("Salida 2",Salida2);    break;
      0001E9                        731 00105$:
      0001E9 B2 91            [12]  732 	cpl	_P1_1
      0001EB A2 91            [12]  733 	mov	c,_P1_1
      0001ED 92 00            [24]  734 	mov	_SendStringONOFFSerally_PARM_2,c
      0001EF 90 03 5F         [24]  735 	mov	dptr,#___str_4
      0001F2 75 F0 80         [24]  736 	mov	b,#0x80
      0001F5 12 01 53         [24]  737 	lcall	_SendStringONOFFSerally
      0001F8 02 02 6D         [24]  738 	ljmp	00114$
                                    739 ;	main.c:131:      case '3':  Salida3 = !Salida3; SendStringONOFFSerally("Salida 3",Salida3);    break;
      0001FB                        740 00106$:
      0001FB B2 92            [12]  741 	cpl	_P1_2
      0001FD A2 92            [12]  742 	mov	c,_P1_2
      0001FF 92 00            [24]  743 	mov	_SendStringONOFFSerally_PARM_2,c
      000201 90 03 68         [24]  744 	mov	dptr,#___str_5
      000204 75 F0 80         [24]  745 	mov	b,#0x80
      000207 12 01 53         [24]  746 	lcall	_SendStringONOFFSerally
                                    747 ;	main.c:132:      case '4':  Salida4 = !Salida4; SendStringONOFFSerally("Salida 4",Salida4);    break;
      00020A 80 61            [24]  748 	sjmp	00114$
      00020C                        749 00107$:
      00020C B2 93            [12]  750 	cpl	_P1_3
      00020E A2 93            [12]  751 	mov	c,_P1_3
      000210 92 00            [24]  752 	mov	_SendStringONOFFSerally_PARM_2,c
      000212 90 03 71         [24]  753 	mov	dptr,#___str_6
      000215 75 F0 80         [24]  754 	mov	b,#0x80
      000218 12 01 53         [24]  755 	lcall	_SendStringONOFFSerally
                                    756 ;	main.c:133:      case '5':  Salida5 = !Salida5; SendStringONOFFSerally("Salida 5",Salida5);    break;
      00021B 80 50            [24]  757 	sjmp	00114$
      00021D                        758 00108$:
      00021D B2 94            [12]  759 	cpl	_P1_4
      00021F A2 94            [12]  760 	mov	c,_P1_4
      000221 92 00            [24]  761 	mov	_SendStringONOFFSerally_PARM_2,c
      000223 90 03 7A         [24]  762 	mov	dptr,#___str_7
      000226 75 F0 80         [24]  763 	mov	b,#0x80
      000229 12 01 53         [24]  764 	lcall	_SendStringONOFFSerally
                                    765 ;	main.c:134:      case '6':  Salida6 = !Salida6; SendStringONOFFSerally("Salida 6",Salida6);    break;
      00022C 80 3F            [24]  766 	sjmp	00114$
      00022E                        767 00109$:
      00022E B2 95            [12]  768 	cpl	_P1_5
      000230 A2 95            [12]  769 	mov	c,_P1_5
      000232 92 00            [24]  770 	mov	_SendStringONOFFSerally_PARM_2,c
      000234 90 03 83         [24]  771 	mov	dptr,#___str_8
      000237 75 F0 80         [24]  772 	mov	b,#0x80
      00023A 12 01 53         [24]  773 	lcall	_SendStringONOFFSerally
                                    774 ;	main.c:135:      case '7':  Salida7 = !Salida7; SendStringONOFFSerally("Salida 7",Salida7);    break;
      00023D 80 2E            [24]  775 	sjmp	00114$
      00023F                        776 00110$:
      00023F B2 96            [12]  777 	cpl	_P1_6
      000241 A2 96            [12]  778 	mov	c,_P1_6
      000243 92 00            [24]  779 	mov	_SendStringONOFFSerally_PARM_2,c
      000245 90 03 8C         [24]  780 	mov	dptr,#___str_9
      000248 75 F0 80         [24]  781 	mov	b,#0x80
      00024B 12 01 53         [24]  782 	lcall	_SendStringONOFFSerally
                                    783 ;	main.c:136:      case '8':  Salida8 = !Salida8; SendStringONOFFSerally("Salida 8",Salida8);    break;
      00024E 80 1D            [24]  784 	sjmp	00114$
      000250                        785 00111$:
      000250 B2 97            [12]  786 	cpl	_P1_7
      000252 A2 97            [12]  787 	mov	c,_P1_7
      000254 92 00            [24]  788 	mov	_SendStringONOFFSerally_PARM_2,c
      000256 90 03 95         [24]  789 	mov	dptr,#___str_10
      000259 75 F0 80         [24]  790 	mov	b,#0x80
      00025C 12 01 53         [24]  791 	lcall	_SendStringONOFFSerally
                                    792 ;	main.c:137: case '9':  Salidas = 0xFF; SendStringCRLFSerally("Todas las Salidas : ON");   break;
      00025F 80 0C            [24]  793 	sjmp	00114$
      000261                        794 00112$:
      000261 75 90 FF         [24]  795 	mov	_P1,#0xff
      000264 90 03 9E         [24]  796 	mov	dptr,#___str_11
      000267 75 F0 80         [24]  797 	mov	b,#0x80
      00026A 12 01 4D         [24]  798 	lcall	_SendStringCRLFSerally
                                    799 ;	main.c:139:     }
      00026D                        800 00114$:
                                    801 ;	main.c:141:     RI = 0;
      00026D C2 98            [12]  802 	clr	_RI
      00026F D0 D0            [24]  803 	pop	psw
      000271 D0 00            [24]  804 	pop	(0+0)
      000273 D0 01            [24]  805 	pop	(0+1)
      000275 D0 02            [24]  806 	pop	(0+2)
      000277 D0 03            [24]  807 	pop	(0+3)
      000279 D0 04            [24]  808 	pop	(0+4)
      00027B D0 05            [24]  809 	pop	(0+5)
      00027D D0 06            [24]  810 	pop	(0+6)
      00027F D0 07            [24]  811 	pop	(0+7)
      000281 D0 83            [24]  812 	pop	dph
      000283 D0 82            [24]  813 	pop	dpl
      000285 D0 F0            [24]  814 	pop	b
      000287 D0 E0            [24]  815 	pop	acc
      000289 D0 20            [24]  816 	pop	bits
      00028B 32               [24]  817 	reti
                                    818 	.area CSEG    (CODE)
                                    819 	.area CONST   (CODE)
      0002AC                        820 _mensajeInicialLine1:
      0002AC 50 61 72 61 20 41 63   821 	.ascii "Para Activar/Desactivar Salidas (1-8) pulse las Teclas 1 a 8"
             74 69 76 61 72 2F 44
             65 73 61 63 74 69 76
             61 72 20 53 61 6C 69
             64 61 73 20 28 31 2D
             38 29 20 70 75 6C 73
             65 20 6C 61 73 20 54
             65 63 6C 61 73 20 31
             20 61 20 38
      0002E8 2E                     822 	.ascii "."
      0002E9 00                     823 	.db 0x00
      0002EA                        824 _mensajeInicialLine2:
      0002EA 54 65 63 6C 61 20 30   825 	.ascii "Tecla 0 Desactiva todas las salidas."
             20 44 65 73 61 63 74
             69 76 61 20 74 6F 64
             61 73 20 6C 61 73 20
             73 61 6C 69 64 61 73
             2E
      00030E 00                     826 	.db 0x00
      00030F                        827 _mensajeInicialLine3:
      00030F 54 65 63 6C 61 20 39   828 	.ascii "Tecla 9 Activa todas las salidas."
             20 41 63 74 69 76 61
             20 74 6F 64 61 73 20
             6C 61 73 20 73 61 6C
             69 64 61 73 2E
      000330 00                     829 	.db 0x00
      000331                        830 ___str_0:
      000331 20 3A 20 4F 4E         831 	.ascii " : ON"
      000336 00                     832 	.db 0x00
      000337                        833 ___str_1:
      000337 20 3A 20 4F 46 46      834 	.ascii " : OFF"
      00033D 00                     835 	.db 0x00
      00033E                        836 ___str_2:
      00033E 54 6F 64 61 73 20 6C   837 	.ascii "Todas las Salidas : OFF"
             61 73 20 53 61 6C 69
             64 61 73 20 3A 20 4F
             46 46
      000355 00                     838 	.db 0x00
      000356                        839 ___str_3:
      000356 53 61 6C 69 64 61 20   840 	.ascii "Salida 1"
             31
      00035E 00                     841 	.db 0x00
      00035F                        842 ___str_4:
      00035F 53 61 6C 69 64 61 20   843 	.ascii "Salida 2"
             32
      000367 00                     844 	.db 0x00
      000368                        845 ___str_5:
      000368 53 61 6C 69 64 61 20   846 	.ascii "Salida 3"
             33
      000370 00                     847 	.db 0x00
      000371                        848 ___str_6:
      000371 53 61 6C 69 64 61 20   849 	.ascii "Salida 4"
             34
      000379 00                     850 	.db 0x00
      00037A                        851 ___str_7:
      00037A 53 61 6C 69 64 61 20   852 	.ascii "Salida 5"
             35
      000382 00                     853 	.db 0x00
      000383                        854 ___str_8:
      000383 53 61 6C 69 64 61 20   855 	.ascii "Salida 6"
             36
      00038B 00                     856 	.db 0x00
      00038C                        857 ___str_9:
      00038C 53 61 6C 69 64 61 20   858 	.ascii "Salida 7"
             37
      000394 00                     859 	.db 0x00
      000395                        860 ___str_10:
      000395 53 61 6C 69 64 61 20   861 	.ascii "Salida 8"
             38
      00039D 00                     862 	.db 0x00
      00039E                        863 ___str_11:
      00039E 54 6F 64 61 73 20 6C   864 	.ascii "Todas las Salidas : ON"
             61 73 20 53 61 6C 69
             64 61 73 20 3A 20 4F
             4E
      0003B4 00                     865 	.db 0x00
                                    866 	.area XINIT   (CODE)
                                    867 	.area CABS    (ABS,CODE)
