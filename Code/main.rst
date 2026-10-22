                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer0_isr
                                     12 	.globl _main
                                     13 	.globl _oled_string
                                     14 	.globl _oled_set_position
                                     15 	.globl _oled_init
                                     16 	.globl _timer0_init
                                     17 	.globl _EP6INT
                                     18 	.globl _EP5INT
                                     19 	.globl _EP4INT
                                     20 	.globl _EP3INT
                                     21 	.globl _EP2INT
                                     22 	.globl _EP1INT
                                     23 	.globl _EP0INT
                                     24 	.globl _CF
                                     25 	.globl _CR
                                     26 	.globl _CCF4
                                     27 	.globl _CCF3
                                     28 	.globl _CCF2
                                     29 	.globl _CCF1
                                     30 	.globl _CCF0
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _TF2
                                     40 	.globl _EXF2
                                     41 	.globl _RCLK
                                     42 	.globl _TCLK
                                     43 	.globl _EXEN2
                                     44 	.globl _TR2
                                     45 	.globl _C_T2
                                     46 	.globl _CP_RL2
                                     47 	.globl _P4_1
                                     48 	.globl _P4_0
                                     49 	.globl _PPCL
                                     50 	.globl _PT2L
                                     51 	.globl _PSL
                                     52 	.globl _PT1L
                                     53 	.globl _PX1L
                                     54 	.globl _PT0L
                                     55 	.globl _PX0L
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _EC
                                     66 	.globl _ET2
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _FE
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _UEPINT
                                    114 	.globl _LEDCON
                                    115 	.globl _B
                                    116 	.globl _CCAP4H
                                    117 	.globl _CCAP4L
                                    118 	.globl _CCAP4
                                    119 	.globl _CCAP3H
                                    120 	.globl _CCAP3L
                                    121 	.globl _CCAP3
                                    122 	.globl _CCAP2H
                                    123 	.globl _CCAP2L
                                    124 	.globl _CCAP2
                                    125 	.globl _CCAP1H
                                    126 	.globl _CCAP1L
                                    127 	.globl _CCAP1
                                    128 	.globl _CCAP0H
                                    129 	.globl _CCAP0L
                                    130 	.globl _CCAP0
                                    131 	.globl _CH
                                    132 	.globl _CL
                                    133 	.globl _PCA
                                    134 	.globl _UBYCTHX
                                    135 	.globl _UBYCTLX
                                    136 	.globl _UBYCTX
                                    137 	.globl _ACC
                                    138 	.globl _CCAPM4
                                    139 	.globl _CCAPM3
                                    140 	.globl _CCAPM2
                                    141 	.globl _CCAPM1
                                    142 	.globl _CCAPM0
                                    143 	.globl _CMOD
                                    144 	.globl _CCON
                                    145 	.globl _UEPRST
                                    146 	.globl _UEPCONX
                                    147 	.globl _EECON
                                    148 	.globl _FCON
                                    149 	.globl _PSW
                                    150 	.globl _UEPDATX
                                    151 	.globl _UEPSTAX
                                    152 	.globl _TH2
                                    153 	.globl _TL2
                                    154 	.globl _TMR2
                                    155 	.globl _RCAP2H
                                    156 	.globl _RCAP2L
                                    157 	.globl _RCAP2
                                    158 	.globl _T2MOD
                                    159 	.globl _T2CON
                                    160 	.globl _UEPNUM
                                    161 	.globl _USBADDR
                                    162 	.globl _SPDAT
                                    163 	.globl _SPSTA
                                    164 	.globl _SPCON
                                    165 	.globl _UEPIEN
                                    166 	.globl _P4
                                    167 	.globl _USBIEN
                                    168 	.globl _USBINT
                                    169 	.globl _USBCON
                                    170 	.globl _UFNUMH
                                    171 	.globl _UFNUML
                                    172 	.globl _UFNUM
                                    173 	.globl _SADEN
                                    174 	.globl _IPL0
                                    175 	.globl _IPH0
                                    176 	.globl _IPH1
                                    177 	.globl _IPL1
                                    178 	.globl _IEN1
                                    179 	.globl _P3
                                    180 	.globl _CKCON1
                                    181 	.globl _SADDR
                                    182 	.globl _IEN0
                                    183 	.globl _IE
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _PLLDIV
                                    187 	.globl _PLLCON
                                    188 	.globl _AUXR1
                                    189 	.globl _P2
                                    190 	.globl _KBF
                                    191 	.globl _KBE
                                    192 	.globl _KBLS
                                    193 	.globl _BDRCON
                                    194 	.globl _BRL
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _SSADR
                                    198 	.globl _SSDAT
                                    199 	.globl _SSCS
                                    200 	.globl _SSCON
                                    201 	.globl _P1
                                    202 	.globl _CKCON0
                                    203 	.globl _AUXR
                                    204 	.globl _TH1
                                    205 	.globl _TL1
                                    206 	.globl _TMR1
                                    207 	.globl _TH0
                                    208 	.globl _TL0
                                    209 	.globl _TMR0
                                    210 	.globl _TMOD
                                    211 	.globl _TCON
                                    212 	.globl _PCON
                                    213 	.globl _DPH
                                    214 	.globl _DPL
                                    215 	.globl _SP
                                    216 	.globl _P0
                                    217 	.globl _time_ms
                                    218 	.globl _delay_time_ms
                                    219 	.globl _delay_us
                                    220 	.globl _delay_ms
                                    221 ;--------------------------------------------------------
                                    222 ; special function registers
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           000080   226 _P0	=	0x0080
                           000081   227 _SP	=	0x0081
                           000082   228 _DPL	=	0x0082
                           000083   229 _DPH	=	0x0083
                           000087   230 _PCON	=	0x0087
                           000088   231 _TCON	=	0x0088
                           000089   232 _TMOD	=	0x0089
                           008C8A   233 _TMR0	=	0x8c8a
                           00008A   234 _TL0	=	0x008a
                           00008C   235 _TH0	=	0x008c
                           008D8B   236 _TMR1	=	0x8d8b
                           00008B   237 _TL1	=	0x008b
                           00008D   238 _TH1	=	0x008d
                           00008E   239 _AUXR	=	0x008e
                           00008F   240 _CKCON0	=	0x008f
                           000090   241 _P1	=	0x0090
                           000093   242 _SSCON	=	0x0093
                           000094   243 _SSCS	=	0x0094
                           000095   244 _SSDAT	=	0x0095
                           000096   245 _SSADR	=	0x0096
                           000098   246 _SCON	=	0x0098
                           000099   247 _SBUF	=	0x0099
                           00009A   248 _BRL	=	0x009a
                           00009B   249 _BDRCON	=	0x009b
                           00009C   250 _KBLS	=	0x009c
                           00009D   251 _KBE	=	0x009d
                           00009E   252 _KBF	=	0x009e
                           0000A0   253 _P2	=	0x00a0
                           0000A2   254 _AUXR1	=	0x00a2
                           0000A3   255 _PLLCON	=	0x00a3
                           0000A4   256 _PLLDIV	=	0x00a4
                           0000A6   257 _WDTRST	=	0x00a6
                           0000A7   258 _WDTPRG	=	0x00a7
                           0000A8   259 _IE	=	0x00a8
                           0000A8   260 _IEN0	=	0x00a8
                           0000A9   261 _SADDR	=	0x00a9
                           0000AF   262 _CKCON1	=	0x00af
                           0000B0   263 _P3	=	0x00b0
                           0000B1   264 _IEN1	=	0x00b1
                           0000B2   265 _IPL1	=	0x00b2
                           0000B3   266 _IPH1	=	0x00b3
                           0000B7   267 _IPH0	=	0x00b7
                           0000B8   268 _IPL0	=	0x00b8
                           0000B9   269 _SADEN	=	0x00b9
                           00BBBA   270 _UFNUM	=	0xbbba
                           0000BA   271 _UFNUML	=	0x00ba
                           0000BB   272 _UFNUMH	=	0x00bb
                           0000BC   273 _USBCON	=	0x00bc
                           0000BD   274 _USBINT	=	0x00bd
                           0000BE   275 _USBIEN	=	0x00be
                           0000C0   276 _P4	=	0x00c0
                           0000C2   277 _UEPIEN	=	0x00c2
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C6   281 _USBADDR	=	0x00c6
                           0000C7   282 _UEPNUM	=	0x00c7
                           0000C8   283 _T2CON	=	0x00c8
                           0000C9   284 _T2MOD	=	0x00c9
                           00CBCA   285 _RCAP2	=	0xcbca
                           0000CA   286 _RCAP2L	=	0x00ca
                           0000CB   287 _RCAP2H	=	0x00cb
                           00CDCC   288 _TMR2	=	0xcdcc
                           0000CC   289 _TL2	=	0x00cc
                           0000CD   290 _TH2	=	0x00cd
                           0000CE   291 _UEPSTAX	=	0x00ce
                           0000CF   292 _UEPDATX	=	0x00cf
                           0000D0   293 _PSW	=	0x00d0
                           0000D1   294 _FCON	=	0x00d1
                           0000D2   295 _EECON	=	0x00d2
                           0000D4   296 _UEPCONX	=	0x00d4
                           0000D5   297 _UEPRST	=	0x00d5
                           0000D8   298 _CCON	=	0x00d8
                           0000D9   299 _CMOD	=	0x00d9
                           0000DA   300 _CCAPM0	=	0x00da
                           0000DB   301 _CCAPM1	=	0x00db
                           0000DC   302 _CCAPM2	=	0x00dc
                           0000DD   303 _CCAPM3	=	0x00dd
                           0000DE   304 _CCAPM4	=	0x00de
                           0000E0   305 _ACC	=	0x00e0
                           00E3E2   306 _UBYCTX	=	0xe3e2
                           0000E2   307 _UBYCTLX	=	0x00e2
                           0000E3   308 _UBYCTHX	=	0x00e3
                           00F9E9   309 _PCA	=	0xf9e9
                           0000E9   310 _CL	=	0x00e9
                           0000F9   311 _CH	=	0x00f9
                           00FAEA   312 _CCAP0	=	0xfaea
                           0000EA   313 _CCAP0L	=	0x00ea
                           0000FA   314 _CCAP0H	=	0x00fa
                           00FBEB   315 _CCAP1	=	0xfbeb
                           0000EB   316 _CCAP1L	=	0x00eb
                           0000FB   317 _CCAP1H	=	0x00fb
                           00FCEC   318 _CCAP2	=	0xfcec
                           0000EC   319 _CCAP2L	=	0x00ec
                           0000FC   320 _CCAP2H	=	0x00fc
                           00FDED   321 _CCAP3	=	0xfded
                           0000ED   322 _CCAP3L	=	0x00ed
                           0000FD   323 _CCAP3H	=	0x00fd
                           00FEEE   324 _CCAP4	=	0xfeee
                           0000EE   325 _CCAP4L	=	0x00ee
                           0000FE   326 _CCAP4H	=	0x00fe
                           0000F0   327 _B	=	0x00f0
                           0000F1   328 _LEDCON	=	0x00f1
                           0000F8   329 _UEPINT	=	0x00f8
                                    330 ;--------------------------------------------------------
                                    331 ; special function bits
                                    332 ;--------------------------------------------------------
                                    333 	.area RSEG    (ABS,DATA)
      000000                        334 	.org 0x0000
                           000080   335 _P0_0	=	0x0080
                           000081   336 _P0_1	=	0x0081
                           000082   337 _P0_2	=	0x0082
                           000083   338 _P0_3	=	0x0083
                           000084   339 _P0_4	=	0x0084
                           000085   340 _P0_5	=	0x0085
                           000086   341 _P0_6	=	0x0086
                           000087   342 _P0_7	=	0x0087
                           000088   343 _IT0	=	0x0088
                           000089   344 _IE0	=	0x0089
                           00008A   345 _IT1	=	0x008a
                           00008B   346 _IE1	=	0x008b
                           00008C   347 _TR0	=	0x008c
                           00008D   348 _TF0	=	0x008d
                           00008E   349 _TR1	=	0x008e
                           00008F   350 _TF1	=	0x008f
                           000090   351 _P1_0	=	0x0090
                           000091   352 _P1_1	=	0x0091
                           000092   353 _P1_2	=	0x0092
                           000093   354 _P1_3	=	0x0093
                           000094   355 _P1_4	=	0x0094
                           000095   356 _P1_5	=	0x0095
                           000096   357 _P1_6	=	0x0096
                           000097   358 _P1_7	=	0x0097
                           000098   359 _RI	=	0x0098
                           000099   360 _TI	=	0x0099
                           00009A   361 _RB8	=	0x009a
                           00009B   362 _TB8	=	0x009b
                           00009C   363 _REN	=	0x009c
                           00009D   364 _SM2	=	0x009d
                           00009E   365 _SM1	=	0x009e
                           00009F   366 _SM0	=	0x009f
                           00009F   367 _FE	=	0x009f
                           0000A0   368 _P2_0	=	0x00a0
                           0000A1   369 _P2_1	=	0x00a1
                           0000A2   370 _P2_2	=	0x00a2
                           0000A3   371 _P2_3	=	0x00a3
                           0000A4   372 _P2_4	=	0x00a4
                           0000A5   373 _P2_5	=	0x00a5
                           0000A6   374 _P2_6	=	0x00a6
                           0000A7   375 _P2_7	=	0x00a7
                           0000A8   376 _EX0	=	0x00a8
                           0000A9   377 _ET0	=	0x00a9
                           0000AA   378 _EX1	=	0x00aa
                           0000AB   379 _ET1	=	0x00ab
                           0000AC   380 _ES	=	0x00ac
                           0000AD   381 _ET2	=	0x00ad
                           0000AE   382 _EC	=	0x00ae
                           0000AF   383 _EA	=	0x00af
                           0000B0   384 _P3_0	=	0x00b0
                           0000B1   385 _P3_1	=	0x00b1
                           0000B2   386 _P3_2	=	0x00b2
                           0000B3   387 _P3_3	=	0x00b3
                           0000B4   388 _P3_4	=	0x00b4
                           0000B5   389 _P3_5	=	0x00b5
                           0000B6   390 _P3_6	=	0x00b6
                           0000B7   391 _P3_7	=	0x00b7
                           0000B8   392 _PX0L	=	0x00b8
                           0000B9   393 _PT0L	=	0x00b9
                           0000BA   394 _PX1L	=	0x00ba
                           0000BB   395 _PT1L	=	0x00bb
                           0000BC   396 _PSL	=	0x00bc
                           0000BD   397 _PT2L	=	0x00bd
                           0000BE   398 _PPCL	=	0x00be
                           0000C0   399 _P4_0	=	0x00c0
                           0000C1   400 _P4_1	=	0x00c1
                           0000C8   401 _CP_RL2	=	0x00c8
                           0000C9   402 _C_T2	=	0x00c9
                           0000CA   403 _TR2	=	0x00ca
                           0000CB   404 _EXEN2	=	0x00cb
                           0000CC   405 _TCLK	=	0x00cc
                           0000CD   406 _RCLK	=	0x00cd
                           0000CE   407 _EXF2	=	0x00ce
                           0000CF   408 _TF2	=	0x00cf
                           0000D0   409 _P	=	0x00d0
                           0000D1   410 _F1	=	0x00d1
                           0000D2   411 _OV	=	0x00d2
                           0000D3   412 _RS0	=	0x00d3
                           0000D4   413 _RS1	=	0x00d4
                           0000D5   414 _F0	=	0x00d5
                           0000D6   415 _AC	=	0x00d6
                           0000D7   416 _CY	=	0x00d7
                           0000D8   417 _CCF0	=	0x00d8
                           0000D9   418 _CCF1	=	0x00d9
                           0000DA   419 _CCF2	=	0x00da
                           0000DB   420 _CCF3	=	0x00db
                           0000DC   421 _CCF4	=	0x00dc
                           0000DE   422 _CR	=	0x00de
                           0000DF   423 _CF	=	0x00df
                           0000F8   424 _EP0INT	=	0x00f8
                           0000F9   425 _EP1INT	=	0x00f9
                           0000FA   426 _EP2INT	=	0x00fa
                           0000FB   427 _EP3INT	=	0x00fb
                           0000FC   428 _EP4INT	=	0x00fc
                           0000FD   429 _EP5INT	=	0x00fd
                           0000FE   430 _EP6INT	=	0x00fe
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable register banks
                                    433 ;--------------------------------------------------------
                                    434 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        435 	.ds 8
                                    436 ;--------------------------------------------------------
                                    437 ; internal ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area DSEG    (DATA)
      000008                        440 _delay_time_ms::
      000008                        441 	.ds 4
      00000C                        442 _time_ms::
      00000C                        443 	.ds 2
      00000E                        444 _timer0_isr_value_10000_24:
      00000E                        445 	.ds 2
                                    446 ;--------------------------------------------------------
                                    447 ; overlayable items in internal ram
                                    448 ;--------------------------------------------------------
                                    449 ;--------------------------------------------------------
                                    450 ; Stack segment in internal ram
                                    451 ;--------------------------------------------------------
                                    452 	.area SSEG
      00002F                        453 __start__stack:
      00002F                        454 	.ds	1
                                    455 
                                    456 ;--------------------------------------------------------
                                    457 ; indirectly addressable internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area ISEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; absolute internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area IABS    (ABS,DATA)
                                    464 	.area IABS    (ABS,DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; bit data
                                    467 ;--------------------------------------------------------
                                    468 	.area BSEG    (BIT)
                                    469 ;--------------------------------------------------------
                                    470 ; paged external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area PSEG    (PAG,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; uninitialized external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XSEG    (XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; absolute external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XABS    (ABS,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; initialized external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XISEG   (XDATA)
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT0 (CODE)
                                    487 	.area GSINIT1 (CODE)
                                    488 	.area GSINIT2 (CODE)
                                    489 	.area GSINIT3 (CODE)
                                    490 	.area GSINIT4 (CODE)
                                    491 	.area GSINIT5 (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area CSEG    (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; interrupt vector
                                    497 ;--------------------------------------------------------
                                    498 	.area HOME    (CODE)
      000000                        499 __interrupt_vect:
      000000 02 00 56         [24]  500 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  501 	reti
      000004                        502 	.ds	7
      00000B 02 01 1F         [24]  503 	ljmp	_timer0_isr
                                    504 ; restartable atomic support routines
      00000E                        505 	.ds	2
      000010                        506 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  507 	nop
      000011 00               [12]  508 	nop
      000012                        509 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  510 	movx	a, @r0
      000013 FB               [12]  511 	mov	r3, a
      000014 EA               [12]  512 	mov	a, r2
      000015 F2               [24]  513 	movx	@r0, a
      000016 80 2C            [24]  514 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  515 	nop
      000019 00               [12]  516 	nop
      00001A                        517 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  518 	movx	a, @dptr
      00001B FB               [12]  519 	mov	r3, a
      00001C EA               [12]  520 	mov	a, r2
      00001D F0               [24]  521 	movx	@dptr, a
      00001E 80 24            [24]  522 	sjmp	sdcc_atomic_exchange_exit
      000020                        523 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  524 	mov	a, @r0
      000021 B5 02 02         [24]  525 	cjne	a, ar2, .+#5
      000024 EB               [12]  526 	mov	a, r3
      000025 F6               [12]  527 	mov	@r0, a
      000026 22               [24]  528 	ret
      000027 00               [12]  529 	nop
      000028                        530 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  531 	movx	a, @r0
      000029 B5 02 02         [24]  532 	cjne	a, ar2, .+#5
      00002C EB               [12]  533 	mov	a, r3
      00002D F2               [24]  534 	movx	@r0, a
      00002E 22               [24]  535 	ret
      00002F 00               [12]  536 	nop
      000030                        537 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  538 	movx	a, @dptr
      000031 B5 02 02         [24]  539 	cjne	a, ar2, .+#5
      000034 EB               [12]  540 	mov	a, r3
      000035 F0               [24]  541 	movx	@dptr, a
      000036 22               [24]  542 	ret
      000037                        543 sdcc_atomic_exchange_rollback_end::
                                    544 
      000037                        545 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  546 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  547 	mov	r0, dpl
      00003C 20 F5 D3         [24]  548 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        549 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  550 	mov	a, r2
      000040 C6               [12]  551 	xch	a, @r0
      000041 F5 82            [12]  552 	mov	dpl, a
      000043 22               [24]  553 	ret
      000044                        554 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  555 	mov	dpl, r3
      000046 22               [24]  556 	ret
      000047                        557 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  558 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  559 	mov	r0, dpl
      00004C 20 F5 D9         [24]  560 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  561 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    562 ;--------------------------------------------------------
                                    563 ; global & static initialisations
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.area GSFINAL (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.globl __sdcc_gsinit_startup
                                    570 	.globl __sdcc_program_startup
                                    571 	.globl __start__stack
                                    572 	.globl __mcs51_genXINIT
                                    573 	.globl __mcs51_genXRAMCLEAR
                                    574 	.globl __mcs51_genRAMCLEAR
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'timer0_isr'
                                    577 ;------------------------------------------------------------
                                    578 ;value         Allocated with name '_timer0_isr_value_10000_24'
                                    579 ;------------------------------------------------------------
                                    580 ;	main.c:46: static int value=0;
      0000AF E4               [12]  581 	clr	a
      0000B0 F5 0E            [12]  582 	mov	_timer0_isr_value_10000_24,a
      0000B2 F5 0F            [12]  583 	mov	(_timer0_isr_value_10000_24 + 1),a
                                    584 ;	main.c:6: volatile unsigned long int delay_time_ms = 0;
      0000B4 F5 08            [12]  585 	mov	_delay_time_ms,a
      0000B6 F5 09            [12]  586 	mov	(_delay_time_ms + 1),a
      0000B8 F5 0A            [12]  587 	mov	(_delay_time_ms + 2),a
      0000BA F5 0B            [12]  588 	mov	(_delay_time_ms + 3),a
                                    589 ;	main.c:7: volatile unsigned short int time_ms = 0;
      0000BC F5 0C            [12]  590 	mov	_time_ms,a
      0000BE F5 0D            [12]  591 	mov	(_time_ms + 1),a
                                    592 	.area GSFINAL (CODE)
      0000C6 02 00 51         [24]  593 	ljmp	__sdcc_program_startup
                                    594 ;--------------------------------------------------------
                                    595 ; Home
                                    596 ;--------------------------------------------------------
                                    597 	.area HOME    (CODE)
                                    598 	.area HOME    (CODE)
      000051                        599 __sdcc_program_startup:
      000051 12 00 C9         [24]  600 	lcall	_main
      000054                        601 __sdcc_program_exit:
      000054 80 FE            [24]  602 	sjmp	.
                                    603 ;	return from main will return to caller
                                    604 ;--------------------------------------------------------
                                    605 ; code
                                    606 ;--------------------------------------------------------
                                    607 	.area CSEG    (CODE)
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'main'
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:10: void main(void){
                                    612 ;	-----------------------------------------
                                    613 ;	 function main
                                    614 ;	-----------------------------------------
      0000C9                        615 _main:
                           000007   616 	ar7 = 0x07
                           000006   617 	ar6 = 0x06
                           000005   618 	ar5 = 0x05
                           000004   619 	ar4 = 0x04
                           000003   620 	ar3 = 0x03
                           000002   621 	ar2 = 0x02
                           000001   622 	ar1 = 0x01
                           000000   623 	ar0 = 0x00
                                    624 ;	main.c:12: EA = 0;
                                    625 ;	assignBit
      0000C9 C2 AF            [12]  626 	clr	_EA
                                    627 ;	main.c:13: timer0_init();
      0000CB 12 01 8E         [24]  628 	lcall	_timer0_init
                                    629 ;	main.c:14: EA=1;         /* Enable global interrupt */
                                    630 ;	assignBit
      0000CE D2 AF            [12]  631 	setb	_EA
                                    632 ;	main.c:16: oled_init();
      0000D0 12 03 C7         [24]  633 	lcall	_oled_init
                                    634 ;	main.c:17: oled_set_position(0, 0);
      0000D3 75 18 00         [24]  635 	mov	_oled_set_position_PARM_2,#0x00
      0000D6 75 82 00         [24]  636 	mov	dpl, #0x00
      0000D9 12 03 38         [24]  637 	lcall	_oled_set_position
                                    638 ;	main.c:18: oled_string("!OLED OK!");
      0000DC 90 07 DD         [24]  639 	mov	dptr,#___str_0
      0000DF 75 F0 80         [24]  640 	mov	b, #0x80
      0000E2 12 07 43         [24]  641 	lcall	_oled_string
                                    642 ;	main.c:20: while(1){
      0000E5                        643 00102$:
                                    644 ;	main.c:23: }
      0000E5 80 FE            [24]  645 	sjmp	00102$
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'delay_us'
                                    648 ;------------------------------------------------------------
                                    649 ;value         Allocated to registers r6 r7 
                                    650 ;i             Allocated to registers r5 
                                    651 ;------------------------------------------------------------
                                    652 ;	main.c:26: void delay_us(unsigned int value){
                                    653 ;	-----------------------------------------
                                    654 ;	 function delay_us
                                    655 ;	-----------------------------------------
      0000E7                        656 _delay_us:
      0000E7 AE 82            [24]  657 	mov	r6, dpl
      0000E9 AF 83            [24]  658 	mov	r7, dph
                                    659 ;	main.c:30: while(value--){
      0000EB                        660 00102$:
      0000EB 8E 04            [24]  661 	mov	ar4,r6
      0000ED 8F 05            [24]  662 	mov	ar5,r7
      0000EF 1E               [12]  663 	dec	r6
      0000F0 BE FF 01         [24]  664 	cjne	r6,#0xff,00138$
      0000F3 1F               [12]  665 	dec	r7
      0000F4                        666 00138$:
      0000F4 EC               [12]  667 	mov	a,r4
      0000F5 4D               [12]  668 	orl	a,r5
      0000F6 60 06            [24]  669 	jz	00108$
                                    670 ;	main.c:31: for(i=0;i<4;i++);   /* This is around 1us */
      0000F8 7D 04            [12]  671 	mov	r5,#0x04
      0000FA                        672 00107$:
      0000FA DD FE            [24]  673 	djnz	r5,00107$
      0000FC 80 ED            [24]  674 	sjmp	00102$
      0000FE                        675 00108$:
                                    676 ;	main.c:33: }
      0000FE 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'delay_ms'
                                    680 ;------------------------------------------------------------
                                    681 ;value         Allocated to registers r4 r5 r6 r7 
                                    682 ;------------------------------------------------------------
                                    683 ;	main.c:35: void delay_ms(unsigned long int value){
                                    684 ;	-----------------------------------------
                                    685 ;	 function delay_ms
                                    686 ;	-----------------------------------------
      0000FF                        687 _delay_ms:
      0000FF AC 82            [24]  688 	mov	r4,dpl
      000101 AD 83            [24]  689 	mov	r5,dph
      000103 AE F0            [24]  690 	mov	r6,b
      000105 FF               [12]  691 	mov	r7,a
                                    692 ;	main.c:37: delay_time_ms=0;
      000106 E4               [12]  693 	clr	a
      000107 F5 08            [12]  694 	mov	_delay_time_ms,a
      000109 F5 09            [12]  695 	mov	(_delay_time_ms + 1),a
      00010B F5 0A            [12]  696 	mov	(_delay_time_ms + 2),a
      00010D F5 0B            [12]  697 	mov	(_delay_time_ms + 3),a
                                    698 ;	main.c:38: while(delay_time_ms<value);
      00010F                        699 00101$:
      00010F C3               [12]  700 	clr	c
      000110 E5 08            [12]  701 	mov	a,_delay_time_ms
      000112 9C               [12]  702 	subb	a,r4
      000113 E5 09            [12]  703 	mov	a,(_delay_time_ms + 1)
      000115 9D               [12]  704 	subb	a,r5
      000116 E5 0A            [12]  705 	mov	a,(_delay_time_ms + 2)
      000118 9E               [12]  706 	subb	a,r6
      000119 E5 0B            [12]  707 	mov	a,(_delay_time_ms + 3)
      00011B 9F               [12]  708 	subb	a,r7
      00011C 40 F1            [24]  709 	jc	00101$
                                    710 ;	main.c:40: }
      00011E 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'timer0_isr'
                                    714 ;------------------------------------------------------------
                                    715 ;value         Allocated with name '_timer0_isr_value_10000_24'
                                    716 ;------------------------------------------------------------
                                    717 ;	main.c:44: void timer0_isr(void) __interrupt(1){
                                    718 ;	-----------------------------------------
                                    719 ;	 function timer0_isr
                                    720 ;	-----------------------------------------
      00011F                        721 _timer0_isr:
      00011F C0 E0            [24]  722 	push	acc
      000121 C0 07            [24]  723 	push	ar7
      000123 C0 06            [24]  724 	push	ar6
      000125 C0 05            [24]  725 	push	ar5
      000127 C0 04            [24]  726 	push	ar4
      000129 C0 D0            [24]  727 	push	psw
      00012B 75 D0 00         [24]  728 	mov	psw,#0x00
                                    729 ;	main.c:47: TF0=0;
                                    730 ;	assignBit
      00012E C2 8D            [12]  731 	clr	_TF0
                                    732 ;	main.c:48: value++;
      000130 05 0E            [12]  733 	inc	_timer0_isr_value_10000_24
      000132 E4               [12]  734 	clr	a
      000133 B5 0E 02         [24]  735 	cjne	a,_timer0_isr_value_10000_24,00121$
      000136 05 0F            [12]  736 	inc	(_timer0_isr_value_10000_24 + 1)
      000138                        737 00121$:
                                    738 ;	main.c:49: if(value>=10){
      000138 C3               [12]  739 	clr	c
      000139 E5 0E            [12]  740 	mov	a,_timer0_isr_value_10000_24
      00013B 94 0A            [12]  741 	subb	a,#0x0a
      00013D E5 0F            [12]  742 	mov	a,(_timer0_isr_value_10000_24 + 1)
      00013F 64 80            [12]  743 	xrl	a,#0x80
      000141 94 80            [12]  744 	subb	a,#0x80
      000143 40 3C            [24]  745 	jc	00105$
                                    746 ;	main.c:51: value=0;
      000145 E4               [12]  747 	clr	a
      000146 F5 0E            [12]  748 	mov	_timer0_isr_value_10000_24,a
      000148 F5 0F            [12]  749 	mov	(_timer0_isr_value_10000_24 + 1),a
                                    750 ;	main.c:52: delay_time_ms++;
      00014A AC 08            [24]  751 	mov	r4,_delay_time_ms
      00014C AD 09            [24]  752 	mov	r5,(_delay_time_ms + 1)
      00014E AE 0A            [24]  753 	mov	r6,(_delay_time_ms + 2)
      000150 AF 0B            [24]  754 	mov	r7,(_delay_time_ms + 3)
      000152 04               [12]  755 	inc	a
      000153 2C               [12]  756 	add	a, r4
      000154 F5 08            [12]  757 	mov	_delay_time_ms,a
      000156 E4               [12]  758 	clr	a
      000157 3D               [12]  759 	addc	a, r5
      000158 F5 09            [12]  760 	mov	(_delay_time_ms + 1),a
      00015A E4               [12]  761 	clr	a
      00015B 3E               [12]  762 	addc	a, r6
      00015C F5 0A            [12]  763 	mov	(_delay_time_ms + 2),a
      00015E E4               [12]  764 	clr	a
      00015F 3F               [12]  765 	addc	a, r7
      000160 F5 0B            [12]  766 	mov	(_delay_time_ms + 3),a
                                    767 ;	main.c:53: time_ms++;
      000162 AE 0C            [24]  768 	mov	r6,_time_ms
      000164 AF 0D            [24]  769 	mov	r7,(_time_ms + 1)
      000166 74 01            [12]  770 	mov	a,#0x01
      000168 2E               [12]  771 	add	a, r6
      000169 F5 0C            [12]  772 	mov	_time_ms,a
      00016B E4               [12]  773 	clr	a
      00016C 3F               [12]  774 	addc	a, r7
      00016D F5 0D            [12]  775 	mov	(_time_ms + 1),a
                                    776 ;	main.c:55: if(time_ms>=1000){
      00016F AE 0C            [24]  777 	mov	r6,_time_ms
      000171 AF 0D            [24]  778 	mov	r7,(_time_ms + 1)
      000173 C3               [12]  779 	clr	c
      000174 EE               [12]  780 	mov	a,r6
      000175 94 E8            [12]  781 	subb	a,#0xe8
      000177 EF               [12]  782 	mov	a,r7
      000178 94 03            [12]  783 	subb	a,#0x03
      00017A 40 05            [24]  784 	jc	00105$
                                    785 ;	main.c:56: time_ms=0;
      00017C E4               [12]  786 	clr	a
      00017D F5 0C            [12]  787 	mov	_time_ms,a
      00017F F5 0D            [12]  788 	mov	(_time_ms + 1),a
      000181                        789 00105$:
                                    790 ;	main.c:59: }
      000181 D0 D0            [24]  791 	pop	psw
      000183 D0 04            [24]  792 	pop	ar4
      000185 D0 05            [24]  793 	pop	ar5
      000187 D0 06            [24]  794 	pop	ar6
      000189 D0 07            [24]  795 	pop	ar7
      00018B D0 E0            [24]  796 	pop	acc
      00018D 32               [24]  797 	reti
                                    798 ;	eliminated unneeded push/pop dpl
                                    799 ;	eliminated unneeded push/pop dph
                                    800 ;	eliminated unneeded push/pop b
                                    801 	.area CSEG    (CODE)
                                    802 	.area CONST   (CODE)
                                    803 	.area CONST   (CODE)
      0007DD                        804 ___str_0:
      0007DD 21 4F 4C 45 44 20 4F   805 	.ascii "!OLED OK!"
             4B 21
      0007E6 00                     806 	.db 0x00
                                    807 	.area CSEG    (CODE)
                                    808 	.area XINIT   (CODE)
                                    809 	.area CABS    (ABS,CODE)
