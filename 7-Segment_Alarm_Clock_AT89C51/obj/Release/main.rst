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
      00000B 02 04 CC         [24]  359 	ljmp	_display
      00000E                        360 	.ds	5
      000013 32               [24]  361 	reti
      000014                        362 	.ds	7
      00001B 02 05 44         [24]  363 	ljmp	_moveclock
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
                                    377 ;	main.c:54: int sel_seg_to_incr     =   0;
      00007A E4               [12]  378 	clr	a
      00007B F5 08            [12]  379 	mov	_sel_seg_to_incr,a
      00007D F5 09            [12]  380 	mov	(_sel_seg_to_incr + 1),a
                                    381 ;	main.c:55: int ret_seg_to_incre    =   0;
      00007F F5 0A            [12]  382 	mov	_ret_seg_to_incre,a
      000081 F5 0B            [12]  383 	mov	(_ret_seg_to_incre + 1),a
                                    384 ;	main.c:56: int recnt_incr_seg      =   0;
      000083 F5 0C            [12]  385 	mov	_recnt_incr_seg,a
      000085 F5 0D            [12]  386 	mov	(_recnt_incr_seg + 1),a
                                    387 ;	main.c:57: int begin               =   0;
      000087 F5 0E            [12]  388 	mov	_begin,a
      000089 F5 0F            [12]  389 	mov	(_begin + 1),a
                                    390 ;	main.c:58: unsigned char dig_disp  =   0;
                                    391 ;	1-genFromRTrack replaced	mov	_dig_disp,#0x00
      00008B F5 10            [12]  392 	mov	_dig_disp,a
                                    393 ;	main.c:59: int min2                =   0;
      00008D F5 11            [12]  394 	mov	_min2,a
      00008F F5 12            [12]  395 	mov	(_min2 + 1),a
                                    396 ;	main.c:60: int min1                =   0;
      000091 F5 13            [12]  397 	mov	_min1,a
      000093 F5 14            [12]  398 	mov	(_min1 + 1),a
                                    399 ;	main.c:61: int sec2                =   0;
      000095 F5 15            [12]  400 	mov	_sec2,a
      000097 F5 16            [12]  401 	mov	(_sec2 + 1),a
                                    402 ;	main.c:62: int sec1                =   0;
      000099 F5 17            [12]  403 	mov	_sec1,a
      00009B F5 18            [12]  404 	mov	(_sec1 + 1),a
                                    405 ;	main.c:63: int minalarm2           =   0;
      00009D F5 19            [12]  406 	mov	_minalarm2,a
      00009F F5 1A            [12]  407 	mov	(_minalarm2 + 1),a
                                    408 ;	main.c:64: int minalarm1           =   0;
      0000A1 F5 1B            [12]  409 	mov	_minalarm1,a
      0000A3 F5 1C            [12]  410 	mov	(_minalarm1 + 1),a
                                    411 ;	main.c:65: int secalarm2           =   0;
      0000A5 F5 1D            [12]  412 	mov	_secalarm2,a
      0000A7 F5 1E            [12]  413 	mov	(_secalarm2 + 1),a
                                    414 ;	main.c:66: int secalarm1           =   0;
      0000A9 F5 1F            [12]  415 	mov	_secalarm1,a
      0000AB F5 20            [12]  416 	mov	(_secalarm1 + 1),a
                                    417 ;	main.c:67: int alarmmin2           =   0;
      0000AD F5 21            [12]  418 	mov	_alarmmin2,a
      0000AF F5 22            [12]  419 	mov	(_alarmmin2 + 1),a
                                    420 ;	main.c:68: int alarmmin1           =   0;
      0000B1 F5 23            [12]  421 	mov	_alarmmin1,a
      0000B3 F5 24            [12]  422 	mov	(_alarmmin1 + 1),a
                                    423 ;	main.c:69: int alarmsec2           =   0;
      0000B5 F5 25            [12]  424 	mov	_alarmsec2,a
      0000B7 F5 26            [12]  425 	mov	(_alarmsec2 + 1),a
                                    426 ;	main.c:70: int alarmsec1           =   0;
      0000B9 F5 27            [12]  427 	mov	_alarmsec1,a
      0000BB F5 28            [12]  428 	mov	(_alarmsec1 + 1),a
                                    429 ;	main.c:71: int keepmin2            =   0;
      0000BD F5 29            [12]  430 	mov	_keepmin2,a
      0000BF F5 2A            [12]  431 	mov	(_keepmin2 + 1),a
                                    432 ;	main.c:72: int keepmin1            =   0;
      0000C1 F5 2B            [12]  433 	mov	_keepmin1,a
      0000C3 F5 2C            [12]  434 	mov	(_keepmin1 + 1),a
                                    435 ;	main.c:73: int keepsec2            =   0;
      0000C5 F5 2D            [12]  436 	mov	_keepsec2,a
      0000C7 F5 2E            [12]  437 	mov	(_keepsec2 + 1),a
                                    438 ;	main.c:74: int keepsec1            =   0;
      0000C9 F5 2F            [12]  439 	mov	_keepsec1,a
      0000CB F5 30            [12]  440 	mov	(_keepsec1 + 1),a
                                    441 ;	main.c:75: int loop                =   0;
      0000CD F5 31            [12]  442 	mov	_loop,a
      0000CF F5 32            [12]  443 	mov	(_loop + 1),a
                                    444 ;	main.c:76: int mode                =   0;
      0000D1 F5 33            [12]  445 	mov	_mode,a
      0000D3 F5 34            [12]  446 	mov	(_mode + 1),a
                                    447 ;	main.c:77: char dig_val[10]        =   {0x40,0xF9,0x24,0x30,0x19,0x12,0x02,0xF8,0x00,0x10};  // Hex values corresponding to digits 0 to 9
      0000D5 75 35 40         [24]  448 	mov	_dig_val,#0x40
      0000D8 75 36 F9         [24]  449 	mov	(_dig_val + 0x0001),#0xf9
      0000DB 75 37 24         [24]  450 	mov	(_dig_val + 0x0002),#0x24
      0000DE 75 38 30         [24]  451 	mov	(_dig_val + 0x0003),#0x30
      0000E1 75 39 19         [24]  452 	mov	(_dig_val + 0x0004),#0x19
      0000E4 75 3A 12         [24]  453 	mov	(_dig_val + 0x0005),#0x12
      0000E7 75 3B 02         [24]  454 	mov	(_dig_val + 0x0006),#0x02
      0000EA 75 3C F8         [24]  455 	mov	(_dig_val + 0x0007),#0xf8
                                    456 ;	1-genFromRTrack replaced	mov	(_dig_val + 0x0008),#0x00
      0000ED F5 3D            [12]  457 	mov	(_dig_val + 0x0008),a
      0000EF 75 3E 10         [24]  458 	mov	(_dig_val + 0x0009),#0x10
                                    459 	.area GSFINAL (CODE)
      0000F2 02 00 1E         [24]  460 	ljmp	__sdcc_program_startup
                                    461 ;--------------------------------------------------------
                                    462 ; Home
                                    463 ;--------------------------------------------------------
                                    464 	.area HOME    (CODE)
                                    465 	.area HOME    (CODE)
      00001E                        466 __sdcc_program_startup:
      00001E 02 05 E5         [24]  467 	ljmp	_main
                                    468 ;	return from main will return to caller
                                    469 ;--------------------------------------------------------
                                    470 ; code
                                    471 ;--------------------------------------------------------
                                    472 	.area CSEG    (CODE)
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'delay'
                                    475 ;------------------------------------------------------------
                                    476 ;time                      Allocated to registers r6 r7 
                                    477 ;i                         Allocated to registers r4 r5 
                                    478 ;j                         Allocated to registers r2 r3 
                                    479 ;------------------------------------------------------------
                                    480 ;	main.c:79: void delay(int time)  //Function to provide time delay.
                                    481 ;	-----------------------------------------
                                    482 ;	 function delay
                                    483 ;	-----------------------------------------
      0000F5                        484 _delay:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
      0000F5 AE 82            [24]  493 	mov	r6,dpl
      0000F7 AF 83            [24]  494 	mov	r7,dph
                                    495 ;	main.c:82: for(i=0;i<time;i++)
      0000F9 7C 00            [12]  496 	mov	r4,#0x00
      0000FB 7D 00            [12]  497 	mov	r5,#0x00
      0000FD                        498 00107$:
      0000FD C3               [12]  499 	clr	c
      0000FE EC               [12]  500 	mov	a,r4
      0000FF 9E               [12]  501 	subb	a,r6
      000100 ED               [12]  502 	mov	a,r5
      000101 64 80            [12]  503 	xrl	a,#0x80
      000103 8F F0            [24]  504 	mov	b,r7
      000105 63 F0 80         [24]  505 	xrl	b,#0x80
      000108 95 F0            [12]  506 	subb	a,b
      00010A 50 1B            [24]  507 	jnc	00109$
                                    508 ;	main.c:83: for(j=0;j<1275;j++);
      00010C 7A FB            [12]  509 	mov	r2,#0xfb
      00010E 7B 04            [12]  510 	mov	r3,#0x04
      000110                        511 00105$:
      000110 EA               [12]  512 	mov	a,r2
      000111 24 FF            [12]  513 	add	a,#0xff
      000113 F8               [12]  514 	mov	r0,a
      000114 EB               [12]  515 	mov	a,r3
      000115 34 FF            [12]  516 	addc	a,#0xff
      000117 F9               [12]  517 	mov	r1,a
      000118 88 02            [24]  518 	mov	ar2,r0
      00011A 89 03            [24]  519 	mov	ar3,r1
      00011C E8               [12]  520 	mov	a,r0
      00011D 49               [12]  521 	orl	a,r1
      00011E 70 F0            [24]  522 	jnz	00105$
                                    523 ;	main.c:82: for(i=0;i<time;i++)
      000120 0C               [12]  524 	inc	r4
      000121 BC 00 D9         [24]  525 	cjne	r4,#0x00,00107$
      000124 0D               [12]  526 	inc	r5
      000125 80 D6            [24]  527 	sjmp	00107$
      000127                        528 00109$:
      000127 22               [24]  529 	ret
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'setfn'
                                    532 ;------------------------------------------------------------
                                    533 ;	main.c:86: int setfn(void)  // Function to select miniute and seconds digit set time.
                                    534 ;	-----------------------------------------
                                    535 ;	 function setfn
                                    536 ;	-----------------------------------------
      000128                        537 _setfn:
                                    538 ;	main.c:88: while(set==0)
      000128                        539 00114$:
      000128 30 96 03         [24]  540 	jnb	_P1_6,00149$
      00012B 02 01 F8         [24]  541 	ljmp	00116$
      00012E                        542 00149$:
                                    543 ;	main.c:90: switch(recnt_incr_seg)
      00012E 74 01            [12]  544 	mov	a,#0x01
      000130 B5 0C 06         [24]  545 	cjne	a,_recnt_incr_seg,00150$
      000133 14               [12]  546 	dec	a
      000134 B5 0D 02         [24]  547 	cjne	a,(_recnt_incr_seg + 1),00150$
      000137 80 23            [24]  548 	sjmp	00101$
      000139                        549 00150$:
      000139 74 02            [12]  550 	mov	a,#0x02
      00013B B5 0C 06         [24]  551 	cjne	a,_recnt_incr_seg,00151$
      00013E E4               [12]  552 	clr	a
      00013F B5 0D 02         [24]  553 	cjne	a,(_recnt_incr_seg + 1),00151$
      000142 80 3C            [24]  554 	sjmp	00104$
      000144                        555 00151$:
      000144 74 03            [12]  556 	mov	a,#0x03
      000146 B5 0C 06         [24]  557 	cjne	a,_recnt_incr_seg,00152$
      000149 E4               [12]  558 	clr	a
      00014A B5 0D 02         [24]  559 	cjne	a,(_recnt_incr_seg + 1),00152$
      00014D 80 55            [24]  560 	sjmp	00107$
      00014F                        561 00152$:
      00014F 74 04            [12]  562 	mov	a,#0x04
      000151 B5 0C 06         [24]  563 	cjne	a,_recnt_incr_seg,00153$
      000154 E4               [12]  564 	clr	a
      000155 B5 0D 02         [24]  565 	cjne	a,(_recnt_incr_seg + 1),00153$
      000158 80 6E            [24]  566 	sjmp	00110$
      00015A                        567 00153$:
                                    568 ;	main.c:92: case 1:
      00015A 80 CC            [24]  569 	sjmp	00114$
      00015C                        570 00101$:
                                    571 ;	main.c:93: if(set==0)  //Select the min2 digit
      00015C 20 96 21         [24]  572 	jb	_P1_6,00104$
                                    573 ;	main.c:95: dig_ctrl_4      =   1;
      00015F D2 90            [12]  574 	setb	_P1_0
                                    575 ;	main.c:96: dig_ctrl_3      =   0;
      000161 C2 91            [12]  576 	clr	_P1_1
                                    577 ;	main.c:97: dig_ctrl_2      =   0;
      000163 C2 92            [12]  578 	clr	_P1_2
                                    579 ;	main.c:98: dig_ctrl_1      =   0;
      000165 C2 93            [12]  580 	clr	_P1_3
                                    581 ;	main.c:99: recnt_incr_seg  =   1;
      000167 75 0C 01         [24]  582 	mov	_recnt_incr_seg,#0x01
      00016A 75 0D 00         [24]  583 	mov	(_recnt_incr_seg + 1),#0x00
                                    584 ;	main.c:100: ret_seg_to_incre=   1;
      00016D 75 0A 01         [24]  585 	mov	_ret_seg_to_incre,#0x01
      000170 75 0B 00         [24]  586 	mov	(_ret_seg_to_incre + 1),#0x00
                                    587 ;	main.c:101: P2              =   dig_val[minalarm2];
      000173 E5 19            [12]  588 	mov	a,_minalarm2
      000175 24 35            [12]  589 	add	a,#_dig_val
      000177 F9               [12]  590 	mov	r1,a
      000178 87 A0            [24]  591 	mov	_P2,@r1
                                    592 ;	main.c:102: delay(100);
      00017A 90 00 64         [24]  593 	mov	dptr,#0x0064
      00017D 12 00 F5         [24]  594 	lcall	_delay
                                    595 ;	main.c:104: case 2:
      000180                        596 00104$:
                                    597 ;	main.c:105: if(set==0)  //Select the min1 digit
      000180 20 96 21         [24]  598 	jb	_P1_6,00107$
                                    599 ;	main.c:107: dig_ctrl_4      =   0;
      000183 C2 90            [12]  600 	clr	_P1_0
                                    601 ;	main.c:108: dig_ctrl_3      =   1;
      000185 D2 91            [12]  602 	setb	_P1_1
                                    603 ;	main.c:109: dig_ctrl_2      =   0;
      000187 C2 92            [12]  604 	clr	_P1_2
                                    605 ;	main.c:110: dig_ctrl_1      =   0;
      000189 C2 93            [12]  606 	clr	_P1_3
                                    607 ;	main.c:111: recnt_incr_seg  =   2;
      00018B 75 0C 02         [24]  608 	mov	_recnt_incr_seg,#0x02
      00018E 75 0D 00         [24]  609 	mov	(_recnt_incr_seg + 1),#0x00
                                    610 ;	main.c:112: ret_seg_to_incre=   2;
      000191 75 0A 02         [24]  611 	mov	_ret_seg_to_incre,#0x02
      000194 75 0B 00         [24]  612 	mov	(_ret_seg_to_incre + 1),#0x00
                                    613 ;	main.c:113: P2              =   dig_val[minalarm1];
      000197 E5 1B            [12]  614 	mov	a,_minalarm1
      000199 24 35            [12]  615 	add	a,#_dig_val
      00019B F9               [12]  616 	mov	r1,a
      00019C 87 A0            [24]  617 	mov	_P2,@r1
                                    618 ;	main.c:114: delay(100);
      00019E 90 00 64         [24]  619 	mov	dptr,#0x0064
      0001A1 12 00 F5         [24]  620 	lcall	_delay
                                    621 ;	main.c:116: case 3:
      0001A4                        622 00107$:
                                    623 ;	main.c:117: if(set==0)  //Select the sec 2 digit
      0001A4 20 96 21         [24]  624 	jb	_P1_6,00110$
                                    625 ;	main.c:119: dig_ctrl_4      =   0;
      0001A7 C2 90            [12]  626 	clr	_P1_0
                                    627 ;	main.c:120: dig_ctrl_3      =   0;
      0001A9 C2 91            [12]  628 	clr	_P1_1
                                    629 ;	main.c:121: dig_ctrl_2      =   1;
      0001AB D2 92            [12]  630 	setb	_P1_2
                                    631 ;	main.c:122: dig_ctrl_1      =   0;
      0001AD C2 93            [12]  632 	clr	_P1_3
                                    633 ;	main.c:123: recnt_incr_seg  =   3;
      0001AF 75 0C 03         [24]  634 	mov	_recnt_incr_seg,#0x03
      0001B2 75 0D 00         [24]  635 	mov	(_recnt_incr_seg + 1),#0x00
                                    636 ;	main.c:124: ret_seg_to_incre=   3;
      0001B5 75 0A 03         [24]  637 	mov	_ret_seg_to_incre,#0x03
      0001B8 75 0B 00         [24]  638 	mov	(_ret_seg_to_incre + 1),#0x00
                                    639 ;	main.c:125: P2              =   dig_val[secalarm2];
      0001BB E5 1D            [12]  640 	mov	a,_secalarm2
      0001BD 24 35            [12]  641 	add	a,#_dig_val
      0001BF F9               [12]  642 	mov	r1,a
      0001C0 87 A0            [24]  643 	mov	_P2,@r1
                                    644 ;	main.c:126: delay(100);
      0001C2 90 00 64         [24]  645 	mov	dptr,#0x0064
      0001C5 12 00 F5         [24]  646 	lcall	_delay
                                    647 ;	main.c:128: case 4:
      0001C8                        648 00110$:
                                    649 ;	main.c:129: if(set==0)  //Select the sec1 digit
      0001C8 30 96 03         [24]  650 	jnb	_P1_6,00157$
      0001CB 02 01 28         [24]  651 	ljmp	00114$
      0001CE                        652 00157$:
                                    653 ;	main.c:131: recnt_incr_seg  =   1;
      0001CE 75 0C 01         [24]  654 	mov	_recnt_incr_seg,#0x01
      0001D1 75 0D 00         [24]  655 	mov	(_recnt_incr_seg + 1),#0x00
                                    656 ;	main.c:132: dig_ctrl_4      =   0;
      0001D4 C2 90            [12]  657 	clr	_P1_0
                                    658 ;	main.c:133: dig_ctrl_3      =   0;
      0001D6 C2 91            [12]  659 	clr	_P1_1
                                    660 ;	main.c:134: dig_ctrl_2      =   0;
      0001D8 C2 92            [12]  661 	clr	_P1_2
                                    662 ;	main.c:135: dig_ctrl_1      =   1;
      0001DA D2 93            [12]  663 	setb	_P1_3
                                    664 ;	main.c:136: ret_seg_to_incre=   4;
      0001DC 75 0A 04         [24]  665 	mov	_ret_seg_to_incre,#0x04
      0001DF 75 0B 00         [24]  666 	mov	(_ret_seg_to_incre + 1),#0x00
                                    667 ;	main.c:137: P2              =   dig_val[secalarm1];
      0001E2 E5 1F            [12]  668 	mov	a,_secalarm1
      0001E4 24 35            [12]  669 	add	a,#_dig_val
      0001E6 F9               [12]  670 	mov	r1,a
      0001E7 87 A0            [24]  671 	mov	_P2,@r1
                                    672 ;	main.c:138: delay(100);
      0001E9 90 00 64         [24]  673 	mov	dptr,#0x0064
      0001EC 12 00 F5         [24]  674 	lcall	_delay
                                    675 ;	main.c:139: recnt_incr_seg  =   1;
      0001EF 75 0C 01         [24]  676 	mov	_recnt_incr_seg,#0x01
      0001F2 75 0D 00         [24]  677 	mov	(_recnt_incr_seg + 1),#0x00
                                    678 ;	main.c:141: }
      0001F5 02 01 28         [24]  679 	ljmp	00114$
      0001F8                        680 00116$:
                                    681 ;	main.c:143: return(ret_seg_to_incre);
      0001F8 85 0A 82         [24]  682 	mov	dpl,_ret_seg_to_incre
      0001FB 85 0B 83         [24]  683 	mov	dph,(_ret_seg_to_incre + 1)
      0001FE 22               [24]  684 	ret
                                    685 ;------------------------------------------------------------
                                    686 ;Allocation info for local variables in function 'increase'
                                    687 ;------------------------------------------------------------
                                    688 ;a                         Allocated to registers r6 r7 
                                    689 ;------------------------------------------------------------
                                    690 ;	main.c:146: void increase(int a)  //Function to set the minutes or seconds digit
                                    691 ;	-----------------------------------------
                                    692 ;	 function increase
                                    693 ;	-----------------------------------------
      0001FF                        694 _increase:
      0001FF AE 82            [24]  695 	mov	r6,dpl
      000201 AF 83            [24]  696 	mov	r7,dph
                                    697 ;	main.c:148: while(incr==0)
      000203 BE 01 06         [24]  698 	cjne	r6,#0x01,00149$
      000206 BF 00 03         [24]  699 	cjne	r7,#0x00,00149$
      000209 EE               [12]  700 	mov	a,r6
      00020A 80 01            [24]  701 	sjmp	00150$
      00020C                        702 00149$:
      00020C E4               [12]  703 	clr	a
      00020D                        704 00150$:
      00020D FD               [12]  705 	mov	r5,a
      00020E E4               [12]  706 	clr	a
      00020F BE 02 04         [24]  707 	cjne	r6,#0x02,00151$
      000212 BF 00 01         [24]  708 	cjne	r7,#0x00,00151$
      000215 04               [12]  709 	inc	a
      000216                        710 00151$:
      000216 FC               [12]  711 	mov	r4,a
      000217 E4               [12]  712 	clr	a
      000218 BE 03 04         [24]  713 	cjne	r6,#0x03,00153$
      00021B BF 00 01         [24]  714 	cjne	r7,#0x00,00153$
      00021E 04               [12]  715 	inc	a
      00021F                        716 00153$:
      00021F FB               [12]  717 	mov	r3,a
      000220 E4               [12]  718 	clr	a
      000221 BE 04 04         [24]  719 	cjne	r6,#0x04,00155$
      000224 BF 00 01         [24]  720 	cjne	r7,#0x00,00155$
      000227 04               [12]  721 	inc	a
      000228                        722 00155$:
      000228 FF               [12]  723 	mov	r7,a
      000229                        724 00114$:
      000229 30 97 01         [24]  725 	jnb	_P1_7,00157$
      00022C 22               [24]  726 	ret
      00022D                        727 00157$:
                                    728 ;	main.c:150: switch(a)
      00022D ED               [12]  729 	mov	a,r5
      00022E 70 0F            [24]  730 	jnz	00101$
      000230 EC               [12]  731 	mov	a,r4
      000231 70 62            [24]  732 	jnz	00104$
      000233 EB               [12]  733 	mov	a,r3
      000234 60 03            [24]  734 	jz	00160$
      000236 02 02 EC         [24]  735 	ljmp	00107$
      000239                        736 00160$:
      000239 EF               [12]  737 	mov	a,r7
      00023A 60 ED            [24]  738 	jz	00114$
                                    739 ;	main.c:152: case 1:  // Set the min2 digit.
      00023C 02 03 43         [24]  740 	ljmp	00110$
      00023F                        741 00101$:
                                    742 ;	main.c:153: P2 = dig_val[minalarm2];
      00023F E5 19            [12]  743 	mov	a,_minalarm2
      000241 24 35            [12]  744 	add	a,#_dig_val
      000243 F9               [12]  745 	mov	r1,a
      000244 87 A0            [24]  746 	mov	_P2,@r1
                                    747 ;	main.c:154: delay(100);
      000246 90 00 64         [24]  748 	mov	dptr,#0x0064
      000249 C0 07            [24]  749 	push	ar7
      00024B C0 05            [24]  750 	push	ar5
      00024D C0 04            [24]  751 	push	ar4
      00024F C0 03            [24]  752 	push	ar3
      000251 12 00 F5         [24]  753 	lcall	_delay
      000254 D0 03            [24]  754 	pop	ar3
      000256 D0 04            [24]  755 	pop	ar4
      000258 D0 05            [24]  756 	pop	ar5
      00025A D0 07            [24]  757 	pop	ar7
                                    758 ;	main.c:155: minalarm2++;
      00025C 05 19            [12]  759 	inc	_minalarm2
      00025E E4               [12]  760 	clr	a
      00025F B5 19 02         [24]  761 	cjne	a,_minalarm2,00162$
      000262 05 1A            [12]  762 	inc	(_minalarm2 + 1)
      000264                        763 00162$:
                                    764 ;	main.c:156: if(minalarm2==6) minalarm2 = 0;
      000264 74 06            [12]  765 	mov	a,#0x06
      000266 B5 19 06         [24]  766 	cjne	a,_minalarm2,00163$
      000269 E4               [12]  767 	clr	a
      00026A B5 1A 02         [24]  768 	cjne	a,(_minalarm2 + 1),00163$
      00026D 80 02            [24]  769 	sjmp	00164$
      00026F                        770 00163$:
      00026F 80 05            [24]  771 	sjmp	00103$
      000271                        772 00164$:
      000271 E4               [12]  773 	clr	a
      000272 F5 19            [12]  774 	mov	_minalarm2,a
      000274 F5 1A            [12]  775 	mov	(_minalarm2 + 1),a
      000276                        776 00103$:
                                    777 ;	main.c:157: P2 = dig_val[minalarm2];
      000276 E5 19            [12]  778 	mov	a,_minalarm2
      000278 24 35            [12]  779 	add	a,#_dig_val
      00027A F9               [12]  780 	mov	r1,a
      00027B 87 A0            [24]  781 	mov	_P2,@r1
                                    782 ;	main.c:158: delay(20);
      00027D 90 00 14         [24]  783 	mov	dptr,#0x0014
      000280 C0 07            [24]  784 	push	ar7
      000282 C0 05            [24]  785 	push	ar5
      000284 C0 04            [24]  786 	push	ar4
      000286 C0 03            [24]  787 	push	ar3
      000288 12 00 F5         [24]  788 	lcall	_delay
      00028B D0 03            [24]  789 	pop	ar3
      00028D D0 04            [24]  790 	pop	ar4
      00028F D0 05            [24]  791 	pop	ar5
      000291 D0 07            [24]  792 	pop	ar7
                                    793 ;	main.c:159: break;
                                    794 ;	main.c:160: case 2:  //Set the min1 digit.
      000293 80 94            [24]  795 	sjmp	00114$
      000295                        796 00104$:
                                    797 ;	main.c:161: P2 = dig_val[minalarm1];
      000295 E5 1B            [12]  798 	mov	a,_minalarm1
      000297 24 35            [12]  799 	add	a,#_dig_val
      000299 F9               [12]  800 	mov	r1,a
      00029A 87 A0            [24]  801 	mov	_P2,@r1
                                    802 ;	main.c:162: delay(100);
      00029C 90 00 64         [24]  803 	mov	dptr,#0x0064
      00029F C0 07            [24]  804 	push	ar7
      0002A1 C0 05            [24]  805 	push	ar5
      0002A3 C0 04            [24]  806 	push	ar4
      0002A5 C0 03            [24]  807 	push	ar3
      0002A7 12 00 F5         [24]  808 	lcall	_delay
      0002AA D0 03            [24]  809 	pop	ar3
      0002AC D0 04            [24]  810 	pop	ar4
      0002AE D0 05            [24]  811 	pop	ar5
      0002B0 D0 07            [24]  812 	pop	ar7
                                    813 ;	main.c:163: minalarm1++;
      0002B2 05 1B            [12]  814 	inc	_minalarm1
      0002B4 E4               [12]  815 	clr	a
      0002B5 B5 1B 02         [24]  816 	cjne	a,_minalarm1,00165$
      0002B8 05 1C            [12]  817 	inc	(_minalarm1 + 1)
      0002BA                        818 00165$:
                                    819 ;	main.c:164: if(minalarm1==10)
      0002BA 74 0A            [12]  820 	mov	a,#0x0a
      0002BC B5 1B 06         [24]  821 	cjne	a,_minalarm1,00166$
      0002BF E4               [12]  822 	clr	a
      0002C0 B5 1C 02         [24]  823 	cjne	a,(_minalarm1 + 1),00166$
      0002C3 80 02            [24]  824 	sjmp	00167$
      0002C5                        825 00166$:
      0002C5 80 05            [24]  826 	sjmp	00106$
      0002C7                        827 00167$:
                                    828 ;	main.c:165: minalarm1 = 0;
      0002C7 E4               [12]  829 	clr	a
      0002C8 F5 1B            [12]  830 	mov	_minalarm1,a
      0002CA F5 1C            [12]  831 	mov	(_minalarm1 + 1),a
      0002CC                        832 00106$:
                                    833 ;	main.c:166: P2 = dig_val[minalarm1];
      0002CC E5 1B            [12]  834 	mov	a,_minalarm1
      0002CE 24 35            [12]  835 	add	a,#_dig_val
      0002D0 F9               [12]  836 	mov	r1,a
      0002D1 87 A0            [24]  837 	mov	_P2,@r1
                                    838 ;	main.c:167: delay(20);
      0002D3 90 00 14         [24]  839 	mov	dptr,#0x0014
      0002D6 C0 07            [24]  840 	push	ar7
      0002D8 C0 05            [24]  841 	push	ar5
      0002DA C0 04            [24]  842 	push	ar4
      0002DC C0 03            [24]  843 	push	ar3
      0002DE 12 00 F5         [24]  844 	lcall	_delay
      0002E1 D0 03            [24]  845 	pop	ar3
      0002E3 D0 04            [24]  846 	pop	ar4
      0002E5 D0 05            [24]  847 	pop	ar5
      0002E7 D0 07            [24]  848 	pop	ar7
                                    849 ;	main.c:168: break;
      0002E9 02 02 29         [24]  850 	ljmp	00114$
                                    851 ;	main.c:169: case 3:  // Set the sec2 digit.
      0002EC                        852 00107$:
                                    853 ;	main.c:170: P2 = dig_val[secalarm2];
      0002EC E5 1D            [12]  854 	mov	a,_secalarm2
      0002EE 24 35            [12]  855 	add	a,#_dig_val
      0002F0 F9               [12]  856 	mov	r1,a
      0002F1 87 A0            [24]  857 	mov	_P2,@r1
                                    858 ;	main.c:171: delay(100);
      0002F3 90 00 64         [24]  859 	mov	dptr,#0x0064
      0002F6 C0 07            [24]  860 	push	ar7
      0002F8 C0 05            [24]  861 	push	ar5
      0002FA C0 04            [24]  862 	push	ar4
      0002FC C0 03            [24]  863 	push	ar3
      0002FE 12 00 F5         [24]  864 	lcall	_delay
      000301 D0 03            [24]  865 	pop	ar3
      000303 D0 04            [24]  866 	pop	ar4
      000305 D0 05            [24]  867 	pop	ar5
      000307 D0 07            [24]  868 	pop	ar7
                                    869 ;	main.c:172: secalarm2++;
      000309 05 1D            [12]  870 	inc	_secalarm2
      00030B E4               [12]  871 	clr	a
      00030C B5 1D 02         [24]  872 	cjne	a,_secalarm2,00168$
      00030F 05 1E            [12]  873 	inc	(_secalarm2 + 1)
      000311                        874 00168$:
                                    875 ;	main.c:173: if(secalarm2==6)
      000311 74 06            [12]  876 	mov	a,#0x06
      000313 B5 1D 06         [24]  877 	cjne	a,_secalarm2,00169$
      000316 E4               [12]  878 	clr	a
      000317 B5 1E 02         [24]  879 	cjne	a,(_secalarm2 + 1),00169$
      00031A 80 02            [24]  880 	sjmp	00170$
      00031C                        881 00169$:
      00031C 80 05            [24]  882 	sjmp	00109$
      00031E                        883 00170$:
                                    884 ;	main.c:174: secalarm2 = 0;
      00031E E4               [12]  885 	clr	a
      00031F F5 1D            [12]  886 	mov	_secalarm2,a
      000321 F5 1E            [12]  887 	mov	(_secalarm2 + 1),a
      000323                        888 00109$:
                                    889 ;	main.c:175: P2 = dig_val[secalarm2];
      000323 E5 1D            [12]  890 	mov	a,_secalarm2
      000325 24 35            [12]  891 	add	a,#_dig_val
      000327 F9               [12]  892 	mov	r1,a
      000328 87 A0            [24]  893 	mov	_P2,@r1
                                    894 ;	main.c:176: delay(20);
      00032A 90 00 14         [24]  895 	mov	dptr,#0x0014
      00032D C0 07            [24]  896 	push	ar7
      00032F C0 05            [24]  897 	push	ar5
      000331 C0 04            [24]  898 	push	ar4
      000333 C0 03            [24]  899 	push	ar3
      000335 12 00 F5         [24]  900 	lcall	_delay
      000338 D0 03            [24]  901 	pop	ar3
      00033A D0 04            [24]  902 	pop	ar4
      00033C D0 05            [24]  903 	pop	ar5
      00033E D0 07            [24]  904 	pop	ar7
                                    905 ;	main.c:177: break;
      000340 02 02 29         [24]  906 	ljmp	00114$
                                    907 ;	main.c:178: case 4:  //Set the sec1 digit.
      000343                        908 00110$:
                                    909 ;	main.c:180: P2 = dig_val[secalarm1];
      000343 E5 1F            [12]  910 	mov	a,_secalarm1
      000345 24 35            [12]  911 	add	a,#_dig_val
      000347 F9               [12]  912 	mov	r1,a
      000348 87 A0            [24]  913 	mov	_P2,@r1
                                    914 ;	main.c:181: delay(100);
      00034A 90 00 64         [24]  915 	mov	dptr,#0x0064
      00034D C0 07            [24]  916 	push	ar7
      00034F C0 05            [24]  917 	push	ar5
      000351 C0 04            [24]  918 	push	ar4
      000353 C0 03            [24]  919 	push	ar3
      000355 12 00 F5         [24]  920 	lcall	_delay
      000358 D0 03            [24]  921 	pop	ar3
      00035A D0 04            [24]  922 	pop	ar4
      00035C D0 05            [24]  923 	pop	ar5
      00035E D0 07            [24]  924 	pop	ar7
                                    925 ;	main.c:182: secalarm1++;
      000360 05 1F            [12]  926 	inc	_secalarm1
      000362 E4               [12]  927 	clr	a
      000363 B5 1F 02         [24]  928 	cjne	a,_secalarm1,00171$
      000366 05 20            [12]  929 	inc	(_secalarm1 + 1)
      000368                        930 00171$:
                                    931 ;	main.c:183: if(secalarm1==10)
      000368 74 0A            [12]  932 	mov	a,#0x0a
      00036A B5 1F 06         [24]  933 	cjne	a,_secalarm1,00172$
      00036D E4               [12]  934 	clr	a
      00036E B5 20 02         [24]  935 	cjne	a,(_secalarm1 + 1),00172$
      000371 80 02            [24]  936 	sjmp	00173$
      000373                        937 00172$:
      000373 80 05            [24]  938 	sjmp	00112$
      000375                        939 00173$:
                                    940 ;	main.c:184: secalarm1 = 0;
      000375 E4               [12]  941 	clr	a
      000376 F5 1F            [12]  942 	mov	_secalarm1,a
      000378 F5 20            [12]  943 	mov	(_secalarm1 + 1),a
      00037A                        944 00112$:
                                    945 ;	main.c:185: P2 = dig_val[secalarm1];
      00037A E5 1F            [12]  946 	mov	a,_secalarm1
      00037C 24 35            [12]  947 	add	a,#_dig_val
      00037E F9               [12]  948 	mov	r1,a
      00037F 87 A0            [24]  949 	mov	_P2,@r1
                                    950 ;	main.c:186: delay(20);
      000381 90 00 14         [24]  951 	mov	dptr,#0x0014
      000384 C0 07            [24]  952 	push	ar7
      000386 C0 05            [24]  953 	push	ar5
      000388 C0 04            [24]  954 	push	ar4
      00038A C0 03            [24]  955 	push	ar3
      00038C 12 00 F5         [24]  956 	lcall	_delay
      00038F D0 03            [24]  957 	pop	ar3
      000391 D0 04            [24]  958 	pop	ar4
      000393 D0 05            [24]  959 	pop	ar5
      000395 D0 07            [24]  960 	pop	ar7
                                    961 ;	main.c:188: }
      000397 02 02 29         [24]  962 	ljmp	00114$
                                    963 ;------------------------------------------------------------
                                    964 ;Allocation info for local variables in function 'resetfn'
                                    965 ;------------------------------------------------------------
                                    966 ;mode                      Allocated to registers r6 r7 
                                    967 ;------------------------------------------------------------
                                    968 ;	main.c:192: void resetfn(int mode)  // Function to bring the clock to reset or set mode.
                                    969 ;	-----------------------------------------
                                    970 ;	 function resetfn
                                    971 ;	-----------------------------------------
      00039A                        972 _resetfn:
      00039A AE 82            [24]  973 	mov	r6,dpl
      00039C AF 83            [24]  974 	mov	r7,dph
                                    975 ;	main.c:194: begin       = 1;
      00039E 75 0E 01         [24]  976 	mov	_begin,#0x01
      0003A1 75 0F 00         [24]  977 	mov	(_begin + 1),#0x00
                                    978 ;	main.c:195: dig_ctrl_4  = 1;  //Enable the min2 digit and disable others
      0003A4 D2 90            [12]  979 	setb	_P1_0
                                    980 ;	main.c:196: dig_ctrl_3  = 0;
      0003A6 C2 91            [12]  981 	clr	_P1_1
                                    982 ;	main.c:197: dig_ctrl_2  = 0;
      0003A8 C2 92            [12]  983 	clr	_P1_2
                                    984 ;	main.c:198: dig_ctrl_1  = 0;
      0003AA C2 93            [12]  985 	clr	_P1_3
                                    986 ;	main.c:200: if(mode==0)  //Check if clock is in set alarm mode
      0003AC EE               [12]  987 	mov	a,r6
      0003AD 4F               [12]  988 	orl	a,r7
                                    989 ;	main.c:202: IE              =   0x88;  //Disable Timer0 interrupt to stop the display of clock.
                                    990 ;	main.c:203: sel_seg_to_incr =   1;
      0003AE 70 3B            [24]  991 	jnz	00102$
      0003B0 75 A8 88         [24]  992 	mov	_IE,#0x88
      0003B3 75 08 01         [24]  993 	mov	_sel_seg_to_incr,#0x01
      0003B6 F5 09            [12]  994 	mov	(_sel_seg_to_incr + 1),a
                                    995 ;	main.c:204: recnt_incr_seg  =   1;
      0003B8 75 0C 01         [24]  996 	mov	_recnt_incr_seg,#0x01
      0003BB 75 0D 00         [24]  997 	mov	(_recnt_incr_seg + 1),#0x00
                                    998 ;	main.c:205: P2              =   dig_val[keepmin2];
      0003BE E5 29            [12]  999 	mov	a,_keepmin2
      0003C0 24 35            [12] 1000 	add	a,#_dig_val
      0003C2 F9               [12] 1001 	mov	r1,a
      0003C3 87 A0            [24] 1002 	mov	_P2,@r1
                                   1003 ;	main.c:206: delay(100);
      0003C5 90 00 64         [24] 1004 	mov	dptr,#0x0064
      0003C8 C0 07            [24] 1005 	push	ar7
      0003CA C0 06            [24] 1006 	push	ar6
      0003CC 12 00 F5         [24] 1007 	lcall	_delay
      0003CF D0 06            [24] 1008 	pop	ar6
      0003D1 D0 07            [24] 1009 	pop	ar7
                                   1010 ;	main.c:207: minalarm2       =   keepmin2;
      0003D3 85 29 19         [24] 1011 	mov	_minalarm2,_keepmin2
      0003D6 85 2A 1A         [24] 1012 	mov	(_minalarm2 + 1),(_keepmin2 + 1)
                                   1013 ;	main.c:208: minalarm1       =   keepmin1;
      0003D9 85 2B 1B         [24] 1014 	mov	_minalarm1,_keepmin1
      0003DC 85 2C 1C         [24] 1015 	mov	(_minalarm1 + 1),(_keepmin1 + 1)
                                   1016 ;	main.c:209: secalarm2       =   keepsec2;
      0003DF 85 2D 1D         [24] 1017 	mov	_secalarm2,_keepsec2
      0003E2 85 2E 1E         [24] 1018 	mov	(_secalarm2 + 1),(_keepsec2 + 1)
                                   1019 ;	main.c:210: secalarm1       =   keepsec1;
      0003E5 85 2F 1F         [24] 1020 	mov	_secalarm1,_keepsec1
      0003E8 85 30 20         [24] 1021 	mov	(_secalarm1 + 1),(_keepsec1 + 1)
      0003EB                       1022 00102$:
                                   1023 ;	main.c:213: if(mode==1)  //Check if clock is in set clock mode
      0003EB BE 01 06         [24] 1024 	cjne	r6,#0x01,00145$
      0003EE BF 00 03         [24] 1025 	cjne	r7,#0x00,00145$
      0003F1 EE               [12] 1026 	mov	a,r6
      0003F2 80 01            [24] 1027 	sjmp	00146$
      0003F4                       1028 00145$:
      0003F4 E4               [12] 1029 	clr	a
      0003F5                       1030 00146$:
      0003F5 FD               [12] 1031 	mov	r5,a
      0003F6 60 40            [24] 1032 	jz	00116$
                                   1033 ;	main.c:215: IE              =   0x80;  //Disable Timer0 interrupt to stop the clock.
      0003F8 75 A8 80         [24] 1034 	mov	_IE,#0x80
                                   1035 ;	main.c:216: minalarm2       =   min2;
      0003FB 85 11 19         [24] 1036 	mov	_minalarm2,_min2
      0003FE 85 12 1A         [24] 1037 	mov	(_minalarm2 + 1),(_min2 + 1)
                                   1038 ;	main.c:217: minalarm1       =   min1;
      000401 85 13 1B         [24] 1039 	mov	_minalarm1,_min1
      000404 85 14 1C         [24] 1040 	mov	(_minalarm1 + 1),(_min1 + 1)
                                   1041 ;	main.c:218: secalarm2       =   sec2;
      000407 85 15 1D         [24] 1042 	mov	_secalarm2,_sec2
      00040A 85 16 1E         [24] 1043 	mov	(_secalarm2 + 1),(_sec2 + 1)
                                   1044 ;	main.c:219: secalarm1       =   sec1;
      00040D 85 17 1F         [24] 1045 	mov	_secalarm1,_sec1
      000410 85 18 20         [24] 1046 	mov	(_secalarm1 + 1),(_sec1 + 1)
                                   1047 ;	main.c:220: sel_seg_to_incr =   1;
      000413 75 08 01         [24] 1048 	mov	_sel_seg_to_incr,#0x01
      000416 75 09 00         [24] 1049 	mov	(_sel_seg_to_incr + 1),#0x00
                                   1050 ;	main.c:221: recnt_incr_seg  =   1;
      000419 75 0C 01         [24] 1051 	mov	_recnt_incr_seg,#0x01
      00041C 75 0D 00         [24] 1052 	mov	(_recnt_incr_seg + 1),#0x00
                                   1053 ;	main.c:222: P2              =   dig_val[min2];
      00041F E5 11            [12] 1054 	mov	a,_min2
      000421 24 35            [12] 1055 	add	a,#_dig_val
      000423 F9               [12] 1056 	mov	r1,a
      000424 87 A0            [24] 1057 	mov	_P2,@r1
                                   1058 ;	main.c:223: delay(100);
      000426 90 00 64         [24] 1059 	mov	dptr,#0x0064
      000429 C0 07            [24] 1060 	push	ar7
      00042B C0 06            [24] 1061 	push	ar6
      00042D C0 05            [24] 1062 	push	ar5
      00042F 12 00 F5         [24] 1063 	lcall	_delay
      000432 D0 05            [24] 1064 	pop	ar5
      000434 D0 06            [24] 1065 	pop	ar6
      000436 D0 07            [24] 1066 	pop	ar7
                                   1067 ;	main.c:226: while(1)
      000438                       1068 00116$:
                                   1069 ;	main.c:228: if(start==0)  //Check if start pin is pressed
      000438 20 B3 5E         [24] 1070 	jb	_P3_3,00110$
                                   1071 ;	main.c:230: if(mode==0)
      00043B EE               [12] 1072 	mov	a,r6
      00043C 4F               [12] 1073 	orl	a,r7
      00043D 70 30            [24] 1074 	jnz	00106$
                                   1075 ;	main.c:232: keepmin2    =   minalarm2;
      00043F 85 19 29         [24] 1076 	mov	_keepmin2,_minalarm2
      000442 85 1A 2A         [24] 1077 	mov	(_keepmin2 + 1),(_minalarm2 + 1)
                                   1078 ;	main.c:233: keepmin1    =   minalarm1;
      000445 85 1B 2B         [24] 1079 	mov	_keepmin1,_minalarm1
      000448 85 1C 2C         [24] 1080 	mov	(_keepmin1 + 1),(_minalarm1 + 1)
                                   1081 ;	main.c:234: keepsec2    =   secalarm2;
      00044B 85 1D 2D         [24] 1082 	mov	_keepsec2,_secalarm2
      00044E 85 1E 2E         [24] 1083 	mov	(_keepsec2 + 1),(_secalarm2 + 1)
                                   1084 ;	main.c:235: keepsec1    =   secalarm1;
      000451 85 1F 2F         [24] 1085 	mov	_keepsec1,_secalarm1
      000454 85 20 30         [24] 1086 	mov	(_keepsec1 + 1),(_secalarm1 + 1)
                                   1087 ;	main.c:236: alarmmin2   =   minalarm2;
      000457 85 19 21         [24] 1088 	mov	_alarmmin2,_minalarm2
      00045A 85 1A 22         [24] 1089 	mov	(_alarmmin2 + 1),(_minalarm2 + 1)
                                   1090 ;	main.c:237: alarmmin1   =   minalarm1;
      00045D 85 1B 23         [24] 1091 	mov	_alarmmin1,_minalarm1
      000460 85 1C 24         [24] 1092 	mov	(_alarmmin1 + 1),(_minalarm1 + 1)
                                   1093 ;	main.c:238: alarmsec2   =   secalarm2;
      000463 85 1D 25         [24] 1094 	mov	_alarmsec2,_secalarm2
      000466 85 1E 26         [24] 1095 	mov	(_alarmsec2 + 1),(_secalarm2 + 1)
                                   1096 ;	main.c:239: alarmsec1   =   secalarm1;
      000469 85 1F 27         [24] 1097 	mov	_alarmsec1,_secalarm1
      00046C 85 20 28         [24] 1098 	mov	(_alarmsec1 + 1),(_secalarm1 + 1)
      00046F                       1099 00106$:
                                   1100 ;	main.c:242: if(mode==1)
      00046F ED               [12] 1101 	mov	a,r5
      000470 60 18            [24] 1102 	jz	00108$
                                   1103 ;	main.c:244: min2    =   minalarm2;
      000472 85 19 11         [24] 1104 	mov	_min2,_minalarm2
      000475 85 1A 12         [24] 1105 	mov	(_min2 + 1),(_minalarm2 + 1)
                                   1106 ;	main.c:245: min1    =   minalarm1;
      000478 85 1B 13         [24] 1107 	mov	_min1,_minalarm1
      00047B 85 1C 14         [24] 1108 	mov	(_min1 + 1),(_minalarm1 + 1)
                                   1109 ;	main.c:246: sec2    =   secalarm2;
      00047E 85 1D 15         [24] 1110 	mov	_sec2,_secalarm2
      000481 85 1E 16         [24] 1111 	mov	(_sec2 + 1),(_secalarm2 + 1)
                                   1112 ;	main.c:247: sec1    =   secalarm1;
      000484 85 1F 17         [24] 1113 	mov	_sec1,_secalarm1
      000487 85 20 18         [24] 1114 	mov	(_sec1 + 1),(_secalarm1 + 1)
      00048A                       1115 00108$:
                                   1116 ;	main.c:250: TMOD    =   0x11;  //Reset the timer0
      00048A 75 89 11         [24] 1117 	mov	_TMOD,#0x11
                                   1118 ;	main.c:251: TL0     =   0xf6;
      00048D 75 8A F6         [24] 1119 	mov	_TL0,#0xf6
                                   1120 ;	main.c:252: TH0     =   0xFf;
      000490 75 8C FF         [24] 1121 	mov	_TH0,#0xff
                                   1122 ;	main.c:253: IE      =   0x8A;  //Enabling Timer0 interrupt to start the display of clock
      000493 75 A8 8A         [24] 1123 	mov	_IE,#0x8a
                                   1124 ;	main.c:254: TR0     =   1;
      000496 D2 8C            [12] 1125 	setb	_TR0
                                   1126 ;	main.c:255: break;
      000498 22               [24] 1127 	ret
      000499                       1128 00110$:
                                   1129 ;	main.c:258: if(set==0)  //Check if set pin is pressed
      000499 20 96 15         [24] 1130 	jb	_P1_6,00112$
                                   1131 ;	main.c:259: sel_seg_to_incr =   setfn();
      00049C C0 07            [24] 1132 	push	ar7
      00049E C0 06            [24] 1133 	push	ar6
      0004A0 C0 05            [24] 1134 	push	ar5
      0004A2 12 01 28         [24] 1135 	lcall	_setfn
      0004A5 85 82 08         [24] 1136 	mov	_sel_seg_to_incr,dpl
      0004A8 85 83 09         [24] 1137 	mov	(_sel_seg_to_incr + 1),dph
      0004AB D0 05            [24] 1138 	pop	ar5
      0004AD D0 06            [24] 1139 	pop	ar6
      0004AF D0 07            [24] 1140 	pop	ar7
      0004B1                       1141 00112$:
                                   1142 ;	main.c:261: if(incr==0)  //Check if incr pin is pressed
      0004B1 20 97 84         [24] 1143 	jb	_P1_7,00116$
                                   1144 ;	main.c:262: increase(sel_seg_to_incr);
      0004B4 85 08 82         [24] 1145 	mov	dpl,_sel_seg_to_incr
      0004B7 85 09 83         [24] 1146 	mov	dph,(_sel_seg_to_incr + 1)
      0004BA C0 07            [24] 1147 	push	ar7
      0004BC C0 06            [24] 1148 	push	ar6
      0004BE C0 05            [24] 1149 	push	ar5
      0004C0 12 01 FF         [24] 1150 	lcall	_increase
      0004C3 D0 05            [24] 1151 	pop	ar5
      0004C5 D0 06            [24] 1152 	pop	ar6
      0004C7 D0 07            [24] 1153 	pop	ar7
      0004C9 02 04 38         [24] 1154 	ljmp	00116$
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'display'
                                   1157 ;------------------------------------------------------------
                                   1158 ;	main.c:266: void display(void) __interrupt (1)  // Function to display the digits on seven segment using the concept of seven segment multiplexing.
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function display
                                   1161 ;	-----------------------------------------
      0004CC                       1162 _display:
      0004CC C0 E0            [24] 1163 	push	acc
      0004CE C0 F0            [24] 1164 	push	b
      0004D0 C0 82            [24] 1165 	push	dpl
      0004D2 C0 83            [24] 1166 	push	dph
      0004D4 C0 01            [24] 1167 	push	ar1
      0004D6 C0 D0            [24] 1168 	push	psw
      0004D8 75 D0 00         [24] 1169 	mov	psw,#0x00
                                   1170 ;	main.c:268: TL0         =   0x36;  //Reload Timer0
      0004DB 75 8A 36         [24] 1171 	mov	_TL0,#0x36
                                   1172 ;	main.c:269: TH0         =   0xf6;
      0004DE 75 8C F6         [24] 1173 	mov	_TH0,#0xf6
                                   1174 ;	main.c:270: P2          =   0xFF;
      0004E1 75 A0 FF         [24] 1175 	mov	_P2,#0xff
                                   1176 ;	main.c:271: dig_ctrl_1  =   0;
      0004E4 C2 93            [12] 1177 	clr	_P1_3
                                   1178 ;	main.c:272: dig_ctrl_3  =   0;
      0004E6 C2 91            [12] 1179 	clr	_P1_1
                                   1180 ;	main.c:273: dig_ctrl_2  =   0;
      0004E8 C2 92            [12] 1181 	clr	_P1_2
                                   1182 ;	main.c:274: dig_ctrl_4  =   0;
      0004EA C2 90            [12] 1183 	clr	_P1_0
                                   1184 ;	main.c:276: dig_disp++;
      0004EC 05 10            [12] 1185 	inc	_dig_disp
                                   1186 ;	main.c:277: dig_disp=dig_disp%4;
      0004EE 53 10 03         [24] 1187 	anl	_dig_disp,#0x03
                                   1188 ;	main.c:279: switch(dig_disp)
      0004F1 E5 10            [12] 1189 	mov	a,_dig_disp
      0004F3 24 FC            [12] 1190 	add	a,#0xff - 0x03
      0004F5 40 40            [24] 1191 	jc	00106$
      0004F7 E5 10            [12] 1192 	mov	a,_dig_disp
      0004F9 75 F0 03         [24] 1193 	mov	b,#0x03
      0004FC A4               [48] 1194 	mul	ab
      0004FD 90 05 01         [24] 1195 	mov	dptr,#00112$
      000500 73               [24] 1196 	jmp	@a+dptr
      000501                       1197 00112$:
      000501 02 05 0D         [24] 1198 	ljmp	00101$
      000504 02 05 18         [24] 1199 	ljmp	00102$
      000507 02 05 23         [24] 1200 	ljmp	00103$
      00050A 02 05 2E         [24] 1201 	ljmp	00104$
                                   1202 ;	main.c:281: case 0:
      00050D                       1203 00101$:
                                   1204 ;	main.c:282: P2=dig_val[sec1];
      00050D E5 17            [12] 1205 	mov	a,_sec1
      00050F 24 35            [12] 1206 	add	a,#_dig_val
      000511 F9               [12] 1207 	mov	r1,a
      000512 87 A0            [24] 1208 	mov	_P2,@r1
                                   1209 ;	main.c:283: dig_ctrl_1 = 1;
      000514 D2 93            [12] 1210 	setb	_P1_3
                                   1211 ;	main.c:284: break;
                                   1212 ;	main.c:286: case 1:
      000516 80 1F            [24] 1213 	sjmp	00106$
      000518                       1214 00102$:
                                   1215 ;	main.c:287: P2= dig_val[sec2];
      000518 E5 15            [12] 1216 	mov	a,_sec2
      00051A 24 35            [12] 1217 	add	a,#_dig_val
      00051C F9               [12] 1218 	mov	r1,a
      00051D 87 A0            [24] 1219 	mov	_P2,@r1
                                   1220 ;	main.c:288: dig_ctrl_2 = 1;
      00051F D2 92            [12] 1221 	setb	_P1_2
                                   1222 ;	main.c:289: break;
                                   1223 ;	main.c:291: case 2:
      000521 80 14            [24] 1224 	sjmp	00106$
      000523                       1225 00103$:
                                   1226 ;	main.c:292: P2= dig_val[min1];
      000523 E5 13            [12] 1227 	mov	a,_min1
      000525 24 35            [12] 1228 	add	a,#_dig_val
      000527 F9               [12] 1229 	mov	r1,a
      000528 87 A0            [24] 1230 	mov	_P2,@r1
                                   1231 ;	main.c:293: dig_ctrl_3 = 1;
      00052A D2 91            [12] 1232 	setb	_P1_1
                                   1233 ;	main.c:294: break;
                                   1234 ;	main.c:296: case 3:
      00052C 80 09            [24] 1235 	sjmp	00106$
      00052E                       1236 00104$:
                                   1237 ;	main.c:297: P2= dig_val[min2];
      00052E E5 11            [12] 1238 	mov	a,_min2
      000530 24 35            [12] 1239 	add	a,#_dig_val
      000532 F9               [12] 1240 	mov	r1,a
      000533 87 A0            [24] 1241 	mov	_P2,@r1
                                   1242 ;	main.c:298: dig_ctrl_4 = 1;
      000535 D2 90            [12] 1243 	setb	_P1_0
                                   1244 ;	main.c:300: }
      000537                       1245 00106$:
      000537 D0 D0            [24] 1246 	pop	psw
      000539 D0 01            [24] 1247 	pop	ar1
      00053B D0 83            [24] 1248 	pop	dph
      00053D D0 82            [24] 1249 	pop	dpl
      00053F D0 F0            [24] 1250 	pop	b
      000541 D0 E0            [24] 1251 	pop	acc
      000543 32               [24] 1252 	reti
                                   1253 ;	eliminated unneeded push/pop ar0
                                   1254 ;------------------------------------------------------------
                                   1255 ;Allocation info for local variables in function 'moveclock'
                                   1256 ;------------------------------------------------------------
                                   1257 ;	main.c:303: void moveclock(void) __interrupt 3  // Function to increment clock digits
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function moveclock
                                   1260 ;	-----------------------------------------
      000544                       1261 _moveclock:
      000544 C0 E0            [24] 1262 	push	acc
      000546 C0 D0            [24] 1263 	push	psw
                                   1264 ;	main.c:305: loop++;
      000548 05 31            [12] 1265 	inc	_loop
      00054A E4               [12] 1266 	clr	a
      00054B B5 31 02         [24] 1267 	cjne	a,_loop,00128$
      00054E 05 32            [12] 1268 	inc	(_loop + 1)
      000550                       1269 00128$:
                                   1270 ;	main.c:306: if(loop==20)
      000550 74 14            [12] 1271 	mov	a,#0x14
      000552 B5 31 06         [24] 1272 	cjne	a,_loop,00129$
      000555 E4               [12] 1273 	clr	a
      000556 B5 32 02         [24] 1274 	cjne	a,(_loop + 1),00129$
      000559 80 03            [24] 1275 	sjmp	00130$
      00055B                       1276 00129$:
      00055B 02 05 E0         [24] 1277 	ljmp	00111$
      00055E                       1278 00130$:
                                   1279 ;	main.c:308: sec1++;
      00055E 05 17            [12] 1280 	inc	_sec1
      000560 E4               [12] 1281 	clr	a
      000561 B5 17 02         [24] 1282 	cjne	a,_sec1,00131$
      000564 05 18            [12] 1283 	inc	(_sec1 + 1)
      000566                       1284 00131$:
                                   1285 ;	main.c:309: if(sec1==10)
      000566 74 0A            [12] 1286 	mov	a,#0x0a
      000568 B5 17 06         [24] 1287 	cjne	a,_sec1,00132$
      00056B E4               [12] 1288 	clr	a
      00056C B5 18 02         [24] 1289 	cjne	a,(_sec1 + 1),00132$
      00056F 80 02            [24] 1290 	sjmp	00133$
      000571                       1291 00132$:
      000571 80 68            [24] 1292 	sjmp	00108$
      000573                       1293 00133$:
                                   1294 ;	main.c:311: sec1=0;
      000573 E4               [12] 1295 	clr	a
      000574 F5 17            [12] 1296 	mov	_sec1,a
      000576 F5 18            [12] 1297 	mov	(_sec1 + 1),a
                                   1298 ;	main.c:312: sec2++;
      000578 05 15            [12] 1299 	inc	_sec2
                                   1300 ;	genFromRTrack removed	clr	a
      00057A B5 15 02         [24] 1301 	cjne	a,_sec2,00134$
      00057D 05 16            [12] 1302 	inc	(_sec2 + 1)
      00057F                       1303 00134$:
                                   1304 ;	main.c:313: if(sec2==6)
      00057F 74 06            [12] 1305 	mov	a,#0x06
      000581 B5 15 06         [24] 1306 	cjne	a,_sec2,00135$
      000584 E4               [12] 1307 	clr	a
      000585 B5 16 02         [24] 1308 	cjne	a,(_sec2 + 1),00135$
      000588 80 02            [24] 1309 	sjmp	00136$
      00058A                       1310 00135$:
      00058A 80 4F            [24] 1311 	sjmp	00108$
      00058C                       1312 00136$:
                                   1313 ;	main.c:315: sec1=0;
      00058C E4               [12] 1314 	clr	a
      00058D F5 17            [12] 1315 	mov	_sec1,a
      00058F F5 18            [12] 1316 	mov	(_sec1 + 1),a
                                   1317 ;	main.c:316: sec2=0;
      000591 F5 15            [12] 1318 	mov	_sec2,a
      000593 F5 16            [12] 1319 	mov	(_sec2 + 1),a
                                   1320 ;	main.c:317: min1++;
      000595 05 13            [12] 1321 	inc	_min1
                                   1322 ;	genFromRTrack removed	clr	a
      000597 B5 13 02         [24] 1323 	cjne	a,_min1,00137$
      00059A 05 14            [12] 1324 	inc	(_min1 + 1)
      00059C                       1325 00137$:
                                   1326 ;	main.c:318: if(min1==10)
      00059C 74 0A            [12] 1327 	mov	a,#0x0a
      00059E B5 13 06         [24] 1328 	cjne	a,_min1,00138$
      0005A1 E4               [12] 1329 	clr	a
      0005A2 B5 14 02         [24] 1330 	cjne	a,(_min1 + 1),00138$
      0005A5 80 02            [24] 1331 	sjmp	00139$
      0005A7                       1332 00138$:
      0005A7 80 32            [24] 1333 	sjmp	00108$
      0005A9                       1334 00139$:
                                   1335 ;	main.c:320: sec1=0;
      0005A9 E4               [12] 1336 	clr	a
      0005AA F5 17            [12] 1337 	mov	_sec1,a
      0005AC F5 18            [12] 1338 	mov	(_sec1 + 1),a
                                   1339 ;	main.c:321: sec2=0;
      0005AE F5 15            [12] 1340 	mov	_sec2,a
      0005B0 F5 16            [12] 1341 	mov	(_sec2 + 1),a
                                   1342 ;	main.c:322: min1=0;
      0005B2 F5 13            [12] 1343 	mov	_min1,a
      0005B4 F5 14            [12] 1344 	mov	(_min1 + 1),a
                                   1345 ;	main.c:323: min2++;
      0005B6 05 11            [12] 1346 	inc	_min2
                                   1347 ;	genFromRTrack removed	clr	a
      0005B8 B5 11 02         [24] 1348 	cjne	a,_min2,00140$
      0005BB 05 12            [12] 1349 	inc	(_min2 + 1)
      0005BD                       1350 00140$:
                                   1351 ;	main.c:324: if(min2==6)
      0005BD 74 06            [12] 1352 	mov	a,#0x06
      0005BF B5 11 06         [24] 1353 	cjne	a,_min2,00141$
      0005C2 E4               [12] 1354 	clr	a
      0005C3 B5 12 02         [24] 1355 	cjne	a,(_min2 + 1),00141$
      0005C6 80 02            [24] 1356 	sjmp	00142$
      0005C8                       1357 00141$:
      0005C8 80 11            [24] 1358 	sjmp	00108$
      0005CA                       1359 00142$:
                                   1360 ;	main.c:326: sec1=0;
      0005CA E4               [12] 1361 	clr	a
      0005CB F5 17            [12] 1362 	mov	_sec1,a
      0005CD F5 18            [12] 1363 	mov	(_sec1 + 1),a
                                   1364 ;	main.c:327: sec2=0;
      0005CF F5 15            [12] 1365 	mov	_sec2,a
      0005D1 F5 16            [12] 1366 	mov	(_sec2 + 1),a
                                   1367 ;	main.c:328: min1=0;
      0005D3 F5 13            [12] 1368 	mov	_min1,a
      0005D5 F5 14            [12] 1369 	mov	(_min1 + 1),a
                                   1370 ;	main.c:329: min2=0;
      0005D7 F5 11            [12] 1371 	mov	_min2,a
      0005D9 F5 12            [12] 1372 	mov	(_min2 + 1),a
      0005DB                       1373 00108$:
                                   1374 ;	main.c:334: loop=0;
      0005DB E4               [12] 1375 	clr	a
      0005DC F5 31            [12] 1376 	mov	_loop,a
      0005DE F5 32            [12] 1377 	mov	(_loop + 1),a
      0005E0                       1378 00111$:
      0005E0 D0 D0            [24] 1379 	pop	psw
      0005E2 D0 E0            [24] 1380 	pop	acc
      0005E4 32               [24] 1381 	reti
                                   1382 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1383 ;	eliminated unneeded push/pop dpl
                                   1384 ;	eliminated unneeded push/pop dph
                                   1385 ;	eliminated unneeded push/pop b
                                   1386 ;------------------------------------------------------------
                                   1387 ;Allocation info for local variables in function 'main'
                                   1388 ;------------------------------------------------------------
                                   1389 ;	main.c:338: void main()
                                   1390 ;	-----------------------------------------
                                   1391 ;	 function main
                                   1392 ;	-----------------------------------------
      0005E5                       1393 _main:
                                   1394 ;	main.c:340: mode        =   0;
      0005E5 E4               [12] 1395 	clr	a
      0005E6 F5 33            [12] 1396 	mov	_mode,a
      0005E8 F5 34            [12] 1397 	mov	(_mode + 1),a
                                   1398 ;	main.c:341: set         =   1;          //Initialize set, reset, start and incr pins as input
      0005EA D2 96            [12] 1399 	setb	_P1_6
                                   1400 ;	main.c:342: resetalarm  =   1;
      0005EC D2 95            [12] 1401 	setb	_P1_5
                                   1402 ;	main.c:343: resetclock  =   1;
      0005EE D2 94            [12] 1403 	setb	_P1_4
                                   1404 ;	main.c:344: start       =   1;
      0005F0 D2 B3            [12] 1405 	setb	_P3_3
                                   1406 ;	main.c:345: incr        =   1;
      0005F2 D2 97            [12] 1407 	setb	_P1_7
                                   1408 ;	main.c:346: begin       =   0;
      0005F4 E4               [12] 1409 	clr	a
      0005F5 F5 0E            [12] 1410 	mov	_begin,a
      0005F7 F5 0F            [12] 1411 	mov	(_begin + 1),a
                                   1412 ;	main.c:347: TMOD        =   0x11;       //Intialize Timer 0
      0005F9 75 89 11         [24] 1413 	mov	_TMOD,#0x11
                                   1414 ;	main.c:348: TL0         =   0xf6;       //Load timer0
      0005FC 75 8A F6         [24] 1415 	mov	_TL0,#0xf6
                                   1416 ;	main.c:349: TH0         =   0xFf;
      0005FF 75 8C FF         [24] 1417 	mov	_TH0,#0xff
                                   1418 ;	main.c:350: IE          =   0x8A;       //Enable Timer0 interrupt
      000602 75 A8 8A         [24] 1419 	mov	_IE,#0x8a
                                   1420 ;	main.c:351: TR0         =   1;          //Start Timer0
      000605 D2 8C            [12] 1421 	setb	_TR0
                                   1422 ;	main.c:352: TL1         =   0xFD;
      000607 75 8B FD         [24] 1423 	mov	_TL1,#0xfd
                                   1424 ;	main.c:353: TH1         =   0x4B;
      00060A 75 8D 4B         [24] 1425 	mov	_TH1,#0x4b
                                   1426 ;	main.c:354: TR1         =   1;          // Start Timer1
      00060D D2 8E            [12] 1427 	setb	_TR1
                                   1428 ;	main.c:356: while(1)
      00060F                       1429 00112$:
                                   1430 ;	main.c:358: if(resetalarm==0)     //Check if reset alarm pin is pressed
      00060F 20 95 06         [24] 1431 	jb	_P1_5,00102$
                                   1432 ;	main.c:360: resetfn(0);
      000612 90 00 00         [24] 1433 	mov	dptr,#0x0000
      000615 12 03 9A         [24] 1434 	lcall	_resetfn
      000618                       1435 00102$:
                                   1436 ;	main.c:362: if(resetclock==0)     //Check if reset clock pin is pressed
      000618 20 94 06         [24] 1437 	jb	_P1_4,00104$
                                   1438 ;	main.c:364: resetfn(1);
      00061B 90 00 01         [24] 1439 	mov	dptr,#0x0001
      00061E 12 03 9A         [24] 1440 	lcall	_resetfn
      000621                       1441 00104$:
                                   1442 ;	main.c:366: if(min2==alarmmin2&&min1==alarmmin1&&sec2==alarmsec2&&sec1==alarmsec1&&begin==1)  // Check for Alarm condition
      000621 E5 21            [12] 1443 	mov	a,_alarmmin2
      000623 B5 11 E9         [24] 1444 	cjne	a,_min2,00112$
      000626 E5 22            [12] 1445 	mov	a,(_alarmmin2 + 1)
      000628 B5 12 E4         [24] 1446 	cjne	a,(_min2 + 1),00112$
      00062B E5 23            [12] 1447 	mov	a,_alarmmin1
      00062D B5 13 DF         [24] 1448 	cjne	a,_min1,00112$
      000630 E5 24            [12] 1449 	mov	a,(_alarmmin1 + 1)
      000632 B5 14 DA         [24] 1450 	cjne	a,(_min1 + 1),00112$
      000635 E5 25            [12] 1451 	mov	a,_alarmsec2
      000637 B5 15 D5         [24] 1452 	cjne	a,_sec2,00112$
      00063A E5 26            [12] 1453 	mov	a,(_alarmsec2 + 1)
      00063C B5 16 D0         [24] 1454 	cjne	a,(_sec2 + 1),00112$
      00063F E5 27            [12] 1455 	mov	a,_alarmsec1
      000641 B5 17 CB         [24] 1456 	cjne	a,_sec1,00112$
      000644 E5 28            [12] 1457 	mov	a,(_alarmsec1 + 1)
      000646 B5 18 C6         [24] 1458 	cjne	a,(_sec1 + 1),00112$
      000649 74 01            [12] 1459 	mov	a,#0x01
      00064B B5 0E 06         [24] 1460 	cjne	a,_begin,00150$
      00064E 14               [12] 1461 	dec	a
      00064F B5 0F 02         [24] 1462 	cjne	a,(_begin + 1),00150$
      000652 80 02            [24] 1463 	sjmp	00151$
      000654                       1464 00150$:
      000654 80 B9            [24] 1465 	sjmp	00112$
      000656                       1466 00151$:
                                   1467 ;	main.c:368: buzzer=0;
      000656 C2 B7            [12] 1468 	clr	_P3_7
                                   1469 ;	main.c:369: delay(500);
      000658 90 01 F4         [24] 1470 	mov	dptr,#0x01f4
      00065B 12 00 F5         [24] 1471 	lcall	_delay
                                   1472 ;	main.c:370: buzzer=1;
      00065E D2 B7            [12] 1473 	setb	_P3_7
      000660 80 AD            [24] 1474 	sjmp	00112$
                                   1475 	.area CSEG    (CODE)
                                   1476 	.area CONST   (CODE)
                                   1477 	.area XINIT   (CODE)
                                   1478 	.area CABS    (ABS,CODE)
