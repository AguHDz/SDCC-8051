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
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _contador
                                    114 	.globl _delay
                                    115 	.globl _cct_init
                                    116 	.globl _SerialInitialize
                                    117 	.globl _SendByteSerially
                                    118 	.globl _SendCRLFSerially
                                    119 	.globl _SendStringSerally
                                    120 	.globl _SendStringCRLFSerally
                                    121 	.globl _SendStringONOFFSerally
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
      000000                        228 _SendStringONOFFSerally_PARM_2:
      000000                        229 	.ds 1
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable register banks
                                    232 ;--------------------------------------------------------
                                    233 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        234 	.ds 8
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable bit register bank
                                    237 ;--------------------------------------------------------
                                    238 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        239 bits:
      000020                        240 	.ds 1
                           008000   241 	b0 = bits[0]
                           008100   242 	b1 = bits[1]
                           008200   243 	b2 = bits[2]
                           008300   244 	b3 = bits[3]
                           008400   245 	b4 = bits[4]
                           008500   246 	b5 = bits[5]
                           008600   247 	b6 = bits[6]
                           008700   248 	b7 = bits[7]
                                    249 ;--------------------------------------------------------
                                    250 ; internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area DSEG    (DATA)
      000008                        253 _contador::
      000008                        254 	.ds 1
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 	.area	OSEG    (OVR,DATA)
                                    259 	.area	OSEG    (OVR,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; Stack segment in internal ram 
                                    262 ;--------------------------------------------------------
                                    263 	.area	SSEG
      000021                        264 __start__stack:
      000021                        265 	.ds	1
                                    266 
                                    267 ;--------------------------------------------------------
                                    268 ; indirectly addressable internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area ISEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
                                    280 ;--------------------------------------------------------
                                    281 ; paged external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area PSEG    (PAG,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XSEG    (XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XABS    (ABS,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; external initialized ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XISEG   (XDATA)
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT0 (CODE)
                                    298 	.area GSINIT1 (CODE)
                                    299 	.area GSINIT2 (CODE)
                                    300 	.area GSINIT3 (CODE)
                                    301 	.area GSINIT4 (CODE)
                                    302 	.area GSINIT5 (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area CSEG    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; interrupt vector 
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
      000000                        310 __interrupt_vect:
      000000 02 00 29         [24]  311 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  312 	reti
      000004                        313 	.ds	7
      00000B 32               [24]  314 	reti
      00000C                        315 	.ds	7
      000013 32               [24]  316 	reti
      000014                        317 	.ds	7
      00001B 32               [24]  318 	reti
      00001C                        319 	.ds	7
      000023 02 01 6B         [24]  320 	ljmp	_serial_ISR
                                    321 ;--------------------------------------------------------
                                    322 ; global & static initialisations
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.globl __sdcc_gsinit_startup
                                    329 	.globl __sdcc_program_startup
                                    330 	.globl __start__stack
                                    331 	.globl __mcs51_genXINIT
                                    332 	.globl __mcs51_genXRAMCLEAR
                                    333 	.globl __mcs51_genRAMCLEAR
                                    334 ;	main.c:34: unsigned char contador = 0;
      000082 75 08 00         [24]  335 	mov	_contador,#0x00
                                    336 	.area GSFINAL (CODE)
      000085 02 00 26         [24]  337 	ljmp	__sdcc_program_startup
                                    338 ;--------------------------------------------------------
                                    339 ; Home
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
                                    342 	.area HOME    (CODE)
      000026                        343 __sdcc_program_startup:
      000026 02 00 88         [24]  344 	ljmp	_main
                                    345 ;	return from main will return to caller
                                    346 ;--------------------------------------------------------
                                    347 ; code
                                    348 ;--------------------------------------------------------
                                    349 	.area CSEG    (CODE)
                                    350 ;------------------------------------------------------------
                                    351 ;Allocation info for local variables in function 'main'
                                    352 ;------------------------------------------------------------
                                    353 ;	main.c:36: void main()
                                    354 ;	-----------------------------------------
                                    355 ;	 function main
                                    356 ;	-----------------------------------------
      000088                        357 _main:
                           000007   358 	ar7 = 0x07
                           000006   359 	ar6 = 0x06
                           000005   360 	ar5 = 0x05
                           000004   361 	ar4 = 0x04
                           000003   362 	ar3 = 0x03
                           000002   363 	ar2 = 0x02
                           000001   364 	ar1 = 0x01
                           000000   365 	ar0 = 0x00
                                    366 ;	main.c:38:     cct_init();
      000088 12 00 D8         [24]  367 	lcall	_cct_init
                                    368 ;	main.c:39:     SerialInitialize();
      00008B 12 00 E5         [24]  369 	lcall	_SerialInitialize
                                    370 ;	main.c:40:     ES = 0; 
      00008E C2 AC            [12]  371 	clr	_ES
                                    372 ;	main.c:41: SendStringCRLFSerally(mensajeInicialLine1);
      000090 90 02 AC         [24]  373 	mov	dptr,#_mensajeInicialLine1
      000093 75 F0 80         [24]  374 	mov	b,#0x80
      000096 12 01 4D         [24]  375 	lcall	_SendStringCRLFSerally
                                    376 ;	main.c:42: SendStringCRLFSerally(mensajeInicialLine2);
      000099 90 02 EA         [24]  377 	mov	dptr,#_mensajeInicialLine2
      00009C 75 F0 80         [24]  378 	mov	b,#0x80
      00009F 12 01 4D         [24]  379 	lcall	_SendStringCRLFSerally
                                    380 ;	main.c:43: SendStringCRLFSerally(mensajeInicialLine3);
      0000A2 90 03 0F         [24]  381 	mov	dptr,#_mensajeInicialLine3
      0000A5 75 F0 80         [24]  382 	mov	b,#0x80
      0000A8 12 01 4D         [24]  383 	lcall	_SendStringCRLFSerally
                                    384 ;	main.c:45: ES=1;       // Habilita Interrupcion de Puerto Serie.
      0000AB D2 AC            [12]  385 	setb	_ES
                                    386 ;	main.c:46: EA=1;       // Habilita Interrupciones.
      0000AD D2 AF            [12]  387 	setb	_EA
                                    388 ;	main.c:48:     while(1)
      0000AF                        389 00102$:
                                    390 ;	main.c:51: P2_0=0;
      0000AF C2 A0            [12]  391 	clr	_P2_0
                                    392 ;	main.c:52: delay(40000);
      0000B1 90 9C 40         [24]  393 	mov	dptr,#0x9c40
      0000B4 12 00 C1         [24]  394 	lcall	_delay
                                    395 ;	main.c:53: P2_0=1;
      0000B7 D2 A0            [12]  396 	setb	_P2_0
                                    397 ;	main.c:54: delay(40000);
      0000B9 90 9C 40         [24]  398 	mov	dptr,#0x9c40
      0000BC 12 00 C1         [24]  399 	lcall	_delay
      0000BF 80 EE            [24]  400 	sjmp	00102$
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'delay'
                                    403 ;------------------------------------------------------------
                                    404 ;vueltas                   Allocated to registers r6 r7 
                                    405 ;contador                  Allocated to registers r4 r5 
                                    406 ;------------------------------------------------------------
                                    407 ;	main.c:58: void delay(unsigned int vueltas)
                                    408 ;	-----------------------------------------
                                    409 ;	 function delay
                                    410 ;	-----------------------------------------
      0000C1                        411 _delay:
      0000C1 AE 82            [24]  412 	mov	r6,dpl
      0000C3 AF 83            [24]  413 	mov	r7,dph
                                    414 ;	main.c:61: for(contador=0; contador<vueltas; contador++);
      0000C5 7C 00            [12]  415 	mov	r4,#0x00
      0000C7 7D 00            [12]  416 	mov	r5,#0x00
      0000C9                        417 00103$:
      0000C9 C3               [12]  418 	clr	c
      0000CA EC               [12]  419 	mov	a,r4
      0000CB 9E               [12]  420 	subb	a,r6
      0000CC ED               [12]  421 	mov	a,r5
      0000CD 9F               [12]  422 	subb	a,r7
      0000CE 50 07            [24]  423 	jnc	00105$
      0000D0 0C               [12]  424 	inc	r4
      0000D1 BC 00 F5         [24]  425 	cjne	r4,#0x00,00103$
      0000D4 0D               [12]  426 	inc	r5
      0000D5 80 F2            [24]  427 	sjmp	00103$
      0000D7                        428 00105$:
      0000D7 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'cct_init'
                                    432 ;------------------------------------------------------------
                                    433 ;	main.c:64: void cct_init(void)   //initialize cct
                                    434 ;	-----------------------------------------
                                    435 ;	 function cct_init
                                    436 ;	-----------------------------------------
      0000D8                        437 _cct_init:
                                    438 ;	main.c:66:     P0 = 0x00; //not used
      0000D8 75 80 00         [24]  439 	mov	_P0,#0x00
                                    440 ;	main.c:67:     P1 = 0x00; //Used for Appliances
      0000DB 75 90 00         [24]  441 	mov	_P1,#0x00
                                    442 ;	main.c:68:     P2 = 0x00; //not used
      0000DE 75 A0 00         [24]  443 	mov	_P2,#0x00
                                    444 ;	main.c:69:     P3 = 0x03; //used for serial
      0000E1 75 B0 03         [24]  445 	mov	_P3,#0x03
      0000E4 22               [24]  446 	ret
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'SerialInitialize'
                                    449 ;------------------------------------------------------------
                                    450 ;	main.c:72: void SerialInitialize(void)                   // INITIALIZE SERIAL PORT
                                    451 ;	-----------------------------------------
                                    452 ;	 function SerialInitialize
                                    453 ;	-----------------------------------------
      0000E5                        454 _SerialInitialize:
                                    455 ;	main.c:74:     TMOD = 0x20;                           // Timer 1 IN MODE 2 -AUTO RELOAD TO GENERATE BAUD RATE
      0000E5 75 89 20         [24]  456 	mov	_TMOD,#0x20
                                    457 ;	main.c:75:     SCON = 0x50;                           // SERIAL MODE 1, 8-DATA BIT 1-START BIT, 1-STOP BIT, REN ENABLED
      0000E8 75 98 50         [24]  458 	mov	_SCON,#0x50
                                    459 ;	main.c:76:     TH1 = Baud_rate;                       // LOAD BAUDRATE TO TIMER REGISTER
      0000EB 75 8D FD         [24]  460 	mov	_TH1,#0xfd
                                    461 ;	main.c:77:     TR1 = 1;                               // START TIMER
      0000EE D2 8E            [12]  462 	setb	_TR1
      0000F0 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'SendByteSerially'
                                    466 ;------------------------------------------------------------
                                    467 ;serialdata                Allocated to registers 
                                    468 ;------------------------------------------------------------
                                    469 ;	main.c:80: void SendByteSerially(unsigned char serialdata)
                                    470 ;	-----------------------------------------
                                    471 ;	 function SendByteSerially
                                    472 ;	-----------------------------------------
      0000F1                        473 _SendByteSerially:
      0000F1 85 82 99         [24]  474 	mov	_SBUF,dpl
                                    475 ;	main.c:83:     while(TI == 0);                            // WAIT UNTIL TRANSMISSION TO COMPLETE
      0000F4                        476 00101$:
                                    477 ;	main.c:84:     TI = 0;                                    // CLEAR TRANSMISSION INTERRUPT FLAG
      0000F4 10 99 02         [24]  478 	jbc	_TI,00112$
      0000F7 80 FB            [24]  479 	sjmp	00101$
      0000F9                        480 00112$:
      0000F9 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'SendCRLFSerially'
                                    484 ;------------------------------------------------------------
                                    485 ;	main.c:87: void SendCRLFSerially (void)
                                    486 ;	-----------------------------------------
                                    487 ;	 function SendCRLFSerially
                                    488 ;	-----------------------------------------
      0000FA                        489 _SendCRLFSerially:
                                    490 ;	main.c:89: SendByteSerially(CR);
      0000FA 75 82 0D         [24]  491 	mov	dpl,#0x0d
      0000FD 12 00 F1         [24]  492 	lcall	_SendByteSerially
                                    493 ;	main.c:90: SendByteSerially(LF);
      000100 75 82 0A         [24]  494 	mov	dpl,#0x0a
      000103 02 00 F1         [24]  495 	ljmp	_SendByteSerially
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'SendStringSerally'
                                    498 ;------------------------------------------------------------
                                    499 ;cadena                    Allocated to registers r5 r6 r7 
                                    500 ;contador                  Allocated to registers r4 
                                    501 ;------------------------------------------------------------
                                    502 ;	main.c:93: void SendStringSerally(char* cadena)
                                    503 ;	-----------------------------------------
                                    504 ;	 function SendStringSerally
                                    505 ;	-----------------------------------------
      000106                        506 _SendStringSerally:
      000106 AD 82            [24]  507 	mov	r5,dpl
      000108 AE 83            [24]  508 	mov	r6,dph
      00010A AF F0            [24]  509 	mov	r7,b
                                    510 ;	main.c:96: while (cadena[contador])
      00010C 7C 00            [12]  511 	mov	r4,#0x00
      00010E                        512 00101$:
      00010E EC               [12]  513 	mov	a,r4
      00010F 2D               [12]  514 	add	a,r5
      000110 F9               [12]  515 	mov	r1,a
      000111 E4               [12]  516 	clr	a
      000112 3E               [12]  517 	addc	a,r6
      000113 FA               [12]  518 	mov	r2,a
      000114 8F 03            [24]  519 	mov	ar3,r7
      000116 89 82            [24]  520 	mov	dpl,r1
      000118 8A 83            [24]  521 	mov	dph,r2
      00011A 8B F0            [24]  522 	mov	b,r3
      00011C 12 02 8C         [24]  523 	lcall	__gptrget
      00011F 60 2B            [24]  524 	jz	00104$
                                    525 ;	main.c:98: SendByteSerially(cadena[contador++]);
      000121 8C 03            [24]  526 	mov	ar3,r4
      000123 0C               [12]  527 	inc	r4
      000124 EB               [12]  528 	mov	a,r3
      000125 2D               [12]  529 	add	a,r5
      000126 F9               [12]  530 	mov	r1,a
      000127 E4               [12]  531 	clr	a
      000128 3E               [12]  532 	addc	a,r6
      000129 FA               [12]  533 	mov	r2,a
      00012A 8F 03            [24]  534 	mov	ar3,r7
      00012C 89 82            [24]  535 	mov	dpl,r1
      00012E 8A 83            [24]  536 	mov	dph,r2
      000130 8B F0            [24]  537 	mov	b,r3
      000132 12 02 8C         [24]  538 	lcall	__gptrget
      000135 F5 82            [12]  539 	mov	dpl,a
      000137 C0 07            [24]  540 	push	ar7
      000139 C0 06            [24]  541 	push	ar6
      00013B C0 05            [24]  542 	push	ar5
      00013D C0 04            [24]  543 	push	ar4
      00013F 12 00 F1         [24]  544 	lcall	_SendByteSerially
      000142 D0 04            [24]  545 	pop	ar4
      000144 D0 05            [24]  546 	pop	ar5
      000146 D0 06            [24]  547 	pop	ar6
      000148 D0 07            [24]  548 	pop	ar7
      00014A 80 C2            [24]  549 	sjmp	00101$
      00014C                        550 00104$:
      00014C 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'SendStringCRLFSerally'
                                    554 ;------------------------------------------------------------
                                    555 ;cadena                    Allocated to registers r5 r6 r7 
                                    556 ;------------------------------------------------------------
                                    557 ;	main.c:102: void SendStringCRLFSerally(char* cadena)
                                    558 ;	-----------------------------------------
                                    559 ;	 function SendStringCRLFSerally
                                    560 ;	-----------------------------------------
      00014D                        561 _SendStringCRLFSerally:
                                    562 ;	main.c:104: SendStringSerally(cadena);
      00014D 12 01 06         [24]  563 	lcall	_SendStringSerally
                                    564 ;	main.c:105: SendCRLFSerially();
      000150 02 00 FA         [24]  565 	ljmp	_SendCRLFSerially
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'SendStringONOFFSerally'
                                    568 ;------------------------------------------------------------
                                    569 ;texto                     Allocated to registers r5 r6 r7 
                                    570 ;pinPuerto                 Allocated with name '_SendStringONOFFSerally_PARM_2'
                                    571 ;------------------------------------------------------------
                                    572 ;	main.c:108: void SendStringONOFFSerally(char* texto, __sbit pinPuerto)
                                    573 ;	-----------------------------------------
                                    574 ;	 function SendStringONOFFSerally
                                    575 ;	-----------------------------------------
      000153                        576 _SendStringONOFFSerally:
                                    577 ;	main.c:110: SendStringSerally(texto);
      000153 12 01 06         [24]  578 	lcall	_SendStringSerally
                                    579 ;	main.c:111: if (pinPuerto) SendStringCRLFSerally(" : ON");
      000156 30 00 09         [24]  580 	jnb	_SendStringONOFFSerally_PARM_2,00102$
      000159 90 03 31         [24]  581 	mov	dptr,#___str_0
      00015C 75 F0 80         [24]  582 	mov	b,#0x80
      00015F 02 01 4D         [24]  583 	ljmp	_SendStringCRLFSerally
      000162                        584 00102$:
                                    585 ;	main.c:112: else SendStringCRLFSerally(" : OFF");
      000162 90 03 37         [24]  586 	mov	dptr,#___str_1
      000165 75 F0 80         [24]  587 	mov	b,#0x80
      000168 02 01 4D         [24]  588 	ljmp	_SendStringCRLFSerally
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'serial_ISR'
                                    591 ;------------------------------------------------------------
                                    592 ;chr                       Allocated to registers r7 
                                    593 ;------------------------------------------------------------
                                    594 ;	main.c:115: void serial_ISR (void) __interrupt (4)
                                    595 ;	-----------------------------------------
                                    596 ;	 function serial_ISR
                                    597 ;	-----------------------------------------
      00016B                        598 _serial_ISR:
      00016B C0 20            [24]  599 	push	bits
      00016D C0 E0            [24]  600 	push	acc
      00016F C0 F0            [24]  601 	push	b
      000171 C0 82            [24]  602 	push	dpl
      000173 C0 83            [24]  603 	push	dph
      000175 C0 07            [24]  604 	push	(0+7)
      000177 C0 06            [24]  605 	push	(0+6)
      000179 C0 05            [24]  606 	push	(0+5)
      00017B C0 04            [24]  607 	push	(0+4)
      00017D C0 03            [24]  608 	push	(0+3)
      00017F C0 02            [24]  609 	push	(0+2)
      000181 C0 01            [24]  610 	push	(0+1)
      000183 C0 00            [24]  611 	push	(0+0)
      000185 C0 D0            [24]  612 	push	psw
      000187 75 D0 00         [24]  613 	mov	psw,#0x00
                                    614 ;	main.c:118:     char chr=0x00;
      00018A 7F 00            [12]  615 	mov	r7,#0x00
                                    616 ;	main.c:119:     if(RI==1)
      00018C 30 98 04         [24]  617 	jnb	_RI,00102$
                                    618 ;	main.c:121:         chr = SBUF;
      00018F AF 99            [24]  619 	mov	r7,_SBUF
                                    620 ;	main.c:122:         RI = 0;
      000191 C2 98            [12]  621 	clr	_RI
      000193                        622 00102$:
                                    623 ;	main.c:125: switch(chr)
      000193 BF 30 00         [24]  624 	cjne	r7,#0x30,00127$
      000196                        625 00127$:
      000196 50 03            [24]  626 	jnc	00128$
      000198 02 02 6D         [24]  627 	ljmp	00114$
      00019B                        628 00128$:
      00019B EF               [12]  629 	mov	a,r7
      00019C 24 C6            [12]  630 	add	a,#0xff - 0x39
      00019E 50 03            [24]  631 	jnc	00129$
      0001A0 02 02 6D         [24]  632 	ljmp	00114$
      0001A3                        633 00129$:
      0001A3 EF               [12]  634 	mov	a,r7
      0001A4 24 D0            [12]  635 	add	a,#0xd0
      0001A6 FF               [12]  636 	mov	r7,a
      0001A7 24 0A            [12]  637 	add	a,#(00130$-3-.)
      0001A9 83               [24]  638 	movc	a,@a+pc
      0001AA F5 82            [12]  639 	mov	dpl,a
      0001AC EF               [12]  640 	mov	a,r7
      0001AD 24 0E            [12]  641 	add	a,#(00131$-3-.)
      0001AF 83               [24]  642 	movc	a,@a+pc
      0001B0 F5 83            [12]  643 	mov	dph,a
      0001B2 E4               [12]  644 	clr	a
      0001B3 73               [24]  645 	jmp	@a+dptr
      0001B4                        646 00130$:
      0001B4 C8                     647 	.db	00103$
      0001B5 D7                     648 	.db	00104$
      0001B6 E9                     649 	.db	00105$
      0001B7 FB                     650 	.db	00106$
      0001B8 0C                     651 	.db	00107$
      0001B9 1D                     652 	.db	00108$
      0001BA 2E                     653 	.db	00109$
      0001BB 3F                     654 	.db	00110$
      0001BC 50                     655 	.db	00111$
      0001BD 61                     656 	.db	00112$
      0001BE                        657 00131$:
      0001BE 01                     658 	.db	00103$>>8
      0001BF 01                     659 	.db	00104$>>8
      0001C0 01                     660 	.db	00105$>>8
      0001C1 01                     661 	.db	00106$>>8
      0001C2 02                     662 	.db	00107$>>8
      0001C3 02                     663 	.db	00108$>>8
      0001C4 02                     664 	.db	00109$>>8
      0001C5 02                     665 	.db	00110$>>8
      0001C6 02                     666 	.db	00111$>>8
      0001C7 02                     667 	.db	00112$>>8
                                    668 ;	main.c:128: case '0':  Salidas = 0x00; SendStringCRLFSerally("Todas las Salidas : OFF");  break;
      0001C8                        669 00103$:
      0001C8 75 90 00         [24]  670 	mov	_P1,#0x00
      0001CB 90 03 3E         [24]  671 	mov	dptr,#___str_2
      0001CE 75 F0 80         [24]  672 	mov	b,#0x80
      0001D1 12 01 4D         [24]  673 	lcall	_SendStringCRLFSerally
      0001D4 02 02 6D         [24]  674 	ljmp	00114$
                                    675 ;	main.c:129: case '1':  Salida1 = !Salida1; SendStringONOFFSerally("Salida 1",Salida1);  break;
      0001D7                        676 00104$:
      0001D7 B2 90            [12]  677 	cpl	_P1_0
      0001D9 A2 90            [12]  678 	mov	c,_P1_0
      0001DB 92 00            [24]  679 	mov	_SendStringONOFFSerally_PARM_2,c
      0001DD 90 03 56         [24]  680 	mov	dptr,#___str_3
      0001E0 75 F0 80         [24]  681 	mov	b,#0x80
      0001E3 12 01 53         [24]  682 	lcall	_SendStringONOFFSerally
      0001E6 02 02 6D         [24]  683 	ljmp	00114$
                                    684 ;	main.c:130:      case '2':  Salida2 = !Salida2; SendStringONOFFSerally("Salida 2",Salida2);  break;
      0001E9                        685 00105$:
      0001E9 B2 91            [12]  686 	cpl	_P1_1
      0001EB A2 91            [12]  687 	mov	c,_P1_1
      0001ED 92 00            [24]  688 	mov	_SendStringONOFFSerally_PARM_2,c
      0001EF 90 03 5F         [24]  689 	mov	dptr,#___str_4
      0001F2 75 F0 80         [24]  690 	mov	b,#0x80
      0001F5 12 01 53         [24]  691 	lcall	_SendStringONOFFSerally
      0001F8 02 02 6D         [24]  692 	ljmp	00114$
                                    693 ;	main.c:131:      case '3':  Salida3 = !Salida3; SendStringONOFFSerally("Salida 3",Salida3);  break;
      0001FB                        694 00106$:
      0001FB B2 92            [12]  695 	cpl	_P1_2
      0001FD A2 92            [12]  696 	mov	c,_P1_2
      0001FF 92 00            [24]  697 	mov	_SendStringONOFFSerally_PARM_2,c
      000201 90 03 68         [24]  698 	mov	dptr,#___str_5
      000204 75 F0 80         [24]  699 	mov	b,#0x80
      000207 12 01 53         [24]  700 	lcall	_SendStringONOFFSerally
                                    701 ;	main.c:132:      case '4':  Salida4 = !Salida4; SendStringONOFFSerally("Salida 4",Salida4);  break;
      00020A 80 61            [24]  702 	sjmp	00114$
      00020C                        703 00107$:
      00020C B2 93            [12]  704 	cpl	_P1_3
      00020E A2 93            [12]  705 	mov	c,_P1_3
      000210 92 00            [24]  706 	mov	_SendStringONOFFSerally_PARM_2,c
      000212 90 03 71         [24]  707 	mov	dptr,#___str_6
      000215 75 F0 80         [24]  708 	mov	b,#0x80
      000218 12 01 53         [24]  709 	lcall	_SendStringONOFFSerally
                                    710 ;	main.c:133:      case '5':  Salida5 = !Salida5; SendStringONOFFSerally("Salida 5",Salida5);  break;
      00021B 80 50            [24]  711 	sjmp	00114$
      00021D                        712 00108$:
      00021D B2 94            [12]  713 	cpl	_P1_4
      00021F A2 94            [12]  714 	mov	c,_P1_4
      000221 92 00            [24]  715 	mov	_SendStringONOFFSerally_PARM_2,c
      000223 90 03 7A         [24]  716 	mov	dptr,#___str_7
      000226 75 F0 80         [24]  717 	mov	b,#0x80
      000229 12 01 53         [24]  718 	lcall	_SendStringONOFFSerally
                                    719 ;	main.c:134:      case '6':  Salida6 = !Salida6; SendStringONOFFSerally("Salida 6",Salida6);  break;
      00022C 80 3F            [24]  720 	sjmp	00114$
      00022E                        721 00109$:
      00022E B2 95            [12]  722 	cpl	_P1_5
      000230 A2 95            [12]  723 	mov	c,_P1_5
      000232 92 00            [24]  724 	mov	_SendStringONOFFSerally_PARM_2,c
      000234 90 03 83         [24]  725 	mov	dptr,#___str_8
      000237 75 F0 80         [24]  726 	mov	b,#0x80
      00023A 12 01 53         [24]  727 	lcall	_SendStringONOFFSerally
                                    728 ;	main.c:135:      case '7':  Salida7 = !Salida7; SendStringONOFFSerally("Salida 7",Salida7);  break;
      00023D 80 2E            [24]  729 	sjmp	00114$
      00023F                        730 00110$:
      00023F B2 96            [12]  731 	cpl	_P1_6
      000241 A2 96            [12]  732 	mov	c,_P1_6
      000243 92 00            [24]  733 	mov	_SendStringONOFFSerally_PARM_2,c
      000245 90 03 8C         [24]  734 	mov	dptr,#___str_9
      000248 75 F0 80         [24]  735 	mov	b,#0x80
      00024B 12 01 53         [24]  736 	lcall	_SendStringONOFFSerally
                                    737 ;	main.c:136:      case '8':  Salida8 = !Salida8; SendStringONOFFSerally("Salida 8",Salida8);  break;
      00024E 80 1D            [24]  738 	sjmp	00114$
      000250                        739 00111$:
      000250 B2 97            [12]  740 	cpl	_P1_7
      000252 A2 97            [12]  741 	mov	c,_P1_7
      000254 92 00            [24]  742 	mov	_SendStringONOFFSerally_PARM_2,c
      000256 90 03 95         [24]  743 	mov	dptr,#___str_10
      000259 75 F0 80         [24]  744 	mov	b,#0x80
      00025C 12 01 53         [24]  745 	lcall	_SendStringONOFFSerally
                                    746 ;	main.c:137: case '9':  Salidas = 0xFF; SendStringCRLFSerally("Todas las Salidas : ON");  break;
      00025F 80 0C            [24]  747 	sjmp	00114$
      000261                        748 00112$:
      000261 75 90 FF         [24]  749 	mov	_P1,#0xff
      000264 90 03 9E         [24]  750 	mov	dptr,#___str_11
      000267 75 F0 80         [24]  751 	mov	b,#0x80
      00026A 12 01 4D         [24]  752 	lcall	_SendStringCRLFSerally
                                    753 ;	main.c:139:     }
      00026D                        754 00114$:
                                    755 ;	main.c:141:     RI = 0;
      00026D C2 98            [12]  756 	clr	_RI
      00026F D0 D0            [24]  757 	pop	psw
      000271 D0 00            [24]  758 	pop	(0+0)
      000273 D0 01            [24]  759 	pop	(0+1)
      000275 D0 02            [24]  760 	pop	(0+2)
      000277 D0 03            [24]  761 	pop	(0+3)
      000279 D0 04            [24]  762 	pop	(0+4)
      00027B D0 05            [24]  763 	pop	(0+5)
      00027D D0 06            [24]  764 	pop	(0+6)
      00027F D0 07            [24]  765 	pop	(0+7)
      000281 D0 83            [24]  766 	pop	dph
      000283 D0 82            [24]  767 	pop	dpl
      000285 D0 F0            [24]  768 	pop	b
      000287 D0 E0            [24]  769 	pop	acc
      000289 D0 20            [24]  770 	pop	bits
      00028B 32               [24]  771 	reti
                                    772 	.area CSEG    (CODE)
                                    773 	.area CONST   (CODE)
      0002AC                        774 _mensajeInicialLine1:
      0002AC 50 61 72 61 20 41 63   775 	.ascii "Para Activar/Desactivar Salidas (1-8) pulse las Teclas 1 a 8"
             74 69 76 61 72 2F 44
             65 73 61 63 74 69 76
             61 72 20 53 61 6C 69
             64 61 73 20 28 31 2D
             38 29 20 70 75 6C 73
             65 20 6C 61 73 20 54
             65 63 6C 61 73 20 31
             20 61 20 38
      0002E8 2E                     776 	.ascii "."
      0002E9 00                     777 	.db 0x00
      0002EA                        778 _mensajeInicialLine2:
      0002EA 54 65 63 6C 61 20 30   779 	.ascii "Tecla 0 Desactiva todas las salidas."
             20 44 65 73 61 63 74
             69 76 61 20 74 6F 64
             61 73 20 6C 61 73 20
             73 61 6C 69 64 61 73
             2E
      00030E 00                     780 	.db 0x00
      00030F                        781 _mensajeInicialLine3:
      00030F 54 65 63 6C 61 20 39   782 	.ascii "Tecla 9 Activa todas las salidas."
             20 41 63 74 69 76 61
             20 74 6F 64 61 73 20
             6C 61 73 20 73 61 6C
             69 64 61 73 2E
      000330 00                     783 	.db 0x00
      000331                        784 ___str_0:
      000331 20 3A 20 4F 4E         785 	.ascii " : ON"
      000336 00                     786 	.db 0x00
      000337                        787 ___str_1:
      000337 20 3A 20 4F 46 46      788 	.ascii " : OFF"
      00033D 00                     789 	.db 0x00
      00033E                        790 ___str_2:
      00033E 54 6F 64 61 73 20 6C   791 	.ascii "Todas las Salidas : OFF"
             61 73 20 53 61 6C 69
             64 61 73 20 3A 20 4F
             46 46
      000355 00                     792 	.db 0x00
      000356                        793 ___str_3:
      000356 53 61 6C 69 64 61 20   794 	.ascii "Salida 1"
             31
      00035E 00                     795 	.db 0x00
      00035F                        796 ___str_4:
      00035F 53 61 6C 69 64 61 20   797 	.ascii "Salida 2"
             32
      000367 00                     798 	.db 0x00
      000368                        799 ___str_5:
      000368 53 61 6C 69 64 61 20   800 	.ascii "Salida 3"
             33
      000370 00                     801 	.db 0x00
      000371                        802 ___str_6:
      000371 53 61 6C 69 64 61 20   803 	.ascii "Salida 4"
             34
      000379 00                     804 	.db 0x00
      00037A                        805 ___str_7:
      00037A 53 61 6C 69 64 61 20   806 	.ascii "Salida 5"
             35
      000382 00                     807 	.db 0x00
      000383                        808 ___str_8:
      000383 53 61 6C 69 64 61 20   809 	.ascii "Salida 6"
             36
      00038B 00                     810 	.db 0x00
      00038C                        811 ___str_9:
      00038C 53 61 6C 69 64 61 20   812 	.ascii "Salida 7"
             37
      000394 00                     813 	.db 0x00
      000395                        814 ___str_10:
      000395 53 61 6C 69 64 61 20   815 	.ascii "Salida 8"
             38
      00039D 00                     816 	.db 0x00
      00039E                        817 ___str_11:
      00039E 54 6F 64 61 73 20 6C   818 	.ascii "Todas las Salidas : ON"
             61 73 20 53 61 6C 69
             64 61 73 20 3A 20 4F
             4E
      0003B4 00                     819 	.db 0x00
                                    820 	.area XINIT   (CODE)
                                    821 	.area CABS    (ABS,CODE)
