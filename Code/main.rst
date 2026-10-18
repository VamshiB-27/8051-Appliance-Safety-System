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
                                     13 	.globl _lcd_string
                                     14 	.globl _lcd_init
                                     15 	.globl _EP6INT
                                     16 	.globl _EP5INT
                                     17 	.globl _EP4INT
                                     18 	.globl _EP3INT
                                     19 	.globl _EP2INT
                                     20 	.globl _EP1INT
                                     21 	.globl _EP0INT
                                     22 	.globl _CF
                                     23 	.globl _CR
                                     24 	.globl _CCF4
                                     25 	.globl _CCF3
                                     26 	.globl _CCF2
                                     27 	.globl _CCF1
                                     28 	.globl _CCF0
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _TF2
                                     38 	.globl _EXF2
                                     39 	.globl _RCLK
                                     40 	.globl _TCLK
                                     41 	.globl _EXEN2
                                     42 	.globl _TR2
                                     43 	.globl _C_T2
                                     44 	.globl _CP_RL2
                                     45 	.globl _P4_1
                                     46 	.globl _P4_0
                                     47 	.globl _PPCL
                                     48 	.globl _PT2L
                                     49 	.globl _PSL
                                     50 	.globl _PT1L
                                     51 	.globl _PX1L
                                     52 	.globl _PT0L
                                     53 	.globl _PX0L
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _EC
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _FE
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _UEPINT
                                    112 	.globl _LEDCON
                                    113 	.globl _B
                                    114 	.globl _CCAP4H
                                    115 	.globl _CCAP4L
                                    116 	.globl _CCAP4
                                    117 	.globl _CCAP3H
                                    118 	.globl _CCAP3L
                                    119 	.globl _CCAP3
                                    120 	.globl _CCAP2H
                                    121 	.globl _CCAP2L
                                    122 	.globl _CCAP2
                                    123 	.globl _CCAP1H
                                    124 	.globl _CCAP1L
                                    125 	.globl _CCAP1
                                    126 	.globl _CCAP0H
                                    127 	.globl _CCAP0L
                                    128 	.globl _CCAP0
                                    129 	.globl _CH
                                    130 	.globl _CL
                                    131 	.globl _PCA
                                    132 	.globl _UBYCTHX
                                    133 	.globl _UBYCTLX
                                    134 	.globl _UBYCTX
                                    135 	.globl _ACC
                                    136 	.globl _CCAPM4
                                    137 	.globl _CCAPM3
                                    138 	.globl _CCAPM2
                                    139 	.globl _CCAPM1
                                    140 	.globl _CCAPM0
                                    141 	.globl _CMOD
                                    142 	.globl _CCON
                                    143 	.globl _UEPRST
                                    144 	.globl _UEPCONX
                                    145 	.globl _EECON
                                    146 	.globl _FCON
                                    147 	.globl _PSW
                                    148 	.globl _UEPDATX
                                    149 	.globl _UEPSTAX
                                    150 	.globl _TH2
                                    151 	.globl _TL2
                                    152 	.globl _TMR2
                                    153 	.globl _RCAP2H
                                    154 	.globl _RCAP2L
                                    155 	.globl _RCAP2
                                    156 	.globl _T2MOD
                                    157 	.globl _T2CON
                                    158 	.globl _UEPNUM
                                    159 	.globl _USBADDR
                                    160 	.globl _SPDAT
                                    161 	.globl _SPSTA
                                    162 	.globl _SPCON
                                    163 	.globl _UEPIEN
                                    164 	.globl _P4
                                    165 	.globl _USBIEN
                                    166 	.globl _USBINT
                                    167 	.globl _USBCON
                                    168 	.globl _UFNUMH
                                    169 	.globl _UFNUML
                                    170 	.globl _UFNUM
                                    171 	.globl _SADEN
                                    172 	.globl _IPL0
                                    173 	.globl _IPH0
                                    174 	.globl _IPH1
                                    175 	.globl _IPL1
                                    176 	.globl _IEN1
                                    177 	.globl _P3
                                    178 	.globl _CKCON1
                                    179 	.globl _SADDR
                                    180 	.globl _IEN0
                                    181 	.globl _IE
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _PLLDIV
                                    185 	.globl _PLLCON
                                    186 	.globl _AUXR1
                                    187 	.globl _P2
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BDRCON
                                    192 	.globl _BRL
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _SSADR
                                    196 	.globl _SSDAT
                                    197 	.globl _SSCS
                                    198 	.globl _SSCON
                                    199 	.globl _P1
                                    200 	.globl _CKCON0
                                    201 	.globl _AUXR
                                    202 	.globl _TH1
                                    203 	.globl _TL1
                                    204 	.globl _TMR1
                                    205 	.globl _TH0
                                    206 	.globl _TL0
                                    207 	.globl _TMR0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _time_ms
                                    216 	.globl _delay_us
                                    217 	.globl _delay_ms
                                    218 	.globl _init_settings
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0	=	0x0080
                           000081   225 _SP	=	0x0081
                           000082   226 _DPL	=	0x0082
                           000083   227 _DPH	=	0x0083
                           000087   228 _PCON	=	0x0087
                           000088   229 _TCON	=	0x0088
                           000089   230 _TMOD	=	0x0089
                           008C8A   231 _TMR0	=	0x8c8a
                           00008A   232 _TL0	=	0x008a
                           00008C   233 _TH0	=	0x008c
                           008D8B   234 _TMR1	=	0x8d8b
                           00008B   235 _TL1	=	0x008b
                           00008D   236 _TH1	=	0x008d
                           00008E   237 _AUXR	=	0x008e
                           00008F   238 _CKCON0	=	0x008f
                           000090   239 _P1	=	0x0090
                           000093   240 _SSCON	=	0x0093
                           000094   241 _SSCS	=	0x0094
                           000095   242 _SSDAT	=	0x0095
                           000096   243 _SSADR	=	0x0096
                           000098   244 _SCON	=	0x0098
                           000099   245 _SBUF	=	0x0099
                           00009A   246 _BRL	=	0x009a
                           00009B   247 _BDRCON	=	0x009b
                           00009C   248 _KBLS	=	0x009c
                           00009D   249 _KBE	=	0x009d
                           00009E   250 _KBF	=	0x009e
                           0000A0   251 _P2	=	0x00a0
                           0000A2   252 _AUXR1	=	0x00a2
                           0000A3   253 _PLLCON	=	0x00a3
                           0000A4   254 _PLLDIV	=	0x00a4
                           0000A6   255 _WDTRST	=	0x00a6
                           0000A7   256 _WDTPRG	=	0x00a7
                           0000A8   257 _IE	=	0x00a8
                           0000A8   258 _IEN0	=	0x00a8
                           0000A9   259 _SADDR	=	0x00a9
                           0000AF   260 _CKCON1	=	0x00af
                           0000B0   261 _P3	=	0x00b0
                           0000B1   262 _IEN1	=	0x00b1
                           0000B2   263 _IPL1	=	0x00b2
                           0000B3   264 _IPH1	=	0x00b3
                           0000B7   265 _IPH0	=	0x00b7
                           0000B8   266 _IPL0	=	0x00b8
                           0000B9   267 _SADEN	=	0x00b9
                           00BBBA   268 _UFNUM	=	0xbbba
                           0000BA   269 _UFNUML	=	0x00ba
                           0000BB   270 _UFNUMH	=	0x00bb
                           0000BC   271 _USBCON	=	0x00bc
                           0000BD   272 _USBINT	=	0x00bd
                           0000BE   273 _USBIEN	=	0x00be
                           0000C0   274 _P4	=	0x00c0
                           0000C2   275 _UEPIEN	=	0x00c2
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C6   279 _USBADDR	=	0x00c6
                           0000C7   280 _UEPNUM	=	0x00c7
                           0000C8   281 _T2CON	=	0x00c8
                           0000C9   282 _T2MOD	=	0x00c9
                           00CBCA   283 _RCAP2	=	0xcbca
                           0000CA   284 _RCAP2L	=	0x00ca
                           0000CB   285 _RCAP2H	=	0x00cb
                           00CDCC   286 _TMR2	=	0xcdcc
                           0000CC   287 _TL2	=	0x00cc
                           0000CD   288 _TH2	=	0x00cd
                           0000CE   289 _UEPSTAX	=	0x00ce
                           0000CF   290 _UEPDATX	=	0x00cf
                           0000D0   291 _PSW	=	0x00d0
                           0000D1   292 _FCON	=	0x00d1
                           0000D2   293 _EECON	=	0x00d2
                           0000D4   294 _UEPCONX	=	0x00d4
                           0000D5   295 _UEPRST	=	0x00d5
                           0000D8   296 _CCON	=	0x00d8
                           0000D9   297 _CMOD	=	0x00d9
                           0000DA   298 _CCAPM0	=	0x00da
                           0000DB   299 _CCAPM1	=	0x00db
                           0000DC   300 _CCAPM2	=	0x00dc
                           0000DD   301 _CCAPM3	=	0x00dd
                           0000DE   302 _CCAPM4	=	0x00de
                           0000E0   303 _ACC	=	0x00e0
                           00E3E2   304 _UBYCTX	=	0xe3e2
                           0000E2   305 _UBYCTLX	=	0x00e2
                           0000E3   306 _UBYCTHX	=	0x00e3
                           00F9E9   307 _PCA	=	0xf9e9
                           0000E9   308 _CL	=	0x00e9
                           0000F9   309 _CH	=	0x00f9
                           00FAEA   310 _CCAP0	=	0xfaea
                           0000EA   311 _CCAP0L	=	0x00ea
                           0000FA   312 _CCAP0H	=	0x00fa
                           00FBEB   313 _CCAP1	=	0xfbeb
                           0000EB   314 _CCAP1L	=	0x00eb
                           0000FB   315 _CCAP1H	=	0x00fb
                           00FCEC   316 _CCAP2	=	0xfcec
                           0000EC   317 _CCAP2L	=	0x00ec
                           0000FC   318 _CCAP2H	=	0x00fc
                           00FDED   319 _CCAP3	=	0xfded
                           0000ED   320 _CCAP3L	=	0x00ed
                           0000FD   321 _CCAP3H	=	0x00fd
                           00FEEE   322 _CCAP4	=	0xfeee
                           0000EE   323 _CCAP4L	=	0x00ee
                           0000FE   324 _CCAP4H	=	0x00fe
                           0000F0   325 _B	=	0x00f0
                           0000F1   326 _LEDCON	=	0x00f1
                           0000F8   327 _UEPINT	=	0x00f8
                                    328 ;--------------------------------------------------------
                                    329 ; special function bits
                                    330 ;--------------------------------------------------------
                                    331 	.area RSEG    (ABS,DATA)
      000000                        332 	.org 0x0000
                           000080   333 _P0_0	=	0x0080
                           000081   334 _P0_1	=	0x0081
                           000082   335 _P0_2	=	0x0082
                           000083   336 _P0_3	=	0x0083
                           000084   337 _P0_4	=	0x0084
                           000085   338 _P0_5	=	0x0085
                           000086   339 _P0_6	=	0x0086
                           000087   340 _P0_7	=	0x0087
                           000088   341 _IT0	=	0x0088
                           000089   342 _IE0	=	0x0089
                           00008A   343 _IT1	=	0x008a
                           00008B   344 _IE1	=	0x008b
                           00008C   345 _TR0	=	0x008c
                           00008D   346 _TF0	=	0x008d
                           00008E   347 _TR1	=	0x008e
                           00008F   348 _TF1	=	0x008f
                           000090   349 _P1_0	=	0x0090
                           000091   350 _P1_1	=	0x0091
                           000092   351 _P1_2	=	0x0092
                           000093   352 _P1_3	=	0x0093
                           000094   353 _P1_4	=	0x0094
                           000095   354 _P1_5	=	0x0095
                           000096   355 _P1_6	=	0x0096
                           000097   356 _P1_7	=	0x0097
                           000098   357 _RI	=	0x0098
                           000099   358 _TI	=	0x0099
                           00009A   359 _RB8	=	0x009a
                           00009B   360 _TB8	=	0x009b
                           00009C   361 _REN	=	0x009c
                           00009D   362 _SM2	=	0x009d
                           00009E   363 _SM1	=	0x009e
                           00009F   364 _SM0	=	0x009f
                           00009F   365 _FE	=	0x009f
                           0000A0   366 _P2_0	=	0x00a0
                           0000A1   367 _P2_1	=	0x00a1
                           0000A2   368 _P2_2	=	0x00a2
                           0000A3   369 _P2_3	=	0x00a3
                           0000A4   370 _P2_4	=	0x00a4
                           0000A5   371 _P2_5	=	0x00a5
                           0000A6   372 _P2_6	=	0x00a6
                           0000A7   373 _P2_7	=	0x00a7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AD   379 _ET2	=	0x00ad
                           0000AE   380 _EC	=	0x00ae
                           0000AF   381 _EA	=	0x00af
                           0000B0   382 _P3_0	=	0x00b0
                           0000B1   383 _P3_1	=	0x00b1
                           0000B2   384 _P3_2	=	0x00b2
                           0000B3   385 _P3_3	=	0x00b3
                           0000B4   386 _P3_4	=	0x00b4
                           0000B5   387 _P3_5	=	0x00b5
                           0000B6   388 _P3_6	=	0x00b6
                           0000B7   389 _P3_7	=	0x00b7
                           0000B8   390 _PX0L	=	0x00b8
                           0000B9   391 _PT0L	=	0x00b9
                           0000BA   392 _PX1L	=	0x00ba
                           0000BB   393 _PT1L	=	0x00bb
                           0000BC   394 _PSL	=	0x00bc
                           0000BD   395 _PT2L	=	0x00bd
                           0000BE   396 _PPCL	=	0x00be
                           0000C0   397 _P4_0	=	0x00c0
                           0000C1   398 _P4_1	=	0x00c1
                           0000C8   399 _CP_RL2	=	0x00c8
                           0000C9   400 _C_T2	=	0x00c9
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 _EXEN2	=	0x00cb
                           0000CC   403 _TCLK	=	0x00cc
                           0000CD   404 _RCLK	=	0x00cd
                           0000CE   405 _EXF2	=	0x00ce
                           0000CF   406 _TF2	=	0x00cf
                           0000D0   407 _P	=	0x00d0
                           0000D1   408 _F1	=	0x00d1
                           0000D2   409 _OV	=	0x00d2
                           0000D3   410 _RS0	=	0x00d3
                           0000D4   411 _RS1	=	0x00d4
                           0000D5   412 _F0	=	0x00d5
                           0000D6   413 _AC	=	0x00d6
                           0000D7   414 _CY	=	0x00d7
                           0000D8   415 _CCF0	=	0x00d8
                           0000D9   416 _CCF1	=	0x00d9
                           0000DA   417 _CCF2	=	0x00da
                           0000DB   418 _CCF3	=	0x00db
                           0000DC   419 _CCF4	=	0x00dc
                           0000DE   420 _CR	=	0x00de
                           0000DF   421 _CF	=	0x00df
                           0000F8   422 _EP0INT	=	0x00f8
                           0000F9   423 _EP1INT	=	0x00f9
                           0000FA   424 _EP2INT	=	0x00fa
                           0000FB   425 _EP3INT	=	0x00fb
                           0000FC   426 _EP4INT	=	0x00fc
                           0000FD   427 _EP5INT	=	0x00fd
                           0000FE   428 _EP6INT	=	0x00fe
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable register banks
                                    431 ;--------------------------------------------------------
                                    432 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        433 	.ds 8
                                    434 ;--------------------------------------------------------
                                    435 ; internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area DSEG    (DATA)
      000008                        438 _time_ms::
      000008                        439 	.ds 4
      00000C                        440 _timer0_isr_value_10000_18:
      00000C                        441 	.ds 2
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable items in internal ram
                                    444 ;--------------------------------------------------------
                                    445 ;--------------------------------------------------------
                                    446 ; Stack segment in internal ram
                                    447 ;--------------------------------------------------------
                                    448 	.area SSEG
      00000E                        449 __start__stack:
      00000E                        450 	.ds	1
                                    451 
                                    452 ;--------------------------------------------------------
                                    453 ; indirectly addressable internal ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area ISEG    (DATA)
                                    456 ;--------------------------------------------------------
                                    457 ; absolute internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area IABS    (ABS,DATA)
                                    460 	.area IABS    (ABS,DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; bit data
                                    463 ;--------------------------------------------------------
                                    464 	.area BSEG    (BIT)
                                    465 ;--------------------------------------------------------
                                    466 ; paged external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area PSEG    (PAG,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; uninitialized external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XSEG    (XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; absolute external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XABS    (ABS,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; initialized external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XISEG   (XDATA)
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT0 (CODE)
                                    483 	.area GSINIT1 (CODE)
                                    484 	.area GSINIT2 (CODE)
                                    485 	.area GSINIT3 (CODE)
                                    486 	.area GSINIT4 (CODE)
                                    487 	.area GSINIT5 (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.area GSFINAL (CODE)
                                    490 	.area CSEG    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; interrupt vector
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
      000000                        495 __interrupt_vect:
      000000 02 00 56         [24]  496 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  497 	reti
      000004                        498 	.ds	7
      00000B 02 01 09         [24]  499 	ljmp	_timer0_isr
                                    500 ; restartable atomic support routines
      00000E                        501 	.ds	2
      000010                        502 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  503 	nop
      000011 00               [12]  504 	nop
      000012                        505 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  506 	movx	a, @r0
      000013 FB               [12]  507 	mov	r3, a
      000014 EA               [12]  508 	mov	a, r2
      000015 F2               [24]  509 	movx	@r0, a
      000016 80 2C            [24]  510 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  511 	nop
      000019 00               [12]  512 	nop
      00001A                        513 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  514 	movx	a, @dptr
      00001B FB               [12]  515 	mov	r3, a
      00001C EA               [12]  516 	mov	a, r2
      00001D F0               [24]  517 	movx	@dptr, a
      00001E 80 24            [24]  518 	sjmp	sdcc_atomic_exchange_exit
      000020                        519 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  520 	mov	a, @r0
      000021 B5 02 02         [24]  521 	cjne	a, ar2, .+#5
      000024 EB               [12]  522 	mov	a, r3
      000025 F6               [12]  523 	mov	@r0, a
      000026 22               [24]  524 	ret
      000027 00               [12]  525 	nop
      000028                        526 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  527 	movx	a, @r0
      000029 B5 02 02         [24]  528 	cjne	a, ar2, .+#5
      00002C EB               [12]  529 	mov	a, r3
      00002D F2               [24]  530 	movx	@r0, a
      00002E 22               [24]  531 	ret
      00002F 00               [12]  532 	nop
      000030                        533 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  534 	movx	a, @dptr
      000031 B5 02 02         [24]  535 	cjne	a, ar2, .+#5
      000034 EB               [12]  536 	mov	a, r3
      000035 F0               [24]  537 	movx	@dptr, a
      000036 22               [24]  538 	ret
      000037                        539 sdcc_atomic_exchange_rollback_end::
                                    540 
      000037                        541 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  542 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  543 	mov	r0, dpl
      00003C 20 F5 D3         [24]  544 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        545 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  546 	mov	a, r2
      000040 C6               [12]  547 	xch	a, @r0
      000041 F5 82            [12]  548 	mov	dpl, a
      000043 22               [24]  549 	ret
      000044                        550 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  551 	mov	dpl, r3
      000046 22               [24]  552 	ret
      000047                        553 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  554 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  555 	mov	r0, dpl
      00004C 20 F5 D9         [24]  556 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  557 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    558 ;--------------------------------------------------------
                                    559 ; global & static initialisations
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area GSINIT  (CODE)
                                    563 	.area GSFINAL (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 	.globl __sdcc_gsinit_startup
                                    566 	.globl __sdcc_program_startup
                                    567 	.globl __start__stack
                                    568 	.globl __mcs51_genXINIT
                                    569 	.globl __mcs51_genXRAMCLEAR
                                    570 	.globl __mcs51_genRAMCLEAR
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'timer0_isr'
                                    573 ;------------------------------------------------------------
                                    574 ;value         Allocated with name '_timer0_isr_value_10000_18'
                                    575 ;------------------------------------------------------------
                                    576 ;	main.c:38: static int value=0;
      0000AF E4               [12]  577 	clr	a
      0000B0 F5 0C            [12]  578 	mov	_timer0_isr_value_10000_18,a
      0000B2 F5 0D            [12]  579 	mov	(_timer0_isr_value_10000_18 + 1),a
                                    580 	.area GSFINAL (CODE)
      0000B4 02 00 51         [24]  581 	ljmp	__sdcc_program_startup
                                    582 ;--------------------------------------------------------
                                    583 ; Home
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
                                    586 	.area HOME    (CODE)
      000051                        587 __sdcc_program_startup:
      000051 12 00 B7         [24]  588 	lcall	_main
      000054                        589 __sdcc_program_exit:
      000054 80 FE            [24]  590 	sjmp	.
                                    591 ;	return from main will return to caller
                                    592 ;--------------------------------------------------------
                                    593 ; code
                                    594 ;--------------------------------------------------------
                                    595 	.area CSEG    (CODE)
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'main'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:7: void main(void){
                                    600 ;	-----------------------------------------
                                    601 ;	 function main
                                    602 ;	-----------------------------------------
      0000B7                        603 _main:
                           000007   604 	ar7 = 0x07
                           000006   605 	ar6 = 0x06
                           000005   606 	ar5 = 0x05
                           000004   607 	ar4 = 0x04
                           000003   608 	ar3 = 0x03
                           000002   609 	ar2 = 0x02
                           000001   610 	ar1 = 0x01
                           000000   611 	ar0 = 0x00
                                    612 ;	main.c:9: time_ms=0;
      0000B7 E4               [12]  613 	clr	a
      0000B8 F5 08            [12]  614 	mov	_time_ms,a
      0000BA F5 09            [12]  615 	mov	(_time_ms + 1),a
      0000BC F5 0A            [12]  616 	mov	(_time_ms + 2),a
      0000BE F5 0B            [12]  617 	mov	(_time_ms + 3),a
                                    618 ;	main.c:10: init_settings();
      0000C0 12 01 59         [24]  619 	lcall	_init_settings
                                    620 ;	main.c:11: lcd_init();
      0000C3 12 01 69         [24]  621 	lcall	_lcd_init
                                    622 ;	main.c:13: lcd_string("Hello Vamshi!");
      0000C6 90 02 22         [24]  623 	mov	dptr,#___str_0
      0000C9 75 F0 80         [24]  624 	mov	b, #0x80
      0000CC 12 01 C3         [24]  625 	lcall	_lcd_string
                                    626 ;	main.c:15: while(1){
      0000CF                        627 00102$:
                                    628 ;	main.c:18: }
      0000CF 80 FE            [24]  629 	sjmp	00102$
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'delay_us'
                                    632 ;------------------------------------------------------------
                                    633 ;value         Allocated to registers r6 r7 
                                    634 ;i             Allocated to registers r5 
                                    635 ;------------------------------------------------------------
                                    636 ;	main.c:20: void delay_us(unsigned int value){
                                    637 ;	-----------------------------------------
                                    638 ;	 function delay_us
                                    639 ;	-----------------------------------------
      0000D1                        640 _delay_us:
      0000D1 AE 82            [24]  641 	mov	r6, dpl
      0000D3 AF 83            [24]  642 	mov	r7, dph
                                    643 ;	main.c:24: while(value--){
      0000D5                        644 00102$:
      0000D5 8E 04            [24]  645 	mov	ar4,r6
      0000D7 8F 05            [24]  646 	mov	ar5,r7
      0000D9 1E               [12]  647 	dec	r6
      0000DA BE FF 01         [24]  648 	cjne	r6,#0xff,00138$
      0000DD 1F               [12]  649 	dec	r7
      0000DE                        650 00138$:
      0000DE EC               [12]  651 	mov	a,r4
      0000DF 4D               [12]  652 	orl	a,r5
      0000E0 60 06            [24]  653 	jz	00108$
                                    654 ;	main.c:25: for(i=0;i<4;i++);   /* This is around 1us */
      0000E2 7D 04            [12]  655 	mov	r5,#0x04
      0000E4                        656 00107$:
      0000E4 DD FE            [24]  657 	djnz	r5,00107$
      0000E6 80 ED            [24]  658 	sjmp	00102$
      0000E8                        659 00108$:
                                    660 ;	main.c:27: }
      0000E8 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'delay_ms'
                                    664 ;------------------------------------------------------------
                                    665 ;value         Allocated to registers r4 r5 r6 r7 
                                    666 ;------------------------------------------------------------
                                    667 ;	main.c:29: void delay_ms(unsigned long int value){
                                    668 ;	-----------------------------------------
                                    669 ;	 function delay_ms
                                    670 ;	-----------------------------------------
      0000E9                        671 _delay_ms:
      0000E9 AC 82            [24]  672 	mov	r4,dpl
      0000EB AD 83            [24]  673 	mov	r5,dph
      0000ED AE F0            [24]  674 	mov	r6,b
      0000EF FF               [12]  675 	mov	r7,a
                                    676 ;	main.c:31: time_ms=0;
      0000F0 E4               [12]  677 	clr	a
      0000F1 F5 08            [12]  678 	mov	_time_ms,a
      0000F3 F5 09            [12]  679 	mov	(_time_ms + 1),a
      0000F5 F5 0A            [12]  680 	mov	(_time_ms + 2),a
      0000F7 F5 0B            [12]  681 	mov	(_time_ms + 3),a
                                    682 ;	main.c:32: while(time_ms<value);
      0000F9                        683 00101$:
      0000F9 C3               [12]  684 	clr	c
      0000FA E5 08            [12]  685 	mov	a,_time_ms
      0000FC 9C               [12]  686 	subb	a,r4
      0000FD E5 09            [12]  687 	mov	a,(_time_ms + 1)
      0000FF 9D               [12]  688 	subb	a,r5
      000100 E5 0A            [12]  689 	mov	a,(_time_ms + 2)
      000102 9E               [12]  690 	subb	a,r6
      000103 E5 0B            [12]  691 	mov	a,(_time_ms + 3)
      000105 9F               [12]  692 	subb	a,r7
      000106 40 F1            [24]  693 	jc	00101$
                                    694 ;	main.c:34: }
      000108 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'timer0_isr'
                                    698 ;------------------------------------------------------------
                                    699 ;value         Allocated with name '_timer0_isr_value_10000_18'
                                    700 ;------------------------------------------------------------
                                    701 ;	main.c:36: void timer0_isr(void) __interrupt(1){
                                    702 ;	-----------------------------------------
                                    703 ;	 function timer0_isr
                                    704 ;	-----------------------------------------
      000109                        705 _timer0_isr:
      000109 C0 E0            [24]  706 	push	acc
      00010B C0 07            [24]  707 	push	ar7
      00010D C0 06            [24]  708 	push	ar6
      00010F C0 05            [24]  709 	push	ar5
      000111 C0 04            [24]  710 	push	ar4
      000113 C0 D0            [24]  711 	push	psw
      000115 75 D0 00         [24]  712 	mov	psw,#0x00
                                    713 ;	main.c:39: TF0=0;
                                    714 ;	assignBit
      000118 C2 8D            [12]  715 	clr	_TF0
                                    716 ;	main.c:40: value++;
      00011A 05 0C            [12]  717 	inc	_timer0_isr_value_10000_18
      00011C E4               [12]  718 	clr	a
      00011D B5 0C 02         [24]  719 	cjne	a,_timer0_isr_value_10000_18,00112$
      000120 05 0D            [12]  720 	inc	(_timer0_isr_value_10000_18 + 1)
      000122                        721 00112$:
                                    722 ;	main.c:41: if(value==10){
      000122 74 0A            [12]  723 	mov	a,#0x0a
      000124 B5 0C 06         [24]  724 	cjne	a,_timer0_isr_value_10000_18,00113$
      000127 E4               [12]  725 	clr	a
      000128 B5 0D 02         [24]  726 	cjne	a,(_timer0_isr_value_10000_18 + 1),00113$
      00012B 80 02            [24]  727 	sjmp	00114$
      00012D                        728 00113$:
      00012D 80 1D            [24]  729 	sjmp	00103$
      00012F                        730 00114$:
                                    731 ;	main.c:42: value=0;
      00012F E4               [12]  732 	clr	a
      000130 F5 0C            [12]  733 	mov	_timer0_isr_value_10000_18,a
      000132 F5 0D            [12]  734 	mov	(_timer0_isr_value_10000_18 + 1),a
                                    735 ;	main.c:43: time_ms++;
      000134 AC 08            [24]  736 	mov	r4,_time_ms
      000136 AD 09            [24]  737 	mov	r5,(_time_ms + 1)
      000138 AE 0A            [24]  738 	mov	r6,(_time_ms + 2)
      00013A AF 0B            [24]  739 	mov	r7,(_time_ms + 3)
      00013C 04               [12]  740 	inc	a
      00013D 2C               [12]  741 	add	a, r4
      00013E F5 08            [12]  742 	mov	_time_ms,a
      000140 E4               [12]  743 	clr	a
      000141 3D               [12]  744 	addc	a, r5
      000142 F5 09            [12]  745 	mov	(_time_ms + 1),a
      000144 E4               [12]  746 	clr	a
      000145 3E               [12]  747 	addc	a, r6
      000146 F5 0A            [12]  748 	mov	(_time_ms + 2),a
      000148 E4               [12]  749 	clr	a
      000149 3F               [12]  750 	addc	a, r7
      00014A F5 0B            [12]  751 	mov	(_time_ms + 3),a
      00014C                        752 00103$:
                                    753 ;	main.c:45: }
      00014C D0 D0            [24]  754 	pop	psw
      00014E D0 04            [24]  755 	pop	ar4
      000150 D0 05            [24]  756 	pop	ar5
      000152 D0 06            [24]  757 	pop	ar6
      000154 D0 07            [24]  758 	pop	ar7
      000156 D0 E0            [24]  759 	pop	acc
      000158 32               [24]  760 	reti
                                    761 ;	eliminated unneeded push/pop dpl
                                    762 ;	eliminated unneeded push/pop dph
                                    763 ;	eliminated unneeded push/pop b
                                    764 ;------------------------------------------------------------
                                    765 ;Allocation info for local variables in function 'init_settings'
                                    766 ;------------------------------------------------------------
                                    767 ;	main.c:47: void init_settings(void){
                                    768 ;	-----------------------------------------
                                    769 ;	 function init_settings
                                    770 ;	-----------------------------------------
      000159                        771 _init_settings:
                                    772 ;	main.c:50: TMOD=0x02;
      000159 75 89 02         [24]  773 	mov	_TMOD,#0x02
                                    774 ;	main.c:51: TH0=0x38;     /* auto reload value for 100us */
      00015C 75 8C 38         [24]  775 	mov	_TH0,#0x38
                                    776 ;	main.c:52: TL0=0x38;     /* initize timer with start value */
      00015F 75 8A 38         [24]  777 	mov	_TL0,#0x38
                                    778 ;	main.c:53: ET0=1;        /* Enable timer interrupt */
                                    779 ;	assignBit
      000162 D2 A9            [12]  780 	setb	_ET0
                                    781 ;	main.c:54: EA=1;         /* Enable global interrupt */
                                    782 ;	assignBit
      000164 D2 AF            [12]  783 	setb	_EA
                                    784 ;	main.c:55: TR0=1;        /* Start Timer 0 */
                                    785 ;	assignBit
      000166 D2 8C            [12]  786 	setb	_TR0
                                    787 ;	main.c:56: }
      000168 22               [24]  788 	ret
                                    789 	.area CSEG    (CODE)
                                    790 	.area CONST   (CODE)
                                    791 	.area CONST   (CODE)
      000222                        792 ___str_0:
      000222 48 65 6C 6C 6F 20 56   793 	.ascii "Hello Vamshi!"
             61 6D 73 68 69 21
      00022F 00                     794 	.db 0x00
                                    795 	.area CSEG    (CODE)
                                    796 	.area XINIT   (CODE)
                                    797 	.area CABS    (ABS,CODE)
