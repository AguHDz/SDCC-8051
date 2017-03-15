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
                           000080   127 G$P0$0$0 == 0x0080
                           000080   128 _P0	=	0x0080
                           000081   129 G$SP$0$0 == 0x0081
                           000081   130 _SP	=	0x0081
                           000082   131 G$DPL$0$0 == 0x0082
                           000082   132 _DPL	=	0x0082
                           000083   133 G$DPH$0$0 == 0x0083
                           000083   134 _DPH	=	0x0083
                           000087   135 G$PCON$0$0 == 0x0087
                           000087   136 _PCON	=	0x0087
                           000088   137 G$TCON$0$0 == 0x0088
                           000088   138 _TCON	=	0x0088
                           000089   139 G$TMOD$0$0 == 0x0089
                           000089   140 _TMOD	=	0x0089
                           00008A   141 G$TL0$0$0 == 0x008a
                           00008A   142 _TL0	=	0x008a
                           00008B   143 G$TL1$0$0 == 0x008b
                           00008B   144 _TL1	=	0x008b
                           00008C   145 G$TH0$0$0 == 0x008c
                           00008C   146 _TH0	=	0x008c
                           00008D   147 G$TH1$0$0 == 0x008d
                           00008D   148 _TH1	=	0x008d
                           000090   149 G$P1$0$0 == 0x0090
                           000090   150 _P1	=	0x0090
                           000098   151 G$SCON$0$0 == 0x0098
                           000098   152 _SCON	=	0x0098
                           000099   153 G$SBUF$0$0 == 0x0099
                           000099   154 _SBUF	=	0x0099
                           0000A0   155 G$P2$0$0 == 0x00a0
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 G$IE$0$0 == 0x00a8
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 G$P3$0$0 == 0x00b0
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 G$IP$0$0 == 0x00b8
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 G$PSW$0$0 == 0x00d0
                           0000D0   164 _PSW	=	0x00d0
                           0000E0   165 G$ACC$0$0 == 0x00e0
                           0000E0   166 _ACC	=	0x00e0
                           0000F0   167 G$B$0$0 == 0x00f0
                           0000F0   168 _B	=	0x00f0
                                    169 ;--------------------------------------------------------
                                    170 ; special function bits
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000080   174 G$P0_0$0$0 == 0x0080
                           000080   175 _P0_0	=	0x0080
                           000081   176 G$P0_1$0$0 == 0x0081
                           000081   177 _P0_1	=	0x0081
                           000082   178 G$P0_2$0$0 == 0x0082
                           000082   179 _P0_2	=	0x0082
                           000083   180 G$P0_3$0$0 == 0x0083
                           000083   181 _P0_3	=	0x0083
                           000084   182 G$P0_4$0$0 == 0x0084
                           000084   183 _P0_4	=	0x0084
                           000085   184 G$P0_5$0$0 == 0x0085
                           000085   185 _P0_5	=	0x0085
                           000086   186 G$P0_6$0$0 == 0x0086
                           000086   187 _P0_6	=	0x0086
                           000087   188 G$P0_7$0$0 == 0x0087
                           000087   189 _P0_7	=	0x0087
                           000088   190 G$IT0$0$0 == 0x0088
                           000088   191 _IT0	=	0x0088
                           000089   192 G$IE0$0$0 == 0x0089
                           000089   193 _IE0	=	0x0089
                           00008A   194 G$IT1$0$0 == 0x008a
                           00008A   195 _IT1	=	0x008a
                           00008B   196 G$IE1$0$0 == 0x008b
                           00008B   197 _IE1	=	0x008b
                           00008C   198 G$TR0$0$0 == 0x008c
                           00008C   199 _TR0	=	0x008c
                           00008D   200 G$TF0$0$0 == 0x008d
                           00008D   201 _TF0	=	0x008d
                           00008E   202 G$TR1$0$0 == 0x008e
                           00008E   203 _TR1	=	0x008e
                           00008F   204 G$TF1$0$0 == 0x008f
                           00008F   205 _TF1	=	0x008f
                           000090   206 G$P1_0$0$0 == 0x0090
                           000090   207 _P1_0	=	0x0090
                           000091   208 G$P1_1$0$0 == 0x0091
                           000091   209 _P1_1	=	0x0091
                           000092   210 G$P1_2$0$0 == 0x0092
                           000092   211 _P1_2	=	0x0092
                           000093   212 G$P1_3$0$0 == 0x0093
                           000093   213 _P1_3	=	0x0093
                           000094   214 G$P1_4$0$0 == 0x0094
                           000094   215 _P1_4	=	0x0094
                           000095   216 G$P1_5$0$0 == 0x0095
                           000095   217 _P1_5	=	0x0095
                           000096   218 G$P1_6$0$0 == 0x0096
                           000096   219 _P1_6	=	0x0096
                           000097   220 G$P1_7$0$0 == 0x0097
                           000097   221 _P1_7	=	0x0097
                           000098   222 G$RI$0$0 == 0x0098
                           000098   223 _RI	=	0x0098
                           000099   224 G$TI$0$0 == 0x0099
                           000099   225 _TI	=	0x0099
                           00009A   226 G$RB8$0$0 == 0x009a
                           00009A   227 _RB8	=	0x009a
                           00009B   228 G$TB8$0$0 == 0x009b
                           00009B   229 _TB8	=	0x009b
                           00009C   230 G$REN$0$0 == 0x009c
                           00009C   231 _REN	=	0x009c
                           00009D   232 G$SM2$0$0 == 0x009d
                           00009D   233 _SM2	=	0x009d
                           00009E   234 G$SM1$0$0 == 0x009e
                           00009E   235 _SM1	=	0x009e
                           00009F   236 G$SM0$0$0 == 0x009f
                           00009F   237 _SM0	=	0x009f
                           0000A0   238 G$P2_0$0$0 == 0x00a0
                           0000A0   239 _P2_0	=	0x00a0
                           0000A1   240 G$P2_1$0$0 == 0x00a1
                           0000A1   241 _P2_1	=	0x00a1
                           0000A2   242 G$P2_2$0$0 == 0x00a2
                           0000A2   243 _P2_2	=	0x00a2
                           0000A3   244 G$P2_3$0$0 == 0x00a3
                           0000A3   245 _P2_3	=	0x00a3
                           0000A4   246 G$P2_4$0$0 == 0x00a4
                           0000A4   247 _P2_4	=	0x00a4
                           0000A5   248 G$P2_5$0$0 == 0x00a5
                           0000A5   249 _P2_5	=	0x00a5
                           0000A6   250 G$P2_6$0$0 == 0x00a6
                           0000A6   251 _P2_6	=	0x00a6
                           0000A7   252 G$P2_7$0$0 == 0x00a7
                           0000A7   253 _P2_7	=	0x00a7
                           0000A8   254 G$EX0$0$0 == 0x00a8
                           0000A8   255 _EX0	=	0x00a8
                           0000A9   256 G$ET0$0$0 == 0x00a9
                           0000A9   257 _ET0	=	0x00a9
                           0000AA   258 G$EX1$0$0 == 0x00aa
                           0000AA   259 _EX1	=	0x00aa
                           0000AB   260 G$ET1$0$0 == 0x00ab
                           0000AB   261 _ET1	=	0x00ab
                           0000AC   262 G$ES$0$0 == 0x00ac
                           0000AC   263 _ES	=	0x00ac
                           0000AF   264 G$EA$0$0 == 0x00af
                           0000AF   265 _EA	=	0x00af
                           0000B0   266 G$P3_0$0$0 == 0x00b0
                           0000B0   267 _P3_0	=	0x00b0
                           0000B1   268 G$P3_1$0$0 == 0x00b1
                           0000B1   269 _P3_1	=	0x00b1
                           0000B2   270 G$P3_2$0$0 == 0x00b2
                           0000B2   271 _P3_2	=	0x00b2
                           0000B3   272 G$P3_3$0$0 == 0x00b3
                           0000B3   273 _P3_3	=	0x00b3
                           0000B4   274 G$P3_4$0$0 == 0x00b4
                           0000B4   275 _P3_4	=	0x00b4
                           0000B5   276 G$P3_5$0$0 == 0x00b5
                           0000B5   277 _P3_5	=	0x00b5
                           0000B6   278 G$P3_6$0$0 == 0x00b6
                           0000B6   279 _P3_6	=	0x00b6
                           0000B7   280 G$P3_7$0$0 == 0x00b7
                           0000B7   281 _P3_7	=	0x00b7
                           0000B0   282 G$RXD$0$0 == 0x00b0
                           0000B0   283 _RXD	=	0x00b0
                           0000B1   284 G$TXD$0$0 == 0x00b1
                           0000B1   285 _TXD	=	0x00b1
                           0000B2   286 G$INT0$0$0 == 0x00b2
                           0000B2   287 _INT0	=	0x00b2
                           0000B3   288 G$INT1$0$0 == 0x00b3
                           0000B3   289 _INT1	=	0x00b3
                           0000B4   290 G$T0$0$0 == 0x00b4
                           0000B4   291 _T0	=	0x00b4
                           0000B5   292 G$T1$0$0 == 0x00b5
                           0000B5   293 _T1	=	0x00b5
                           0000B6   294 G$WR$0$0 == 0x00b6
                           0000B6   295 _WR	=	0x00b6
                           0000B7   296 G$RD$0$0 == 0x00b7
                           0000B7   297 _RD	=	0x00b7
                           0000B8   298 G$PX0$0$0 == 0x00b8
                           0000B8   299 _PX0	=	0x00b8
                           0000B9   300 G$PT0$0$0 == 0x00b9
                           0000B9   301 _PT0	=	0x00b9
                           0000BA   302 G$PX1$0$0 == 0x00ba
                           0000BA   303 _PX1	=	0x00ba
                           0000BB   304 G$PT1$0$0 == 0x00bb
                           0000BB   305 _PT1	=	0x00bb
                           0000BC   306 G$PS$0$0 == 0x00bc
                           0000BC   307 _PS	=	0x00bc
                           0000D0   308 G$P$0$0 == 0x00d0
                           0000D0   309 _P	=	0x00d0
                           0000D1   310 G$F1$0$0 == 0x00d1
                           0000D1   311 _F1	=	0x00d1
                           0000D2   312 G$OV$0$0 == 0x00d2
                           0000D2   313 _OV	=	0x00d2
                           0000D3   314 G$RS0$0$0 == 0x00d3
                           0000D3   315 _RS0	=	0x00d3
                           0000D4   316 G$RS1$0$0 == 0x00d4
                           0000D4   317 _RS1	=	0x00d4
                           0000D5   318 G$F0$0$0 == 0x00d5
                           0000D5   319 _F0	=	0x00d5
                           0000D6   320 G$AC$0$0 == 0x00d6
                           0000D6   321 _AC	=	0x00d6
                           0000D7   322 G$CY$0$0 == 0x00d7
                           0000D7   323 _CY	=	0x00d7
                           000000   324 Lmain.SendStringONOFFSerally$pinPuerto$1$26==.
      000000                        325 _SendStringONOFFSerally_PARM_2:
      000000                        326 	.ds 1
                                    327 ;--------------------------------------------------------
                                    328 ; overlayable register banks
                                    329 ;--------------------------------------------------------
                                    330 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        331 	.ds 8
                                    332 ;--------------------------------------------------------
                                    333 ; overlayable bit register bank
                                    334 ;--------------------------------------------------------
                                    335 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        336 bits:
      000020                        337 	.ds 1
                           008000   338 	b0 = bits[0]
                           008100   339 	b1 = bits[1]
                           008200   340 	b2 = bits[2]
                           008300   341 	b3 = bits[3]
                           008400   342 	b4 = bits[4]
                           008500   343 	b5 = bits[5]
                           008600   344 	b6 = bits[6]
                           008700   345 	b7 = bits[7]
                                    346 ;--------------------------------------------------------
                                    347 ; internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area DSEG    (DATA)
                           000000   350 G$contador$0$0==.
      000008                        351 _contador::
      000008                        352 	.ds 1
                                    353 ;--------------------------------------------------------
                                    354 ; overlayable items in internal ram 
                                    355 ;--------------------------------------------------------
                                    356 	.area	OSEG    (OVR,DATA)
                                    357 	.area	OSEG    (OVR,DATA)
                                    358 ;--------------------------------------------------------
                                    359 ; Stack segment in internal ram 
                                    360 ;--------------------------------------------------------
                                    361 	.area	SSEG
      000021                        362 __start__stack:
      000021                        363 	.ds	1
                                    364 
                                    365 ;--------------------------------------------------------
                                    366 ; indirectly addressable internal ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area ISEG    (DATA)
                                    369 ;--------------------------------------------------------
                                    370 ; absolute internal ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area IABS    (ABS,DATA)
                                    373 	.area IABS    (ABS,DATA)
                                    374 ;--------------------------------------------------------
                                    375 ; bit data
                                    376 ;--------------------------------------------------------
                                    377 	.area BSEG    (BIT)
                                    378 ;--------------------------------------------------------
                                    379 ; paged external ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area PSEG    (PAG,XDATA)
                                    382 ;--------------------------------------------------------
                                    383 ; external ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area XSEG    (XDATA)
                                    386 ;--------------------------------------------------------
                                    387 ; absolute external ram data
                                    388 ;--------------------------------------------------------
                                    389 	.area XABS    (ABS,XDATA)
                                    390 ;--------------------------------------------------------
                                    391 ; external initialized ram data
                                    392 ;--------------------------------------------------------
                                    393 	.area XISEG   (XDATA)
                                    394 	.area HOME    (CODE)
                                    395 	.area GSINIT0 (CODE)
                                    396 	.area GSINIT1 (CODE)
                                    397 	.area GSINIT2 (CODE)
                                    398 	.area GSINIT3 (CODE)
                                    399 	.area GSINIT4 (CODE)
                                    400 	.area GSINIT5 (CODE)
                                    401 	.area GSINIT  (CODE)
                                    402 	.area GSFINAL (CODE)
                                    403 	.area CSEG    (CODE)
                                    404 ;--------------------------------------------------------
                                    405 ; interrupt vector 
                                    406 ;--------------------------------------------------------
                                    407 	.area HOME    (CODE)
      000000                        408 __interrupt_vect:
      000000 02 00 29         [24]  409 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  410 	reti
      000004                        411 	.ds	7
      00000B 32               [24]  412 	reti
      00000C                        413 	.ds	7
      000013 32               [24]  414 	reti
      000014                        415 	.ds	7
      00001B 32               [24]  416 	reti
      00001C                        417 	.ds	7
      000023 02 01 71         [24]  418 	ljmp	_serial_ISR
                                    419 ;--------------------------------------------------------
                                    420 ; global & static initialisations
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
                                    423 	.area GSINIT  (CODE)
                                    424 	.area GSFINAL (CODE)
                                    425 	.area GSINIT  (CODE)
                                    426 	.globl __sdcc_gsinit_startup
                                    427 	.globl __sdcc_program_startup
                                    428 	.globl __start__stack
                                    429 	.globl __mcs51_genXINIT
                                    430 	.globl __mcs51_genXRAMCLEAR
                                    431 	.globl __mcs51_genRAMCLEAR
                           000000   432 	C$main.c$34$1$29 ==.
                                    433 ;	main.c:34: unsigned char contador = 0;
      000082 75 08 00         [24]  434 	mov	_contador,#0x00
                                    435 	.area GSFINAL (CODE)
      000085 02 00 26         [24]  436 	ljmp	__sdcc_program_startup
                                    437 ;--------------------------------------------------------
                                    438 ; Home
                                    439 ;--------------------------------------------------------
                                    440 	.area HOME    (CODE)
                                    441 	.area HOME    (CODE)
      000026                        442 __sdcc_program_startup:
      000026 02 00 88         [24]  443 	ljmp	_main
                                    444 ;	return from main will return to caller
                                    445 ;--------------------------------------------------------
                                    446 ; code
                                    447 ;--------------------------------------------------------
                                    448 	.area CSEG    (CODE)
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'main'
                                    451 ;------------------------------------------------------------
                           000000   452 	G$main$0$0 ==.
                           000000   453 	C$main.c$36$0$0 ==.
                                    454 ;	main.c:36: void main()
                                    455 ;	-----------------------------------------
                                    456 ;	 function main
                                    457 ;	-----------------------------------------
      000088                        458 _main:
                           000007   459 	ar7 = 0x07
                           000006   460 	ar6 = 0x06
                           000005   461 	ar5 = 0x05
                           000004   462 	ar4 = 0x04
                           000003   463 	ar3 = 0x03
                           000002   464 	ar2 = 0x02
                           000001   465 	ar1 = 0x01
                           000000   466 	ar0 = 0x00
                           000000   467 	C$main.c$38$1$9 ==.
                                    468 ;	main.c:38:     cct_init();
      000088 12 00 D9         [24]  469 	lcall	_cct_init
                           000003   470 	C$main.c$39$1$9 ==.
                                    471 ;	main.c:39:     SerialInitialize();
      00008B 12 00 E6         [24]  472 	lcall	_SerialInitialize
                           000006   473 	C$main.c$40$1$9 ==.
                                    474 ;	main.c:40:     ES = 0; 
      00008E C2 AC            [12]  475 	clr	_ES
                           000008   476 	C$main.c$41$1$9 ==.
                                    477 ;	main.c:41: SendStringCRLFSerally(mensajeInicialLine1);
      000090 90 02 B2         [24]  478 	mov	dptr,#_mensajeInicialLine1
      000093 75 F0 80         [24]  479 	mov	b,#0x80
      000096 12 01 4F         [24]  480 	lcall	_SendStringCRLFSerally
                           000011   481 	C$main.c$42$1$9 ==.
                                    482 ;	main.c:42: SendStringCRLFSerally(mensajeInicialLine2);
      000099 90 02 F0         [24]  483 	mov	dptr,#_mensajeInicialLine2
      00009C 75 F0 80         [24]  484 	mov	b,#0x80
      00009F 12 01 4F         [24]  485 	lcall	_SendStringCRLFSerally
                           00001A   486 	C$main.c$43$1$9 ==.
                                    487 ;	main.c:43: SendStringCRLFSerally(mensajeInicialLine3);
      0000A2 90 03 15         [24]  488 	mov	dptr,#_mensajeInicialLine3
      0000A5 75 F0 80         [24]  489 	mov	b,#0x80
      0000A8 12 01 4F         [24]  490 	lcall	_SendStringCRLFSerally
                           000023   491 	C$main.c$45$1$9 ==.
                                    492 ;	main.c:45: ES=1;       // Habilita Interrupcion de Puerto Serie.
      0000AB D2 AC            [12]  493 	setb	_ES
                           000025   494 	C$main.c$46$1$9 ==.
                                    495 ;	main.c:46: EA=1;       // Habilita Interrupciones.
      0000AD D2 AF            [12]  496 	setb	_EA
                           000027   497 	C$main.c$48$1$9 ==.
                                    498 ;	main.c:48:     while(1)
      0000AF                        499 00102$:
                           000027   500 	C$main.c$51$2$10 ==.
                                    501 ;	main.c:51: P2_0=0;
      0000AF C2 A0            [12]  502 	clr	_P2_0
                           000029   503 	C$main.c$52$2$10 ==.
                                    504 ;	main.c:52: delay(40000);
      0000B1 90 9C 40         [24]  505 	mov	dptr,#0x9c40
      0000B4 12 00 C2         [24]  506 	lcall	_delay
                           00002F   507 	C$main.c$53$2$10 ==.
                                    508 ;	main.c:53: P2_0=1;
      0000B7 D2 A0            [12]  509 	setb	_P2_0
                           000031   510 	C$main.c$54$2$10 ==.
                                    511 ;	main.c:54: delay(40000);
      0000B9 90 9C 40         [24]  512 	mov	dptr,#0x9c40
      0000BC 12 00 C2         [24]  513 	lcall	_delay
      0000BF 80 EE            [24]  514 	sjmp	00102$
                           000039   515 	C$main.c$56$1$9 ==.
                           000039   516 	XG$main$0$0 ==.
      0000C1 22               [24]  517 	ret
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'delay'
                                    520 ;------------------------------------------------------------
                                    521 ;vueltas                   Allocated to registers r6 r7 
                                    522 ;contador                  Allocated to registers r4 r5 
                                    523 ;------------------------------------------------------------
                           00003A   524 	G$delay$0$0 ==.
                           00003A   525 	C$main.c$58$1$9 ==.
                                    526 ;	main.c:58: void delay(unsigned int vueltas)
                                    527 ;	-----------------------------------------
                                    528 ;	 function delay
                                    529 ;	-----------------------------------------
      0000C2                        530 _delay:
      0000C2 AE 82            [24]  531 	mov	r6,dpl
      0000C4 AF 83            [24]  532 	mov	r7,dph
                           00003E   533 	C$main.c$61$1$12 ==.
                                    534 ;	main.c:61: for(contador=0; contador<vueltas; contador++);
      0000C6 7C 00            [12]  535 	mov	r4,#0x00
      0000C8 7D 00            [12]  536 	mov	r5,#0x00
      0000CA                        537 00103$:
      0000CA C3               [12]  538 	clr	c
      0000CB EC               [12]  539 	mov	a,r4
      0000CC 9E               [12]  540 	subb	a,r6
      0000CD ED               [12]  541 	mov	a,r5
      0000CE 9F               [12]  542 	subb	a,r7
      0000CF 50 07            [24]  543 	jnc	00105$
      0000D1 0C               [12]  544 	inc	r4
      0000D2 BC 00 F5         [24]  545 	cjne	r4,#0x00,00103$
      0000D5 0D               [12]  546 	inc	r5
      0000D6 80 F2            [24]  547 	sjmp	00103$
      0000D8                        548 00105$:
                           000050   549 	C$main.c$62$1$12 ==.
                           000050   550 	XG$delay$0$0 ==.
      0000D8 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'cct_init'
                                    554 ;------------------------------------------------------------
                           000051   555 	G$cct_init$0$0 ==.
                           000051   556 	C$main.c$64$1$12 ==.
                                    557 ;	main.c:64: void cct_init(void)   //initialize cct
                                    558 ;	-----------------------------------------
                                    559 ;	 function cct_init
                                    560 ;	-----------------------------------------
      0000D9                        561 _cct_init:
                           000051   562 	C$main.c$66$1$14 ==.
                                    563 ;	main.c:66:     P0 = 0x00; //not used
      0000D9 75 80 00         [24]  564 	mov	_P0,#0x00
                           000054   565 	C$main.c$67$1$14 ==.
                                    566 ;	main.c:67:     P1 = 0x00; //Used for Appliances
      0000DC 75 90 00         [24]  567 	mov	_P1,#0x00
                           000057   568 	C$main.c$68$1$14 ==.
                                    569 ;	main.c:68:     P2 = 0x00; //not used
      0000DF 75 A0 00         [24]  570 	mov	_P2,#0x00
                           00005A   571 	C$main.c$69$1$14 ==.
                                    572 ;	main.c:69:     P3 = 0x03; //used for serial
      0000E2 75 B0 03         [24]  573 	mov	_P3,#0x03
                           00005D   574 	C$main.c$70$1$14 ==.
                           00005D   575 	XG$cct_init$0$0 ==.
      0000E5 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'SerialInitialize'
                                    579 ;------------------------------------------------------------
                           00005E   580 	G$SerialInitialize$0$0 ==.
                           00005E   581 	C$main.c$72$1$14 ==.
                                    582 ;	main.c:72: void SerialInitialize(void)                   // INITIALIZE SERIAL PORT
                                    583 ;	-----------------------------------------
                                    584 ;	 function SerialInitialize
                                    585 ;	-----------------------------------------
      0000E6                        586 _SerialInitialize:
                           00005E   587 	C$main.c$74$1$16 ==.
                                    588 ;	main.c:74:     TMOD = 0x20;                           // Timer 1 IN MODE 2 -AUTO RELOAD TO GENERATE BAUD RATE
      0000E6 75 89 20         [24]  589 	mov	_TMOD,#0x20
                           000061   590 	C$main.c$75$1$16 ==.
                                    591 ;	main.c:75:     SCON = 0x50;                           // SERIAL MODE 1, 8-DATA BIT 1-START BIT, 1-STOP BIT, REN ENABLED
      0000E9 75 98 50         [24]  592 	mov	_SCON,#0x50
                           000064   593 	C$main.c$76$1$16 ==.
                                    594 ;	main.c:76:     TH1 = Baud_rate;                       // LOAD BAUDRATE TO TIMER REGISTER
      0000EC 75 8D FD         [24]  595 	mov	_TH1,#0xfd
                           000067   596 	C$main.c$77$1$16 ==.
                                    597 ;	main.c:77:     TR1 = 1;                               // START TIMER
      0000EF D2 8E            [12]  598 	setb	_TR1
                           000069   599 	C$main.c$78$1$16 ==.
                           000069   600 	XG$SerialInitialize$0$0 ==.
      0000F1 22               [24]  601 	ret
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'SendByteSerially'
                                    604 ;------------------------------------------------------------
                                    605 ;serialdata                Allocated to registers 
                                    606 ;------------------------------------------------------------
                           00006A   607 	G$SendByteSerially$0$0 ==.
                           00006A   608 	C$main.c$80$1$16 ==.
                                    609 ;	main.c:80: void SendByteSerially(unsigned char serialdata)
                                    610 ;	-----------------------------------------
                                    611 ;	 function SendByteSerially
                                    612 ;	-----------------------------------------
      0000F2                        613 _SendByteSerially:
      0000F2 85 82 99         [24]  614 	mov	_SBUF,dpl
                           00006D   615 	C$main.c$83$1$18 ==.
                                    616 ;	main.c:83:     while(TI == 0);                            // WAIT UNTIL TRANSMISSION TO COMPLETE
      0000F5                        617 00101$:
                           00006D   618 	C$main.c$84$1$18 ==.
                                    619 ;	main.c:84:     TI = 0;                                    // CLEAR TRANSMISSION INTERRUPT FLAG
      0000F5 10 99 02         [24]  620 	jbc	_TI,00112$
      0000F8 80 FB            [24]  621 	sjmp	00101$
      0000FA                        622 00112$:
                           000072   623 	C$main.c$85$1$18 ==.
                           000072   624 	XG$SendByteSerially$0$0 ==.
      0000FA 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'SendCRLFSerially'
                                    628 ;------------------------------------------------------------
                           000073   629 	G$SendCRLFSerially$0$0 ==.
                           000073   630 	C$main.c$87$1$18 ==.
                                    631 ;	main.c:87: void SendCRLFSerially (void)
                                    632 ;	-----------------------------------------
                                    633 ;	 function SendCRLFSerially
                                    634 ;	-----------------------------------------
      0000FB                        635 _SendCRLFSerially:
                           000073   636 	C$main.c$89$1$20 ==.
                                    637 ;	main.c:89: SendByteSerially(CR);
      0000FB 75 82 0D         [24]  638 	mov	dpl,#0x0d
      0000FE 12 00 F2         [24]  639 	lcall	_SendByteSerially
                           000079   640 	C$main.c$90$1$20 ==.
                                    641 ;	main.c:90: SendByteSerially(LF);
      000101 75 82 0A         [24]  642 	mov	dpl,#0x0a
      000104 12 00 F2         [24]  643 	lcall	_SendByteSerially
                           00007F   644 	C$main.c$91$1$20 ==.
                           00007F   645 	XG$SendCRLFSerially$0$0 ==.
      000107 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'SendStringSerally'
                                    649 ;------------------------------------------------------------
                                    650 ;cadena                    Allocated to registers r5 r6 r7 
                                    651 ;contador                  Allocated to registers r4 
                                    652 ;------------------------------------------------------------
                           000080   653 	G$SendStringSerally$0$0 ==.
                           000080   654 	C$main.c$93$1$20 ==.
                                    655 ;	main.c:93: void SendStringSerally(char* cadena)
                                    656 ;	-----------------------------------------
                                    657 ;	 function SendStringSerally
                                    658 ;	-----------------------------------------
      000108                        659 _SendStringSerally:
      000108 AD 82            [24]  660 	mov	r5,dpl
      00010A AE 83            [24]  661 	mov	r6,dph
      00010C AF F0            [24]  662 	mov	r7,b
                           000086   663 	C$main.c$96$1$22 ==.
                                    664 ;	main.c:96: while (cadena[contador])
      00010E 7C 00            [12]  665 	mov	r4,#0x00
      000110                        666 00101$:
      000110 EC               [12]  667 	mov	a,r4
      000111 2D               [12]  668 	add	a,r5
      000112 F9               [12]  669 	mov	r1,a
      000113 E4               [12]  670 	clr	a
      000114 3E               [12]  671 	addc	a,r6
      000115 FA               [12]  672 	mov	r2,a
      000116 8F 03            [24]  673 	mov	ar3,r7
      000118 89 82            [24]  674 	mov	dpl,r1
      00011A 8A 83            [24]  675 	mov	dph,r2
      00011C 8B F0            [24]  676 	mov	b,r3
      00011E 12 02 92         [24]  677 	lcall	__gptrget
      000121 60 2B            [24]  678 	jz	00104$
                           00009B   679 	C$main.c$98$2$23 ==.
                                    680 ;	main.c:98: SendByteSerially(cadena[contador++]);
      000123 8C 03            [24]  681 	mov	ar3,r4
      000125 0C               [12]  682 	inc	r4
      000126 EB               [12]  683 	mov	a,r3
      000127 2D               [12]  684 	add	a,r5
      000128 F9               [12]  685 	mov	r1,a
      000129 E4               [12]  686 	clr	a
      00012A 3E               [12]  687 	addc	a,r6
      00012B FA               [12]  688 	mov	r2,a
      00012C 8F 03            [24]  689 	mov	ar3,r7
      00012E 89 82            [24]  690 	mov	dpl,r1
      000130 8A 83            [24]  691 	mov	dph,r2
      000132 8B F0            [24]  692 	mov	b,r3
      000134 12 02 92         [24]  693 	lcall	__gptrget
      000137 F5 82            [12]  694 	mov	dpl,a
      000139 C0 07            [24]  695 	push	ar7
      00013B C0 06            [24]  696 	push	ar6
      00013D C0 05            [24]  697 	push	ar5
      00013F C0 04            [24]  698 	push	ar4
      000141 12 00 F2         [24]  699 	lcall	_SendByteSerially
      000144 D0 04            [24]  700 	pop	ar4
      000146 D0 05            [24]  701 	pop	ar5
      000148 D0 06            [24]  702 	pop	ar6
      00014A D0 07            [24]  703 	pop	ar7
      00014C 80 C2            [24]  704 	sjmp	00101$
      00014E                        705 00104$:
                           0000C6   706 	C$main.c$100$1$22 ==.
                           0000C6   707 	XG$SendStringSerally$0$0 ==.
      00014E 22               [24]  708 	ret
                                    709 ;------------------------------------------------------------
                                    710 ;Allocation info for local variables in function 'SendStringCRLFSerally'
                                    711 ;------------------------------------------------------------
                                    712 ;cadena                    Allocated to registers r5 r6 r7 
                                    713 ;------------------------------------------------------------
                           0000C7   714 	G$SendStringCRLFSerally$0$0 ==.
                           0000C7   715 	C$main.c$102$1$22 ==.
                                    716 ;	main.c:102: void SendStringCRLFSerally(char* cadena)
                                    717 ;	-----------------------------------------
                                    718 ;	 function SendStringCRLFSerally
                                    719 ;	-----------------------------------------
      00014F                        720 _SendStringCRLFSerally:
                           0000C7   721 	C$main.c$104$1$25 ==.
                                    722 ;	main.c:104: SendStringSerally(cadena);
      00014F 12 01 08         [24]  723 	lcall	_SendStringSerally
                           0000CA   724 	C$main.c$105$1$25 ==.
                                    725 ;	main.c:105: SendCRLFSerially();
      000152 12 00 FB         [24]  726 	lcall	_SendCRLFSerially
                           0000CD   727 	C$main.c$106$1$25 ==.
                           0000CD   728 	XG$SendStringCRLFSerally$0$0 ==.
      000155 22               [24]  729 	ret
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'SendStringONOFFSerally'
                                    732 ;------------------------------------------------------------
                                    733 ;texto                     Allocated to registers r5 r6 r7 
                                    734 ;pinPuerto                 Allocated with name '_SendStringONOFFSerally_PARM_2'
                                    735 ;------------------------------------------------------------
                           0000CE   736 	G$SendStringONOFFSerally$0$0 ==.
                           0000CE   737 	C$main.c$108$1$25 ==.
                                    738 ;	main.c:108: void SendStringONOFFSerally(char* texto, __sbit pinPuerto)
                                    739 ;	-----------------------------------------
                                    740 ;	 function SendStringONOFFSerally
                                    741 ;	-----------------------------------------
      000156                        742 _SendStringONOFFSerally:
                           0000CE   743 	C$main.c$110$1$27 ==.
                                    744 ;	main.c:110: SendStringSerally(texto);
      000156 12 01 08         [24]  745 	lcall	_SendStringSerally
                           0000D1   746 	C$main.c$111$1$27 ==.
                                    747 ;	main.c:111: if (pinPuerto) SendStringCRLFSerally(" : ON");
      000159 30 00 0B         [24]  748 	jnb	_SendStringONOFFSerally_PARM_2,00102$
      00015C 90 03 37         [24]  749 	mov	dptr,#___str_0
      00015F 75 F0 80         [24]  750 	mov	b,#0x80
      000162 12 01 4F         [24]  751 	lcall	_SendStringCRLFSerally
      000165 80 09            [24]  752 	sjmp	00104$
      000167                        753 00102$:
                           0000DF   754 	C$main.c$112$1$27 ==.
                                    755 ;	main.c:112: else SendStringCRLFSerally(" : OFF");
      000167 90 03 3D         [24]  756 	mov	dptr,#___str_1
      00016A 75 F0 80         [24]  757 	mov	b,#0x80
      00016D 12 01 4F         [24]  758 	lcall	_SendStringCRLFSerally
      000170                        759 00104$:
                           0000E8   760 	C$main.c$113$1$27 ==.
                           0000E8   761 	XG$SendStringONOFFSerally$0$0 ==.
      000170 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'serial_ISR'
                                    765 ;------------------------------------------------------------
                                    766 ;chr                       Allocated to registers r7 
                                    767 ;------------------------------------------------------------
                           0000E9   768 	G$serial_ISR$0$0 ==.
                           0000E9   769 	C$main.c$115$1$27 ==.
                                    770 ;	main.c:115: void serial_ISR (void) __interrupt (4)
                                    771 ;	-----------------------------------------
                                    772 ;	 function serial_ISR
                                    773 ;	-----------------------------------------
      000171                        774 _serial_ISR:
      000171 C0 20            [24]  775 	push	bits
      000173 C0 E0            [24]  776 	push	acc
      000175 C0 F0            [24]  777 	push	b
      000177 C0 82            [24]  778 	push	dpl
      000179 C0 83            [24]  779 	push	dph
      00017B C0 07            [24]  780 	push	(0+7)
      00017D C0 06            [24]  781 	push	(0+6)
      00017F C0 05            [24]  782 	push	(0+5)
      000181 C0 04            [24]  783 	push	(0+4)
      000183 C0 03            [24]  784 	push	(0+3)
      000185 C0 02            [24]  785 	push	(0+2)
      000187 C0 01            [24]  786 	push	(0+1)
      000189 C0 00            [24]  787 	push	(0+0)
      00018B C0 D0            [24]  788 	push	psw
      00018D 75 D0 00         [24]  789 	mov	psw,#0x00
                           000108   790 	C$main.c$118$1$27 ==.
                                    791 ;	main.c:118:     char chr=0x00;
      000190 7F 00            [12]  792 	mov	r7,#0x00
                           00010A   793 	C$main.c$119$1$29 ==.
                                    794 ;	main.c:119:     if(RI==1)
      000192 30 98 04         [24]  795 	jnb	_RI,00102$
                           00010D   796 	C$main.c$121$2$30 ==.
                                    797 ;	main.c:121:         chr = SBUF;
      000195 AF 99            [24]  798 	mov	r7,_SBUF
                           00010F   799 	C$main.c$122$2$30 ==.
                                    800 ;	main.c:122:         RI = 0;
      000197 C2 98            [12]  801 	clr	_RI
      000199                        802 00102$:
                           000111   803 	C$main.c$125$1$29 ==.
                                    804 ;	main.c:125: switch(chr)
      000199 BF 30 00         [24]  805 	cjne	r7,#0x30,00127$
      00019C                        806 00127$:
      00019C 50 03            [24]  807 	jnc	00128$
      00019E 02 02 73         [24]  808 	ljmp	00114$
      0001A1                        809 00128$:
      0001A1 EF               [12]  810 	mov	a,r7
      0001A2 24 C6            [12]  811 	add	a,#0xff - 0x39
      0001A4 50 03            [24]  812 	jnc	00129$
      0001A6 02 02 73         [24]  813 	ljmp	00114$
      0001A9                        814 00129$:
      0001A9 EF               [12]  815 	mov	a,r7
      0001AA 24 D0            [12]  816 	add	a,#0xd0
      0001AC FF               [12]  817 	mov	r7,a
      0001AD 24 0A            [12]  818 	add	a,#(00130$-3-.)
      0001AF 83               [24]  819 	movc	a,@a+pc
      0001B0 F5 82            [12]  820 	mov	dpl,a
      0001B2 EF               [12]  821 	mov	a,r7
      0001B3 24 0E            [12]  822 	add	a,#(00131$-3-.)
      0001B5 83               [24]  823 	movc	a,@a+pc
      0001B6 F5 83            [12]  824 	mov	dph,a
      0001B8 E4               [12]  825 	clr	a
      0001B9 73               [24]  826 	jmp	@a+dptr
      0001BA                        827 00130$:
      0001BA CE                     828 	.db	00103$
      0001BB DD                     829 	.db	00104$
      0001BC EF                     830 	.db	00105$
      0001BD 01                     831 	.db	00106$
      0001BE 12                     832 	.db	00107$
      0001BF 23                     833 	.db	00108$
      0001C0 34                     834 	.db	00109$
      0001C1 45                     835 	.db	00110$
      0001C2 56                     836 	.db	00111$
      0001C3 67                     837 	.db	00112$
      0001C4                        838 00131$:
      0001C4 01                     839 	.db	00103$>>8
      0001C5 01                     840 	.db	00104$>>8
      0001C6 01                     841 	.db	00105$>>8
      0001C7 02                     842 	.db	00106$>>8
      0001C8 02                     843 	.db	00107$>>8
      0001C9 02                     844 	.db	00108$>>8
      0001CA 02                     845 	.db	00109$>>8
      0001CB 02                     846 	.db	00110$>>8
      0001CC 02                     847 	.db	00111$>>8
      0001CD 02                     848 	.db	00112$>>8
                           000146   849 	C$main.c$128$2$31 ==.
                                    850 ;	main.c:128: case '0':  Salidas = 0x00; SendStringCRLFSerally("Todas las Salidas : OFF");  break;
      0001CE                        851 00103$:
      0001CE 75 90 00         [24]  852 	mov	_P1,#0x00
      0001D1 90 03 44         [24]  853 	mov	dptr,#___str_2
      0001D4 75 F0 80         [24]  854 	mov	b,#0x80
      0001D7 12 01 4F         [24]  855 	lcall	_SendStringCRLFSerally
      0001DA 02 02 73         [24]  856 	ljmp	00114$
                           000155   857 	C$main.c$129$2$31 ==.
                                    858 ;	main.c:129: case '1':  Salida1 = !Salida1; SendStringONOFFSerally("Salida 1",Salida1);  break;
      0001DD                        859 00104$:
      0001DD B2 90            [12]  860 	cpl	_P1_0
      0001DF A2 90            [12]  861 	mov	c,_P1_0
      0001E1 92 00            [24]  862 	mov	_SendStringONOFFSerally_PARM_2,c
      0001E3 90 03 5C         [24]  863 	mov	dptr,#___str_3
      0001E6 75 F0 80         [24]  864 	mov	b,#0x80
      0001E9 12 01 56         [24]  865 	lcall	_SendStringONOFFSerally
      0001EC 02 02 73         [24]  866 	ljmp	00114$
                           000167   867 	C$main.c$130$2$31 ==.
                                    868 ;	main.c:130:      case '2':  Salida2 = !Salida2; SendStringONOFFSerally("Salida 2",Salida2);  break;
      0001EF                        869 00105$:
      0001EF B2 91            [12]  870 	cpl	_P1_1
      0001F1 A2 91            [12]  871 	mov	c,_P1_1
      0001F3 92 00            [24]  872 	mov	_SendStringONOFFSerally_PARM_2,c
      0001F5 90 03 65         [24]  873 	mov	dptr,#___str_4
      0001F8 75 F0 80         [24]  874 	mov	b,#0x80
      0001FB 12 01 56         [24]  875 	lcall	_SendStringONOFFSerally
      0001FE 02 02 73         [24]  876 	ljmp	00114$
                           000179   877 	C$main.c$131$2$31 ==.
                                    878 ;	main.c:131:      case '3':  Salida3 = !Salida3; SendStringONOFFSerally("Salida 3",Salida3);  break;
      000201                        879 00106$:
      000201 B2 92            [12]  880 	cpl	_P1_2
      000203 A2 92            [12]  881 	mov	c,_P1_2
      000205 92 00            [24]  882 	mov	_SendStringONOFFSerally_PARM_2,c
      000207 90 03 6E         [24]  883 	mov	dptr,#___str_5
      00020A 75 F0 80         [24]  884 	mov	b,#0x80
      00020D 12 01 56         [24]  885 	lcall	_SendStringONOFFSerally
                           000188   886 	C$main.c$132$2$31 ==.
                                    887 ;	main.c:132:      case '4':  Salida4 = !Salida4; SendStringONOFFSerally("Salida 4",Salida4);  break;
      000210 80 61            [24]  888 	sjmp	00114$
      000212                        889 00107$:
      000212 B2 93            [12]  890 	cpl	_P1_3
      000214 A2 93            [12]  891 	mov	c,_P1_3
      000216 92 00            [24]  892 	mov	_SendStringONOFFSerally_PARM_2,c
      000218 90 03 77         [24]  893 	mov	dptr,#___str_6
      00021B 75 F0 80         [24]  894 	mov	b,#0x80
      00021E 12 01 56         [24]  895 	lcall	_SendStringONOFFSerally
                           000199   896 	C$main.c$133$2$31 ==.
                                    897 ;	main.c:133:      case '5':  Salida5 = !Salida5; SendStringONOFFSerally("Salida 5",Salida5);  break;
      000221 80 50            [24]  898 	sjmp	00114$
      000223                        899 00108$:
      000223 B2 94            [12]  900 	cpl	_P1_4
      000225 A2 94            [12]  901 	mov	c,_P1_4
      000227 92 00            [24]  902 	mov	_SendStringONOFFSerally_PARM_2,c
      000229 90 03 80         [24]  903 	mov	dptr,#___str_7
      00022C 75 F0 80         [24]  904 	mov	b,#0x80
      00022F 12 01 56         [24]  905 	lcall	_SendStringONOFFSerally
                           0001AA   906 	C$main.c$134$2$31 ==.
                                    907 ;	main.c:134:      case '6':  Salida6 = !Salida6; SendStringONOFFSerally("Salida 6",Salida6);  break;
      000232 80 3F            [24]  908 	sjmp	00114$
      000234                        909 00109$:
      000234 B2 95            [12]  910 	cpl	_P1_5
      000236 A2 95            [12]  911 	mov	c,_P1_5
      000238 92 00            [24]  912 	mov	_SendStringONOFFSerally_PARM_2,c
      00023A 90 03 89         [24]  913 	mov	dptr,#___str_8
      00023D 75 F0 80         [24]  914 	mov	b,#0x80
      000240 12 01 56         [24]  915 	lcall	_SendStringONOFFSerally
                           0001BB   916 	C$main.c$135$2$31 ==.
                                    917 ;	main.c:135:      case '7':  Salida7 = !Salida7; SendStringONOFFSerally("Salida 7",Salida7);  break;
      000243 80 2E            [24]  918 	sjmp	00114$
      000245                        919 00110$:
      000245 B2 96            [12]  920 	cpl	_P1_6
      000247 A2 96            [12]  921 	mov	c,_P1_6
      000249 92 00            [24]  922 	mov	_SendStringONOFFSerally_PARM_2,c
      00024B 90 03 92         [24]  923 	mov	dptr,#___str_9
      00024E 75 F0 80         [24]  924 	mov	b,#0x80
      000251 12 01 56         [24]  925 	lcall	_SendStringONOFFSerally
                           0001CC   926 	C$main.c$136$2$31 ==.
                                    927 ;	main.c:136:      case '8':  Salida8 = !Salida8; SendStringONOFFSerally("Salida 8",Salida8);  break;
      000254 80 1D            [24]  928 	sjmp	00114$
      000256                        929 00111$:
      000256 B2 97            [12]  930 	cpl	_P1_7
      000258 A2 97            [12]  931 	mov	c,_P1_7
      00025A 92 00            [24]  932 	mov	_SendStringONOFFSerally_PARM_2,c
      00025C 90 03 9B         [24]  933 	mov	dptr,#___str_10
      00025F 75 F0 80         [24]  934 	mov	b,#0x80
      000262 12 01 56         [24]  935 	lcall	_SendStringONOFFSerally
                           0001DD   936 	C$main.c$137$2$31 ==.
                                    937 ;	main.c:137: case '9':  Salidas = 0xFF; SendStringCRLFSerally("Todas las Salidas : ON");  break;
      000265 80 0C            [24]  938 	sjmp	00114$
      000267                        939 00112$:
      000267 75 90 FF         [24]  940 	mov	_P1,#0xff
      00026A 90 03 A4         [24]  941 	mov	dptr,#___str_11
      00026D 75 F0 80         [24]  942 	mov	b,#0x80
      000270 12 01 4F         [24]  943 	lcall	_SendStringCRLFSerally
                           0001EB   944 	C$main.c$139$1$29 ==.
                                    945 ;	main.c:139:     }
      000273                        946 00114$:
                           0001EB   947 	C$main.c$141$1$29 ==.
                                    948 ;	main.c:141:     RI = 0;
      000273 C2 98            [12]  949 	clr	_RI
      000275 D0 D0            [24]  950 	pop	psw
      000277 D0 00            [24]  951 	pop	(0+0)
      000279 D0 01            [24]  952 	pop	(0+1)
      00027B D0 02            [24]  953 	pop	(0+2)
      00027D D0 03            [24]  954 	pop	(0+3)
      00027F D0 04            [24]  955 	pop	(0+4)
      000281 D0 05            [24]  956 	pop	(0+5)
      000283 D0 06            [24]  957 	pop	(0+6)
      000285 D0 07            [24]  958 	pop	(0+7)
      000287 D0 83            [24]  959 	pop	dph
      000289 D0 82            [24]  960 	pop	dpl
      00028B D0 F0            [24]  961 	pop	b
      00028D D0 E0            [24]  962 	pop	acc
      00028F D0 20            [24]  963 	pop	bits
                           000209   964 	C$main.c$142$1$29 ==.
                           000209   965 	XG$serial_ISR$0$0 ==.
      000291 32               [24]  966 	reti
                                    967 	.area CSEG    (CODE)
                                    968 	.area CONST   (CODE)
                           000000   969 G$mensajeInicialLine1$0$0 == .
      0002B2                        970 _mensajeInicialLine1:
      0002B2 50 61 72 61 20 41 63   971 	.ascii "Para Activar/Desactivar Salidas (1-8) pulse las Teclas 1 a 8"
             74 69 76 61 72 2F 44
             65 73 61 63 74 69 76
             61 72 20 53 61 6C 69
             64 61 73 20 28 31 2D
             38 29 20 70 75 6C 73
             65 20 6C 61 73 20 54
             65 63 6C 61 73 20 31
             20 61 20 38
      0002EE 2E                     972 	.ascii "."
      0002EF 00                     973 	.db 0x00
                           00003E   974 G$mensajeInicialLine2$0$0 == .
      0002F0                        975 _mensajeInicialLine2:
      0002F0 54 65 63 6C 61 20 30   976 	.ascii "Tecla 0 Desactiva todas las salidas."
             20 44 65 73 61 63 74
             69 76 61 20 74 6F 64
             61 73 20 6C 61 73 20
             73 61 6C 69 64 61 73
             2E
      000314 00                     977 	.db 0x00
                           000063   978 G$mensajeInicialLine3$0$0 == .
      000315                        979 _mensajeInicialLine3:
      000315 54 65 63 6C 61 20 39   980 	.ascii "Tecla 9 Activa todas las salidas."
             20 41 63 74 69 76 61
             20 74 6F 64 61 73 20
             6C 61 73 20 73 61 6C
             69 64 61 73 2E
      000336 00                     981 	.db 0x00
                           000085   982 Fmain$__str_0$0$0 == .
      000337                        983 ___str_0:
      000337 20 3A 20 4F 4E         984 	.ascii " : ON"
      00033C 00                     985 	.db 0x00
                           00008B   986 Fmain$__str_1$0$0 == .
      00033D                        987 ___str_1:
      00033D 20 3A 20 4F 46 46      988 	.ascii " : OFF"
      000343 00                     989 	.db 0x00
                           000092   990 Fmain$__str_2$0$0 == .
      000344                        991 ___str_2:
      000344 54 6F 64 61 73 20 6C   992 	.ascii "Todas las Salidas : OFF"
             61 73 20 53 61 6C 69
             64 61 73 20 3A 20 4F
             46 46
      00035B 00                     993 	.db 0x00
                           0000AA   994 Fmain$__str_3$0$0 == .
      00035C                        995 ___str_3:
      00035C 53 61 6C 69 64 61 20   996 	.ascii "Salida 1"
             31
      000364 00                     997 	.db 0x00
                           0000B3   998 Fmain$__str_4$0$0 == .
      000365                        999 ___str_4:
      000365 53 61 6C 69 64 61 20  1000 	.ascii "Salida 2"
             32
      00036D 00                    1001 	.db 0x00
                           0000BC  1002 Fmain$__str_5$0$0 == .
      00036E                       1003 ___str_5:
      00036E 53 61 6C 69 64 61 20  1004 	.ascii "Salida 3"
             33
      000376 00                    1005 	.db 0x00
                           0000C5  1006 Fmain$__str_6$0$0 == .
      000377                       1007 ___str_6:
      000377 53 61 6C 69 64 61 20  1008 	.ascii "Salida 4"
             34
      00037F 00                    1009 	.db 0x00
                           0000CE  1010 Fmain$__str_7$0$0 == .
      000380                       1011 ___str_7:
      000380 53 61 6C 69 64 61 20  1012 	.ascii "Salida 5"
             35
      000388 00                    1013 	.db 0x00
                           0000D7  1014 Fmain$__str_8$0$0 == .
      000389                       1015 ___str_8:
      000389 53 61 6C 69 64 61 20  1016 	.ascii "Salida 6"
             36
      000391 00                    1017 	.db 0x00
                           0000E0  1018 Fmain$__str_9$0$0 == .
      000392                       1019 ___str_9:
      000392 53 61 6C 69 64 61 20  1020 	.ascii "Salida 7"
             37
      00039A 00                    1021 	.db 0x00
                           0000E9  1022 Fmain$__str_10$0$0 == .
      00039B                       1023 ___str_10:
      00039B 53 61 6C 69 64 61 20  1024 	.ascii "Salida 8"
             38
      0003A3 00                    1025 	.db 0x00
                           0000F2  1026 Fmain$__str_11$0$0 == .
      0003A4                       1027 ___str_11:
      0003A4 54 6F 64 61 73 20 6C  1028 	.ascii "Todas las Salidas : ON"
             61 73 20 53 61 6C 69
             64 61 73 20 3A 20 4F
             4E
      0003BA 00                    1029 	.db 0x00
                                   1030 	.area XINIT   (CODE)
                                   1031 	.area CABS    (ABS,CODE)
