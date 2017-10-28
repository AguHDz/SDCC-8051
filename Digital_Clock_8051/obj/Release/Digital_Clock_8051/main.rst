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
                                     40 	.globl _LCD_enablePulse
                                     41 	.globl _DS1307_timeWrite
                                     42 	.globl _DS1307_timeRead
                                     43 	.globl _decimalToBCD
                                     44 	.globl _BCDToDecimal
                                     45 	.globl _I2C_read
                                     46 	.globl _I2C_send
                                     47 	.globl _I2C_stop
                                     48 	.globl _I2C_start
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _TH2
                                    143 	.globl _TL2
                                    144 	.globl _RCAP2H
                                    145 	.globl _RCAP2L
                                    146 	.globl _T2CON
                                    147 	.globl _B
                                    148 	.globl _ACC
                                    149 	.globl _PSW
                                    150 	.globl _IP
                                    151 	.globl _P3
                                    152 	.globl _IE
                                    153 	.globl _P2
                                    154 	.globl _SBUF
                                    155 	.globl _SCON
                                    156 	.globl _P1
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TL1
                                    160 	.globl _TL0
                                    161 	.globl _TMOD
                                    162 	.globl _TCON
                                    163 	.globl _PCON
                                    164 	.globl _DPH
                                    165 	.globl _DPL
                                    166 	.globl _SP
                                    167 	.globl _P0
                                    168 	.globl _ack
                                    169 	.globl _I2C_read_PARM_1
                                    170 	.globl _cicloTimeSet_PARM_5
                                    171 	.globl _cicloTimeSet_PARM_4
                                    172 	.globl _cicloTimeSet_PARM_3
                                    173 	.globl _cicloTimeSet_PARM_2
                                    174 	.globl _refresco
                                    175 	.globl _timeSec_old
                                    176 	.globl _k
                                    177 	.globl _LCD_createChar_PARM_9
                                    178 	.globl _LCD_createChar_PARM_8
                                    179 	.globl _LCD_createChar_PARM_7
                                    180 	.globl _LCD_createChar_PARM_6
                                    181 	.globl _LCD_createChar_PARM_5
                                    182 	.globl _LCD_createChar_PARM_4
                                    183 	.globl _LCD_createChar_PARM_3
                                    184 	.globl _LCD_createChar_PARM_2
                                    185 	.globl _LCD_gotoXY_PARM_2
                                    186 	.globl _DS1307_time
                                    187 	.globl _delay_x10_cycles
                                    188 	.globl _delay_ms
                                    189 ;--------------------------------------------------------
                                    190 ; special function registers
                                    191 ;--------------------------------------------------------
                                    192 	.area RSEG    (ABS,DATA)
      000000                        193 	.org 0x0000
                           000080   194 _P0	=	0x0080
                           000081   195 _SP	=	0x0081
                           000082   196 _DPL	=	0x0082
                           000083   197 _DPH	=	0x0083
                           000087   198 _PCON	=	0x0087
                           000088   199 _TCON	=	0x0088
                           000089   200 _TMOD	=	0x0089
                           00008A   201 _TL0	=	0x008a
                           00008B   202 _TL1	=	0x008b
                           00008C   203 _TH0	=	0x008c
                           00008D   204 _TH1	=	0x008d
                           000090   205 _P1	=	0x0090
                           000098   206 _SCON	=	0x0098
                           000099   207 _SBUF	=	0x0099
                           0000A0   208 _P2	=	0x00a0
                           0000A8   209 _IE	=	0x00a8
                           0000B0   210 _P3	=	0x00b0
                           0000B8   211 _IP	=	0x00b8
                           0000D0   212 _PSW	=	0x00d0
                           0000E0   213 _ACC	=	0x00e0
                           0000F0   214 _B	=	0x00f0
                           0000C8   215 _T2CON	=	0x00c8
                           0000CA   216 _RCAP2L	=	0x00ca
                           0000CB   217 _RCAP2H	=	0x00cb
                           0000CC   218 _TL2	=	0x00cc
                           0000CD   219 _TH2	=	0x00cd
                                    220 ;--------------------------------------------------------
                                    221 ; special function bits
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 _P0_0	=	0x0080
                           000081   226 _P0_1	=	0x0081
                           000082   227 _P0_2	=	0x0082
                           000083   228 _P0_3	=	0x0083
                           000084   229 _P0_4	=	0x0084
                           000085   230 _P0_5	=	0x0085
                           000086   231 _P0_6	=	0x0086
                           000087   232 _P0_7	=	0x0087
                           000088   233 _IT0	=	0x0088
                           000089   234 _IE0	=	0x0089
                           00008A   235 _IT1	=	0x008a
                           00008B   236 _IE1	=	0x008b
                           00008C   237 _TR0	=	0x008c
                           00008D   238 _TF0	=	0x008d
                           00008E   239 _TR1	=	0x008e
                           00008F   240 _TF1	=	0x008f
                           000090   241 _P1_0	=	0x0090
                           000091   242 _P1_1	=	0x0091
                           000092   243 _P1_2	=	0x0092
                           000093   244 _P1_3	=	0x0093
                           000094   245 _P1_4	=	0x0094
                           000095   246 _P1_5	=	0x0095
                           000096   247 _P1_6	=	0x0096
                           000097   248 _P1_7	=	0x0097
                           000098   249 _RI	=	0x0098
                           000099   250 _TI	=	0x0099
                           00009A   251 _RB8	=	0x009a
                           00009B   252 _TB8	=	0x009b
                           00009C   253 _REN	=	0x009c
                           00009D   254 _SM2	=	0x009d
                           00009E   255 _SM1	=	0x009e
                           00009F   256 _SM0	=	0x009f
                           0000A0   257 _P2_0	=	0x00a0
                           0000A1   258 _P2_1	=	0x00a1
                           0000A2   259 _P2_2	=	0x00a2
                           0000A3   260 _P2_3	=	0x00a3
                           0000A4   261 _P2_4	=	0x00a4
                           0000A5   262 _P2_5	=	0x00a5
                           0000A6   263 _P2_6	=	0x00a6
                           0000A7   264 _P2_7	=	0x00a7
                           0000A8   265 _EX0	=	0x00a8
                           0000A9   266 _ET0	=	0x00a9
                           0000AA   267 _EX1	=	0x00aa
                           0000AB   268 _ET1	=	0x00ab
                           0000AC   269 _ES	=	0x00ac
                           0000AF   270 _EA	=	0x00af
                           0000B0   271 _P3_0	=	0x00b0
                           0000B1   272 _P3_1	=	0x00b1
                           0000B2   273 _P3_2	=	0x00b2
                           0000B3   274 _P3_3	=	0x00b3
                           0000B4   275 _P3_4	=	0x00b4
                           0000B5   276 _P3_5	=	0x00b5
                           0000B6   277 _P3_6	=	0x00b6
                           0000B7   278 _P3_7	=	0x00b7
                           0000B0   279 _RXD	=	0x00b0
                           0000B1   280 _TXD	=	0x00b1
                           0000B2   281 _INT0	=	0x00b2
                           0000B3   282 _INT1	=	0x00b3
                           0000B4   283 _T0	=	0x00b4
                           0000B5   284 _T1	=	0x00b5
                           0000B6   285 _WR	=	0x00b6
                           0000B7   286 _RD	=	0x00b7
                           0000B8   287 _PX0	=	0x00b8
                           0000B9   288 _PT0	=	0x00b9
                           0000BA   289 _PX1	=	0x00ba
                           0000BB   290 _PT1	=	0x00bb
                           0000BC   291 _PS	=	0x00bc
                           0000D0   292 _P	=	0x00d0
                           0000D1   293 _F1	=	0x00d1
                           0000D2   294 _OV	=	0x00d2
                           0000D3   295 _RS0	=	0x00d3
                           0000D4   296 _RS1	=	0x00d4
                           0000D5   297 _F0	=	0x00d5
                           0000D6   298 _AC	=	0x00d6
                           0000D7   299 _CY	=	0x00d7
                           0000AD   300 _ET2	=	0x00ad
                           0000BD   301 _PT2	=	0x00bd
                           0000C8   302 _T2CON_0	=	0x00c8
                           0000C9   303 _T2CON_1	=	0x00c9
                           0000CA   304 _T2CON_2	=	0x00ca
                           0000CB   305 _T2CON_3	=	0x00cb
                           0000CC   306 _T2CON_4	=	0x00cc
                           0000CD   307 _T2CON_5	=	0x00cd
                           0000CE   308 _T2CON_6	=	0x00ce
                           0000CF   309 _T2CON_7	=	0x00cf
                           0000C8   310 _CP_RL2	=	0x00c8
                           0000C9   311 _C_T2	=	0x00c9
                           0000CA   312 _TR2	=	0x00ca
                           0000CB   313 _EXEN2	=	0x00cb
                           0000CC   314 _TCLK	=	0x00cc
                           0000CD   315 _RCLK	=	0x00cd
                           0000CE   316 _EXF2	=	0x00ce
                           0000CF   317 _TF2	=	0x00cf
                                    318 ;--------------------------------------------------------
                                    319 ; overlayable register banks
                                    320 ;--------------------------------------------------------
                                    321 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        322 	.ds 8
                                    323 ;--------------------------------------------------------
                                    324 ; internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area DSEG    (DATA)
      000021                        327 _DS1307_time::
      000021                        328 	.ds 7
      000028                        329 _LCD_gotoXY_PARM_2:
      000028                        330 	.ds 1
      000029                        331 _LCD_createChar_PARM_2:
      000029                        332 	.ds 1
      00002A                        333 _LCD_createChar_PARM_3:
      00002A                        334 	.ds 1
      00002B                        335 _LCD_createChar_PARM_4:
      00002B                        336 	.ds 1
      00002C                        337 _LCD_createChar_PARM_5:
      00002C                        338 	.ds 1
      00002D                        339 _LCD_createChar_PARM_6:
      00002D                        340 	.ds 1
      00002E                        341 _LCD_createChar_PARM_7:
      00002E                        342 	.ds 1
      00002F                        343 _LCD_createChar_PARM_8:
      00002F                        344 	.ds 1
      000030                        345 _LCD_createChar_PARM_9:
      000030                        346 	.ds 1
      000031                        347 _k::
      000031                        348 	.ds 1
      000032                        349 _timeSec_old::
      000032                        350 	.ds 1
      000033                        351 _refresco::
      000033                        352 	.ds 2
      000035                        353 _cicloTimeSet_PARM_2:
      000035                        354 	.ds 1
      000036                        355 _cicloTimeSet_PARM_3:
      000036                        356 	.ds 1
      000037                        357 _cicloTimeSet_PARM_4:
      000037                        358 	.ds 1
      000038                        359 _cicloTimeSet_PARM_5:
      000038                        360 	.ds 3
                                    361 ;--------------------------------------------------------
                                    362 ; overlayable items in internal ram 
                                    363 ;--------------------------------------------------------
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
      000000                        389 _I2C_send_ACKbit_1_26:
      000000                        390 	.ds 1
      000001                        391 _I2C_read_PARM_1:
      000001                        392 	.ds 1
      000002                        393 _LCD_send4Bits_sloc0_1_0:
      000002                        394 	.ds 1
      000003                        395 _ack::
      000003                        396 	.ds 1
                                    397 ;--------------------------------------------------------
                                    398 ; paged external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area PSEG    (PAG,XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XSEG    (XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; absolute external ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XABS    (ABS,XDATA)
                                    409 ;--------------------------------------------------------
                                    410 ; external initialized ram data
                                    411 ;--------------------------------------------------------
                                    412 	.area XISEG   (XDATA)
                                    413 	.area HOME    (CODE)
                                    414 	.area GSINIT0 (CODE)
                                    415 	.area GSINIT1 (CODE)
                                    416 	.area GSINIT2 (CODE)
                                    417 	.area GSINIT3 (CODE)
                                    418 	.area GSINIT4 (CODE)
                                    419 	.area GSINIT5 (CODE)
                                    420 	.area GSINIT  (CODE)
                                    421 	.area GSFINAL (CODE)
                                    422 	.area CSEG    (CODE)
                                    423 ;--------------------------------------------------------
                                    424 ; interrupt vector 
                                    425 ;--------------------------------------------------------
                                    426 	.area HOME    (CODE)
      000000                        427 __interrupt_vect:
      000000 02 00 06         [24]  428 	ljmp	__sdcc_gsinit_startup
                                    429 ;--------------------------------------------------------
                                    430 ; global & static initialisations
                                    431 ;--------------------------------------------------------
                                    432 	.area HOME    (CODE)
                                    433 	.area GSINIT  (CODE)
                                    434 	.area GSFINAL (CODE)
                                    435 	.area GSINIT  (CODE)
                                    436 	.globl __sdcc_gsinit_startup
                                    437 	.globl __sdcc_program_startup
                                    438 	.globl __start__stack
                                    439 	.globl __mcs51_genXINIT
                                    440 	.globl __mcs51_genXRAMCLEAR
                                    441 	.globl __mcs51_genRAMCLEAR
                                    442 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  443 	ljmp	__sdcc_program_startup
                                    444 ;--------------------------------------------------------
                                    445 ; Home
                                    446 ;--------------------------------------------------------
                                    447 	.area HOME    (CODE)
                                    448 	.area HOME    (CODE)
      000003                        449 __sdcc_program_startup:
      000003 02 06 D8         [24]  450 	ljmp	_main
                                    451 ;	return from main will return to caller
                                    452 ;--------------------------------------------------------
                                    453 ; code
                                    454 ;--------------------------------------------------------
                                    455 	.area CSEG    (CODE)
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'delay_x10_cycles'
                                    458 ;------------------------------------------------------------
                                    459 ;x10cycles                 Allocated to registers 
                                    460 ;------------------------------------------------------------
                                    461 ;	../Libs/delay.c:48: void delay_x10_cycles(uint8_t x10cycles)
                                    462 ;	-----------------------------------------
                                    463 ;	 function delay_x10_cycles
                                    464 ;	-----------------------------------------
      000062                        465 _delay_x10_cycles:
                           000007   466 	ar7 = 0x07
                           000006   467 	ar6 = 0x06
                           000005   468 	ar5 = 0x05
                           000004   469 	ar4 = 0x04
                           000003   470 	ar3 = 0x03
                           000002   471 	ar2 = 0x02
                           000001   472 	ar1 = 0x01
                           000000   473 	ar0 = 0x00
                                    474 ;	../Libs/delay.c:66: __endasm;
      000062 AF 82            [24]  475 	mov	r7,dpl
      000064 1F               [12]  476 	dec	r7
      000065 EF               [12]  477 	mov	a, r7
      000066 60 07            [24]  478 	jz	end_delay_x10_cycles
      000068                        479 	    loop_delay_x10_cycles:
      000068 7E 03            [12]  480 	mov	r6,#3
      00006A                        481 	    loop_delay_10_cycles:
      00006A DE FE            [24]  482 	djnz	r6,loop_delay_10_cycles
      00006C 00               [12]  483 	nop
      00006D DF F9            [24]  484 	djnz	r7,loop_delay_x10_cycles
      00006F                        485 	    end_delay_x10_cycles:
      00006F 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'delay_ms'
                                    489 ;------------------------------------------------------------
                                    490 ;delayTimeMS               Allocated to registers 
                                    491 ;------------------------------------------------------------
                                    492 ;	../Libs/delay.c:98: void delay_ms(uint16_t delayTimeMS)
                                    493 ;	-----------------------------------------
                                    494 ;	 function delay_ms
                                    495 ;	-----------------------------------------
      000070                        496 _delay_ms:
                                    497 ;	../Libs/delay.c:127: __endasm;
      000070 C0 07            [24]  498 	push	ar7
      000072 C0 06            [24]  499 	push	ar6
      000074 C0 05            [24]  500 	push	ar5
      000076 C0 04            [24]  501 	push	ar4
      000078 C0 03            [24]  502 	push	ar3
      00007A AB 82            [24]  503 	mov	r3,dpl
      00007C AC 83            [24]  504 	mov	r4,dph
      00007E                        505 	    delay_ms_lib_loop:
      00007E 1B               [12]  506 	dec	r3
      00007F BB FF 01         [24]  507 	cjne	r3,#0xff,delay_ms_lib_seguir
      000082 1C               [12]  508 	dec	r4
      000083                        509 	    delay_ms_lib_seguir:
      000083 EB               [12]  510 	mov	a,r3
      000084 4C               [12]  511 	orl	a,r4
      000085 60 08            [24]  512 	jz	delay_ms_lib_fin
                                    513 ;	../Libs/delay.c:129: CALL_DELAY_MS;
      000087 75 82 3F         [24]  514 	mov	dpl,#0x3f
      00008A 12 00 62         [24]  515 	lcall	_delay_x10_cycles
                                    516 ;	../Libs/delay.c:139: __endasm;
      00008D 80 EF            [24]  517 	sjmp	delay_ms_lib_loop
      00008F                        518 	    delay_ms_lib_fin:
      00008F D0 03            [24]  519 	pop	ar3
      000091 D0 04            [24]  520 	pop	ar4
      000093 D0 05            [24]  521 	pop	ar5
      000095 D0 06            [24]  522 	pop	ar6
      000097 D0 07            [24]  523 	pop	ar7
      000099 22               [24]  524 	ret
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'I2C_start'
                                    527 ;------------------------------------------------------------
                                    528 ;	../Libs/I2C.c:9: void I2C_start(void)
                                    529 ;	-----------------------------------------
                                    530 ;	 function I2C_start
                                    531 ;	-----------------------------------------
      00009A                        532 _I2C_start:
                                    533 ;	../Libs/I2C.c:11: SDA=1;    //"start" function for communicate I2C
      00009A D2 90            [12]  534 	setb	_P1_0
                                    535 ;	../Libs/I2C.c:12: SCL=1;
      00009C D2 91            [12]  536 	setb	_P1_1
                                    537 ;	../Libs/I2C.c:13: SDA=0;
      00009E C2 90            [12]  538 	clr	_P1_0
                                    539 ;	../Libs/I2C.c:14: SCL=0;
      0000A0 C2 91            [12]  540 	clr	_P1_1
      0000A2 22               [24]  541 	ret
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'I2C_stop'
                                    544 ;------------------------------------------------------------
                                    545 ;	../Libs/I2C.c:17: void I2C_stop(void)
                                    546 ;	-----------------------------------------
                                    547 ;	 function I2C_stop
                                    548 ;	-----------------------------------------
      0000A3                        549 _I2C_stop:
                                    550 ;	../Libs/I2C.c:19: SDA=0;
      0000A3 C2 90            [12]  551 	clr	_P1_0
                                    552 ;	../Libs/I2C.c:20: SCL=1;
      0000A5 D2 91            [12]  553 	setb	_P1_1
                                    554 ;	../Libs/I2C.c:21: SDA=1;   //"stop" function for communicate I2C
      0000A7 D2 90            [12]  555 	setb	_P1_0
      0000A9 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'I2C_send'
                                    559 ;------------------------------------------------------------
                                    560 ;dato                      Allocated to registers r7 
                                    561 ;i                         Allocated to registers r6 
                                    562 ;------------------------------------------------------------
                                    563 ;	../Libs/I2C.c:24: bool I2C_send(uint8_t dato)             //send data to I2C
                                    564 ;	-----------------------------------------
                                    565 ;	 function I2C_send
                                    566 ;	-----------------------------------------
      0000AA                        567 _I2C_send:
      0000AA AF 82            [24]  568 	mov	r7,dpl
                                    569 ;	../Libs/I2C.c:28: for(i=0; i<8; i++)
      0000AC 7E 00            [12]  570 	mov	r6,#0x00
      0000AE                        571 00105$:
                                    572 ;	../Libs/I2C.c:30: if(dato & BIT7) SDA=1;
      0000AE EF               [12]  573 	mov	a,r7
      0000AF 30 E7 04         [24]  574 	jnb	acc.7,00102$
      0000B2 D2 90            [12]  575 	setb	_P1_0
      0000B4 80 02            [24]  576 	sjmp	00103$
      0000B6                        577 00102$:
                                    578 ;	../Libs/I2C.c:31: else SDA=0;
      0000B6 C2 90            [12]  579 	clr	_P1_0
      0000B8                        580 00103$:
                                    581 ;	../Libs/I2C.c:32: SCL=1;
      0000B8 D2 91            [12]  582 	setb	_P1_1
                                    583 ;	../Libs/I2C.c:33: dato<<=1;
      0000BA EF               [12]  584 	mov	a,r7
      0000BB 2F               [12]  585 	add	a,r7
      0000BC FF               [12]  586 	mov	r7,a
                                    587 ;	../Libs/I2C.c:34: SCL=0;
      0000BD C2 91            [12]  588 	clr	_P1_1
                                    589 ;	../Libs/I2C.c:28: for(i=0; i<8; i++)
      0000BF 0E               [12]  590 	inc	r6
      0000C0 BE 08 00         [24]  591 	cjne	r6,#0x08,00120$
      0000C3                        592 00120$:
      0000C3 40 E9            [24]  593 	jc	00105$
                                    594 ;	../Libs/I2C.c:36: SDA=1;
      0000C5 D2 90            [12]  595 	setb	_P1_0
                                    596 ;	../Libs/I2C.c:37: SCL=1;
      0000C7 D2 91            [12]  597 	setb	_P1_1
                                    598 ;	../Libs/I2C.c:38: ACKbit=SDA;
      0000C9 A2 90            [12]  599 	mov	c,_P1_0
      0000CB 92 00            [24]  600 	mov	_I2C_send_ACKbit_1_26,c
                                    601 ;	../Libs/I2C.c:39: SCL=0;
      0000CD C2 91            [12]  602 	clr	_P1_1
                                    603 ;	../Libs/I2C.c:40: return ACKbit;
      0000CF A2 00            [12]  604 	mov	c,_I2C_send_ACKbit_1_26
      0000D1 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'I2C_read'
                                    608 ;------------------------------------------------------------
                                    609 ;i                         Allocated to registers r6 
                                    610 ;dato                      Allocated to registers r7 
                                    611 ;------------------------------------------------------------
                                    612 ;	../Libs/I2C.c:43: uint8_t I2C_read(bool ACKBit)                      //receive data from I2C
                                    613 ;	-----------------------------------------
                                    614 ;	 function I2C_read
                                    615 ;	-----------------------------------------
      0000D2                        616 _I2C_read:
                                    617 ;	../Libs/I2C.c:46: uint8_t dato=0;
      0000D2 7F 00            [12]  618 	mov	r7,#0x00
                                    619 ;	../Libs/I2C.c:47: SDA=1;
      0000D4 D2 90            [12]  620 	setb	_P1_0
                                    621 ;	../Libs/I2C.c:48: for(i=0; i<8; i++)
      0000D6 7E 00            [12]  622 	mov	r6,#0x00
      0000D8                        623 00110$:
                                    624 ;	../Libs/I2C.c:50: dato<<=1;
      0000D8 EF               [12]  625 	mov	a,r7
      0000D9 2F               [12]  626 	add	a,r7
      0000DA FF               [12]  627 	mov	r7,a
                                    628 ;	../Libs/I2C.c:51: do
      0000DB                        629 00101$:
                                    630 ;	../Libs/I2C.c:53: SCL=1;
      0000DB D2 91            [12]  631 	setb	_P1_1
      0000DD 30 91 FB         [24]  632 	jnb	_P1_1,00101$
                                    633 ;	../Libs/I2C.c:56: if(SDA) dato|=1;
      0000E0 30 90 03         [24]  634 	jnb	_P1_0,00105$
      0000E3 43 07 01         [24]  635 	orl	ar7,#0x01
      0000E6                        636 00105$:
                                    637 ;	../Libs/I2C.c:57: SCL=0;
      0000E6 C2 91            [12]  638 	clr	_P1_1
                                    639 ;	../Libs/I2C.c:48: for(i=0; i<8; i++)
      0000E8 0E               [12]  640 	inc	r6
      0000E9 BE 08 00         [24]  641 	cjne	r6,#0x08,00135$
      0000EC                        642 00135$:
      0000EC 40 EA            [24]  643 	jc	00110$
                                    644 ;	../Libs/I2C.c:59: if(ACKBit)SDA=0;
      0000EE 30 01 04         [24]  645 	jnb	_I2C_read_PARM_1,00108$
      0000F1 C2 90            [12]  646 	clr	_P1_0
      0000F3 80 02            [24]  647 	sjmp	00109$
      0000F5                        648 00108$:
                                    649 ;	../Libs/I2C.c:60: else SDA=1;
      0000F5 D2 90            [12]  650 	setb	_P1_0
      0000F7                        651 00109$:
                                    652 ;	../Libs/I2C.c:61: SCL=1;
      0000F7 D2 91            [12]  653 	setb	_P1_1
                                    654 ;	../Libs/I2C.c:62: SCL=0;
      0000F9 C2 91            [12]  655 	clr	_P1_1
                                    656 ;	../Libs/I2C.c:63: SDA=1;
      0000FB D2 90            [12]  657 	setb	_P1_0
                                    658 ;	../Libs/I2C.c:64: return dato;
      0000FD 8F 82            [24]  659 	mov	dpl,r7
      0000FF 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'BCDToDecimal'
                                    663 ;------------------------------------------------------------
                                    664 ;bcdByte                   Allocated to registers r7 
                                    665 ;a                         Allocated to registers r6 
                                    666 ;b                         Allocated to registers 
                                    667 ;dec                       Allocated to registers 
                                    668 ;------------------------------------------------------------
                                    669 ;	../Libs/math.c:14: uint8_t BCDToDecimal(uint8_t bcdByte)
                                    670 ;	-----------------------------------------
                                    671 ;	 function BCDToDecimal
                                    672 ;	-----------------------------------------
      000100                        673 _BCDToDecimal:
      000100 AF 82            [24]  674 	mov	r7,dpl
                                    675 ;	../Libs/math.c:17: a=(((bcdByte & 0xF0) >> 4) * 10);
      000102 74 F0            [12]  676 	mov	a,#0xf0
      000104 5F               [12]  677 	anl	a,r7
      000105 C4               [12]  678 	swap	a
      000106 54 0F            [12]  679 	anl	a,#0x0f
      000108 75 F0 0A         [24]  680 	mov	b,#0x0a
      00010B A4               [48]  681 	mul	ab
      00010C FE               [12]  682 	mov	r6,a
                                    683 ;	../Libs/math.c:18: b=(bcdByte & 0x0F);
      00010D 74 0F            [12]  684 	mov	a,#0x0f
      00010F 5F               [12]  685 	anl	a,r7
                                    686 ;	../Libs/math.c:19: dec=a+b;
      000110 2E               [12]  687 	add	a,r6
      000111 F5 82            [12]  688 	mov	dpl,a
                                    689 ;	../Libs/math.c:20: return dec;
      000113 22               [24]  690 	ret
                                    691 ;------------------------------------------------------------
                                    692 ;Allocation info for local variables in function 'decimalToBCD'
                                    693 ;------------------------------------------------------------
                                    694 ;decimalByte               Allocated to registers r7 
                                    695 ;a                         Allocated to registers r6 
                                    696 ;b                         Allocated to registers r7 
                                    697 ;bcd                       Allocated to registers 
                                    698 ;------------------------------------------------------------
                                    699 ;	../Libs/math.c:31: uint8_t decimalToBCD (uint8_t decimalByte)
                                    700 ;	-----------------------------------------
                                    701 ;	 function decimalToBCD
                                    702 ;	-----------------------------------------
      000114                        703 _decimalToBCD:
      000114 AF 82            [24]  704 	mov	r7,dpl
                                    705 ;	../Libs/math.c:34: a=((decimalByte / 10) << 4);
      000116 75 F0 0A         [24]  706 	mov	b,#0x0a
      000119 EF               [12]  707 	mov	a,r7
      00011A 84               [48]  708 	div	ab
      00011B C4               [12]  709 	swap	a
      00011C 54 F0            [12]  710 	anl	a,#0xf0
      00011E FE               [12]  711 	mov	r6,a
                                    712 ;	../Libs/math.c:35: b= (decimalByte % 10);
      00011F 75 F0 0A         [24]  713 	mov	b,#0x0a
      000122 EF               [12]  714 	mov	a,r7
      000123 84               [48]  715 	div	ab
                                    716 ;	../Libs/math.c:36: bcd=a|b;
      000124 E5 F0            [12]  717 	mov	a,b
      000126 4E               [12]  718 	orl	a,r6
      000127 F5 82            [12]  719 	mov	dpl,a
                                    720 ;	../Libs/math.c:37: return bcd;
      000129 22               [24]  721 	ret
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'DS1307_timeRead'
                                    724 ;------------------------------------------------------------
                                    725 ;	../Libs/DS1307.c:88: void DS1307_timeRead(void)
                                    726 ;	-----------------------------------------
                                    727 ;	 function DS1307_timeRead
                                    728 ;	-----------------------------------------
      00012A                        729 _DS1307_timeRead:
                                    730 ;	../Libs/DS1307.c:90: I2C_start();     // Inicia comunicaci�n I2C.
      00012A 12 00 9A         [24]  731 	lcall	_I2C_start
                                    732 ;	../Libs/DS1307.c:91: I2C_send(0xD0);  // Direcci�n I2C del DS1307.
      00012D 75 82 D0         [24]  733 	mov	dpl,#0xd0
      000130 12 00 AA         [24]  734 	lcall	_I2C_send
                                    735 ;	../Libs/DS1307.c:92: I2C_send(0x00);  // Primera direcci�n a leer/escribir.
      000133 75 82 00         [24]  736 	mov	dpl,#0x00
      000136 12 00 AA         [24]  737 	lcall	_I2C_send
                                    738 ;	../Libs/DS1307.c:93: I2C_start();     // Reinicia comunicaci�n I2C.
      000139 12 00 9A         [24]  739 	lcall	_I2C_start
                                    740 ;	../Libs/DS1307.c:94: I2C_send(0xD1);  // DS1307 en Modo Escritura.
      00013C 75 82 D1         [24]  741 	mov	dpl,#0xd1
      00013F 12 00 AA         [24]  742 	lcall	_I2C_send
                                    743 ;	../Libs/DS1307.c:95: DS1307_time.Segundo   = BCDToDecimal(I2C_read(1)); // ASK = 1
      000142 D2 01            [12]  744 	setb	_I2C_read_PARM_1
      000144 12 00 D2         [24]  745 	lcall	_I2C_read
      000147 12 01 00         [24]  746 	lcall	_BCDToDecimal
      00014A E5 82            [12]  747 	mov	a,dpl
      00014C F5 27            [12]  748 	mov	(_DS1307_time + 0x0006),a
                                    749 ;	../Libs/DS1307.c:96: DS1307_time.Minuto    = BCDToDecimal(I2C_read(1));
      00014E D2 01            [12]  750 	setb	_I2C_read_PARM_1
      000150 12 00 D2         [24]  751 	lcall	_I2C_read
      000153 12 01 00         [24]  752 	lcall	_BCDToDecimal
      000156 E5 82            [12]  753 	mov	a,dpl
      000158 F5 26            [12]  754 	mov	(_DS1307_time + 0x0005),a
                                    755 ;	../Libs/DS1307.c:97: DS1307_time.Hora      = BCDToDecimal(I2C_read(1));
      00015A D2 01            [12]  756 	setb	_I2C_read_PARM_1
      00015C 12 00 D2         [24]  757 	lcall	_I2C_read
      00015F 12 01 00         [24]  758 	lcall	_BCDToDecimal
      000162 E5 82            [12]  759 	mov	a,dpl
      000164 F5 25            [12]  760 	mov	(_DS1307_time + 0x0004),a
                                    761 ;	../Libs/DS1307.c:98: DS1307_time.DiaSemana = I2C_read(1);  // Valor 1...7 (igual en decimal que en BCD)
      000166 D2 01            [12]  762 	setb	_I2C_read_PARM_1
      000168 12 00 D2         [24]  763 	lcall	_I2C_read
      00016B E5 82            [12]  764 	mov	a,dpl
      00016D F5 21            [12]  765 	mov	_DS1307_time,a
                                    766 ;	../Libs/DS1307.c:99: DS1307_time.Dia       = BCDToDecimal(I2C_read(1));
      00016F D2 01            [12]  767 	setb	_I2C_read_PARM_1
      000171 12 00 D2         [24]  768 	lcall	_I2C_read
      000174 12 01 00         [24]  769 	lcall	_BCDToDecimal
      000177 E5 82            [12]  770 	mov	a,dpl
      000179 F5 22            [12]  771 	mov	(_DS1307_time + 0x0001),a
                                    772 ;	../Libs/DS1307.c:100: DS1307_time.Mes       = BCDToDecimal(I2C_read(1));
      00017B D2 01            [12]  773 	setb	_I2C_read_PARM_1
      00017D 12 00 D2         [24]  774 	lcall	_I2C_read
      000180 12 01 00         [24]  775 	lcall	_BCDToDecimal
      000183 E5 82            [12]  776 	mov	a,dpl
      000185 F5 23            [12]  777 	mov	(_DS1307_time + 0x0002),a
                                    778 ;	../Libs/DS1307.c:101: DS1307_time.Ano       = BCDToDecimal(I2C_read(0)); // ASK = 0
      000187 C2 01            [12]  779 	clr	_I2C_read_PARM_1
      000189 12 00 D2         [24]  780 	lcall	_I2C_read
      00018C 12 01 00         [24]  781 	lcall	_BCDToDecimal
      00018F E5 82            [12]  782 	mov	a,dpl
      000191 F5 24            [12]  783 	mov	(_DS1307_time + 0x0003),a
                                    784 ;	../Libs/DS1307.c:105: I2C_stop();
      000193 02 00 A3         [24]  785 	ljmp	_I2C_stop
                                    786 ;------------------------------------------------------------
                                    787 ;Allocation info for local variables in function 'DS1307_timeWrite'
                                    788 ;------------------------------------------------------------
                                    789 ;	../Libs/DS1307.c:114: void DS1307_timeWrite(void)
                                    790 ;	-----------------------------------------
                                    791 ;	 function DS1307_timeWrite
                                    792 ;	-----------------------------------------
      000196                        793 _DS1307_timeWrite:
                                    794 ;	../Libs/DS1307.c:116: I2C_start();     // Inicia comunicaci�n I2C
      000196 12 00 9A         [24]  795 	lcall	_I2C_start
                                    796 ;	../Libs/DS1307.c:117: I2C_send(0xD0);  // Direcci�n I2C del DS1307.
      000199 75 82 D0         [24]  797 	mov	dpl,#0xd0
      00019C 12 00 AA         [24]  798 	lcall	_I2C_send
                                    799 ;	../Libs/DS1307.c:118: I2C_send(0x00);  // Primera direcci�n a leer/escribir.
      00019F 75 82 00         [24]  800 	mov	dpl,#0x00
      0001A2 12 00 AA         [24]  801 	lcall	_I2C_send
                                    802 ;	../Libs/DS1307.c:119: I2C_send(decimalToBCD(DS1307_time.Segundo));
      0001A5 85 27 82         [24]  803 	mov	dpl,(_DS1307_time + 0x0006)
      0001A8 12 01 14         [24]  804 	lcall	_decimalToBCD
      0001AB 12 00 AA         [24]  805 	lcall	_I2C_send
                                    806 ;	../Libs/DS1307.c:120: I2C_send(decimalToBCD(DS1307_time.Minuto));
      0001AE 85 26 82         [24]  807 	mov	dpl,(_DS1307_time + 0x0005)
      0001B1 12 01 14         [24]  808 	lcall	_decimalToBCD
      0001B4 12 00 AA         [24]  809 	lcall	_I2C_send
                                    810 ;	../Libs/DS1307.c:121: I2C_send(decimalToBCD(DS1307_time.Hora));
      0001B7 85 25 82         [24]  811 	mov	dpl,(_DS1307_time + 0x0004)
      0001BA 12 01 14         [24]  812 	lcall	_decimalToBCD
      0001BD 12 00 AA         [24]  813 	lcall	_I2C_send
                                    814 ;	../Libs/DS1307.c:122: I2C_send(DS1307_time.DiaSemana);  // Valor 1...7 (igual en decimal que en BCD)
      0001C0 85 21 82         [24]  815 	mov	dpl,_DS1307_time
      0001C3 12 00 AA         [24]  816 	lcall	_I2C_send
                                    817 ;	../Libs/DS1307.c:123: I2C_send(decimalToBCD(DS1307_time.Dia));
      0001C6 85 22 82         [24]  818 	mov	dpl,(_DS1307_time + 0x0001)
      0001C9 12 01 14         [24]  819 	lcall	_decimalToBCD
      0001CC 12 00 AA         [24]  820 	lcall	_I2C_send
                                    821 ;	../Libs/DS1307.c:124: I2C_send(decimalToBCD(DS1307_time.Mes));
      0001CF 85 23 82         [24]  822 	mov	dpl,(_DS1307_time + 0x0002)
      0001D2 12 01 14         [24]  823 	lcall	_decimalToBCD
      0001D5 12 00 AA         [24]  824 	lcall	_I2C_send
                                    825 ;	../Libs/DS1307.c:125: I2C_send(decimalToBCD(DS1307_time.Ano));
      0001D8 85 24 82         [24]  826 	mov	dpl,(_DS1307_time + 0x0003)
      0001DB 12 01 14         [24]  827 	lcall	_decimalToBCD
      0001DE 12 00 AA         [24]  828 	lcall	_I2C_send
                                    829 ;	../Libs/DS1307.c:126: I2C_send(DS1307_CONF);
      0001E1 75 82 80         [24]  830 	mov	dpl,#0x80
      0001E4 12 00 AA         [24]  831 	lcall	_I2C_send
                                    832 ;	../Libs/DS1307.c:127: I2C_stop();
      0001E7 02 00 A3         [24]  833 	ljmp	_I2C_stop
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'LCD_enablePulse'
                                    836 ;------------------------------------------------------------
                                    837 ;	../Libs/LCD.c:97: void LCD_enablePulse(void)
                                    838 ;	-----------------------------------------
                                    839 ;	 function LCD_enablePulse
                                    840 ;	-----------------------------------------
      0001EA                        841 _LCD_enablePulse:
                                    842 ;	../Libs/LCD.c:99: LCD_EN     = 1;
      0001EA D2 93            [12]  843 	setb	_P1_3
                                    844 ;	../Libs/LCD.c:100: delay_ms(1);
      0001EC 90 00 01         [24]  845 	mov	dptr,#0x0001
      0001EF 12 00 70         [24]  846 	lcall	_delay_ms
                                    847 ;	../Libs/LCD.c:101: LCD_EN     = 0;
      0001F2 C2 93            [12]  848 	clr	_P1_3
                                    849 ;	../Libs/LCD.c:102: delay_ms(1);
      0001F4 90 00 01         [24]  850 	mov	dptr,#0x0001
      0001F7 02 00 70         [24]  851 	ljmp	_delay_ms
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'LCD_send4Bits'
                                    854 ;------------------------------------------------------------
                                    855 ;date                      Allocated to registers r7 
                                    856 ;------------------------------------------------------------
                                    857 ;	../Libs/LCD.c:110: void LCD_send4Bits(char date)
                                    858 ;	-----------------------------------------
                                    859 ;	 function LCD_send4Bits
                                    860 ;	-----------------------------------------
      0001FA                        861 _LCD_send4Bits:
                                    862 ;	../Libs/LCD.c:112: LCD_DATA_4 = (date & BIT4);
      0001FA E5 82            [12]  863 	mov	a,dpl
      0001FC FF               [12]  864 	mov	r7,a
      0001FD A2 E4            [12]  865 	mov	c,acc[4]
      0001FF 92 02            [24]  866 	mov  _LCD_send4Bits_sloc0_1_0,c
      000201 92 94            [24]  867 	mov	_P1_4,c
                                    868 ;	../Libs/LCD.c:113: LCD_DATA_5 = (date & BIT5);
      000203 EF               [12]  869 	mov	a,r7
      000204 A2 E5            [12]  870 	mov	c,acc[5]
      000206 92 02            [24]  871 	mov  _LCD_send4Bits_sloc0_1_0,c
      000208 92 95            [24]  872 	mov	_P1_5,c
                                    873 ;	../Libs/LCD.c:114: LCD_DATA_6 = (date & BIT6);
      00020A EF               [12]  874 	mov	a,r7
      00020B A2 E6            [12]  875 	mov	c,acc[6]
      00020D 92 02            [24]  876 	mov  _LCD_send4Bits_sloc0_1_0,c
      00020F 92 96            [24]  877 	mov	_P1_6,c
                                    878 ;	../Libs/LCD.c:115: LCD_DATA_7 = (date & BIT7);
      000211 EF               [12]  879 	mov	a,r7
      000212 33               [12]  880 	rlc	a
      000213 92 02            [24]  881 	mov  _LCD_send4Bits_sloc0_1_0,c
      000215 92 97            [24]  882 	mov	_P1_7,c
                                    883 ;	../Libs/LCD.c:116: LCD_enablePulse();
      000217 02 01 EA         [24]  884 	ljmp	_LCD_enablePulse
                                    885 ;------------------------------------------------------------
                                    886 ;Allocation info for local variables in function 'LCD_send'
                                    887 ;------------------------------------------------------------
                                    888 ;date                      Allocated to registers r7 
                                    889 ;------------------------------------------------------------
                                    890 ;	../Libs/LCD.c:119: void LCD_send(char date)
                                    891 ;	-----------------------------------------
                                    892 ;	 function LCD_send
                                    893 ;	-----------------------------------------
      00021A                        894 _LCD_send:
                                    895 ;	../Libs/LCD.c:121: LCD_send4Bits(date);
      00021A AF 82            [24]  896 	mov  r7,dpl
      00021C C0 07            [24]  897 	push	ar7
      00021E 12 01 FA         [24]  898 	lcall	_LCD_send4Bits
      000221 D0 07            [24]  899 	pop	ar7
                                    900 ;	../Libs/LCD.c:122: LCD_send4Bits(date<<4);
      000223 EF               [12]  901 	mov	a,r7
      000224 C4               [12]  902 	swap	a
      000225 54 F0            [12]  903 	anl	a,#0xf0
      000227 F5 82            [12]  904 	mov	dpl,a
      000229 02 01 FA         [24]  905 	ljmp	_LCD_send4Bits
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'LCD_command'
                                    908 ;------------------------------------------------------------
                                    909 ;comm                      Allocated to registers r7 
                                    910 ;------------------------------------------------------------
                                    911 ;	../Libs/LCD.c:134: void LCD_command(char comm)
                                    912 ;	-----------------------------------------
                                    913 ;	 function LCD_command
                                    914 ;	-----------------------------------------
      00022C                        915 _LCD_command:
      00022C AF 82            [24]  916 	mov	r7,dpl
                                    917 ;	../Libs/LCD.c:136: LCD_RS = LCD_CmdMode;
      00022E C2 92            [12]  918 	clr	_P1_2
                                    919 ;	../Libs/LCD.c:137: LCD_send(comm);
      000230 8F 82            [24]  920 	mov	dpl,r7
      000232 02 02 1A         [24]  921 	ljmp	_LCD_send
                                    922 ;------------------------------------------------------------
                                    923 ;Allocation info for local variables in function 'LCD_putChar'
                                    924 ;------------------------------------------------------------
                                    925 ;chr                       Allocated to registers r7 
                                    926 ;------------------------------------------------------------
                                    927 ;	../Libs/LCD.c:140: void LCD_putChar(char chr)
                                    928 ;	-----------------------------------------
                                    929 ;	 function LCD_putChar
                                    930 ;	-----------------------------------------
      000235                        931 _LCD_putChar:
      000235 AF 82            [24]  932 	mov	r7,dpl
                                    933 ;	../Libs/LCD.c:142: LCD_RS = LCD_CharMode;
      000237 D2 92            [12]  934 	setb	_P1_2
                                    935 ;	../Libs/LCD.c:143: LCD_send(chr);
      000239 8F 82            [24]  936 	mov	dpl,r7
      00023B 02 02 1A         [24]  937 	ljmp	_LCD_send
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'LCD_gotoXY'
                                    940 ;------------------------------------------------------------
                                    941 ;fila                      Allocated with name '_LCD_gotoXY_PARM_2'
                                    942 ;columna                   Allocated to registers r7 
                                    943 ;------------------------------------------------------------
                                    944 ;	../Libs/LCD.c:147: void LCD_gotoXY(char columna, char fila)
                                    945 ;	-----------------------------------------
                                    946 ;	 function LCD_gotoXY
                                    947 ;	-----------------------------------------
      00023E                        948 _LCD_gotoXY:
      00023E AF 82            [24]  949 	mov	r7,dpl
                                    950 ;	../Libs/LCD.c:149: if(fila == 0)
      000240 E5 28            [12]  951 	mov	a,_LCD_gotoXY_PARM_2
      000242 70 08            [24]  952 	jnz	00110$
                                    953 ;	../Libs/LCD.c:150: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_0);
      000244 74 80            [12]  954 	mov	a,#0x80
      000246 2F               [12]  955 	add	a,r7
      000247 F5 82            [12]  956 	mov	dpl,a
      000249 02 02 2C         [24]  957 	ljmp	_LCD_command
      00024C                        958 00110$:
                                    959 ;	../Libs/LCD.c:151: else if (fila == 1)
      00024C 74 01            [12]  960 	mov	a,#0x01
      00024E B5 28 08         [24]  961 	cjne	a,_LCD_gotoXY_PARM_2,00107$
                                    962 ;	../Libs/LCD.c:152: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_1);
      000251 74 C0            [12]  963 	mov	a,#0xc0
      000253 2F               [12]  964 	add	a,r7
      000254 F5 82            [12]  965 	mov	dpl,a
      000256 02 02 2C         [24]  966 	ljmp	_LCD_command
      000259                        967 00107$:
                                    968 ;	../Libs/LCD.c:153: else if (fila == 2)
      000259 74 02            [12]  969 	mov	a,#0x02
      00025B B5 28 08         [24]  970 	cjne	a,_LCD_gotoXY_PARM_2,00104$
                                    971 ;	../Libs/LCD.c:154: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_2);
      00025E 74 94            [12]  972 	mov	a,#0x94
      000260 2F               [12]  973 	add	a,r7
      000261 F5 82            [12]  974 	mov	dpl,a
      000263 02 02 2C         [24]  975 	ljmp	_LCD_command
      000266                        976 00104$:
                                    977 ;	../Libs/LCD.c:155: else if (fila == 3)
      000266 74 03            [12]  978 	mov	a,#0x03
      000268 B5 28 08         [24]  979 	cjne	a,_LCD_gotoXY_PARM_2,00112$
                                    980 ;	../Libs/LCD.c:156: LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_3);
      00026B 74 D4            [12]  981 	mov	a,#0xd4
      00026D 2F               [12]  982 	add	a,r7
      00026E F5 82            [12]  983 	mov	dpl,a
      000270 02 02 2C         [24]  984 	ljmp	_LCD_command
      000273                        985 00112$:
      000273 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'LCD_cursorHome'
                                    989 ;------------------------------------------------------------
                                    990 ;	../Libs/LCD.c:159: void LCD_cursorHome(void)
                                    991 ;	-----------------------------------------
                                    992 ;	 function LCD_cursorHome
                                    993 ;	-----------------------------------------
      000274                        994 _LCD_cursorHome:
                                    995 ;	../Libs/LCD.c:161: LCD_command(LCD_DISPLAY_AND_CURSOR_HOME);
      000274 75 82 02         [24]  996 	mov	dpl,#0x02
      000277 02 02 2C         [24]  997 	ljmp	_LCD_command
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'LCD_clear'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	../Libs/LCD.c:164: void LCD_clear(void)
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function LCD_clear
                                   1004 ;	-----------------------------------------
      00027A                       1005 _LCD_clear:
                                   1006 ;	../Libs/LCD.c:166: LCD_command(LCD_CLEAR_DISPLAY);
      00027A 75 82 01         [24] 1007 	mov	dpl,#0x01
      00027D 02 02 2C         [24] 1008 	ljmp	_LCD_command
                                   1009 ;------------------------------------------------------------
                                   1010 ;Allocation info for local variables in function 'LCD_cursorUnderline'
                                   1011 ;------------------------------------------------------------
                                   1012 ;	../Libs/LCD.c:169: void LCD_cursorUnderline(void)
                                   1013 ;	-----------------------------------------
                                   1014 ;	 function LCD_cursorUnderline
                                   1015 ;	-----------------------------------------
      000280                       1016 _LCD_cursorUnderline:
                                   1017 ;	../Libs/LCD.c:171: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON);
      000280 75 82 0E         [24] 1018 	mov	dpl,#0x0e
      000283 02 02 2C         [24] 1019 	ljmp	_LCD_command
                                   1020 ;------------------------------------------------------------
                                   1021 ;Allocation info for local variables in function 'LCD_cursorBlink'
                                   1022 ;------------------------------------------------------------
                                   1023 ;	../Libs/LCD.c:174: void LCD_cursorBlink(void)
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function LCD_cursorBlink
                                   1026 ;	-----------------------------------------
      000286                       1027 _LCD_cursorBlink:
                                   1028 ;	../Libs/LCD.c:176: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_BLINK_ON);
      000286 75 82 0D         [24] 1029 	mov	dpl,#0x0d
      000289 02 02 2C         [24] 1030 	ljmp	_LCD_command
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'LCD_cursorUnderlineBlink'
                                   1033 ;------------------------------------------------------------
                                   1034 ;	../Libs/LCD.c:179: void LCD_cursorUnderlineBlink(void)
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function LCD_cursorUnderlineBlink
                                   1037 ;	-----------------------------------------
      00028C                       1038 _LCD_cursorUnderlineBlink:
                                   1039 ;	../Libs/LCD.c:181: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON + LCD_CURSOR_BLINK_ON);
      00028C 75 82 0F         [24] 1040 	mov	dpl,#0x0f
      00028F 02 02 2C         [24] 1041 	ljmp	_LCD_command
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'LCD_cursorOff'
                                   1044 ;------------------------------------------------------------
                                   1045 ;	../Libs/LCD.c:184: void LCD_cursorOff(void)
                                   1046 ;	-----------------------------------------
                                   1047 ;	 function LCD_cursorOff
                                   1048 ;	-----------------------------------------
      000292                       1049 _LCD_cursorOff:
                                   1050 ;	../Libs/LCD.c:186: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_OFF + LCD_CURSOR_BLINK_OFF);
      000292 75 82 0C         [24] 1051 	mov	dpl,#0x0c
      000295 02 02 2C         [24] 1052 	ljmp	_LCD_command
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'LCD_displayOn'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	../Libs/LCD.c:189: void LCD_displayOn(void)
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function LCD_displayOn
                                   1059 ;	-----------------------------------------
      000298                       1060 _LCD_displayOn:
                                   1061 ;	../Libs/LCD.c:191: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
      000298 75 82 0C         [24] 1062 	mov	dpl,#0x0c
      00029B 02 02 2C         [24] 1063 	ljmp	_LCD_command
                                   1064 ;------------------------------------------------------------
                                   1065 ;Allocation info for local variables in function 'LCD_displayOff'
                                   1066 ;------------------------------------------------------------
                                   1067 ;	../Libs/LCD.c:194: void LCD_displayOff(void)
                                   1068 ;	-----------------------------------------
                                   1069 ;	 function LCD_displayOff
                                   1070 ;	-----------------------------------------
      00029E                       1071 _LCD_displayOff:
                                   1072 ;	../Libs/LCD.c:196: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
      00029E 75 82 08         [24] 1073 	mov	dpl,#0x08
      0002A1 02 02 2C         [24] 1074 	ljmp	_LCD_command
                                   1075 ;------------------------------------------------------------
                                   1076 ;Allocation info for local variables in function 'LCD_displayShiftRight'
                                   1077 ;------------------------------------------------------------
                                   1078 ;	../Libs/LCD.c:210: void LCD_displayShiftRight(void)
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function LCD_displayShiftRight
                                   1081 ;	-----------------------------------------
      0002A4                       1082 _LCD_displayShiftRight:
                                   1083 ;	../Libs/LCD.c:212: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_RIGHT);
      0002A4 75 82 1C         [24] 1084 	mov	dpl,#0x1c
      0002A7 02 02 2C         [24] 1085 	ljmp	_LCD_command
                                   1086 ;------------------------------------------------------------
                                   1087 ;Allocation info for local variables in function 'LCD_displayShiftLeft'
                                   1088 ;------------------------------------------------------------
                                   1089 ;	../Libs/LCD.c:215: void LCD_displayShiftLeft(void)
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function LCD_displayShiftLeft
                                   1092 ;	-----------------------------------------
      0002AA                       1093 _LCD_displayShiftLeft:
                                   1094 ;	../Libs/LCD.c:217: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_LEFT);
      0002AA 75 82 18         [24] 1095 	mov	dpl,#0x18
      0002AD 02 02 2C         [24] 1096 	ljmp	_LCD_command
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'LCD_displayCursorRight'
                                   1099 ;------------------------------------------------------------
                                   1100 ;	../Libs/LCD.c:220: void LCD_displayCursorRight(void)
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function LCD_displayCursorRight
                                   1103 ;	-----------------------------------------
      0002B0                       1104 _LCD_displayCursorRight:
                                   1105 ;	../Libs/LCD.c:222: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_RIGHT);
      0002B0 75 82 14         [24] 1106 	mov	dpl,#0x14
      0002B3 02 02 2C         [24] 1107 	ljmp	_LCD_command
                                   1108 ;------------------------------------------------------------
                                   1109 ;Allocation info for local variables in function 'LCD_displayCursorLeft'
                                   1110 ;------------------------------------------------------------
                                   1111 ;	../Libs/LCD.c:225: void LCD_displayCursorLeft(void)
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function LCD_displayCursorLeft
                                   1114 ;	-----------------------------------------
      0002B6                       1115 _LCD_displayCursorLeft:
                                   1116 ;	../Libs/LCD.c:227: LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_LEFT);
      0002B6 75 82 10         [24] 1117 	mov	dpl,#0x10
      0002B9 02 02 2C         [24] 1118 	ljmp	_LCD_command
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'LCD_createChar'
                                   1121 ;------------------------------------------------------------
                                   1122 ;chardata0                 Allocated with name '_LCD_createChar_PARM_2'
                                   1123 ;chardata1                 Allocated with name '_LCD_createChar_PARM_3'
                                   1124 ;chardata2                 Allocated with name '_LCD_createChar_PARM_4'
                                   1125 ;chardata3                 Allocated with name '_LCD_createChar_PARM_5'
                                   1126 ;chardata4                 Allocated with name '_LCD_createChar_PARM_6'
                                   1127 ;chardata5                 Allocated with name '_LCD_createChar_PARM_7'
                                   1128 ;chardata6                 Allocated with name '_LCD_createChar_PARM_8'
                                   1129 ;chardata7                 Allocated with name '_LCD_createChar_PARM_9'
                                   1130 ;charnum                   Allocated to registers r7 
                                   1131 ;------------------------------------------------------------
                                   1132 ;	../Libs/LCD.c:230: void LCD_createChar(char charnum,
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function LCD_createChar
                                   1135 ;	-----------------------------------------
      0002BC                       1136 _LCD_createChar:
                                   1137 ;	../Libs/LCD.c:240: charnum = charnum & 0x07;  // Previene errores sin charnum > 7;
                                   1138 ;	../Libs/LCD.c:241: charnum = charnum << 3;
      0002BC E5 82            [12] 1139 	mov	a,dpl
      0002BE 54 07            [12] 1140 	anl	a,#0x07
      0002C0 C4               [12] 1141 	swap	a
      0002C1 03               [12] 1142 	rr	a
      0002C2 54 F8            [12] 1143 	anl	a,#0xf8
                                   1144 ;	../Libs/LCD.c:242: LCD_command(LCD_SET_CGRAM_ADDRESS + charnum);
      0002C4 24 40            [12] 1145 	add	a,#0x40
      0002C6 F5 82            [12] 1146 	mov	dpl,a
      0002C8 12 02 2C         [24] 1147 	lcall	_LCD_command
                                   1148 ;	../Libs/LCD.c:243: LCD_putChar(chardata0);
      0002CB 85 29 82         [24] 1149 	mov	dpl,_LCD_createChar_PARM_2
      0002CE 12 02 35         [24] 1150 	lcall	_LCD_putChar
                                   1151 ;	../Libs/LCD.c:244: LCD_putChar(chardata1);
      0002D1 85 2A 82         [24] 1152 	mov	dpl,_LCD_createChar_PARM_3
      0002D4 12 02 35         [24] 1153 	lcall	_LCD_putChar
                                   1154 ;	../Libs/LCD.c:245: LCD_putChar(chardata2);
      0002D7 85 2B 82         [24] 1155 	mov	dpl,_LCD_createChar_PARM_4
      0002DA 12 02 35         [24] 1156 	lcall	_LCD_putChar
                                   1157 ;	../Libs/LCD.c:246: LCD_putChar(chardata3);
      0002DD 85 2C 82         [24] 1158 	mov	dpl,_LCD_createChar_PARM_5
      0002E0 12 02 35         [24] 1159 	lcall	_LCD_putChar
                                   1160 ;	../Libs/LCD.c:247: LCD_putChar(chardata4);
      0002E3 85 2D 82         [24] 1161 	mov	dpl,_LCD_createChar_PARM_6
      0002E6 12 02 35         [24] 1162 	lcall	_LCD_putChar
                                   1163 ;	../Libs/LCD.c:248: LCD_putChar(chardata5);
      0002E9 85 2E 82         [24] 1164 	mov	dpl,_LCD_createChar_PARM_7
      0002EC 12 02 35         [24] 1165 	lcall	_LCD_putChar
                                   1166 ;	../Libs/LCD.c:249: LCD_putChar(chardata6);
      0002EF 85 2F 82         [24] 1167 	mov	dpl,_LCD_createChar_PARM_8
      0002F2 12 02 35         [24] 1168 	lcall	_LCD_putChar
                                   1169 ;	../Libs/LCD.c:250: LCD_putChar(chardata7);
      0002F5 85 30 82         [24] 1170 	mov	dpl,_LCD_createChar_PARM_9
                                   1171 ;	../Libs/LCD.c:251: LCD_clear;    // Necesario para finalizar la creacion de Custom Character.
      0002F8 02 02 35         [24] 1172 	ljmp	_LCD_putChar
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'LCD_print'
                                   1175 ;------------------------------------------------------------
                                   1176 ;str                       Allocated to registers 
                                   1177 ;------------------------------------------------------------
                                   1178 ;	../Libs/LCD.c:255: void LCD_print(char *str)
                                   1179 ;	-----------------------------------------
                                   1180 ;	 function LCD_print
                                   1181 ;	-----------------------------------------
      0002FB                       1182 _LCD_print:
      0002FB AD 82            [24] 1183 	mov	r5,dpl
      0002FD AE 83            [24] 1184 	mov	r6,dph
      0002FF AF F0            [24] 1185 	mov	r7,b
                                   1186 ;	../Libs/LCD.c:257: while(*str)
      000301                       1187 00101$:
      000301 8D 82            [24] 1188 	mov	dpl,r5
      000303 8E 83            [24] 1189 	mov	dph,r6
      000305 8F F0            [24] 1190 	mov	b,r7
      000307 12 07 36         [24] 1191 	lcall	__gptrget
      00030A FC               [12] 1192 	mov	r4,a
      00030B 60 18            [24] 1193 	jz	00104$
                                   1194 ;	../Libs/LCD.c:259: LCD_putChar(*str);
      00030D 8C 82            [24] 1195 	mov	dpl,r4
      00030F C0 07            [24] 1196 	push	ar7
      000311 C0 06            [24] 1197 	push	ar6
      000313 C0 05            [24] 1198 	push	ar5
      000315 12 02 35         [24] 1199 	lcall	_LCD_putChar
      000318 D0 05            [24] 1200 	pop	ar5
      00031A D0 06            [24] 1201 	pop	ar6
      00031C D0 07            [24] 1202 	pop	ar7
                                   1203 ;	../Libs/LCD.c:260: str++;
      00031E 0D               [12] 1204 	inc	r5
      00031F BD 00 DF         [24] 1205 	cjne	r5,#0x00,00101$
      000322 0E               [12] 1206 	inc	r6
      000323 80 DC            [24] 1207 	sjmp	00101$
      000325                       1208 00104$:
      000325 22               [24] 1209 	ret
                                   1210 ;------------------------------------------------------------
                                   1211 ;Allocation info for local variables in function 'LCD_init'
                                   1212 ;------------------------------------------------------------
                                   1213 ;	../Libs/LCD.c:264: void LCD_init(void)
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function LCD_init
                                   1216 ;	-----------------------------------------
      000326                       1217 _LCD_init:
                                   1218 ;	../Libs/LCD.c:267: LCD_DATA_4 = 0;              // Pines iniciados como salida.
      000326 C2 94            [12] 1219 	clr	_P1_4
                                   1220 ;	../Libs/LCD.c:268: LCD_DATA_5 = 0;
      000328 C2 95            [12] 1221 	clr	_P1_5
                                   1222 ;	../Libs/LCD.c:269: LCD_DATA_6 = 0;
      00032A C2 96            [12] 1223 	clr	_P1_6
                                   1224 ;	../Libs/LCD.c:270: LCD_DATA_7 = 0;
      00032C C2 97            [12] 1225 	clr	_P1_7
                                   1226 ;	../Libs/LCD.c:271: LCD_RS     = 0;
      00032E C2 92            [12] 1227 	clr	_P1_2
                                   1228 ;	../Libs/LCD.c:272: LCD_EN     = 0;
      000330 C2 93            [12] 1229 	clr	_P1_3
                                   1230 ;	../Libs/LCD.c:280: delay_ms(30);    // Espera 15 ms o más.
      000332 90 00 1E         [24] 1231 	mov	dptr,#0x001e
      000335 12 00 70         [24] 1232 	lcall	_delay_ms
                                   1233 ;	../Libs/LCD.c:284: LCD_send4Bits(0b00110000);
      000338 75 82 30         [24] 1234 	mov	dpl,#0x30
      00033B 12 01 FA         [24] 1235 	lcall	_LCD_send4Bits
                                   1236 ;	../Libs/LCD.c:285: delay_ms(5);  // Espera > 4.1 ms
      00033E 90 00 05         [24] 1237 	mov	dptr,#0x0005
      000341 12 00 70         [24] 1238 	lcall	_delay_ms
                                   1239 ;	../Libs/LCD.c:286: LCD_send4Bits(0b00110000);
      000344 75 82 30         [24] 1240 	mov	dpl,#0x30
      000347 12 01 FA         [24] 1241 	lcall	_LCD_send4Bits
                                   1242 ;	../Libs/LCD.c:287: delay_ms(1);  // Espera > 100 us
      00034A 90 00 01         [24] 1243 	mov	dptr,#0x0001
      00034D 12 00 70         [24] 1244 	lcall	_delay_ms
                                   1245 ;	../Libs/LCD.c:288: LCD_send4Bits(0b00110000);
      000350 75 82 30         [24] 1246 	mov	dpl,#0x30
      000353 12 01 FA         [24] 1247 	lcall	_LCD_send4Bits
                                   1248 ;	../Libs/LCD.c:289: LCD_send4Bits(0b00100000);
      000356 75 82 20         [24] 1249 	mov	dpl,#0x20
      000359 12 01 FA         [24] 1250 	lcall	_LCD_send4Bits
                                   1251 ;	../Libs/LCD.c:290: LCD_command(LCD_FUNCTION_SET + LCD_4BIT_INTERFACE + LCD_2LINES + LCD_F_FONT_5_8);
      00035C 75 82 28         [24] 1252 	mov	dpl,#0x28
      00035F 12 02 2C         [24] 1253 	lcall	_LCD_command
                                   1254 ;	../Libs/LCD.c:302: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
      000362 75 82 08         [24] 1255 	mov	dpl,#0x08
      000365 12 02 2C         [24] 1256 	lcall	_LCD_command
                                   1257 ;	../Libs/LCD.c:303: LCD_command(LCD_CHARACTER_ENTRY_MODE + LCD_INCREMENT + LCD_DISPLAY_SHIFT_OFF);
      000368 75 82 06         [24] 1258 	mov	dpl,#0x06
      00036B 12 02 2C         [24] 1259 	lcall	_LCD_command
                                   1260 ;	../Libs/LCD.c:304: LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
      00036E 75 82 0C         [24] 1261 	mov	dpl,#0x0c
      000371 12 02 2C         [24] 1262 	lcall	_LCD_command
                                   1263 ;	../Libs/LCD.c:305: LCD_command(LCD_CLEAR_DISPLAY);
      000374 75 82 01         [24] 1264 	mov	dpl,#0x01
      000377 02 02 2C         [24] 1265 	ljmp	_LCD_command
                                   1266 ;------------------------------------------------------------
                                   1267 ;Allocation info for local variables in function 'LCDPrintDiaSemana'
                                   1268 ;------------------------------------------------------------
                                   1269 ;	main.c:56: void LCDPrintDiaSemana(void)
                                   1270 ;	-----------------------------------------
                                   1271 ;	 function LCDPrintDiaSemana
                                   1272 ;	-----------------------------------------
      00037A                       1273 _LCDPrintDiaSemana:
                                   1274 ;	main.c:58: switch(DS1307_time.DiaSemana)
      00037A E5 21            [12] 1275 	mov	a,_DS1307_time
      00037C FF               [12] 1276 	mov	r7,a
      00037D 24 F8            [12] 1277 	add	a,#0xff - 0x07
      00037F 50 01            [24] 1278 	jnc	00114$
      000381 22               [24] 1279 	ret
      000382                       1280 00114$:
      000382 EF               [12] 1281 	mov	a,r7
      000383 24 0A            [12] 1282 	add	a,#(00115$-3-.)
      000385 83               [24] 1283 	movc	a,@a+pc
      000386 F5 82            [12] 1284 	mov	dpl,a
      000388 EF               [12] 1285 	mov	a,r7
      000389 24 0C            [12] 1286 	add	a,#(00116$-3-.)
      00038B 83               [24] 1287 	movc	a,@a+pc
      00038C F5 83            [12] 1288 	mov	dph,a
      00038E E4               [12] 1289 	clr	a
      00038F 73               [24] 1290 	jmp	@a+dptr
      000390                       1291 00115$:
      000390 DF                    1292 	.db	00108$
      000391 A0                    1293 	.db	00101$
      000392 A9                    1294 	.db	00102$
      000393 B2                    1295 	.db	00103$
      000394 BB                    1296 	.db	00104$
      000395 C4                    1297 	.db	00105$
      000396 CD                    1298 	.db	00106$
      000397 D6                    1299 	.db	00107$
      000398                       1300 00116$:
      000398 03                    1301 	.db	00108$>>8
      000399 03                    1302 	.db	00101$>>8
      00039A 03                    1303 	.db	00102$>>8
      00039B 03                    1304 	.db	00103$>>8
      00039C 03                    1305 	.db	00104$>>8
      00039D 03                    1306 	.db	00105$>>8
      00039E 03                    1307 	.db	00106$>>8
      00039F 03                    1308 	.db	00107$>>8
                                   1309 ;	main.c:60: case 1:
      0003A0                       1310 00101$:
                                   1311 ;	main.c:61: LCD_print("DOM");
      0003A0 90 07 56         [24] 1312 	mov	dptr,#___str_0
      0003A3 75 F0 80         [24] 1313 	mov	b,#0x80
                                   1314 ;	main.c:62: break;
                                   1315 ;	main.c:63: case 2:
      0003A6 02 02 FB         [24] 1316 	ljmp	_LCD_print
      0003A9                       1317 00102$:
                                   1318 ;	main.c:64: LCD_print("LUN");
      0003A9 90 07 5A         [24] 1319 	mov	dptr,#___str_1
      0003AC 75 F0 80         [24] 1320 	mov	b,#0x80
                                   1321 ;	main.c:65: break;
                                   1322 ;	main.c:66: case 3:
      0003AF 02 02 FB         [24] 1323 	ljmp	_LCD_print
      0003B2                       1324 00103$:
                                   1325 ;	main.c:67: LCD_print("MAR");
      0003B2 90 07 5E         [24] 1326 	mov	dptr,#___str_2
      0003B5 75 F0 80         [24] 1327 	mov	b,#0x80
                                   1328 ;	main.c:68: break;
                                   1329 ;	main.c:69: case 4:
      0003B8 02 02 FB         [24] 1330 	ljmp	_LCD_print
      0003BB                       1331 00104$:
                                   1332 ;	main.c:70: LCD_print("MIE");
      0003BB 90 07 62         [24] 1333 	mov	dptr,#___str_3
      0003BE 75 F0 80         [24] 1334 	mov	b,#0x80
                                   1335 ;	main.c:71: break;
                                   1336 ;	main.c:72: case 5:
      0003C1 02 02 FB         [24] 1337 	ljmp	_LCD_print
      0003C4                       1338 00105$:
                                   1339 ;	main.c:73: LCD_print("JUE");
      0003C4 90 07 66         [24] 1340 	mov	dptr,#___str_4
      0003C7 75 F0 80         [24] 1341 	mov	b,#0x80
                                   1342 ;	main.c:74: break;
                                   1343 ;	main.c:75: case 6:
      0003CA 02 02 FB         [24] 1344 	ljmp	_LCD_print
      0003CD                       1345 00106$:
                                   1346 ;	main.c:76: LCD_print("VIE");
      0003CD 90 07 6A         [24] 1347 	mov	dptr,#___str_5
      0003D0 75 F0 80         [24] 1348 	mov	b,#0x80
                                   1349 ;	main.c:77: break;
                                   1350 ;	main.c:78: case 7:
      0003D3 02 02 FB         [24] 1351 	ljmp	_LCD_print
      0003D6                       1352 00107$:
                                   1353 ;	main.c:79: LCD_print("SAB");
      0003D6 90 07 6E         [24] 1354 	mov	dptr,#___str_6
      0003D9 75 F0 80         [24] 1355 	mov	b,#0x80
      0003DC 12 02 FB         [24] 1356 	lcall	_LCD_print
                                   1357 ;	main.c:81: }
      0003DF                       1358 00108$:
      0003DF 22               [24] 1359 	ret
                                   1360 ;------------------------------------------------------------
                                   1361 ;Allocation info for local variables in function 'bisiesto'
                                   1362 ;------------------------------------------------------------
                                   1363 ;	main.c:100: bool bisiesto(void)
                                   1364 ;	-----------------------------------------
                                   1365 ;	 function bisiesto
                                   1366 ;	-----------------------------------------
      0003E0                       1367 _bisiesto:
                                   1368 ;	main.c:103: return !(DS1307_time.Ano%4);
      0003E0 74 03            [12] 1369 	mov	a,#0x03
      0003E2 55 24            [12] 1370 	anl	a,(_DS1307_time + 0x0003)
      0003E4 FF               [12] 1371 	mov	r7,a
      0003E5 B4 01 00         [24] 1372 	cjne	a,#0x01,00103$
      0003E8                       1373 00103$:
      0003E8 22               [24] 1374 	ret
                                   1375 ;------------------------------------------------------------
                                   1376 ;Allocation info for local variables in function 'diasDelMes'
                                   1377 ;------------------------------------------------------------
                                   1378 ;	main.c:113: uint8_t diasDelMes(void)
                                   1379 ;	-----------------------------------------
                                   1380 ;	 function diasDelMes
                                   1381 ;	-----------------------------------------
      0003E9                       1382 _diasDelMes:
                                   1383 ;	main.c:115: if(DS1307_time.Mes==2)                        // Mes = febrero
      0003E9 AF 23            [24] 1384 	mov	r7,(_DS1307_time + 0x0002)
      0003EB BF 02 0E         [24] 1385 	cjne	r7,#0x02,00102$
                                   1386 ;	main.c:117: return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
      0003EE 12 03 E0         [24] 1387 	lcall	_bisiesto
      0003F1 50 04            [24] 1388 	jnc	00110$
      0003F3 7E 1D            [12] 1389 	mov	r6,#0x1d
      0003F5 80 02            [24] 1390 	sjmp	00111$
      0003F7                       1391 00110$:
      0003F7 7E 1C            [12] 1392 	mov	r6,#0x1c
      0003F9                       1393 00111$:
      0003F9 8E 82            [24] 1394 	mov	dpl,r6
      0003FB 22               [24] 1395 	ret
      0003FC                       1396 00102$:
                                   1397 ;	main.c:119: if((DS1307_time.Mes==4) || (DS1307_time.Mes==6) || (DS1307_time.Mes==9) || (DS1307_time.Mes==11))
      0003FC BF 04 02         [24] 1398 	cjne	r7,#0x04,00130$
      0003FF 80 0D            [24] 1399 	sjmp	00103$
      000401                       1400 00130$:
      000401 BF 06 02         [24] 1401 	cjne	r7,#0x06,00131$
      000404 80 08            [24] 1402 	sjmp	00103$
      000406                       1403 00131$:
      000406 BF 09 02         [24] 1404 	cjne	r7,#0x09,00132$
      000409 80 03            [24] 1405 	sjmp	00103$
      00040B                       1406 00132$:
      00040B BF 0B 04         [24] 1407 	cjne	r7,#0x0b,00104$
      00040E                       1408 00103$:
                                   1409 ;	main.c:121: return 30;                    // Meses de 30 días.
      00040E 75 82 1E         [24] 1410 	mov	dpl,#0x1e
      000411 22               [24] 1411 	ret
      000412                       1412 00104$:
                                   1413 ;	main.c:123: return 31;                        // Meses de 31 días.
      000412 75 82 1F         [24] 1414 	mov	dpl,#0x1f
      000415 22               [24] 1415 	ret
                                   1416 ;------------------------------------------------------------
                                   1417 ;Allocation info for local variables in function 'LCDPrintNumero'
                                   1418 ;------------------------------------------------------------
                                   1419 ;numero                    Allocated to registers r7 
                                   1420 ;------------------------------------------------------------
                                   1421 ;	main.c:126: void LCDPrintNumero(uint8_t numero)
                                   1422 ;	-----------------------------------------
                                   1423 ;	 function LCDPrintNumero
                                   1424 ;	-----------------------------------------
      000416                       1425 _LCDPrintNumero:
      000416 AF 82            [24] 1426 	mov	r7,dpl
                                   1427 ;	main.c:128: LCD_putChar((numero/10)+48);   // Imprime dígito decena.
      000418 75 F0 0A         [24] 1428 	mov	b,#0x0a
      00041B EF               [12] 1429 	mov	a,r7
      00041C 84               [48] 1430 	div	ab
      00041D 24 30            [12] 1431 	add	a,#0x30
      00041F F5 82            [12] 1432 	mov	dpl,a
      000421 C0 07            [24] 1433 	push	ar7
      000423 12 02 35         [24] 1434 	lcall	_LCD_putChar
      000426 D0 07            [24] 1435 	pop	ar7
                                   1436 ;	main.c:129: LCD_putChar((numero%10)+48);   // Improme dígito unidad.
      000428 75 F0 0A         [24] 1437 	mov	b,#0x0a
      00042B EF               [12] 1438 	mov	a,r7
      00042C 84               [48] 1439 	div	ab
      00042D E5 F0            [12] 1440 	mov	a,b
      00042F 24 30            [12] 1441 	add	a,#0x30
      000431 F5 82            [12] 1442 	mov	dpl,a
      000433 02 02 35         [24] 1443 	ljmp	_LCD_putChar
                                   1444 ;------------------------------------------------------------
                                   1445 ;Allocation info for local variables in function 'timeShow'
                                   1446 ;------------------------------------------------------------
                                   1447 ;	main.c:142: void timeShow(void)
                                   1448 ;	-----------------------------------------
                                   1449 ;	 function timeShow
                                   1450 ;	-----------------------------------------
      000436                       1451 _timeShow:
                                   1452 ;	main.c:144: LCD_gotoXY(1,0);
      000436 75 28 00         [24] 1453 	mov	_LCD_gotoXY_PARM_2,#0x00
      000439 75 82 01         [24] 1454 	mov	dpl,#0x01
      00043C 12 02 3E         [24] 1455 	lcall	_LCD_gotoXY
                                   1456 ;	main.c:145: LCDPrintNumero(DS1307_time.Dia);
      00043F 85 22 82         [24] 1457 	mov	dpl,(_DS1307_time + 0x0001)
      000442 12 04 16         [24] 1458 	lcall	_LCDPrintNumero
                                   1459 ;	main.c:146: LCD_putChar('/');
      000445 75 82 2F         [24] 1460 	mov	dpl,#0x2f
      000448 12 02 35         [24] 1461 	lcall	_LCD_putChar
                                   1462 ;	main.c:147: LCDPrintNumero(DS1307_time.Mes);
      00044B 85 23 82         [24] 1463 	mov	dpl,(_DS1307_time + 0x0002)
      00044E 12 04 16         [24] 1464 	lcall	_LCDPrintNumero
                                   1465 ;	main.c:148: LCD_putChar('/');
      000451 75 82 2F         [24] 1466 	mov	dpl,#0x2f
      000454 12 02 35         [24] 1467 	lcall	_LCD_putChar
                                   1468 ;	main.c:149: LCDPrintNumero(DS1307_time.Ano);
      000457 85 24 82         [24] 1469 	mov	dpl,(_DS1307_time + 0x0003)
      00045A 12 04 16         [24] 1470 	lcall	_LCDPrintNumero
                                   1471 ;	main.c:150: LCD_print("   ");
      00045D 90 07 72         [24] 1472 	mov	dptr,#___str_7
      000460 75 F0 80         [24] 1473 	mov	b,#0x80
      000463 12 02 FB         [24] 1474 	lcall	_LCD_print
                                   1475 ;	main.c:151: LCDPrintDiaSemana();
      000466 12 03 7A         [24] 1476 	lcall	_LCDPrintDiaSemana
                                   1477 ;	main.c:152: LCD_print(" ");
      000469 90 07 76         [24] 1478 	mov	dptr,#___str_8
      00046C 75 F0 80         [24] 1479 	mov	b,#0x80
      00046F 12 02 FB         [24] 1480 	lcall	_LCD_print
                                   1481 ;	main.c:153: LCD_gotoXY(1,1);
      000472 75 28 01         [24] 1482 	mov	_LCD_gotoXY_PARM_2,#0x01
      000475 75 82 01         [24] 1483 	mov	dpl,#0x01
      000478 12 02 3E         [24] 1484 	lcall	_LCD_gotoXY
                                   1485 ;	main.c:154: LCDPrintNumero(DS1307_time.Hora);
      00047B 85 25 82         [24] 1486 	mov	dpl,(_DS1307_time + 0x0004)
      00047E 12 04 16         [24] 1487 	lcall	_LCDPrintNumero
                                   1488 ;	main.c:155: LCD_putChar(':');
      000481 75 82 3A         [24] 1489 	mov	dpl,#0x3a
      000484 12 02 35         [24] 1490 	lcall	_LCD_putChar
                                   1491 ;	main.c:156: LCDPrintNumero(DS1307_time.Minuto);
      000487 85 26 82         [24] 1492 	mov	dpl,(_DS1307_time + 0x0005)
      00048A 12 04 16         [24] 1493 	lcall	_LCDPrintNumero
                                   1494 ;	main.c:157: LCD_putChar(':');
      00048D 75 82 3A         [24] 1495 	mov	dpl,#0x3a
      000490 12 02 35         [24] 1496 	lcall	_LCD_putChar
                                   1497 ;	main.c:158: LCDPrintNumero(DS1307_time.Segundo);
      000493 85 27 82         [24] 1498 	mov	dpl,(_DS1307_time + 0x0006)
      000496 12 04 16         [24] 1499 	lcall	_LCDPrintNumero
                                   1500 ;	main.c:159: LCD_print("       ");
      000499 90 07 78         [24] 1501 	mov	dptr,#___str_9
      00049C 75 F0 80         [24] 1502 	mov	b,#0x80
      00049F 02 02 FB         [24] 1503 	ljmp	_LCD_print
                                   1504 ;------------------------------------------------------------
                                   1505 ;Allocation info for local variables in function 'cicloTimeSet'
                                   1506 ;------------------------------------------------------------
                                   1507 ;limSup                    Allocated with name '_cicloTimeSet_PARM_2'
                                   1508 ;lcdX                      Allocated with name '_cicloTimeSet_PARM_3'
                                   1509 ;lcdY                      Allocated with name '_cicloTimeSet_PARM_4'
                                   1510 ;dato                      Allocated with name '_cicloTimeSet_PARM_5'
                                   1511 ;limInf                    Allocated to registers r7 
                                   1512 ;------------------------------------------------------------
                                   1513 ;	main.c:162: void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
                                   1514 ;	-----------------------------------------
                                   1515 ;	 function cicloTimeSet
                                   1516 ;	-----------------------------------------
      0004A2                       1517 _cicloTimeSet:
      0004A2 AF 82            [24] 1518 	mov	r7,dpl
                                   1519 ;	main.c:164: while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
      0004A4 AC 38            [24] 1520 	mov	r4,_cicloTimeSet_PARM_5
      0004A6 AD 39            [24] 1521 	mov	r5,(_cicloTimeSet_PARM_5 + 1)
      0004A8 AE 3A            [24] 1522 	mov	r6,(_cicloTimeSet_PARM_5 + 2)
      0004AA                       1523 00109$:
      0004AA 30 B2 06         [24] 1524 	jnb	_P3_2,00110$
      0004AD 30 B3 03         [24] 1525 	jnb	_P3_3,00150$
      0004B0 02 05 5E         [24] 1526 	ljmp	00111$
      0004B3                       1527 00150$:
      0004B3                       1528 00110$:
                                   1529 ;	main.c:166: LCD_cursorOff();
      0004B3 C0 07            [24] 1530 	push	ar7
      0004B5 C0 06            [24] 1531 	push	ar6
      0004B7 C0 05            [24] 1532 	push	ar5
      0004B9 C0 04            [24] 1533 	push	ar4
      0004BB 12 02 92         [24] 1534 	lcall	_LCD_cursorOff
      0004BE D0 04            [24] 1535 	pop	ar4
      0004C0 D0 05            [24] 1536 	pop	ar5
      0004C2 D0 06            [24] 1537 	pop	ar6
      0004C4 D0 07            [24] 1538 	pop	ar7
                                   1539 ;	main.c:167: if(P_INC==0)   // Si se ha pulsado INC
      0004C6 20 B2 27         [24] 1540 	jb	_P3_2,00107$
                                   1541 ;	main.c:169: (*dato)++;
      0004C9 8C 82            [24] 1542 	mov	dpl,r4
      0004CB 8D 83            [24] 1543 	mov	dph,r5
      0004CD 8E F0            [24] 1544 	mov	b,r6
      0004CF 12 07 36         [24] 1545 	lcall	__gptrget
      0004D2 FB               [12] 1546 	mov	r3,a
      0004D3 0B               [12] 1547 	inc	r3
      0004D4 8C 82            [24] 1548 	mov	dpl,r4
      0004D6 8D 83            [24] 1549 	mov	dph,r5
      0004D8 8E F0            [24] 1550 	mov	b,r6
      0004DA EB               [12] 1551 	mov	a,r3
      0004DB 12 07 1B         [24] 1552 	lcall	__gptrput
                                   1553 ;	main.c:170: if(*dato>limSup) *dato=limInf;
      0004DE C3               [12] 1554 	clr	c
      0004DF E5 35            [12] 1555 	mov	a,_cicloTimeSet_PARM_2
      0004E1 9B               [12] 1556 	subb	a,r3
      0004E2 50 3E            [24] 1557 	jnc	00108$
      0004E4 8C 82            [24] 1558 	mov	dpl,r4
      0004E6 8D 83            [24] 1559 	mov	dph,r5
      0004E8 8E F0            [24] 1560 	mov	b,r6
      0004EA EF               [12] 1561 	mov	a,r7
      0004EB 12 07 1B         [24] 1562 	lcall	__gptrput
      0004EE 80 32            [24] 1563 	sjmp	00108$
      0004F0                       1564 00107$:
                                   1565 ;	main.c:174: (*dato)--;
      0004F0 8C 82            [24] 1566 	mov	dpl,r4
      0004F2 8D 83            [24] 1567 	mov	dph,r5
      0004F4 8E F0            [24] 1568 	mov	b,r6
      0004F6 12 07 36         [24] 1569 	lcall	__gptrget
      0004F9 FB               [12] 1570 	mov	r3,a
      0004FA 1B               [12] 1571 	dec	r3
      0004FB 8C 82            [24] 1572 	mov	dpl,r4
      0004FD 8D 83            [24] 1573 	mov	dph,r5
      0004FF 8E F0            [24] 1574 	mov	b,r6
      000501 EB               [12] 1575 	mov	a,r3
      000502 12 07 1B         [24] 1576 	lcall	__gptrput
                                   1577 ;	main.c:175: if((*dato<limInf)||(*dato==0xFF)) *dato=limSup; // Si limInf==0 (*Dato)-- puede ser 0xFF.
      000505 8C 82            [24] 1578 	mov	dpl,r4
      000507 8D 83            [24] 1579 	mov	dph,r5
      000509 8E F0            [24] 1580 	mov	b,r6
      00050B 12 07 36         [24] 1581 	lcall	__gptrget
      00050E FA               [12] 1582 	mov	r2,a
      00050F C3               [12] 1583 	clr	c
      000510 EB               [12] 1584 	mov	a,r3
      000511 9F               [12] 1585 	subb	a,r7
      000512 40 03            [24] 1586 	jc	00103$
      000514 BA FF 0B         [24] 1587 	cjne	r2,#0xff,00108$
      000517                       1588 00103$:
      000517 8C 82            [24] 1589 	mov	dpl,r4
      000519 8D 83            [24] 1590 	mov	dph,r5
      00051B 8E F0            [24] 1591 	mov	b,r6
      00051D E5 35            [12] 1592 	mov	a,_cicloTimeSet_PARM_2
      00051F 12 07 1B         [24] 1593 	lcall	__gptrput
      000522                       1594 00108$:
                                   1595 ;	main.c:177: LCD_gotoXY(lcdX, lcdY);
      000522 85 37 28         [24] 1596 	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
      000525 85 36 82         [24] 1597 	mov	dpl,_cicloTimeSet_PARM_3
      000528 C0 07            [24] 1598 	push	ar7
      00052A C0 06            [24] 1599 	push	ar6
      00052C C0 05            [24] 1600 	push	ar5
      00052E C0 04            [24] 1601 	push	ar4
      000530 12 02 3E         [24] 1602 	lcall	_LCD_gotoXY
      000533 D0 04            [24] 1603 	pop	ar4
      000535 D0 05            [24] 1604 	pop	ar5
      000537 D0 06            [24] 1605 	pop	ar6
                                   1606 ;	main.c:178: LCDPrintNumero(*dato);
      000539 8C 82            [24] 1607 	mov	dpl,r4
      00053B 8D 83            [24] 1608 	mov	dph,r5
      00053D 8E F0            [24] 1609 	mov	b,r6
      00053F 12 07 36         [24] 1610 	lcall	__gptrget
      000542 F5 82            [12] 1611 	mov	dpl,a
      000544 C0 06            [24] 1612 	push	ar6
      000546 C0 05            [24] 1613 	push	ar5
      000548 C0 04            [24] 1614 	push	ar4
      00054A 12 04 16         [24] 1615 	lcall	_LCDPrintNumero
      00054D D0 04            [24] 1616 	pop	ar4
      00054F D0 05            [24] 1617 	pop	ar5
      000551 D0 06            [24] 1618 	pop	ar6
      000553 D0 07            [24] 1619 	pop	ar7
                                   1620 ;	main.c:179: delay_ms(TIEMPO_REPETICION);
      000555 90 01 F4         [24] 1621 	mov	dptr,#0x01f4
      000558 12 00 70         [24] 1622 	lcall	_delay_ms
      00055B 02 04 AA         [24] 1623 	ljmp	00109$
      00055E                       1624 00111$:
                                   1625 ;	main.c:181: if(P_SET==0)
      00055E 20 B4 28         [24] 1626 	jb	_P3_4,00118$
                                   1627 ;	main.c:183: k++;
      000561 05 31            [12] 1628 	inc	_k
                                   1629 ;	main.c:184: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
      000563                       1630 00112$:
      000563 20 B4 08         [24] 1631 	jb	_P3_4,00114$
      000566 90 00 0A         [24] 1632 	mov	dptr,#0x000a
      000569 12 00 70         [24] 1633 	lcall	_delay_ms
      00056C 80 F5            [24] 1634 	sjmp	00112$
      00056E                       1635 00114$:
                                   1636 ;	main.c:185: if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
      00056E 8C 82            [24] 1637 	mov	dpl,r4
      000570 8D 83            [24] 1638 	mov	dph,r5
      000572 8E F0            [24] 1639 	mov	b,r6
      000574 12 07 36         [24] 1640 	lcall	__gptrget
      000577 FF               [12] 1641 	mov	r7,a
      000578 C3               [12] 1642 	clr	c
      000579 E5 35            [12] 1643 	mov	a,_cicloTimeSet_PARM_2
      00057B 9F               [12] 1644 	subb	a,r7
      00057C 50 0B            [24] 1645 	jnc	00118$
      00057E 8C 82            [24] 1646 	mov	dpl,r4
      000580 8D 83            [24] 1647 	mov	dph,r5
      000582 8E F0            [24] 1648 	mov	b,r6
      000584 E5 35            [12] 1649 	mov	a,_cicloTimeSet_PARM_2
      000586 12 07 1B         [24] 1650 	lcall	__gptrput
      000589                       1651 00118$:
                                   1652 ;	main.c:188: LCD_gotoXY(++lcdX, lcdY);
      000589 05 36            [12] 1653 	inc	_cicloTimeSet_PARM_3
      00058B 85 37 28         [24] 1654 	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
      00058E 85 36 82         [24] 1655 	mov	dpl,_cicloTimeSet_PARM_3
      000591 12 02 3E         [24] 1656 	lcall	_LCD_gotoXY
                                   1657 ;	main.c:189: LCD_cursorUnderline();
      000594 02 02 80         [24] 1658 	ljmp	_LCD_cursorUnderline
                                   1659 ;------------------------------------------------------------
                                   1660 ;Allocation info for local variables in function 'timeSet'
                                   1661 ;------------------------------------------------------------
                                   1662 ;	main.c:203: void timeSet(void)
                                   1663 ;	-----------------------------------------
                                   1664 ;	 function timeSet
                                   1665 ;	-----------------------------------------
      000597                       1666 _timeSet:
                                   1667 ;	main.c:212: LCD_gotoXY(7,1);           // Goto posición de Segundos en display.
      000597 75 28 01         [24] 1668 	mov	_LCD_gotoXY_PARM_2,#0x01
      00059A 75 82 07         [24] 1669 	mov	dpl,#0x07
      00059D 12 02 3E         [24] 1670 	lcall	_LCD_gotoXY
                                   1671 ;	main.c:213: LCD_print("00");           // 00 en posición de Segundos del display.
      0005A0 90 07 80         [24] 1672 	mov	dptr,#___str_10
      0005A3 75 F0 80         [24] 1673 	mov	b,#0x80
      0005A6 12 02 FB         [24] 1674 	lcall	_LCD_print
                                   1675 ;	main.c:214: LCD_cursorUnderline();     // Cursor On
      0005A9 12 02 80         [24] 1676 	lcall	_LCD_cursorUnderline
                                   1677 ;	main.c:217: DS1307_time.Segundo = 0;            // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
      0005AC 75 27 00         [24] 1678 	mov	(_DS1307_time + 0x0006),#0x00
                                   1679 ;	main.c:218: while(k<SALIR_SET_TIME)
      0005AF                       1680 00138$:
      0005AF 74 F9            [12] 1681 	mov	a,#0x100 - 0x07
      0005B1 25 31            [12] 1682 	add	a,_k
      0005B3 50 03            [24] 1683 	jnc	00215$
      0005B5 02 06 CC         [24] 1684 	ljmp	00140$
      0005B8                       1685 00215$:
                                   1686 ;	main.c:220: while(k==SET_ANO)    cicloTimeSet(0,99,7,0,&DS1307_time.Ano);            // Set año.
      0005B8                       1687 00101$:
      0005B8 74 01            [12] 1688 	mov	a,#0x01
      0005BA B5 31 1A         [24] 1689 	cjne	a,_k,00104$
      0005BD 75 38 24         [24] 1690 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0003)
      0005C0 75 39 00         [24] 1691 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0005C3 75 3A 40         [24] 1692 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0005C6 75 35 63         [24] 1693 	mov	_cicloTimeSet_PARM_2,#0x63
      0005C9 75 36 07         [24] 1694 	mov	_cicloTimeSet_PARM_3,#0x07
      0005CC 75 37 00         [24] 1695 	mov	_cicloTimeSet_PARM_4,#0x00
      0005CF 75 82 00         [24] 1696 	mov	dpl,#0x00
      0005D2 12 04 A2         [24] 1697 	lcall	_cicloTimeSet
                                   1698 ;	main.c:221: while(k==SET_MES)    cicloTimeSet(1,12,4,0,&DS1307_time.Mes);            // Set mes.
      0005D5 80 E1            [24] 1699 	sjmp	00101$
      0005D7                       1700 00104$:
      0005D7 74 02            [12] 1701 	mov	a,#0x02
      0005D9 B5 31 1A         [24] 1702 	cjne	a,_k,00107$
      0005DC 75 38 23         [24] 1703 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0002)
      0005DF 75 39 00         [24] 1704 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0005E2 75 3A 40         [24] 1705 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0005E5 75 35 0C         [24] 1706 	mov	_cicloTimeSet_PARM_2,#0x0c
      0005E8 75 36 04         [24] 1707 	mov	_cicloTimeSet_PARM_3,#0x04
      0005EB 75 37 00         [24] 1708 	mov	_cicloTimeSet_PARM_4,#0x00
      0005EE 75 82 01         [24] 1709 	mov	dpl,#0x01
      0005F1 12 04 A2         [24] 1710 	lcall	_cicloTimeSet
                                   1711 ;	main.c:222: while(k==SET_DIA)    cicloTimeSet(1,diasDelMes(),1,0,&DS1307_time.Dia);  // Set día.
      0005F4 80 E1            [24] 1712 	sjmp	00104$
      0005F6                       1713 00107$:
      0005F6 74 03            [12] 1714 	mov	a,#0x03
      0005F8 B5 31 1D         [24] 1715 	cjne	a,_k,00110$
      0005FB 12 03 E9         [24] 1716 	lcall	_diasDelMes
      0005FE 85 82 35         [24] 1717 	mov	_cicloTimeSet_PARM_2,dpl
      000601 75 38 22         [24] 1718 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0001)
      000604 75 39 00         [24] 1719 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      000607 75 3A 40         [24] 1720 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      00060A 75 36 01         [24] 1721 	mov	_cicloTimeSet_PARM_3,#0x01
      00060D 75 37 00         [24] 1722 	mov	_cicloTimeSet_PARM_4,#0x00
      000610 75 82 01         [24] 1723 	mov	dpl,#0x01
      000613 12 04 A2         [24] 1724 	lcall	_cicloTimeSet
                                   1725 ;	main.c:223: while(k==SET_HORA)   cicloTimeSet(0,23,1,1,&DS1307_time.Hora);           // Set hora.
      000616 80 DE            [24] 1726 	sjmp	00107$
      000618                       1727 00110$:
      000618 74 04            [12] 1728 	mov	a,#0x04
      00061A B5 31 1A         [24] 1729 	cjne	a,_k,00113$
      00061D 75 38 25         [24] 1730 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0004)
      000620 75 39 00         [24] 1731 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      000623 75 3A 40         [24] 1732 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000626 75 35 17         [24] 1733 	mov	_cicloTimeSet_PARM_2,#0x17
      000629 75 36 01         [24] 1734 	mov	_cicloTimeSet_PARM_3,#0x01
      00062C 75 37 01         [24] 1735 	mov	_cicloTimeSet_PARM_4,#0x01
      00062F 75 82 00         [24] 1736 	mov	dpl,#0x00
      000632 12 04 A2         [24] 1737 	lcall	_cicloTimeSet
                                   1738 ;	main.c:224: while(k==SET_MINUTO) cicloTimeSet(0,59,4,1,&DS1307_time.Minuto);         // Set minutos.
      000635 80 E1            [24] 1739 	sjmp	00110$
      000637                       1740 00113$:
      000637 74 05            [12] 1741 	mov	a,#0x05
      000639 B5 31 1A         [24] 1742 	cjne	a,_k,00135$
      00063C 75 38 26         [24] 1743 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0005)
      00063F 75 39 00         [24] 1744 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      000642 75 3A 40         [24] 1745 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000645 75 35 3B         [24] 1746 	mov	_cicloTimeSet_PARM_2,#0x3b
      000648 75 36 04         [24] 1747 	mov	_cicloTimeSet_PARM_3,#0x04
      00064B 75 37 01         [24] 1748 	mov	_cicloTimeSet_PARM_4,#0x01
      00064E 75 82 00         [24] 1749 	mov	dpl,#0x00
      000651 12 04 A2         [24] 1750 	lcall	_cicloTimeSet
                                   1751 ;	main.c:225: while(k==SET_DIA_SEM)                                             // Set día de la semana.
      000654 80 E1            [24] 1752 	sjmp	00113$
      000656                       1753 00135$:
      000656 74 06            [12] 1754 	mov	a,#0x06
      000658 B5 31 02         [24] 1755 	cjne	a,_k,00226$
      00065B 80 03            [24] 1756 	sjmp	00227$
      00065D                       1757 00226$:
      00065D 02 05 AF         [24] 1758 	ljmp	00138$
      000660                       1759 00227$:
                                   1760 ;	main.c:230: if(P_INC==0)
      000660 20 B2 25         [24] 1761 	jb	_P3_2,00122$
                                   1762 ;	main.c:232: DS1307_time.DiaSemana++;
      000663 E5 21            [12] 1763 	mov	a,_DS1307_time
      000665 FF               [12] 1764 	mov	r7,a
      000666 04               [12] 1765 	inc	a
      000667 F5 21            [12] 1766 	mov	_DS1307_time,a
                                   1767 ;	main.c:233: while(P_INC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
      000669                       1768 00116$:
      000669 20 B2 08         [24] 1769 	jb	_P3_2,00118$
      00066C 90 00 0A         [24] 1770 	mov	dptr,#0x000a
      00066F 12 00 70         [24] 1771 	lcall	_delay_ms
      000672 80 F5            [24] 1772 	sjmp	00116$
      000674                       1773 00118$:
                                   1774 ;	main.c:234: if(DS1307_time.DiaSemana==8)
      000674 74 08            [12] 1775 	mov	a,#0x08
      000676 B5 21 03         [24] 1776 	cjne	a,_DS1307_time,00120$
                                   1777 ;	main.c:236: DS1307_time.DiaSemana=1;
      000679 75 21 01         [24] 1778 	mov	_DS1307_time,#0x01
      00067C                       1779 00120$:
                                   1780 ;	main.c:238: LCD_gotoXY(12,0);
      00067C 75 28 00         [24] 1781 	mov	_LCD_gotoXY_PARM_2,#0x00
      00067F 75 82 0C         [24] 1782 	mov	dpl,#0x0c
      000682 12 02 3E         [24] 1783 	lcall	_LCD_gotoXY
                                   1784 ;	main.c:239: LCDPrintDiaSemana();
      000685 12 03 7A         [24] 1785 	lcall	_LCDPrintDiaSemana
      000688                       1786 00122$:
                                   1787 ;	main.c:241: if(P_DEC==0)
      000688 20 B3 24         [24] 1788 	jb	_P3_3,00129$
                                   1789 ;	main.c:243: DS1307_time.DiaSemana--;
      00068B E5 21            [12] 1790 	mov	a,_DS1307_time
      00068D FF               [12] 1791 	mov	r7,a
      00068E 14               [12] 1792 	dec	a
      00068F F5 21            [12] 1793 	mov	_DS1307_time,a
                                   1794 ;	main.c:244: while(P_DEC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
      000691                       1795 00123$:
      000691 20 B3 08         [24] 1796 	jb	_P3_3,00125$
      000694 90 00 0A         [24] 1797 	mov	dptr,#0x000a
      000697 12 00 70         [24] 1798 	lcall	_delay_ms
      00069A 80 F5            [24] 1799 	sjmp	00123$
      00069C                       1800 00125$:
                                   1801 ;	main.c:245: if(DS1307_time.DiaSemana==0)
      00069C E5 21            [12] 1802 	mov	a,_DS1307_time
      00069E 70 03            [24] 1803 	jnz	00127$
                                   1804 ;	main.c:247: DS1307_time.DiaSemana=7;
      0006A0 75 21 07         [24] 1805 	mov	_DS1307_time,#0x07
      0006A3                       1806 00127$:
                                   1807 ;	main.c:249: LCD_gotoXY(12,0);
      0006A3 75 28 00         [24] 1808 	mov	_LCD_gotoXY_PARM_2,#0x00
      0006A6 75 82 0C         [24] 1809 	mov	dpl,#0x0c
      0006A9 12 02 3E         [24] 1810 	lcall	_LCD_gotoXY
                                   1811 ;	main.c:250: LCDPrintDiaSemana();
      0006AC 12 03 7A         [24] 1812 	lcall	_LCDPrintDiaSemana
      0006AF                       1813 00129$:
                                   1814 ;	main.c:252: if(P_SET==0)
      0006AF 20 B4 0E         [24] 1815 	jb	_P3_4,00134$
                                   1816 ;	main.c:254: k=SALIR_SET_TIME;
      0006B2 75 31 07         [24] 1817 	mov	_k,#0x07
                                   1818 ;	main.c:255: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
      0006B5                       1819 00130$:
      0006B5 20 B4 08         [24] 1820 	jb	_P3_4,00134$
      0006B8 90 00 0A         [24] 1821 	mov	dptr,#0x000a
      0006BB 12 00 70         [24] 1822 	lcall	_delay_ms
      0006BE 80 F5            [24] 1823 	sjmp	00130$
      0006C0                       1824 00134$:
                                   1825 ;	main.c:257: LCD_gotoXY(14,0);
      0006C0 75 28 00         [24] 1826 	mov	_LCD_gotoXY_PARM_2,#0x00
      0006C3 75 82 0E         [24] 1827 	mov	dpl,#0x0e
      0006C6 12 02 3E         [24] 1828 	lcall	_LCD_gotoXY
      0006C9 02 06 56         [24] 1829 	ljmp	00135$
      0006CC                       1830 00140$:
                                   1831 ;	main.c:260: LCD_cursorOff();
      0006CC 02 02 92         [24] 1832 	ljmp	_LCD_cursorOff
                                   1833 ;------------------------------------------------------------
                                   1834 ;Allocation info for local variables in function 'setup'
                                   1835 ;------------------------------------------------------------
                                   1836 ;	main.c:270: void setup(void)
                                   1837 ;	-----------------------------------------
                                   1838 ;	 function setup
                                   1839 ;	-----------------------------------------
      0006CF                       1840 _setup:
                                   1841 ;	main.c:272: P_INC = 1;   // Configura Pulsadores como Entradas Digitales.
      0006CF D2 B2            [12] 1842 	setb	_P3_2
                                   1843 ;	main.c:273: P_DEC = 1;
      0006D1 D2 B3            [12] 1844 	setb	_P3_3
                                   1845 ;	main.c:274: P_SET = 1;
      0006D3 D2 B4            [12] 1846 	setb	_P3_4
                                   1847 ;	main.c:276: LCD_init();  // Inicializa display LCD.
      0006D5 02 03 26         [24] 1848 	ljmp	_LCD_init
                                   1849 ;------------------------------------------------------------
                                   1850 ;Allocation info for local variables in function 'main'
                                   1851 ;------------------------------------------------------------
                                   1852 ;	main.c:285: void main(void)
                                   1853 ;	-----------------------------------------
                                   1854 ;	 function main
                                   1855 ;	-----------------------------------------
      0006D8                       1856 _main:
                                   1857 ;	main.c:287: setup();
      0006D8 12 06 CF         [24] 1858 	lcall	_setup
                                   1859 ;	main.c:289: while(1)
      0006DB                       1860 00110$:
                                   1861 ;	main.c:291: if(P_SET==0)                          // Comprueba si se ha pulsado SET
      0006DB 20 B4 14         [24] 1862 	jb	_P3_4,00105$
                                   1863 ;	main.c:293: k=1;
      0006DE 75 31 01         [24] 1864 	mov	_k,#0x01
                                   1865 ;	main.c:294: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera fin pulsación y antirebote mecánico.
      0006E1                       1866 00101$:
      0006E1 20 B4 08         [24] 1867 	jb	_P3_4,00103$
      0006E4 90 00 0A         [24] 1868 	mov	dptr,#0x000a
      0006E7 12 00 70         [24] 1869 	lcall	_delay_ms
      0006EA 80 F5            [24] 1870 	sjmp	00101$
      0006EC                       1871 00103$:
                                   1872 ;	main.c:295: timeSet();
      0006EC 12 05 97         [24] 1873 	lcall	_timeSet
                                   1874 ;	main.c:296: DS1307_timeWrite();
      0006EF 12 01 96         [24] 1875 	lcall	_DS1307_timeWrite
      0006F2                       1876 00105$:
                                   1877 ;	main.c:299: DS1307_timeRead();
      0006F2 12 01 2A         [24] 1878 	lcall	_DS1307_timeRead
                                   1879 ;	main.c:303: if(DS1307_time.Segundo != timeSec_old)
      0006F5 E5 32            [12] 1880 	mov	a,_timeSec_old
      0006F7 B5 27 02         [24] 1881 	cjne	a,(_DS1307_time + 0x0006),00131$
      0006FA 80 0E            [24] 1882 	sjmp	00107$
      0006FC                       1883 00131$:
                                   1884 ;	main.c:305: timeShow();      // Actualiza display LCD con fecha y hora.
      0006FC 12 04 36         [24] 1885 	lcall	_timeShow
                                   1886 ;	main.c:306: timeSec_old = DS1307_time.Segundo;
      0006FF 85 27 32         [24] 1887 	mov	_timeSec_old,(_DS1307_time + 0x0006)
                                   1888 ;	main.c:307: refresco    = 800;
      000702 75 33 20         [24] 1889 	mov	_refresco,#0x20
      000705 75 34 03         [24] 1890 	mov	(_refresco + 1),#0x03
      000708 80 06            [24] 1891 	sjmp	00108$
      00070A                       1892 00107$:
                                   1893 ;	main.c:309: else refresco = 50;
      00070A 75 33 32         [24] 1894 	mov	_refresco,#0x32
      00070D 75 34 00         [24] 1895 	mov	(_refresco + 1),#0x00
      000710                       1896 00108$:
                                   1897 ;	main.c:310: delay_ms(refresco);
      000710 85 33 82         [24] 1898 	mov	dpl,_refresco
      000713 85 34 83         [24] 1899 	mov	dph,(_refresco + 1)
      000716 12 00 70         [24] 1900 	lcall	_delay_ms
      000719 80 C0            [24] 1901 	sjmp	00110$
                                   1902 	.area CSEG    (CODE)
                                   1903 	.area CONST   (CODE)
      000756                       1904 ___str_0:
      000756 44 4F 4D              1905 	.ascii "DOM"
      000759 00                    1906 	.db 0x00
      00075A                       1907 ___str_1:
      00075A 4C 55 4E              1908 	.ascii "LUN"
      00075D 00                    1909 	.db 0x00
      00075E                       1910 ___str_2:
      00075E 4D 41 52              1911 	.ascii "MAR"
      000761 00                    1912 	.db 0x00
      000762                       1913 ___str_3:
      000762 4D 49 45              1914 	.ascii "MIE"
      000765 00                    1915 	.db 0x00
      000766                       1916 ___str_4:
      000766 4A 55 45              1917 	.ascii "JUE"
      000769 00                    1918 	.db 0x00
      00076A                       1919 ___str_5:
      00076A 56 49 45              1920 	.ascii "VIE"
      00076D 00                    1921 	.db 0x00
      00076E                       1922 ___str_6:
      00076E 53 41 42              1923 	.ascii "SAB"
      000771 00                    1924 	.db 0x00
      000772                       1925 ___str_7:
      000772 20 20 20              1926 	.ascii "   "
      000775 00                    1927 	.db 0x00
      000776                       1928 ___str_8:
      000776 20                    1929 	.ascii " "
      000777 00                    1930 	.db 0x00
      000778                       1931 ___str_9:
      000778 20 20 20 20 20 20 20  1932 	.ascii "       "
      00077F 00                    1933 	.db 0x00
      000780                       1934 ___str_10:
      000780 30 30                 1935 	.ascii "00"
      000782 00                    1936 	.db 0x00
                                   1937 	.area XINIT   (CODE)
                                   1938 	.area CABS    (ABS,CODE)
