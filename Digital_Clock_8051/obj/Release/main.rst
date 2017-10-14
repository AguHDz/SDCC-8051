                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _setup
                                     13 	.globl _timeSet
                                     14 	.globl _cicloTimeSet
                                     15 	.globl _timeShow
                                     16 	.globl _LCDPrintNumero
                                     17 	.globl _diasDelMes
                                     18 	.globl _bisiesto
                                     19 	.globl _LCDPrintDiaSemana
                                     20 	.globl _LCD_init
                                     21 	.globl _LCD_print
                                     22 	.globl _LCD_createChar
                                     23 	.globl _LCD_displayCursorLeft
                                     24 	.globl _LCD_displayCursorRight
                                     25 	.globl _LCD_displayShiftLeft
                                     26 	.globl _LCD_displayShiftRight
                                     27 	.globl _LCD_displayOff
                                     28 	.globl _LCD_displayOn
                                     29 	.globl _LCD_cursorOff
                                     30 	.globl _LCD_cursorUnderlineBlink
                                     31 	.globl _LCD_cursorBlink
                                     32 	.globl _LCD_cursorUnderline
                                     33 	.globl _LCD_clear
                                     34 	.globl _LCD_cursorHome
                                     35 	.globl _LCD_gotoXY
                                     36 	.globl _LCD_putChar
                                     37 	.globl _LCD_command
                                     38 	.globl _LCD_send
                                     39 	.globl _LCD_send4Bits
                                     40 	.globl _DS1307_timeWrite
                                     41 	.globl _DS1307_timeRead
                                     42 	.globl _decimalToBCD
                                     43 	.globl _BCDToDecimal
                                     44 	.globl _I2C_read
                                     45 	.globl _I2C_send
                                     46 	.globl _I2C_stop
                                     47 	.globl _I2C_start
                                     48 	.globl _TF2
                                     49 	.globl _EXF2
                                     50 	.globl _RCLK
                                     51 	.globl _TCLK
                                     52 	.globl _EXEN2
                                     53 	.globl _TR2
                                     54 	.globl _C_T2
                                     55 	.globl _CP_RL2
                                     56 	.globl _T2CON_7
                                     57 	.globl _T2CON_6
                                     58 	.globl _T2CON_5
                                     59 	.globl _T2CON_4
                                     60 	.globl _T2CON_3
                                     61 	.globl _T2CON_2
                                     62 	.globl _T2CON_1
                                     63 	.globl _T2CON_0
                                     64 	.globl _PT2
                                     65 	.globl _ET2
                                     66 	.globl _CY
                                     67 	.globl _AC
                                     68 	.globl _F0
                                     69 	.globl _RS1
                                     70 	.globl _RS0
                                     71 	.globl _OV
                                     72 	.globl _F1
                                     73 	.globl _P
                                     74 	.globl _PS
                                     75 	.globl _PT1
                                     76 	.globl _PX1
                                     77 	.globl _PT0
                                     78 	.globl _PX0
                                     79 	.globl _RD
                                     80 	.globl _WR
                                     81 	.globl _T1
                                     82 	.globl _T0
                                     83 	.globl _INT1
                                     84 	.globl _INT0
                                     85 	.globl _TXD
                                     86 	.globl _RXD
                                     87 	.globl _P3_7
                                     88 	.globl _P3_6
                                     89 	.globl _P3_5
                                     90 	.globl _P3_4
                                     91 	.globl _P3_3
                                     92 	.globl _P3_2
                                     93 	.globl _P3_1
                                     94 	.globl _P3_0
                                     95 	.globl _EA
                                     96 	.globl _ES
                                     97 	.globl _ET1
                                     98 	.globl _EX1
                                     99 	.globl _ET0
                                    100 	.globl _EX0
                                    101 	.globl _P2_7
                                    102 	.globl _P2_6
                                    103 	.globl _P2_5
                                    104 	.globl _P2_4
                                    105 	.globl _P2_3
                                    106 	.globl _P2_2
                                    107 	.globl _P2_1
                                    108 	.globl _P2_0
                                    109 	.globl _SM0
                                    110 	.globl _SM1
                                    111 	.globl _SM2
                                    112 	.globl _REN
                                    113 	.globl _TB8
                                    114 	.globl _RB8
                                    115 	.globl _TI
                                    116 	.globl _RI
                                    117 	.globl _P1_7
                                    118 	.globl _P1_6
                                    119 	.globl _P1_5
                                    120 	.globl _P1_4
                                    121 	.globl _P1_3
                                    122 	.globl _P1_2
                                    123 	.globl _P1_1
                                    124 	.globl _P1_0
                                    125 	.globl _TF1
                                    126 	.globl _TR1
                                    127 	.globl _TF0
                                    128 	.globl _TR0
                                    129 	.globl _IE1
                                    130 	.globl _IT1
                                    131 	.globl _IE0
                                    132 	.globl _IT0
                                    133 	.globl _P0_7
                                    134 	.globl _P0_6
                                    135 	.globl _P0_5
                                    136 	.globl _P0_4
                                    137 	.globl _P0_3
                                    138 	.globl _P0_2
                                    139 	.globl _P0_1
                                    140 	.globl _P0_0
                                    141 	.globl _TH2
                                    142 	.globl _TL2
                                    143 	.globl _RCAP2H
                                    144 	.globl _RCAP2L
                                    145 	.globl _T2CON
                                    146 	.globl _B
                                    147 	.globl _ACC
                                    148 	.globl _PSW
                                    149 	.globl _IP
                                    150 	.globl _P3
                                    151 	.globl _IE
                                    152 	.globl _P2
                                    153 	.globl _SBUF
                                    154 	.globl _SCON
                                    155 	.globl _P1
                                    156 	.globl _TH1
                                    157 	.globl _TH0
                                    158 	.globl _TL1
                                    159 	.globl _TL0
                                    160 	.globl _TMOD
                                    161 	.globl _TCON
                                    162 	.globl _PCON
                                    163 	.globl _DPH
                                    164 	.globl _DPL
                                    165 	.globl _SP
                                    166 	.globl _P0
                                    167 	.globl _ack
                                    168 	.globl _cicloTimeSet_PARM_5
                                    169 	.globl _cicloTimeSet_PARM_4
                                    170 	.globl _cicloTimeSet_PARM_3
                                    171 	.globl _cicloTimeSet_PARM_2
                                    172 	.globl _refresco
                                    173 	.globl _timeSec_old
                                    174 	.globl _k
                                    175 	.globl _LCD_createChar_PARM_9
                                    176 	.globl _LCD_createChar_PARM_8
                                    177 	.globl _LCD_createChar_PARM_7
                                    178 	.globl _LCD_createChar_PARM_6
                                    179 	.globl _LCD_createChar_PARM_5
                                    180 	.globl _LCD_createChar_PARM_4
                                    181 	.globl _LCD_createChar_PARM_3
                                    182 	.globl _LCD_createChar_PARM_2
                                    183 	.globl _LCD_gotoXY_PARM_2
                                    184 	.globl _ahora
                                    185 	.globl _delay_x10_cycles
                                    186 	.globl _delay_x100_cycles
                                    187 	.globl _delay_ms
                                    188 ;--------------------------------------------------------
                                    189 ; special function registers
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0	=	0x0080
                           000081   194 _SP	=	0x0081
                           000082   195 _DPL	=	0x0082
                           000083   196 _DPH	=	0x0083
                           000087   197 _PCON	=	0x0087
                           000088   198 _TCON	=	0x0088
                           000089   199 _TMOD	=	0x0089
                           00008A   200 _TL0	=	0x008a
                           00008B   201 _TL1	=	0x008b
                           00008C   202 _TH0	=	0x008c
                           00008D   203 _TH1	=	0x008d
                           000090   204 _P1	=	0x0090
                           000098   205 _SCON	=	0x0098
                           000099   206 _SBUF	=	0x0099
                           0000A0   207 _P2	=	0x00a0
                           0000A8   208 _IE	=	0x00a8
                           0000B0   209 _P3	=	0x00b0
                           0000B8   210 _IP	=	0x00b8
                           0000D0   211 _PSW	=	0x00d0
                           0000E0   212 _ACC	=	0x00e0
                           0000F0   213 _B	=	0x00f0
                           0000C8   214 _T2CON	=	0x00c8
                           0000CA   215 _RCAP2L	=	0x00ca
                           0000CB   216 _RCAP2H	=	0x00cb
                           0000CC   217 _TL2	=	0x00cc
                           0000CD   218 _TH2	=	0x00cd
                                    219 ;--------------------------------------------------------
                                    220 ; special function bits
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0_0	=	0x0080
                           000081   225 _P0_1	=	0x0081
                           000082   226 _P0_2	=	0x0082
                           000083   227 _P0_3	=	0x0083
                           000084   228 _P0_4	=	0x0084
                           000085   229 _P0_5	=	0x0085
                           000086   230 _P0_6	=	0x0086
                           000087   231 _P0_7	=	0x0087
                           000088   232 _IT0	=	0x0088
                           000089   233 _IE0	=	0x0089
                           00008A   234 _IT1	=	0x008a
                           00008B   235 _IE1	=	0x008b
                           00008C   236 _TR0	=	0x008c
                           00008D   237 _TF0	=	0x008d
                           00008E   238 _TR1	=	0x008e
                           00008F   239 _TF1	=	0x008f
                           000090   240 _P1_0	=	0x0090
                           000091   241 _P1_1	=	0x0091
                           000092   242 _P1_2	=	0x0092
                           000093   243 _P1_3	=	0x0093
                           000094   244 _P1_4	=	0x0094
                           000095   245 _P1_5	=	0x0095
                           000096   246 _P1_6	=	0x0096
                           000097   247 _P1_7	=	0x0097
                           000098   248 _RI	=	0x0098
                           000099   249 _TI	=	0x0099
                           00009A   250 _RB8	=	0x009a
                           00009B   251 _TB8	=	0x009b
                           00009C   252 _REN	=	0x009c
                           00009D   253 _SM2	=	0x009d
                           00009E   254 _SM1	=	0x009e
                           00009F   255 _SM0	=	0x009f
                           0000A0   256 _P2_0	=	0x00a0
                           0000A1   257 _P2_1	=	0x00a1
                           0000A2   258 _P2_2	=	0x00a2
                           0000A3   259 _P2_3	=	0x00a3
                           0000A4   260 _P2_4	=	0x00a4
                           0000A5   261 _P2_5	=	0x00a5
                           0000A6   262 _P2_6	=	0x00a6
                           0000A7   263 _P2_7	=	0x00a7
                           0000A8   264 _EX0	=	0x00a8
                           0000A9   265 _ET0	=	0x00a9
                           0000AA   266 _EX1	=	0x00aa
                           0000AB   267 _ET1	=	0x00ab
                           0000AC   268 _ES	=	0x00ac
                           0000AF   269 _EA	=	0x00af
                           0000B0   270 _P3_0	=	0x00b0
                           0000B1   271 _P3_1	=	0x00b1
                           0000B2   272 _P3_2	=	0x00b2
                           0000B3   273 _P3_3	=	0x00b3
                           0000B4   274 _P3_4	=	0x00b4
                           0000B5   275 _P3_5	=	0x00b5
                           0000B6   276 _P3_6	=	0x00b6
                           0000B7   277 _P3_7	=	0x00b7
                           0000B0   278 _RXD	=	0x00b0
                           0000B1   279 _TXD	=	0x00b1
                           0000B2   280 _INT0	=	0x00b2
                           0000B3   281 _INT1	=	0x00b3
                           0000B4   282 _T0	=	0x00b4
                           0000B5   283 _T1	=	0x00b5
                           0000B6   284 _WR	=	0x00b6
                           0000B7   285 _RD	=	0x00b7
                           0000B8   286 _PX0	=	0x00b8
                           0000B9   287 _PT0	=	0x00b9
                           0000BA   288 _PX1	=	0x00ba
                           0000BB   289 _PT1	=	0x00bb
                           0000BC   290 _PS	=	0x00bc
                           0000D0   291 _P	=	0x00d0
                           0000D1   292 _F1	=	0x00d1
                           0000D2   293 _OV	=	0x00d2
                           0000D3   294 _RS0	=	0x00d3
                           0000D4   295 _RS1	=	0x00d4
                           0000D5   296 _F0	=	0x00d5
                           0000D6   297 _AC	=	0x00d6
                           0000D7   298 _CY	=	0x00d7
                           0000AD   299 _ET2	=	0x00ad
                           0000BD   300 _PT2	=	0x00bd
                           0000C8   301 _T2CON_0	=	0x00c8
                           0000C9   302 _T2CON_1	=	0x00c9
                           0000CA   303 _T2CON_2	=	0x00ca
                           0000CB   304 _T2CON_3	=	0x00cb
                           0000CC   305 _T2CON_4	=	0x00cc
                           0000CD   306 _T2CON_5	=	0x00cd
                           0000CE   307 _T2CON_6	=	0x00ce
                           0000CF   308 _T2CON_7	=	0x00cf
                           0000C8   309 _CP_RL2	=	0x00c8
                           0000C9   310 _C_T2	=	0x00c9
                           0000CA   311 _TR2	=	0x00ca
                           0000CB   312 _EXEN2	=	0x00cb
                           0000CC   313 _TCLK	=	0x00cc
                           0000CD   314 _RCLK	=	0x00cd
                           0000CE   315 _EXF2	=	0x00ce
                           0000CF   316 _TF2	=	0x00cf
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable register banks
                                    319 ;--------------------------------------------------------
                                    320 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        321 	.ds 8
                                    322 ;--------------------------------------------------------
                                    323 ; internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area DSEG    (DATA)
      000021                        326 _ahora::
      000021                        327 	.ds 7
      000028                        328 _LCD_gotoXY_PARM_2:
      000028                        329 	.ds 1
      000029                        330 _LCD_createChar_PARM_2:
      000029                        331 	.ds 1
      00002A                        332 _LCD_createChar_PARM_3:
      00002A                        333 	.ds 1
      00002B                        334 _LCD_createChar_PARM_4:
      00002B                        335 	.ds 1
      00002C                        336 _LCD_createChar_PARM_5:
      00002C                        337 	.ds 1
      00002D                        338 _LCD_createChar_PARM_6:
      00002D                        339 	.ds 1
      00002E                        340 _LCD_createChar_PARM_7:
      00002E                        341 	.ds 1
      00002F                        342 _LCD_createChar_PARM_8:
      00002F                        343 	.ds 1
      000030                        344 _LCD_createChar_PARM_9:
      000030                        345 	.ds 1
      000031                        346 _k::
      000031                        347 	.ds 1
      000032                        348 _timeSec_old::
      000032                        349 	.ds 1
      000033                        350 _refresco::
      000033                        351 	.ds 2
      000035                        352 _cicloTimeSet_PARM_2:
      000035                        353 	.ds 1
      000036                        354 _cicloTimeSet_PARM_3:
      000036                        355 	.ds 1
      000037                        356 _cicloTimeSet_PARM_4:
      000037                        357 	.ds 1
      000038                        358 _cicloTimeSet_PARM_5:
      000038                        359 	.ds 3
                                    360 ;--------------------------------------------------------
                                    361 ; overlayable items in internal ram 
                                    362 ;--------------------------------------------------------
                                    363 	.area	OSEG    (OVR,DATA)
                                    364 	.area	OSEG    (OVR,DATA)
                                    365 	.area	OSEG    (OVR,DATA)
                                    366 	.area	OSEG    (OVR,DATA)
                                    367 	.area	OSEG    (OVR,DATA)
                                    368 	.area	OSEG    (OVR,DATA)
                                    369 ;--------------------------------------------------------
                                    370 ; Stack segment in internal ram 
                                    371 ;--------------------------------------------------------
                                    372 	.area	SSEG
      00003B                        373 __start__stack:
      00003B                        374 	.ds	1
                                    375 
                                    376 ;--------------------------------------------------------
                                    377 ; indirectly addressable internal ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area ISEG    (DATA)
                                    380 ;--------------------------------------------------------
                                    381 ; absolute internal ram data
                                    382 ;--------------------------------------------------------
                                    383 	.area IABS    (ABS,DATA)
                                    384 	.area IABS    (ABS,DATA)
                                    385 ;--------------------------------------------------------
                                    386 ; bit data
                                    387 ;--------------------------------------------------------
                                    388 	.area BSEG    (BIT)
      000000                        389 _LCD_send4Bits_sloc0_1_0:
      000000                        390 	.ds 1
      000001                        391 _ack::
      000001                        392 	.ds 1
                                    393 ;--------------------------------------------------------
                                    394 ; paged external ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area PSEG    (PAG,XDATA)
                                    397 ;--------------------------------------------------------
                                    398 ; external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area XSEG    (XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; absolute external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XABS    (ABS,XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; external initialized ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XISEG   (XDATA)
                                    409 	.area HOME    (CODE)
                                    410 	.area GSINIT0 (CODE)
                                    411 	.area GSINIT1 (CODE)
                                    412 	.area GSINIT2 (CODE)
                                    413 	.area GSINIT3 (CODE)
                                    414 	.area GSINIT4 (CODE)
                                    415 	.area GSINIT5 (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.area GSFINAL (CODE)
                                    418 	.area CSEG    (CODE)
                                    419 ;--------------------------------------------------------
                                    420 ; interrupt vector 
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
      000000                        423 __interrupt_vect:
      000000 02 00 06         [24]  424 	ljmp	__sdcc_gsinit_startup
                                    425 ;--------------------------------------------------------
                                    426 ; global & static initialisations
                                    427 ;--------------------------------------------------------
                                    428 	.area HOME    (CODE)
                                    429 	.area GSINIT  (CODE)
                                    430 	.area GSFINAL (CODE)
                                    431 	.area GSINIT  (CODE)
                                    432 	.globl __sdcc_gsinit_startup
                                    433 	.globl __sdcc_program_startup
                                    434 	.globl __start__stack
                                    435 	.globl __mcs51_genXINIT
                                    436 	.globl __mcs51_genXRAMCLEAR
                                    437 	.globl __mcs51_genRAMCLEAR
                                    438 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  439 	ljmp	__sdcc_program_startup
                                    440 ;--------------------------------------------------------
                                    441 ; Home
                                    442 ;--------------------------------------------------------
                                    443 	.area HOME    (CODE)
                                    444 	.area HOME    (CODE)
      000003                        445 __sdcc_program_startup:
      000003 02 08 B3         [24]  446 	ljmp	_main
                                    447 ;	return from main will return to caller
                                    448 ;--------------------------------------------------------
                                    449 ; code
                                    450 ;--------------------------------------------------------
                                    451 	.area CSEG    (CODE)
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'delay_x10_cycles'
                                    454 ;------------------------------------------------------------
                                    455 ;x10cycles                 Allocated to registers 
                                    456 ;------------------------------------------------------------
                                    457 ;	delay_Lib.h:45: void delay_x10_cycles(uint8_t x10cycles)
                                    458 ;	-----------------------------------------
                                    459 ;	 function delay_x10_cycles
                                    460 ;	-----------------------------------------
      000062                        461 _delay_x10_cycles:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
                                    470 ;	delay_Lib.h:63: __endasm;
      000062 AF 82            [24]  471 	mov	r7,dpl
      000064 1F               [12]  472 	dec	r7
      000065 EF               [12]  473 	mov	a, r7
      000066 60 07            [24]  474 	jz	end_delay_x10_cycles
      000068                        475 	    loop_delay_x10_cycles:
      000068 7E 03            [12]  476 	mov	r6,#3
      00006A                        477 	    loop_delay_10_cycles:
      00006A DE FE            [24]  478 	djnz	r6,loop_delay_10_cycles
      00006C 00               [12]  479 	nop
      00006D DF F9            [24]  480 	djnz	r7,loop_delay_x10_cycles
      00006F                        481 	    end_delay_x10_cycles:
      00006F 22               [24]  482 	ret
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'delay_x100_cycles'
                                    485 ;------------------------------------------------------------
                                    486 ;x100cycles                Allocated to registers 
                                    487 ;------------------------------------------------------------
                                    488 ;	delay_Lib.h:68: void delay_x100_cycles(uint8_t x100cycles)
                                    489 ;	-----------------------------------------
                                    490 ;	 function delay_x100_cycles
                                    491 ;	-----------------------------------------
      000070                        492 _delay_x100_cycles:
                                    493 ;	delay_Lib.h:87: __endasm;
      000070 AF 82            [24]  494 	mov	r7,dpl
      000072 1F               [12]  495 	dec	r7
      000073 EF               [12]  496 	mov	a, r7
      000074 7E 2C            [12]  497 	mov	r6,#44
      000076                        498 	    loop_delay_x100_cycles_init:
      000076 DE FE            [24]  499 	djnz	r6,loop_delay_x100_cycles_init
      000078 00               [12]  500 	nop
      000079 60 07            [24]  501 	jz	end_delay_x100_cycles
      00007B                        502 	    loop_delay_x100_cycles:
      00007B 7D 30            [12]  503 	mov	r5,#48
      00007D                        504 	    loop_delay_100_cycles:
      00007D DD FE            [24]  505 	djnz	r5,loop_delay_100_cycles
      00007F 00               [12]  506 	nop
      000080 DF F9            [24]  507 	djnz	r7,loop_delay_x100_cycles
      000082                        508 	    end_delay_x100_cycles:
      000082 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'delay_ms'
                                    512 ;------------------------------------------------------------
                                    513 ;delayTimeMS               Allocated to registers 
                                    514 ;------------------------------------------------------------
                                    515 ;	delay_Lib.h:92: void delay_ms(uint16_t delayTimeMS)
                                    516 ;	-----------------------------------------
                                    517 ;	 function delay_ms
                                    518 ;	-----------------------------------------
      000083                        519 _delay_ms:
                                    520 ;	delay_Lib.h:110: __endasm;
      000083 AB 82            [24]  521 	mov	r3,dpl
      000085 AC 83            [24]  522 	mov	r4,dph
      000087                        523 	    delay_ms_lib_loop:
      000087 1B               [12]  524 	dec	r3
      000088 BB FF 01         [24]  525 	cjne	r3,#0xff,delay_ms_lib_seguir
      00008B 1C               [12]  526 	dec	r4
      00008C                        527 	    delay_ms_lib_seguir:
      00008C EB               [12]  528 	mov	a,r3
      00008D 4C               [12]  529 	orl	a,r4
      00008E 60 08            [24]  530 	jz	delay_ms_lib_fin
                                    531 ;	delay_Lib.h:112: CALL_DELAY_MS;
      000090 75 82 42         [24]  532 	mov	dpl,#0x42
      000093 12 00 62         [24]  533 	lcall	_delay_x10_cycles
                                    534 ;	delay_Lib.h:117: __endasm;
      000096 80 EF            [24]  535 	sjmp	delay_ms_lib_loop
      000098                        536 	    delay_ms_lib_fin:
      000098 22               [24]  537 	ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'I2C_start'
                                    540 ;------------------------------------------------------------
                                    541 ;	I2C_Lib.h:4: void I2C_start(void)
                                    542 ;	-----------------------------------------
                                    543 ;	 function I2C_start
                                    544 ;	-----------------------------------------
      000099                        545 _I2C_start:
                                    546 ;	I2C_Lib.h:6: SDA=1;    //"start" function for communicate I2C
      000099 D2 A1            [12]  547 	setb	_P2_1
                                    548 ;	I2C_Lib.h:7: SCL=1;
      00009B D2 A0            [12]  549 	setb	_P2_0
                                    550 ;	I2C_Lib.h:8: SDA=0;
      00009D C2 A1            [12]  551 	clr	_P2_1
                                    552 ;	I2C_Lib.h:9: SCL=0;
      00009F C2 A0            [12]  553 	clr	_P2_0
      0000A1 22               [24]  554 	ret
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'I2C_stop'
                                    557 ;------------------------------------------------------------
                                    558 ;	I2C_Lib.h:12: void I2C_stop(void)
                                    559 ;	-----------------------------------------
                                    560 ;	 function I2C_stop
                                    561 ;	-----------------------------------------
      0000A2                        562 _I2C_stop:
                                    563 ;	I2C_Lib.h:14: SDA=0;
      0000A2 C2 A1            [12]  564 	clr	_P2_1
                                    565 ;	I2C_Lib.h:15: SCL=1;
      0000A4 D2 A0            [12]  566 	setb	_P2_0
                                    567 ;	I2C_Lib.h:16: SDA=1;   //"stop" function for communicate I2C
      0000A6 D2 A1            [12]  568 	setb	_P2_1
      0000A8 22               [24]  569 	ret
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'I2C_send'
                                    572 ;------------------------------------------------------------
                                    573 ;Data                      Allocated to registers r7 
                                    574 ;i                         Allocated to registers r6 
                                    575 ;ack_bit                   Allocated to registers 
                                    576 ;------------------------------------------------------------
                                    577 ;	I2C_Lib.h:19: unsigned char I2C_send(unsigned char Data)             //send data to I2C
                                    578 ;	-----------------------------------------
                                    579 ;	 function I2C_send
                                    580 ;	-----------------------------------------
      0000A9                        581 _I2C_send:
      0000A9 AF 82            [24]  582 	mov	r7,dpl
                                    583 ;	I2C_Lib.h:23: for(i=0; i<8; i++)
      0000AB 7E 00            [12]  584 	mov	r6,#0x00
      0000AD                        585 00105$:
                                    586 ;	I2C_Lib.h:25: if(Data & 0x80) SDA=1;
      0000AD EF               [12]  587 	mov	a,r7
      0000AE 30 E7 04         [24]  588 	jnb	acc.7,00102$
      0000B1 D2 A1            [12]  589 	setb	_P2_1
      0000B3 80 02            [24]  590 	sjmp	00103$
      0000B5                        591 00102$:
                                    592 ;	I2C_Lib.h:26: else SDA=0;
      0000B5 C2 A1            [12]  593 	clr	_P2_1
      0000B7                        594 00103$:
                                    595 ;	I2C_Lib.h:27: SCL=1;
      0000B7 D2 A0            [12]  596 	setb	_P2_0
                                    597 ;	I2C_Lib.h:28: Data<<=1;
      0000B9 EF               [12]  598 	mov	a,r7
      0000BA 2F               [12]  599 	add	a,r7
      0000BB FF               [12]  600 	mov	r7,a
                                    601 ;	I2C_Lib.h:29: SCL=0;
      0000BC C2 A0            [12]  602 	clr	_P2_0
                                    603 ;	I2C_Lib.h:23: for(i=0; i<8; i++)
      0000BE 0E               [12]  604 	inc	r6
      0000BF BE 08 00         [24]  605 	cjne	r6,#0x08,00120$
      0000C2                        606 00120$:
      0000C2 40 E9            [24]  607 	jc	00105$
                                    608 ;	I2C_Lib.h:31: SDA=1,SCL=1;
      0000C4 D2 A1            [12]  609 	setb	_P2_1
      0000C6 D2 A0            [12]  610 	setb	_P2_0
                                    611 ;	I2C_Lib.h:32: ack_bit=SDA;
      0000C8 A2 A1            [12]  612 	mov	c,_P2_1
      0000CA E4               [12]  613 	clr	a
      0000CB 33               [12]  614 	rlc	a
      0000CC F5 82            [12]  615 	mov	dpl,a
                                    616 ;	I2C_Lib.h:33: SCL=0;
      0000CE C2 A0            [12]  617 	clr	_P2_0
                                    618 ;	I2C_Lib.h:34: return ack_bit;
      0000D0 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'I2C_read'
                                    622 ;------------------------------------------------------------
                                    623 ;ack                       Allocated to registers r7 
                                    624 ;i                         Allocated to registers r5 
                                    625 ;Data                      Allocated to registers r6 
                                    626 ;------------------------------------------------------------
                                    627 ;	I2C_Lib.h:37: unsigned char I2C_read(char ack)                      //receive data from I2C
                                    628 ;	-----------------------------------------
                                    629 ;	 function I2C_read
                                    630 ;	-----------------------------------------
      0000D1                        631 _I2C_read:
      0000D1 AF 82            [24]  632 	mov	r7,dpl
                                    633 ;	I2C_Lib.h:39: unsigned char i, Data=0;
      0000D3 7E 00            [12]  634 	mov	r6,#0x00
                                    635 ;	I2C_Lib.h:40: SDA=1;
      0000D5 D2 A1            [12]  636 	setb	_P2_1
                                    637 ;	I2C_Lib.h:41: for(i=0; i<8; i++)
      0000D7 7D 00            [12]  638 	mov	r5,#0x00
      0000D9                        639 00110$:
                                    640 ;	I2C_Lib.h:43: Data<<=1;
      0000D9 EE               [12]  641 	mov	a,r6
      0000DA 2E               [12]  642 	add	a,r6
      0000DB FE               [12]  643 	mov	r6,a
                                    644 ;	I2C_Lib.h:44: do
      0000DC                        645 00101$:
                                    646 ;	I2C_Lib.h:46: SCL=1;
      0000DC D2 A0            [12]  647 	setb	_P2_0
      0000DE 30 A0 FB         [24]  648 	jnb	_P2_0,00101$
                                    649 ;	I2C_Lib.h:49: if(SDA) Data|=1;
      0000E1 30 A1 03         [24]  650 	jnb	_P2_1,00105$
      0000E4 43 06 01         [24]  651 	orl	ar6,#0x01
      0000E7                        652 00105$:
                                    653 ;	I2C_Lib.h:50: SCL=0;
      0000E7 C2 A0            [12]  654 	clr	_P2_0
                                    655 ;	I2C_Lib.h:41: for(i=0; i<8; i++)
      0000E9 0D               [12]  656 	inc	r5
      0000EA BD 08 00         [24]  657 	cjne	r5,#0x08,00135$
      0000ED                        658 00135$:
      0000ED 40 EA            [24]  659 	jc	00110$
                                    660 ;	I2C_Lib.h:52: if(ack)SDA=0;
      0000EF EF               [12]  661 	mov	a,r7
      0000F0 60 04            [24]  662 	jz	00108$
      0000F2 C2 A1            [12]  663 	clr	_P2_1
      0000F4 80 02            [24]  664 	sjmp	00109$
      0000F6                        665 00108$:
                                    666 ;	I2C_Lib.h:53: else SDA=1;
      0000F6 D2 A1            [12]  667 	setb	_P2_1
      0000F8                        668 00109$:
                                    669 ;	I2C_Lib.h:54: SCL=1;
      0000F8 D2 A0            [12]  670 	setb	_P2_0
                                    671 ;	I2C_Lib.h:55: SCL=0;
      0000FA C2 A0            [12]  672 	clr	_P2_0
                                    673 ;	I2C_Lib.h:56: SDA=1;
      0000FC D2 A1            [12]  674 	setb	_P2_1
                                    675 ;	I2C_Lib.h:57: return Data;
      0000FE 8E 82            [24]  676 	mov	dpl,r6
      000100 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'BCDToDecimal'
                                    680 ;------------------------------------------------------------
                                    681 ;bcdByte                   Allocated to registers r7 
                                    682 ;a                         Allocated to registers r6 
                                    683 ;b                         Allocated to registers 
                                    684 ;dec                       Allocated to registers 
                                    685 ;------------------------------------------------------------
                                    686 ;	MATH_LIB.H:14: uint8_t BCDToDecimal(uint8_t bcdByte)
                                    687 ;	-----------------------------------------
                                    688 ;	 function BCDToDecimal
                                    689 ;	-----------------------------------------
      000101                        690 _BCDToDecimal:
      000101 AF 82            [24]  691 	mov	r7,dpl
                                    692 ;	MATH_LIB.H:17: a=(((bcdByte & 0xF0) >> 4) * 10);
      000103 74 F0            [12]  693 	mov	a,#0xf0
      000105 5F               [12]  694 	anl	a,r7
      000106 C4               [12]  695 	swap	a
      000107 54 0F            [12]  696 	anl	a,#0x0f
      000109 75 F0 0A         [24]  697 	mov	b,#0x0a
      00010C A4               [48]  698 	mul	ab
      00010D FE               [12]  699 	mov	r6,a
                                    700 ;	MATH_LIB.H:18: b=(bcdByte & 0x0F);
      00010E 74 0F            [12]  701 	mov	a,#0x0f
      000110 5F               [12]  702 	anl	a,r7
                                    703 ;	MATH_LIB.H:19: dec=a+b;
      000111 2E               [12]  704 	add	a,r6
      000112 F5 82            [12]  705 	mov	dpl,a
                                    706 ;	MATH_LIB.H:20: return dec;
      000114 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'decimalToBCD'
                                    710 ;------------------------------------------------------------
                                    711 ;decimalByte               Allocated to registers r7 
                                    712 ;a                         Allocated to registers r6 
                                    713 ;b                         Allocated to registers r7 
                                    714 ;bcd                       Allocated to registers 
                                    715 ;------------------------------------------------------------
                                    716 ;	MATH_LIB.H:31: uint8_t decimalToBCD (uint8_t decimalByte)
                                    717 ;	-----------------------------------------
                                    718 ;	 function decimalToBCD
                                    719 ;	-----------------------------------------
      000115                        720 _decimalToBCD:
      000115 AF 82            [24]  721 	mov	r7,dpl
                                    722 ;	MATH_LIB.H:34: a=((decimalByte / 10) << 4);
      000117 75 F0 0A         [24]  723 	mov	b,#0x0a
      00011A EF               [12]  724 	mov	a,r7
      00011B 84               [48]  725 	div	ab
      00011C C4               [12]  726 	swap	a
      00011D 54 F0            [12]  727 	anl	a,#0xf0
      00011F FE               [12]  728 	mov	r6,a
                                    729 ;	MATH_LIB.H:35: b= (decimalByte % 10);
      000120 75 F0 0A         [24]  730 	mov	b,#0x0a
      000123 EF               [12]  731 	mov	a,r7
      000124 84               [48]  732 	div	ab
                                    733 ;	MATH_LIB.H:36: bcd=a|b;
      000125 E5 F0            [12]  734 	mov	a,b
      000127 4E               [12]  735 	orl	a,r6
      000128 F5 82            [12]  736 	mov	dpl,a
                                    737 ;	MATH_LIB.H:37: return bcd;
      00012A 22               [24]  738 	ret
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'DS1307_timeRead'
                                    741 ;------------------------------------------------------------
                                    742 ;time                      Allocated to registers r5 r6 r7 
                                    743 ;------------------------------------------------------------
                                    744 ;	DS1307_LIB.h:30: void DS1307_timeRead(struct stime *time)
                                    745 ;	-----------------------------------------
                                    746 ;	 function DS1307_timeRead
                                    747 ;	-----------------------------------------
      00012B                        748 _DS1307_timeRead:
      00012B AD 82            [24]  749 	mov	r5,dpl
      00012D AE 83            [24]  750 	mov	r6,dph
      00012F AF F0            [24]  751 	mov	r7,b
                                    752 ;	DS1307_LIB.h:32: I2C_start();     // Inicia comunicaci�n I2C.
      000131 C0 07            [24]  753 	push	ar7
      000133 C0 06            [24]  754 	push	ar6
      000135 C0 05            [24]  755 	push	ar5
      000137 12 00 99         [24]  756 	lcall	_I2C_start
                                    757 ;	DS1307_LIB.h:33: I2C_send(0xD0);  // Direcci�n I2C del DS1307.
      00013A 75 82 D0         [24]  758 	mov	dpl,#0xd0
      00013D 12 00 A9         [24]  759 	lcall	_I2C_send
                                    760 ;	DS1307_LIB.h:34: I2C_send(0x00);  // Primera direcci�n a leer/escribir.
      000140 75 82 00         [24]  761 	mov	dpl,#0x00
      000143 12 00 A9         [24]  762 	lcall	_I2C_send
                                    763 ;	DS1307_LIB.h:35: I2C_start();     // Reinicia comunicaci�n I2C.
      000146 12 00 99         [24]  764 	lcall	_I2C_start
                                    765 ;	DS1307_LIB.h:36: I2C_send(0xD1);  // DS1307 en Modo Escritura.
      000149 75 82 D1         [24]  766 	mov	dpl,#0xd1
      00014C 12 00 A9         [24]  767 	lcall	_I2C_send
      00014F D0 05            [24]  768 	pop	ar5
      000151 D0 06            [24]  769 	pop	ar6
      000153 D0 07            [24]  770 	pop	ar7
                                    771 ;	DS1307_LIB.h:37: time->Segundo   = BCDToDecimal(I2C_read(1)); // ASK = 1
      000155 74 06            [12]  772 	mov	a,#0x06
      000157 2D               [12]  773 	add	a,r5
      000158 FA               [12]  774 	mov	r2,a
      000159 E4               [12]  775 	clr	a
      00015A 3E               [12]  776 	addc	a,r6
      00015B FB               [12]  777 	mov	r3,a
      00015C 8F 04            [24]  778 	mov	ar4,r7
      00015E 75 82 01         [24]  779 	mov	dpl,#0x01
      000161 C0 07            [24]  780 	push	ar7
      000163 C0 06            [24]  781 	push	ar6
      000165 C0 05            [24]  782 	push	ar5
      000167 C0 04            [24]  783 	push	ar4
      000169 C0 03            [24]  784 	push	ar3
      00016B C0 02            [24]  785 	push	ar2
      00016D 12 00 D1         [24]  786 	lcall	_I2C_read
      000170 12 01 01         [24]  787 	lcall	_BCDToDecimal
      000173 A9 82            [24]  788 	mov	r1,dpl
      000175 D0 02            [24]  789 	pop	ar2
      000177 D0 03            [24]  790 	pop	ar3
      000179 D0 04            [24]  791 	pop	ar4
      00017B D0 05            [24]  792 	pop	ar5
      00017D D0 06            [24]  793 	pop	ar6
      00017F D0 07            [24]  794 	pop	ar7
      000181 8A 82            [24]  795 	mov	dpl,r2
      000183 8B 83            [24]  796 	mov	dph,r3
      000185 8C F0            [24]  797 	mov	b,r4
      000187 E9               [12]  798 	mov	a,r1
      000188 12 09 02         [24]  799 	lcall	__gptrput
                                    800 ;	DS1307_LIB.h:38: time->Minuto    = BCDToDecimal(I2C_read(1));
      00018B 74 05            [12]  801 	mov	a,#0x05
      00018D 2D               [12]  802 	add	a,r5
      00018E FA               [12]  803 	mov	r2,a
      00018F E4               [12]  804 	clr	a
      000190 3E               [12]  805 	addc	a,r6
      000191 FB               [12]  806 	mov	r3,a
      000192 8F 04            [24]  807 	mov	ar4,r7
      000194 75 82 01         [24]  808 	mov	dpl,#0x01
      000197 C0 07            [24]  809 	push	ar7
      000199 C0 06            [24]  810 	push	ar6
      00019B C0 05            [24]  811 	push	ar5
      00019D C0 04            [24]  812 	push	ar4
      00019F C0 03            [24]  813 	push	ar3
      0001A1 C0 02            [24]  814 	push	ar2
      0001A3 12 00 D1         [24]  815 	lcall	_I2C_read
      0001A6 12 01 01         [24]  816 	lcall	_BCDToDecimal
      0001A9 A9 82            [24]  817 	mov	r1,dpl
      0001AB D0 02            [24]  818 	pop	ar2
      0001AD D0 03            [24]  819 	pop	ar3
      0001AF D0 04            [24]  820 	pop	ar4
      0001B1 D0 05            [24]  821 	pop	ar5
      0001B3 D0 06            [24]  822 	pop	ar6
      0001B5 D0 07            [24]  823 	pop	ar7
      0001B7 8A 82            [24]  824 	mov	dpl,r2
      0001B9 8B 83            [24]  825 	mov	dph,r3
      0001BB 8C F0            [24]  826 	mov	b,r4
      0001BD E9               [12]  827 	mov	a,r1
      0001BE 12 09 02         [24]  828 	lcall	__gptrput
                                    829 ;	DS1307_LIB.h:39: time->Hora      = BCDToDecimal(I2C_read(1));
      0001C1 74 04            [12]  830 	mov	a,#0x04
      0001C3 2D               [12]  831 	add	a,r5
      0001C4 FA               [12]  832 	mov	r2,a
      0001C5 E4               [12]  833 	clr	a
      0001C6 3E               [12]  834 	addc	a,r6
      0001C7 FB               [12]  835 	mov	r3,a
      0001C8 8F 04            [24]  836 	mov	ar4,r7
      0001CA 75 82 01         [24]  837 	mov	dpl,#0x01
      0001CD C0 07            [24]  838 	push	ar7
      0001CF C0 06            [24]  839 	push	ar6
      0001D1 C0 05            [24]  840 	push	ar5
      0001D3 C0 04            [24]  841 	push	ar4
      0001D5 C0 03            [24]  842 	push	ar3
      0001D7 C0 02            [24]  843 	push	ar2
      0001D9 12 00 D1         [24]  844 	lcall	_I2C_read
      0001DC 12 01 01         [24]  845 	lcall	_BCDToDecimal
      0001DF A9 82            [24]  846 	mov	r1,dpl
      0001E1 D0 02            [24]  847 	pop	ar2
      0001E3 D0 03            [24]  848 	pop	ar3
      0001E5 D0 04            [24]  849 	pop	ar4
      0001E7 8A 82            [24]  850 	mov	dpl,r2
      0001E9 8B 83            [24]  851 	mov	dph,r3
      0001EB 8C F0            [24]  852 	mov	b,r4
      0001ED E9               [12]  853 	mov	a,r1
      0001EE 12 09 02         [24]  854 	lcall	__gptrput
                                    855 ;	DS1307_LIB.h:40: time->DiaSemana = BCDToDecimal(I2C_read(1));
      0001F1 75 82 01         [24]  856 	mov	dpl,#0x01
      0001F4 12 00 D1         [24]  857 	lcall	_I2C_read
      0001F7 12 01 01         [24]  858 	lcall	_BCDToDecimal
      0001FA AC 82            [24]  859 	mov	r4,dpl
      0001FC D0 05            [24]  860 	pop	ar5
      0001FE D0 06            [24]  861 	pop	ar6
      000200 D0 07            [24]  862 	pop	ar7
      000202 8D 82            [24]  863 	mov	dpl,r5
      000204 8E 83            [24]  864 	mov	dph,r6
      000206 8F F0            [24]  865 	mov	b,r7
      000208 EC               [12]  866 	mov	a,r4
      000209 12 09 02         [24]  867 	lcall	__gptrput
                                    868 ;	DS1307_LIB.h:41: time->Dia       = BCDToDecimal(I2C_read(1));
      00020C 74 01            [12]  869 	mov	a,#0x01
      00020E 2D               [12]  870 	add	a,r5
      00020F FA               [12]  871 	mov	r2,a
      000210 E4               [12]  872 	clr	a
      000211 3E               [12]  873 	addc	a,r6
      000212 FB               [12]  874 	mov	r3,a
      000213 8F 04            [24]  875 	mov	ar4,r7
      000215 75 82 01         [24]  876 	mov	dpl,#0x01
      000218 C0 07            [24]  877 	push	ar7
      00021A C0 06            [24]  878 	push	ar6
      00021C C0 05            [24]  879 	push	ar5
      00021E C0 04            [24]  880 	push	ar4
      000220 C0 03            [24]  881 	push	ar3
      000222 C0 02            [24]  882 	push	ar2
      000224 12 00 D1         [24]  883 	lcall	_I2C_read
      000227 12 01 01         [24]  884 	lcall	_BCDToDecimal
      00022A A9 82            [24]  885 	mov	r1,dpl
      00022C D0 02            [24]  886 	pop	ar2
      00022E D0 03            [24]  887 	pop	ar3
      000230 D0 04            [24]  888 	pop	ar4
      000232 D0 05            [24]  889 	pop	ar5
      000234 D0 06            [24]  890 	pop	ar6
      000236 D0 07            [24]  891 	pop	ar7
      000238 8A 82            [24]  892 	mov	dpl,r2
      00023A 8B 83            [24]  893 	mov	dph,r3
      00023C 8C F0            [24]  894 	mov	b,r4
      00023E E9               [12]  895 	mov	a,r1
      00023F 12 09 02         [24]  896 	lcall	__gptrput
                                    897 ;	DS1307_LIB.h:42: time->Mes       = BCDToDecimal(I2C_read(1));
      000242 74 02            [12]  898 	mov	a,#0x02
      000244 2D               [12]  899 	add	a,r5
      000245 FA               [12]  900 	mov	r2,a
      000246 E4               [12]  901 	clr	a
      000247 3E               [12]  902 	addc	a,r6
      000248 FB               [12]  903 	mov	r3,a
      000249 8F 04            [24]  904 	mov	ar4,r7
      00024B 75 82 01         [24]  905 	mov	dpl,#0x01
      00024E C0 07            [24]  906 	push	ar7
      000250 C0 06            [24]  907 	push	ar6
      000252 C0 05            [24]  908 	push	ar5
      000254 C0 04            [24]  909 	push	ar4
      000256 C0 03            [24]  910 	push	ar3
      000258 C0 02            [24]  911 	push	ar2
      00025A 12 00 D1         [24]  912 	lcall	_I2C_read
      00025D 12 01 01         [24]  913 	lcall	_BCDToDecimal
      000260 A9 82            [24]  914 	mov	r1,dpl
      000262 D0 02            [24]  915 	pop	ar2
      000264 D0 03            [24]  916 	pop	ar3
      000266 D0 04            [24]  917 	pop	ar4
      000268 D0 05            [24]  918 	pop	ar5
      00026A D0 06            [24]  919 	pop	ar6
      00026C 8A 82            [24]  920 	mov	dpl,r2
      00026E 8B 83            [24]  921 	mov	dph,r3
      000270 8C F0            [24]  922 	mov	b,r4
      000272 E9               [12]  923 	mov	a,r1
      000273 12 09 02         [24]  924 	lcall	__gptrput
                                    925 ;	DS1307_LIB.h:43: time->Ano       = BCDToDecimal(I2C_read(0)); // ASK = 0
      000276 74 03            [12]  926 	mov	a,#0x03
      000278 2D               [12]  927 	add	a,r5
      000279 FD               [12]  928 	mov	r5,a
      00027A E4               [12]  929 	clr	a
      00027B 3E               [12]  930 	addc	a,r6
      00027C FE               [12]  931 	mov	r6,a
      00027D 75 82 00         [24]  932 	mov	dpl,#0x00
      000280 C0 06            [24]  933 	push	ar6
      000282 C0 05            [24]  934 	push	ar5
      000284 12 00 D1         [24]  935 	lcall	_I2C_read
      000287 12 01 01         [24]  936 	lcall	_BCDToDecimal
      00028A AC 82            [24]  937 	mov	r4,dpl
      00028C D0 05            [24]  938 	pop	ar5
      00028E D0 06            [24]  939 	pop	ar6
      000290 D0 07            [24]  940 	pop	ar7
      000292 8D 82            [24]  941 	mov	dpl,r5
      000294 8E 83            [24]  942 	mov	dph,r6
      000296 8F F0            [24]  943 	mov	b,r7
      000298 EC               [12]  944 	mov	a,r4
      000299 12 09 02         [24]  945 	lcall	__gptrput
                                    946 ;	DS1307_LIB.h:47: I2C_stop();
      00029C 02 00 A2         [24]  947 	ljmp	_I2C_stop
                                    948 ;------------------------------------------------------------
                                    949 ;Allocation info for local variables in function 'DS1307_timeWrite'
                                    950 ;------------------------------------------------------------
                                    951 ;time                      Allocated to registers r5 r6 r7 
                                    952 ;------------------------------------------------------------
                                    953 ;	DS1307_LIB.h:56: void DS1307_timeWrite(struct stime *time)
                                    954 ;	-----------------------------------------
                                    955 ;	 function DS1307_timeWrite
                                    956 ;	-----------------------------------------
      00029F                        957 _DS1307_timeWrite:
      00029F AD 82            [24]  958 	mov	r5,dpl
      0002A1 AE 83            [24]  959 	mov	r6,dph
      0002A3 AF F0            [24]  960 	mov	r7,b
                                    961 ;	DS1307_LIB.h:58: I2C_start();     // Inicia comunicaci�n I2C
      0002A5 C0 07            [24]  962 	push	ar7
      0002A7 C0 06            [24]  963 	push	ar6
      0002A9 C0 05            [24]  964 	push	ar5
      0002AB 12 00 99         [24]  965 	lcall	_I2C_start
                                    966 ;	DS1307_LIB.h:59: I2C_send(0xD0);  // Direcci�n I2C del DS1307.
      0002AE 75 82 D0         [24]  967 	mov	dpl,#0xd0
      0002B1 12 00 A9         [24]  968 	lcall	_I2C_send
                                    969 ;	DS1307_LIB.h:60: I2C_send(0x00);  // Primera direcci�n a leer/escribir.
      0002B4 75 82 00         [24]  970 	mov	dpl,#0x00
      0002B7 12 00 A9         [24]  971 	lcall	_I2C_send
      0002BA D0 05            [24]  972 	pop	ar5
      0002BC D0 06            [24]  973 	pop	ar6
      0002BE D0 07            [24]  974 	pop	ar7
                                    975 ;	DS1307_LIB.h:61: I2C_send(decimalToBCD(time->Segundo));
      0002C0 74 06            [12]  976 	mov	a,#0x06
      0002C2 2D               [12]  977 	add	a,r5
      0002C3 FA               [12]  978 	mov	r2,a
      0002C4 E4               [12]  979 	clr	a
      0002C5 3E               [12]  980 	addc	a,r6
      0002C6 FB               [12]  981 	mov	r3,a
      0002C7 8F 04            [24]  982 	mov	ar4,r7
      0002C9 8A 82            [24]  983 	mov	dpl,r2
      0002CB 8B 83            [24]  984 	mov	dph,r3
      0002CD 8C F0            [24]  985 	mov	b,r4
      0002CF 12 09 1D         [24]  986 	lcall	__gptrget
      0002D2 F5 82            [12]  987 	mov	dpl,a
      0002D4 C0 07            [24]  988 	push	ar7
      0002D6 C0 06            [24]  989 	push	ar6
      0002D8 C0 05            [24]  990 	push	ar5
      0002DA 12 01 15         [24]  991 	lcall	_decimalToBCD
      0002DD 12 00 A9         [24]  992 	lcall	_I2C_send
      0002E0 D0 05            [24]  993 	pop	ar5
      0002E2 D0 06            [24]  994 	pop	ar6
      0002E4 D0 07            [24]  995 	pop	ar7
                                    996 ;	DS1307_LIB.h:62: I2C_send(decimalToBCD(time->Minuto));
      0002E6 74 05            [12]  997 	mov	a,#0x05
      0002E8 2D               [12]  998 	add	a,r5
      0002E9 FA               [12]  999 	mov	r2,a
      0002EA E4               [12] 1000 	clr	a
      0002EB 3E               [12] 1001 	addc	a,r6
      0002EC FB               [12] 1002 	mov	r3,a
      0002ED 8F 04            [24] 1003 	mov	ar4,r7
      0002EF 8A 82            [24] 1004 	mov	dpl,r2
      0002F1 8B 83            [24] 1005 	mov	dph,r3
      0002F3 8C F0            [24] 1006 	mov	b,r4
      0002F5 12 09 1D         [24] 1007 	lcall	__gptrget
      0002F8 F5 82            [12] 1008 	mov	dpl,a
      0002FA C0 07            [24] 1009 	push	ar7
      0002FC C0 06            [24] 1010 	push	ar6
      0002FE C0 05            [24] 1011 	push	ar5
      000300 12 01 15         [24] 1012 	lcall	_decimalToBCD
      000303 12 00 A9         [24] 1013 	lcall	_I2C_send
      000306 D0 05            [24] 1014 	pop	ar5
      000308 D0 06            [24] 1015 	pop	ar6
      00030A D0 07            [24] 1016 	pop	ar7
                                   1017 ;	DS1307_LIB.h:63: I2C_send(decimalToBCD(time->Hora));
      00030C 74 04            [12] 1018 	mov	a,#0x04
      00030E 2D               [12] 1019 	add	a,r5
      00030F FA               [12] 1020 	mov	r2,a
      000310 E4               [12] 1021 	clr	a
      000311 3E               [12] 1022 	addc	a,r6
      000312 FB               [12] 1023 	mov	r3,a
      000313 8F 04            [24] 1024 	mov	ar4,r7
      000315 8A 82            [24] 1025 	mov	dpl,r2
      000317 8B 83            [24] 1026 	mov	dph,r3
      000319 8C F0            [24] 1027 	mov	b,r4
      00031B 12 09 1D         [24] 1028 	lcall	__gptrget
      00031E F5 82            [12] 1029 	mov	dpl,a
      000320 C0 07            [24] 1030 	push	ar7
      000322 C0 06            [24] 1031 	push	ar6
      000324 C0 05            [24] 1032 	push	ar5
      000326 12 01 15         [24] 1033 	lcall	_decimalToBCD
      000329 12 00 A9         [24] 1034 	lcall	_I2C_send
      00032C D0 05            [24] 1035 	pop	ar5
      00032E D0 06            [24] 1036 	pop	ar6
      000330 D0 07            [24] 1037 	pop	ar7
                                   1038 ;	DS1307_LIB.h:64: I2C_send(decimalToBCD(time->DiaSemana));
      000332 8D 82            [24] 1039 	mov	dpl,r5
      000334 8E 83            [24] 1040 	mov	dph,r6
      000336 8F F0            [24] 1041 	mov	b,r7
      000338 12 09 1D         [24] 1042 	lcall	__gptrget
      00033B F5 82            [12] 1043 	mov	dpl,a
      00033D C0 07            [24] 1044 	push	ar7
      00033F C0 06            [24] 1045 	push	ar6
      000341 C0 05            [24] 1046 	push	ar5
      000343 12 01 15         [24] 1047 	lcall	_decimalToBCD
      000346 12 00 A9         [24] 1048 	lcall	_I2C_send
      000349 D0 05            [24] 1049 	pop	ar5
      00034B D0 06            [24] 1050 	pop	ar6
      00034D D0 07            [24] 1051 	pop	ar7
                                   1052 ;	DS1307_LIB.h:65: I2C_send(decimalToBCD(time->Dia));
      00034F 74 01            [12] 1053 	mov	a,#0x01
      000351 2D               [12] 1054 	add	a,r5
      000352 FA               [12] 1055 	mov	r2,a
      000353 E4               [12] 1056 	clr	a
      000354 3E               [12] 1057 	addc	a,r6
      000355 FB               [12] 1058 	mov	r3,a
      000356 8F 04            [24] 1059 	mov	ar4,r7
      000358 8A 82            [24] 1060 	mov	dpl,r2
      00035A 8B 83            [24] 1061 	mov	dph,r3
      00035C 8C F0            [24] 1062 	mov	b,r4
      00035E 12 09 1D         [24] 1063 	lcall	__gptrget
      000361 F5 82            [12] 1064 	mov	dpl,a
      000363 C0 07            [24] 1065 	push	ar7
      000365 C0 06            [24] 1066 	push	ar6
      000367 C0 05            [24] 1067 	push	ar5
      000369 12 01 15         [24] 1068 	lcall	_decimalToBCD
      00036C 12 00 A9         [24] 1069 	lcall	_I2C_send
      00036F D0 05            [24] 1070 	pop	ar5
      000371 D0 06            [24] 1071 	pop	ar6
      000373 D0 07            [24] 1072 	pop	ar7
                                   1073 ;	DS1307_LIB.h:66: I2C_send(decimalToBCD(time->Mes));
      000375 74 02            [12] 1074 	mov	a,#0x02
      000377 2D               [12] 1075 	add	a,r5
      000378 FA               [12] 1076 	mov	r2,a
      000379 E4               [12] 1077 	clr	a
      00037A 3E               [12] 1078 	addc	a,r6
      00037B FB               [12] 1079 	mov	r3,a
      00037C 8F 04            [24] 1080 	mov	ar4,r7
      00037E 8A 82            [24] 1081 	mov	dpl,r2
      000380 8B 83            [24] 1082 	mov	dph,r3
      000382 8C F0            [24] 1083 	mov	b,r4
      000384 12 09 1D         [24] 1084 	lcall	__gptrget
      000387 F5 82            [12] 1085 	mov	dpl,a
      000389 C0 07            [24] 1086 	push	ar7
      00038B C0 06            [24] 1087 	push	ar6
      00038D C0 05            [24] 1088 	push	ar5
      00038F 12 01 15         [24] 1089 	lcall	_decimalToBCD
      000392 12 00 A9         [24] 1090 	lcall	_I2C_send
      000395 D0 05            [24] 1091 	pop	ar5
      000397 D0 06            [24] 1092 	pop	ar6
      000399 D0 07            [24] 1093 	pop	ar7
                                   1094 ;	DS1307_LIB.h:67: I2C_send(decimalToBCD(time->Ano));
      00039B 74 03            [12] 1095 	mov	a,#0x03
      00039D 2D               [12] 1096 	add	a,r5
      00039E FD               [12] 1097 	mov	r5,a
      00039F E4               [12] 1098 	clr	a
      0003A0 3E               [12] 1099 	addc	a,r6
      0003A1 FE               [12] 1100 	mov	r6,a
      0003A2 8D 82            [24] 1101 	mov	dpl,r5
      0003A4 8E 83            [24] 1102 	mov	dph,r6
      0003A6 8F F0            [24] 1103 	mov	b,r7
      0003A8 12 09 1D         [24] 1104 	lcall	__gptrget
      0003AB F5 82            [12] 1105 	mov	dpl,a
      0003AD 12 01 15         [24] 1106 	lcall	_decimalToBCD
      0003B0 12 00 A9         [24] 1107 	lcall	_I2C_send
                                   1108 ;	DS1307_LIB.h:68: I2C_send(DS1307_CONF);
      0003B3 75 82 80         [24] 1109 	mov	dpl,#0x80
      0003B6 12 00 A9         [24] 1110 	lcall	_I2C_send
                                   1111 ;	DS1307_LIB.h:69: I2C_stop();
      0003B9 02 00 A2         [24] 1112 	ljmp	_I2C_stop
                                   1113 ;------------------------------------------------------------
                                   1114 ;Allocation info for local variables in function 'LCD_send4Bits'
                                   1115 ;------------------------------------------------------------
                                   1116 ;date                      Allocated to registers r7 
                                   1117 ;------------------------------------------------------------
                                   1118 ;	LCD_LIB.H:94: void LCD_send4Bits(char date)
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function LCD_send4Bits
                                   1121 ;	-----------------------------------------
      0003BC                       1122 _LCD_send4Bits:
                                   1123 ;	LCD_LIB.H:96: LCD_DATA_4 = (date & 0x10);
      0003BC E5 82            [12] 1124 	mov	a,dpl
      0003BE FF               [12] 1125 	mov	r7,a
      0003BF A2 E4            [12] 1126 	mov	c,acc[4]
      0003C1 92 00            [24] 1127 	mov  _LCD_send4Bits_sloc0_1_0,c
      0003C3 92 94            [24] 1128 	mov	_P1_4,c
                                   1129 ;	LCD_LIB.H:97: LCD_DATA_5 = (date & 0x20);
      0003C5 EF               [12] 1130 	mov	a,r7
      0003C6 A2 E5            [12] 1131 	mov	c,acc[5]
      0003C8 92 00            [24] 1132 	mov  _LCD_send4Bits_sloc0_1_0,c
      0003CA 92 95            [24] 1133 	mov	_P1_5,c
                                   1134 ;	LCD_LIB.H:98: LCD_DATA_6 = (date & 0x40);
      0003CC EF               [12] 1135 	mov	a,r7
      0003CD A2 E6            [12] 1136 	mov	c,acc[6]
      0003CF 92 00            [24] 1137 	mov  _LCD_send4Bits_sloc0_1_0,c
      0003D1 92 96            [24] 1138 	mov	_P1_6,c
                                   1139 ;	LCD_LIB.H:99: LCD_DATA_7 = (date & 0x80);
      0003D3 EF               [12] 1140 	mov	a,r7
      0003D4 33               [12] 1141 	rlc	a
      0003D5 92 00            [24] 1142 	mov  _LCD_send4Bits_sloc0_1_0,c
      0003D7 92 97            [24] 1143 	mov	_P1_7,c
                                   1144 ;	LCD_LIB.H:100: LCD_EN     = 1;
      0003D9 D2 91            [12] 1145 	setb	_P1_1
                                   1146 ;	LCD_LIB.H:101: delay_ms(1);
      0003DB 90 00 01         [24] 1147 	mov	dptr,#0x0001
      0003DE 12 00 83         [24] 1148 	lcall	_delay_ms
                                   1149 ;	LCD_LIB.H:102: LCD_EN     = 0;
      0003E1 C2 91            [12] 1150 	clr	_P1_1
                                   1151 ;	LCD_LIB.H:103: delay_ms(1);
      0003E3 90 00 01         [24] 1152 	mov	dptr,#0x0001
      0003E6 02 00 83         [24] 1153 	ljmp	_delay_ms
                                   1154 ;------------------------------------------------------------
                                   1155 ;Allocation info for local variables in function 'LCD_send'
                                   1156 ;------------------------------------------------------------
                                   1157 ;date                      Allocated to registers r7 
                                   1158 ;------------------------------------------------------------
                                   1159 ;	LCD_LIB.H:106: void LCD_send(char date)
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function LCD_send
                                   1162 ;	-----------------------------------------
      0003E9                       1163 _LCD_send:
                                   1164 ;	LCD_LIB.H:108: LCD_send4Bits(date);
      0003E9 AF 82            [24] 1165 	mov  r7,dpl
      0003EB C0 07            [24] 1166 	push	ar7
      0003ED 12 03 BC         [24] 1167 	lcall	_LCD_send4Bits
      0003F0 D0 07            [24] 1168 	pop	ar7
                                   1169 ;	LCD_LIB.H:109: LCD_send4Bits(date<<4);
      0003F2 EF               [12] 1170 	mov	a,r7
      0003F3 C4               [12] 1171 	swap	a
      0003F4 54 F0            [12] 1172 	anl	a,#0xf0
      0003F6 F5 82            [12] 1173 	mov	dpl,a
      0003F8 02 03 BC         [24] 1174 	ljmp	_LCD_send4Bits
                                   1175 ;------------------------------------------------------------
                                   1176 ;Allocation info for local variables in function 'LCD_command'
                                   1177 ;------------------------------------------------------------
                                   1178 ;comm                      Allocated to registers r7 
                                   1179 ;------------------------------------------------------------
                                   1180 ;	LCD_LIB.H:122: void LCD_command(char comm)
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function LCD_command
                                   1183 ;	-----------------------------------------
      0003FB                       1184 _LCD_command:
      0003FB AF 82            [24] 1185 	mov	r7,dpl
                                   1186 ;	LCD_LIB.H:124: LCD_RS = LCD_CmdMode;
      0003FD C2 90            [12] 1187 	clr	_P1_0
                                   1188 ;	LCD_LIB.H:125: LCD_send(comm);
      0003FF 8F 82            [24] 1189 	mov	dpl,r7
      000401 02 03 E9         [24] 1190 	ljmp	_LCD_send
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'LCD_putChar'
                                   1193 ;------------------------------------------------------------
                                   1194 ;chr                       Allocated to registers r7 
                                   1195 ;------------------------------------------------------------
                                   1196 ;	LCD_LIB.H:128: void LCD_putChar(char chr)
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function LCD_putChar
                                   1199 ;	-----------------------------------------
      000404                       1200 _LCD_putChar:
      000404 AF 82            [24] 1201 	mov	r7,dpl
                                   1202 ;	LCD_LIB.H:130: LCD_RS = LCD_CharMode;
      000406 D2 90            [12] 1203 	setb	_P1_0
                                   1204 ;	LCD_LIB.H:131: LCD_send(chr);
      000408 8F 82            [24] 1205 	mov	dpl,r7
      00040A 02 03 E9         [24] 1206 	ljmp	_LCD_send
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'LCD_gotoXY'
                                   1209 ;------------------------------------------------------------
                                   1210 ;fila                      Allocated with name '_LCD_gotoXY_PARM_2'
                                   1211 ;columna                   Allocated to registers r7 
                                   1212 ;------------------------------------------------------------
                                   1213 ;	LCD_LIB.H:135: void LCD_gotoXY(char columna, char fila)
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function LCD_gotoXY
                                   1216 ;	-----------------------------------------
      00040D                       1217 _LCD_gotoXY:
      00040D AF 82            [24] 1218 	mov	r7,dpl
                                   1219 ;	LCD_LIB.H:137: if(fila == 0)
      00040F E5 28            [12] 1220 	mov	a,_LCD_gotoXY_PARM_2
      000411 70 08            [24] 1221 	jnz	00110$
                                   1222 ;	LCD_LIB.H:138: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_0);
      000413 74 80            [12] 1223 	mov	a,#0x80
      000415 2F               [12] 1224 	add	a,r7
      000416 F5 82            [12] 1225 	mov	dpl,a
      000418 02 03 FB         [24] 1226 	ljmp	_LCD_command
      00041B                       1227 00110$:
                                   1228 ;	LCD_LIB.H:139: else if (fila == 1)
      00041B 74 01            [12] 1229 	mov	a,#0x01
      00041D B5 28 08         [24] 1230 	cjne	a,_LCD_gotoXY_PARM_2,00107$
                                   1231 ;	LCD_LIB.H:140: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_1);
      000420 74 C0            [12] 1232 	mov	a,#0xc0
      000422 2F               [12] 1233 	add	a,r7
      000423 F5 82            [12] 1234 	mov	dpl,a
      000425 02 03 FB         [24] 1235 	ljmp	_LCD_command
      000428                       1236 00107$:
                                   1237 ;	LCD_LIB.H:141: else if (fila == 2)
      000428 74 02            [12] 1238 	mov	a,#0x02
      00042A B5 28 08         [24] 1239 	cjne	a,_LCD_gotoXY_PARM_2,00104$
                                   1240 ;	LCD_LIB.H:142: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_2);
      00042D 74 94            [12] 1241 	mov	a,#0x94
      00042F 2F               [12] 1242 	add	a,r7
      000430 F5 82            [12] 1243 	mov	dpl,a
      000432 02 03 FB         [24] 1244 	ljmp	_LCD_command
      000435                       1245 00104$:
                                   1246 ;	LCD_LIB.H:143: else if (fila == 3)
      000435 74 03            [12] 1247 	mov	a,#0x03
      000437 B5 28 08         [24] 1248 	cjne	a,_LCD_gotoXY_PARM_2,00112$
                                   1249 ;	LCD_LIB.H:144: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_3);
      00043A 74 D4            [12] 1250 	mov	a,#0xd4
      00043C 2F               [12] 1251 	add	a,r7
      00043D F5 82            [12] 1252 	mov	dpl,a
      00043F 02 03 FB         [24] 1253 	ljmp	_LCD_command
      000442                       1254 00112$:
      000442 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'LCD_cursorHome'
                                   1258 ;------------------------------------------------------------
                                   1259 ;	LCD_LIB.H:147: void LCD_cursorHome(void)
                                   1260 ;	-----------------------------------------
                                   1261 ;	 function LCD_cursorHome
                                   1262 ;	-----------------------------------------
      000443                       1263 _LCD_cursorHome:
                                   1264 ;	LCD_LIB.H:149: LCD_command(LCD_DISPLAY_AND_CURSOR_HOME);
      000443 75 82 02         [24] 1265 	mov	dpl,#0x02
      000446 02 03 FB         [24] 1266 	ljmp	_LCD_command
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'LCD_clear'
                                   1269 ;------------------------------------------------------------
                                   1270 ;	LCD_LIB.H:152: void LCD_clear(void)
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function LCD_clear
                                   1273 ;	-----------------------------------------
      000449                       1274 _LCD_clear:
                                   1275 ;	LCD_LIB.H:154: LCD_command(LCD_CLEAR_DISPLAY);
      000449 75 82 01         [24] 1276 	mov	dpl,#0x01
      00044C 02 03 FB         [24] 1277 	ljmp	_LCD_command
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'LCD_cursorUnderline'
                                   1280 ;------------------------------------------------------------
                                   1281 ;	LCD_LIB.H:157: void LCD_cursorUnderline(void)
                                   1282 ;	-----------------------------------------
                                   1283 ;	 function LCD_cursorUnderline
                                   1284 ;	-----------------------------------------
      00044F                       1285 _LCD_cursorUnderline:
                                   1286 ;	LCD_LIB.H:159: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON);
      00044F 75 82 0E         [24] 1287 	mov	dpl,#0x0e
      000452 02 03 FB         [24] 1288 	ljmp	_LCD_command
                                   1289 ;------------------------------------------------------------
                                   1290 ;Allocation info for local variables in function 'LCD_cursorBlink'
                                   1291 ;------------------------------------------------------------
                                   1292 ;	LCD_LIB.H:162: void LCD_cursorBlink(void)
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function LCD_cursorBlink
                                   1295 ;	-----------------------------------------
      000455                       1296 _LCD_cursorBlink:
                                   1297 ;	LCD_LIB.H:164: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_BLINK_ON);
      000455 75 82 0D         [24] 1298 	mov	dpl,#0x0d
      000458 02 03 FB         [24] 1299 	ljmp	_LCD_command
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'LCD_cursorUnderlineBlink'
                                   1302 ;------------------------------------------------------------
                                   1303 ;	LCD_LIB.H:167: void LCD_cursorUnderlineBlink(void)
                                   1304 ;	-----------------------------------------
                                   1305 ;	 function LCD_cursorUnderlineBlink
                                   1306 ;	-----------------------------------------
      00045B                       1307 _LCD_cursorUnderlineBlink:
                                   1308 ;	LCD_LIB.H:169: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON + LCD_CURSOR_BLINK_ON);
      00045B 75 82 0F         [24] 1309 	mov	dpl,#0x0f
      00045E 02 03 FB         [24] 1310 	ljmp	_LCD_command
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'LCD_cursorOff'
                                   1313 ;------------------------------------------------------------
                                   1314 ;	LCD_LIB.H:172: void LCD_cursorOff(void)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function LCD_cursorOff
                                   1317 ;	-----------------------------------------
      000461                       1318 _LCD_cursorOff:
                                   1319 ;	LCD_LIB.H:174: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_OFF + LCD_CURSOR_BLINK_OFF);
      000461 75 82 0C         [24] 1320 	mov	dpl,#0x0c
      000464 02 03 FB         [24] 1321 	ljmp	_LCD_command
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'LCD_displayOn'
                                   1324 ;------------------------------------------------------------
                                   1325 ;	LCD_LIB.H:177: void LCD_displayOn(void)
                                   1326 ;	-----------------------------------------
                                   1327 ;	 function LCD_displayOn
                                   1328 ;	-----------------------------------------
      000467                       1329 _LCD_displayOn:
                                   1330 ;	LCD_LIB.H:179: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
      000467 75 82 0C         [24] 1331 	mov	dpl,#0x0c
      00046A 02 03 FB         [24] 1332 	ljmp	_LCD_command
                                   1333 ;------------------------------------------------------------
                                   1334 ;Allocation info for local variables in function 'LCD_displayOff'
                                   1335 ;------------------------------------------------------------
                                   1336 ;	LCD_LIB.H:182: void LCD_displayOff(void)
                                   1337 ;	-----------------------------------------
                                   1338 ;	 function LCD_displayOff
                                   1339 ;	-----------------------------------------
      00046D                       1340 _LCD_displayOff:
                                   1341 ;	LCD_LIB.H:184: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
      00046D 75 82 08         [24] 1342 	mov	dpl,#0x08
      000470 02 03 FB         [24] 1343 	ljmp	_LCD_command
                                   1344 ;------------------------------------------------------------
                                   1345 ;Allocation info for local variables in function 'LCD_displayShiftRight'
                                   1346 ;------------------------------------------------------------
                                   1347 ;	LCD_LIB.H:198: void LCD_displayShiftRight(void)
                                   1348 ;	-----------------------------------------
                                   1349 ;	 function LCD_displayShiftRight
                                   1350 ;	-----------------------------------------
      000473                       1351 _LCD_displayShiftRight:
                                   1352 ;	LCD_LIB.H:200: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_RIGHT);
      000473 75 82 1C         [24] 1353 	mov	dpl,#0x1c
      000476 02 03 FB         [24] 1354 	ljmp	_LCD_command
                                   1355 ;------------------------------------------------------------
                                   1356 ;Allocation info for local variables in function 'LCD_displayShiftLeft'
                                   1357 ;------------------------------------------------------------
                                   1358 ;	LCD_LIB.H:203: void LCD_displayShiftLeft(void)
                                   1359 ;	-----------------------------------------
                                   1360 ;	 function LCD_displayShiftLeft
                                   1361 ;	-----------------------------------------
      000479                       1362 _LCD_displayShiftLeft:
                                   1363 ;	LCD_LIB.H:205: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_LEFT);
      000479 75 82 18         [24] 1364 	mov	dpl,#0x18
      00047C 02 03 FB         [24] 1365 	ljmp	_LCD_command
                                   1366 ;------------------------------------------------------------
                                   1367 ;Allocation info for local variables in function 'LCD_displayCursorRight'
                                   1368 ;------------------------------------------------------------
                                   1369 ;	LCD_LIB.H:208: void LCD_displayCursorRight(void)
                                   1370 ;	-----------------------------------------
                                   1371 ;	 function LCD_displayCursorRight
                                   1372 ;	-----------------------------------------
      00047F                       1373 _LCD_displayCursorRight:
                                   1374 ;	LCD_LIB.H:210: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_RIGHT);
      00047F 75 82 14         [24] 1375 	mov	dpl,#0x14
      000482 02 03 FB         [24] 1376 	ljmp	_LCD_command
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'LCD_displayCursorLeft'
                                   1379 ;------------------------------------------------------------
                                   1380 ;	LCD_LIB.H:213: void LCD_displayCursorLeft(void)
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function LCD_displayCursorLeft
                                   1383 ;	-----------------------------------------
      000485                       1384 _LCD_displayCursorLeft:
                                   1385 ;	LCD_LIB.H:215: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_LEFT);
      000485 75 82 10         [24] 1386 	mov	dpl,#0x10
      000488 02 03 FB         [24] 1387 	ljmp	_LCD_command
                                   1388 ;------------------------------------------------------------
                                   1389 ;Allocation info for local variables in function 'LCD_createChar'
                                   1390 ;------------------------------------------------------------
                                   1391 ;chardata0                 Allocated with name '_LCD_createChar_PARM_2'
                                   1392 ;chardata1                 Allocated with name '_LCD_createChar_PARM_3'
                                   1393 ;chardata2                 Allocated with name '_LCD_createChar_PARM_4'
                                   1394 ;chardata3                 Allocated with name '_LCD_createChar_PARM_5'
                                   1395 ;chardata4                 Allocated with name '_LCD_createChar_PARM_6'
                                   1396 ;chardata5                 Allocated with name '_LCD_createChar_PARM_7'
                                   1397 ;chardata6                 Allocated with name '_LCD_createChar_PARM_8'
                                   1398 ;chardata7                 Allocated with name '_LCD_createChar_PARM_9'
                                   1399 ;charnum                   Allocated to registers r7 
                                   1400 ;------------------------------------------------------------
                                   1401 ;	LCD_LIB.H:218: void LCD_createChar(char charnum,
                                   1402 ;	-----------------------------------------
                                   1403 ;	 function LCD_createChar
                                   1404 ;	-----------------------------------------
      00048B                       1405 _LCD_createChar:
                                   1406 ;	LCD_LIB.H:228: charnum = charnum & 0x07;  // Previene errores sin charnum > 7;
                                   1407 ;	LCD_LIB.H:229: charnum = charnum << 3;
      00048B E5 82            [12] 1408 	mov	a,dpl
      00048D 54 07            [12] 1409 	anl	a,#0x07
      00048F C4               [12] 1410 	swap	a
      000490 03               [12] 1411 	rr	a
      000491 54 F8            [12] 1412 	anl	a,#0xf8
                                   1413 ;	LCD_LIB.H:230: LCD_command(LCD_SET_CGRAM_ADDRESS + charnum);
      000493 24 40            [12] 1414 	add	a,#0x40
      000495 F5 82            [12] 1415 	mov	dpl,a
      000497 12 03 FB         [24] 1416 	lcall	_LCD_command
                                   1417 ;	LCD_LIB.H:231: LCD_putChar(chardata0);
      00049A 85 29 82         [24] 1418 	mov	dpl,_LCD_createChar_PARM_2
      00049D 12 04 04         [24] 1419 	lcall	_LCD_putChar
                                   1420 ;	LCD_LIB.H:232: LCD_putChar(chardata1);
      0004A0 85 2A 82         [24] 1421 	mov	dpl,_LCD_createChar_PARM_3
      0004A3 12 04 04         [24] 1422 	lcall	_LCD_putChar
                                   1423 ;	LCD_LIB.H:233: LCD_putChar(chardata2);
      0004A6 85 2B 82         [24] 1424 	mov	dpl,_LCD_createChar_PARM_4
      0004A9 12 04 04         [24] 1425 	lcall	_LCD_putChar
                                   1426 ;	LCD_LIB.H:234: LCD_putChar(chardata3);
      0004AC 85 2C 82         [24] 1427 	mov	dpl,_LCD_createChar_PARM_5
      0004AF 12 04 04         [24] 1428 	lcall	_LCD_putChar
                                   1429 ;	LCD_LIB.H:235: LCD_putChar(chardata4);
      0004B2 85 2D 82         [24] 1430 	mov	dpl,_LCD_createChar_PARM_6
      0004B5 12 04 04         [24] 1431 	lcall	_LCD_putChar
                                   1432 ;	LCD_LIB.H:236: LCD_putChar(chardata5);
      0004B8 85 2E 82         [24] 1433 	mov	dpl,_LCD_createChar_PARM_7
      0004BB 12 04 04         [24] 1434 	lcall	_LCD_putChar
                                   1435 ;	LCD_LIB.H:237: LCD_putChar(chardata6);
      0004BE 85 2F 82         [24] 1436 	mov	dpl,_LCD_createChar_PARM_8
      0004C1 12 04 04         [24] 1437 	lcall	_LCD_putChar
                                   1438 ;	LCD_LIB.H:238: LCD_putChar(chardata7);
      0004C4 85 30 82         [24] 1439 	mov	dpl,_LCD_createChar_PARM_9
                                   1440 ;	LCD_LIB.H:239: LCD_clear;    // Necesario para finalizar la creacion de Custom Character.
      0004C7 02 04 04         [24] 1441 	ljmp	_LCD_putChar
                                   1442 ;------------------------------------------------------------
                                   1443 ;Allocation info for local variables in function 'LCD_print'
                                   1444 ;------------------------------------------------------------
                                   1445 ;str                       Allocated to registers 
                                   1446 ;------------------------------------------------------------
                                   1447 ;	LCD_LIB.H:243: void LCD_print(char *str)
                                   1448 ;	-----------------------------------------
                                   1449 ;	 function LCD_print
                                   1450 ;	-----------------------------------------
      0004CA                       1451 _LCD_print:
      0004CA AD 82            [24] 1452 	mov	r5,dpl
      0004CC AE 83            [24] 1453 	mov	r6,dph
      0004CE AF F0            [24] 1454 	mov	r7,b
                                   1455 ;	LCD_LIB.H:245: while(*str)
      0004D0                       1456 00101$:
      0004D0 8D 82            [24] 1457 	mov	dpl,r5
      0004D2 8E 83            [24] 1458 	mov	dph,r6
      0004D4 8F F0            [24] 1459 	mov	b,r7
      0004D6 12 09 1D         [24] 1460 	lcall	__gptrget
      0004D9 FC               [12] 1461 	mov	r4,a
      0004DA 60 18            [24] 1462 	jz	00104$
                                   1463 ;	LCD_LIB.H:247: LCD_putChar(*str);
      0004DC 8C 82            [24] 1464 	mov	dpl,r4
      0004DE C0 07            [24] 1465 	push	ar7
      0004E0 C0 06            [24] 1466 	push	ar6
      0004E2 C0 05            [24] 1467 	push	ar5
      0004E4 12 04 04         [24] 1468 	lcall	_LCD_putChar
      0004E7 D0 05            [24] 1469 	pop	ar5
      0004E9 D0 06            [24] 1470 	pop	ar6
      0004EB D0 07            [24] 1471 	pop	ar7
                                   1472 ;	LCD_LIB.H:248: str++;
      0004ED 0D               [12] 1473 	inc	r5
      0004EE BD 00 DF         [24] 1474 	cjne	r5,#0x00,00101$
      0004F1 0E               [12] 1475 	inc	r6
      0004F2 80 DC            [24] 1476 	sjmp	00101$
      0004F4                       1477 00104$:
      0004F4 22               [24] 1478 	ret
                                   1479 ;------------------------------------------------------------
                                   1480 ;Allocation info for local variables in function 'LCD_init'
                                   1481 ;------------------------------------------------------------
                                   1482 ;	LCD_LIB.H:252: void LCD_init(void)
                                   1483 ;	-----------------------------------------
                                   1484 ;	 function LCD_init
                                   1485 ;	-----------------------------------------
      0004F5                       1486 _LCD_init:
                                   1487 ;	LCD_LIB.H:255: LCD_DATA_4 = 0;              // Pines iniciados como salida.
      0004F5 C2 94            [12] 1488 	clr	_P1_4
                                   1489 ;	LCD_LIB.H:256: LCD_DATA_5 = 0;
      0004F7 C2 95            [12] 1490 	clr	_P1_5
                                   1491 ;	LCD_LIB.H:257: LCD_DATA_6 = 0;
      0004F9 C2 96            [12] 1492 	clr	_P1_6
                                   1493 ;	LCD_LIB.H:258: LCD_DATA_7 = 0;
      0004FB C2 97            [12] 1494 	clr	_P1_7
                                   1495 ;	LCD_LIB.H:259: LCD_RS     = 0;
      0004FD C2 90            [12] 1496 	clr	_P1_0
                                   1497 ;	LCD_LIB.H:260: LCD_EN     = 0;
      0004FF C2 91            [12] 1498 	clr	_P1_1
                                   1499 ;	LCD_LIB.H:268: delay_ms(30);    // Espera 15 ms o más.
      000501 90 00 1E         [24] 1500 	mov	dptr,#0x001e
      000504 12 00 83         [24] 1501 	lcall	_delay_ms
                                   1502 ;	LCD_LIB.H:272: LCD_send4Bits(0b00110000);
      000507 75 82 30         [24] 1503 	mov	dpl,#0x30
      00050A 12 03 BC         [24] 1504 	lcall	_LCD_send4Bits
                                   1505 ;	LCD_LIB.H:273: delay_ms(5);  // Espera > 4.1 ms
      00050D 90 00 05         [24] 1506 	mov	dptr,#0x0005
      000510 12 00 83         [24] 1507 	lcall	_delay_ms
                                   1508 ;	LCD_LIB.H:274: LCD_send4Bits(0b00110000);
      000513 75 82 30         [24] 1509 	mov	dpl,#0x30
      000516 12 03 BC         [24] 1510 	lcall	_LCD_send4Bits
                                   1511 ;	LCD_LIB.H:275: delay_ms(1);  // Espera > 100 us
      000519 90 00 01         [24] 1512 	mov	dptr,#0x0001
      00051C 12 00 83         [24] 1513 	lcall	_delay_ms
                                   1514 ;	LCD_LIB.H:276: LCD_send4Bits(0b00110000);
      00051F 75 82 30         [24] 1515 	mov	dpl,#0x30
      000522 12 03 BC         [24] 1516 	lcall	_LCD_send4Bits
                                   1517 ;	LCD_LIB.H:277: LCD_send4Bits(0b00100000);
      000525 75 82 20         [24] 1518 	mov	dpl,#0x20
      000528 12 03 BC         [24] 1519 	lcall	_LCD_send4Bits
                                   1520 ;	LCD_LIB.H:278: LCD_command(LCD_FUNCTION_SET + LCD_4BIT_INTERFACE + LCD_2LINES + LCD_F_FONT_5_8);
      00052B 75 82 28         [24] 1521 	mov	dpl,#0x28
      00052E 12 03 FB         [24] 1522 	lcall	_LCD_command
                                   1523 ;	LCD_LIB.H:290: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
      000531 75 82 08         [24] 1524 	mov	dpl,#0x08
      000534 12 03 FB         [24] 1525 	lcall	_LCD_command
                                   1526 ;	LCD_LIB.H:291: LCD_command(LCD_CHARACTER_ENTRY_MODE + LCD_INCREMENT + LCD_DISPLAY_SHIFT_OFF);
      000537 75 82 06         [24] 1527 	mov	dpl,#0x06
      00053A 12 03 FB         [24] 1528 	lcall	_LCD_command
                                   1529 ;	LCD_LIB.H:292: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
      00053D 75 82 0C         [24] 1530 	mov	dpl,#0x0c
      000540 12 03 FB         [24] 1531 	lcall	_LCD_command
                                   1532 ;	LCD_LIB.H:293: LCD_command(LCD_CLEAR_DISPLAY);
      000543 75 82 01         [24] 1533 	mov	dpl,#0x01
      000546 02 03 FB         [24] 1534 	ljmp	_LCD_command
                                   1535 ;------------------------------------------------------------
                                   1536 ;Allocation info for local variables in function 'LCDPrintDiaSemana'
                                   1537 ;------------------------------------------------------------
                                   1538 ;	main.c:57: void LCDPrintDiaSemana(void)
                                   1539 ;	-----------------------------------------
                                   1540 ;	 function LCDPrintDiaSemana
                                   1541 ;	-----------------------------------------
      000549                       1542 _LCDPrintDiaSemana:
                                   1543 ;	main.c:59: switch(ahora.DiaSemana)
      000549 E5 21            [12] 1544 	mov	a,_ahora
      00054B FF               [12] 1545 	mov	r7,a
      00054C 24 F8            [12] 1546 	add	a,#0xff - 0x07
      00054E 50 01            [24] 1547 	jnc	00114$
      000550 22               [24] 1548 	ret
      000551                       1549 00114$:
      000551 EF               [12] 1550 	mov	a,r7
      000552 24 0A            [12] 1551 	add	a,#(00115$-3-.)
      000554 83               [24] 1552 	movc	a,@a+pc
      000555 F5 82            [12] 1553 	mov	dpl,a
      000557 EF               [12] 1554 	mov	a,r7
      000558 24 0C            [12] 1555 	add	a,#(00116$-3-.)
      00055A 83               [24] 1556 	movc	a,@a+pc
      00055B F5 83            [12] 1557 	mov	dph,a
      00055D E4               [12] 1558 	clr	a
      00055E 73               [24] 1559 	jmp	@a+dptr
      00055F                       1560 00115$:
      00055F AE                    1561 	.db	00108$
      000560 6F                    1562 	.db	00101$
      000561 78                    1563 	.db	00102$
      000562 81                    1564 	.db	00103$
      000563 8A                    1565 	.db	00104$
      000564 93                    1566 	.db	00105$
      000565 9C                    1567 	.db	00106$
      000566 A5                    1568 	.db	00107$
      000567                       1569 00116$:
      000567 05                    1570 	.db	00108$>>8
      000568 05                    1571 	.db	00101$>>8
      000569 05                    1572 	.db	00102$>>8
      00056A 05                    1573 	.db	00103$>>8
      00056B 05                    1574 	.db	00104$>>8
      00056C 05                    1575 	.db	00105$>>8
      00056D 05                    1576 	.db	00106$>>8
      00056E 05                    1577 	.db	00107$>>8
                                   1578 ;	main.c:61: case 1:
      00056F                       1579 00101$:
                                   1580 ;	main.c:62: LCD_print("DOM");
      00056F 90 09 3D         [24] 1581 	mov	dptr,#___str_0
      000572 75 F0 80         [24] 1582 	mov	b,#0x80
                                   1583 ;	main.c:63: break;
                                   1584 ;	main.c:64: case 2:
      000575 02 04 CA         [24] 1585 	ljmp	_LCD_print
      000578                       1586 00102$:
                                   1587 ;	main.c:65: LCD_print("LUN");
      000578 90 09 41         [24] 1588 	mov	dptr,#___str_1
      00057B 75 F0 80         [24] 1589 	mov	b,#0x80
                                   1590 ;	main.c:66: break;
                                   1591 ;	main.c:67: case 3:
      00057E 02 04 CA         [24] 1592 	ljmp	_LCD_print
      000581                       1593 00103$:
                                   1594 ;	main.c:68: LCD_print("MAR");
      000581 90 09 45         [24] 1595 	mov	dptr,#___str_2
      000584 75 F0 80         [24] 1596 	mov	b,#0x80
                                   1597 ;	main.c:69: break;
                                   1598 ;	main.c:70: case 4:
      000587 02 04 CA         [24] 1599 	ljmp	_LCD_print
      00058A                       1600 00104$:
                                   1601 ;	main.c:71: LCD_print("MIE");
      00058A 90 09 49         [24] 1602 	mov	dptr,#___str_3
      00058D 75 F0 80         [24] 1603 	mov	b,#0x80
                                   1604 ;	main.c:72: break;
                                   1605 ;	main.c:73: case 5:
      000590 02 04 CA         [24] 1606 	ljmp	_LCD_print
      000593                       1607 00105$:
                                   1608 ;	main.c:74: LCD_print("JUE");
      000593 90 09 4D         [24] 1609 	mov	dptr,#___str_4
      000596 75 F0 80         [24] 1610 	mov	b,#0x80
                                   1611 ;	main.c:75: break;
                                   1612 ;	main.c:76: case 6:
      000599 02 04 CA         [24] 1613 	ljmp	_LCD_print
      00059C                       1614 00106$:
                                   1615 ;	main.c:77: LCD_print("VIE");
      00059C 90 09 51         [24] 1616 	mov	dptr,#___str_5
      00059F 75 F0 80         [24] 1617 	mov	b,#0x80
                                   1618 ;	main.c:78: break;
                                   1619 ;	main.c:79: case 7:
      0005A2 02 04 CA         [24] 1620 	ljmp	_LCD_print
      0005A5                       1621 00107$:
                                   1622 ;	main.c:80: LCD_print("SAB");
      0005A5 90 09 55         [24] 1623 	mov	dptr,#___str_6
      0005A8 75 F0 80         [24] 1624 	mov	b,#0x80
      0005AB 12 04 CA         [24] 1625 	lcall	_LCD_print
                                   1626 ;	main.c:82: }
      0005AE                       1627 00108$:
      0005AE 22               [24] 1628 	ret
                                   1629 ;------------------------------------------------------------
                                   1630 ;Allocation info for local variables in function 'bisiesto'
                                   1631 ;------------------------------------------------------------
                                   1632 ;	main.c:101: bool bisiesto(void)
                                   1633 ;	-----------------------------------------
                                   1634 ;	 function bisiesto
                                   1635 ;	-----------------------------------------
      0005AF                       1636 _bisiesto:
                                   1637 ;	main.c:104: return !(ahora.Ano%4);
      0005AF 74 03            [12] 1638 	mov	a,#0x03
      0005B1 55 24            [12] 1639 	anl	a,(_ahora + 0x0003)
      0005B3 FF               [12] 1640 	mov	r7,a
      0005B4 B4 01 00         [24] 1641 	cjne	a,#0x01,00103$
      0005B7                       1642 00103$:
      0005B7 22               [24] 1643 	ret
                                   1644 ;------------------------------------------------------------
                                   1645 ;Allocation info for local variables in function 'diasDelMes'
                                   1646 ;------------------------------------------------------------
                                   1647 ;	main.c:114: uint8_t diasDelMes(void)
                                   1648 ;	-----------------------------------------
                                   1649 ;	 function diasDelMes
                                   1650 ;	-----------------------------------------
      0005B8                       1651 _diasDelMes:
                                   1652 ;	main.c:116: if(ahora.Mes==2)                        // Mes = febrero
      0005B8 AF 23            [24] 1653 	mov	r7,(_ahora + 0x0002)
      0005BA BF 02 0E         [24] 1654 	cjne	r7,#0x02,00102$
                                   1655 ;	main.c:118: return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
      0005BD 12 05 AF         [24] 1656 	lcall	_bisiesto
      0005C0 50 04            [24] 1657 	jnc	00110$
      0005C2 7E 1D            [12] 1658 	mov	r6,#0x1d
      0005C4 80 02            [24] 1659 	sjmp	00111$
      0005C6                       1660 00110$:
      0005C6 7E 1C            [12] 1661 	mov	r6,#0x1c
      0005C8                       1662 00111$:
      0005C8 8E 82            [24] 1663 	mov	dpl,r6
      0005CA 22               [24] 1664 	ret
      0005CB                       1665 00102$:
                                   1666 ;	main.c:120: if((ahora.Mes==4) || (ahora.Mes==6) || (ahora.Mes==9) || (ahora.Mes==11))
      0005CB BF 04 02         [24] 1667 	cjne	r7,#0x04,00130$
      0005CE 80 0D            [24] 1668 	sjmp	00103$
      0005D0                       1669 00130$:
      0005D0 BF 06 02         [24] 1670 	cjne	r7,#0x06,00131$
      0005D3 80 08            [24] 1671 	sjmp	00103$
      0005D5                       1672 00131$:
      0005D5 BF 09 02         [24] 1673 	cjne	r7,#0x09,00132$
      0005D8 80 03            [24] 1674 	sjmp	00103$
      0005DA                       1675 00132$:
      0005DA BF 0B 04         [24] 1676 	cjne	r7,#0x0b,00104$
      0005DD                       1677 00103$:
                                   1678 ;	main.c:122: return 30;                    // Meses de 30 días.
      0005DD 75 82 1E         [24] 1679 	mov	dpl,#0x1e
      0005E0 22               [24] 1680 	ret
      0005E1                       1681 00104$:
                                   1682 ;	main.c:124: return 31;                        // Meses de 31 días.
      0005E1 75 82 1F         [24] 1683 	mov	dpl,#0x1f
      0005E4 22               [24] 1684 	ret
                                   1685 ;------------------------------------------------------------
                                   1686 ;Allocation info for local variables in function 'LCDPrintNumero'
                                   1687 ;------------------------------------------------------------
                                   1688 ;numero                    Allocated to registers r7 
                                   1689 ;------------------------------------------------------------
                                   1690 ;	main.c:127: void LCDPrintNumero(uint8_t numero)
                                   1691 ;	-----------------------------------------
                                   1692 ;	 function LCDPrintNumero
                                   1693 ;	-----------------------------------------
      0005E5                       1694 _LCDPrintNumero:
      0005E5 AF 82            [24] 1695 	mov	r7,dpl
                                   1696 ;	main.c:129: LCD_putChar((numero/10)+48);
      0005E7 75 F0 0A         [24] 1697 	mov	b,#0x0a
      0005EA EF               [12] 1698 	mov	a,r7
      0005EB 84               [48] 1699 	div	ab
      0005EC 24 30            [12] 1700 	add	a,#0x30
      0005EE F5 82            [12] 1701 	mov	dpl,a
      0005F0 C0 07            [24] 1702 	push	ar7
      0005F2 12 04 04         [24] 1703 	lcall	_LCD_putChar
      0005F5 D0 07            [24] 1704 	pop	ar7
                                   1705 ;	main.c:130: LCD_putChar((numero%10)+48);
      0005F7 75 F0 0A         [24] 1706 	mov	b,#0x0a
      0005FA EF               [12] 1707 	mov	a,r7
      0005FB 84               [48] 1708 	div	ab
      0005FC E5 F0            [12] 1709 	mov	a,b
      0005FE 24 30            [12] 1710 	add	a,#0x30
      000600 F5 82            [12] 1711 	mov	dpl,a
      000602 02 04 04         [24] 1712 	ljmp	_LCD_putChar
                                   1713 ;------------------------------------------------------------
                                   1714 ;Allocation info for local variables in function 'timeShow'
                                   1715 ;------------------------------------------------------------
                                   1716 ;	main.c:143: void timeShow(void)
                                   1717 ;	-----------------------------------------
                                   1718 ;	 function timeShow
                                   1719 ;	-----------------------------------------
      000605                       1720 _timeShow:
                                   1721 ;	main.c:145: LCD_gotoXY(1,0);
      000605 75 28 00         [24] 1722 	mov	_LCD_gotoXY_PARM_2,#0x00
      000608 75 82 01         [24] 1723 	mov	dpl,#0x01
      00060B 12 04 0D         [24] 1724 	lcall	_LCD_gotoXY
                                   1725 ;	main.c:146: LCDPrintNumero(ahora.Dia);
      00060E 85 22 82         [24] 1726 	mov	dpl,(_ahora + 0x0001)
      000611 12 05 E5         [24] 1727 	lcall	_LCDPrintNumero
                                   1728 ;	main.c:147: LCD_putChar('/');
      000614 75 82 2F         [24] 1729 	mov	dpl,#0x2f
      000617 12 04 04         [24] 1730 	lcall	_LCD_putChar
                                   1731 ;	main.c:148: LCDPrintNumero(ahora.Mes);
      00061A 85 23 82         [24] 1732 	mov	dpl,(_ahora + 0x0002)
      00061D 12 05 E5         [24] 1733 	lcall	_LCDPrintNumero
                                   1734 ;	main.c:149: LCD_putChar('/');
      000620 75 82 2F         [24] 1735 	mov	dpl,#0x2f
      000623 12 04 04         [24] 1736 	lcall	_LCD_putChar
                                   1737 ;	main.c:150: LCDPrintNumero(ahora.Ano);
      000626 85 24 82         [24] 1738 	mov	dpl,(_ahora + 0x0003)
      000629 12 05 E5         [24] 1739 	lcall	_LCDPrintNumero
                                   1740 ;	main.c:151: LCD_print("   ");
      00062C 90 09 59         [24] 1741 	mov	dptr,#___str_7
      00062F 75 F0 80         [24] 1742 	mov	b,#0x80
      000632 12 04 CA         [24] 1743 	lcall	_LCD_print
                                   1744 ;	main.c:152: LCDPrintDiaSemana();
      000635 12 05 49         [24] 1745 	lcall	_LCDPrintDiaSemana
                                   1746 ;	main.c:153: LCD_print(" ");
      000638 90 09 5D         [24] 1747 	mov	dptr,#___str_8
      00063B 75 F0 80         [24] 1748 	mov	b,#0x80
      00063E 12 04 CA         [24] 1749 	lcall	_LCD_print
                                   1750 ;	main.c:154: LCD_gotoXY(1,1);
      000641 75 28 01         [24] 1751 	mov	_LCD_gotoXY_PARM_2,#0x01
      000644 75 82 01         [24] 1752 	mov	dpl,#0x01
      000647 12 04 0D         [24] 1753 	lcall	_LCD_gotoXY
                                   1754 ;	main.c:155: LCDPrintNumero(ahora.Hora);
      00064A 85 25 82         [24] 1755 	mov	dpl,(_ahora + 0x0004)
      00064D 12 05 E5         [24] 1756 	lcall	_LCDPrintNumero
                                   1757 ;	main.c:156: LCD_putChar(':');
      000650 75 82 3A         [24] 1758 	mov	dpl,#0x3a
      000653 12 04 04         [24] 1759 	lcall	_LCD_putChar
                                   1760 ;	main.c:157: LCDPrintNumero(ahora.Minuto);
      000656 85 26 82         [24] 1761 	mov	dpl,(_ahora + 0x0005)
      000659 12 05 E5         [24] 1762 	lcall	_LCDPrintNumero
                                   1763 ;	main.c:158: LCD_putChar(':');
      00065C 75 82 3A         [24] 1764 	mov	dpl,#0x3a
      00065F 12 04 04         [24] 1765 	lcall	_LCD_putChar
                                   1766 ;	main.c:159: LCDPrintNumero(ahora.Segundo);
      000662 85 27 82         [24] 1767 	mov	dpl,(_ahora + 0x0006)
      000665 12 05 E5         [24] 1768 	lcall	_LCDPrintNumero
                                   1769 ;	main.c:160: LCD_print("       ");
      000668 90 09 5F         [24] 1770 	mov	dptr,#___str_9
      00066B 75 F0 80         [24] 1771 	mov	b,#0x80
      00066E 02 04 CA         [24] 1772 	ljmp	_LCD_print
                                   1773 ;------------------------------------------------------------
                                   1774 ;Allocation info for local variables in function 'cicloTimeSet'
                                   1775 ;------------------------------------------------------------
                                   1776 ;limSup                    Allocated with name '_cicloTimeSet_PARM_2'
                                   1777 ;lcdX                      Allocated with name '_cicloTimeSet_PARM_3'
                                   1778 ;lcdY                      Allocated with name '_cicloTimeSet_PARM_4'
                                   1779 ;dato                      Allocated with name '_cicloTimeSet_PARM_5'
                                   1780 ;limInf                    Allocated to registers r7 
                                   1781 ;------------------------------------------------------------
                                   1782 ;	main.c:163: void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
                                   1783 ;	-----------------------------------------
                                   1784 ;	 function cicloTimeSet
                                   1785 ;	-----------------------------------------
      000671                       1786 _cicloTimeSet:
      000671 AF 82            [24] 1787 	mov	r7,dpl
                                   1788 ;	main.c:165: while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
      000673 AC 38            [24] 1789 	mov	r4,_cicloTimeSet_PARM_5
      000675 AD 39            [24] 1790 	mov	r5,(_cicloTimeSet_PARM_5 + 1)
      000677 AE 3A            [24] 1791 	mov	r6,(_cicloTimeSet_PARM_5 + 2)
      000679                       1792 00109$:
      000679 30 A2 06         [24] 1793 	jnb	_P2_2,00110$
      00067C 30 A3 03         [24] 1794 	jnb	_P2_3,00150$
      00067F 02 07 2D         [24] 1795 	ljmp	00111$
      000682                       1796 00150$:
      000682                       1797 00110$:
                                   1798 ;	main.c:167: LCD_cursorOff();
      000682 C0 07            [24] 1799 	push	ar7
      000684 C0 06            [24] 1800 	push	ar6
      000686 C0 05            [24] 1801 	push	ar5
      000688 C0 04            [24] 1802 	push	ar4
      00068A 12 04 61         [24] 1803 	lcall	_LCD_cursorOff
      00068D D0 04            [24] 1804 	pop	ar4
      00068F D0 05            [24] 1805 	pop	ar5
      000691 D0 06            [24] 1806 	pop	ar6
      000693 D0 07            [24] 1807 	pop	ar7
                                   1808 ;	main.c:168: if(P_INC==0)   // Si se ha pulsado INC
      000695 20 A2 27         [24] 1809 	jb	_P2_2,00107$
                                   1810 ;	main.c:170: (*dato)++;
      000698 8C 82            [24] 1811 	mov	dpl,r4
      00069A 8D 83            [24] 1812 	mov	dph,r5
      00069C 8E F0            [24] 1813 	mov	b,r6
      00069E 12 09 1D         [24] 1814 	lcall	__gptrget
      0006A1 FB               [12] 1815 	mov	r3,a
      0006A2 0B               [12] 1816 	inc	r3
      0006A3 8C 82            [24] 1817 	mov	dpl,r4
      0006A5 8D 83            [24] 1818 	mov	dph,r5
      0006A7 8E F0            [24] 1819 	mov	b,r6
      0006A9 EB               [12] 1820 	mov	a,r3
      0006AA 12 09 02         [24] 1821 	lcall	__gptrput
                                   1822 ;	main.c:171: if(*dato>limSup) *dato=limInf;
      0006AD C3               [12] 1823 	clr	c
      0006AE E5 35            [12] 1824 	mov	a,_cicloTimeSet_PARM_2
      0006B0 9B               [12] 1825 	subb	a,r3
      0006B1 50 3E            [24] 1826 	jnc	00108$
      0006B3 8C 82            [24] 1827 	mov	dpl,r4
      0006B5 8D 83            [24] 1828 	mov	dph,r5
      0006B7 8E F0            [24] 1829 	mov	b,r6
      0006B9 EF               [12] 1830 	mov	a,r7
      0006BA 12 09 02         [24] 1831 	lcall	__gptrput
      0006BD 80 32            [24] 1832 	sjmp	00108$
      0006BF                       1833 00107$:
                                   1834 ;	main.c:175: (*dato)--;
      0006BF 8C 82            [24] 1835 	mov	dpl,r4
      0006C1 8D 83            [24] 1836 	mov	dph,r5
      0006C3 8E F0            [24] 1837 	mov	b,r6
      0006C5 12 09 1D         [24] 1838 	lcall	__gptrget
      0006C8 FB               [12] 1839 	mov	r3,a
      0006C9 1B               [12] 1840 	dec	r3
      0006CA 8C 82            [24] 1841 	mov	dpl,r4
      0006CC 8D 83            [24] 1842 	mov	dph,r5
      0006CE 8E F0            [24] 1843 	mov	b,r6
      0006D0 EB               [12] 1844 	mov	a,r3
      0006D1 12 09 02         [24] 1845 	lcall	__gptrput
                                   1846 ;	main.c:176: if((*dato<limInf)||(*dato==0xFF)) *dato=limSup; // Si limInf==0 (*Dato)-- puede ser 0xFF.
      0006D4 8C 82            [24] 1847 	mov	dpl,r4
      0006D6 8D 83            [24] 1848 	mov	dph,r5
      0006D8 8E F0            [24] 1849 	mov	b,r6
      0006DA 12 09 1D         [24] 1850 	lcall	__gptrget
      0006DD FA               [12] 1851 	mov	r2,a
      0006DE C3               [12] 1852 	clr	c
      0006DF EB               [12] 1853 	mov	a,r3
      0006E0 9F               [12] 1854 	subb	a,r7
      0006E1 40 03            [24] 1855 	jc	00103$
      0006E3 BA FF 0B         [24] 1856 	cjne	r2,#0xff,00108$
      0006E6                       1857 00103$:
      0006E6 8C 82            [24] 1858 	mov	dpl,r4
      0006E8 8D 83            [24] 1859 	mov	dph,r5
      0006EA 8E F0            [24] 1860 	mov	b,r6
      0006EC E5 35            [12] 1861 	mov	a,_cicloTimeSet_PARM_2
      0006EE 12 09 02         [24] 1862 	lcall	__gptrput
      0006F1                       1863 00108$:
                                   1864 ;	main.c:178: LCD_gotoXY(lcdX, lcdY);
      0006F1 85 37 28         [24] 1865 	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
      0006F4 85 36 82         [24] 1866 	mov	dpl,_cicloTimeSet_PARM_3
      0006F7 C0 07            [24] 1867 	push	ar7
      0006F9 C0 06            [24] 1868 	push	ar6
      0006FB C0 05            [24] 1869 	push	ar5
      0006FD C0 04            [24] 1870 	push	ar4
      0006FF 12 04 0D         [24] 1871 	lcall	_LCD_gotoXY
      000702 D0 04            [24] 1872 	pop	ar4
      000704 D0 05            [24] 1873 	pop	ar5
      000706 D0 06            [24] 1874 	pop	ar6
                                   1875 ;	main.c:179: LCDPrintNumero(*dato);
      000708 8C 82            [24] 1876 	mov	dpl,r4
      00070A 8D 83            [24] 1877 	mov	dph,r5
      00070C 8E F0            [24] 1878 	mov	b,r6
      00070E 12 09 1D         [24] 1879 	lcall	__gptrget
      000711 F5 82            [12] 1880 	mov	dpl,a
      000713 C0 06            [24] 1881 	push	ar6
      000715 C0 05            [24] 1882 	push	ar5
      000717 C0 04            [24] 1883 	push	ar4
      000719 12 05 E5         [24] 1884 	lcall	_LCDPrintNumero
                                   1885 ;	main.c:180: delay_ms(TIEMPO_REPETICION);
      00071C 90 01 F4         [24] 1886 	mov	dptr,#0x01f4
      00071F 12 00 83         [24] 1887 	lcall	_delay_ms
      000722 D0 04            [24] 1888 	pop	ar4
      000724 D0 05            [24] 1889 	pop	ar5
      000726 D0 06            [24] 1890 	pop	ar6
      000728 D0 07            [24] 1891 	pop	ar7
      00072A 02 06 79         [24] 1892 	ljmp	00109$
      00072D                       1893 00111$:
                                   1894 ;	main.c:182: if(P_SET==0)
      00072D 20 A4 34         [24] 1895 	jb	_P2_4,00118$
                                   1896 ;	main.c:184: k++;
      000730 05 31            [12] 1897 	inc	_k
                                   1898 ;	main.c:185: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
      000732                       1899 00112$:
      000732 20 A4 14         [24] 1900 	jb	_P2_4,00114$
      000735 90 00 0A         [24] 1901 	mov	dptr,#0x000a
      000738 C0 06            [24] 1902 	push	ar6
      00073A C0 05            [24] 1903 	push	ar5
      00073C C0 04            [24] 1904 	push	ar4
      00073E 12 00 83         [24] 1905 	lcall	_delay_ms
      000741 D0 04            [24] 1906 	pop	ar4
      000743 D0 05            [24] 1907 	pop	ar5
      000745 D0 06            [24] 1908 	pop	ar6
      000747 80 E9            [24] 1909 	sjmp	00112$
      000749                       1910 00114$:
                                   1911 ;	main.c:186: if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
      000749 8C 82            [24] 1912 	mov	dpl,r4
      00074B 8D 83            [24] 1913 	mov	dph,r5
      00074D 8E F0            [24] 1914 	mov	b,r6
      00074F 12 09 1D         [24] 1915 	lcall	__gptrget
      000752 FF               [12] 1916 	mov	r7,a
      000753 C3               [12] 1917 	clr	c
      000754 E5 35            [12] 1918 	mov	a,_cicloTimeSet_PARM_2
      000756 9F               [12] 1919 	subb	a,r7
      000757 50 0B            [24] 1920 	jnc	00118$
      000759 8C 82            [24] 1921 	mov	dpl,r4
      00075B 8D 83            [24] 1922 	mov	dph,r5
      00075D 8E F0            [24] 1923 	mov	b,r6
      00075F E5 35            [12] 1924 	mov	a,_cicloTimeSet_PARM_2
      000761 12 09 02         [24] 1925 	lcall	__gptrput
      000764                       1926 00118$:
                                   1927 ;	main.c:189: LCD_gotoXY(++lcdX, lcdY);
      000764 05 36            [12] 1928 	inc	_cicloTimeSet_PARM_3
      000766 85 37 28         [24] 1929 	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
      000769 85 36 82         [24] 1930 	mov	dpl,_cicloTimeSet_PARM_3
      00076C 12 04 0D         [24] 1931 	lcall	_LCD_gotoXY
                                   1932 ;	main.c:190: LCD_cursorUnderline();
      00076F 02 04 4F         [24] 1933 	ljmp	_LCD_cursorUnderline
                                   1934 ;------------------------------------------------------------
                                   1935 ;Allocation info for local variables in function 'timeSet'
                                   1936 ;------------------------------------------------------------
                                   1937 ;	main.c:204: void timeSet(void)
                                   1938 ;	-----------------------------------------
                                   1939 ;	 function timeSet
                                   1940 ;	-----------------------------------------
      000772                       1941 _timeSet:
                                   1942 ;	main.c:213: LCD_gotoXY(7,1);           // Goto posición de Segundos en display.
      000772 75 28 01         [24] 1943 	mov	_LCD_gotoXY_PARM_2,#0x01
      000775 75 82 07         [24] 1944 	mov	dpl,#0x07
      000778 12 04 0D         [24] 1945 	lcall	_LCD_gotoXY
                                   1946 ;	main.c:214: LCD_print("00");           // 00 en posición de Segundos del display.
      00077B 90 09 67         [24] 1947 	mov	dptr,#___str_10
      00077E 75 F0 80         [24] 1948 	mov	b,#0x80
      000781 12 04 CA         [24] 1949 	lcall	_LCD_print
                                   1950 ;	main.c:215: LCD_cursorUnderline();     // Cursor On
      000784 12 04 4F         [24] 1951 	lcall	_LCD_cursorUnderline
                                   1952 ;	main.c:218: ahora.Segundo = 0;            // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
      000787 75 27 00         [24] 1953 	mov	(_ahora + 0x0006),#0x00
                                   1954 ;	main.c:219: while(k<SALIR_SET_TIME)
      00078A                       1955 00138$:
      00078A 74 F9            [12] 1956 	mov	a,#0x100 - 0x07
      00078C 25 31            [12] 1957 	add	a,_k
      00078E 50 03            [24] 1958 	jnc	00215$
      000790 02 08 A7         [24] 1959 	ljmp	00140$
      000793                       1960 00215$:
                                   1961 ;	main.c:221: while(k==SET_ANO)    cicloTimeSet(0,99,7,0,&ahora.Ano);            // Set año.
      000793                       1962 00101$:
      000793 74 01            [12] 1963 	mov	a,#0x01
      000795 B5 31 1A         [24] 1964 	cjne	a,_k,00104$
      000798 75 38 24         [24] 1965 	mov	_cicloTimeSet_PARM_5,#(_ahora + 0x0003)
      00079B 75 39 00         [24] 1966 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      00079E 75 3A 40         [24] 1967 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0007A1 75 35 63         [24] 1968 	mov	_cicloTimeSet_PARM_2,#0x63
      0007A4 75 36 07         [24] 1969 	mov	_cicloTimeSet_PARM_3,#0x07
      0007A7 75 37 00         [24] 1970 	mov	_cicloTimeSet_PARM_4,#0x00
      0007AA 75 82 00         [24] 1971 	mov	dpl,#0x00
      0007AD 12 06 71         [24] 1972 	lcall	_cicloTimeSet
                                   1973 ;	main.c:222: while(k==SET_MES)    cicloTimeSet(1,12,4,0,&ahora.Mes);            // Set mes.
      0007B0 80 E1            [24] 1974 	sjmp	00101$
      0007B2                       1975 00104$:
      0007B2 74 02            [12] 1976 	mov	a,#0x02
      0007B4 B5 31 1A         [24] 1977 	cjne	a,_k,00107$
      0007B7 75 38 23         [24] 1978 	mov	_cicloTimeSet_PARM_5,#(_ahora + 0x0002)
      0007BA 75 39 00         [24] 1979 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0007BD 75 3A 40         [24] 1980 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0007C0 75 35 0C         [24] 1981 	mov	_cicloTimeSet_PARM_2,#0x0c
      0007C3 75 36 04         [24] 1982 	mov	_cicloTimeSet_PARM_3,#0x04
      0007C6 75 37 00         [24] 1983 	mov	_cicloTimeSet_PARM_4,#0x00
      0007C9 75 82 01         [24] 1984 	mov	dpl,#0x01
      0007CC 12 06 71         [24] 1985 	lcall	_cicloTimeSet
                                   1986 ;	main.c:223: while(k==SET_DIA)    cicloTimeSet(1,diasDelMes(),1,0,&ahora.Dia);  // Set día.
      0007CF 80 E1            [24] 1987 	sjmp	00104$
      0007D1                       1988 00107$:
      0007D1 74 03            [12] 1989 	mov	a,#0x03
      0007D3 B5 31 1D         [24] 1990 	cjne	a,_k,00110$
      0007D6 12 05 B8         [24] 1991 	lcall	_diasDelMes
      0007D9 85 82 35         [24] 1992 	mov	_cicloTimeSet_PARM_2,dpl
      0007DC 75 38 22         [24] 1993 	mov	_cicloTimeSet_PARM_5,#(_ahora + 0x0001)
      0007DF 75 39 00         [24] 1994 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0007E2 75 3A 40         [24] 1995 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0007E5 75 36 01         [24] 1996 	mov	_cicloTimeSet_PARM_3,#0x01
      0007E8 75 37 00         [24] 1997 	mov	_cicloTimeSet_PARM_4,#0x00
      0007EB 75 82 01         [24] 1998 	mov	dpl,#0x01
      0007EE 12 06 71         [24] 1999 	lcall	_cicloTimeSet
                                   2000 ;	main.c:224: while(k==SET_HORA)   cicloTimeSet(0,23,1,1,&ahora.Hora);           // Set hora.
      0007F1 80 DE            [24] 2001 	sjmp	00107$
      0007F3                       2002 00110$:
      0007F3 74 04            [12] 2003 	mov	a,#0x04
      0007F5 B5 31 1A         [24] 2004 	cjne	a,_k,00113$
      0007F8 75 38 25         [24] 2005 	mov	_cicloTimeSet_PARM_5,#(_ahora + 0x0004)
      0007FB 75 39 00         [24] 2006 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0007FE 75 3A 40         [24] 2007 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000801 75 35 17         [24] 2008 	mov	_cicloTimeSet_PARM_2,#0x17
      000804 75 36 01         [24] 2009 	mov	_cicloTimeSet_PARM_3,#0x01
      000807 75 37 01         [24] 2010 	mov	_cicloTimeSet_PARM_4,#0x01
      00080A 75 82 00         [24] 2011 	mov	dpl,#0x00
      00080D 12 06 71         [24] 2012 	lcall	_cicloTimeSet
                                   2013 ;	main.c:225: while(k==SET_MINUTO) cicloTimeSet(0,59,4,1,&ahora.Minuto);         // Set minutos.
      000810 80 E1            [24] 2014 	sjmp	00110$
      000812                       2015 00113$:
      000812 74 05            [12] 2016 	mov	a,#0x05
      000814 B5 31 1A         [24] 2017 	cjne	a,_k,00135$
      000817 75 38 26         [24] 2018 	mov	_cicloTimeSet_PARM_5,#(_ahora + 0x0005)
      00081A 75 39 00         [24] 2019 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      00081D 75 3A 40         [24] 2020 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000820 75 35 3B         [24] 2021 	mov	_cicloTimeSet_PARM_2,#0x3b
      000823 75 36 04         [24] 2022 	mov	_cicloTimeSet_PARM_3,#0x04
      000826 75 37 01         [24] 2023 	mov	_cicloTimeSet_PARM_4,#0x01
      000829 75 82 00         [24] 2024 	mov	dpl,#0x00
      00082C 12 06 71         [24] 2025 	lcall	_cicloTimeSet
                                   2026 ;	main.c:226: while(k==SET_DIA_SEM)                                             // Set día de la semana.
      00082F 80 E1            [24] 2027 	sjmp	00113$
      000831                       2028 00135$:
      000831 74 06            [12] 2029 	mov	a,#0x06
      000833 B5 31 02         [24] 2030 	cjne	a,_k,00226$
      000836 80 03            [24] 2031 	sjmp	00227$
      000838                       2032 00226$:
      000838 02 07 8A         [24] 2033 	ljmp	00138$
      00083B                       2034 00227$:
                                   2035 ;	main.c:231: if(P_INC==0)
      00083B 20 A2 25         [24] 2036 	jb	_P2_2,00122$
                                   2037 ;	main.c:233: ahora.DiaSemana++;
      00083E E5 21            [12] 2038 	mov	a,_ahora
      000840 FF               [12] 2039 	mov	r7,a
      000841 04               [12] 2040 	inc	a
      000842 F5 21            [12] 2041 	mov	_ahora,a
                                   2042 ;	main.c:234: while(P_INC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
      000844                       2043 00116$:
      000844 20 A2 08         [24] 2044 	jb	_P2_2,00118$
      000847 90 00 0A         [24] 2045 	mov	dptr,#0x000a
      00084A 12 00 83         [24] 2046 	lcall	_delay_ms
      00084D 80 F5            [24] 2047 	sjmp	00116$
      00084F                       2048 00118$:
                                   2049 ;	main.c:235: if(ahora.DiaSemana==8)
      00084F 74 08            [12] 2050 	mov	a,#0x08
      000851 B5 21 03         [24] 2051 	cjne	a,_ahora,00120$
                                   2052 ;	main.c:237: ahora.DiaSemana=1;
      000854 75 21 01         [24] 2053 	mov	_ahora,#0x01
      000857                       2054 00120$:
                                   2055 ;	main.c:239: LCD_gotoXY(12,0);
      000857 75 28 00         [24] 2056 	mov	_LCD_gotoXY_PARM_2,#0x00
      00085A 75 82 0C         [24] 2057 	mov	dpl,#0x0c
      00085D 12 04 0D         [24] 2058 	lcall	_LCD_gotoXY
                                   2059 ;	main.c:240: LCDPrintDiaSemana();
      000860 12 05 49         [24] 2060 	lcall	_LCDPrintDiaSemana
      000863                       2061 00122$:
                                   2062 ;	main.c:242: if(P_DEC==0)
      000863 20 A3 24         [24] 2063 	jb	_P2_3,00129$
                                   2064 ;	main.c:244: ahora.DiaSemana--;
      000866 E5 21            [12] 2065 	mov	a,_ahora
      000868 FF               [12] 2066 	mov	r7,a
      000869 14               [12] 2067 	dec	a
      00086A F5 21            [12] 2068 	mov	_ahora,a
                                   2069 ;	main.c:245: while(P_DEC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
      00086C                       2070 00123$:
      00086C 20 A3 08         [24] 2071 	jb	_P2_3,00125$
      00086F 90 00 0A         [24] 2072 	mov	dptr,#0x000a
      000872 12 00 83         [24] 2073 	lcall	_delay_ms
      000875 80 F5            [24] 2074 	sjmp	00123$
      000877                       2075 00125$:
                                   2076 ;	main.c:246: if(ahora.DiaSemana==0)
      000877 E5 21            [12] 2077 	mov	a,_ahora
      000879 70 03            [24] 2078 	jnz	00127$
                                   2079 ;	main.c:248: ahora.DiaSemana=7;
      00087B 75 21 07         [24] 2080 	mov	_ahora,#0x07
      00087E                       2081 00127$:
                                   2082 ;	main.c:250: LCD_gotoXY(12,0);
      00087E 75 28 00         [24] 2083 	mov	_LCD_gotoXY_PARM_2,#0x00
      000881 75 82 0C         [24] 2084 	mov	dpl,#0x0c
      000884 12 04 0D         [24] 2085 	lcall	_LCD_gotoXY
                                   2086 ;	main.c:251: LCDPrintDiaSemana();
      000887 12 05 49         [24] 2087 	lcall	_LCDPrintDiaSemana
      00088A                       2088 00129$:
                                   2089 ;	main.c:253: if(P_SET==0)
      00088A 20 A4 0E         [24] 2090 	jb	_P2_4,00134$
                                   2091 ;	main.c:255: k=SALIR_SET_TIME;
      00088D 75 31 07         [24] 2092 	mov	_k,#0x07
                                   2093 ;	main.c:256: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
      000890                       2094 00130$:
      000890 20 A4 08         [24] 2095 	jb	_P2_4,00134$
      000893 90 00 0A         [24] 2096 	mov	dptr,#0x000a
      000896 12 00 83         [24] 2097 	lcall	_delay_ms
      000899 80 F5            [24] 2098 	sjmp	00130$
      00089B                       2099 00134$:
                                   2100 ;	main.c:258: LCD_gotoXY(14,0);
      00089B 75 28 00         [24] 2101 	mov	_LCD_gotoXY_PARM_2,#0x00
      00089E 75 82 0E         [24] 2102 	mov	dpl,#0x0e
      0008A1 12 04 0D         [24] 2103 	lcall	_LCD_gotoXY
      0008A4 02 08 31         [24] 2104 	ljmp	00135$
      0008A7                       2105 00140$:
                                   2106 ;	main.c:261: LCD_cursorOff();
      0008A7 02 04 61         [24] 2107 	ljmp	_LCD_cursorOff
                                   2108 ;------------------------------------------------------------
                                   2109 ;Allocation info for local variables in function 'setup'
                                   2110 ;------------------------------------------------------------
                                   2111 ;	main.c:271: void setup(void)
                                   2112 ;	-----------------------------------------
                                   2113 ;	 function setup
                                   2114 ;	-----------------------------------------
      0008AA                       2115 _setup:
                                   2116 ;	main.c:273: P_INC = 1;   // Configura Pulsadores como Entradas Digitales.
      0008AA D2 A2            [12] 2117 	setb	_P2_2
                                   2118 ;	main.c:274: P_DEC = 1;
      0008AC D2 A3            [12] 2119 	setb	_P2_3
                                   2120 ;	main.c:275: P_SET = 1;
      0008AE D2 A4            [12] 2121 	setb	_P2_4
                                   2122 ;	main.c:277: LCD_init();  // Inicializa display LCD.
      0008B0 02 04 F5         [24] 2123 	ljmp	_LCD_init
                                   2124 ;------------------------------------------------------------
                                   2125 ;Allocation info for local variables in function 'main'
                                   2126 ;------------------------------------------------------------
                                   2127 ;	main.c:286: void main(void)
                                   2128 ;	-----------------------------------------
                                   2129 ;	 function main
                                   2130 ;	-----------------------------------------
      0008B3                       2131 _main:
                                   2132 ;	main.c:288: setup();
      0008B3 12 08 AA         [24] 2133 	lcall	_setup
                                   2134 ;	main.c:290: while(1)
      0008B6                       2135 00110$:
                                   2136 ;	main.c:292: if(P_SET==0)                          // Comprueba si se ha pulsado SET
      0008B6 20 A4 1A         [24] 2137 	jb	_P2_4,00105$
                                   2138 ;	main.c:294: k=1;
      0008B9 75 31 01         [24] 2139 	mov	_k,#0x01
                                   2140 ;	main.c:295: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera fin pulsación y antirebote mecánico.
      0008BC                       2141 00101$:
      0008BC 20 A4 08         [24] 2142 	jb	_P2_4,00103$
      0008BF 90 00 0A         [24] 2143 	mov	dptr,#0x000a
      0008C2 12 00 83         [24] 2144 	lcall	_delay_ms
      0008C5 80 F5            [24] 2145 	sjmp	00101$
      0008C7                       2146 00103$:
                                   2147 ;	main.c:296: timeSet();
      0008C7 12 07 72         [24] 2148 	lcall	_timeSet
                                   2149 ;	main.c:297: DS1307_timeWrite(&ahora);
      0008CA 90 00 21         [24] 2150 	mov	dptr,#_ahora
      0008CD 75 F0 40         [24] 2151 	mov	b,#0x40
      0008D0 12 02 9F         [24] 2152 	lcall	_DS1307_timeWrite
      0008D3                       2153 00105$:
                                   2154 ;	main.c:300: DS1307_timeRead(&ahora);
      0008D3 90 00 21         [24] 2155 	mov	dptr,#_ahora
      0008D6 75 F0 40         [24] 2156 	mov	b,#0x40
      0008D9 12 01 2B         [24] 2157 	lcall	_DS1307_timeRead
                                   2158 ;	main.c:304: if(ahora.Segundo != timeSec_old)
      0008DC E5 32            [12] 2159 	mov	a,_timeSec_old
      0008DE B5 27 02         [24] 2160 	cjne	a,(_ahora + 0x0006),00131$
      0008E1 80 0E            [24] 2161 	sjmp	00107$
      0008E3                       2162 00131$:
                                   2163 ;	main.c:306: timeShow();      // Actualiza display LCD con fecha y hora.
      0008E3 12 06 05         [24] 2164 	lcall	_timeShow
                                   2165 ;	main.c:307: timeSec_old = ahora.Segundo;
      0008E6 85 27 32         [24] 2166 	mov	_timeSec_old,(_ahora + 0x0006)
                                   2167 ;	main.c:308: refresco    = 800;
      0008E9 75 33 20         [24] 2168 	mov	_refresco,#0x20
      0008EC 75 34 03         [24] 2169 	mov	(_refresco + 1),#0x03
      0008EF 80 06            [24] 2170 	sjmp	00108$
      0008F1                       2171 00107$:
                                   2172 ;	main.c:310: else refresco = 50;
      0008F1 75 33 32         [24] 2173 	mov	_refresco,#0x32
      0008F4 75 34 00         [24] 2174 	mov	(_refresco + 1),#0x00
      0008F7                       2175 00108$:
                                   2176 ;	main.c:311: delay_ms(refresco);
      0008F7 85 33 82         [24] 2177 	mov	dpl,_refresco
      0008FA 85 34 83         [24] 2178 	mov	dph,(_refresco + 1)
      0008FD 12 00 83         [24] 2179 	lcall	_delay_ms
      000900 80 B4            [24] 2180 	sjmp	00110$
                                   2181 	.area CSEG    (CODE)
                                   2182 	.area CONST   (CODE)
      00093D                       2183 ___str_0:
      00093D 44 4F 4D              2184 	.ascii "DOM"
      000940 00                    2185 	.db 0x00
      000941                       2186 ___str_1:
      000941 4C 55 4E              2187 	.ascii "LUN"
      000944 00                    2188 	.db 0x00
      000945                       2189 ___str_2:
      000945 4D 41 52              2190 	.ascii "MAR"
      000948 00                    2191 	.db 0x00
      000949                       2192 ___str_3:
      000949 4D 49 45              2193 	.ascii "MIE"
      00094C 00                    2194 	.db 0x00
      00094D                       2195 ___str_4:
      00094D 4A 55 45              2196 	.ascii "JUE"
      000950 00                    2197 	.db 0x00
      000951                       2198 ___str_5:
      000951 56 49 45              2199 	.ascii "VIE"
      000954 00                    2200 	.db 0x00
      000955                       2201 ___str_6:
      000955 53 41 42              2202 	.ascii "SAB"
      000958 00                    2203 	.db 0x00
      000959                       2204 ___str_7:
      000959 20 20 20              2205 	.ascii "   "
      00095C 00                    2206 	.db 0x00
      00095D                       2207 ___str_8:
      00095D 20                    2208 	.ascii " "
      00095E 00                    2209 	.db 0x00
      00095F                       2210 ___str_9:
      00095F 20 20 20 20 20 20 20  2211 	.ascii "       "
      000966 00                    2212 	.db 0x00
      000967                       2213 ___str_10:
      000967 30 30                 2214 	.ascii "00"
      000969 00                    2215 	.db 0x00
                                   2216 	.area XINIT   (CODE)
                                   2217 	.area CABS    (ABS,CODE)
