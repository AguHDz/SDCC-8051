                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay_Lib
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_x10_cycles
                                     12 	.globl _delay_x100_cycles
                                     13 	.globl _delay_ms
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable items in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 	.area	OSEG    (OVR,DATA)
                                     37 	.area	OSEG    (OVR,DATA)
                                     38 ;--------------------------------------------------------
                                     39 ; indirectly addressable internal ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area ISEG    (DATA)
                                     42 ;--------------------------------------------------------
                                     43 ; absolute internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area IABS    (ABS,DATA)
                                     46 	.area IABS    (ABS,DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; bit data
                                     49 ;--------------------------------------------------------
                                     50 	.area BSEG    (BIT)
                                     51 ;--------------------------------------------------------
                                     52 ; paged external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area PSEG    (PAG,XDATA)
                                     55 ;--------------------------------------------------------
                                     56 ; external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area XSEG    (XDATA)
                                     59 ;--------------------------------------------------------
                                     60 ; absolute external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area XABS    (ABS,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; external initialized ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XISEG   (XDATA)
                                     67 	.area HOME    (CODE)
                                     68 	.area GSINIT0 (CODE)
                                     69 	.area GSINIT1 (CODE)
                                     70 	.area GSINIT2 (CODE)
                                     71 	.area GSINIT3 (CODE)
                                     72 	.area GSINIT4 (CODE)
                                     73 	.area GSINIT5 (CODE)
                                     74 	.area GSINIT  (CODE)
                                     75 	.area GSFINAL (CODE)
                                     76 	.area CSEG    (CODE)
                                     77 ;--------------------------------------------------------
                                     78 ; global & static initialisations
                                     79 ;--------------------------------------------------------
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; Home
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area HOME    (CODE)
                                     89 ;--------------------------------------------------------
                                     90 ; code
                                     91 ;--------------------------------------------------------
                                     92 	.area CSEG    (CODE)
                                     93 ;------------------------------------------------------------
                                     94 ;Allocation info for local variables in function 'delay_x10_cycles'
                                     95 ;------------------------------------------------------------
                                     96 ;x10cycles                 Allocated to registers 
                                     97 ;------------------------------------------------------------
                                     98 ;	..\Libs\delay_Lib.c:7: void delay_x10_cycles(uint8_t x10cycles)
                                     99 ;	-----------------------------------------
                                    100 ;	 function delay_x10_cycles
                                    101 ;	-----------------------------------------
      000062                        102 _delay_x10_cycles:
                           000007   103 	ar7 = 0x07
                           000006   104 	ar6 = 0x06
                           000005   105 	ar5 = 0x05
                           000004   106 	ar4 = 0x04
                           000003   107 	ar3 = 0x03
                           000002   108 	ar2 = 0x02
                           000001   109 	ar1 = 0x01
                           000000   110 	ar0 = 0x00
                                    111 ;	..\Libs\delay_Lib.c:25: __endasm;
      000062 AF 82            [24]  112 	mov	r7,dpl
      000064 1F               [12]  113 	dec	r7
      000065 EF               [12]  114 	mov	a, r7
      000066 60 07            [24]  115 	jz	end_delay_x10_cycles
      000068                        116 	    loop_delay_x10_cycles:
      000068 7E 03            [12]  117 	mov	r6,#3
      00006A                        118 	    loop_delay_10_cycles:
      00006A DE FE            [24]  119 	djnz	r6,loop_delay_10_cycles
      00006C 00               [12]  120 	nop
      00006D DF F9            [24]  121 	djnz	r7,loop_delay_x10_cycles
      00006F                        122 	    end_delay_x10_cycles:
      00006F 22               [24]  123 	ret
                                    124 ;------------------------------------------------------------
                                    125 ;Allocation info for local variables in function 'delay_x100_cycles'
                                    126 ;------------------------------------------------------------
                                    127 ;x100cycles                Allocated to registers 
                                    128 ;------------------------------------------------------------
                                    129 ;	..\Libs\delay_Lib.c:30: void delay_x100_cycles(uint8_t x100cycles)
                                    130 ;	-----------------------------------------
                                    131 ;	 function delay_x100_cycles
                                    132 ;	-----------------------------------------
      000070                        133 _delay_x100_cycles:
                                    134 ;	..\Libs\delay_Lib.c:49: __endasm;
      000070 AF 82            [24]  135 	mov	r7,dpl
      000072 1F               [12]  136 	dec	r7
      000073 EF               [12]  137 	mov	a, r7
      000074 7E 2C            [12]  138 	mov	r6,#44
      000076                        139 	    loop_delay_x100_cycles_init:
      000076 DE FE            [24]  140 	djnz	r6,loop_delay_x100_cycles_init
      000078 00               [12]  141 	nop
      000079 60 07            [24]  142 	jz	end_delay_x100_cycles
      00007B                        143 	    loop_delay_x100_cycles:
      00007B 7D 30            [12]  144 	mov	r5,#48
      00007D                        145 	    loop_delay_100_cycles:
      00007D DD FE            [24]  146 	djnz	r5,loop_delay_100_cycles
      00007F 00               [12]  147 	nop
      000080 DF F9            [24]  148 	djnz	r7,loop_delay_x100_cycles
      000082                        149 	    end_delay_x100_cycles:
      000082 22               [24]  150 	ret
                                    151 ;------------------------------------------------------------
                                    152 ;Allocation info for local variables in function 'delay_ms'
                                    153 ;------------------------------------------------------------
                                    154 ;delayTimeMS               Allocated to registers 
                                    155 ;------------------------------------------------------------
                                    156 ;	..\Libs\delay_Lib.c:55: void delay_ms(uint16_t delayTimeMS)
                                    157 ;	-----------------------------------------
                                    158 ;	 function delay_ms
                                    159 ;	-----------------------------------------
      000083                        160 _delay_ms:
                                    161 ;	..\Libs\delay_Lib.c:73: __endasm;
      000083 AB 82            [24]  162 	mov	r3,dpl
      000085 AC 83            [24]  163 	mov	r4,dph
      000087                        164 	    delay_ms_lib_loop:
      000087 1B               [12]  165 	dec	r3
      000088 BB FF 01         [24]  166 	cjne	r3,#0xff,delay_ms_lib_seguir
      00008B 1C               [12]  167 	dec	r4
      00008C                        168 	    delay_ms_lib_seguir:
      00008C EB               [12]  169 	mov	a,r3
      00008D 4C               [12]  170 	orl	a,r4
      00008E 60 08            [24]  171 	jz	delay_ms_lib_fin
                                    172 ;	..\Libs\delay_Lib.c:75: CALL_DELAY_MS;
      000090 75 82 64         [24]  173 	mov	dpl,#0x64
      000093 12 00 62         [24]  174 	lcall	_delay_x10_cycles
                                    175 ;	..\Libs\delay_Lib.c:80: __endasm;
      000096 80 EF            [24]  176 	sjmp	delay_ms_lib_loop
      000098                        177 	    delay_ms_lib_fin:
      000098 22               [24]  178 	ret
                                    179 	.area CSEG    (CODE)
                                    180 	.area CONST   (CODE)
                                    181 	.area XINIT   (CODE)
                                    182 	.area CABS    (ABS,CODE)
