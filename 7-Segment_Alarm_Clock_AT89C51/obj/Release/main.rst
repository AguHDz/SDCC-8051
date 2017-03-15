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
                                     12 	.globl _moveclock
                                     13 	.globl _display
                                     14 	.globl _resetfn
                                     15 	.globl _increase
                                     16 	.globl _setfn
                                     17 	.globl _delay
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _dig_val
                                    115 	.globl _mode
                                    116 	.globl _loop
                                    117 	.globl _keepsec1
                                    118 	.globl _keepsec2
                                    119 	.globl _keepmin1
                                    120 	.globl _keepmin2
                                    121 	.globl _alarmsec1
                                    122 	.globl _alarmsec2
                                    123 	.globl _alarmmin1
                                    124 	.globl _alarmmin2
                                    125 	.globl _secalarm1
                                    126 	.globl _secalarm2
                                    127 	.globl _minalarm1
                                    128 	.globl _minalarm2
                                    129 	.globl _sec1
                                    130 	.globl _sec2
                                    131 	.globl _min1
                                    132 	.globl _min2
                                    133 	.globl _dig_disp
                                    134 	.globl _begin
                                    135 	.globl _recnt_incr_seg
                                    136 	.globl _ret_seg_to_incre
                                    137 	.globl _sel_seg_to_incr
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0	=	0x0080
                           000081   144 _SP	=	0x0081
                           000082   145 _DPL	=	0x0082
                           000083   146 _DPH	=	0x0083
                           000087   147 _PCON	=	0x0087
                           000088   148 _TCON	=	0x0088
                           000089   149 _TMOD	=	0x0089
                           00008A   150 _TL0	=	0x008a
                           00008B   151 _TL1	=	0x008b
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           000090   154 _P1	=	0x0090
                           000098   155 _SCON	=	0x0098
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 _P2	=	0x00a0
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 _IP	=	0x00b8
                           0000D0   161 _PSW	=	0x00d0
                           0000E0   162 _ACC	=	0x00e0
                           0000F0   163 _B	=	0x00f0
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable register banks
                                    246 ;--------------------------------------------------------
                                    247 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        248 	.ds 8
                                    249 ;--------------------------------------------------------
                                    250 ; internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area DSEG    (DATA)
      000008                        253 _sel_seg_to_incr::
      000008                        254 	.ds 2
      00000A                        255 _ret_seg_to_incre::
      00000A                        256 	.ds 2
      00000C                        257 _recnt_incr_seg::
      00000C                        258 	.ds 2
      00000E                        259 _begin::
      00000E                        260 	.ds 2
      000010                        261 _dig_disp::
      000010                        262 	.ds 1
      000011                        263 _min2::
      000011                        264 	.ds 2
      000013                        265 _min1::
      000013                        266 	.ds 2
      000015                        267 _sec2::
      000015                        268 	.ds 2
      000017                        269 _sec1::
      000017                        270 	.ds 2
      000019                        271 _minalarm2::
      000019                        272 	.ds 2
      00001B                        273 _minalarm1::
      00001B                        274 	.ds 2
      00001D                        275 _secalarm2::
      00001D                        276 	.ds 2
      00001F                        277 _secalarm1::
      00001F                        278 	.ds 2
      000021                        279 _alarmmin2::
      000021                        280 	.ds 2
      000023                        281 _alarmmin1::
      000023                        282 	.ds 2
      000025                        283 _alarmsec2::
      000025                        284 	.ds 2
      000027                        285 _alarmsec1::
      000027                        286 	.ds 2
      000029                        287 _keepmin2::
      000029                        288 	.ds 2
      00002B                        289 _keepmin1::
      00002B                        290 	.ds 2
      00002D                        291 _keepsec2::
      00002D                        292 	.ds 2
      00002F                        293 _keepsec1::
      00002F                        294 	.ds 2
      000031                        295 _loop::
      000031                        296 	.ds 2
      000033                        297 _mode::
      000033                        298 	.ds 2
      000035                        299 _dig_val::
      000035                        300 	.ds 10
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable items in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; Stack segment in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 	.area	SSEG
      00003F                        309 __start__stack:
      00003F                        310 	.ds	1
                                    311 
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area IABS    (ABS,DATA)
                                    320 	.area IABS    (ABS,DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; bit data
                                    323 ;--------------------------------------------------------
                                    324 	.area BSEG    (BIT)
                                    325 ;--------------------------------------------------------
                                    326 ; paged external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area PSEG    (PAG,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XSEG    (XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; absolute external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XABS    (ABS,XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; external initialized ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XISEG   (XDATA)
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT0 (CODE)
                                    343 	.area GSINIT1 (CODE)
                                    344 	.area GSINIT2 (CODE)
                                    345 	.area GSINIT3 (CODE)
                                    346 	.area GSINIT4 (CODE)
                                    347 	.area GSINIT5 (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area CSEG    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; interrupt vector 
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
      000000                        355 __interrupt_vect:
      000000 02 00 21         [24]  356 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  357 	reti
      000004                        358 	.ds	7
      00000B 02 04 C0         [24]  359 	ljmp	_display
      00000E                        360 	.ds	5
      000013 32               [24]  361 	reti
      000014                        362 	.ds	7
      00001B 02 05 38         [24]  363 	ljmp	_moveclock
                                    364 ;--------------------------------------------------------
                                    365 ; global & static initialisations
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 	.area GSFINAL (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.globl __sdcc_gsinit_startup
                                    372 	.globl __sdcc_program_startup
                                    373 	.globl __start__stack
                                    374 	.globl __mcs51_genXINIT
                                    375 	.globl __mcs51_genXRAMCLEAR
                                    376 	.globl __mcs51_genRAMCLEAR
                                    377 ;	main.c:53: int sel_seg_to_incr     =   0;
      00007A E4               [12]  378 	clr	a
      00007B F5 08            [12]  379 	mov	_sel_seg_to_incr,a
      00007D F5 09            [12]  380 	mov	(_sel_seg_to_incr + 1),a
                                    381 ;	main.c:54: int ret_seg_to_incre    =   0;
      00007F F5 0A            [12]  382 	mov	_ret_seg_to_incre,a
      000081 F5 0B            [12]  383 	mov	(_ret_seg_to_incre + 1),a
                                    384 ;	main.c:57: unsigned char dig_disp  =   0;
                                    385 ;	1-genFromRTrack replaced	mov	_dig_disp,#0x00
      000083 F5 10            [12]  386 	mov	_dig_disp,a
                                    387 ;	main.c:58: int min2                =   0;
      000085 F5 11            [12]  388 	mov	_min2,a
      000087 F5 12            [12]  389 	mov	(_min2 + 1),a
                                    390 ;	main.c:59: int min1                =   0;
      000089 F5 13            [12]  391 	mov	_min1,a
      00008B F5 14            [12]  392 	mov	(_min1 + 1),a
                                    393 ;	main.c:60: int sec2                =   0;
      00008D F5 15            [12]  394 	mov	_sec2,a
      00008F F5 16            [12]  395 	mov	(_sec2 + 1),a
                                    396 ;	main.c:61: int sec1                =   0;
      000091 F5 17            [12]  397 	mov	_sec1,a
      000093 F5 18            [12]  398 	mov	(_sec1 + 1),a
                                    399 ;	main.c:62: int minalarm2           =   0;
      000095 F5 19            [12]  400 	mov	_minalarm2,a
      000097 F5 1A            [12]  401 	mov	(_minalarm2 + 1),a
                                    402 ;	main.c:63: int minalarm1           =   0;
      000099 F5 1B            [12]  403 	mov	_minalarm1,a
      00009B F5 1C            [12]  404 	mov	(_minalarm1 + 1),a
                                    405 ;	main.c:64: int secalarm2           =   0;
      00009D F5 1D            [12]  406 	mov	_secalarm2,a
      00009F F5 1E            [12]  407 	mov	(_secalarm2 + 1),a
                                    408 ;	main.c:65: int secalarm1           =   0;
      0000A1 F5 1F            [12]  409 	mov	_secalarm1,a
      0000A3 F5 20            [12]  410 	mov	(_secalarm1 + 1),a
                                    411 ;	main.c:66: int alarmmin2           =   0;
      0000A5 F5 21            [12]  412 	mov	_alarmmin2,a
      0000A7 F5 22            [12]  413 	mov	(_alarmmin2 + 1),a
                                    414 ;	main.c:67: int alarmmin1           =   0;
      0000A9 F5 23            [12]  415 	mov	_alarmmin1,a
      0000AB F5 24            [12]  416 	mov	(_alarmmin1 + 1),a
                                    417 ;	main.c:68: int alarmsec2           =   0;
      0000AD F5 25            [12]  418 	mov	_alarmsec2,a
      0000AF F5 26            [12]  419 	mov	(_alarmsec2 + 1),a
                                    420 ;	main.c:69: int alarmsec1           =   0;
      0000B1 F5 27            [12]  421 	mov	_alarmsec1,a
      0000B3 F5 28            [12]  422 	mov	(_alarmsec1 + 1),a
                                    423 ;	main.c:70: int keepmin2            =   0;
      0000B5 F5 29            [12]  424 	mov	_keepmin2,a
      0000B7 F5 2A            [12]  425 	mov	(_keepmin2 + 1),a
                                    426 ;	main.c:71: int keepmin1            =   0;
      0000B9 F5 2B            [12]  427 	mov	_keepmin1,a
      0000BB F5 2C            [12]  428 	mov	(_keepmin1 + 1),a
                                    429 ;	main.c:72: int keepsec2            =   0;
      0000BD F5 2D            [12]  430 	mov	_keepsec2,a
      0000BF F5 2E            [12]  431 	mov	(_keepsec2 + 1),a
                                    432 ;	main.c:73: int keepsec1            =   0;
      0000C1 F5 2F            [12]  433 	mov	_keepsec1,a
      0000C3 F5 30            [12]  434 	mov	(_keepsec1 + 1),a
                                    435 ;	main.c:74: int loop                =   0;
      0000C5 F5 31            [12]  436 	mov	_loop,a
      0000C7 F5 32            [12]  437 	mov	(_loop + 1),a
                                    438 ;	main.c:76: char dig_val[10]        =   {0x40,0xF9,0x24,0x30,0x19,0x12,0x02,0xF8,0x00,0x10};  // Hex values corresponding to digits 0 to 9
      0000C9 75 35 40         [24]  439 	mov	_dig_val,#0x40
      0000CC 75 36 F9         [24]  440 	mov	(_dig_val + 0x0001),#0xf9
      0000CF 75 37 24         [24]  441 	mov	(_dig_val + 0x0002),#0x24
      0000D2 75 38 30         [24]  442 	mov	(_dig_val + 0x0003),#0x30
      0000D5 75 39 19         [24]  443 	mov	(_dig_val + 0x0004),#0x19
      0000D8 75 3A 12         [24]  444 	mov	(_dig_val + 0x0005),#0x12
      0000DB 75 3B 02         [24]  445 	mov	(_dig_val + 0x0006),#0x02
      0000DE 75 3C F8         [24]  446 	mov	(_dig_val + 0x0007),#0xf8
                                    447 ;	1-genFromRTrack replaced	mov	(_dig_val + 0x0008),#0x00
      0000E1 F5 3D            [12]  448 	mov	(_dig_val + 0x0008),a
      0000E3 75 3E 10         [24]  449 	mov	(_dig_val + 0x0009),#0x10
                                    450 	.area GSFINAL (CODE)
      0000E6 02 00 1E         [24]  451 	ljmp	__sdcc_program_startup
                                    452 ;--------------------------------------------------------
                                    453 ; Home
                                    454 ;--------------------------------------------------------
                                    455 	.area HOME    (CODE)
                                    456 	.area HOME    (CODE)
      00001E                        457 __sdcc_program_startup:
      00001E 02 05 D9         [24]  458 	ljmp	_main
                                    459 ;	return from main will return to caller
                                    460 ;--------------------------------------------------------
                                    461 ; code
                                    462 ;--------------------------------------------------------
                                    463 	.area CSEG    (CODE)
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'delay'
                                    466 ;------------------------------------------------------------
                                    467 ;time                      Allocated to registers r6 r7 
                                    468 ;i                         Allocated to registers r4 r5 
                                    469 ;j                         Allocated to registers r2 r3 
                                    470 ;------------------------------------------------------------
                                    471 ;	main.c:78: void delay(int time)  //Function to provide time delay.
                                    472 ;	-----------------------------------------
                                    473 ;	 function delay
                                    474 ;	-----------------------------------------
      0000E9                        475 _delay:
                           000007   476 	ar7 = 0x07
                           000006   477 	ar6 = 0x06
                           000005   478 	ar5 = 0x05
                           000004   479 	ar4 = 0x04
                           000003   480 	ar3 = 0x03
                           000002   481 	ar2 = 0x02
                           000001   482 	ar1 = 0x01
                           000000   483 	ar0 = 0x00
      0000E9 AE 82            [24]  484 	mov	r6,dpl
      0000EB AF 83            [24]  485 	mov	r7,dph
                                    486 ;	main.c:81: for(i=0;i<time;i++)
      0000ED 7C 00            [12]  487 	mov	r4,#0x00
      0000EF 7D 00            [12]  488 	mov	r5,#0x00
      0000F1                        489 00107$:
      0000F1 C3               [12]  490 	clr	c
      0000F2 EC               [12]  491 	mov	a,r4
      0000F3 9E               [12]  492 	subb	a,r6
      0000F4 ED               [12]  493 	mov	a,r5
      0000F5 64 80            [12]  494 	xrl	a,#0x80
      0000F7 8F F0            [24]  495 	mov	b,r7
      0000F9 63 F0 80         [24]  496 	xrl	b,#0x80
      0000FC 95 F0            [12]  497 	subb	a,b
      0000FE 50 1B            [24]  498 	jnc	00109$
                                    499 ;	main.c:82: for(j=0;j<1275;j++);
      000100 7A FB            [12]  500 	mov	r2,#0xfb
      000102 7B 04            [12]  501 	mov	r3,#0x04
      000104                        502 00105$:
      000104 EA               [12]  503 	mov	a,r2
      000105 24 FF            [12]  504 	add	a,#0xff
      000107 F8               [12]  505 	mov	r0,a
      000108 EB               [12]  506 	mov	a,r3
      000109 34 FF            [12]  507 	addc	a,#0xff
      00010B F9               [12]  508 	mov	r1,a
      00010C 88 02            [24]  509 	mov	ar2,r0
      00010E 89 03            [24]  510 	mov	ar3,r1
      000110 E8               [12]  511 	mov	a,r0
      000111 49               [12]  512 	orl	a,r1
      000112 70 F0            [24]  513 	jnz	00105$
                                    514 ;	main.c:81: for(i=0;i<time;i++)
      000114 0C               [12]  515 	inc	r4
      000115 BC 00 D9         [24]  516 	cjne	r4,#0x00,00107$
      000118 0D               [12]  517 	inc	r5
      000119 80 D6            [24]  518 	sjmp	00107$
      00011B                        519 00109$:
      00011B 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'setfn'
                                    523 ;------------------------------------------------------------
                                    524 ;	main.c:85: int setfn(void)  // Function to select miniute and seconds digit set time.
                                    525 ;	-----------------------------------------
                                    526 ;	 function setfn
                                    527 ;	-----------------------------------------
      00011C                        528 _setfn:
                                    529 ;	main.c:87: while(set==0)
      00011C                        530 00114$:
      00011C 30 96 03         [24]  531 	jnb	_P1_6,00149$
      00011F 02 01 EC         [24]  532 	ljmp	00116$
      000122                        533 00149$:
                                    534 ;	main.c:89: switch(recnt_incr_seg)
      000122 74 01            [12]  535 	mov	a,#0x01
      000124 B5 0C 06         [24]  536 	cjne	a,_recnt_incr_seg,00150$
      000127 14               [12]  537 	dec	a
      000128 B5 0D 02         [24]  538 	cjne	a,(_recnt_incr_seg + 1),00150$
      00012B 80 23            [24]  539 	sjmp	00101$
      00012D                        540 00150$:
      00012D 74 02            [12]  541 	mov	a,#0x02
      00012F B5 0C 06         [24]  542 	cjne	a,_recnt_incr_seg,00151$
      000132 E4               [12]  543 	clr	a
      000133 B5 0D 02         [24]  544 	cjne	a,(_recnt_incr_seg + 1),00151$
      000136 80 3C            [24]  545 	sjmp	00104$
      000138                        546 00151$:
      000138 74 03            [12]  547 	mov	a,#0x03
      00013A B5 0C 06         [24]  548 	cjne	a,_recnt_incr_seg,00152$
      00013D E4               [12]  549 	clr	a
      00013E B5 0D 02         [24]  550 	cjne	a,(_recnt_incr_seg + 1),00152$
      000141 80 55            [24]  551 	sjmp	00107$
      000143                        552 00152$:
      000143 74 04            [12]  553 	mov	a,#0x04
      000145 B5 0C 06         [24]  554 	cjne	a,_recnt_incr_seg,00153$
      000148 E4               [12]  555 	clr	a
      000149 B5 0D 02         [24]  556 	cjne	a,(_recnt_incr_seg + 1),00153$
      00014C 80 6E            [24]  557 	sjmp	00110$
      00014E                        558 00153$:
                                    559 ;	main.c:91: case 1:
      00014E 80 CC            [24]  560 	sjmp	00114$
      000150                        561 00101$:
                                    562 ;	main.c:92: if(set==0)  //Select the min2 digit
      000150 20 96 21         [24]  563 	jb	_P1_6,00104$
                                    564 ;	main.c:94: dig_ctrl_4      =   1;
      000153 D2 90            [12]  565 	setb	_P1_0
                                    566 ;	main.c:95: dig_ctrl_3      =   0;
      000155 C2 91            [12]  567 	clr	_P1_1
                                    568 ;	main.c:96: dig_ctrl_2      =   0;
      000157 C2 92            [12]  569 	clr	_P1_2
                                    570 ;	main.c:97: dig_ctrl_1      =   0;
      000159 C2 93            [12]  571 	clr	_P1_3
                                    572 ;	main.c:98: recnt_incr_seg  =   1;
      00015B 75 0C 01         [24]  573 	mov	_recnt_incr_seg,#0x01
      00015E 75 0D 00         [24]  574 	mov	(_recnt_incr_seg + 1),#0x00
                                    575 ;	main.c:99: ret_seg_to_incre=   1;
      000161 75 0A 01         [24]  576 	mov	_ret_seg_to_incre,#0x01
      000164 75 0B 00         [24]  577 	mov	(_ret_seg_to_incre + 1),#0x00
                                    578 ;	main.c:100: P2              =   dig_val[minalarm2];
      000167 E5 19            [12]  579 	mov	a,_minalarm2
      000169 24 35            [12]  580 	add	a,#_dig_val
      00016B F9               [12]  581 	mov	r1,a
      00016C 87 A0            [24]  582 	mov	_P2,@r1
                                    583 ;	main.c:101: delay(100);
      00016E 90 00 64         [24]  584 	mov	dptr,#0x0064
      000171 12 00 E9         [24]  585 	lcall	_delay
                                    586 ;	main.c:103: case 2:
      000174                        587 00104$:
                                    588 ;	main.c:104: if(set==0)  //Select the min1 digit
      000174 20 96 21         [24]  589 	jb	_P1_6,00107$
                                    590 ;	main.c:106: dig_ctrl_4      =   0;
      000177 C2 90            [12]  591 	clr	_P1_0
                                    592 ;	main.c:107: dig_ctrl_3      =   1;
      000179 D2 91            [12]  593 	setb	_P1_1
                                    594 ;	main.c:108: dig_ctrl_2      =   0;
      00017B C2 92            [12]  595 	clr	_P1_2
                                    596 ;	main.c:109: dig_ctrl_1      =   0;
      00017D C2 93            [12]  597 	clr	_P1_3
                                    598 ;	main.c:110: recnt_incr_seg  =   2;
      00017F 75 0C 02         [24]  599 	mov	_recnt_incr_seg,#0x02
      000182 75 0D 00         [24]  600 	mov	(_recnt_incr_seg + 1),#0x00
                                    601 ;	main.c:111: ret_seg_to_incre=   2;
      000185 75 0A 02         [24]  602 	mov	_ret_seg_to_incre,#0x02
      000188 75 0B 00         [24]  603 	mov	(_ret_seg_to_incre + 1),#0x00
                                    604 ;	main.c:112: P2              =   dig_val[minalarm1];
      00018B E5 1B            [12]  605 	mov	a,_minalarm1
      00018D 24 35            [12]  606 	add	a,#_dig_val
      00018F F9               [12]  607 	mov	r1,a
      000190 87 A0            [24]  608 	mov	_P2,@r1
                                    609 ;	main.c:113: delay(100);
      000192 90 00 64         [24]  610 	mov	dptr,#0x0064
      000195 12 00 E9         [24]  611 	lcall	_delay
                                    612 ;	main.c:115: case 3:
      000198                        613 00107$:
                                    614 ;	main.c:116: if(set==0)  //Select the sec 2 digit
      000198 20 96 21         [24]  615 	jb	_P1_6,00110$
                                    616 ;	main.c:118: dig_ctrl_4      =   0;
      00019B C2 90            [12]  617 	clr	_P1_0
                                    618 ;	main.c:119: dig_ctrl_3      =   0;
      00019D C2 91            [12]  619 	clr	_P1_1
                                    620 ;	main.c:120: dig_ctrl_2      =   1;
      00019F D2 92            [12]  621 	setb	_P1_2
                                    622 ;	main.c:121: dig_ctrl_1      =   0;
      0001A1 C2 93            [12]  623 	clr	_P1_3
                                    624 ;	main.c:122: recnt_incr_seg  =   3;
      0001A3 75 0C 03         [24]  625 	mov	_recnt_incr_seg,#0x03
      0001A6 75 0D 00         [24]  626 	mov	(_recnt_incr_seg + 1),#0x00
                                    627 ;	main.c:123: ret_seg_to_incre=   3;
      0001A9 75 0A 03         [24]  628 	mov	_ret_seg_to_incre,#0x03
      0001AC 75 0B 00         [24]  629 	mov	(_ret_seg_to_incre + 1),#0x00
                                    630 ;	main.c:124: P2              =   dig_val[secalarm2];
      0001AF E5 1D            [12]  631 	mov	a,_secalarm2
      0001B1 24 35            [12]  632 	add	a,#_dig_val
      0001B3 F9               [12]  633 	mov	r1,a
      0001B4 87 A0            [24]  634 	mov	_P2,@r1
                                    635 ;	main.c:125: delay(100);
      0001B6 90 00 64         [24]  636 	mov	dptr,#0x0064
      0001B9 12 00 E9         [24]  637 	lcall	_delay
                                    638 ;	main.c:127: case 4:
      0001BC                        639 00110$:
                                    640 ;	main.c:128: if(set==0)  //Select the sec1 digit
      0001BC 30 96 03         [24]  641 	jnb	_P1_6,00157$
      0001BF 02 01 1C         [24]  642 	ljmp	00114$
      0001C2                        643 00157$:
                                    644 ;	main.c:130: recnt_incr_seg  =   1;
      0001C2 75 0C 01         [24]  645 	mov	_recnt_incr_seg,#0x01
      0001C5 75 0D 00         [24]  646 	mov	(_recnt_incr_seg + 1),#0x00
                                    647 ;	main.c:131: dig_ctrl_4      =   0;
      0001C8 C2 90            [12]  648 	clr	_P1_0
                                    649 ;	main.c:132: dig_ctrl_3      =   0;
      0001CA C2 91            [12]  650 	clr	_P1_1
                                    651 ;	main.c:133: dig_ctrl_2      =   0;
      0001CC C2 92            [12]  652 	clr	_P1_2
                                    653 ;	main.c:134: dig_ctrl_1      =   1;
      0001CE D2 93            [12]  654 	setb	_P1_3
                                    655 ;	main.c:135: ret_seg_to_incre=   4;
      0001D0 75 0A 04         [24]  656 	mov	_ret_seg_to_incre,#0x04
      0001D3 75 0B 00         [24]  657 	mov	(_ret_seg_to_incre + 1),#0x00
                                    658 ;	main.c:136: P2              =   dig_val[secalarm1];
      0001D6 E5 1F            [12]  659 	mov	a,_secalarm1
      0001D8 24 35            [12]  660 	add	a,#_dig_val
      0001DA F9               [12]  661 	mov	r1,a
      0001DB 87 A0            [24]  662 	mov	_P2,@r1
                                    663 ;	main.c:137: delay(100);
      0001DD 90 00 64         [24]  664 	mov	dptr,#0x0064
      0001E0 12 00 E9         [24]  665 	lcall	_delay
                                    666 ;	main.c:138: recnt_incr_seg  =   1;
      0001E3 75 0C 01         [24]  667 	mov	_recnt_incr_seg,#0x01
      0001E6 75 0D 00         [24]  668 	mov	(_recnt_incr_seg + 1),#0x00
                                    669 ;	main.c:140: }
      0001E9 02 01 1C         [24]  670 	ljmp	00114$
      0001EC                        671 00116$:
                                    672 ;	main.c:142: return(ret_seg_to_incre);
      0001EC 85 0A 82         [24]  673 	mov	dpl,_ret_seg_to_incre
      0001EF 85 0B 83         [24]  674 	mov	dph,(_ret_seg_to_incre + 1)
      0001F2 22               [24]  675 	ret
                                    676 ;------------------------------------------------------------
                                    677 ;Allocation info for local variables in function 'increase'
                                    678 ;------------------------------------------------------------
                                    679 ;a                         Allocated to registers r6 r7 
                                    680 ;------------------------------------------------------------
                                    681 ;	main.c:145: void increase(int a)  //Function to set the minutes or seconds digit
                                    682 ;	-----------------------------------------
                                    683 ;	 function increase
                                    684 ;	-----------------------------------------
      0001F3                        685 _increase:
      0001F3 AE 82            [24]  686 	mov	r6,dpl
      0001F5 AF 83            [24]  687 	mov	r7,dph
                                    688 ;	main.c:147: while(incr==0)
      0001F7 BE 01 06         [24]  689 	cjne	r6,#0x01,00149$
      0001FA BF 00 03         [24]  690 	cjne	r7,#0x00,00149$
      0001FD EE               [12]  691 	mov	a,r6
      0001FE 80 01            [24]  692 	sjmp	00150$
      000200                        693 00149$:
      000200 E4               [12]  694 	clr	a
      000201                        695 00150$:
      000201 FD               [12]  696 	mov	r5,a
      000202 E4               [12]  697 	clr	a
      000203 BE 02 04         [24]  698 	cjne	r6,#0x02,00151$
      000206 BF 00 01         [24]  699 	cjne	r7,#0x00,00151$
      000209 04               [12]  700 	inc	a
      00020A                        701 00151$:
      00020A FC               [12]  702 	mov	r4,a
      00020B E4               [12]  703 	clr	a
      00020C BE 03 04         [24]  704 	cjne	r6,#0x03,00153$
      00020F BF 00 01         [24]  705 	cjne	r7,#0x00,00153$
      000212 04               [12]  706 	inc	a
      000213                        707 00153$:
      000213 FB               [12]  708 	mov	r3,a
      000214 E4               [12]  709 	clr	a
      000215 BE 04 04         [24]  710 	cjne	r6,#0x04,00155$
      000218 BF 00 01         [24]  711 	cjne	r7,#0x00,00155$
      00021B 04               [12]  712 	inc	a
      00021C                        713 00155$:
      00021C FF               [12]  714 	mov	r7,a
      00021D                        715 00114$:
      00021D 30 97 01         [24]  716 	jnb	_P1_7,00157$
      000220 22               [24]  717 	ret
      000221                        718 00157$:
                                    719 ;	main.c:149: switch(a)
      000221 ED               [12]  720 	mov	a,r5
      000222 70 0F            [24]  721 	jnz	00101$
      000224 EC               [12]  722 	mov	a,r4
      000225 70 62            [24]  723 	jnz	00104$
      000227 EB               [12]  724 	mov	a,r3
      000228 60 03            [24]  725 	jz	00160$
      00022A 02 02 E0         [24]  726 	ljmp	00107$
      00022D                        727 00160$:
      00022D EF               [12]  728 	mov	a,r7
      00022E 60 ED            [24]  729 	jz	00114$
                                    730 ;	main.c:151: case 1:  // Set the min2 digit.
      000230 02 03 37         [24]  731 	ljmp	00110$
      000233                        732 00101$:
                                    733 ;	main.c:152: P2 = dig_val[minalarm2];
      000233 E5 19            [12]  734 	mov	a,_minalarm2
      000235 24 35            [12]  735 	add	a,#_dig_val
      000237 F9               [12]  736 	mov	r1,a
      000238 87 A0            [24]  737 	mov	_P2,@r1
                                    738 ;	main.c:153: delay(100);
      00023A 90 00 64         [24]  739 	mov	dptr,#0x0064
      00023D C0 07            [24]  740 	push	ar7
      00023F C0 05            [24]  741 	push	ar5
      000241 C0 04            [24]  742 	push	ar4
      000243 C0 03            [24]  743 	push	ar3
      000245 12 00 E9         [24]  744 	lcall	_delay
      000248 D0 03            [24]  745 	pop	ar3
      00024A D0 04            [24]  746 	pop	ar4
      00024C D0 05            [24]  747 	pop	ar5
      00024E D0 07            [24]  748 	pop	ar7
                                    749 ;	main.c:154: minalarm2++;
      000250 05 19            [12]  750 	inc	_minalarm2
      000252 E4               [12]  751 	clr	a
      000253 B5 19 02         [24]  752 	cjne	a,_minalarm2,00162$
      000256 05 1A            [12]  753 	inc	(_minalarm2 + 1)
      000258                        754 00162$:
                                    755 ;	main.c:155: if(minalarm2==6) minalarm2 = 0;
      000258 74 06            [12]  756 	mov	a,#0x06
      00025A B5 19 06         [24]  757 	cjne	a,_minalarm2,00163$
      00025D E4               [12]  758 	clr	a
      00025E B5 1A 02         [24]  759 	cjne	a,(_minalarm2 + 1),00163$
      000261 80 02            [24]  760 	sjmp	00164$
      000263                        761 00163$:
      000263 80 05            [24]  762 	sjmp	00103$
      000265                        763 00164$:
      000265 E4               [12]  764 	clr	a
      000266 F5 19            [12]  765 	mov	_minalarm2,a
      000268 F5 1A            [12]  766 	mov	(_minalarm2 + 1),a
      00026A                        767 00103$:
                                    768 ;	main.c:156: P2 = dig_val[minalarm2];
      00026A E5 19            [12]  769 	mov	a,_minalarm2
      00026C 24 35            [12]  770 	add	a,#_dig_val
      00026E F9               [12]  771 	mov	r1,a
      00026F 87 A0            [24]  772 	mov	_P2,@r1
                                    773 ;	main.c:157: delay(20);
      000271 90 00 14         [24]  774 	mov	dptr,#0x0014
      000274 C0 07            [24]  775 	push	ar7
      000276 C0 05            [24]  776 	push	ar5
      000278 C0 04            [24]  777 	push	ar4
      00027A C0 03            [24]  778 	push	ar3
      00027C 12 00 E9         [24]  779 	lcall	_delay
      00027F D0 03            [24]  780 	pop	ar3
      000281 D0 04            [24]  781 	pop	ar4
      000283 D0 05            [24]  782 	pop	ar5
      000285 D0 07            [24]  783 	pop	ar7
                                    784 ;	main.c:158: break;
                                    785 ;	main.c:159: case 2:  //Set the min1 digit.
      000287 80 94            [24]  786 	sjmp	00114$
      000289                        787 00104$:
                                    788 ;	main.c:160: P2 = dig_val[minalarm1];
      000289 E5 1B            [12]  789 	mov	a,_minalarm1
      00028B 24 35            [12]  790 	add	a,#_dig_val
      00028D F9               [12]  791 	mov	r1,a
      00028E 87 A0            [24]  792 	mov	_P2,@r1
                                    793 ;	main.c:161: delay(100);
      000290 90 00 64         [24]  794 	mov	dptr,#0x0064
      000293 C0 07            [24]  795 	push	ar7
      000295 C0 05            [24]  796 	push	ar5
      000297 C0 04            [24]  797 	push	ar4
      000299 C0 03            [24]  798 	push	ar3
      00029B 12 00 E9         [24]  799 	lcall	_delay
      00029E D0 03            [24]  800 	pop	ar3
      0002A0 D0 04            [24]  801 	pop	ar4
      0002A2 D0 05            [24]  802 	pop	ar5
      0002A4 D0 07            [24]  803 	pop	ar7
                                    804 ;	main.c:162: minalarm1++;
      0002A6 05 1B            [12]  805 	inc	_minalarm1
      0002A8 E4               [12]  806 	clr	a
      0002A9 B5 1B 02         [24]  807 	cjne	a,_minalarm1,00165$
      0002AC 05 1C            [12]  808 	inc	(_minalarm1 + 1)
      0002AE                        809 00165$:
                                    810 ;	main.c:163: if(minalarm1==10)
      0002AE 74 0A            [12]  811 	mov	a,#0x0a
      0002B0 B5 1B 06         [24]  812 	cjne	a,_minalarm1,00166$
      0002B3 E4               [12]  813 	clr	a
      0002B4 B5 1C 02         [24]  814 	cjne	a,(_minalarm1 + 1),00166$
      0002B7 80 02            [24]  815 	sjmp	00167$
      0002B9                        816 00166$:
      0002B9 80 05            [24]  817 	sjmp	00106$
      0002BB                        818 00167$:
                                    819 ;	main.c:164: minalarm1 = 0;
      0002BB E4               [12]  820 	clr	a
      0002BC F5 1B            [12]  821 	mov	_minalarm1,a
      0002BE F5 1C            [12]  822 	mov	(_minalarm1 + 1),a
      0002C0                        823 00106$:
                                    824 ;	main.c:165: P2 = dig_val[minalarm1];
      0002C0 E5 1B            [12]  825 	mov	a,_minalarm1
      0002C2 24 35            [12]  826 	add	a,#_dig_val
      0002C4 F9               [12]  827 	mov	r1,a
      0002C5 87 A0            [24]  828 	mov	_P2,@r1
                                    829 ;	main.c:166: delay(20);
      0002C7 90 00 14         [24]  830 	mov	dptr,#0x0014
      0002CA C0 07            [24]  831 	push	ar7
      0002CC C0 05            [24]  832 	push	ar5
      0002CE C0 04            [24]  833 	push	ar4
      0002D0 C0 03            [24]  834 	push	ar3
      0002D2 12 00 E9         [24]  835 	lcall	_delay
      0002D5 D0 03            [24]  836 	pop	ar3
      0002D7 D0 04            [24]  837 	pop	ar4
      0002D9 D0 05            [24]  838 	pop	ar5
      0002DB D0 07            [24]  839 	pop	ar7
                                    840 ;	main.c:167: break;
      0002DD 02 02 1D         [24]  841 	ljmp	00114$
                                    842 ;	main.c:168: case 3:  // Set the sec2 digit.
      0002E0                        843 00107$:
                                    844 ;	main.c:169: P2 = dig_val[secalarm2];
      0002E0 E5 1D            [12]  845 	mov	a,_secalarm2
      0002E2 24 35            [12]  846 	add	a,#_dig_val
      0002E4 F9               [12]  847 	mov	r1,a
      0002E5 87 A0            [24]  848 	mov	_P2,@r1
                                    849 ;	main.c:170: delay(100);
      0002E7 90 00 64         [24]  850 	mov	dptr,#0x0064
      0002EA C0 07            [24]  851 	push	ar7
      0002EC C0 05            [24]  852 	push	ar5
      0002EE C0 04            [24]  853 	push	ar4
      0002F0 C0 03            [24]  854 	push	ar3
      0002F2 12 00 E9         [24]  855 	lcall	_delay
      0002F5 D0 03            [24]  856 	pop	ar3
      0002F7 D0 04            [24]  857 	pop	ar4
      0002F9 D0 05            [24]  858 	pop	ar5
      0002FB D0 07            [24]  859 	pop	ar7
                                    860 ;	main.c:171: secalarm2++;
      0002FD 05 1D            [12]  861 	inc	_secalarm2
      0002FF E4               [12]  862 	clr	a
      000300 B5 1D 02         [24]  863 	cjne	a,_secalarm2,00168$
      000303 05 1E            [12]  864 	inc	(_secalarm2 + 1)
      000305                        865 00168$:
                                    866 ;	main.c:172: if(secalarm2==6)
      000305 74 06            [12]  867 	mov	a,#0x06
      000307 B5 1D 06         [24]  868 	cjne	a,_secalarm2,00169$
      00030A E4               [12]  869 	clr	a
      00030B B5 1E 02         [24]  870 	cjne	a,(_secalarm2 + 1),00169$
      00030E 80 02            [24]  871 	sjmp	00170$
      000310                        872 00169$:
      000310 80 05            [24]  873 	sjmp	00109$
      000312                        874 00170$:
                                    875 ;	main.c:173: secalarm2 = 0;
      000312 E4               [12]  876 	clr	a
      000313 F5 1D            [12]  877 	mov	_secalarm2,a
      000315 F5 1E            [12]  878 	mov	(_secalarm2 + 1),a
      000317                        879 00109$:
                                    880 ;	main.c:174: P2 = dig_val[secalarm2];
      000317 E5 1D            [12]  881 	mov	a,_secalarm2
      000319 24 35            [12]  882 	add	a,#_dig_val
      00031B F9               [12]  883 	mov	r1,a
      00031C 87 A0            [24]  884 	mov	_P2,@r1
                                    885 ;	main.c:175: delay(20);
      00031E 90 00 14         [24]  886 	mov	dptr,#0x0014
      000321 C0 07            [24]  887 	push	ar7
      000323 C0 05            [24]  888 	push	ar5
      000325 C0 04            [24]  889 	push	ar4
      000327 C0 03            [24]  890 	push	ar3
      000329 12 00 E9         [24]  891 	lcall	_delay
      00032C D0 03            [24]  892 	pop	ar3
      00032E D0 04            [24]  893 	pop	ar4
      000330 D0 05            [24]  894 	pop	ar5
      000332 D0 07            [24]  895 	pop	ar7
                                    896 ;	main.c:176: break;
      000334 02 02 1D         [24]  897 	ljmp	00114$
                                    898 ;	main.c:177: case 4:  //Set the sec1 digit.
      000337                        899 00110$:
                                    900 ;	main.c:179: P2 = dig_val[secalarm1];
      000337 E5 1F            [12]  901 	mov	a,_secalarm1
      000339 24 35            [12]  902 	add	a,#_dig_val
      00033B F9               [12]  903 	mov	r1,a
      00033C 87 A0            [24]  904 	mov	_P2,@r1
                                    905 ;	main.c:180: delay(100);
      00033E 90 00 64         [24]  906 	mov	dptr,#0x0064
      000341 C0 07            [24]  907 	push	ar7
      000343 C0 05            [24]  908 	push	ar5
      000345 C0 04            [24]  909 	push	ar4
      000347 C0 03            [24]  910 	push	ar3
      000349 12 00 E9         [24]  911 	lcall	_delay
      00034C D0 03            [24]  912 	pop	ar3
      00034E D0 04            [24]  913 	pop	ar4
      000350 D0 05            [24]  914 	pop	ar5
      000352 D0 07            [24]  915 	pop	ar7
                                    916 ;	main.c:181: secalarm1++;
      000354 05 1F            [12]  917 	inc	_secalarm1
      000356 E4               [12]  918 	clr	a
      000357 B5 1F 02         [24]  919 	cjne	a,_secalarm1,00171$
      00035A 05 20            [12]  920 	inc	(_secalarm1 + 1)
      00035C                        921 00171$:
                                    922 ;	main.c:182: if(secalarm1==10)
      00035C 74 0A            [12]  923 	mov	a,#0x0a
      00035E B5 1F 06         [24]  924 	cjne	a,_secalarm1,00172$
      000361 E4               [12]  925 	clr	a
      000362 B5 20 02         [24]  926 	cjne	a,(_secalarm1 + 1),00172$
      000365 80 02            [24]  927 	sjmp	00173$
      000367                        928 00172$:
      000367 80 05            [24]  929 	sjmp	00112$
      000369                        930 00173$:
                                    931 ;	main.c:183: secalarm1 = 0;
      000369 E4               [12]  932 	clr	a
      00036A F5 1F            [12]  933 	mov	_secalarm1,a
      00036C F5 20            [12]  934 	mov	(_secalarm1 + 1),a
      00036E                        935 00112$:
                                    936 ;	main.c:184: P2 = dig_val[secalarm1];
      00036E E5 1F            [12]  937 	mov	a,_secalarm1
      000370 24 35            [12]  938 	add	a,#_dig_val
      000372 F9               [12]  939 	mov	r1,a
      000373 87 A0            [24]  940 	mov	_P2,@r1
                                    941 ;	main.c:185: delay(20);
      000375 90 00 14         [24]  942 	mov	dptr,#0x0014
      000378 C0 07            [24]  943 	push	ar7
      00037A C0 05            [24]  944 	push	ar5
      00037C C0 04            [24]  945 	push	ar4
      00037E C0 03            [24]  946 	push	ar3
      000380 12 00 E9         [24]  947 	lcall	_delay
      000383 D0 03            [24]  948 	pop	ar3
      000385 D0 04            [24]  949 	pop	ar4
      000387 D0 05            [24]  950 	pop	ar5
      000389 D0 07            [24]  951 	pop	ar7
                                    952 ;	main.c:187: }
      00038B 02 02 1D         [24]  953 	ljmp	00114$
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'resetfn'
                                    956 ;------------------------------------------------------------
                                    957 ;mode                      Allocated to registers r6 r7 
                                    958 ;------------------------------------------------------------
                                    959 ;	main.c:191: void resetfn(int mode)  // Function to bring the clock to reset or set mode.
                                    960 ;	-----------------------------------------
                                    961 ;	 function resetfn
                                    962 ;	-----------------------------------------
      00038E                        963 _resetfn:
      00038E AE 82            [24]  964 	mov	r6,dpl
      000390 AF 83            [24]  965 	mov	r7,dph
                                    966 ;	main.c:193: begin       = 1;
      000392 75 0E 01         [24]  967 	mov	_begin,#0x01
      000395 75 0F 00         [24]  968 	mov	(_begin + 1),#0x00
                                    969 ;	main.c:194: dig_ctrl_4  = 1;  //Enable the min2 digit and disable others
      000398 D2 90            [12]  970 	setb	_P1_0
                                    971 ;	main.c:195: dig_ctrl_3  = 0;
      00039A C2 91            [12]  972 	clr	_P1_1
                                    973 ;	main.c:196: dig_ctrl_2  = 0;
      00039C C2 92            [12]  974 	clr	_P1_2
                                    975 ;	main.c:197: dig_ctrl_1  = 0;
      00039E C2 93            [12]  976 	clr	_P1_3
                                    977 ;	main.c:199: if(mode==0)  //Check if clock is in set alarm mode
      0003A0 EE               [12]  978 	mov	a,r6
      0003A1 4F               [12]  979 	orl	a,r7
                                    980 ;	main.c:201: IE              =   0x88;  //Disable Timer0 interrupt to stop the display of clock.
                                    981 ;	main.c:202: sel_seg_to_incr =   1;
      0003A2 70 3B            [24]  982 	jnz	00102$
      0003A4 75 A8 88         [24]  983 	mov	_IE,#0x88
      0003A7 75 08 01         [24]  984 	mov	_sel_seg_to_incr,#0x01
      0003AA F5 09            [12]  985 	mov	(_sel_seg_to_incr + 1),a
                                    986 ;	main.c:203: recnt_incr_seg  =   1;
      0003AC 75 0C 01         [24]  987 	mov	_recnt_incr_seg,#0x01
      0003AF 75 0D 00         [24]  988 	mov	(_recnt_incr_seg + 1),#0x00
                                    989 ;	main.c:204: P2              =   dig_val[keepmin2];
      0003B2 E5 29            [12]  990 	mov	a,_keepmin2
      0003B4 24 35            [12]  991 	add	a,#_dig_val
      0003B6 F9               [12]  992 	mov	r1,a
      0003B7 87 A0            [24]  993 	mov	_P2,@r1
                                    994 ;	main.c:205: delay(100);
      0003B9 90 00 64         [24]  995 	mov	dptr,#0x0064
      0003BC C0 07            [24]  996 	push	ar7
      0003BE C0 06            [24]  997 	push	ar6
      0003C0 12 00 E9         [24]  998 	lcall	_delay
      0003C3 D0 06            [24]  999 	pop	ar6
      0003C5 D0 07            [24] 1000 	pop	ar7
                                   1001 ;	main.c:206: minalarm2       =   keepmin2;
      0003C7 85 29 19         [24] 1002 	mov	_minalarm2,_keepmin2
      0003CA 85 2A 1A         [24] 1003 	mov	(_minalarm2 + 1),(_keepmin2 + 1)
                                   1004 ;	main.c:207: minalarm1       =   keepmin1;
      0003CD 85 2B 1B         [24] 1005 	mov	_minalarm1,_keepmin1
      0003D0 85 2C 1C         [24] 1006 	mov	(_minalarm1 + 1),(_keepmin1 + 1)
                                   1007 ;	main.c:208: secalarm2       =   keepsec2;
      0003D3 85 2D 1D         [24] 1008 	mov	_secalarm2,_keepsec2
      0003D6 85 2E 1E         [24] 1009 	mov	(_secalarm2 + 1),(_keepsec2 + 1)
                                   1010 ;	main.c:209: secalarm1       =   keepsec1;
      0003D9 85 2F 1F         [24] 1011 	mov	_secalarm1,_keepsec1
      0003DC 85 30 20         [24] 1012 	mov	(_secalarm1 + 1),(_keepsec1 + 1)
      0003DF                       1013 00102$:
                                   1014 ;	main.c:212: if(mode==1)  //Check if clock is in set clock mode
      0003DF BE 01 06         [24] 1015 	cjne	r6,#0x01,00145$
      0003E2 BF 00 03         [24] 1016 	cjne	r7,#0x00,00145$
      0003E5 EE               [12] 1017 	mov	a,r6
      0003E6 80 01            [24] 1018 	sjmp	00146$
      0003E8                       1019 00145$:
      0003E8 E4               [12] 1020 	clr	a
      0003E9                       1021 00146$:
      0003E9 FD               [12] 1022 	mov	r5,a
      0003EA 60 40            [24] 1023 	jz	00116$
                                   1024 ;	main.c:214: IE              =   0x80;  //Disable Timer0 interrupt to stop the clock.
      0003EC 75 A8 80         [24] 1025 	mov	_IE,#0x80
                                   1026 ;	main.c:215: minalarm2       =   min2;
      0003EF 85 11 19         [24] 1027 	mov	_minalarm2,_min2
      0003F2 85 12 1A         [24] 1028 	mov	(_minalarm2 + 1),(_min2 + 1)
                                   1029 ;	main.c:216: minalarm1       =   min1;
      0003F5 85 13 1B         [24] 1030 	mov	_minalarm1,_min1
      0003F8 85 14 1C         [24] 1031 	mov	(_minalarm1 + 1),(_min1 + 1)
                                   1032 ;	main.c:217: secalarm2       =   sec2;
      0003FB 85 15 1D         [24] 1033 	mov	_secalarm2,_sec2
      0003FE 85 16 1E         [24] 1034 	mov	(_secalarm2 + 1),(_sec2 + 1)
                                   1035 ;	main.c:218: secalarm1       =   sec1;
      000401 85 17 1F         [24] 1036 	mov	_secalarm1,_sec1
      000404 85 18 20         [24] 1037 	mov	(_secalarm1 + 1),(_sec1 + 1)
                                   1038 ;	main.c:219: sel_seg_to_incr =   1;
      000407 75 08 01         [24] 1039 	mov	_sel_seg_to_incr,#0x01
      00040A 75 09 00         [24] 1040 	mov	(_sel_seg_to_incr + 1),#0x00
                                   1041 ;	main.c:220: recnt_incr_seg  =   1;
      00040D 75 0C 01         [24] 1042 	mov	_recnt_incr_seg,#0x01
      000410 75 0D 00         [24] 1043 	mov	(_recnt_incr_seg + 1),#0x00
                                   1044 ;	main.c:221: P2              =   dig_val[min2];
      000413 E5 11            [12] 1045 	mov	a,_min2
      000415 24 35            [12] 1046 	add	a,#_dig_val
      000417 F9               [12] 1047 	mov	r1,a
      000418 87 A0            [24] 1048 	mov	_P2,@r1
                                   1049 ;	main.c:222: delay(100);
      00041A 90 00 64         [24] 1050 	mov	dptr,#0x0064
      00041D C0 07            [24] 1051 	push	ar7
      00041F C0 06            [24] 1052 	push	ar6
      000421 C0 05            [24] 1053 	push	ar5
      000423 12 00 E9         [24] 1054 	lcall	_delay
      000426 D0 05            [24] 1055 	pop	ar5
      000428 D0 06            [24] 1056 	pop	ar6
      00042A D0 07            [24] 1057 	pop	ar7
                                   1058 ;	main.c:225: while(1)
      00042C                       1059 00116$:
                                   1060 ;	main.c:227: if(start==0)  //Check if start pin is pressed
      00042C 20 B3 5E         [24] 1061 	jb	_P3_3,00110$
                                   1062 ;	main.c:229: if(mode==0)
      00042F EE               [12] 1063 	mov	a,r6
      000430 4F               [12] 1064 	orl	a,r7
      000431 70 30            [24] 1065 	jnz	00106$
                                   1066 ;	main.c:231: keepmin2    =   minalarm2;
      000433 85 19 29         [24] 1067 	mov	_keepmin2,_minalarm2
      000436 85 1A 2A         [24] 1068 	mov	(_keepmin2 + 1),(_minalarm2 + 1)
                                   1069 ;	main.c:232: keepmin1    =   minalarm1;
      000439 85 1B 2B         [24] 1070 	mov	_keepmin1,_minalarm1
      00043C 85 1C 2C         [24] 1071 	mov	(_keepmin1 + 1),(_minalarm1 + 1)
                                   1072 ;	main.c:233: keepsec2    =   secalarm2;
      00043F 85 1D 2D         [24] 1073 	mov	_keepsec2,_secalarm2
      000442 85 1E 2E         [24] 1074 	mov	(_keepsec2 + 1),(_secalarm2 + 1)
                                   1075 ;	main.c:234: keepsec1    =   secalarm1;
      000445 85 1F 2F         [24] 1076 	mov	_keepsec1,_secalarm1
      000448 85 20 30         [24] 1077 	mov	(_keepsec1 + 1),(_secalarm1 + 1)
                                   1078 ;	main.c:235: alarmmin2   =   minalarm2;
      00044B 85 19 21         [24] 1079 	mov	_alarmmin2,_minalarm2
      00044E 85 1A 22         [24] 1080 	mov	(_alarmmin2 + 1),(_minalarm2 + 1)
                                   1081 ;	main.c:236: alarmmin1   =   minalarm1;
      000451 85 1B 23         [24] 1082 	mov	_alarmmin1,_minalarm1
      000454 85 1C 24         [24] 1083 	mov	(_alarmmin1 + 1),(_minalarm1 + 1)
                                   1084 ;	main.c:237: alarmsec2   =   secalarm2;
      000457 85 1D 25         [24] 1085 	mov	_alarmsec2,_secalarm2
      00045A 85 1E 26         [24] 1086 	mov	(_alarmsec2 + 1),(_secalarm2 + 1)
                                   1087 ;	main.c:238: alarmsec1   =   secalarm1;
      00045D 85 1F 27         [24] 1088 	mov	_alarmsec1,_secalarm1
      000460 85 20 28         [24] 1089 	mov	(_alarmsec1 + 1),(_secalarm1 + 1)
      000463                       1090 00106$:
                                   1091 ;	main.c:241: if(mode==1)
      000463 ED               [12] 1092 	mov	a,r5
      000464 60 18            [24] 1093 	jz	00108$
                                   1094 ;	main.c:243: min2    =   minalarm2;
      000466 85 19 11         [24] 1095 	mov	_min2,_minalarm2
      000469 85 1A 12         [24] 1096 	mov	(_min2 + 1),(_minalarm2 + 1)
                                   1097 ;	main.c:244: min1    =   minalarm1;
      00046C 85 1B 13         [24] 1098 	mov	_min1,_minalarm1
      00046F 85 1C 14         [24] 1099 	mov	(_min1 + 1),(_minalarm1 + 1)
                                   1100 ;	main.c:245: sec2    =   secalarm2;
      000472 85 1D 15         [24] 1101 	mov	_sec2,_secalarm2
      000475 85 1E 16         [24] 1102 	mov	(_sec2 + 1),(_secalarm2 + 1)
                                   1103 ;	main.c:246: sec1    =   secalarm1;
      000478 85 1F 17         [24] 1104 	mov	_sec1,_secalarm1
      00047B 85 20 18         [24] 1105 	mov	(_sec1 + 1),(_secalarm1 + 1)
      00047E                       1106 00108$:
                                   1107 ;	main.c:249: TMOD    =   0x11;  //Reset the timer0
      00047E 75 89 11         [24] 1108 	mov	_TMOD,#0x11
                                   1109 ;	main.c:250: TL0     =   0xf6;
      000481 75 8A F6         [24] 1110 	mov	_TL0,#0xf6
                                   1111 ;	main.c:251: TH0     =   0xFf;
      000484 75 8C FF         [24] 1112 	mov	_TH0,#0xff
                                   1113 ;	main.c:252: IE      =   0x8A;  //Enabling Timer0 interrupt to start the display of clock
      000487 75 A8 8A         [24] 1114 	mov	_IE,#0x8a
                                   1115 ;	main.c:253: TR0     =   1;
      00048A D2 8C            [12] 1116 	setb	_TR0
                                   1117 ;	main.c:254: break;
      00048C 22               [24] 1118 	ret
      00048D                       1119 00110$:
                                   1120 ;	main.c:257: if(set==0)  //Check if set pin is pressed
      00048D 20 96 15         [24] 1121 	jb	_P1_6,00112$
                                   1122 ;	main.c:258: sel_seg_to_incr =   setfn();
      000490 C0 07            [24] 1123 	push	ar7
      000492 C0 06            [24] 1124 	push	ar6
      000494 C0 05            [24] 1125 	push	ar5
      000496 12 01 1C         [24] 1126 	lcall	_setfn
      000499 85 82 08         [24] 1127 	mov	_sel_seg_to_incr,dpl
      00049C 85 83 09         [24] 1128 	mov	(_sel_seg_to_incr + 1),dph
      00049F D0 05            [24] 1129 	pop	ar5
      0004A1 D0 06            [24] 1130 	pop	ar6
      0004A3 D0 07            [24] 1131 	pop	ar7
      0004A5                       1132 00112$:
                                   1133 ;	main.c:260: if(incr==0)  //Check if incr pin is pressed
      0004A5 20 97 84         [24] 1134 	jb	_P1_7,00116$
                                   1135 ;	main.c:261: increase(sel_seg_to_incr);
      0004A8 85 08 82         [24] 1136 	mov	dpl,_sel_seg_to_incr
      0004AB 85 09 83         [24] 1137 	mov	dph,(_sel_seg_to_incr + 1)
      0004AE C0 07            [24] 1138 	push	ar7
      0004B0 C0 06            [24] 1139 	push	ar6
      0004B2 C0 05            [24] 1140 	push	ar5
      0004B4 12 01 F3         [24] 1141 	lcall	_increase
      0004B7 D0 05            [24] 1142 	pop	ar5
      0004B9 D0 06            [24] 1143 	pop	ar6
      0004BB D0 07            [24] 1144 	pop	ar7
      0004BD 02 04 2C         [24] 1145 	ljmp	00116$
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'display'
                                   1148 ;------------------------------------------------------------
                                   1149 ;	main.c:265: void display(void) __interrupt (1)  // Function to display the digits on seven segment using the concept of seven segment multiplexing.
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function display
                                   1152 ;	-----------------------------------------
      0004C0                       1153 _display:
      0004C0 C0 E0            [24] 1154 	push	acc
      0004C2 C0 F0            [24] 1155 	push	b
      0004C4 C0 82            [24] 1156 	push	dpl
      0004C6 C0 83            [24] 1157 	push	dph
      0004C8 C0 01            [24] 1158 	push	ar1
      0004CA C0 D0            [24] 1159 	push	psw
      0004CC 75 D0 00         [24] 1160 	mov	psw,#0x00
                                   1161 ;	main.c:267: TL0         =   0x36;  //Reload Timer0
      0004CF 75 8A 36         [24] 1162 	mov	_TL0,#0x36
                                   1163 ;	main.c:268: TH0         =   0xf6;
      0004D2 75 8C F6         [24] 1164 	mov	_TH0,#0xf6
                                   1165 ;	main.c:269: P2          =   0xFF;
      0004D5 75 A0 FF         [24] 1166 	mov	_P2,#0xff
                                   1167 ;	main.c:270: dig_ctrl_1  =   0;
      0004D8 C2 93            [12] 1168 	clr	_P1_3
                                   1169 ;	main.c:271: dig_ctrl_3  =   0;
      0004DA C2 91            [12] 1170 	clr	_P1_1
                                   1171 ;	main.c:272: dig_ctrl_2  =   0;
      0004DC C2 92            [12] 1172 	clr	_P1_2
                                   1173 ;	main.c:273: dig_ctrl_4  =   0;
      0004DE C2 90            [12] 1174 	clr	_P1_0
                                   1175 ;	main.c:275: dig_disp++;
      0004E0 05 10            [12] 1176 	inc	_dig_disp
                                   1177 ;	main.c:276: dig_disp=dig_disp%4;
      0004E2 53 10 03         [24] 1178 	anl	_dig_disp,#0x03
                                   1179 ;	main.c:278: switch(dig_disp)
      0004E5 E5 10            [12] 1180 	mov	a,_dig_disp
      0004E7 24 FC            [12] 1181 	add	a,#0xff - 0x03
      0004E9 40 40            [24] 1182 	jc	00106$
      0004EB E5 10            [12] 1183 	mov	a,_dig_disp
      0004ED 75 F0 03         [24] 1184 	mov	b,#0x03
      0004F0 A4               [48] 1185 	mul	ab
      0004F1 90 04 F5         [24] 1186 	mov	dptr,#00112$
      0004F4 73               [24] 1187 	jmp	@a+dptr
      0004F5                       1188 00112$:
      0004F5 02 05 01         [24] 1189 	ljmp	00101$
      0004F8 02 05 0C         [24] 1190 	ljmp	00102$
      0004FB 02 05 17         [24] 1191 	ljmp	00103$
      0004FE 02 05 22         [24] 1192 	ljmp	00104$
                                   1193 ;	main.c:280: case 0:
      000501                       1194 00101$:
                                   1195 ;	main.c:281: P2=dig_val[sec1];
      000501 E5 17            [12] 1196 	mov	a,_sec1
      000503 24 35            [12] 1197 	add	a,#_dig_val
      000505 F9               [12] 1198 	mov	r1,a
      000506 87 A0            [24] 1199 	mov	_P2,@r1
                                   1200 ;	main.c:282: dig_ctrl_1 = 1;
      000508 D2 93            [12] 1201 	setb	_P1_3
                                   1202 ;	main.c:283: break;
                                   1203 ;	main.c:285: case 1:
      00050A 80 1F            [24] 1204 	sjmp	00106$
      00050C                       1205 00102$:
                                   1206 ;	main.c:286: P2= dig_val[sec2];
      00050C E5 15            [12] 1207 	mov	a,_sec2
      00050E 24 35            [12] 1208 	add	a,#_dig_val
      000510 F9               [12] 1209 	mov	r1,a
      000511 87 A0            [24] 1210 	mov	_P2,@r1
                                   1211 ;	main.c:287: dig_ctrl_2 = 1;
      000513 D2 92            [12] 1212 	setb	_P1_2
                                   1213 ;	main.c:288: break;
                                   1214 ;	main.c:290: case 2:
      000515 80 14            [24] 1215 	sjmp	00106$
      000517                       1216 00103$:
                                   1217 ;	main.c:291: P2= dig_val[min1];
      000517 E5 13            [12] 1218 	mov	a,_min1
      000519 24 35            [12] 1219 	add	a,#_dig_val
      00051B F9               [12] 1220 	mov	r1,a
      00051C 87 A0            [24] 1221 	mov	_P2,@r1
                                   1222 ;	main.c:292: dig_ctrl_3 = 1;
      00051E D2 91            [12] 1223 	setb	_P1_1
                                   1224 ;	main.c:293: break;
                                   1225 ;	main.c:295: case 3:
      000520 80 09            [24] 1226 	sjmp	00106$
      000522                       1227 00104$:
                                   1228 ;	main.c:296: P2= dig_val[min2];
      000522 E5 11            [12] 1229 	mov	a,_min2
      000524 24 35            [12] 1230 	add	a,#_dig_val
      000526 F9               [12] 1231 	mov	r1,a
      000527 87 A0            [24] 1232 	mov	_P2,@r1
                                   1233 ;	main.c:297: dig_ctrl_4 = 1;
      000529 D2 90            [12] 1234 	setb	_P1_0
                                   1235 ;	main.c:299: }
      00052B                       1236 00106$:
      00052B D0 D0            [24] 1237 	pop	psw
      00052D D0 01            [24] 1238 	pop	ar1
      00052F D0 83            [24] 1239 	pop	dph
      000531 D0 82            [24] 1240 	pop	dpl
      000533 D0 F0            [24] 1241 	pop	b
      000535 D0 E0            [24] 1242 	pop	acc
      000537 32               [24] 1243 	reti
                                   1244 ;	eliminated unneeded push/pop ar0
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'moveclock'
                                   1247 ;------------------------------------------------------------
                                   1248 ;	main.c:302: void moveclock(void) __interrupt 3  // Function to increment clock digits
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function moveclock
                                   1251 ;	-----------------------------------------
      000538                       1252 _moveclock:
      000538 C0 E0            [24] 1253 	push	acc
      00053A C0 D0            [24] 1254 	push	psw
                                   1255 ;	main.c:304: loop++;
      00053C 05 31            [12] 1256 	inc	_loop
      00053E E4               [12] 1257 	clr	a
      00053F B5 31 02         [24] 1258 	cjne	a,_loop,00128$
      000542 05 32            [12] 1259 	inc	(_loop + 1)
      000544                       1260 00128$:
                                   1261 ;	main.c:305: if(loop==20)
      000544 74 14            [12] 1262 	mov	a,#0x14
      000546 B5 31 06         [24] 1263 	cjne	a,_loop,00129$
      000549 E4               [12] 1264 	clr	a
      00054A B5 32 02         [24] 1265 	cjne	a,(_loop + 1),00129$
      00054D 80 03            [24] 1266 	sjmp	00130$
      00054F                       1267 00129$:
      00054F 02 05 D4         [24] 1268 	ljmp	00111$
      000552                       1269 00130$:
                                   1270 ;	main.c:307: sec1++;
      000552 05 17            [12] 1271 	inc	_sec1
      000554 E4               [12] 1272 	clr	a
      000555 B5 17 02         [24] 1273 	cjne	a,_sec1,00131$
      000558 05 18            [12] 1274 	inc	(_sec1 + 1)
      00055A                       1275 00131$:
                                   1276 ;	main.c:308: if(sec1==10)
      00055A 74 0A            [12] 1277 	mov	a,#0x0a
      00055C B5 17 06         [24] 1278 	cjne	a,_sec1,00132$
      00055F E4               [12] 1279 	clr	a
      000560 B5 18 02         [24] 1280 	cjne	a,(_sec1 + 1),00132$
      000563 80 02            [24] 1281 	sjmp	00133$
      000565                       1282 00132$:
      000565 80 68            [24] 1283 	sjmp	00108$
      000567                       1284 00133$:
                                   1285 ;	main.c:310: sec1=0;
      000567 E4               [12] 1286 	clr	a
      000568 F5 17            [12] 1287 	mov	_sec1,a
      00056A F5 18            [12] 1288 	mov	(_sec1 + 1),a
                                   1289 ;	main.c:311: sec2++;
      00056C 05 15            [12] 1290 	inc	_sec2
                                   1291 ;	genFromRTrack removed	clr	a
      00056E B5 15 02         [24] 1292 	cjne	a,_sec2,00134$
      000571 05 16            [12] 1293 	inc	(_sec2 + 1)
      000573                       1294 00134$:
                                   1295 ;	main.c:312: if(sec2==6)
      000573 74 06            [12] 1296 	mov	a,#0x06
      000575 B5 15 06         [24] 1297 	cjne	a,_sec2,00135$
      000578 E4               [12] 1298 	clr	a
      000579 B5 16 02         [24] 1299 	cjne	a,(_sec2 + 1),00135$
      00057C 80 02            [24] 1300 	sjmp	00136$
      00057E                       1301 00135$:
      00057E 80 4F            [24] 1302 	sjmp	00108$
      000580                       1303 00136$:
                                   1304 ;	main.c:314: sec1=0;
      000580 E4               [12] 1305 	clr	a
      000581 F5 17            [12] 1306 	mov	_sec1,a
      000583 F5 18            [12] 1307 	mov	(_sec1 + 1),a
                                   1308 ;	main.c:315: sec2=0;
      000585 F5 15            [12] 1309 	mov	_sec2,a
      000587 F5 16            [12] 1310 	mov	(_sec2 + 1),a
                                   1311 ;	main.c:316: min1++;
      000589 05 13            [12] 1312 	inc	_min1
                                   1313 ;	genFromRTrack removed	clr	a
      00058B B5 13 02         [24] 1314 	cjne	a,_min1,00137$
      00058E 05 14            [12] 1315 	inc	(_min1 + 1)
      000590                       1316 00137$:
                                   1317 ;	main.c:317: if(min1==10)
      000590 74 0A            [12] 1318 	mov	a,#0x0a
      000592 B5 13 06         [24] 1319 	cjne	a,_min1,00138$
      000595 E4               [12] 1320 	clr	a
      000596 B5 14 02         [24] 1321 	cjne	a,(_min1 + 1),00138$
      000599 80 02            [24] 1322 	sjmp	00139$
      00059B                       1323 00138$:
      00059B 80 32            [24] 1324 	sjmp	00108$
      00059D                       1325 00139$:
                                   1326 ;	main.c:319: sec1=0;
      00059D E4               [12] 1327 	clr	a
      00059E F5 17            [12] 1328 	mov	_sec1,a
      0005A0 F5 18            [12] 1329 	mov	(_sec1 + 1),a
                                   1330 ;	main.c:320: sec2=0;
      0005A2 F5 15            [12] 1331 	mov	_sec2,a
      0005A4 F5 16            [12] 1332 	mov	(_sec2 + 1),a
                                   1333 ;	main.c:321: min1=0;
      0005A6 F5 13            [12] 1334 	mov	_min1,a
      0005A8 F5 14            [12] 1335 	mov	(_min1 + 1),a
                                   1336 ;	main.c:322: min2++;
      0005AA 05 11            [12] 1337 	inc	_min2
                                   1338 ;	genFromRTrack removed	clr	a
      0005AC B5 11 02         [24] 1339 	cjne	a,_min2,00140$
      0005AF 05 12            [12] 1340 	inc	(_min2 + 1)
      0005B1                       1341 00140$:
                                   1342 ;	main.c:323: if(min2==6)
      0005B1 74 06            [12] 1343 	mov	a,#0x06
      0005B3 B5 11 06         [24] 1344 	cjne	a,_min2,00141$
      0005B6 E4               [12] 1345 	clr	a
      0005B7 B5 12 02         [24] 1346 	cjne	a,(_min2 + 1),00141$
      0005BA 80 02            [24] 1347 	sjmp	00142$
      0005BC                       1348 00141$:
      0005BC 80 11            [24] 1349 	sjmp	00108$
      0005BE                       1350 00142$:
                                   1351 ;	main.c:325: sec1=0;
      0005BE E4               [12] 1352 	clr	a
      0005BF F5 17            [12] 1353 	mov	_sec1,a
      0005C1 F5 18            [12] 1354 	mov	(_sec1 + 1),a
                                   1355 ;	main.c:326: sec2=0;
      0005C3 F5 15            [12] 1356 	mov	_sec2,a
      0005C5 F5 16            [12] 1357 	mov	(_sec2 + 1),a
                                   1358 ;	main.c:327: min1=0;
      0005C7 F5 13            [12] 1359 	mov	_min1,a
      0005C9 F5 14            [12] 1360 	mov	(_min1 + 1),a
                                   1361 ;	main.c:328: min2=0;
      0005CB F5 11            [12] 1362 	mov	_min2,a
      0005CD F5 12            [12] 1363 	mov	(_min2 + 1),a
      0005CF                       1364 00108$:
                                   1365 ;	main.c:333: loop=0;
      0005CF E4               [12] 1366 	clr	a
      0005D0 F5 31            [12] 1367 	mov	_loop,a
      0005D2 F5 32            [12] 1368 	mov	(_loop + 1),a
      0005D4                       1369 00111$:
      0005D4 D0 D0            [24] 1370 	pop	psw
      0005D6 D0 E0            [24] 1371 	pop	acc
      0005D8 32               [24] 1372 	reti
                                   1373 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1374 ;	eliminated unneeded push/pop dpl
                                   1375 ;	eliminated unneeded push/pop dph
                                   1376 ;	eliminated unneeded push/pop b
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'main'
                                   1379 ;------------------------------------------------------------
                                   1380 ;	main.c:337: void main()
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function main
                                   1383 ;	-----------------------------------------
      0005D9                       1384 _main:
                                   1385 ;	main.c:339: mode        =   0;
      0005D9 E4               [12] 1386 	clr	a
      0005DA F5 33            [12] 1387 	mov	_mode,a
      0005DC F5 34            [12] 1388 	mov	(_mode + 1),a
                                   1389 ;	main.c:340: set         =   1;          //Initialize set, reset, start and incr pins as input
      0005DE D2 96            [12] 1390 	setb	_P1_6
                                   1391 ;	main.c:341: resetalarm  =   1;
      0005E0 D2 95            [12] 1392 	setb	_P1_5
                                   1393 ;	main.c:342: resetclock  =   1;
      0005E2 D2 94            [12] 1394 	setb	_P1_4
                                   1395 ;	main.c:343: start       =   1;
      0005E4 D2 B3            [12] 1396 	setb	_P3_3
                                   1397 ;	main.c:344: incr        =   1;
      0005E6 D2 97            [12] 1398 	setb	_P1_7
                                   1399 ;	main.c:345: begin       =   0;
      0005E8 E4               [12] 1400 	clr	a
      0005E9 F5 0E            [12] 1401 	mov	_begin,a
      0005EB F5 0F            [12] 1402 	mov	(_begin + 1),a
                                   1403 ;	main.c:346: TMOD        =   0x11;       //Intialize Timer 0
      0005ED 75 89 11         [24] 1404 	mov	_TMOD,#0x11
                                   1405 ;	main.c:347: TL0         =   0xf6;       //Load timer0
      0005F0 75 8A F6         [24] 1406 	mov	_TL0,#0xf6
                                   1407 ;	main.c:348: TH0         =   0xFf;
      0005F3 75 8C FF         [24] 1408 	mov	_TH0,#0xff
                                   1409 ;	main.c:349: IE          =   0x8A;       //Enable Timer0 interrupt
      0005F6 75 A8 8A         [24] 1410 	mov	_IE,#0x8a
                                   1411 ;	main.c:350: TR0         =   1;          //Start Timer0
      0005F9 D2 8C            [12] 1412 	setb	_TR0
                                   1413 ;	main.c:351: TL1         =   0xFD;
      0005FB 75 8B FD         [24] 1414 	mov	_TL1,#0xfd
                                   1415 ;	main.c:352: TH1         =   0x4B;
      0005FE 75 8D 4B         [24] 1416 	mov	_TH1,#0x4b
                                   1417 ;	main.c:353: TR1         =   1;          // Start Timer1
      000601 D2 8E            [12] 1418 	setb	_TR1
                                   1419 ;	main.c:355: while(1)
      000603                       1420 00112$:
                                   1421 ;	main.c:357: if(resetalarm==0)     //Check if reset alarm pin is pressed
      000603 20 95 06         [24] 1422 	jb	_P1_5,00102$
                                   1423 ;	main.c:359: resetfn(0);
      000606 90 00 00         [24] 1424 	mov	dptr,#0x0000
      000609 12 03 8E         [24] 1425 	lcall	_resetfn
      00060C                       1426 00102$:
                                   1427 ;	main.c:361: if(resetclock==0)     //Check if reset clock pin is pressed
      00060C 20 94 06         [24] 1428 	jb	_P1_4,00104$
                                   1429 ;	main.c:363: resetfn(1);
      00060F 90 00 01         [24] 1430 	mov	dptr,#0x0001
      000612 12 03 8E         [24] 1431 	lcall	_resetfn
      000615                       1432 00104$:
                                   1433 ;	main.c:365: if(min2==alarmmin2&&min1==alarmmin1&&sec2==alarmsec2&&sec1==alarmsec1&&begin==1)  // Check for Alarm condition
      000615 E5 21            [12] 1434 	mov	a,_alarmmin2
      000617 B5 11 E9         [24] 1435 	cjne	a,_min2,00112$
      00061A E5 22            [12] 1436 	mov	a,(_alarmmin2 + 1)
      00061C B5 12 E4         [24] 1437 	cjne	a,(_min2 + 1),00112$
      00061F E5 23            [12] 1438 	mov	a,_alarmmin1
      000621 B5 13 DF         [24] 1439 	cjne	a,_min1,00112$
      000624 E5 24            [12] 1440 	mov	a,(_alarmmin1 + 1)
      000626 B5 14 DA         [24] 1441 	cjne	a,(_min1 + 1),00112$
      000629 E5 25            [12] 1442 	mov	a,_alarmsec2
      00062B B5 15 D5         [24] 1443 	cjne	a,_sec2,00112$
      00062E E5 26            [12] 1444 	mov	a,(_alarmsec2 + 1)
      000630 B5 16 D0         [24] 1445 	cjne	a,(_sec2 + 1),00112$
      000633 E5 27            [12] 1446 	mov	a,_alarmsec1
      000635 B5 17 CB         [24] 1447 	cjne	a,_sec1,00112$
      000638 E5 28            [12] 1448 	mov	a,(_alarmsec1 + 1)
      00063A B5 18 C6         [24] 1449 	cjne	a,(_sec1 + 1),00112$
      00063D 74 01            [12] 1450 	mov	a,#0x01
      00063F B5 0E 06         [24] 1451 	cjne	a,_begin,00150$
      000642 14               [12] 1452 	dec	a
      000643 B5 0F 02         [24] 1453 	cjne	a,(_begin + 1),00150$
      000646 80 02            [24] 1454 	sjmp	00151$
      000648                       1455 00150$:
      000648 80 B9            [24] 1456 	sjmp	00112$
      00064A                       1457 00151$:
                                   1458 ;	main.c:367: buzzer=0;
      00064A C2 B7            [12] 1459 	clr	_P3_7
                                   1460 ;	main.c:368: delay(500);
      00064C 90 01 F4         [24] 1461 	mov	dptr,#0x01f4
      00064F 12 00 E9         [24] 1462 	lcall	_delay
                                   1463 ;	main.c:369: buzzer=1;
      000652 D2 B7            [12] 1464 	setb	_P3_7
      000654 80 AD            [24] 1465 	sjmp	00112$
                                   1466 	.area CSEG    (CODE)
                                   1467 	.area CONST   (CODE)
                                   1468 	.area XINIT   (CODE)
                                   1469 	.area CABS    (ABS,CODE)
