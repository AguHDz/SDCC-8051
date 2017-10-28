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
                                     11 	.globl _DiaSemanaTxt
                                     12 	.globl _main
                                     13 	.globl _setup
                                     14 	.globl _timeSet
                                     15 	.globl _cicloTimeSet
                                     16 	.globl _timeShow
                                     17 	.globl _LCDPrintNumero
                                     18 	.globl _diasDelMes
                                     19 	.globl _bisiesto
                                     20 	.globl _LCDPrintDiaSemana
                                     21 	.globl _LCD_init
                                     22 	.globl _LCD_print
                                     23 	.globl _LCD_gotoXY
                                     24 	.globl _LCD_putChar
                                     25 	.globl _LCD_command
                                     26 	.globl _LCD_send
                                     27 	.globl _LCD_send4Bits
                                     28 	.globl _DS1307_sout
                                     29 	.globl _DS1307_timeWrite
                                     30 	.globl _DS1307_timeRead
                                     31 	.globl _decimalToBCD
                                     32 	.globl _BCDToDecimal
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _FL
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _B
                                    109 	.globl _A
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _IP
                                    113 	.globl _P3
                                    114 	.globl _IE
                                    115 	.globl _P2
                                    116 	.globl _SBUF
                                    117 	.globl _SCON
                                    118 	.globl _P1
                                    119 	.globl _TH1
                                    120 	.globl _TH0
                                    121 	.globl _TL1
                                    122 	.globl _TL0
                                    123 	.globl _TMOD
                                    124 	.globl _TCON
                                    125 	.globl _PCON
                                    126 	.globl _DPH
                                    127 	.globl _DPL
                                    128 	.globl _SP
                                    129 	.globl _P0
                                    130 	.globl _I2C_readByte_PARM_1
                                    131 	.globl _cicloTimeSet_PARM_5
                                    132 	.globl _cicloTimeSet_PARM_4
                                    133 	.globl _cicloTimeSet_PARM_3
                                    134 	.globl _cicloTimeSet_PARM_2
                                    135 	.globl _timeSec_old
                                    136 	.globl _k
                                    137 	.globl _LCD_gotoXY_PARM_2
                                    138 	.globl _DS1307_time
                                    139 	.globl _delay_x10_cycles
                                    140 	.globl _delay_ms
                                    141 	.globl _I2C_start
                                    142 	.globl _I2C_reStart
                                    143 	.globl _I2C_stop
                                    144 	.globl _I2C_writeByte
                                    145 	.globl _I2C_readByte
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000E0   171 _A	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000098   202 _RI	=	0x0098
                           000099   203 _TI	=	0x0099
                           00009A   204 _RB8	=	0x009a
                           00009B   205 _TB8	=	0x009b
                           00009C   206 _REN	=	0x009c
                           00009D   207 _SM2	=	0x009d
                           00009E   208 _SM1	=	0x009e
                           00009F   209 _SM0	=	0x009f
                           0000A0   210 _P2_0	=	0x00a0
                           0000A1   211 _P2_1	=	0x00a1
                           0000A2   212 _P2_2	=	0x00a2
                           0000A3   213 _P2_3	=	0x00a3
                           0000A4   214 _P2_4	=	0x00a4
                           0000A5   215 _P2_5	=	0x00a5
                           0000A6   216 _P2_6	=	0x00a6
                           0000A7   217 _P2_7	=	0x00a7
                           0000A8   218 _EX0	=	0x00a8
                           0000A9   219 _ET0	=	0x00a9
                           0000AA   220 _EX1	=	0x00aa
                           0000AB   221 _ET1	=	0x00ab
                           0000AC   222 _ES	=	0x00ac
                           0000AF   223 _EA	=	0x00af
                           0000B0   224 _P3_0	=	0x00b0
                           0000B1   225 _P3_1	=	0x00b1
                           0000B2   226 _P3_2	=	0x00b2
                           0000B3   227 _P3_3	=	0x00b3
                           0000B4   228 _P3_4	=	0x00b4
                           0000B5   229 _P3_5	=	0x00b5
                           0000B6   230 _P3_6	=	0x00b6
                           0000B7   231 _P3_7	=	0x00b7
                           0000B0   232 _RXD	=	0x00b0
                           0000B1   233 _TXD	=	0x00b1
                           0000B2   234 _INT0	=	0x00b2
                           0000B3   235 _INT1	=	0x00b3
                           0000B4   236 _T0	=	0x00b4
                           0000B5   237 _T1	=	0x00b5
                           0000B6   238 _WR	=	0x00b6
                           0000B7   239 _RD	=	0x00b7
                           0000B8   240 _PX0	=	0x00b8
                           0000B9   241 _PT0	=	0x00b9
                           0000BA   242 _PX1	=	0x00ba
                           0000BB   243 _PT1	=	0x00bb
                           0000BC   244 _PS	=	0x00bc
                           0000D0   245 _P	=	0x00d0
                           0000D1   246 _FL	=	0x00d1
                           0000D2   247 _OV	=	0x00d2
                           0000D3   248 _RS0	=	0x00d3
                           0000D4   249 _RS1	=	0x00d4
                           0000D5   250 _F0	=	0x00d5
                           0000D6   251 _AC	=	0x00d6
                           0000D7   252 _CY	=	0x00d7
                                    253 ;--------------------------------------------------------
                                    254 ; overlayable register banks
                                    255 ;--------------------------------------------------------
                                    256 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        257 	.ds 8
                                    258 ;--------------------------------------------------------
                                    259 ; internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area DSEG    (DATA)
      000008                        262 _DS1307_time::
      000008                        263 	.ds 7
      00000F                        264 _LCD_gotoXY_PARM_2:
      00000F                        265 	.ds 1
      000010                        266 _k::
      000010                        267 	.ds 1
      000011                        268 _timeSec_old::
      000011                        269 	.ds 1
      000012                        270 _cicloTimeSet_PARM_2:
      000012                        271 	.ds 1
      000013                        272 _cicloTimeSet_PARM_3:
      000013                        273 	.ds 1
      000014                        274 _cicloTimeSet_PARM_4:
      000014                        275 	.ds 1
      000015                        276 _cicloTimeSet_PARM_5:
      000015                        277 	.ds 3
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 	.area	OSEG    (OVR,DATA)
                                    282 	.area	OSEG    (OVR,DATA)
                                    283 	.area	OSEG    (OVR,DATA)
                                    284 	.area	OSEG    (OVR,DATA)
                                    285 	.area	OSEG    (OVR,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; Stack segment in internal ram 
                                    288 ;--------------------------------------------------------
                                    289 	.area	SSEG
      000021                        290 __start__stack:
      000021                        291 	.ds	1
                                    292 
                                    293 ;--------------------------------------------------------
                                    294 ; indirectly addressable internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area ISEG    (DATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area IABS    (ABS,DATA)
                                    301 	.area IABS    (ABS,DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; bit data
                                    304 ;--------------------------------------------------------
                                    305 	.area BSEG    (BIT)
      000000                        306 _I2C_writeByte_ACKbit_1_33:
      000000                        307 	.ds 1
      000001                        308 _I2C_writeByte_sloc0_1_0:
      000001                        309 	.ds 1
      000002                        310 _I2C_readByte_PARM_1:
      000002                        311 	.ds 1
      000003                        312 _LCD_send4Bits_sloc0_1_0:
      000003                        313 	.ds 1
                                    314 ;--------------------------------------------------------
                                    315 ; paged external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area PSEG    (PAG,XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XSEG    (XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; absolute external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XABS    (ABS,XDATA)
                                    326 ;--------------------------------------------------------
                                    327 ; external initialized ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XISEG   (XDATA)
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT0 (CODE)
                                    332 	.area GSINIT1 (CODE)
                                    333 	.area GSINIT2 (CODE)
                                    334 	.area GSINIT3 (CODE)
                                    335 	.area GSINIT4 (CODE)
                                    336 	.area GSINIT5 (CODE)
                                    337 	.area GSINIT  (CODE)
                                    338 	.area GSFINAL (CODE)
                                    339 	.area CSEG    (CODE)
                                    340 ;--------------------------------------------------------
                                    341 ; interrupt vector 
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
      000000                        344 __interrupt_vect:
      000000 02 00 06         [24]  345 	ljmp	__sdcc_gsinit_startup
                                    346 ;--------------------------------------------------------
                                    347 ; global & static initialisations
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area GSINIT  (CODE)
                                    353 	.globl __sdcc_gsinit_startup
                                    354 	.globl __sdcc_program_startup
                                    355 	.globl __start__stack
                                    356 	.globl __mcs51_genXINIT
                                    357 	.globl __mcs51_genXRAMCLEAR
                                    358 	.globl __mcs51_genRAMCLEAR
                                    359 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  360 	ljmp	__sdcc_program_startup
                                    361 ;--------------------------------------------------------
                                    362 ; Home
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
                                    365 	.area HOME    (CODE)
      000003                        366 __sdcc_program_startup:
      000003 02 06 1D         [24]  367 	ljmp	_main
                                    368 ;	return from main will return to caller
                                    369 ;--------------------------------------------------------
                                    370 ; code
                                    371 ;--------------------------------------------------------
                                    372 	.area CSEG    (CODE)
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'delay_x10_cycles'
                                    375 ;------------------------------------------------------------
                                    376 ;x10cycles                 Allocated to registers 
                                    377 ;------------------------------------------------------------
                                    378 ;	../Libs/delay.h:48: void delay_x10_cycles(uint8_t x10cycles)
                                    379 ;	-----------------------------------------
                                    380 ;	 function delay_x10_cycles
                                    381 ;	-----------------------------------------
      000062                        382 _delay_x10_cycles:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
                                    391 ;	../Libs/delay.h:66: __endasm;
      000062 AF 82            [24]  392 	mov	r7,dpl
      000064 1F               [12]  393 	dec	r7
      000065 EF               [12]  394 	mov	a, r7
      000066 60 07            [24]  395 	jz	end_delay_x10_cycles
      000068                        396 	    loop_delay_x10_cycles:
      000068 7E 03            [12]  397 	mov	r6,#3
      00006A                        398 	    loop_delay_10_cycles:
      00006A DE FE            [24]  399 	djnz	r6,loop_delay_10_cycles
      00006C 00               [12]  400 	nop
      00006D DF F9            [24]  401 	djnz	r7,loop_delay_x10_cycles
      00006F                        402 	    end_delay_x10_cycles:
      00006F 22               [24]  403 	ret
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'delay_ms'
                                    406 ;------------------------------------------------------------
                                    407 ;delayTimeMS               Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	../Libs/delay.h:98: void delay_ms(uint16_t delayTimeMS)
                                    410 ;	-----------------------------------------
                                    411 ;	 function delay_ms
                                    412 ;	-----------------------------------------
      000070                        413 _delay_ms:
                                    414 ;	../Libs/delay.h:127: __endasm;
      000070 C0 07            [24]  415 	push	ar7
      000072 C0 06            [24]  416 	push	ar6
      000074 C0 05            [24]  417 	push	ar5
      000076 C0 04            [24]  418 	push	ar4
      000078 C0 03            [24]  419 	push	ar3
      00007A AB 82            [24]  420 	mov	r3,dpl
      00007C AC 83            [24]  421 	mov	r4,dph
      00007E                        422 	    delay_ms_lib_loop:
      00007E 1B               [12]  423 	dec	r3
      00007F BB FF 01         [24]  424 	cjne	r3,#0xff,delay_ms_lib_seguir
      000082 1C               [12]  425 	dec	r4
      000083                        426 	    delay_ms_lib_seguir:
      000083 EB               [12]  427 	mov	a,r3
      000084 4C               [12]  428 	orl	a,r4
      000085 60 08            [24]  429 	jz	delay_ms_lib_fin
                                    430 ;	../Libs/delay.h:129: CALL_DELAY_MS;
      000087 75 82 1E         [24]  431 	mov	dpl,#0x1e
      00008A 12 00 62         [24]  432 	lcall	_delay_x10_cycles
                                    433 ;	../Libs/delay.h:139: __endasm;
      00008D 80 EF            [24]  434 	sjmp	delay_ms_lib_loop
      00008F                        435 	    delay_ms_lib_fin:
      00008F D0 03            [24]  436 	pop	ar3
      000091 D0 04            [24]  437 	pop	ar4
      000093 D0 05            [24]  438 	pop	ar5
      000095 D0 06            [24]  439 	pop	ar6
      000097 D0 07            [24]  440 	pop	ar7
      000099 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'I2C_start'
                                    444 ;------------------------------------------------------------
                                    445 ;	../Libs/I2C.h:22: void I2C_start(void)    //"start" function for communicate I2C
                                    446 ;	-----------------------------------------
                                    447 ;	 function I2C_start
                                    448 ;	-----------------------------------------
      00009A                        449 _I2C_start:
                                    450 ;	../Libs/I2C.h:24: SDA_HIGH;
      00009A D2 90            [12]  451 	setb	_P1_0
                                    452 ;	../Libs/I2C.h:25: SCL_HIGH;
      00009C D2 91            [12]  453 	setb	_P1_1
                                    454 ;	../Libs/I2C.h:26: SDA_LOW;
      00009E C2 90            [12]  455 	clr	_P1_0
                                    456 ;	../Libs/I2C.h:27: SCL_LOW;
      0000A0 C2 91            [12]  457 	clr	_P1_1
      0000A2 22               [24]  458 	ret
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'I2C_reStart'
                                    461 ;------------------------------------------------------------
                                    462 ;	../Libs/I2C.h:30: void I2C_reStart(void)
                                    463 ;	-----------------------------------------
                                    464 ;	 function I2C_reStart
                                    465 ;	-----------------------------------------
      0000A3                        466 _I2C_reStart:
                                    467 ;	../Libs/I2C.h:32: SCL_LOW;
      0000A3 C2 91            [12]  468 	clr	_P1_1
                                    469 ;	../Libs/I2C.h:33: SDA_HIGH;
      0000A5 D2 90            [12]  470 	setb	_P1_0
                                    471 ;	../Libs/I2C.h:34: SCL_HIGH;
      0000A7 D2 91            [12]  472 	setb	_P1_1
                                    473 ;	../Libs/I2C.h:35: SDA_LOW;
      0000A9 C2 90            [12]  474 	clr	_P1_0
      0000AB 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'I2C_stop'
                                    478 ;------------------------------------------------------------
                                    479 ;	../Libs/I2C.h:38: void I2C_stop(void)   //"stop" function for communicate I2C
                                    480 ;	-----------------------------------------
                                    481 ;	 function I2C_stop
                                    482 ;	-----------------------------------------
      0000AC                        483 _I2C_stop:
                                    484 ;	../Libs/I2C.h:40: SDA_LOW;
      0000AC C2 90            [12]  485 	clr	_P1_0
                                    486 ;	../Libs/I2C.h:41: SCL_HIGH;
      0000AE D2 91            [12]  487 	setb	_P1_1
                                    488 ;	../Libs/I2C.h:42: SDA_HIGH;
      0000B0 D2 90            [12]  489 	setb	_P1_0
      0000B2 22               [24]  490 	ret
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'I2C_writeByte'
                                    493 ;------------------------------------------------------------
                                    494 ;dato                      Allocated to registers r7 
                                    495 ;i                         Allocated to registers r6 
                                    496 ;------------------------------------------------------------
                                    497 ;	../Libs/I2C.h:45: bool I2C_writeByte(uint8_t dato)   //write data to I2C
                                    498 ;	-----------------------------------------
                                    499 ;	 function I2C_writeByte
                                    500 ;	-----------------------------------------
      0000B3                        501 _I2C_writeByte:
      0000B3 AF 82            [24]  502 	mov	r7,dpl
                                    503 ;	../Libs/I2C.h:51: for(i=0; i<8; i++)
      0000B5 7E 00            [12]  504 	mov	r6,#0x00
      0000B7                        505 00102$:
                                    506 ;	../Libs/I2C.h:53: SDA = (dato & 0x80);       // SDA = bit de m�s peso del valor dato.
      0000B7 EF               [12]  507 	mov	a,r7
      0000B8 33               [12]  508 	rlc	a
      0000B9 92 01            [24]  509 	mov  _I2C_writeByte_sloc0_1_0,c
      0000BB 92 90            [24]  510 	mov	_P1_0,c
                                    511 ;	../Libs/I2C.h:54: SCL_HIGH;
      0000BD D2 91            [12]  512 	setb	_P1_1
                                    513 ;	../Libs/I2C.h:55: dato<<=1;
      0000BF EF               [12]  514 	mov	a,r7
      0000C0 2F               [12]  515 	add	a,r7
      0000C1 FF               [12]  516 	mov	r7,a
                                    517 ;	../Libs/I2C.h:56: SCL_LOW;
      0000C2 C2 91            [12]  518 	clr	_P1_1
                                    519 ;	../Libs/I2C.h:51: for(i=0; i<8; i++)
      0000C4 0E               [12]  520 	inc	r6
      0000C5 BE 08 00         [24]  521 	cjne	r6,#0x08,00113$
      0000C8                        522 00113$:
      0000C8 40 ED            [24]  523 	jc	00102$
                                    524 ;	../Libs/I2C.h:60: SDA_INPUT;
      0000CA D2 90            [12]  525 	setb	_P1_0
                                    526 ;	../Libs/I2C.h:61: SCL_HIGH;
      0000CC D2 91            [12]  527 	setb	_P1_1
                                    528 ;	../Libs/I2C.h:62: ACKbit = SDA;
      0000CE A2 90            [12]  529 	mov	c,_P1_0
      0000D0 92 00            [24]  530 	mov	_I2C_writeByte_ACKbit_1_33,c
                                    531 ;	../Libs/I2C.h:63: SCL_LOW;
      0000D2 C2 91            [12]  532 	clr	_P1_1
                                    533 ;	../Libs/I2C.h:64: SDA_OUTPUT;
      0000D4 C2 90            [12]  534 	clr	_P1_0
                                    535 ;	../Libs/I2C.h:65: return ACKbit;
      0000D6 A2 00            [12]  536 	mov	c,_I2C_writeByte_ACKbit_1_33
      0000D8 22               [24]  537 	ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'I2C_readByte'
                                    540 ;------------------------------------------------------------
                                    541 ;i                         Allocated to registers r6 
                                    542 ;dato                      Allocated to registers r7 
                                    543 ;------------------------------------------------------------
                                    544 ;	../Libs/I2C.h:68: uint8_t I2C_readByte(bool ACKBit)   //read data from I2C
                                    545 ;	-----------------------------------------
                                    546 ;	 function I2C_readByte
                                    547 ;	-----------------------------------------
      0000D9                        548 _I2C_readByte:
                                    549 ;	../Libs/I2C.h:71: uint8_t dato = 0x00;
      0000D9 7F 00            [12]  550 	mov	r7,#0x00
                                    551 ;	../Libs/I2C.h:74: SDA_INPUT;
      0000DB D2 90            [12]  552 	setb	_P1_0
                                    553 ;	../Libs/I2C.h:75: for(i=0; i<8; i++)
      0000DD 7E 00            [12]  554 	mov	r6,#0x00
      0000DF                        555 00104$:
                                    556 ;	../Libs/I2C.h:77: dato<<=1;
      0000DF EF               [12]  557 	mov	a,r7
      0000E0 2F               [12]  558 	add	a,r7
      0000E1 FF               [12]  559 	mov	r7,a
                                    560 ;	../Libs/I2C.h:78: SCL_HIGH;
      0000E2 D2 91            [12]  561 	setb	_P1_1
                                    562 ;	../Libs/I2C.h:79: if(SDA) dato|=1;
      0000E4 30 90 03         [24]  563 	jnb	_P1_0,00102$
      0000E7 43 07 01         [24]  564 	orl	ar7,#0x01
      0000EA                        565 00102$:
                                    566 ;	../Libs/I2C.h:80: SCL_LOW;
      0000EA C2 91            [12]  567 	clr	_P1_1
                                    568 ;	../Libs/I2C.h:75: for(i=0; i<8; i++)
      0000EC 0E               [12]  569 	inc	r6
      0000ED BE 08 00         [24]  570 	cjne	r6,#0x08,00119$
      0000F0                        571 00119$:
      0000F0 40 ED            [24]  572 	jc	00104$
                                    573 ;	../Libs/I2C.h:84: SDA_OUTPUT;
      0000F2 C2 90            [12]  574 	clr	_P1_0
                                    575 ;	../Libs/I2C.h:85: SDA = !ACKBit;
      0000F4 A2 02            [12]  576 	mov	c,_I2C_readByte_PARM_1
      0000F6 B3               [12]  577 	cpl	c
      0000F7 92 90            [24]  578 	mov	_P1_0,c
                                    579 ;	../Libs/I2C.h:86: SCL_HIGH;
      0000F9 D2 91            [12]  580 	setb	_P1_1
                                    581 ;	../Libs/I2C.h:87: SCL_LOW;
      0000FB C2 91            [12]  582 	clr	_P1_1
                                    583 ;	../Libs/I2C.h:88: return dato;
      0000FD 8F 82            [24]  584 	mov	dpl,r7
      0000FF 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'BCDToDecimal'
                                    588 ;------------------------------------------------------------
                                    589 ;bcdByte                   Allocated to registers r7 
                                    590 ;a                         Allocated to registers r6 
                                    591 ;b                         Allocated to registers 
                                    592 ;dec                       Allocated to registers 
                                    593 ;------------------------------------------------------------
                                    594 ;	../Libs/math.h:14: uint8_t BCDToDecimal(uint8_t bcdByte)
                                    595 ;	-----------------------------------------
                                    596 ;	 function BCDToDecimal
                                    597 ;	-----------------------------------------
      000100                        598 _BCDToDecimal:
      000100 AF 82            [24]  599 	mov	r7,dpl
                                    600 ;	../Libs/math.h:17: a=(((bcdByte & 0xF0) >> 4) * 10);
      000102 74 F0            [12]  601 	mov	a,#0xf0
      000104 5F               [12]  602 	anl	a,r7
      000105 C4               [12]  603 	swap	a
      000106 54 0F            [12]  604 	anl	a,#0x0f
      000108 75 F0 0A         [24]  605 	mov	b,#0x0a
      00010B A4               [48]  606 	mul	ab
      00010C FE               [12]  607 	mov	r6,a
                                    608 ;	../Libs/math.h:18: b=(bcdByte & 0x0F);
      00010D 74 0F            [12]  609 	mov	a,#0x0f
      00010F 5F               [12]  610 	anl	a,r7
                                    611 ;	../Libs/math.h:19: dec=a+b;
      000110 2E               [12]  612 	add	a,r6
      000111 F5 82            [12]  613 	mov	dpl,a
                                    614 ;	../Libs/math.h:20: return dec;
      000113 22               [24]  615 	ret
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'decimalToBCD'
                                    618 ;------------------------------------------------------------
                                    619 ;decimalByte               Allocated to registers r7 
                                    620 ;a                         Allocated to registers r6 
                                    621 ;b                         Allocated to registers r7 
                                    622 ;bcd                       Allocated to registers 
                                    623 ;------------------------------------------------------------
                                    624 ;	../Libs/math.h:31: uint8_t decimalToBCD (uint8_t decimalByte)
                                    625 ;	-----------------------------------------
                                    626 ;	 function decimalToBCD
                                    627 ;	-----------------------------------------
      000114                        628 _decimalToBCD:
      000114 AF 82            [24]  629 	mov	r7,dpl
                                    630 ;	../Libs/math.h:34: a=((decimalByte / 10) << 4);
      000116 75 F0 0A         [24]  631 	mov	b,#0x0a
      000119 EF               [12]  632 	mov	a,r7
      00011A 84               [48]  633 	div	ab
      00011B C4               [12]  634 	swap	a
      00011C 54 F0            [12]  635 	anl	a,#0xf0
      00011E FE               [12]  636 	mov	r6,a
                                    637 ;	../Libs/math.h:35: b= (decimalByte % 10);
      00011F 75 F0 0A         [24]  638 	mov	b,#0x0a
      000122 EF               [12]  639 	mov	a,r7
      000123 84               [48]  640 	div	ab
                                    641 ;	../Libs/math.h:36: bcd=a|b;
      000124 E5 F0            [12]  642 	mov	a,b
      000126 4E               [12]  643 	orl	a,r6
      000127 F5 82            [12]  644 	mov	dpl,a
                                    645 ;	../Libs/math.h:37: return bcd;
      000129 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'DS1307_timeRead'
                                    649 ;------------------------------------------------------------
                                    650 ;	../Libs/DS1307.h:91: void DS1307_timeRead(void)
                                    651 ;	-----------------------------------------
                                    652 ;	 function DS1307_timeRead
                                    653 ;	-----------------------------------------
      00012A                        654 _DS1307_timeRead:
                                    655 ;	../Libs/DS1307.h:93: I2C_start();     // Inicia comunicaci�n I2C.
      00012A 12 00 9A         [24]  656 	lcall	_I2C_start
                                    657 ;	../Libs/DS1307.h:94: I2C_writeByte(0xD0);  // Direcci�n I2C del DS1307.
      00012D 75 82 D0         [24]  658 	mov	dpl,#0xd0
      000130 12 00 B3         [24]  659 	lcall	_I2C_writeByte
                                    660 ;	../Libs/DS1307.h:95: I2C_writeByte(0x00);  // Primera direcci�n a leer/escribir.
      000133 75 82 00         [24]  661 	mov	dpl,#0x00
      000136 12 00 B3         [24]  662 	lcall	_I2C_writeByte
                                    663 ;	../Libs/DS1307.h:96: I2C_start();     // Reinicia comunicaci�n I2C.
      000139 12 00 9A         [24]  664 	lcall	_I2C_start
                                    665 ;	../Libs/DS1307.h:97: I2C_writeByte(0xD1);  // DS1307 en Modo Escritura.
      00013C 75 82 D1         [24]  666 	mov	dpl,#0xd1
      00013F 12 00 B3         [24]  667 	lcall	_I2C_writeByte
                                    668 ;	../Libs/DS1307.h:98: DS1307_time.Segundo   = BCDToDecimal(I2C_readByte(1)); // ASK = 1
      000142 D2 02            [12]  669 	setb	_I2C_readByte_PARM_1
      000144 12 00 D9         [24]  670 	lcall	_I2C_readByte
      000147 12 01 00         [24]  671 	lcall	_BCDToDecimal
      00014A E5 82            [12]  672 	mov	a,dpl
      00014C F5 0E            [12]  673 	mov	(_DS1307_time + 0x0006),a
                                    674 ;	../Libs/DS1307.h:99: DS1307_time.Minuto    = BCDToDecimal(I2C_readByte(1));
      00014E D2 02            [12]  675 	setb	_I2C_readByte_PARM_1
      000150 12 00 D9         [24]  676 	lcall	_I2C_readByte
      000153 12 01 00         [24]  677 	lcall	_BCDToDecimal
      000156 E5 82            [12]  678 	mov	a,dpl
      000158 F5 0D            [12]  679 	mov	(_DS1307_time + 0x0005),a
                                    680 ;	../Libs/DS1307.h:100: DS1307_time.Hora      = BCDToDecimal(I2C_readByte(1));
      00015A D2 02            [12]  681 	setb	_I2C_readByte_PARM_1
      00015C 12 00 D9         [24]  682 	lcall	_I2C_readByte
      00015F 12 01 00         [24]  683 	lcall	_BCDToDecimal
      000162 E5 82            [12]  684 	mov	a,dpl
      000164 F5 0C            [12]  685 	mov	(_DS1307_time + 0x0004),a
                                    686 ;	../Libs/DS1307.h:101: DS1307_time.DiaSemana = I2C_readByte(1);  // Valor 1...7 (igual en decimal que en BCD)
      000166 D2 02            [12]  687 	setb	_I2C_readByte_PARM_1
      000168 12 00 D9         [24]  688 	lcall	_I2C_readByte
      00016B E5 82            [12]  689 	mov	a,dpl
      00016D F5 08            [12]  690 	mov	_DS1307_time,a
                                    691 ;	../Libs/DS1307.h:102: DS1307_time.Dia       = BCDToDecimal(I2C_readByte(1));
      00016F D2 02            [12]  692 	setb	_I2C_readByte_PARM_1
      000171 12 00 D9         [24]  693 	lcall	_I2C_readByte
      000174 12 01 00         [24]  694 	lcall	_BCDToDecimal
      000177 E5 82            [12]  695 	mov	a,dpl
      000179 F5 09            [12]  696 	mov	(_DS1307_time + 0x0001),a
                                    697 ;	../Libs/DS1307.h:103: DS1307_time.Mes       = BCDToDecimal(I2C_readByte(1));
      00017B D2 02            [12]  698 	setb	_I2C_readByte_PARM_1
      00017D 12 00 D9         [24]  699 	lcall	_I2C_readByte
      000180 12 01 00         [24]  700 	lcall	_BCDToDecimal
      000183 E5 82            [12]  701 	mov	a,dpl
      000185 F5 0A            [12]  702 	mov	(_DS1307_time + 0x0002),a
                                    703 ;	../Libs/DS1307.h:104: DS1307_time.Ano       = BCDToDecimal(I2C_readByte(0)); // ASK = 0
      000187 C2 02            [12]  704 	clr	_I2C_readByte_PARM_1
      000189 12 00 D9         [24]  705 	lcall	_I2C_readByte
      00018C 12 01 00         [24]  706 	lcall	_BCDToDecimal
      00018F E5 82            [12]  707 	mov	a,dpl
      000191 F5 0B            [12]  708 	mov	(_DS1307_time + 0x0003),a
                                    709 ;	../Libs/DS1307.h:108: I2C_stop();
      000193 02 00 AC         [24]  710 	ljmp	_I2C_stop
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'DS1307_timeWrite'
                                    713 ;------------------------------------------------------------
                                    714 ;	../Libs/DS1307.h:117: void DS1307_timeWrite(void)
                                    715 ;	-----------------------------------------
                                    716 ;	 function DS1307_timeWrite
                                    717 ;	-----------------------------------------
      000196                        718 _DS1307_timeWrite:
                                    719 ;	../Libs/DS1307.h:119: I2C_start();     // Inicia comunicaci�n I2C
      000196 12 00 9A         [24]  720 	lcall	_I2C_start
                                    721 ;	../Libs/DS1307.h:120: I2C_writeByte(0xD0);  // Direcci�n I2C del DS1307.
      000199 75 82 D0         [24]  722 	mov	dpl,#0xd0
      00019C 12 00 B3         [24]  723 	lcall	_I2C_writeByte
                                    724 ;	../Libs/DS1307.h:121: I2C_writeByte(0x00);  // Primera direcci�n a leer/escribir.
      00019F 75 82 00         [24]  725 	mov	dpl,#0x00
      0001A2 12 00 B3         [24]  726 	lcall	_I2C_writeByte
                                    727 ;	../Libs/DS1307.h:122: I2C_writeByte(decimalToBCD(DS1307_time.Segundo));
      0001A5 85 0E 82         [24]  728 	mov	dpl,(_DS1307_time + 0x0006)
      0001A8 12 01 14         [24]  729 	lcall	_decimalToBCD
      0001AB 12 00 B3         [24]  730 	lcall	_I2C_writeByte
                                    731 ;	../Libs/DS1307.h:123: I2C_writeByte(decimalToBCD(DS1307_time.Minuto));
      0001AE 85 0D 82         [24]  732 	mov	dpl,(_DS1307_time + 0x0005)
      0001B1 12 01 14         [24]  733 	lcall	_decimalToBCD
      0001B4 12 00 B3         [24]  734 	lcall	_I2C_writeByte
                                    735 ;	../Libs/DS1307.h:124: I2C_writeByte(decimalToBCD(DS1307_time.Hora));
      0001B7 85 0C 82         [24]  736 	mov	dpl,(_DS1307_time + 0x0004)
      0001BA 12 01 14         [24]  737 	lcall	_decimalToBCD
      0001BD 12 00 B3         [24]  738 	lcall	_I2C_writeByte
                                    739 ;	../Libs/DS1307.h:125: I2C_writeByte(DS1307_time.DiaSemana);  // Valor 1...7 (igual en decimal que en BCD)
      0001C0 85 08 82         [24]  740 	mov	dpl,_DS1307_time
      0001C3 12 00 B3         [24]  741 	lcall	_I2C_writeByte
                                    742 ;	../Libs/DS1307.h:126: I2C_writeByte(decimalToBCD(DS1307_time.Dia));
      0001C6 85 09 82         [24]  743 	mov	dpl,(_DS1307_time + 0x0001)
      0001C9 12 01 14         [24]  744 	lcall	_decimalToBCD
      0001CC 12 00 B3         [24]  745 	lcall	_I2C_writeByte
                                    746 ;	../Libs/DS1307.h:127: I2C_writeByte(decimalToBCD(DS1307_time.Mes));
      0001CF 85 0A 82         [24]  747 	mov	dpl,(_DS1307_time + 0x0002)
      0001D2 12 01 14         [24]  748 	lcall	_decimalToBCD
      0001D5 12 00 B3         [24]  749 	lcall	_I2C_writeByte
                                    750 ;	../Libs/DS1307.h:128: I2C_writeByte(decimalToBCD(DS1307_time.Ano));
      0001D8 85 0B 82         [24]  751 	mov	dpl,(_DS1307_time + 0x0003)
      0001DB 12 01 14         [24]  752 	lcall	_decimalToBCD
      0001DE 12 00 B3         [24]  753 	lcall	_I2C_writeByte
                                    754 ;	../Libs/DS1307.h:130: I2C_stop();
      0001E1 02 00 AC         [24]  755 	ljmp	_I2C_stop
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'DS1307_sout'
                                    758 ;------------------------------------------------------------
                                    759 ;confSout                  Allocated to registers r7 
                                    760 ;------------------------------------------------------------
                                    761 ;	../Libs/DS1307.h:140: void DS1307_sout(uint8_t confSout)
                                    762 ;	-----------------------------------------
                                    763 ;	 function DS1307_sout
                                    764 ;	-----------------------------------------
      0001E4                        765 _DS1307_sout:
      0001E4 AF 82            [24]  766 	mov	r7,dpl
                                    767 ;	../Libs/DS1307.h:142: I2C_start();                 // Inicia comunicaci�n I2C
      0001E6 C0 07            [24]  768 	push	ar7
      0001E8 12 00 9A         [24]  769 	lcall	_I2C_start
                                    770 ;	../Libs/DS1307.h:143: I2C_writeByte(0xD0);         // Direcci�n I2C del DS1307.
      0001EB 75 82 D0         [24]  771 	mov	dpl,#0xd0
      0001EE 12 00 B3         [24]  772 	lcall	_I2C_writeByte
                                    773 ;	../Libs/DS1307.h:144: I2C_writeByte(0x07);         // Escribe en la direcci�n 07h (configuraci�n)
      0001F1 75 82 07         [24]  774 	mov	dpl,#0x07
      0001F4 12 00 B3         [24]  775 	lcall	_I2C_writeByte
      0001F7 D0 07            [24]  776 	pop	ar7
                                    777 ;	../Libs/DS1307.h:145: I2C_writeByte(confSout);     // Escribe byte de configuraci�n del DS1307.
      0001F9 8F 82            [24]  778 	mov	dpl,r7
      0001FB 12 00 B3         [24]  779 	lcall	_I2C_writeByte
                                    780 ;	../Libs/DS1307.h:146: I2C_stop();
      0001FE 02 00 AC         [24]  781 	ljmp	_I2C_stop
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'LCD_send4Bits'
                                    784 ;------------------------------------------------------------
                                    785 ;date                      Allocated to registers r7 
                                    786 ;------------------------------------------------------------
                                    787 ;	../Libs/LCD.h:169: void LCD_send4Bits(char date)
                                    788 ;	-----------------------------------------
                                    789 ;	 function LCD_send4Bits
                                    790 ;	-----------------------------------------
      000201                        791 _LCD_send4Bits:
                                    792 ;	../Libs/LCD.h:171: LCD_DATA_4 = (date & BIT4);
      000201 E5 82            [12]  793 	mov	a,dpl
      000203 FF               [12]  794 	mov	r7,a
      000204 A2 E4            [12]  795 	mov	c,acc[4]
      000206 92 03            [24]  796 	mov  _LCD_send4Bits_sloc0_1_0,c
      000208 92 94            [24]  797 	mov	_P1_4,c
                                    798 ;	../Libs/LCD.h:172: LCD_DATA_5 = (date & BIT5);
      00020A EF               [12]  799 	mov	a,r7
      00020B A2 E5            [12]  800 	mov	c,acc[5]
      00020D 92 03            [24]  801 	mov  _LCD_send4Bits_sloc0_1_0,c
      00020F 92 95            [24]  802 	mov	_P1_5,c
                                    803 ;	../Libs/LCD.h:173: LCD_DATA_6 = (date & BIT6);
      000211 EF               [12]  804 	mov	a,r7
      000212 A2 E6            [12]  805 	mov	c,acc[6]
      000214 92 03            [24]  806 	mov  _LCD_send4Bits_sloc0_1_0,c
      000216 92 96            [24]  807 	mov	_P1_6,c
                                    808 ;	../Libs/LCD.h:174: LCD_DATA_7 = (date & BIT7);
      000218 EF               [12]  809 	mov	a,r7
      000219 33               [12]  810 	rlc	a
      00021A 92 03            [24]  811 	mov  _LCD_send4Bits_sloc0_1_0,c
      00021C 92 97            [24]  812 	mov	_P1_7,c
                                    813 ;	../Libs/LCD.h:175: LCD_EN     = 1;
      00021E D2 93            [12]  814 	setb	_P1_3
                                    815 ;	../Libs/LCD.h:176: delay_ms(2);
      000220 90 00 02         [24]  816 	mov	dptr,#0x0002
      000223 12 00 70         [24]  817 	lcall	_delay_ms
                                    818 ;	../Libs/LCD.h:177: LCD_EN     = 0;
      000226 C2 93            [12]  819 	clr	_P1_3
                                    820 ;	../Libs/LCD.h:178: delay_ms(2);
      000228 90 00 02         [24]  821 	mov	dptr,#0x0002
      00022B 02 00 70         [24]  822 	ljmp	_delay_ms
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'LCD_send'
                                    825 ;------------------------------------------------------------
                                    826 ;date                      Allocated to registers r7 
                                    827 ;------------------------------------------------------------
                                    828 ;	../Libs/LCD.h:181: void LCD_send(char date)
                                    829 ;	-----------------------------------------
                                    830 ;	 function LCD_send
                                    831 ;	-----------------------------------------
      00022E                        832 _LCD_send:
                                    833 ;	../Libs/LCD.h:183: LCD_send4Bits(date);
      00022E AF 82            [24]  834 	mov  r7,dpl
      000230 C0 07            [24]  835 	push	ar7
      000232 12 02 01         [24]  836 	lcall	_LCD_send4Bits
      000235 D0 07            [24]  837 	pop	ar7
                                    838 ;	../Libs/LCD.h:184: LCD_send4Bits(date<<4);
      000237 EF               [12]  839 	mov	a,r7
      000238 C4               [12]  840 	swap	a
      000239 54 F0            [12]  841 	anl	a,#0xf0
      00023B F5 82            [12]  842 	mov	dpl,a
      00023D 02 02 01         [24]  843 	ljmp	_LCD_send4Bits
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'LCD_command'
                                    846 ;------------------------------------------------------------
                                    847 ;comm                      Allocated to registers r7 
                                    848 ;------------------------------------------------------------
                                    849 ;	../Libs/LCD.h:199: void LCD_command(char comm)
                                    850 ;	-----------------------------------------
                                    851 ;	 function LCD_command
                                    852 ;	-----------------------------------------
      000240                        853 _LCD_command:
      000240 AF 82            [24]  854 	mov	r7,dpl
                                    855 ;	../Libs/LCD.h:201: LCD_RS = LCD_CmdMode;
      000242 C2 92            [12]  856 	clr	_P1_2
                                    857 ;	../Libs/LCD.h:202: LCD_send(comm);
      000244 8F 82            [24]  858 	mov	dpl,r7
      000246 02 02 2E         [24]  859 	ljmp	_LCD_send
                                    860 ;------------------------------------------------------------
                                    861 ;Allocation info for local variables in function 'LCD_putChar'
                                    862 ;------------------------------------------------------------
                                    863 ;chr                       Allocated to registers r7 
                                    864 ;------------------------------------------------------------
                                    865 ;	../Libs/LCD.h:205: void LCD_putChar(char chr)
                                    866 ;	-----------------------------------------
                                    867 ;	 function LCD_putChar
                                    868 ;	-----------------------------------------
      000249                        869 _LCD_putChar:
      000249 AF 82            [24]  870 	mov	r7,dpl
                                    871 ;	../Libs/LCD.h:207: LCD_RS = LCD_CharMode;
      00024B D2 92            [12]  872 	setb	_P1_2
                                    873 ;	../Libs/LCD.h:208: LCD_send(chr);
      00024D 8F 82            [24]  874 	mov	dpl,r7
      00024F 02 02 2E         [24]  875 	ljmp	_LCD_send
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'LCD_gotoXY'
                                    878 ;------------------------------------------------------------
                                    879 ;fila                      Allocated with name '_LCD_gotoXY_PARM_2'
                                    880 ;columna                   Allocated to registers r7 
                                    881 ;------------------------------------------------------------
                                    882 ;	../Libs/LCD.h:212: void LCD_gotoXY(char columna, char fila)
                                    883 ;	-----------------------------------------
                                    884 ;	 function LCD_gotoXY
                                    885 ;	-----------------------------------------
      000252                        886 _LCD_gotoXY:
      000252 AF 82            [24]  887 	mov	r7,dpl
                                    888 ;	../Libs/LCD.h:214: if(fila == 0)
      000254 E5 0F            [12]  889 	mov	a,_LCD_gotoXY_PARM_2
      000256 70 08            [24]  890 	jnz	00110$
                                    891 ;	../Libs/LCD.h:215: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_0);
      000258 74 80            [12]  892 	mov	a,#0x80
      00025A 2F               [12]  893 	add	a,r7
      00025B F5 82            [12]  894 	mov	dpl,a
      00025D 02 02 40         [24]  895 	ljmp	_LCD_command
      000260                        896 00110$:
                                    897 ;	../Libs/LCD.h:216: else if (fila == 1)
      000260 74 01            [12]  898 	mov	a,#0x01
      000262 B5 0F 08         [24]  899 	cjne	a,_LCD_gotoXY_PARM_2,00107$
                                    900 ;	../Libs/LCD.h:217: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_1);
      000265 74 C0            [12]  901 	mov	a,#0xc0
      000267 2F               [12]  902 	add	a,r7
      000268 F5 82            [12]  903 	mov	dpl,a
      00026A 02 02 40         [24]  904 	ljmp	_LCD_command
      00026D                        905 00107$:
                                    906 ;	../Libs/LCD.h:218: else if (fila == 2)
      00026D 74 02            [12]  907 	mov	a,#0x02
      00026F B5 0F 08         [24]  908 	cjne	a,_LCD_gotoXY_PARM_2,00104$
                                    909 ;	../Libs/LCD.h:219: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_2);
      000272 74 94            [12]  910 	mov	a,#0x94
      000274 2F               [12]  911 	add	a,r7
      000275 F5 82            [12]  912 	mov	dpl,a
      000277 02 02 40         [24]  913 	ljmp	_LCD_command
      00027A                        914 00104$:
                                    915 ;	../Libs/LCD.h:220: else if (fila == 3)
      00027A 74 03            [12]  916 	mov	a,#0x03
      00027C B5 0F 08         [24]  917 	cjne	a,_LCD_gotoXY_PARM_2,00112$
                                    918 ;	../Libs/LCD.h:221: LCD_command(LCD_CMD_SET_DISPLAY_ADDRESS + columna + LCD_CMD_ROW_3);
      00027F 74 D4            [12]  919 	mov	a,#0xd4
      000281 2F               [12]  920 	add	a,r7
      000282 F5 82            [12]  921 	mov	dpl,a
      000284 02 02 40         [24]  922 	ljmp	_LCD_command
      000287                        923 00112$:
      000287 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'LCD_print'
                                    927 ;------------------------------------------------------------
                                    928 ;str                       Allocated to registers 
                                    929 ;------------------------------------------------------------
                                    930 ;	../Libs/LCD.h:224: void LCD_print(char *str)
                                    931 ;	-----------------------------------------
                                    932 ;	 function LCD_print
                                    933 ;	-----------------------------------------
      000288                        934 _LCD_print:
      000288 AD 82            [24]  935 	mov	r5,dpl
      00028A AE 83            [24]  936 	mov	r6,dph
      00028C AF F0            [24]  937 	mov	r7,b
                                    938 ;	../Libs/LCD.h:226: while(*str)
      00028E                        939 00101$:
      00028E 8D 82            [24]  940 	mov	dpl,r5
      000290 8E 83            [24]  941 	mov	dph,r6
      000292 8F F0            [24]  942 	mov	b,r7
      000294 12 06 60         [24]  943 	lcall	__gptrget
      000297 FC               [12]  944 	mov	r4,a
      000298 60 18            [24]  945 	jz	00104$
                                    946 ;	../Libs/LCD.h:228: LCD_putChar(*str);
      00029A 8C 82            [24]  947 	mov	dpl,r4
      00029C C0 07            [24]  948 	push	ar7
      00029E C0 06            [24]  949 	push	ar6
      0002A0 C0 05            [24]  950 	push	ar5
      0002A2 12 02 49         [24]  951 	lcall	_LCD_putChar
      0002A5 D0 05            [24]  952 	pop	ar5
      0002A7 D0 06            [24]  953 	pop	ar6
      0002A9 D0 07            [24]  954 	pop	ar7
                                    955 ;	../Libs/LCD.h:229: str++;
      0002AB 0D               [12]  956 	inc	r5
      0002AC BD 00 DF         [24]  957 	cjne	r5,#0x00,00101$
      0002AF 0E               [12]  958 	inc	r6
      0002B0 80 DC            [24]  959 	sjmp	00101$
      0002B2                        960 00104$:
      0002B2 22               [24]  961 	ret
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'LCD_init'
                                    964 ;------------------------------------------------------------
                                    965 ;	../Libs/LCD.h:233: void LCD_init(void)
                                    966 ;	-----------------------------------------
                                    967 ;	 function LCD_init
                                    968 ;	-----------------------------------------
      0002B3                        969 _LCD_init:
                                    970 ;	../Libs/LCD.h:235: delay_ms(200);   // Espera para asegurar tension estable tras arranque.
      0002B3 90 00 C8         [24]  971 	mov	dptr,#0x00c8
      0002B6 12 00 70         [24]  972 	lcall	_delay_ms
                                    973 ;	../Libs/LCD.h:238: LCD_DATA_4 = 0;              // Pines iniciados como salida.
      0002B9 C2 94            [12]  974 	clr	_P1_4
                                    975 ;	../Libs/LCD.h:239: LCD_DATA_5 = 0;
      0002BB C2 95            [12]  976 	clr	_P1_5
                                    977 ;	../Libs/LCD.h:240: LCD_DATA_6 = 0;
      0002BD C2 96            [12]  978 	clr	_P1_6
                                    979 ;	../Libs/LCD.h:241: LCD_DATA_7 = 0;
      0002BF C2 97            [12]  980 	clr	_P1_7
                                    981 ;	../Libs/LCD.h:242: LCD_RS     = 0;
      0002C1 C2 92            [12]  982 	clr	_P1_2
                                    983 ;	../Libs/LCD.h:243: LCD_EN     = 0;
      0002C3 C2 93            [12]  984 	clr	_P1_3
                                    985 ;	../Libs/LCD.h:251: delay_ms(30);    // Espera 15 ms o más.
      0002C5 90 00 1E         [24]  986 	mov	dptr,#0x001e
      0002C8 12 00 70         [24]  987 	lcall	_delay_ms
                                    988 ;	../Libs/LCD.h:255: LCD_send4Bits(0b00110000);
      0002CB 75 82 30         [24]  989 	mov	dpl,#0x30
      0002CE 12 02 01         [24]  990 	lcall	_LCD_send4Bits
                                    991 ;	../Libs/LCD.h:256: delay_ms(5);  // Espera > 4.1 ms
      0002D1 90 00 05         [24]  992 	mov	dptr,#0x0005
      0002D4 12 00 70         [24]  993 	lcall	_delay_ms
                                    994 ;	../Libs/LCD.h:257: LCD_send4Bits(0b00110000);
      0002D7 75 82 30         [24]  995 	mov	dpl,#0x30
      0002DA 12 02 01         [24]  996 	lcall	_LCD_send4Bits
                                    997 ;	../Libs/LCD.h:258: delay_ms(1);  // Espera > 100 us
      0002DD 90 00 01         [24]  998 	mov	dptr,#0x0001
      0002E0 12 00 70         [24]  999 	lcall	_delay_ms
                                   1000 ;	../Libs/LCD.h:259: LCD_send4Bits(0b00110000);
      0002E3 75 82 30         [24] 1001 	mov	dpl,#0x30
      0002E6 12 02 01         [24] 1002 	lcall	_LCD_send4Bits
                                   1003 ;	../Libs/LCD.h:260: LCD_send4Bits(0b00100000);
      0002E9 75 82 20         [24] 1004 	mov	dpl,#0x20
      0002EC 12 02 01         [24] 1005 	lcall	_LCD_send4Bits
                                   1006 ;	../Libs/LCD.h:261: LCD_command(LCD_CMD_FUNCTION_SET + LCD_CMD_4BIT_INTERFACE + LCD_CMD_2LINES + LCD_CMD_F_FONT_5_8);
      0002EF 75 82 28         [24] 1007 	mov	dpl,#0x28
      0002F2 12 02 40         [24] 1008 	lcall	_LCD_command
                                   1009 ;	../Libs/LCD.h:274: LCD_OFF;
      0002F5 75 82 08         [24] 1010 	mov	dpl,#0x08
      0002F8 12 02 40         [24] 1011 	lcall	_LCD_command
                                   1012 ;	../Libs/LCD.h:275: LCD_command(LCD_CMD_CHARACTER_ENTRY_MODE + LCD_CMD_INCREMENT + LCD_CMD_DISPLAY_SHIFT_OFF);
      0002FB 75 82 06         [24] 1013 	mov	dpl,#0x06
      0002FE 12 02 40         [24] 1014 	lcall	_LCD_command
                                   1015 ;	../Libs/LCD.h:277: LCD_ON;
      000301 75 82 0C         [24] 1016 	mov	dpl,#0x0c
      000304 12 02 40         [24] 1017 	lcall	_LCD_command
                                   1018 ;	../Libs/LCD.h:279: LCD_CLEAR;
      000307 75 82 01         [24] 1019 	mov	dpl,#0x01
      00030A 02 02 40         [24] 1020 	ljmp	_LCD_command
                                   1021 ;------------------------------------------------------------
                                   1022 ;Allocation info for local variables in function 'LCDPrintDiaSemana'
                                   1023 ;------------------------------------------------------------
                                   1024 ;	main.c:58: void LCDPrintDiaSemana(void)
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function LCDPrintDiaSemana
                                   1027 ;	-----------------------------------------
      00030D                       1028 _LCDPrintDiaSemana:
                                   1029 ;	main.c:60: LCD_print(DiaSemanaTxt[DS1307_time.DiaSemana-1]);
      00030D E5 08            [12] 1030 	mov	a,_DS1307_time
      00030F 14               [12] 1031 	dec	a
      000310 75 F0 04         [24] 1032 	mov	b,#0x04
      000313 A4               [48] 1033 	mul	ab
      000314 24 80            [12] 1034 	add	a,#_DiaSemanaTxt
      000316 FE               [12] 1035 	mov	r6,a
      000317 74 06            [12] 1036 	mov	a,#(_DiaSemanaTxt >> 8)
      000319 35 F0            [12] 1037 	addc	a,b
      00031B FF               [12] 1038 	mov	r7,a
      00031C 7D 80            [12] 1039 	mov	r5,#0x80
      00031E 8E 82            [24] 1040 	mov	dpl,r6
      000320 8F 83            [24] 1041 	mov	dph,r7
      000322 8D F0            [24] 1042 	mov	b,r5
      000324 02 02 88         [24] 1043 	ljmp	_LCD_print
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'bisiesto'
                                   1046 ;------------------------------------------------------------
                                   1047 ;	main.c:79: bool bisiesto(void)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function bisiesto
                                   1050 ;	-----------------------------------------
      000327                       1051 _bisiesto:
                                   1052 ;	main.c:82: return !(DS1307_time.Ano%4);
      000327 74 03            [12] 1053 	mov	a,#0x03
      000329 55 0B            [12] 1054 	anl	a,(_DS1307_time + 0x0003)
      00032B FF               [12] 1055 	mov	r7,a
      00032C B4 01 00         [24] 1056 	cjne	a,#0x01,00103$
      00032F                       1057 00103$:
      00032F 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'diasDelMes'
                                   1061 ;------------------------------------------------------------
                                   1062 ;	main.c:92: uint8_t diasDelMes(void)
                                   1063 ;	-----------------------------------------
                                   1064 ;	 function diasDelMes
                                   1065 ;	-----------------------------------------
      000330                       1066 _diasDelMes:
                                   1067 ;	main.c:94: if(DS1307_time.Mes==2)                        // Mes = febrero
      000330 AF 0A            [24] 1068 	mov	r7,(_DS1307_time + 0x0002)
      000332 BF 02 0E         [24] 1069 	cjne	r7,#0x02,00102$
                                   1070 ;	main.c:96: return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
      000335 12 03 27         [24] 1071 	lcall	_bisiesto
      000338 50 04            [24] 1072 	jnc	00110$
      00033A 7E 1D            [12] 1073 	mov	r6,#0x1d
      00033C 80 02            [24] 1074 	sjmp	00111$
      00033E                       1075 00110$:
      00033E 7E 1C            [12] 1076 	mov	r6,#0x1c
      000340                       1077 00111$:
      000340 8E 82            [24] 1078 	mov	dpl,r6
      000342 22               [24] 1079 	ret
      000343                       1080 00102$:
                                   1081 ;	main.c:98: if((DS1307_time.Mes==4) || (DS1307_time.Mes==6) || (DS1307_time.Mes==9) || (DS1307_time.Mes==11))
      000343 BF 04 02         [24] 1082 	cjne	r7,#0x04,00130$
      000346 80 0D            [24] 1083 	sjmp	00103$
      000348                       1084 00130$:
      000348 BF 06 02         [24] 1085 	cjne	r7,#0x06,00131$
      00034B 80 08            [24] 1086 	sjmp	00103$
      00034D                       1087 00131$:
      00034D BF 09 02         [24] 1088 	cjne	r7,#0x09,00132$
      000350 80 03            [24] 1089 	sjmp	00103$
      000352                       1090 00132$:
      000352 BF 0B 04         [24] 1091 	cjne	r7,#0x0b,00104$
      000355                       1092 00103$:
                                   1093 ;	main.c:100: return 30;                    // Meses de 30 días.
      000355 75 82 1E         [24] 1094 	mov	dpl,#0x1e
      000358 22               [24] 1095 	ret
      000359                       1096 00104$:
                                   1097 ;	main.c:102: return 31;                        // Meses de 31 días.
      000359 75 82 1F         [24] 1098 	mov	dpl,#0x1f
      00035C 22               [24] 1099 	ret
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'LCDPrintNumero'
                                   1102 ;------------------------------------------------------------
                                   1103 ;numero                    Allocated to registers r7 
                                   1104 ;------------------------------------------------------------
                                   1105 ;	main.c:105: void LCDPrintNumero(uint8_t numero)
                                   1106 ;	-----------------------------------------
                                   1107 ;	 function LCDPrintNumero
                                   1108 ;	-----------------------------------------
      00035D                       1109 _LCDPrintNumero:
      00035D AF 82            [24] 1110 	mov	r7,dpl
                                   1111 ;	main.c:107: LCD_putChar((numero/10)+48);   // Imprime dígito decena.
      00035F 75 F0 0A         [24] 1112 	mov	b,#0x0a
      000362 EF               [12] 1113 	mov	a,r7
      000363 84               [48] 1114 	div	ab
      000364 24 30            [12] 1115 	add	a,#0x30
      000366 F5 82            [12] 1116 	mov	dpl,a
      000368 C0 07            [24] 1117 	push	ar7
      00036A 12 02 49         [24] 1118 	lcall	_LCD_putChar
      00036D D0 07            [24] 1119 	pop	ar7
                                   1120 ;	main.c:108: LCD_putChar((numero%10)+48);   // Improme dígito unidad.
      00036F 75 F0 0A         [24] 1121 	mov	b,#0x0a
      000372 EF               [12] 1122 	mov	a,r7
      000373 84               [48] 1123 	div	ab
      000374 E5 F0            [12] 1124 	mov	a,b
      000376 24 30            [12] 1125 	add	a,#0x30
      000378 F5 82            [12] 1126 	mov	dpl,a
      00037A 02 02 49         [24] 1127 	ljmp	_LCD_putChar
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'timeShow'
                                   1130 ;------------------------------------------------------------
                                   1131 ;	main.c:121: void timeShow(void)
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function timeShow
                                   1134 ;	-----------------------------------------
      00037D                       1135 _timeShow:
                                   1136 ;	main.c:123: LCD_gotoXY(1,0);
      00037D 75 0F 00         [24] 1137 	mov	_LCD_gotoXY_PARM_2,#0x00
      000380 75 82 01         [24] 1138 	mov	dpl,#0x01
      000383 12 02 52         [24] 1139 	lcall	_LCD_gotoXY
                                   1140 ;	main.c:124: LCDPrintNumero(DS1307_time.Dia);
      000386 85 09 82         [24] 1141 	mov	dpl,(_DS1307_time + 0x0001)
      000389 12 03 5D         [24] 1142 	lcall	_LCDPrintNumero
                                   1143 ;	main.c:125: LCD_putChar('/');
      00038C 75 82 2F         [24] 1144 	mov	dpl,#0x2f
      00038F 12 02 49         [24] 1145 	lcall	_LCD_putChar
                                   1146 ;	main.c:126: LCDPrintNumero(DS1307_time.Mes);
      000392 85 0A 82         [24] 1147 	mov	dpl,(_DS1307_time + 0x0002)
      000395 12 03 5D         [24] 1148 	lcall	_LCDPrintNumero
                                   1149 ;	main.c:127: LCD_putChar('/');
      000398 75 82 2F         [24] 1150 	mov	dpl,#0x2f
      00039B 12 02 49         [24] 1151 	lcall	_LCD_putChar
                                   1152 ;	main.c:128: LCDPrintNumero(DS1307_time.Ano);
      00039E 85 0B 82         [24] 1153 	mov	dpl,(_DS1307_time + 0x0003)
      0003A1 12 03 5D         [24] 1154 	lcall	_LCDPrintNumero
                                   1155 ;	main.c:129: LCD_print("   ");
      0003A4 90 06 9C         [24] 1156 	mov	dptr,#___str_0
      0003A7 75 F0 80         [24] 1157 	mov	b,#0x80
      0003AA 12 02 88         [24] 1158 	lcall	_LCD_print
                                   1159 ;	main.c:130: LCDPrintDiaSemana();
      0003AD 12 03 0D         [24] 1160 	lcall	_LCDPrintDiaSemana
                                   1161 ;	main.c:131: LCD_print(" ");
      0003B0 90 06 A0         [24] 1162 	mov	dptr,#___str_1
      0003B3 75 F0 80         [24] 1163 	mov	b,#0x80
      0003B6 12 02 88         [24] 1164 	lcall	_LCD_print
                                   1165 ;	main.c:132: LCD_gotoXY(1,1);
      0003B9 75 0F 01         [24] 1166 	mov	_LCD_gotoXY_PARM_2,#0x01
      0003BC 75 82 01         [24] 1167 	mov	dpl,#0x01
      0003BF 12 02 52         [24] 1168 	lcall	_LCD_gotoXY
                                   1169 ;	main.c:133: LCDPrintNumero(DS1307_time.Hora);
      0003C2 85 0C 82         [24] 1170 	mov	dpl,(_DS1307_time + 0x0004)
      0003C5 12 03 5D         [24] 1171 	lcall	_LCDPrintNumero
                                   1172 ;	main.c:134: LCD_putChar(':');
      0003C8 75 82 3A         [24] 1173 	mov	dpl,#0x3a
      0003CB 12 02 49         [24] 1174 	lcall	_LCD_putChar
                                   1175 ;	main.c:135: LCDPrintNumero(DS1307_time.Minuto);
      0003CE 85 0D 82         [24] 1176 	mov	dpl,(_DS1307_time + 0x0005)
      0003D1 12 03 5D         [24] 1177 	lcall	_LCDPrintNumero
                                   1178 ;	main.c:136: LCD_putChar(':');
      0003D4 75 82 3A         [24] 1179 	mov	dpl,#0x3a
      0003D7 12 02 49         [24] 1180 	lcall	_LCD_putChar
                                   1181 ;	main.c:137: LCDPrintNumero(DS1307_time.Segundo);
      0003DA 85 0E 82         [24] 1182 	mov	dpl,(_DS1307_time + 0x0006)
      0003DD 12 03 5D         [24] 1183 	lcall	_LCDPrintNumero
                                   1184 ;	main.c:138: LCD_print("       ");
      0003E0 90 06 A2         [24] 1185 	mov	dptr,#___str_2
      0003E3 75 F0 80         [24] 1186 	mov	b,#0x80
      0003E6 02 02 88         [24] 1187 	ljmp	_LCD_print
                                   1188 ;------------------------------------------------------------
                                   1189 ;Allocation info for local variables in function 'cicloTimeSet'
                                   1190 ;------------------------------------------------------------
                                   1191 ;limSup                    Allocated with name '_cicloTimeSet_PARM_2'
                                   1192 ;lcdX                      Allocated with name '_cicloTimeSet_PARM_3'
                                   1193 ;lcdY                      Allocated with name '_cicloTimeSet_PARM_4'
                                   1194 ;dato                      Allocated with name '_cicloTimeSet_PARM_5'
                                   1195 ;limInf                    Allocated to registers r7 
                                   1196 ;------------------------------------------------------------
                                   1197 ;	main.c:141: void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function cicloTimeSet
                                   1200 ;	-----------------------------------------
      0003E9                       1201 _cicloTimeSet:
      0003E9 AF 82            [24] 1202 	mov	r7,dpl
                                   1203 ;	main.c:143: while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
      0003EB 74 0C            [12] 1204 	mov	a,#0x0c
      0003ED B5 13 04         [24] 1205 	cjne	a,_cicloTimeSet_PARM_3,00160$
      0003F0 74 01            [12] 1206 	mov	a,#0x01
      0003F2 80 01            [24] 1207 	sjmp	00161$
      0003F4                       1208 00160$:
      0003F4 E4               [12] 1209 	clr	a
      0003F5                       1210 00161$:
      0003F5 FE               [12] 1211 	mov	r6,a
      0003F6 AB 15            [24] 1212 	mov	r3,_cicloTimeSet_PARM_5
      0003F8 AC 16            [24] 1213 	mov	r4,(_cicloTimeSet_PARM_5 + 1)
      0003FA AD 17            [24] 1214 	mov	r5,(_cicloTimeSet_PARM_5 + 2)
      0003FC                       1215 00112$:
      0003FC 30 B2 06         [24] 1216 	jnb	_P3_2,00113$
      0003FF 30 B3 03         [24] 1217 	jnb	_P3_3,00163$
      000402 02 04 DF         [24] 1218 	ljmp	00114$
      000405                       1219 00163$:
      000405                       1220 00113$:
                                   1221 ;	main.c:145: LCD_CURSOR_OFF;
      000405 75 82 0C         [24] 1222 	mov	dpl,#0x0c
      000408 C0 07            [24] 1223 	push	ar7
      00040A C0 06            [24] 1224 	push	ar6
      00040C C0 05            [24] 1225 	push	ar5
      00040E C0 04            [24] 1226 	push	ar4
      000410 C0 03            [24] 1227 	push	ar3
      000412 12 02 40         [24] 1228 	lcall	_LCD_command
      000415 D0 03            [24] 1229 	pop	ar3
      000417 D0 04            [24] 1230 	pop	ar4
      000419 D0 05            [24] 1231 	pop	ar5
      00041B D0 06            [24] 1232 	pop	ar6
      00041D D0 07            [24] 1233 	pop	ar7
                                   1234 ;	main.c:146: if(P_INC==0)   // Si se ha pulsado INC
      00041F 20 B2 27         [24] 1235 	jb	_P3_2,00107$
                                   1236 ;	main.c:148: (*dato)++;
      000422 8B 82            [24] 1237 	mov	dpl,r3
      000424 8C 83            [24] 1238 	mov	dph,r4
      000426 8D F0            [24] 1239 	mov	b,r5
      000428 12 06 60         [24] 1240 	lcall	__gptrget
      00042B FA               [12] 1241 	mov	r2,a
      00042C 0A               [12] 1242 	inc	r2
      00042D 8B 82            [24] 1243 	mov	dpl,r3
      00042F 8C 83            [24] 1244 	mov	dph,r4
      000431 8D F0            [24] 1245 	mov	b,r5
      000433 EA               [12] 1246 	mov	a,r2
      000434 12 06 45         [24] 1247 	lcall	__gptrput
                                   1248 ;	main.c:149: if(*dato>limSup) *dato=limInf;
      000437 C3               [12] 1249 	clr	c
      000438 E5 12            [12] 1250 	mov	a,_cicloTimeSet_PARM_2
      00043A 9A               [12] 1251 	subb	a,r2
      00043B 50 3E            [24] 1252 	jnc	00108$
      00043D 8B 82            [24] 1253 	mov	dpl,r3
      00043F 8C 83            [24] 1254 	mov	dph,r4
      000441 8D F0            [24] 1255 	mov	b,r5
      000443 EF               [12] 1256 	mov	a,r7
      000444 12 06 45         [24] 1257 	lcall	__gptrput
      000447 80 32            [24] 1258 	sjmp	00108$
      000449                       1259 00107$:
                                   1260 ;	main.c:153: (*dato)--;
      000449 8B 82            [24] 1261 	mov	dpl,r3
      00044B 8C 83            [24] 1262 	mov	dph,r4
      00044D 8D F0            [24] 1263 	mov	b,r5
      00044F 12 06 60         [24] 1264 	lcall	__gptrget
      000452 FA               [12] 1265 	mov	r2,a
      000453 1A               [12] 1266 	dec	r2
      000454 8B 82            [24] 1267 	mov	dpl,r3
      000456 8C 83            [24] 1268 	mov	dph,r4
      000458 8D F0            [24] 1269 	mov	b,r5
      00045A EA               [12] 1270 	mov	a,r2
      00045B 12 06 45         [24] 1271 	lcall	__gptrput
                                   1272 ;	main.c:154: if((*dato<limInf)||(*dato==0xFF)) *dato=limSup; // Si limInf==0 (*Dato)-- puede ser 0xFF.
      00045E 8B 82            [24] 1273 	mov	dpl,r3
      000460 8C 83            [24] 1274 	mov	dph,r4
      000462 8D F0            [24] 1275 	mov	b,r5
      000464 12 06 60         [24] 1276 	lcall	__gptrget
      000467 F9               [12] 1277 	mov	r1,a
      000468 C3               [12] 1278 	clr	c
      000469 EA               [12] 1279 	mov	a,r2
      00046A 9F               [12] 1280 	subb	a,r7
      00046B 40 03            [24] 1281 	jc	00103$
      00046D B9 FF 0B         [24] 1282 	cjne	r1,#0xff,00108$
      000470                       1283 00103$:
      000470 8B 82            [24] 1284 	mov	dpl,r3
      000472 8C 83            [24] 1285 	mov	dph,r4
      000474 8D F0            [24] 1286 	mov	b,r5
      000476 E5 12            [12] 1287 	mov	a,_cicloTimeSet_PARM_2
      000478 12 06 45         [24] 1288 	lcall	__gptrput
      00047B                       1289 00108$:
                                   1290 ;	main.c:156: LCD_gotoXY(lcdX, lcdY);
      00047B 85 14 0F         [24] 1291 	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
      00047E 85 13 82         [24] 1292 	mov	dpl,_cicloTimeSet_PARM_3
      000481 C0 07            [24] 1293 	push	ar7
      000483 C0 06            [24] 1294 	push	ar6
      000485 C0 05            [24] 1295 	push	ar5
      000487 C0 04            [24] 1296 	push	ar4
      000489 C0 03            [24] 1297 	push	ar3
      00048B 12 02 52         [24] 1298 	lcall	_LCD_gotoXY
      00048E D0 03            [24] 1299 	pop	ar3
      000490 D0 04            [24] 1300 	pop	ar4
      000492 D0 05            [24] 1301 	pop	ar5
      000494 D0 06            [24] 1302 	pop	ar6
      000496 D0 07            [24] 1303 	pop	ar7
                                   1304 ;	main.c:157: if(lcdX==12) LCDPrintDiaSemana();  // Si se está editando del día de la semana, se imprime el texto.
      000498 EE               [12] 1305 	mov	a,r6
      000499 60 19            [24] 1306 	jz	00110$
      00049B C0 07            [24] 1307 	push	ar7
      00049D C0 06            [24] 1308 	push	ar6
      00049F C0 05            [24] 1309 	push	ar5
      0004A1 C0 04            [24] 1310 	push	ar4
      0004A3 C0 03            [24] 1311 	push	ar3
      0004A5 12 03 0D         [24] 1312 	lcall	_LCDPrintDiaSemana
      0004A8 D0 03            [24] 1313 	pop	ar3
      0004AA D0 04            [24] 1314 	pop	ar4
      0004AC D0 05            [24] 1315 	pop	ar5
      0004AE D0 06            [24] 1316 	pop	ar6
      0004B0 D0 07            [24] 1317 	pop	ar7
      0004B2 80 22            [24] 1318 	sjmp	00111$
      0004B4                       1319 00110$:
                                   1320 ;	main.c:158: else LCDPrintNumero(*dato);        // El resto son variables numéricas de 2 dígitos.
      0004B4 8B 82            [24] 1321 	mov	dpl,r3
      0004B6 8C 83            [24] 1322 	mov	dph,r4
      0004B8 8D F0            [24] 1323 	mov	b,r5
      0004BA 12 06 60         [24] 1324 	lcall	__gptrget
      0004BD F5 82            [12] 1325 	mov	dpl,a
      0004BF C0 07            [24] 1326 	push	ar7
      0004C1 C0 06            [24] 1327 	push	ar6
      0004C3 C0 05            [24] 1328 	push	ar5
      0004C5 C0 04            [24] 1329 	push	ar4
      0004C7 C0 03            [24] 1330 	push	ar3
      0004C9 12 03 5D         [24] 1331 	lcall	_LCDPrintNumero
      0004CC D0 03            [24] 1332 	pop	ar3
      0004CE D0 04            [24] 1333 	pop	ar4
      0004D0 D0 05            [24] 1334 	pop	ar5
      0004D2 D0 06            [24] 1335 	pop	ar6
      0004D4 D0 07            [24] 1336 	pop	ar7
      0004D6                       1337 00111$:
                                   1338 ;	main.c:159: delay_ms(TIEMPO_REPETICION);
      0004D6 90 01 F4         [24] 1339 	mov	dptr,#0x01f4
      0004D9 12 00 70         [24] 1340 	lcall	_delay_ms
      0004DC 02 03 FC         [24] 1341 	ljmp	00112$
      0004DF                       1342 00114$:
                                   1343 ;	main.c:161: if(P_SET==0)
      0004DF 20 B4 28         [24] 1344 	jb	_P3_4,00121$
                                   1345 ;	main.c:163: k++;
      0004E2 05 10            [12] 1346 	inc	_k
                                   1347 ;	main.c:164: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
      0004E4                       1348 00115$:
      0004E4 20 B4 08         [24] 1349 	jb	_P3_4,00117$
      0004E7 90 00 0A         [24] 1350 	mov	dptr,#0x000a
      0004EA 12 00 70         [24] 1351 	lcall	_delay_ms
      0004ED 80 F5            [24] 1352 	sjmp	00115$
      0004EF                       1353 00117$:
                                   1354 ;	main.c:165: if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
      0004EF 8B 82            [24] 1355 	mov	dpl,r3
      0004F1 8C 83            [24] 1356 	mov	dph,r4
      0004F3 8D F0            [24] 1357 	mov	b,r5
      0004F5 12 06 60         [24] 1358 	lcall	__gptrget
      0004F8 FF               [12] 1359 	mov	r7,a
      0004F9 C3               [12] 1360 	clr	c
      0004FA E5 12            [12] 1361 	mov	a,_cicloTimeSet_PARM_2
      0004FC 9F               [12] 1362 	subb	a,r7
      0004FD 50 0B            [24] 1363 	jnc	00121$
      0004FF 8B 82            [24] 1364 	mov	dpl,r3
      000501 8C 83            [24] 1365 	mov	dph,r4
      000503 8D F0            [24] 1366 	mov	b,r5
      000505 E5 12            [12] 1367 	mov	a,_cicloTimeSet_PARM_2
      000507 12 06 45         [24] 1368 	lcall	__gptrput
      00050A                       1369 00121$:
                                   1370 ;	main.c:168: if(lcdX==12) lcdX++;       // Si se está editando el día de la semana, se desplaza el cursor
      00050A EE               [12] 1371 	mov	a,r6
      00050B 60 02            [24] 1372 	jz	00123$
      00050D 05 13            [12] 1373 	inc	_cicloTimeSet_PARM_3
      00050F                       1374 00123$:
                                   1375 ;	main.c:171: LCD_gotoXY(++lcdX, lcdY);
      00050F 05 13            [12] 1376 	inc	_cicloTimeSet_PARM_3
      000511 85 14 0F         [24] 1377 	mov	_LCD_gotoXY_PARM_2,_cicloTimeSet_PARM_4
      000514 85 13 82         [24] 1378 	mov	dpl,_cicloTimeSet_PARM_3
      000517 12 02 52         [24] 1379 	lcall	_LCD_gotoXY
                                   1380 ;	main.c:172: LCD_CURSOR_UNDELINE;       // Cursor On
      00051A 75 82 0E         [24] 1381 	mov	dpl,#0x0e
      00051D 02 02 40         [24] 1382 	ljmp	_LCD_command
                                   1383 ;------------------------------------------------------------
                                   1384 ;Allocation info for local variables in function 'timeSet'
                                   1385 ;------------------------------------------------------------
                                   1386 ;	main.c:184: void timeSet(void)
                                   1387 ;	-----------------------------------------
                                   1388 ;	 function timeSet
                                   1389 ;	-----------------------------------------
      000520                       1390 _timeSet:
                                   1391 ;	main.c:193: LCD_gotoXY(7,1);           // Goto posición de Segundos en display.
      000520 75 0F 01         [24] 1392 	mov	_LCD_gotoXY_PARM_2,#0x01
      000523 75 82 07         [24] 1393 	mov	dpl,#0x07
      000526 12 02 52         [24] 1394 	lcall	_LCD_gotoXY
                                   1395 ;	main.c:194: LCD_print("00");           // 00 en posición de Segundos del display.
      000529 90 06 AA         [24] 1396 	mov	dptr,#___str_3
      00052C 75 F0 80         [24] 1397 	mov	b,#0x80
      00052F 12 02 88         [24] 1398 	lcall	_LCD_print
                                   1399 ;	main.c:195: LCD_CURSOR_UNDELINE;       // Cursor On
      000532 75 82 0E         [24] 1400 	mov	dpl,#0x0e
      000535 12 02 40         [24] 1401 	lcall	_LCD_command
                                   1402 ;	main.c:196: DS1307_time.Segundo = 0;   // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
      000538 75 0E 00         [24] 1403 	mov	(_DS1307_time + 0x0006),#0x00
                                   1404 ;	main.c:197: while(k<SALIR_SET_TIME)
      00053B                       1405 00119$:
      00053B 74 F9            [12] 1406 	mov	a,#0x100 - 0x07
      00053D 25 10            [12] 1407 	add	a,_k
      00053F 50 03            [24] 1408 	jnc	00163$
      000541 02 06 06         [24] 1409 	ljmp	00121$
      000544                       1410 00163$:
                                   1411 ;	main.c:199: while(k==SET_ANO)     cicloTimeSet(0,99,7,0,&DS1307_time.Ano);            // Set año.
      000544                       1412 00101$:
      000544 74 01            [12] 1413 	mov	a,#0x01
      000546 B5 10 1A         [24] 1414 	cjne	a,_k,00104$
      000549 75 15 0B         [24] 1415 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0003)
      00054C 75 16 00         [24] 1416 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      00054F 75 17 40         [24] 1417 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000552 75 12 63         [24] 1418 	mov	_cicloTimeSet_PARM_2,#0x63
      000555 75 13 07         [24] 1419 	mov	_cicloTimeSet_PARM_3,#0x07
      000558 75 14 00         [24] 1420 	mov	_cicloTimeSet_PARM_4,#0x00
      00055B 75 82 00         [24] 1421 	mov	dpl,#0x00
      00055E 12 03 E9         [24] 1422 	lcall	_cicloTimeSet
                                   1423 ;	main.c:200: while(k==SET_MES)     cicloTimeSet(1,12,4,0,&DS1307_time.Mes);            // Set mes.
      000561 80 E1            [24] 1424 	sjmp	00101$
      000563                       1425 00104$:
      000563 74 02            [12] 1426 	mov	a,#0x02
      000565 B5 10 1A         [24] 1427 	cjne	a,_k,00107$
      000568 75 15 0A         [24] 1428 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0002)
      00056B 75 16 00         [24] 1429 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      00056E 75 17 40         [24] 1430 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000571 75 12 0C         [24] 1431 	mov	_cicloTimeSet_PARM_2,#0x0c
      000574 75 13 04         [24] 1432 	mov	_cicloTimeSet_PARM_3,#0x04
      000577 75 14 00         [24] 1433 	mov	_cicloTimeSet_PARM_4,#0x00
      00057A 75 82 01         [24] 1434 	mov	dpl,#0x01
      00057D 12 03 E9         [24] 1435 	lcall	_cicloTimeSet
                                   1436 ;	main.c:201: while(k==SET_DIA)     cicloTimeSet(1,diasDelMes(),1,0,&DS1307_time.Dia);  // Set día.
      000580 80 E1            [24] 1437 	sjmp	00104$
      000582                       1438 00107$:
      000582 74 03            [12] 1439 	mov	a,#0x03
      000584 B5 10 1D         [24] 1440 	cjne	a,_k,00110$
      000587 12 03 30         [24] 1441 	lcall	_diasDelMes
      00058A 85 82 12         [24] 1442 	mov	_cicloTimeSet_PARM_2,dpl
      00058D 75 15 09         [24] 1443 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0001)
      000590 75 16 00         [24] 1444 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      000593 75 17 40         [24] 1445 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      000596 75 13 01         [24] 1446 	mov	_cicloTimeSet_PARM_3,#0x01
      000599 75 14 00         [24] 1447 	mov	_cicloTimeSet_PARM_4,#0x00
      00059C 75 82 01         [24] 1448 	mov	dpl,#0x01
      00059F 12 03 E9         [24] 1449 	lcall	_cicloTimeSet
                                   1450 ;	main.c:202: while(k==SET_HORA)    cicloTimeSet(0,23,1,1,&DS1307_time.Hora);           // Set hora.
      0005A2 80 DE            [24] 1451 	sjmp	00107$
      0005A4                       1452 00110$:
      0005A4 74 04            [12] 1453 	mov	a,#0x04
      0005A6 B5 10 1A         [24] 1454 	cjne	a,_k,00113$
      0005A9 75 15 0C         [24] 1455 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0004)
      0005AC 75 16 00         [24] 1456 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0005AF 75 17 40         [24] 1457 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0005B2 75 12 17         [24] 1458 	mov	_cicloTimeSet_PARM_2,#0x17
      0005B5 75 13 01         [24] 1459 	mov	_cicloTimeSet_PARM_3,#0x01
      0005B8 75 14 01         [24] 1460 	mov	_cicloTimeSet_PARM_4,#0x01
      0005BB 75 82 00         [24] 1461 	mov	dpl,#0x00
      0005BE 12 03 E9         [24] 1462 	lcall	_cicloTimeSet
                                   1463 ;	main.c:203: while(k==SET_MINUTO)  cicloTimeSet(0,59,4,1,&DS1307_time.Minuto);         // Set minutos.
      0005C1 80 E1            [24] 1464 	sjmp	00110$
      0005C3                       1465 00113$:
      0005C3 74 05            [12] 1466 	mov	a,#0x05
      0005C5 B5 10 1A         [24] 1467 	cjne	a,_k,00116$
      0005C8 75 15 0D         [24] 1468 	mov	_cicloTimeSet_PARM_5,#(_DS1307_time + 0x0005)
      0005CB 75 16 00         [24] 1469 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0005CE 75 17 40         [24] 1470 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0005D1 75 12 3B         [24] 1471 	mov	_cicloTimeSet_PARM_2,#0x3b
      0005D4 75 13 04         [24] 1472 	mov	_cicloTimeSet_PARM_3,#0x04
      0005D7 75 14 01         [24] 1473 	mov	_cicloTimeSet_PARM_4,#0x01
      0005DA 75 82 00         [24] 1474 	mov	dpl,#0x00
      0005DD 12 03 E9         [24] 1475 	lcall	_cicloTimeSet
                                   1476 ;	main.c:204: while(k==SET_DIA_SEM) cicloTimeSet(1,7,12,0,&DS1307_time.DiaSemana);      // Set día de la semana.
      0005E0 80 E1            [24] 1477 	sjmp	00113$
      0005E2                       1478 00116$:
      0005E2 74 06            [12] 1479 	mov	a,#0x06
      0005E4 B5 10 02         [24] 1480 	cjne	a,_k,00174$
      0005E7 80 03            [24] 1481 	sjmp	00175$
      0005E9                       1482 00174$:
      0005E9 02 05 3B         [24] 1483 	ljmp	00119$
      0005EC                       1484 00175$:
      0005EC 75 15 08         [24] 1485 	mov	_cicloTimeSet_PARM_5,#_DS1307_time
      0005EF 75 16 00         [24] 1486 	mov	(_cicloTimeSet_PARM_5 + 1),#0x00
      0005F2 75 17 40         [24] 1487 	mov	(_cicloTimeSet_PARM_5 + 2),#0x40
      0005F5 75 12 07         [24] 1488 	mov	_cicloTimeSet_PARM_2,#0x07
      0005F8 75 13 0C         [24] 1489 	mov	_cicloTimeSet_PARM_3,#0x0c
      0005FB 75 14 00         [24] 1490 	mov	_cicloTimeSet_PARM_4,#0x00
      0005FE 75 82 01         [24] 1491 	mov	dpl,#0x01
      000601 12 03 E9         [24] 1492 	lcall	_cicloTimeSet
      000604 80 DC            [24] 1493 	sjmp	00116$
      000606                       1494 00121$:
                                   1495 ;	main.c:206: LCD_CURSOR_OFF;
      000606 75 82 0C         [24] 1496 	mov	dpl,#0x0c
      000609 02 02 40         [24] 1497 	ljmp	_LCD_command
                                   1498 ;------------------------------------------------------------
                                   1499 ;Allocation info for local variables in function 'setup'
                                   1500 ;------------------------------------------------------------
                                   1501 ;	main.c:216: void setup(void)
                                   1502 ;	-----------------------------------------
                                   1503 ;	 function setup
                                   1504 ;	-----------------------------------------
      00060C                       1505 _setup:
                                   1506 ;	main.c:218: P_INC = 1;   // Configura Pulsadores como Entradas Digitales.
      00060C D2 B2            [12] 1507 	setb	_P3_2
                                   1508 ;	main.c:219: P_DEC = 1;
      00060E D2 B3            [12] 1509 	setb	_P3_3
                                   1510 ;	main.c:220: P_SET = 1;
      000610 D2 B4            [12] 1511 	setb	_P3_4
                                   1512 ;	main.c:221: SOUT  = 1;
      000612 D2 B5            [12] 1513 	setb	_P3_5
                                   1514 ;	main.c:223: DS1307_sout(0x90);  // Configura 1 Hz en salida SOUT del DS1307
      000614 75 82 90         [24] 1515 	mov	dpl,#0x90
      000617 12 01 E4         [24] 1516 	lcall	_DS1307_sout
                                   1517 ;	main.c:225: LCD_init();  // Inicializa display LCD.
      00061A 02 02 B3         [24] 1518 	ljmp	_LCD_init
                                   1519 ;------------------------------------------------------------
                                   1520 ;Allocation info for local variables in function 'main'
                                   1521 ;------------------------------------------------------------
                                   1522 ;	main.c:234: void main(void)
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function main
                                   1525 ;	-----------------------------------------
      00061D                       1526 _main:
                                   1527 ;	main.c:236: setup();
      00061D 12 06 0C         [24] 1528 	lcall	_setup
                                   1529 ;	main.c:238: while(1)
      000620                       1530 00113$:
                                   1531 ;	main.c:240: if(P_SET==0)                          // Comprueba si se ha pulsado SET
      000620 20 B4 14         [24] 1532 	jb	_P3_4,00105$
                                   1533 ;	main.c:242: k=1;
      000623 75 10 01         [24] 1534 	mov	_k,#0x01
                                   1535 ;	main.c:243: while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera fin pulsación y antirebote mecánico.
      000626                       1536 00101$:
      000626 20 B4 08         [24] 1537 	jb	_P3_4,00103$
      000629 90 00 0A         [24] 1538 	mov	dptr,#0x000a
      00062C 12 00 70         [24] 1539 	lcall	_delay_ms
      00062F 80 F5            [24] 1540 	sjmp	00101$
      000631                       1541 00103$:
                                   1542 ;	main.c:244: timeSet();
      000631 12 05 20         [24] 1543 	lcall	_timeSet
                                   1544 ;	main.c:245: DS1307_timeWrite();
      000634 12 01 96         [24] 1545 	lcall	_DS1307_timeWrite
      000637                       1546 00105$:
                                   1547 ;	main.c:248: DS1307_timeRead();
      000637 12 01 2A         [24] 1548 	lcall	_DS1307_timeRead
                                   1549 ;	main.c:250: timeShow();      // Actualiza display LCD con fecha y hora.
      00063A 12 03 7D         [24] 1550 	lcall	_timeShow
                                   1551 ;	main.c:252: while(SOUT);
      00063D                       1552 00106$:
      00063D 20 B5 FD         [24] 1553 	jb	_P3_5,00106$
                                   1554 ;	main.c:253: while(!SOUT);
      000640                       1555 00109$:
      000640 20 B5 DD         [24] 1556 	jb	_P3_5,00113$
      000643 80 FB            [24] 1557 	sjmp	00109$
                                   1558 	.area CSEG    (CODE)
                                   1559 	.area CONST   (CODE)
      000680                       1560 _DiaSemanaTxt:
      000680 44 4F 4D              1561 	.ascii "DOM"
      000683 00                    1562 	.db 0x00
      000684 4C 55 4E              1563 	.ascii "LUN"
      000687 00                    1564 	.db 0x00
      000688 4D 41 52              1565 	.ascii "MAR"
      00068B 00                    1566 	.db 0x00
      00068C 4D 49 45              1567 	.ascii "MIE"
      00068F 00                    1568 	.db 0x00
      000690 4A 55 45              1569 	.ascii "JUE"
      000693 00                    1570 	.db 0x00
      000694 56 49 45              1571 	.ascii "VIE"
      000697 00                    1572 	.db 0x00
      000698 53 41 42              1573 	.ascii "SAB"
      00069B 00                    1574 	.db 0x00
      00069C                       1575 ___str_0:
      00069C 20 20 20              1576 	.ascii "   "
      00069F 00                    1577 	.db 0x00
      0006A0                       1578 ___str_1:
      0006A0 20                    1579 	.ascii " "
      0006A1 00                    1580 	.db 0x00
      0006A2                       1581 ___str_2:
      0006A2 20 20 20 20 20 20 20  1582 	.ascii "       "
      0006A9 00                    1583 	.db 0x00
      0006AA                       1584 ___str_3:
      0006AA 30 30                 1585 	.ascii "00"
      0006AC 00                    1586 	.db 0x00
                                   1587 	.area XINIT   (CODE)
                                   1588 	.area CABS    (ABS,CODE)
