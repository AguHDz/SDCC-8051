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
                                    114 	.globl _resetfn_PARM_1
                                    115 	.globl _dig_val
                                    116 	.globl _mode
                                    117 	.globl _loop
                                    118 	.globl _keepsec1
                                    119 	.globl _keepsec2
                                    120 	.globl _keepmin1
                                    121 	.globl _keepmin2
                                    122 	.globl _alarmsec1
                                    123 	.globl _alarmsec2
                                    124 	.globl _alarmmin1
                                    125 	.globl _alarmmin2
                                    126 	.globl _secalarm1
                                    127 	.globl _secalarm2
                                    128 	.globl _minalarm1
                                    129 	.globl _minalarm2
                                    130 	.globl _sec1
                                    131 	.globl _sec2
                                    132 	.globl _min1
                                    133 	.globl _min2
                                    134 	.globl _dig_disp
                                    135 	.globl _begin
                                    136 	.globl _recnt_incr_seg
                                    137 	.globl _ret_seg_to_incre
                                    138 	.globl _sel_seg_to_incr
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 G$P0$0$0 == 0x0080
                           000080   145 _P0	=	0x0080
                           000081   146 G$SP$0$0 == 0x0081
                           000081   147 _SP	=	0x0081
                           000082   148 G$DPL$0$0 == 0x0082
                           000082   149 _DPL	=	0x0082
                           000083   150 G$DPH$0$0 == 0x0083
                           000083   151 _DPH	=	0x0083
                           000087   152 G$PCON$0$0 == 0x0087
                           000087   153 _PCON	=	0x0087
                           000088   154 G$TCON$0$0 == 0x0088
                           000088   155 _TCON	=	0x0088
                           000089   156 G$TMOD$0$0 == 0x0089
                           000089   157 _TMOD	=	0x0089
                           00008A   158 G$TL0$0$0 == 0x008a
                           00008A   159 _TL0	=	0x008a
                           00008B   160 G$TL1$0$0 == 0x008b
                           00008B   161 _TL1	=	0x008b
                           00008C   162 G$TH0$0$0 == 0x008c
                           00008C   163 _TH0	=	0x008c
                           00008D   164 G$TH1$0$0 == 0x008d
                           00008D   165 _TH1	=	0x008d
                           000090   166 G$P1$0$0 == 0x0090
                           000090   167 _P1	=	0x0090
                           000098   168 G$SCON$0$0 == 0x0098
                           000098   169 _SCON	=	0x0098
                           000099   170 G$SBUF$0$0 == 0x0099
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 G$P2$0$0 == 0x00a0
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 G$IE$0$0 == 0x00a8
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 G$P3$0$0 == 0x00b0
                           0000B0   177 _P3	=	0x00b0
                           0000B8   178 G$IP$0$0 == 0x00b8
                           0000B8   179 _IP	=	0x00b8
                           0000D0   180 G$PSW$0$0 == 0x00d0
                           0000D0   181 _PSW	=	0x00d0
                           0000E0   182 G$ACC$0$0 == 0x00e0
                           0000E0   183 _ACC	=	0x00e0
                           0000F0   184 G$B$0$0 == 0x00f0
                           0000F0   185 _B	=	0x00f0
                                    186 ;--------------------------------------------------------
                                    187 ; special function bits
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           000080   191 G$P0_0$0$0 == 0x0080
                           000080   192 _P0_0	=	0x0080
                           000081   193 G$P0_1$0$0 == 0x0081
                           000081   194 _P0_1	=	0x0081
                           000082   195 G$P0_2$0$0 == 0x0082
                           000082   196 _P0_2	=	0x0082
                           000083   197 G$P0_3$0$0 == 0x0083
                           000083   198 _P0_3	=	0x0083
                           000084   199 G$P0_4$0$0 == 0x0084
                           000084   200 _P0_4	=	0x0084
                           000085   201 G$P0_5$0$0 == 0x0085
                           000085   202 _P0_5	=	0x0085
                           000086   203 G$P0_6$0$0 == 0x0086
                           000086   204 _P0_6	=	0x0086
                           000087   205 G$P0_7$0$0 == 0x0087
                           000087   206 _P0_7	=	0x0087
                           000088   207 G$IT0$0$0 == 0x0088
                           000088   208 _IT0	=	0x0088
                           000089   209 G$IE0$0$0 == 0x0089
                           000089   210 _IE0	=	0x0089
                           00008A   211 G$IT1$0$0 == 0x008a
                           00008A   212 _IT1	=	0x008a
                           00008B   213 G$IE1$0$0 == 0x008b
                           00008B   214 _IE1	=	0x008b
                           00008C   215 G$TR0$0$0 == 0x008c
                           00008C   216 _TR0	=	0x008c
                           00008D   217 G$TF0$0$0 == 0x008d
                           00008D   218 _TF0	=	0x008d
                           00008E   219 G$TR1$0$0 == 0x008e
                           00008E   220 _TR1	=	0x008e
                           00008F   221 G$TF1$0$0 == 0x008f
                           00008F   222 _TF1	=	0x008f
                           000090   223 G$P1_0$0$0 == 0x0090
                           000090   224 _P1_0	=	0x0090
                           000091   225 G$P1_1$0$0 == 0x0091
                           000091   226 _P1_1	=	0x0091
                           000092   227 G$P1_2$0$0 == 0x0092
                           000092   228 _P1_2	=	0x0092
                           000093   229 G$P1_3$0$0 == 0x0093
                           000093   230 _P1_3	=	0x0093
                           000094   231 G$P1_4$0$0 == 0x0094
                           000094   232 _P1_4	=	0x0094
                           000095   233 G$P1_5$0$0 == 0x0095
                           000095   234 _P1_5	=	0x0095
                           000096   235 G$P1_6$0$0 == 0x0096
                           000096   236 _P1_6	=	0x0096
                           000097   237 G$P1_7$0$0 == 0x0097
                           000097   238 _P1_7	=	0x0097
                           000098   239 G$RI$0$0 == 0x0098
                           000098   240 _RI	=	0x0098
                           000099   241 G$TI$0$0 == 0x0099
                           000099   242 _TI	=	0x0099
                           00009A   243 G$RB8$0$0 == 0x009a
                           00009A   244 _RB8	=	0x009a
                           00009B   245 G$TB8$0$0 == 0x009b
                           00009B   246 _TB8	=	0x009b
                           00009C   247 G$REN$0$0 == 0x009c
                           00009C   248 _REN	=	0x009c
                           00009D   249 G$SM2$0$0 == 0x009d
                           00009D   250 _SM2	=	0x009d
                           00009E   251 G$SM1$0$0 == 0x009e
                           00009E   252 _SM1	=	0x009e
                           00009F   253 G$SM0$0$0 == 0x009f
                           00009F   254 _SM0	=	0x009f
                           0000A0   255 G$P2_0$0$0 == 0x00a0
                           0000A0   256 _P2_0	=	0x00a0
                           0000A1   257 G$P2_1$0$0 == 0x00a1
                           0000A1   258 _P2_1	=	0x00a1
                           0000A2   259 G$P2_2$0$0 == 0x00a2
                           0000A2   260 _P2_2	=	0x00a2
                           0000A3   261 G$P2_3$0$0 == 0x00a3
                           0000A3   262 _P2_3	=	0x00a3
                           0000A4   263 G$P2_4$0$0 == 0x00a4
                           0000A4   264 _P2_4	=	0x00a4
                           0000A5   265 G$P2_5$0$0 == 0x00a5
                           0000A5   266 _P2_5	=	0x00a5
                           0000A6   267 G$P2_6$0$0 == 0x00a6
                           0000A6   268 _P2_6	=	0x00a6
                           0000A7   269 G$P2_7$0$0 == 0x00a7
                           0000A7   270 _P2_7	=	0x00a7
                           0000A8   271 G$EX0$0$0 == 0x00a8
                           0000A8   272 _EX0	=	0x00a8
                           0000A9   273 G$ET0$0$0 == 0x00a9
                           0000A9   274 _ET0	=	0x00a9
                           0000AA   275 G$EX1$0$0 == 0x00aa
                           0000AA   276 _EX1	=	0x00aa
                           0000AB   277 G$ET1$0$0 == 0x00ab
                           0000AB   278 _ET1	=	0x00ab
                           0000AC   279 G$ES$0$0 == 0x00ac
                           0000AC   280 _ES	=	0x00ac
                           0000AF   281 G$EA$0$0 == 0x00af
                           0000AF   282 _EA	=	0x00af
                           0000B0   283 G$P3_0$0$0 == 0x00b0
                           0000B0   284 _P3_0	=	0x00b0
                           0000B1   285 G$P3_1$0$0 == 0x00b1
                           0000B1   286 _P3_1	=	0x00b1
                           0000B2   287 G$P3_2$0$0 == 0x00b2
                           0000B2   288 _P3_2	=	0x00b2
                           0000B3   289 G$P3_3$0$0 == 0x00b3
                           0000B3   290 _P3_3	=	0x00b3
                           0000B4   291 G$P3_4$0$0 == 0x00b4
                           0000B4   292 _P3_4	=	0x00b4
                           0000B5   293 G$P3_5$0$0 == 0x00b5
                           0000B5   294 _P3_5	=	0x00b5
                           0000B6   295 G$P3_6$0$0 == 0x00b6
                           0000B6   296 _P3_6	=	0x00b6
                           0000B7   297 G$P3_7$0$0 == 0x00b7
                           0000B7   298 _P3_7	=	0x00b7
                           0000B0   299 G$RXD$0$0 == 0x00b0
                           0000B0   300 _RXD	=	0x00b0
                           0000B1   301 G$TXD$0$0 == 0x00b1
                           0000B1   302 _TXD	=	0x00b1
                           0000B2   303 G$INT0$0$0 == 0x00b2
                           0000B2   304 _INT0	=	0x00b2
                           0000B3   305 G$INT1$0$0 == 0x00b3
                           0000B3   306 _INT1	=	0x00b3
                           0000B4   307 G$T0$0$0 == 0x00b4
                           0000B4   308 _T0	=	0x00b4
                           0000B5   309 G$T1$0$0 == 0x00b5
                           0000B5   310 _T1	=	0x00b5
                           0000B6   311 G$WR$0$0 == 0x00b6
                           0000B6   312 _WR	=	0x00b6
                           0000B7   313 G$RD$0$0 == 0x00b7
                           0000B7   314 _RD	=	0x00b7
                           0000B8   315 G$PX0$0$0 == 0x00b8
                           0000B8   316 _PX0	=	0x00b8
                           0000B9   317 G$PT0$0$0 == 0x00b9
                           0000B9   318 _PT0	=	0x00b9
                           0000BA   319 G$PX1$0$0 == 0x00ba
                           0000BA   320 _PX1	=	0x00ba
                           0000BB   321 G$PT1$0$0 == 0x00bb
                           0000BB   322 _PT1	=	0x00bb
                           0000BC   323 G$PS$0$0 == 0x00bc
                           0000BC   324 _PS	=	0x00bc
                           0000D0   325 G$P$0$0 == 0x00d0
                           0000D0   326 _P	=	0x00d0
                           0000D1   327 G$F1$0$0 == 0x00d1
                           0000D1   328 _F1	=	0x00d1
                           0000D2   329 G$OV$0$0 == 0x00d2
                           0000D2   330 _OV	=	0x00d2
                           0000D3   331 G$RS0$0$0 == 0x00d3
                           0000D3   332 _RS0	=	0x00d3
                           0000D4   333 G$RS1$0$0 == 0x00d4
                           0000D4   334 _RS1	=	0x00d4
                           0000D5   335 G$F0$0$0 == 0x00d5
                           0000D5   336 _F0	=	0x00d5
                           0000D6   337 G$AC$0$0 == 0x00d6
                           0000D6   338 _AC	=	0x00d6
                           0000D7   339 G$CY$0$0 == 0x00d7
                           0000D7   340 _CY	=	0x00d7
                                    341 ;--------------------------------------------------------
                                    342 ; overlayable register banks
                                    343 ;--------------------------------------------------------
                                    344 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        345 	.ds 8
                                    346 ;--------------------------------------------------------
                                    347 ; internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area DSEG    (DATA)
                           000000   350 G$sel_seg_to_incr$0$0==.
      000021                        351 _sel_seg_to_incr::
      000021                        352 	.ds 2
                           000002   353 G$ret_seg_to_incre$0$0==.
      000023                        354 _ret_seg_to_incre::
      000023                        355 	.ds 2
                           000004   356 G$recnt_incr_seg$0$0==.
      000025                        357 _recnt_incr_seg::
      000025                        358 	.ds 2
                           000006   359 G$begin$0$0==.
      000027                        360 _begin::
      000027                        361 	.ds 2
                           000008   362 G$dig_disp$0$0==.
      000029                        363 _dig_disp::
      000029                        364 	.ds 1
                           000009   365 G$min2$0$0==.
      00002A                        366 _min2::
      00002A                        367 	.ds 2
                           00000B   368 G$min1$0$0==.
      00002C                        369 _min1::
      00002C                        370 	.ds 2
                           00000D   371 G$sec2$0$0==.
      00002E                        372 _sec2::
      00002E                        373 	.ds 2
                           00000F   374 G$sec1$0$0==.
      000030                        375 _sec1::
      000030                        376 	.ds 2
                           000011   377 G$minalarm2$0$0==.
      000032                        378 _minalarm2::
      000032                        379 	.ds 2
                           000013   380 G$minalarm1$0$0==.
      000034                        381 _minalarm1::
      000034                        382 	.ds 2
                           000015   383 G$secalarm2$0$0==.
      000036                        384 _secalarm2::
      000036                        385 	.ds 2
                           000017   386 G$secalarm1$0$0==.
      000038                        387 _secalarm1::
      000038                        388 	.ds 2
                           000019   389 G$alarmmin2$0$0==.
      00003A                        390 _alarmmin2::
      00003A                        391 	.ds 2
                           00001B   392 G$alarmmin1$0$0==.
      00003C                        393 _alarmmin1::
      00003C                        394 	.ds 2
                           00001D   395 G$alarmsec2$0$0==.
      00003E                        396 _alarmsec2::
      00003E                        397 	.ds 2
                           00001F   398 G$alarmsec1$0$0==.
      000040                        399 _alarmsec1::
      000040                        400 	.ds 2
                           000021   401 G$keepmin2$0$0==.
      000042                        402 _keepmin2::
      000042                        403 	.ds 2
                           000023   404 G$keepmin1$0$0==.
      000044                        405 _keepmin1::
      000044                        406 	.ds 2
                           000025   407 G$keepsec2$0$0==.
      000046                        408 _keepsec2::
      000046                        409 	.ds 2
                           000027   410 G$keepsec1$0$0==.
      000048                        411 _keepsec1::
      000048                        412 	.ds 2
                           000029   413 G$loop$0$0==.
      00004A                        414 _loop::
      00004A                        415 	.ds 2
                           00002B   416 G$mode$0$0==.
      00004C                        417 _mode::
      00004C                        418 	.ds 2
                           00002D   419 G$dig_val$0$0==.
      00004E                        420 _dig_val::
      00004E                        421 	.ds 10
                                    422 ;--------------------------------------------------------
                                    423 ; overlayable items in internal ram 
                                    424 ;--------------------------------------------------------
                                    425 	.area	OSEG    (OVR,DATA)
                                    426 ;--------------------------------------------------------
                                    427 ; Stack segment in internal ram 
                                    428 ;--------------------------------------------------------
                                    429 	.area	SSEG
      000058                        430 __start__stack:
      000058                        431 	.ds	1
                                    432 
                                    433 ;--------------------------------------------------------
                                    434 ; indirectly addressable internal ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area ISEG    (DATA)
                                    437 ;--------------------------------------------------------
                                    438 ; absolute internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area IABS    (ABS,DATA)
                                    441 	.area IABS    (ABS,DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; bit data
                                    444 ;--------------------------------------------------------
                                    445 	.area BSEG    (BIT)
                           000000   446 Lmain.resetfn$mode$1$14==.
      000000                        447 _resetfn_PARM_1:
      000000                        448 	.ds 1
                                    449 ;--------------------------------------------------------
                                    450 ; paged external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area PSEG    (PAG,XDATA)
                                    453 ;--------------------------------------------------------
                                    454 ; external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area XSEG    (XDATA)
                                    457 ;--------------------------------------------------------
                                    458 ; absolute external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XABS    (ABS,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external initialized ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XISEG   (XDATA)
                                    465 	.area HOME    (CODE)
                                    466 	.area GSINIT0 (CODE)
                                    467 	.area GSINIT1 (CODE)
                                    468 	.area GSINIT2 (CODE)
                                    469 	.area GSINIT3 (CODE)
                                    470 	.area GSINIT4 (CODE)
                                    471 	.area GSINIT5 (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.area GSFINAL (CODE)
                                    474 	.area CSEG    (CODE)
                                    475 ;--------------------------------------------------------
                                    476 ; interrupt vector 
                                    477 ;--------------------------------------------------------
                                    478 	.area HOME    (CODE)
      000000                        479 __interrupt_vect:
      000000 02 00 21         [24]  480 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  481 	reti
      000004                        482 	.ds	7
      00000B 02 04 89         [24]  483 	ljmp	_display
      00000E                        484 	.ds	5
      000013 32               [24]  485 	reti
      000014                        486 	.ds	7
      00001B 02 05 07         [24]  487 	ljmp	_moveclock
                                    488 ;--------------------------------------------------------
                                    489 ; global & static initialisations
                                    490 ;--------------------------------------------------------
                                    491 	.area HOME    (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.globl __sdcc_gsinit_startup
                                    496 	.globl __sdcc_program_startup
                                    497 	.globl __start__stack
                                    498 	.globl __mcs51_genXINIT
                                    499 	.globl __mcs51_genXRAMCLEAR
                                    500 	.globl __mcs51_genRAMCLEAR
                           000000   501 	C$main.c$20$1$32 ==.
                                    502 ;	main.c:20: int sel_seg_to_incr=0;
      00007A E4               [12]  503 	clr	a
      00007B F5 21            [12]  504 	mov	_sel_seg_to_incr,a
      00007D F5 22            [12]  505 	mov	(_sel_seg_to_incr + 1),a
                           000005   506 	C$main.c$21$1$32 ==.
                                    507 ;	main.c:21: int ret_seg_to_incre=0;
      00007F F5 23            [12]  508 	mov	_ret_seg_to_incre,a
      000081 F5 24            [12]  509 	mov	(_ret_seg_to_incre + 1),a
                           000009   510 	C$main.c$24$1$32 ==.
                                    511 ;	main.c:24: unsigned char dig_disp=0;
                                    512 ;	1-genFromRTrack replaced	mov	_dig_disp,#0x00
      000083 F5 29            [12]  513 	mov	_dig_disp,a
                           00000B   514 	C$main.c$25$1$32 ==.
                                    515 ;	main.c:25: int min2=0;
      000085 F5 2A            [12]  516 	mov	_min2,a
      000087 F5 2B            [12]  517 	mov	(_min2 + 1),a
                           00000F   518 	C$main.c$26$1$32 ==.
                                    519 ;	main.c:26: int min1=0;
      000089 F5 2C            [12]  520 	mov	_min1,a
      00008B F5 2D            [12]  521 	mov	(_min1 + 1),a
                           000013   522 	C$main.c$27$1$32 ==.
                                    523 ;	main.c:27: int sec2=0;
      00008D F5 2E            [12]  524 	mov	_sec2,a
      00008F F5 2F            [12]  525 	mov	(_sec2 + 1),a
                           000017   526 	C$main.c$28$1$32 ==.
                                    527 ;	main.c:28: int sec1=0;
      000091 F5 30            [12]  528 	mov	_sec1,a
      000093 F5 31            [12]  529 	mov	(_sec1 + 1),a
                           00001B   530 	C$main.c$29$1$32 ==.
                                    531 ;	main.c:29: int minalarm2=0;
      000095 F5 32            [12]  532 	mov	_minalarm2,a
      000097 F5 33            [12]  533 	mov	(_minalarm2 + 1),a
                           00001F   534 	C$main.c$30$1$32 ==.
                                    535 ;	main.c:30: int minalarm1=0;
      000099 F5 34            [12]  536 	mov	_minalarm1,a
      00009B F5 35            [12]  537 	mov	(_minalarm1 + 1),a
                           000023   538 	C$main.c$31$1$32 ==.
                                    539 ;	main.c:31: int secalarm2=0;
      00009D F5 36            [12]  540 	mov	_secalarm2,a
      00009F F5 37            [12]  541 	mov	(_secalarm2 + 1),a
                           000027   542 	C$main.c$32$1$32 ==.
                                    543 ;	main.c:32: int secalarm1=0;
      0000A1 F5 38            [12]  544 	mov	_secalarm1,a
      0000A3 F5 39            [12]  545 	mov	(_secalarm1 + 1),a
                           00002B   546 	C$main.c$33$1$32 ==.
                                    547 ;	main.c:33: int alarmmin2=0;
      0000A5 F5 3A            [12]  548 	mov	_alarmmin2,a
      0000A7 F5 3B            [12]  549 	mov	(_alarmmin2 + 1),a
                           00002F   550 	C$main.c$34$1$32 ==.
                                    551 ;	main.c:34: int alarmmin1=0;
      0000A9 F5 3C            [12]  552 	mov	_alarmmin1,a
      0000AB F5 3D            [12]  553 	mov	(_alarmmin1 + 1),a
                           000033   554 	C$main.c$35$1$32 ==.
                                    555 ;	main.c:35: int alarmsec2=0;
      0000AD F5 3E            [12]  556 	mov	_alarmsec2,a
      0000AF F5 3F            [12]  557 	mov	(_alarmsec2 + 1),a
                           000037   558 	C$main.c$36$1$32 ==.
                                    559 ;	main.c:36: int alarmsec1=0;
      0000B1 F5 40            [12]  560 	mov	_alarmsec1,a
      0000B3 F5 41            [12]  561 	mov	(_alarmsec1 + 1),a
                           00003B   562 	C$main.c$37$1$32 ==.
                                    563 ;	main.c:37: int keepmin2=0;
      0000B5 F5 42            [12]  564 	mov	_keepmin2,a
      0000B7 F5 43            [12]  565 	mov	(_keepmin2 + 1),a
                           00003F   566 	C$main.c$38$1$32 ==.
                                    567 ;	main.c:38: int keepmin1=0;
      0000B9 F5 44            [12]  568 	mov	_keepmin1,a
      0000BB F5 45            [12]  569 	mov	(_keepmin1 + 1),a
                           000043   570 	C$main.c$39$1$32 ==.
                                    571 ;	main.c:39: int keepsec2=0;
      0000BD F5 46            [12]  572 	mov	_keepsec2,a
      0000BF F5 47            [12]  573 	mov	(_keepsec2 + 1),a
                           000047   574 	C$main.c$40$1$32 ==.
                                    575 ;	main.c:40: int keepsec1=0;
      0000C1 F5 48            [12]  576 	mov	_keepsec1,a
      0000C3 F5 49            [12]  577 	mov	(_keepsec1 + 1),a
                           00004B   578 	C$main.c$41$1$32 ==.
                                    579 ;	main.c:41: int loop=0;
      0000C5 F5 4A            [12]  580 	mov	_loop,a
      0000C7 F5 4B            [12]  581 	mov	(_loop + 1),a
                           00004F   582 	C$main.c$43$1$32 ==.
                                    583 ;	main.c:43: char dig_val[10]={0x40,0xF9,0x24,0x30,0x19,0x12,0x02,0xF8,0x00,0x10};  // Hex values corresponding to digits 0 to 9
      0000C9 75 4E 40         [24]  584 	mov	_dig_val,#0x40
      0000CC 75 4F F9         [24]  585 	mov	(_dig_val + 0x0001),#0xf9
      0000CF 75 50 24         [24]  586 	mov	(_dig_val + 0x0002),#0x24
      0000D2 75 51 30         [24]  587 	mov	(_dig_val + 0x0003),#0x30
      0000D5 75 52 19         [24]  588 	mov	(_dig_val + 0x0004),#0x19
      0000D8 75 53 12         [24]  589 	mov	(_dig_val + 0x0005),#0x12
      0000DB 75 54 02         [24]  590 	mov	(_dig_val + 0x0006),#0x02
      0000DE 75 55 F8         [24]  591 	mov	(_dig_val + 0x0007),#0xf8
                                    592 ;	1-genFromRTrack replaced	mov	(_dig_val + 0x0008),#0x00
      0000E1 F5 56            [12]  593 	mov	(_dig_val + 0x0008),a
      0000E3 75 57 10         [24]  594 	mov	(_dig_val + 0x0009),#0x10
                                    595 	.area GSFINAL (CODE)
      0000E6 02 00 1E         [24]  596 	ljmp	__sdcc_program_startup
                                    597 ;--------------------------------------------------------
                                    598 ; Home
                                    599 ;--------------------------------------------------------
                                    600 	.area HOME    (CODE)
                                    601 	.area HOME    (CODE)
      00001E                        602 __sdcc_program_startup:
      00001E 02 05 A8         [24]  603 	ljmp	_main
                                    604 ;	return from main will return to caller
                                    605 ;--------------------------------------------------------
                                    606 ; code
                                    607 ;--------------------------------------------------------
                                    608 	.area CSEG    (CODE)
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'delay'
                                    611 ;------------------------------------------------------------
                                    612 ;time                      Allocated to registers r6 r7 
                                    613 ;i                         Allocated to registers r4 r5 
                                    614 ;j                         Allocated to registers r2 r3 
                                    615 ;------------------------------------------------------------
                           000000   616 	G$delay$0$0 ==.
                           000000   617 	C$main.c$45$0$0 ==.
                                    618 ;	main.c:45: void delay(int time)  //Function to provide time delay.
                                    619 ;	-----------------------------------------
                                    620 ;	 function delay
                                    621 ;	-----------------------------------------
      0000E9                        622 _delay:
                           000007   623 	ar7 = 0x07
                           000006   624 	ar6 = 0x06
                           000005   625 	ar5 = 0x05
                           000004   626 	ar4 = 0x04
                           000003   627 	ar3 = 0x03
                           000002   628 	ar2 = 0x02
                           000001   629 	ar1 = 0x01
                           000000   630 	ar0 = 0x00
      0000E9 AE 82            [24]  631 	mov	r6,dpl
      0000EB AF 83            [24]  632 	mov	r7,dph
                           000004   633 	C$main.c$48$1$2 ==.
                                    634 ;	main.c:48: for(i=0;i<time;i++)
      0000ED 7C 00            [12]  635 	mov	r4,#0x00
      0000EF 7D 00            [12]  636 	mov	r5,#0x00
      0000F1                        637 00107$:
      0000F1 C3               [12]  638 	clr	c
      0000F2 EC               [12]  639 	mov	a,r4
      0000F3 9E               [12]  640 	subb	a,r6
      0000F4 ED               [12]  641 	mov	a,r5
      0000F5 64 80            [12]  642 	xrl	a,#0x80
      0000F7 8F F0            [24]  643 	mov	b,r7
      0000F9 63 F0 80         [24]  644 	xrl	b,#0x80
      0000FC 95 F0            [12]  645 	subb	a,b
      0000FE 50 1B            [24]  646 	jnc	00109$
                           000017   647 	C$main.c$49$1$2 ==.
                                    648 ;	main.c:49: for(j=0;j<1275;j++);
      000100 7A FB            [12]  649 	mov	r2,#0xfb
      000102 7B 04            [12]  650 	mov	r3,#0x04
      000104                        651 00105$:
      000104 EA               [12]  652 	mov	a,r2
      000105 24 FF            [12]  653 	add	a,#0xff
      000107 F8               [12]  654 	mov	r0,a
      000108 EB               [12]  655 	mov	a,r3
      000109 34 FF            [12]  656 	addc	a,#0xff
      00010B F9               [12]  657 	mov	r1,a
      00010C 88 02            [24]  658 	mov	ar2,r0
      00010E 89 03            [24]  659 	mov	ar3,r1
      000110 E8               [12]  660 	mov	a,r0
      000111 49               [12]  661 	orl	a,r1
      000112 70 F0            [24]  662 	jnz	00105$
                           00002B   663 	C$main.c$48$1$2 ==.
                                    664 ;	main.c:48: for(i=0;i<time;i++)
      000114 0C               [12]  665 	inc	r4
      000115 BC 00 D9         [24]  666 	cjne	r4,#0x00,00107$
      000118 0D               [12]  667 	inc	r5
      000119 80 D6            [24]  668 	sjmp	00107$
      00011B                        669 00109$:
                           000032   670 	C$main.c$50$1$2 ==.
                           000032   671 	XG$delay$0$0 ==.
      00011B 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'setfn'
                                    675 ;------------------------------------------------------------
                           000033   676 	G$setfn$0$0 ==.
                           000033   677 	C$main.c$52$1$2 ==.
                                    678 ;	main.c:52: int setfn()  // Function to select miniute and seconds digit set time.
                                    679 ;	-----------------------------------------
                                    680 ;	 function setfn
                                    681 ;	-----------------------------------------
      00011C                        682 _setfn:
                           000033   683 	C$main.c$54$4$6 ==.
                                    684 ;	main.c:54: while(set==0)
      00011C                        685 00114$:
      00011C 30 96 03         [24]  686 	jnb	_P1_6,00149$
      00011F 02 01 EC         [24]  687 	ljmp	00116$
      000122                        688 00149$:
                           000039   689 	C$main.c$56$2$4 ==.
                                    690 ;	main.c:56: switch(recnt_incr_seg)
      000122 74 01            [12]  691 	mov	a,#0x01
      000124 B5 25 06         [24]  692 	cjne	a,_recnt_incr_seg,00150$
      000127 14               [12]  693 	dec	a
      000128 B5 26 02         [24]  694 	cjne	a,(_recnt_incr_seg + 1),00150$
      00012B 80 23            [24]  695 	sjmp	00101$
      00012D                        696 00150$:
      00012D 74 02            [12]  697 	mov	a,#0x02
      00012F B5 25 06         [24]  698 	cjne	a,_recnt_incr_seg,00151$
      000132 E4               [12]  699 	clr	a
      000133 B5 26 02         [24]  700 	cjne	a,(_recnt_incr_seg + 1),00151$
      000136 80 3C            [24]  701 	sjmp	00104$
      000138                        702 00151$:
      000138 74 03            [12]  703 	mov	a,#0x03
      00013A B5 25 06         [24]  704 	cjne	a,_recnt_incr_seg,00152$
      00013D E4               [12]  705 	clr	a
      00013E B5 26 02         [24]  706 	cjne	a,(_recnt_incr_seg + 1),00152$
      000141 80 55            [24]  707 	sjmp	00107$
      000143                        708 00152$:
      000143 74 04            [12]  709 	mov	a,#0x04
      000145 B5 25 06         [24]  710 	cjne	a,_recnt_incr_seg,00153$
      000148 E4               [12]  711 	clr	a
      000149 B5 26 02         [24]  712 	cjne	a,(_recnt_incr_seg + 1),00153$
      00014C 80 6E            [24]  713 	sjmp	00110$
      00014E                        714 00153$:
                           000065   715 	C$main.c$59$3$5 ==.
                                    716 ;	main.c:59: case 1:
      00014E 80 CC            [24]  717 	sjmp	00114$
      000150                        718 00101$:
                           000067   719 	C$main.c$60$3$5 ==.
                                    720 ;	main.c:60: if(set==0)  //Select the min2 digit
      000150 20 96 21         [24]  721 	jb	_P1_6,00104$
                           00006A   722 	C$main.c$62$4$6 ==.
                                    723 ;	main.c:62: dig_ctrl_4=1;
      000153 D2 90            [12]  724 	setb	_P1_0
                           00006C   725 	C$main.c$63$4$6 ==.
                                    726 ;	main.c:63: dig_ctrl_3=0;
      000155 C2 91            [12]  727 	clr	_P1_1
                           00006E   728 	C$main.c$64$4$6 ==.
                                    729 ;	main.c:64: dig_ctrl_2=0;
      000157 C2 92            [12]  730 	clr	_P1_2
                           000070   731 	C$main.c$65$4$6 ==.
                                    732 ;	main.c:65: dig_ctrl_1=0;
      000159 C2 93            [12]  733 	clr	_P1_3
                           000072   734 	C$main.c$66$4$6 ==.
                                    735 ;	main.c:66: recnt_incr_seg=1;
      00015B 75 25 01         [24]  736 	mov	_recnt_incr_seg,#0x01
      00015E 75 26 00         [24]  737 	mov	(_recnt_incr_seg + 1),#0x00
                           000078   738 	C$main.c$67$4$6 ==.
                                    739 ;	main.c:67: ret_seg_to_incre=1;
      000161 75 23 01         [24]  740 	mov	_ret_seg_to_incre,#0x01
      000164 75 24 00         [24]  741 	mov	(_ret_seg_to_incre + 1),#0x00
                           00007E   742 	C$main.c$68$4$6 ==.
                                    743 ;	main.c:68: P2=dig_val[minalarm2];
      000167 E5 32            [12]  744 	mov	a,_minalarm2
      000169 24 4E            [12]  745 	add	a,#_dig_val
      00016B F9               [12]  746 	mov	r1,a
      00016C 87 A0            [24]  747 	mov	_P2,@r1
                           000085   748 	C$main.c$69$4$6 ==.
                                    749 ;	main.c:69: delay(100);
      00016E 90 00 64         [24]  750 	mov	dptr,#0x0064
      000171 12 00 E9         [24]  751 	lcall	_delay
                           00008B   752 	C$main.c$72$3$5 ==.
                                    753 ;	main.c:72: case 2:
      000174                        754 00104$:
                           00008B   755 	C$main.c$73$3$5 ==.
                                    756 ;	main.c:73: if(set==0)  //Select the min1 digit
      000174 20 96 21         [24]  757 	jb	_P1_6,00107$
                           00008E   758 	C$main.c$75$4$7 ==.
                                    759 ;	main.c:75: dig_ctrl_4=0;
      000177 C2 90            [12]  760 	clr	_P1_0
                           000090   761 	C$main.c$76$4$7 ==.
                                    762 ;	main.c:76: dig_ctrl_3=1;
      000179 D2 91            [12]  763 	setb	_P1_1
                           000092   764 	C$main.c$77$4$7 ==.
                                    765 ;	main.c:77: dig_ctrl_2=0;
      00017B C2 92            [12]  766 	clr	_P1_2
                           000094   767 	C$main.c$78$4$7 ==.
                                    768 ;	main.c:78: dig_ctrl_1=0;
      00017D C2 93            [12]  769 	clr	_P1_3
                           000096   770 	C$main.c$79$4$7 ==.
                                    771 ;	main.c:79: recnt_incr_seg=2;
      00017F 75 25 02         [24]  772 	mov	_recnt_incr_seg,#0x02
      000182 75 26 00         [24]  773 	mov	(_recnt_incr_seg + 1),#0x00
                           00009C   774 	C$main.c$80$4$7 ==.
                                    775 ;	main.c:80: ret_seg_to_incre=2;
      000185 75 23 02         [24]  776 	mov	_ret_seg_to_incre,#0x02
      000188 75 24 00         [24]  777 	mov	(_ret_seg_to_incre + 1),#0x00
                           0000A2   778 	C$main.c$81$4$7 ==.
                                    779 ;	main.c:81: P2=dig_val[minalarm1];
      00018B E5 34            [12]  780 	mov	a,_minalarm1
      00018D 24 4E            [12]  781 	add	a,#_dig_val
      00018F F9               [12]  782 	mov	r1,a
      000190 87 A0            [24]  783 	mov	_P2,@r1
                           0000A9   784 	C$main.c$82$4$7 ==.
                                    785 ;	main.c:82: delay(100);
      000192 90 00 64         [24]  786 	mov	dptr,#0x0064
      000195 12 00 E9         [24]  787 	lcall	_delay
                           0000AF   788 	C$main.c$85$3$5 ==.
                                    789 ;	main.c:85: case 3:
      000198                        790 00107$:
                           0000AF   791 	C$main.c$86$3$5 ==.
                                    792 ;	main.c:86: if(set==0)  //Select the sec 2 digit
      000198 20 96 21         [24]  793 	jb	_P1_6,00110$
                           0000B2   794 	C$main.c$88$4$8 ==.
                                    795 ;	main.c:88: dig_ctrl_4=0;
      00019B C2 90            [12]  796 	clr	_P1_0
                           0000B4   797 	C$main.c$89$4$8 ==.
                                    798 ;	main.c:89: dig_ctrl_3=0;
      00019D C2 91            [12]  799 	clr	_P1_1
                           0000B6   800 	C$main.c$90$4$8 ==.
                                    801 ;	main.c:90: dig_ctrl_2=1;
      00019F D2 92            [12]  802 	setb	_P1_2
                           0000B8   803 	C$main.c$91$4$8 ==.
                                    804 ;	main.c:91: dig_ctrl_1=0;
      0001A1 C2 93            [12]  805 	clr	_P1_3
                           0000BA   806 	C$main.c$92$4$8 ==.
                                    807 ;	main.c:92: recnt_incr_seg=3;
      0001A3 75 25 03         [24]  808 	mov	_recnt_incr_seg,#0x03
      0001A6 75 26 00         [24]  809 	mov	(_recnt_incr_seg + 1),#0x00
                           0000C0   810 	C$main.c$93$4$8 ==.
                                    811 ;	main.c:93: ret_seg_to_incre=3;
      0001A9 75 23 03         [24]  812 	mov	_ret_seg_to_incre,#0x03
      0001AC 75 24 00         [24]  813 	mov	(_ret_seg_to_incre + 1),#0x00
                           0000C6   814 	C$main.c$94$4$8 ==.
                                    815 ;	main.c:94: P2=dig_val[secalarm2];
      0001AF E5 36            [12]  816 	mov	a,_secalarm2
      0001B1 24 4E            [12]  817 	add	a,#_dig_val
      0001B3 F9               [12]  818 	mov	r1,a
      0001B4 87 A0            [24]  819 	mov	_P2,@r1
                           0000CD   820 	C$main.c$95$4$8 ==.
                                    821 ;	main.c:95: delay(100);
      0001B6 90 00 64         [24]  822 	mov	dptr,#0x0064
      0001B9 12 00 E9         [24]  823 	lcall	_delay
                           0000D3   824 	C$main.c$98$3$5 ==.
                                    825 ;	main.c:98: case 4:
      0001BC                        826 00110$:
                           0000D3   827 	C$main.c$99$3$5 ==.
                                    828 ;	main.c:99: if(set==0)  //Select the sec1 digit
      0001BC 30 96 03         [24]  829 	jnb	_P1_6,00157$
      0001BF 02 01 1C         [24]  830 	ljmp	00114$
      0001C2                        831 00157$:
                           0000D9   832 	C$main.c$101$4$9 ==.
                                    833 ;	main.c:101: recnt_incr_seg=1;
      0001C2 75 25 01         [24]  834 	mov	_recnt_incr_seg,#0x01
      0001C5 75 26 00         [24]  835 	mov	(_recnt_incr_seg + 1),#0x00
                           0000DF   836 	C$main.c$102$4$9 ==.
                                    837 ;	main.c:102: dig_ctrl_4=0;
      0001C8 C2 90            [12]  838 	clr	_P1_0
                           0000E1   839 	C$main.c$103$4$9 ==.
                                    840 ;	main.c:103: dig_ctrl_3=0;
      0001CA C2 91            [12]  841 	clr	_P1_1
                           0000E3   842 	C$main.c$104$4$9 ==.
                                    843 ;	main.c:104: dig_ctrl_2=0;
      0001CC C2 92            [12]  844 	clr	_P1_2
                           0000E5   845 	C$main.c$105$4$9 ==.
                                    846 ;	main.c:105: dig_ctrl_1=1;
      0001CE D2 93            [12]  847 	setb	_P1_3
                           0000E7   848 	C$main.c$106$4$9 ==.
                                    849 ;	main.c:106: ret_seg_to_incre=4;
      0001D0 75 23 04         [24]  850 	mov	_ret_seg_to_incre,#0x04
      0001D3 75 24 00         [24]  851 	mov	(_ret_seg_to_incre + 1),#0x00
                           0000ED   852 	C$main.c$107$4$9 ==.
                                    853 ;	main.c:107: P2=dig_val[secalarm1];
      0001D6 E5 38            [12]  854 	mov	a,_secalarm1
      0001D8 24 4E            [12]  855 	add	a,#_dig_val
      0001DA F9               [12]  856 	mov	r1,a
      0001DB 87 A0            [24]  857 	mov	_P2,@r1
                           0000F4   858 	C$main.c$108$4$9 ==.
                                    859 ;	main.c:108: delay(100);
      0001DD 90 00 64         [24]  860 	mov	dptr,#0x0064
      0001E0 12 00 E9         [24]  861 	lcall	_delay
                           0000FA   862 	C$main.c$109$4$9 ==.
                                    863 ;	main.c:109: recnt_incr_seg=1;
      0001E3 75 25 01         [24]  864 	mov	_recnt_incr_seg,#0x01
      0001E6 75 26 00         [24]  865 	mov	(_recnt_incr_seg + 1),#0x00
                           000100   866 	C$main.c$111$1$3 ==.
                                    867 ;	main.c:111: }
      0001E9 02 01 1C         [24]  868 	ljmp	00114$
      0001EC                        869 00116$:
                           000103   870 	C$main.c$113$1$3 ==.
                                    871 ;	main.c:113: return(ret_seg_to_incre);
      0001EC 85 23 82         [24]  872 	mov	dpl,_ret_seg_to_incre
      0001EF 85 24 83         [24]  873 	mov	dph,(_ret_seg_to_incre + 1)
                           000109   874 	C$main.c$114$1$3 ==.
                           000109   875 	XG$setfn$0$0 ==.
      0001F2 22               [24]  876 	ret
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'increase'
                                    879 ;------------------------------------------------------------
                                    880 ;a                         Allocated to registers r6 r7 
                                    881 ;------------------------------------------------------------
                           00010A   882 	G$increase$0$0 ==.
                           00010A   883 	C$main.c$116$1$3 ==.
                                    884 ;	main.c:116: void increase(int a)  //Function to set the minutes or seconds digit
                                    885 ;	-----------------------------------------
                                    886 ;	 function increase
                                    887 ;	-----------------------------------------
      0001F3                        888 _increase:
      0001F3 AE 82            [24]  889 	mov	r6,dpl
      0001F5 AF 83            [24]  890 	mov	r7,dph
                           00010E   891 	C$main.c$118$2$12 ==.
                                    892 ;	main.c:118: while(incr==0)
      0001F7 BE 01 06         [24]  893 	cjne	r6,#0x01,00149$
      0001FA BF 00 03         [24]  894 	cjne	r7,#0x00,00149$
      0001FD EE               [12]  895 	mov	a,r6
      0001FE 80 01            [24]  896 	sjmp	00150$
      000200                        897 00149$:
      000200 E4               [12]  898 	clr	a
      000201                        899 00150$:
      000201 FD               [12]  900 	mov	r5,a
      000202 E4               [12]  901 	clr	a
      000203 BE 02 04         [24]  902 	cjne	r6,#0x02,00151$
      000206 BF 00 01         [24]  903 	cjne	r7,#0x00,00151$
      000209 04               [12]  904 	inc	a
      00020A                        905 00151$:
      00020A FC               [12]  906 	mov	r4,a
      00020B E4               [12]  907 	clr	a
      00020C BE 03 04         [24]  908 	cjne	r6,#0x03,00153$
      00020F BF 00 01         [24]  909 	cjne	r7,#0x00,00153$
      000212 04               [12]  910 	inc	a
      000213                        911 00153$:
      000213 FB               [12]  912 	mov	r3,a
      000214 E4               [12]  913 	clr	a
      000215 BE 04 04         [24]  914 	cjne	r6,#0x04,00155$
      000218 BF 00 01         [24]  915 	cjne	r7,#0x00,00155$
      00021B 04               [12]  916 	inc	a
      00021C                        917 00155$:
      00021C FF               [12]  918 	mov	r7,a
      00021D                        919 00114$:
      00021D 30 97 03         [24]  920 	jnb	_P1_7,00157$
      000220 02 03 90         [24]  921 	ljmp	00117$
      000223                        922 00157$:
                           00013A   923 	C$main.c$120$2$12 ==.
                                    924 ;	main.c:120: switch(a)
      000223 ED               [12]  925 	mov	a,r5
      000224 70 0F            [24]  926 	jnz	00101$
      000226 EC               [12]  927 	mov	a,r4
      000227 70 62            [24]  928 	jnz	00104$
      000229 EB               [12]  929 	mov	a,r3
      00022A 60 03            [24]  930 	jz	00160$
      00022C 02 02 E2         [24]  931 	ljmp	00107$
      00022F                        932 00160$:
      00022F EF               [12]  933 	mov	a,r7
      000230 60 EB            [24]  934 	jz	00114$
                           000149   935 	C$main.c$123$3$13 ==.
                                    936 ;	main.c:123: case 1:  // Set the min2 digit.
      000232 02 03 39         [24]  937 	ljmp	00110$
      000235                        938 00101$:
                           00014C   939 	C$main.c$124$3$13 ==.
                                    940 ;	main.c:124: P2=dig_val[minalarm2];
      000235 E5 32            [12]  941 	mov	a,_minalarm2
      000237 24 4E            [12]  942 	add	a,#_dig_val
      000239 F9               [12]  943 	mov	r1,a
      00023A 87 A0            [24]  944 	mov	_P2,@r1
                           000153   945 	C$main.c$125$3$13 ==.
                                    946 ;	main.c:125: delay(100);
      00023C 90 00 64         [24]  947 	mov	dptr,#0x0064
      00023F C0 07            [24]  948 	push	ar7
      000241 C0 05            [24]  949 	push	ar5
      000243 C0 04            [24]  950 	push	ar4
      000245 C0 03            [24]  951 	push	ar3
      000247 12 00 E9         [24]  952 	lcall	_delay
      00024A D0 03            [24]  953 	pop	ar3
      00024C D0 04            [24]  954 	pop	ar4
      00024E D0 05            [24]  955 	pop	ar5
      000250 D0 07            [24]  956 	pop	ar7
                           000169   957 	C$main.c$126$3$13 ==.
                                    958 ;	main.c:126: minalarm2++;
      000252 05 32            [12]  959 	inc	_minalarm2
      000254 E4               [12]  960 	clr	a
      000255 B5 32 02         [24]  961 	cjne	a,_minalarm2,00162$
      000258 05 33            [12]  962 	inc	(_minalarm2 + 1)
      00025A                        963 00162$:
                           000171   964 	C$main.c$127$3$13 ==.
                                    965 ;	main.c:127: if(minalarm2==6)
      00025A 74 06            [12]  966 	mov	a,#0x06
      00025C B5 32 06         [24]  967 	cjne	a,_minalarm2,00163$
      00025F E4               [12]  968 	clr	a
      000260 B5 33 02         [24]  969 	cjne	a,(_minalarm2 + 1),00163$
      000263 80 02            [24]  970 	sjmp	00164$
      000265                        971 00163$:
      000265 80 05            [24]  972 	sjmp	00103$
      000267                        973 00164$:
                           00017E   974 	C$main.c$128$3$13 ==.
                                    975 ;	main.c:128: minalarm2=0;
      000267 E4               [12]  976 	clr	a
      000268 F5 32            [12]  977 	mov	_minalarm2,a
      00026A F5 33            [12]  978 	mov	(_minalarm2 + 1),a
      00026C                        979 00103$:
                           000183   980 	C$main.c$129$3$13 ==.
                                    981 ;	main.c:129: P2=dig_val[minalarm2];
      00026C E5 32            [12]  982 	mov	a,_minalarm2
      00026E 24 4E            [12]  983 	add	a,#_dig_val
      000270 F9               [12]  984 	mov	r1,a
      000271 87 A0            [24]  985 	mov	_P2,@r1
                           00018A   986 	C$main.c$130$3$13 ==.
                                    987 ;	main.c:130: delay(20);
      000273 90 00 14         [24]  988 	mov	dptr,#0x0014
      000276 C0 07            [24]  989 	push	ar7
      000278 C0 05            [24]  990 	push	ar5
      00027A C0 04            [24]  991 	push	ar4
      00027C C0 03            [24]  992 	push	ar3
      00027E 12 00 E9         [24]  993 	lcall	_delay
      000281 D0 03            [24]  994 	pop	ar3
      000283 D0 04            [24]  995 	pop	ar4
      000285 D0 05            [24]  996 	pop	ar5
      000287 D0 07            [24]  997 	pop	ar7
                           0001A0   998 	C$main.c$131$3$13 ==.
                                    999 ;	main.c:131: break;
                           0001A0  1000 	C$main.c$133$3$13 ==.
                                   1001 ;	main.c:133: case 2:  //Set the min1 digit.
      000289 80 92            [24] 1002 	sjmp	00114$
      00028B                       1003 00104$:
                           0001A2  1004 	C$main.c$134$3$13 ==.
                                   1005 ;	main.c:134: P2=dig_val[minalarm1];
      00028B E5 34            [12] 1006 	mov	a,_minalarm1
      00028D 24 4E            [12] 1007 	add	a,#_dig_val
      00028F F9               [12] 1008 	mov	r1,a
      000290 87 A0            [24] 1009 	mov	_P2,@r1
                           0001A9  1010 	C$main.c$135$3$13 ==.
                                   1011 ;	main.c:135: delay(100);
      000292 90 00 64         [24] 1012 	mov	dptr,#0x0064
      000295 C0 07            [24] 1013 	push	ar7
      000297 C0 05            [24] 1014 	push	ar5
      000299 C0 04            [24] 1015 	push	ar4
      00029B C0 03            [24] 1016 	push	ar3
      00029D 12 00 E9         [24] 1017 	lcall	_delay
      0002A0 D0 03            [24] 1018 	pop	ar3
      0002A2 D0 04            [24] 1019 	pop	ar4
      0002A4 D0 05            [24] 1020 	pop	ar5
      0002A6 D0 07            [24] 1021 	pop	ar7
                           0001BF  1022 	C$main.c$136$3$13 ==.
                                   1023 ;	main.c:136: minalarm1++;
      0002A8 05 34            [12] 1024 	inc	_minalarm1
      0002AA E4               [12] 1025 	clr	a
      0002AB B5 34 02         [24] 1026 	cjne	a,_minalarm1,00165$
      0002AE 05 35            [12] 1027 	inc	(_minalarm1 + 1)
      0002B0                       1028 00165$:
                           0001C7  1029 	C$main.c$137$3$13 ==.
                                   1030 ;	main.c:137: if(minalarm1==10)
      0002B0 74 0A            [12] 1031 	mov	a,#0x0a
      0002B2 B5 34 06         [24] 1032 	cjne	a,_minalarm1,00166$
      0002B5 E4               [12] 1033 	clr	a
      0002B6 B5 35 02         [24] 1034 	cjne	a,(_minalarm1 + 1),00166$
      0002B9 80 02            [24] 1035 	sjmp	00167$
      0002BB                       1036 00166$:
      0002BB 80 05            [24] 1037 	sjmp	00106$
      0002BD                       1038 00167$:
                           0001D4  1039 	C$main.c$138$3$13 ==.
                                   1040 ;	main.c:138: minalarm1=0;
      0002BD E4               [12] 1041 	clr	a
      0002BE F5 34            [12] 1042 	mov	_minalarm1,a
      0002C0 F5 35            [12] 1043 	mov	(_minalarm1 + 1),a
      0002C2                       1044 00106$:
                           0001D9  1045 	C$main.c$139$3$13 ==.
                                   1046 ;	main.c:139: P2=dig_val[minalarm1];
      0002C2 E5 34            [12] 1047 	mov	a,_minalarm1
      0002C4 24 4E            [12] 1048 	add	a,#_dig_val
      0002C6 F9               [12] 1049 	mov	r1,a
      0002C7 87 A0            [24] 1050 	mov	_P2,@r1
                           0001E0  1051 	C$main.c$140$3$13 ==.
                                   1052 ;	main.c:140: delay(20);
      0002C9 90 00 14         [24] 1053 	mov	dptr,#0x0014
      0002CC C0 07            [24] 1054 	push	ar7
      0002CE C0 05            [24] 1055 	push	ar5
      0002D0 C0 04            [24] 1056 	push	ar4
      0002D2 C0 03            [24] 1057 	push	ar3
      0002D4 12 00 E9         [24] 1058 	lcall	_delay
      0002D7 D0 03            [24] 1059 	pop	ar3
      0002D9 D0 04            [24] 1060 	pop	ar4
      0002DB D0 05            [24] 1061 	pop	ar5
      0002DD D0 07            [24] 1062 	pop	ar7
                           0001F6  1063 	C$main.c$141$3$13 ==.
                                   1064 ;	main.c:141: break;
      0002DF 02 02 1D         [24] 1065 	ljmp	00114$
                           0001F9  1066 	C$main.c$143$3$13 ==.
                                   1067 ;	main.c:143: case 3:  // Set the sec2 digit.
      0002E2                       1068 00107$:
                           0001F9  1069 	C$main.c$144$3$13 ==.
                                   1070 ;	main.c:144: P2=dig_val[secalarm2];
      0002E2 E5 36            [12] 1071 	mov	a,_secalarm2
      0002E4 24 4E            [12] 1072 	add	a,#_dig_val
      0002E6 F9               [12] 1073 	mov	r1,a
      0002E7 87 A0            [24] 1074 	mov	_P2,@r1
                           000200  1075 	C$main.c$145$3$13 ==.
                                   1076 ;	main.c:145: delay(100);
      0002E9 90 00 64         [24] 1077 	mov	dptr,#0x0064
      0002EC C0 07            [24] 1078 	push	ar7
      0002EE C0 05            [24] 1079 	push	ar5
      0002F0 C0 04            [24] 1080 	push	ar4
      0002F2 C0 03            [24] 1081 	push	ar3
      0002F4 12 00 E9         [24] 1082 	lcall	_delay
      0002F7 D0 03            [24] 1083 	pop	ar3
      0002F9 D0 04            [24] 1084 	pop	ar4
      0002FB D0 05            [24] 1085 	pop	ar5
      0002FD D0 07            [24] 1086 	pop	ar7
                           000216  1087 	C$main.c$146$3$13 ==.
                                   1088 ;	main.c:146: secalarm2++;
      0002FF 05 36            [12] 1089 	inc	_secalarm2
      000301 E4               [12] 1090 	clr	a
      000302 B5 36 02         [24] 1091 	cjne	a,_secalarm2,00168$
      000305 05 37            [12] 1092 	inc	(_secalarm2 + 1)
      000307                       1093 00168$:
                           00021E  1094 	C$main.c$147$3$13 ==.
                                   1095 ;	main.c:147: if(secalarm2==6)
      000307 74 06            [12] 1096 	mov	a,#0x06
      000309 B5 36 06         [24] 1097 	cjne	a,_secalarm2,00169$
      00030C E4               [12] 1098 	clr	a
      00030D B5 37 02         [24] 1099 	cjne	a,(_secalarm2 + 1),00169$
      000310 80 02            [24] 1100 	sjmp	00170$
      000312                       1101 00169$:
      000312 80 05            [24] 1102 	sjmp	00109$
      000314                       1103 00170$:
                           00022B  1104 	C$main.c$148$3$13 ==.
                                   1105 ;	main.c:148: secalarm2=0;
      000314 E4               [12] 1106 	clr	a
      000315 F5 36            [12] 1107 	mov	_secalarm2,a
      000317 F5 37            [12] 1108 	mov	(_secalarm2 + 1),a
      000319                       1109 00109$:
                           000230  1110 	C$main.c$149$3$13 ==.
                                   1111 ;	main.c:149: P2=dig_val[secalarm2];
      000319 E5 36            [12] 1112 	mov	a,_secalarm2
      00031B 24 4E            [12] 1113 	add	a,#_dig_val
      00031D F9               [12] 1114 	mov	r1,a
      00031E 87 A0            [24] 1115 	mov	_P2,@r1
                           000237  1116 	C$main.c$150$3$13 ==.
                                   1117 ;	main.c:150: delay(20);
      000320 90 00 14         [24] 1118 	mov	dptr,#0x0014
      000323 C0 07            [24] 1119 	push	ar7
      000325 C0 05            [24] 1120 	push	ar5
      000327 C0 04            [24] 1121 	push	ar4
      000329 C0 03            [24] 1122 	push	ar3
      00032B 12 00 E9         [24] 1123 	lcall	_delay
      00032E D0 03            [24] 1124 	pop	ar3
      000330 D0 04            [24] 1125 	pop	ar4
      000332 D0 05            [24] 1126 	pop	ar5
      000334 D0 07            [24] 1127 	pop	ar7
                           00024D  1128 	C$main.c$151$3$13 ==.
                                   1129 ;	main.c:151: break;
      000336 02 02 1D         [24] 1130 	ljmp	00114$
                           000250  1131 	C$main.c$153$3$13 ==.
                                   1132 ;	main.c:153: case 4:  //Set the sec1 digit.
      000339                       1133 00110$:
                           000250  1134 	C$main.c$155$3$13 ==.
                                   1135 ;	main.c:155: P2=dig_val[secalarm1];
      000339 E5 38            [12] 1136 	mov	a,_secalarm1
      00033B 24 4E            [12] 1137 	add	a,#_dig_val
      00033D F9               [12] 1138 	mov	r1,a
      00033E 87 A0            [24] 1139 	mov	_P2,@r1
                           000257  1140 	C$main.c$156$3$13 ==.
                                   1141 ;	main.c:156: delay(100);
      000340 90 00 64         [24] 1142 	mov	dptr,#0x0064
      000343 C0 07            [24] 1143 	push	ar7
      000345 C0 05            [24] 1144 	push	ar5
      000347 C0 04            [24] 1145 	push	ar4
      000349 C0 03            [24] 1146 	push	ar3
      00034B 12 00 E9         [24] 1147 	lcall	_delay
      00034E D0 03            [24] 1148 	pop	ar3
      000350 D0 04            [24] 1149 	pop	ar4
      000352 D0 05            [24] 1150 	pop	ar5
      000354 D0 07            [24] 1151 	pop	ar7
                           00026D  1152 	C$main.c$157$3$13 ==.
                                   1153 ;	main.c:157: secalarm1++;
      000356 05 38            [12] 1154 	inc	_secalarm1
      000358 E4               [12] 1155 	clr	a
      000359 B5 38 02         [24] 1156 	cjne	a,_secalarm1,00171$
      00035C 05 39            [12] 1157 	inc	(_secalarm1 + 1)
      00035E                       1158 00171$:
                           000275  1159 	C$main.c$158$3$13 ==.
                                   1160 ;	main.c:158: if(secalarm1==10)
      00035E 74 0A            [12] 1161 	mov	a,#0x0a
      000360 B5 38 06         [24] 1162 	cjne	a,_secalarm1,00172$
      000363 E4               [12] 1163 	clr	a
      000364 B5 39 02         [24] 1164 	cjne	a,(_secalarm1 + 1),00172$
      000367 80 02            [24] 1165 	sjmp	00173$
      000369                       1166 00172$:
      000369 80 05            [24] 1167 	sjmp	00112$
      00036B                       1168 00173$:
                           000282  1169 	C$main.c$159$3$13 ==.
                                   1170 ;	main.c:159: secalarm1=0;
      00036B E4               [12] 1171 	clr	a
      00036C F5 38            [12] 1172 	mov	_secalarm1,a
      00036E F5 39            [12] 1173 	mov	(_secalarm1 + 1),a
      000370                       1174 00112$:
                           000287  1175 	C$main.c$160$3$13 ==.
                                   1176 ;	main.c:160: P2=dig_val[secalarm1];
      000370 E5 38            [12] 1177 	mov	a,_secalarm1
      000372 24 4E            [12] 1178 	add	a,#_dig_val
      000374 F9               [12] 1179 	mov	r1,a
      000375 87 A0            [24] 1180 	mov	_P2,@r1
                           00028E  1181 	C$main.c$161$3$13 ==.
                                   1182 ;	main.c:161: delay(20);
      000377 90 00 14         [24] 1183 	mov	dptr,#0x0014
      00037A C0 07            [24] 1184 	push	ar7
      00037C C0 05            [24] 1185 	push	ar5
      00037E C0 04            [24] 1186 	push	ar4
      000380 C0 03            [24] 1187 	push	ar3
      000382 12 00 E9         [24] 1188 	lcall	_delay
      000385 D0 03            [24] 1189 	pop	ar3
      000387 D0 04            [24] 1190 	pop	ar4
      000389 D0 05            [24] 1191 	pop	ar5
      00038B D0 07            [24] 1192 	pop	ar7
                           0002A4  1193 	C$main.c$163$1$11 ==.
                                   1194 ;	main.c:163: }
      00038D 02 02 1D         [24] 1195 	ljmp	00114$
      000390                       1196 00117$:
                           0002A7  1197 	C$main.c$165$1$11 ==.
                           0002A7  1198 	XG$increase$0$0 ==.
      000390 22               [24] 1199 	ret
                                   1200 ;------------------------------------------------------------
                                   1201 ;Allocation info for local variables in function 'resetfn'
                                   1202 ;------------------------------------------------------------
                           0002A8  1203 	G$resetfn$0$0 ==.
                           0002A8  1204 	C$main.c$167$1$11 ==.
                                   1205 ;	main.c:167: void resetfn(__bit mode)  // Function to bring the clock to reset or set mode.
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function resetfn
                                   1208 ;	-----------------------------------------
      000391                       1209 _resetfn:
                           0002A8  1210 	C$main.c$169$1$15 ==.
                                   1211 ;	main.c:169: begin=1;
      000391 75 27 01         [24] 1212 	mov	_begin,#0x01
      000394 75 28 00         [24] 1213 	mov	(_begin + 1),#0x00
                           0002AE  1214 	C$main.c$170$1$15 ==.
                                   1215 ;	main.c:170: dig_ctrl_4=1;  //Enable the min2 digit and disable others
      000397 D2 90            [12] 1216 	setb	_P1_0
                           0002B0  1217 	C$main.c$171$1$15 ==.
                                   1218 ;	main.c:171: dig_ctrl_3=0;
      000399 C2 91            [12] 1219 	clr	_P1_1
                           0002B2  1220 	C$main.c$172$1$15 ==.
                                   1221 ;	main.c:172: dig_ctrl_2=0;
      00039B C2 92            [12] 1222 	clr	_P1_2
                           0002B4  1223 	C$main.c$173$1$15 ==.
                                   1224 ;	main.c:173: dig_ctrl_1=0;
      00039D C2 93            [12] 1225 	clr	_P1_3
                           0002B6  1226 	C$main.c$174$1$15 ==.
                                   1227 ;	main.c:174: if(mode==0)  //Check if clock is in set alarm mode
      00039F 20 00 34         [24] 1228 	jb	_resetfn_PARM_1,00102$
                           0002B9  1229 	C$main.c$176$2$16 ==.
                                   1230 ;	main.c:176: IE=0x88;  //Disable Timer0 interrupt to stop the display of clock.
      0003A2 75 A8 88         [24] 1231 	mov	_IE,#0x88
                           0002BC  1232 	C$main.c$177$2$16 ==.
                                   1233 ;	main.c:177: sel_seg_to_incr=1;
      0003A5 75 21 01         [24] 1234 	mov	_sel_seg_to_incr,#0x01
      0003A8 75 22 00         [24] 1235 	mov	(_sel_seg_to_incr + 1),#0x00
                           0002C2  1236 	C$main.c$178$2$16 ==.
                                   1237 ;	main.c:178: recnt_incr_seg=1;
      0003AB 75 25 01         [24] 1238 	mov	_recnt_incr_seg,#0x01
      0003AE 75 26 00         [24] 1239 	mov	(_recnt_incr_seg + 1),#0x00
                           0002C8  1240 	C$main.c$179$2$16 ==.
                                   1241 ;	main.c:179: P2=dig_val[keepmin2];
      0003B1 E5 42            [12] 1242 	mov	a,_keepmin2
      0003B3 24 4E            [12] 1243 	add	a,#_dig_val
      0003B5 F9               [12] 1244 	mov	r1,a
      0003B6 87 A0            [24] 1245 	mov	_P2,@r1
                           0002CF  1246 	C$main.c$180$2$16 ==.
                                   1247 ;	main.c:180: delay(100);
      0003B8 90 00 64         [24] 1248 	mov	dptr,#0x0064
      0003BB 12 00 E9         [24] 1249 	lcall	_delay
                           0002D5  1250 	C$main.c$181$2$16 ==.
                                   1251 ;	main.c:181: minalarm2=keepmin2;
      0003BE 85 42 32         [24] 1252 	mov	_minalarm2,_keepmin2
      0003C1 85 43 33         [24] 1253 	mov	(_minalarm2 + 1),(_keepmin2 + 1)
                           0002DB  1254 	C$main.c$182$2$16 ==.
                                   1255 ;	main.c:182: minalarm1=keepmin1;
      0003C4 85 44 34         [24] 1256 	mov	_minalarm1,_keepmin1
      0003C7 85 45 35         [24] 1257 	mov	(_minalarm1 + 1),(_keepmin1 + 1)
                           0002E1  1258 	C$main.c$183$2$16 ==.
                                   1259 ;	main.c:183: secalarm2=keepsec2;
      0003CA 85 46 36         [24] 1260 	mov	_secalarm2,_keepsec2
      0003CD 85 47 37         [24] 1261 	mov	(_secalarm2 + 1),(_keepsec2 + 1)
                           0002E7  1262 	C$main.c$184$2$16 ==.
                                   1263 ;	main.c:184: secalarm1=keepsec1;
      0003D0 85 48 38         [24] 1264 	mov	_secalarm1,_keepsec1
      0003D3 85 49 39         [24] 1265 	mov	(_secalarm1 + 1),(_keepsec1 + 1)
      0003D6                       1266 00102$:
                           0002ED  1267 	C$main.c$186$1$15 ==.
                                   1268 ;	main.c:186: if(mode==1)  //Check if clock is in set clock mode
      0003D6 30 00 34         [24] 1269 	jnb	_resetfn_PARM_1,00116$
                           0002F0  1270 	C$main.c$188$2$17 ==.
                                   1271 ;	main.c:188: IE=0x80;  //Disable Timer0 interrupt to stop the clock.
      0003D9 75 A8 80         [24] 1272 	mov	_IE,#0x80
                           0002F3  1273 	C$main.c$189$2$17 ==.
                                   1274 ;	main.c:189: minalarm2=min2;
      0003DC 85 2A 32         [24] 1275 	mov	_minalarm2,_min2
      0003DF 85 2B 33         [24] 1276 	mov	(_minalarm2 + 1),(_min2 + 1)
                           0002F9  1277 	C$main.c$190$2$17 ==.
                                   1278 ;	main.c:190: minalarm1=min1;
      0003E2 85 2C 34         [24] 1279 	mov	_minalarm1,_min1
      0003E5 85 2D 35         [24] 1280 	mov	(_minalarm1 + 1),(_min1 + 1)
                           0002FF  1281 	C$main.c$191$2$17 ==.
                                   1282 ;	main.c:191: secalarm2=sec2;
      0003E8 85 2E 36         [24] 1283 	mov	_secalarm2,_sec2
      0003EB 85 2F 37         [24] 1284 	mov	(_secalarm2 + 1),(_sec2 + 1)
                           000305  1285 	C$main.c$192$2$17 ==.
                                   1286 ;	main.c:192: secalarm1=sec1;
      0003EE 85 30 38         [24] 1287 	mov	_secalarm1,_sec1
      0003F1 85 31 39         [24] 1288 	mov	(_secalarm1 + 1),(_sec1 + 1)
                           00030B  1289 	C$main.c$193$2$17 ==.
                                   1290 ;	main.c:193: sel_seg_to_incr=1;
      0003F4 75 21 01         [24] 1291 	mov	_sel_seg_to_incr,#0x01
      0003F7 75 22 00         [24] 1292 	mov	(_sel_seg_to_incr + 1),#0x00
                           000311  1293 	C$main.c$194$2$17 ==.
                                   1294 ;	main.c:194: recnt_incr_seg=1;
      0003FA 75 25 01         [24] 1295 	mov	_recnt_incr_seg,#0x01
      0003FD 75 26 00         [24] 1296 	mov	(_recnt_incr_seg + 1),#0x00
                           000317  1297 	C$main.c$195$2$17 ==.
                                   1298 ;	main.c:195: P2=dig_val[min2];
      000400 E5 2A            [12] 1299 	mov	a,_min2
      000402 24 4E            [12] 1300 	add	a,#_dig_val
      000404 F9               [12] 1301 	mov	r1,a
      000405 87 A0            [24] 1302 	mov	_P2,@r1
                           00031E  1303 	C$main.c$196$2$17 ==.
                                   1304 ;	main.c:196: delay(100);
      000407 90 00 64         [24] 1305 	mov	dptr,#0x0064
      00040A 12 00 E9         [24] 1306 	lcall	_delay
                           000324  1307 	C$main.c$198$1$15 ==.
                                   1308 ;	main.c:198: while(1)
      00040D                       1309 00116$:
                           000324  1310 	C$main.c$200$2$18 ==.
                                   1311 ;	main.c:200: if(start==0)  //Check if start pin is pressed
      00040D 20 B3 5E         [24] 1312 	jb	_P3_3,00110$
                           000327  1313 	C$main.c$202$3$19 ==.
                                   1314 ;	main.c:202: if(mode==0)
      000410 20 00 30         [24] 1315 	jb	_resetfn_PARM_1,00106$
                           00032A  1316 	C$main.c$204$4$20 ==.
                                   1317 ;	main.c:204: keepmin2=minalarm2;
      000413 85 32 42         [24] 1318 	mov	_keepmin2,_minalarm2
      000416 85 33 43         [24] 1319 	mov	(_keepmin2 + 1),(_minalarm2 + 1)
                           000330  1320 	C$main.c$205$4$20 ==.
                                   1321 ;	main.c:205: keepmin1=minalarm1;
      000419 85 34 44         [24] 1322 	mov	_keepmin1,_minalarm1
      00041C 85 35 45         [24] 1323 	mov	(_keepmin1 + 1),(_minalarm1 + 1)
                           000336  1324 	C$main.c$206$4$20 ==.
                                   1325 ;	main.c:206: keepsec2=secalarm2;
      00041F 85 36 46         [24] 1326 	mov	_keepsec2,_secalarm2
      000422 85 37 47         [24] 1327 	mov	(_keepsec2 + 1),(_secalarm2 + 1)
                           00033C  1328 	C$main.c$207$4$20 ==.
                                   1329 ;	main.c:207: keepsec1=secalarm1;
      000425 85 38 48         [24] 1330 	mov	_keepsec1,_secalarm1
      000428 85 39 49         [24] 1331 	mov	(_keepsec1 + 1),(_secalarm1 + 1)
                           000342  1332 	C$main.c$208$4$20 ==.
                                   1333 ;	main.c:208: alarmmin2=minalarm2;
      00042B 85 32 3A         [24] 1334 	mov	_alarmmin2,_minalarm2
      00042E 85 33 3B         [24] 1335 	mov	(_alarmmin2 + 1),(_minalarm2 + 1)
                           000348  1336 	C$main.c$209$4$20 ==.
                                   1337 ;	main.c:209: alarmmin1=minalarm1;
      000431 85 34 3C         [24] 1338 	mov	_alarmmin1,_minalarm1
      000434 85 35 3D         [24] 1339 	mov	(_alarmmin1 + 1),(_minalarm1 + 1)
                           00034E  1340 	C$main.c$210$4$20 ==.
                                   1341 ;	main.c:210: alarmsec2=secalarm2;
      000437 85 36 3E         [24] 1342 	mov	_alarmsec2,_secalarm2
      00043A 85 37 3F         [24] 1343 	mov	(_alarmsec2 + 1),(_secalarm2 + 1)
                           000354  1344 	C$main.c$211$4$20 ==.
                                   1345 ;	main.c:211: alarmsec1=secalarm1;
      00043D 85 38 40         [24] 1346 	mov	_alarmsec1,_secalarm1
      000440 85 39 41         [24] 1347 	mov	(_alarmsec1 + 1),(_secalarm1 + 1)
      000443                       1348 00106$:
                           00035A  1349 	C$main.c$213$3$19 ==.
                                   1350 ;	main.c:213: if(mode==1)
      000443 30 00 18         [24] 1351 	jnb	_resetfn_PARM_1,00108$
                           00035D  1352 	C$main.c$215$4$21 ==.
                                   1353 ;	main.c:215: min2=minalarm2;
      000446 85 32 2A         [24] 1354 	mov	_min2,_minalarm2
      000449 85 33 2B         [24] 1355 	mov	(_min2 + 1),(_minalarm2 + 1)
                           000363  1356 	C$main.c$216$4$21 ==.
                                   1357 ;	main.c:216: min1=minalarm1;
      00044C 85 34 2C         [24] 1358 	mov	_min1,_minalarm1
      00044F 85 35 2D         [24] 1359 	mov	(_min1 + 1),(_minalarm1 + 1)
                           000369  1360 	C$main.c$217$4$21 ==.
                                   1361 ;	main.c:217: sec2=secalarm2;
      000452 85 36 2E         [24] 1362 	mov	_sec2,_secalarm2
      000455 85 37 2F         [24] 1363 	mov	(_sec2 + 1),(_secalarm2 + 1)
                           00036F  1364 	C$main.c$218$4$21 ==.
                                   1365 ;	main.c:218: sec1=secalarm1;
      000458 85 38 30         [24] 1366 	mov	_sec1,_secalarm1
      00045B 85 39 31         [24] 1367 	mov	(_sec1 + 1),(_secalarm1 + 1)
      00045E                       1368 00108$:
                           000375  1369 	C$main.c$220$3$19 ==.
                                   1370 ;	main.c:220: TMOD=0x11;  //Reset the timer0
      00045E 75 89 11         [24] 1371 	mov	_TMOD,#0x11
                           000378  1372 	C$main.c$221$3$19 ==.
                                   1373 ;	main.c:221: TL0=0xf6;
      000461 75 8A F6         [24] 1374 	mov	_TL0,#0xf6
                           00037B  1375 	C$main.c$222$3$19 ==.
                                   1376 ;	main.c:222: TH0=0xFf;
      000464 75 8C FF         [24] 1377 	mov	_TH0,#0xff
                           00037E  1378 	C$main.c$223$3$19 ==.
                                   1379 ;	main.c:223: IE=0x8A;  //Enabling Timer0 interrupt to start the display of clock
      000467 75 A8 8A         [24] 1380 	mov	_IE,#0x8a
                           000381  1381 	C$main.c$224$3$19 ==.
                                   1382 ;	main.c:224: TR0=1;
      00046A D2 8C            [12] 1383 	setb	_TR0
                           000383  1384 	C$main.c$225$3$19 ==.
                                   1385 ;	main.c:225: break;
      00046C 80 1A            [24] 1386 	sjmp	00118$
      00046E                       1387 00110$:
                           000385  1388 	C$main.c$227$2$18 ==.
                                   1389 ;	main.c:227: if(set==0)  //Check if set pin is pressed
      00046E 20 96 09         [24] 1390 	jb	_P1_6,00112$
                           000388  1391 	C$main.c$228$2$18 ==.
                                   1392 ;	main.c:228: sel_seg_to_incr=setfn();
      000471 12 01 1C         [24] 1393 	lcall	_setfn
      000474 85 82 21         [24] 1394 	mov	_sel_seg_to_incr,dpl
      000477 85 83 22         [24] 1395 	mov	(_sel_seg_to_incr + 1),dph
      00047A                       1396 00112$:
                           000391  1397 	C$main.c$229$2$18 ==.
                                   1398 ;	main.c:229: if(incr==0)  //Check if incr pin is pressed
      00047A 20 97 90         [24] 1399 	jb	_P1_7,00116$
                           000394  1400 	C$main.c$230$2$18 ==.
                                   1401 ;	main.c:230: increase(sel_seg_to_incr);
      00047D 85 21 82         [24] 1402 	mov	dpl,_sel_seg_to_incr
      000480 85 22 83         [24] 1403 	mov	dph,(_sel_seg_to_incr + 1)
      000483 12 01 F3         [24] 1404 	lcall	_increase
      000486 80 85            [24] 1405 	sjmp	00116$
      000488                       1406 00118$:
                           00039F  1407 	C$main.c$232$1$15 ==.
                           00039F  1408 	XG$resetfn$0$0 ==.
      000488 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'display'
                                   1412 ;------------------------------------------------------------
                           0003A0  1413 	G$display$0$0 ==.
                           0003A0  1414 	C$main.c$234$1$15 ==.
                                   1415 ;	main.c:234: void display(void) __interrupt (1)  // Function to display the digits on seven segment using the concept of seven segment multiplexing.
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function display
                                   1418 ;	-----------------------------------------
      000489                       1419 _display:
      000489 C0 E0            [24] 1420 	push	acc
      00048B C0 F0            [24] 1421 	push	b
      00048D C0 82            [24] 1422 	push	dpl
      00048F C0 83            [24] 1423 	push	dph
      000491 C0 01            [24] 1424 	push	ar1
      000493 C0 D0            [24] 1425 	push	psw
      000495 75 D0 00         [24] 1426 	mov	psw,#0x00
                           0003AF  1427 	C$main.c$236$1$23 ==.
                                   1428 ;	main.c:236: TL0=0x36;  //Reload Timer0
      000498 75 8A 36         [24] 1429 	mov	_TL0,#0x36
                           0003B2  1430 	C$main.c$237$1$23 ==.
                                   1431 ;	main.c:237: TH0=0xf6;
      00049B 75 8C F6         [24] 1432 	mov	_TH0,#0xf6
                           0003B5  1433 	C$main.c$238$1$23 ==.
                                   1434 ;	main.c:238: P2=0xFF;
      00049E 75 A0 FF         [24] 1435 	mov	_P2,#0xff
                           0003B8  1436 	C$main.c$239$1$23 ==.
                                   1437 ;	main.c:239: dig_ctrl_1 = dig_ctrl_3 = dig_ctrl_2 = dig_ctrl_4 = 0;
      0004A1 C2 90            [12] 1438 	clr	_P1_0
      0004A3 A2 90            [12] 1439 	mov	c,_P1_0
      0004A5 92 92            [24] 1440 	mov	_P1_2,c
      0004A7 A2 92            [12] 1441 	mov	c,_P1_2
      0004A9 92 91            [24] 1442 	mov	_P1_1,c
      0004AB A2 91            [12] 1443 	mov	c,_P1_1
      0004AD 92 93            [24] 1444 	mov	_P1_3,c
                           0003C6  1445 	C$main.c$240$1$23 ==.
                                   1446 ;	main.c:240: dig_disp++;
      0004AF 05 29            [12] 1447 	inc	_dig_disp
                           0003C8  1448 	C$main.c$241$1$23 ==.
                                   1449 ;	main.c:241: dig_disp=dig_disp%4;
      0004B1 53 29 03         [24] 1450 	anl	_dig_disp,#0x03
                           0003CB  1451 	C$main.c$242$1$23 ==.
                                   1452 ;	main.c:242: switch(dig_disp)
      0004B4 E5 29            [12] 1453 	mov	a,_dig_disp
      0004B6 24 FC            [12] 1454 	add	a,#0xff - 0x03
      0004B8 40 40            [24] 1455 	jc	00106$
      0004BA E5 29            [12] 1456 	mov	a,_dig_disp
      0004BC 75 F0 03         [24] 1457 	mov	b,#0x03
      0004BF A4               [48] 1458 	mul	ab
      0004C0 90 04 C4         [24] 1459 	mov	dptr,#00112$
      0004C3 73               [24] 1460 	jmp	@a+dptr
      0004C4                       1461 00112$:
      0004C4 02 04 D0         [24] 1462 	ljmp	00101$
      0004C7 02 04 DB         [24] 1463 	ljmp	00102$
      0004CA 02 04 E6         [24] 1464 	ljmp	00103$
      0004CD 02 04 F1         [24] 1465 	ljmp	00104$
                           0003E7  1466 	C$main.c$244$2$24 ==.
                                   1467 ;	main.c:244: case 0:
      0004D0                       1468 00101$:
                           0003E7  1469 	C$main.c$245$2$24 ==.
                                   1470 ;	main.c:245: P2=dig_val[sec1];
      0004D0 E5 30            [12] 1471 	mov	a,_sec1
      0004D2 24 4E            [12] 1472 	add	a,#_dig_val
      0004D4 F9               [12] 1473 	mov	r1,a
      0004D5 87 A0            [24] 1474 	mov	_P2,@r1
                           0003EE  1475 	C$main.c$246$2$24 ==.
                                   1476 ;	main.c:246: dig_ctrl_1 = 1;
      0004D7 D2 93            [12] 1477 	setb	_P1_3
                           0003F0  1478 	C$main.c$247$2$24 ==.
                                   1479 ;	main.c:247: break;
                           0003F0  1480 	C$main.c$249$2$24 ==.
                                   1481 ;	main.c:249: case 1:
      0004D9 80 1F            [24] 1482 	sjmp	00106$
      0004DB                       1483 00102$:
                           0003F2  1484 	C$main.c$250$2$24 ==.
                                   1485 ;	main.c:250: P2= dig_val[sec2];
      0004DB E5 2E            [12] 1486 	mov	a,_sec2
      0004DD 24 4E            [12] 1487 	add	a,#_dig_val
      0004DF F9               [12] 1488 	mov	r1,a
      0004E0 87 A0            [24] 1489 	mov	_P2,@r1
                           0003F9  1490 	C$main.c$251$2$24 ==.
                                   1491 ;	main.c:251: dig_ctrl_2 = 1;
      0004E2 D2 92            [12] 1492 	setb	_P1_2
                           0003FB  1493 	C$main.c$252$2$24 ==.
                                   1494 ;	main.c:252: break;
                           0003FB  1495 	C$main.c$254$2$24 ==.
                                   1496 ;	main.c:254: case 2:
      0004E4 80 14            [24] 1497 	sjmp	00106$
      0004E6                       1498 00103$:
                           0003FD  1499 	C$main.c$255$2$24 ==.
                                   1500 ;	main.c:255: P2= dig_val[min1];
      0004E6 E5 2C            [12] 1501 	mov	a,_min1
      0004E8 24 4E            [12] 1502 	add	a,#_dig_val
      0004EA F9               [12] 1503 	mov	r1,a
      0004EB 87 A0            [24] 1504 	mov	_P2,@r1
                           000404  1505 	C$main.c$256$2$24 ==.
                                   1506 ;	main.c:256: dig_ctrl_3 = 1;
      0004ED D2 91            [12] 1507 	setb	_P1_1
                           000406  1508 	C$main.c$257$2$24 ==.
                                   1509 ;	main.c:257: break;
                           000406  1510 	C$main.c$259$2$24 ==.
                                   1511 ;	main.c:259: case 3:
      0004EF 80 09            [24] 1512 	sjmp	00106$
      0004F1                       1513 00104$:
                           000408  1514 	C$main.c$260$2$24 ==.
                                   1515 ;	main.c:260: P2= dig_val[min2];
      0004F1 E5 2A            [12] 1516 	mov	a,_min2
      0004F3 24 4E            [12] 1517 	add	a,#_dig_val
      0004F5 F9               [12] 1518 	mov	r1,a
      0004F6 87 A0            [24] 1519 	mov	_P2,@r1
                           00040F  1520 	C$main.c$261$2$24 ==.
                                   1521 ;	main.c:261: dig_ctrl_4 = 1;
      0004F8 D2 90            [12] 1522 	setb	_P1_0
                           000411  1523 	C$main.c$263$1$23 ==.
                                   1524 ;	main.c:263: }
      0004FA                       1525 00106$:
      0004FA D0 D0            [24] 1526 	pop	psw
      0004FC D0 01            [24] 1527 	pop	ar1
      0004FE D0 83            [24] 1528 	pop	dph
      000500 D0 82            [24] 1529 	pop	dpl
      000502 D0 F0            [24] 1530 	pop	b
      000504 D0 E0            [24] 1531 	pop	acc
                           00041D  1532 	C$main.c$264$1$23 ==.
                           00041D  1533 	XG$display$0$0 ==.
      000506 32               [24] 1534 	reti
                                   1535 ;	eliminated unneeded push/pop ar0
                                   1536 ;------------------------------------------------------------
                                   1537 ;Allocation info for local variables in function 'moveclock'
                                   1538 ;------------------------------------------------------------
                           00041E  1539 	G$moveclock$0$0 ==.
                           00041E  1540 	C$main.c$266$1$23 ==.
                                   1541 ;	main.c:266: void moveclock(void) __interrupt 3  // Function to increment clock digits
                                   1542 ;	-----------------------------------------
                                   1543 ;	 function moveclock
                                   1544 ;	-----------------------------------------
      000507                       1545 _moveclock:
      000507 C0 E0            [24] 1546 	push	acc
      000509 C0 D0            [24] 1547 	push	psw
                           000422  1548 	C$main.c$268$1$26 ==.
                                   1549 ;	main.c:268: loop++;
      00050B 05 4A            [12] 1550 	inc	_loop
      00050D E4               [12] 1551 	clr	a
      00050E B5 4A 02         [24] 1552 	cjne	a,_loop,00128$
      000511 05 4B            [12] 1553 	inc	(_loop + 1)
      000513                       1554 00128$:
                           00042A  1555 	C$main.c$269$1$26 ==.
                                   1556 ;	main.c:269: if(loop==20)
      000513 74 14            [12] 1557 	mov	a,#0x14
      000515 B5 4A 06         [24] 1558 	cjne	a,_loop,00129$
      000518 E4               [12] 1559 	clr	a
      000519 B5 4B 02         [24] 1560 	cjne	a,(_loop + 1),00129$
      00051C 80 03            [24] 1561 	sjmp	00130$
      00051E                       1562 00129$:
      00051E 02 05 A3         [24] 1563 	ljmp	00111$
      000521                       1564 00130$:
                           000438  1565 	C$main.c$271$2$27 ==.
                                   1566 ;	main.c:271: sec1++;
      000521 05 30            [12] 1567 	inc	_sec1
      000523 E4               [12] 1568 	clr	a
      000524 B5 30 02         [24] 1569 	cjne	a,_sec1,00131$
      000527 05 31            [12] 1570 	inc	(_sec1 + 1)
      000529                       1571 00131$:
                           000440  1572 	C$main.c$272$2$27 ==.
                                   1573 ;	main.c:272: if(sec1==10)
      000529 74 0A            [12] 1574 	mov	a,#0x0a
      00052B B5 30 06         [24] 1575 	cjne	a,_sec1,00132$
      00052E E4               [12] 1576 	clr	a
      00052F B5 31 02         [24] 1577 	cjne	a,(_sec1 + 1),00132$
      000532 80 02            [24] 1578 	sjmp	00133$
      000534                       1579 00132$:
      000534 80 68            [24] 1580 	sjmp	00108$
      000536                       1581 00133$:
                           00044D  1582 	C$main.c$274$3$28 ==.
                                   1583 ;	main.c:274: sec1=0;
      000536 E4               [12] 1584 	clr	a
      000537 F5 30            [12] 1585 	mov	_sec1,a
      000539 F5 31            [12] 1586 	mov	(_sec1 + 1),a
                           000452  1587 	C$main.c$275$3$28 ==.
                                   1588 ;	main.c:275: sec2++;
      00053B 05 2E            [12] 1589 	inc	_sec2
                                   1590 ;	genFromRTrack removed	clr	a
      00053D B5 2E 02         [24] 1591 	cjne	a,_sec2,00134$
      000540 05 2F            [12] 1592 	inc	(_sec2 + 1)
      000542                       1593 00134$:
                           000459  1594 	C$main.c$276$3$28 ==.
                                   1595 ;	main.c:276: if(sec2==6)
      000542 74 06            [12] 1596 	mov	a,#0x06
      000544 B5 2E 06         [24] 1597 	cjne	a,_sec2,00135$
      000547 E4               [12] 1598 	clr	a
      000548 B5 2F 02         [24] 1599 	cjne	a,(_sec2 + 1),00135$
      00054B 80 02            [24] 1600 	sjmp	00136$
      00054D                       1601 00135$:
      00054D 80 4F            [24] 1602 	sjmp	00108$
      00054F                       1603 00136$:
                           000466  1604 	C$main.c$278$4$29 ==.
                                   1605 ;	main.c:278: sec1=0;
      00054F E4               [12] 1606 	clr	a
      000550 F5 30            [12] 1607 	mov	_sec1,a
      000552 F5 31            [12] 1608 	mov	(_sec1 + 1),a
                           00046B  1609 	C$main.c$279$4$29 ==.
                                   1610 ;	main.c:279: sec2=0;
      000554 F5 2E            [12] 1611 	mov	_sec2,a
      000556 F5 2F            [12] 1612 	mov	(_sec2 + 1),a
                           00046F  1613 	C$main.c$280$4$29 ==.
                                   1614 ;	main.c:280: min1++;
      000558 05 2C            [12] 1615 	inc	_min1
                                   1616 ;	genFromRTrack removed	clr	a
      00055A B5 2C 02         [24] 1617 	cjne	a,_min1,00137$
      00055D 05 2D            [12] 1618 	inc	(_min1 + 1)
      00055F                       1619 00137$:
                           000476  1620 	C$main.c$281$4$29 ==.
                                   1621 ;	main.c:281: if(min1==10)
      00055F 74 0A            [12] 1622 	mov	a,#0x0a
      000561 B5 2C 06         [24] 1623 	cjne	a,_min1,00138$
      000564 E4               [12] 1624 	clr	a
      000565 B5 2D 02         [24] 1625 	cjne	a,(_min1 + 1),00138$
      000568 80 02            [24] 1626 	sjmp	00139$
      00056A                       1627 00138$:
      00056A 80 32            [24] 1628 	sjmp	00108$
      00056C                       1629 00139$:
                           000483  1630 	C$main.c$283$5$30 ==.
                                   1631 ;	main.c:283: sec1=0;
      00056C E4               [12] 1632 	clr	a
      00056D F5 30            [12] 1633 	mov	_sec1,a
      00056F F5 31            [12] 1634 	mov	(_sec1 + 1),a
                           000488  1635 	C$main.c$284$5$30 ==.
                                   1636 ;	main.c:284: sec2=0;
      000571 F5 2E            [12] 1637 	mov	_sec2,a
      000573 F5 2F            [12] 1638 	mov	(_sec2 + 1),a
                           00048C  1639 	C$main.c$285$5$30 ==.
                                   1640 ;	main.c:285: min1=0;
      000575 F5 2C            [12] 1641 	mov	_min1,a
      000577 F5 2D            [12] 1642 	mov	(_min1 + 1),a
                           000490  1643 	C$main.c$286$5$30 ==.
                                   1644 ;	main.c:286: min2++;
      000579 05 2A            [12] 1645 	inc	_min2
                                   1646 ;	genFromRTrack removed	clr	a
      00057B B5 2A 02         [24] 1647 	cjne	a,_min2,00140$
      00057E 05 2B            [12] 1648 	inc	(_min2 + 1)
      000580                       1649 00140$:
                           000497  1650 	C$main.c$287$5$30 ==.
                                   1651 ;	main.c:287: if(min2==6)
      000580 74 06            [12] 1652 	mov	a,#0x06
      000582 B5 2A 06         [24] 1653 	cjne	a,_min2,00141$
      000585 E4               [12] 1654 	clr	a
      000586 B5 2B 02         [24] 1655 	cjne	a,(_min2 + 1),00141$
      000589 80 02            [24] 1656 	sjmp	00142$
      00058B                       1657 00141$:
      00058B 80 11            [24] 1658 	sjmp	00108$
      00058D                       1659 00142$:
                           0004A4  1660 	C$main.c$289$6$31 ==.
                                   1661 ;	main.c:289: sec1=0;
      00058D E4               [12] 1662 	clr	a
      00058E F5 30            [12] 1663 	mov	_sec1,a
      000590 F5 31            [12] 1664 	mov	(_sec1 + 1),a
                           0004A9  1665 	C$main.c$290$6$31 ==.
                                   1666 ;	main.c:290: sec2=0;
      000592 F5 2E            [12] 1667 	mov	_sec2,a
      000594 F5 2F            [12] 1668 	mov	(_sec2 + 1),a
                           0004AD  1669 	C$main.c$291$6$31 ==.
                                   1670 ;	main.c:291: min1=0;
      000596 F5 2C            [12] 1671 	mov	_min1,a
      000598 F5 2D            [12] 1672 	mov	(_min1 + 1),a
                           0004B1  1673 	C$main.c$292$6$31 ==.
                                   1674 ;	main.c:292: min2=0;
      00059A F5 2A            [12] 1675 	mov	_min2,a
      00059C F5 2B            [12] 1676 	mov	(_min2 + 1),a
      00059E                       1677 00108$:
                           0004B5  1678 	C$main.c$297$2$27 ==.
                                   1679 ;	main.c:297: loop=0;
      00059E E4               [12] 1680 	clr	a
      00059F F5 4A            [12] 1681 	mov	_loop,a
      0005A1 F5 4B            [12] 1682 	mov	(_loop + 1),a
      0005A3                       1683 00111$:
      0005A3 D0 D0            [24] 1684 	pop	psw
      0005A5 D0 E0            [24] 1685 	pop	acc
                           0004BE  1686 	C$main.c$299$1$26 ==.
                           0004BE  1687 	XG$moveclock$0$0 ==.
      0005A7 32               [24] 1688 	reti
                                   1689 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1690 ;	eliminated unneeded push/pop dpl
                                   1691 ;	eliminated unneeded push/pop dph
                                   1692 ;	eliminated unneeded push/pop b
                                   1693 ;------------------------------------------------------------
                                   1694 ;Allocation info for local variables in function 'main'
                                   1695 ;------------------------------------------------------------
                           0004BF  1696 	G$main$0$0 ==.
                           0004BF  1697 	C$main.c$301$1$26 ==.
                                   1698 ;	main.c:301: void main()
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function main
                                   1701 ;	-----------------------------------------
      0005A8                       1702 _main:
                           0004BF  1703 	C$main.c$303$1$32 ==.
                                   1704 ;	main.c:303: mode=0;
      0005A8 E4               [12] 1705 	clr	a
      0005A9 F5 4C            [12] 1706 	mov	_mode,a
      0005AB F5 4D            [12] 1707 	mov	(_mode + 1),a
                           0004C4  1708 	C$main.c$304$1$32 ==.
                                   1709 ;	main.c:304: set=1;  //Initialize set, reset, start and incr pins as input
      0005AD D2 96            [12] 1710 	setb	_P1_6
                           0004C6  1711 	C$main.c$305$1$32 ==.
                                   1712 ;	main.c:305: resetalarm=1;
      0005AF D2 95            [12] 1713 	setb	_P1_5
                           0004C8  1714 	C$main.c$306$1$32 ==.
                                   1715 ;	main.c:306: resetclock=1;
      0005B1 D2 94            [12] 1716 	setb	_P1_4
                           0004CA  1717 	C$main.c$307$1$32 ==.
                                   1718 ;	main.c:307: start=1;
      0005B3 D2 B3            [12] 1719 	setb	_P3_3
                           0004CC  1720 	C$main.c$308$1$32 ==.
                                   1721 ;	main.c:308: incr=1;
      0005B5 D2 97            [12] 1722 	setb	_P1_7
                           0004CE  1723 	C$main.c$309$1$32 ==.
                                   1724 ;	main.c:309: begin=0;
      0005B7 E4               [12] 1725 	clr	a
      0005B8 F5 27            [12] 1726 	mov	_begin,a
      0005BA F5 28            [12] 1727 	mov	(_begin + 1),a
                           0004D3  1728 	C$main.c$310$1$32 ==.
                                   1729 ;	main.c:310: TMOD=0x11;  //Intialize Timer 0
      0005BC 75 89 11         [24] 1730 	mov	_TMOD,#0x11
                           0004D6  1731 	C$main.c$311$1$32 ==.
                                   1732 ;	main.c:311: TL0=0xf6;  //Load timer0
      0005BF 75 8A F6         [24] 1733 	mov	_TL0,#0xf6
                           0004D9  1734 	C$main.c$312$1$32 ==.
                                   1735 ;	main.c:312: TH0=0xFf;
      0005C2 75 8C FF         [24] 1736 	mov	_TH0,#0xff
                           0004DC  1737 	C$main.c$313$1$32 ==.
                                   1738 ;	main.c:313: IE=0x8A;  //Enable Timer0 interrupt
      0005C5 75 A8 8A         [24] 1739 	mov	_IE,#0x8a
                           0004DF  1740 	C$main.c$314$1$32 ==.
                                   1741 ;	main.c:314: TR0=1;  //Start Timer0
      0005C8 D2 8C            [12] 1742 	setb	_TR0
                           0004E1  1743 	C$main.c$315$1$32 ==.
                                   1744 ;	main.c:315: TL1=0xFD;
      0005CA 75 8B FD         [24] 1745 	mov	_TL1,#0xfd
                           0004E4  1746 	C$main.c$316$1$32 ==.
                                   1747 ;	main.c:316: TH1=0x4B;
      0005CD 75 8D 4B         [24] 1748 	mov	_TH1,#0x4b
                           0004E7  1749 	C$main.c$317$1$32 ==.
                                   1750 ;	main.c:317: TR1=1;  // Start Timer1
      0005D0 D2 8E            [12] 1751 	setb	_TR1
                           0004E9  1752 	C$main.c$318$1$32 ==.
                                   1753 ;	main.c:318: while(1)
      0005D2                       1754 00112$:
                           0004E9  1755 	C$main.c$320$2$33 ==.
                                   1756 ;	main.c:320: if(resetalarm==0)  //Check if reset alarm pin is pressed
      0005D2 20 95 05         [24] 1757 	jb	_P1_5,00102$
                           0004EC  1758 	C$main.c$322$3$34 ==.
                                   1759 ;	main.c:322: resetfn(0);
      0005D5 C2 00            [12] 1760 	clr	_resetfn_PARM_1
      0005D7 12 03 91         [24] 1761 	lcall	_resetfn
      0005DA                       1762 00102$:
                           0004F1  1763 	C$main.c$324$2$33 ==.
                                   1764 ;	main.c:324: if(resetclock==0)//Check if reset clock pin is pressed
      0005DA 20 94 05         [24] 1765 	jb	_P1_4,00104$
                           0004F4  1766 	C$main.c$326$3$35 ==.
                                   1767 ;	main.c:326: resetfn(1);
      0005DD D2 00            [12] 1768 	setb	_resetfn_PARM_1
      0005DF 12 03 91         [24] 1769 	lcall	_resetfn
      0005E2                       1770 00104$:
                           0004F9  1771 	C$main.c$328$2$33 ==.
                                   1772 ;	main.c:328: if(min2==alarmmin2&&min1==alarmmin1&&sec2==alarmsec2&&sec1==alarmsec1&&begin==1)// Check for Alarm condition
      0005E2 E5 3A            [12] 1773 	mov	a,_alarmmin2
      0005E4 B5 2A EB         [24] 1774 	cjne	a,_min2,00112$
      0005E7 E5 3B            [12] 1775 	mov	a,(_alarmmin2 + 1)
      0005E9 B5 2B E6         [24] 1776 	cjne	a,(_min2 + 1),00112$
      0005EC E5 3C            [12] 1777 	mov	a,_alarmmin1
      0005EE B5 2C E1         [24] 1778 	cjne	a,_min1,00112$
      0005F1 E5 3D            [12] 1779 	mov	a,(_alarmmin1 + 1)
      0005F3 B5 2D DC         [24] 1780 	cjne	a,(_min1 + 1),00112$
      0005F6 E5 3E            [12] 1781 	mov	a,_alarmsec2
      0005F8 B5 2E D7         [24] 1782 	cjne	a,_sec2,00112$
      0005FB E5 3F            [12] 1783 	mov	a,(_alarmsec2 + 1)
      0005FD B5 2F D2         [24] 1784 	cjne	a,(_sec2 + 1),00112$
      000600 E5 40            [12] 1785 	mov	a,_alarmsec1
      000602 B5 30 CD         [24] 1786 	cjne	a,_sec1,00112$
      000605 E5 41            [12] 1787 	mov	a,(_alarmsec1 + 1)
      000607 B5 31 C8         [24] 1788 	cjne	a,(_sec1 + 1),00112$
      00060A 74 01            [12] 1789 	mov	a,#0x01
      00060C B5 27 06         [24] 1790 	cjne	a,_begin,00150$
      00060F 14               [12] 1791 	dec	a
      000610 B5 28 02         [24] 1792 	cjne	a,(_begin + 1),00150$
      000613 80 02            [24] 1793 	sjmp	00151$
      000615                       1794 00150$:
      000615 80 BB            [24] 1795 	sjmp	00112$
      000617                       1796 00151$:
                           00052E  1797 	C$main.c$330$3$36 ==.
                                   1798 ;	main.c:330: buzzer=0;
      000617 C2 B7            [12] 1799 	clr	_P3_7
                           000530  1800 	C$main.c$331$3$36 ==.
                                   1801 ;	main.c:331: delay(500);
      000619 90 01 F4         [24] 1802 	mov	dptr,#0x01f4
      00061C 12 00 E9         [24] 1803 	lcall	_delay
                           000536  1804 	C$main.c$332$3$36 ==.
                                   1805 ;	main.c:332: buzzer=1;
      00061F D2 B7            [12] 1806 	setb	_P3_7
      000621 80 AF            [24] 1807 	sjmp	00112$
                           00053A  1808 	C$main.c$336$1$32 ==.
                           00053A  1809 	XG$main$0$0 ==.
      000623 22               [24] 1810 	ret
                                   1811 	.area CSEG    (CODE)
                                   1812 	.area CONST   (CODE)
                                   1813 	.area XINIT   (CODE)
                                   1814 	.area CABS    (ABS,CODE)
