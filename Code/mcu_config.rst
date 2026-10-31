                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module mcu_config
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EP6INT
                                     12 	.globl _EP5INT
                                     13 	.globl _EP4INT
                                     14 	.globl _EP3INT
                                     15 	.globl _EP2INT
                                     16 	.globl _EP1INT
                                     17 	.globl _EP0INT
                                     18 	.globl _CF
                                     19 	.globl _CR
                                     20 	.globl _CCF4
                                     21 	.globl _CCF3
                                     22 	.globl _CCF2
                                     23 	.globl _CCF1
                                     24 	.globl _CCF0
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _F1
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _P4_1
                                     42 	.globl _P4_0
                                     43 	.globl _PPCL
                                     44 	.globl _PT2L
                                     45 	.globl _PSL
                                     46 	.globl _PT1L
                                     47 	.globl _PX1L
                                     48 	.globl _PT0L
                                     49 	.globl _PX0L
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _EC
                                     60 	.globl _ET2
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _FE
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _UEPINT
                                    108 	.globl _LEDCON
                                    109 	.globl _B
                                    110 	.globl _CCAP4H
                                    111 	.globl _CCAP4L
                                    112 	.globl _CCAP4
                                    113 	.globl _CCAP3H
                                    114 	.globl _CCAP3L
                                    115 	.globl _CCAP3
                                    116 	.globl _CCAP2H
                                    117 	.globl _CCAP2L
                                    118 	.globl _CCAP2
                                    119 	.globl _CCAP1H
                                    120 	.globl _CCAP1L
                                    121 	.globl _CCAP1
                                    122 	.globl _CCAP0H
                                    123 	.globl _CCAP0L
                                    124 	.globl _CCAP0
                                    125 	.globl _CH
                                    126 	.globl _CL
                                    127 	.globl _PCA
                                    128 	.globl _UBYCTHX
                                    129 	.globl _UBYCTLX
                                    130 	.globl _UBYCTX
                                    131 	.globl _ACC
                                    132 	.globl _CCAPM4
                                    133 	.globl _CCAPM3
                                    134 	.globl _CCAPM2
                                    135 	.globl _CCAPM1
                                    136 	.globl _CCAPM0
                                    137 	.globl _CMOD
                                    138 	.globl _CCON
                                    139 	.globl _UEPRST
                                    140 	.globl _UEPCONX
                                    141 	.globl _EECON
                                    142 	.globl _FCON
                                    143 	.globl _PSW
                                    144 	.globl _UEPDATX
                                    145 	.globl _UEPSTAX
                                    146 	.globl _TH2
                                    147 	.globl _TL2
                                    148 	.globl _TMR2
                                    149 	.globl _RCAP2H
                                    150 	.globl _RCAP2L
                                    151 	.globl _RCAP2
                                    152 	.globl _T2MOD
                                    153 	.globl _T2CON
                                    154 	.globl _UEPNUM
                                    155 	.globl _USBADDR
                                    156 	.globl _SPDAT
                                    157 	.globl _SPSTA
                                    158 	.globl _SPCON
                                    159 	.globl _UEPIEN
                                    160 	.globl _P4
                                    161 	.globl _USBIEN
                                    162 	.globl _USBINT
                                    163 	.globl _USBCON
                                    164 	.globl _UFNUMH
                                    165 	.globl _UFNUML
                                    166 	.globl _UFNUM
                                    167 	.globl _SADEN
                                    168 	.globl _IPL0
                                    169 	.globl _IPH0
                                    170 	.globl _IPH1
                                    171 	.globl _IPL1
                                    172 	.globl _IEN1
                                    173 	.globl _P3
                                    174 	.globl _CKCON1
                                    175 	.globl _SADDR
                                    176 	.globl _IEN0
                                    177 	.globl _IE
                                    178 	.globl _WDTPRG
                                    179 	.globl _WDTRST
                                    180 	.globl _PLLDIV
                                    181 	.globl _PLLCON
                                    182 	.globl _AUXR1
                                    183 	.globl _P2
                                    184 	.globl _KBF
                                    185 	.globl _KBE
                                    186 	.globl _KBLS
                                    187 	.globl _BDRCON
                                    188 	.globl _BRL
                                    189 	.globl _SBUF
                                    190 	.globl _SCON
                                    191 	.globl _SSADR
                                    192 	.globl _SSDAT
                                    193 	.globl _SSCS
                                    194 	.globl _SSCON
                                    195 	.globl _P1
                                    196 	.globl _CKCON0
                                    197 	.globl _AUXR
                                    198 	.globl _TH1
                                    199 	.globl _TL1
                                    200 	.globl _TMR1
                                    201 	.globl _TH0
                                    202 	.globl _TL0
                                    203 	.globl _TMR0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _timer0_init
                                    212 ;--------------------------------------------------------
                                    213 ; special function registers
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0	=	0x0080
                           000081   218 _SP	=	0x0081
                           000082   219 _DPL	=	0x0082
                           000083   220 _DPH	=	0x0083
                           000087   221 _PCON	=	0x0087
                           000088   222 _TCON	=	0x0088
                           000089   223 _TMOD	=	0x0089
                           008C8A   224 _TMR0	=	0x8c8a
                           00008A   225 _TL0	=	0x008a
                           00008C   226 _TH0	=	0x008c
                           008D8B   227 _TMR1	=	0x8d8b
                           00008B   228 _TL1	=	0x008b
                           00008D   229 _TH1	=	0x008d
                           00008E   230 _AUXR	=	0x008e
                           00008F   231 _CKCON0	=	0x008f
                           000090   232 _P1	=	0x0090
                           000093   233 _SSCON	=	0x0093
                           000094   234 _SSCS	=	0x0094
                           000095   235 _SSDAT	=	0x0095
                           000096   236 _SSADR	=	0x0096
                           000098   237 _SCON	=	0x0098
                           000099   238 _SBUF	=	0x0099
                           00009A   239 _BRL	=	0x009a
                           00009B   240 _BDRCON	=	0x009b
                           00009C   241 _KBLS	=	0x009c
                           00009D   242 _KBE	=	0x009d
                           00009E   243 _KBF	=	0x009e
                           0000A0   244 _P2	=	0x00a0
                           0000A2   245 _AUXR1	=	0x00a2
                           0000A3   246 _PLLCON	=	0x00a3
                           0000A4   247 _PLLDIV	=	0x00a4
                           0000A6   248 _WDTRST	=	0x00a6
                           0000A7   249 _WDTPRG	=	0x00a7
                           0000A8   250 _IE	=	0x00a8
                           0000A8   251 _IEN0	=	0x00a8
                           0000A9   252 _SADDR	=	0x00a9
                           0000AF   253 _CKCON1	=	0x00af
                           0000B0   254 _P3	=	0x00b0
                           0000B1   255 _IEN1	=	0x00b1
                           0000B2   256 _IPL1	=	0x00b2
                           0000B3   257 _IPH1	=	0x00b3
                           0000B7   258 _IPH0	=	0x00b7
                           0000B8   259 _IPL0	=	0x00b8
                           0000B9   260 _SADEN	=	0x00b9
                           00BBBA   261 _UFNUM	=	0xbbba
                           0000BA   262 _UFNUML	=	0x00ba
                           0000BB   263 _UFNUMH	=	0x00bb
                           0000BC   264 _USBCON	=	0x00bc
                           0000BD   265 _USBINT	=	0x00bd
                           0000BE   266 _USBIEN	=	0x00be
                           0000C0   267 _P4	=	0x00c0
                           0000C2   268 _UEPIEN	=	0x00c2
                           0000C3   269 _SPCON	=	0x00c3
                           0000C4   270 _SPSTA	=	0x00c4
                           0000C5   271 _SPDAT	=	0x00c5
                           0000C6   272 _USBADDR	=	0x00c6
                           0000C7   273 _UEPNUM	=	0x00c7
                           0000C8   274 _T2CON	=	0x00c8
                           0000C9   275 _T2MOD	=	0x00c9
                           00CBCA   276 _RCAP2	=	0xcbca
                           0000CA   277 _RCAP2L	=	0x00ca
                           0000CB   278 _RCAP2H	=	0x00cb
                           00CDCC   279 _TMR2	=	0xcdcc
                           0000CC   280 _TL2	=	0x00cc
                           0000CD   281 _TH2	=	0x00cd
                           0000CE   282 _UEPSTAX	=	0x00ce
                           0000CF   283 _UEPDATX	=	0x00cf
                           0000D0   284 _PSW	=	0x00d0
                           0000D1   285 _FCON	=	0x00d1
                           0000D2   286 _EECON	=	0x00d2
                           0000D4   287 _UEPCONX	=	0x00d4
                           0000D5   288 _UEPRST	=	0x00d5
                           0000D8   289 _CCON	=	0x00d8
                           0000D9   290 _CMOD	=	0x00d9
                           0000DA   291 _CCAPM0	=	0x00da
                           0000DB   292 _CCAPM1	=	0x00db
                           0000DC   293 _CCAPM2	=	0x00dc
                           0000DD   294 _CCAPM3	=	0x00dd
                           0000DE   295 _CCAPM4	=	0x00de
                           0000E0   296 _ACC	=	0x00e0
                           00E3E2   297 _UBYCTX	=	0xe3e2
                           0000E2   298 _UBYCTLX	=	0x00e2
                           0000E3   299 _UBYCTHX	=	0x00e3
                           00F9E9   300 _PCA	=	0xf9e9
                           0000E9   301 _CL	=	0x00e9
                           0000F9   302 _CH	=	0x00f9
                           00FAEA   303 _CCAP0	=	0xfaea
                           0000EA   304 _CCAP0L	=	0x00ea
                           0000FA   305 _CCAP0H	=	0x00fa
                           00FBEB   306 _CCAP1	=	0xfbeb
                           0000EB   307 _CCAP1L	=	0x00eb
                           0000FB   308 _CCAP1H	=	0x00fb
                           00FCEC   309 _CCAP2	=	0xfcec
                           0000EC   310 _CCAP2L	=	0x00ec
                           0000FC   311 _CCAP2H	=	0x00fc
                           00FDED   312 _CCAP3	=	0xfded
                           0000ED   313 _CCAP3L	=	0x00ed
                           0000FD   314 _CCAP3H	=	0x00fd
                           00FEEE   315 _CCAP4	=	0xfeee
                           0000EE   316 _CCAP4L	=	0x00ee
                           0000FE   317 _CCAP4H	=	0x00fe
                           0000F0   318 _B	=	0x00f0
                           0000F1   319 _LEDCON	=	0x00f1
                           0000F8   320 _UEPINT	=	0x00f8
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           000080   326 _P0_0	=	0x0080
                           000081   327 _P0_1	=	0x0081
                           000082   328 _P0_2	=	0x0082
                           000083   329 _P0_3	=	0x0083
                           000084   330 _P0_4	=	0x0084
                           000085   331 _P0_5	=	0x0085
                           000086   332 _P0_6	=	0x0086
                           000087   333 _P0_7	=	0x0087
                           000088   334 _IT0	=	0x0088
                           000089   335 _IE0	=	0x0089
                           00008A   336 _IT1	=	0x008a
                           00008B   337 _IE1	=	0x008b
                           00008C   338 _TR0	=	0x008c
                           00008D   339 _TF0	=	0x008d
                           00008E   340 _TR1	=	0x008e
                           00008F   341 _TF1	=	0x008f
                           000090   342 _P1_0	=	0x0090
                           000091   343 _P1_1	=	0x0091
                           000092   344 _P1_2	=	0x0092
                           000093   345 _P1_3	=	0x0093
                           000094   346 _P1_4	=	0x0094
                           000095   347 _P1_5	=	0x0095
                           000096   348 _P1_6	=	0x0096
                           000097   349 _P1_7	=	0x0097
                           000098   350 _RI	=	0x0098
                           000099   351 _TI	=	0x0099
                           00009A   352 _RB8	=	0x009a
                           00009B   353 _TB8	=	0x009b
                           00009C   354 _REN	=	0x009c
                           00009D   355 _SM2	=	0x009d
                           00009E   356 _SM1	=	0x009e
                           00009F   357 _SM0	=	0x009f
                           00009F   358 _FE	=	0x009f
                           0000A0   359 _P2_0	=	0x00a0
                           0000A1   360 _P2_1	=	0x00a1
                           0000A2   361 _P2_2	=	0x00a2
                           0000A3   362 _P2_3	=	0x00a3
                           0000A4   363 _P2_4	=	0x00a4
                           0000A5   364 _P2_5	=	0x00a5
                           0000A6   365 _P2_6	=	0x00a6
                           0000A7   366 _P2_7	=	0x00a7
                           0000A8   367 _EX0	=	0x00a8
                           0000A9   368 _ET0	=	0x00a9
                           0000AA   369 _EX1	=	0x00aa
                           0000AB   370 _ET1	=	0x00ab
                           0000AC   371 _ES	=	0x00ac
                           0000AD   372 _ET2	=	0x00ad
                           0000AE   373 _EC	=	0x00ae
                           0000AF   374 _EA	=	0x00af
                           0000B0   375 _P3_0	=	0x00b0
                           0000B1   376 _P3_1	=	0x00b1
                           0000B2   377 _P3_2	=	0x00b2
                           0000B3   378 _P3_3	=	0x00b3
                           0000B4   379 _P3_4	=	0x00b4
                           0000B5   380 _P3_5	=	0x00b5
                           0000B6   381 _P3_6	=	0x00b6
                           0000B7   382 _P3_7	=	0x00b7
                           0000B8   383 _PX0L	=	0x00b8
                           0000B9   384 _PT0L	=	0x00b9
                           0000BA   385 _PX1L	=	0x00ba
                           0000BB   386 _PT1L	=	0x00bb
                           0000BC   387 _PSL	=	0x00bc
                           0000BD   388 _PT2L	=	0x00bd
                           0000BE   389 _PPCL	=	0x00be
                           0000C0   390 _P4_0	=	0x00c0
                           0000C1   391 _P4_1	=	0x00c1
                           0000C8   392 _CP_RL2	=	0x00c8
                           0000C9   393 _C_T2	=	0x00c9
                           0000CA   394 _TR2	=	0x00ca
                           0000CB   395 _EXEN2	=	0x00cb
                           0000CC   396 _TCLK	=	0x00cc
                           0000CD   397 _RCLK	=	0x00cd
                           0000CE   398 _EXF2	=	0x00ce
                           0000CF   399 _TF2	=	0x00cf
                           0000D0   400 _P	=	0x00d0
                           0000D1   401 _F1	=	0x00d1
                           0000D2   402 _OV	=	0x00d2
                           0000D3   403 _RS0	=	0x00d3
                           0000D4   404 _RS1	=	0x00d4
                           0000D5   405 _F0	=	0x00d5
                           0000D6   406 _AC	=	0x00d6
                           0000D7   407 _CY	=	0x00d7
                           0000D8   408 _CCF0	=	0x00d8
                           0000D9   409 _CCF1	=	0x00d9
                           0000DA   410 _CCF2	=	0x00da
                           0000DB   411 _CCF3	=	0x00db
                           0000DC   412 _CCF4	=	0x00dc
                           0000DE   413 _CR	=	0x00de
                           0000DF   414 _CF	=	0x00df
                           0000F8   415 _EP0INT	=	0x00f8
                           0000F9   416 _EP1INT	=	0x00f9
                           0000FA   417 _EP2INT	=	0x00fa
                           0000FB   418 _EP3INT	=	0x00fb
                           0000FC   419 _EP4INT	=	0x00fc
                           0000FD   420 _EP5INT	=	0x00fd
                           0000FE   421 _EP6INT	=	0x00fe
                                    422 ;--------------------------------------------------------
                                    423 ; overlayable register banks
                                    424 ;--------------------------------------------------------
                                    425 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        426 	.ds 8
                                    427 ;--------------------------------------------------------
                                    428 ; internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area DSEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable items in internal ram
                                    433 ;--------------------------------------------------------
                                    434 ;--------------------------------------------------------
                                    435 ; indirectly addressable internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area ISEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; absolute internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area IABS    (ABS,DATA)
                                    442 	.area IABS    (ABS,DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; bit data
                                    445 ;--------------------------------------------------------
                                    446 	.area BSEG    (BIT)
                                    447 ;--------------------------------------------------------
                                    448 ; paged external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area PSEG    (PAG,XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; uninitialized external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XSEG    (XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XABS    (ABS,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; initialized external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XISEG   (XDATA)
                                    463 	.area HOME    (CODE)
                                    464 	.area GSINIT0 (CODE)
                                    465 	.area GSINIT1 (CODE)
                                    466 	.area GSINIT2 (CODE)
                                    467 	.area GSINIT3 (CODE)
                                    468 	.area GSINIT4 (CODE)
                                    469 	.area GSINIT5 (CODE)
                                    470 	.area GSINIT  (CODE)
                                    471 	.area GSFINAL (CODE)
                                    472 	.area CSEG    (CODE)
                                    473 ;--------------------------------------------------------
                                    474 ; global & static initialisations
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
                                    477 	.area GSINIT  (CODE)
                                    478 	.area GSFINAL (CODE)
                                    479 	.area GSINIT  (CODE)
                                    480 ;--------------------------------------------------------
                                    481 ; Home
                                    482 ;--------------------------------------------------------
                                    483 	.area HOME    (CODE)
                                    484 	.area HOME    (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; code
                                    487 ;--------------------------------------------------------
                                    488 	.area CSEG    (CODE)
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'timer0_init'
                                    491 ;------------------------------------------------------------
                                    492 ;	mcu_config.c:5: void timer0_init(void){
                                    493 ;	-----------------------------------------
                                    494 ;	 function timer0_init
                                    495 ;	-----------------------------------------
      000BF0                        496 _timer0_init:
                           000007   497 	ar7 = 0x07
                           000006   498 	ar6 = 0x06
                           000005   499 	ar5 = 0x05
                           000004   500 	ar4 = 0x04
                           000003   501 	ar3 = 0x03
                           000002   502 	ar2 = 0x02
                           000001   503 	ar1 = 0x01
                           000000   504 	ar0 = 0x00
                                    505 ;	mcu_config.c:8: TMOD = (TMOD & 0xF0) | 0x02;
      000BF0 E5 89            [12]  506 	mov	a,_TMOD
      000BF2 54 F0            [12]  507 	anl	a,#0xf0
      000BF4 44 02            [12]  508 	orl	a,#0x02
      000BF6 F5 89            [12]  509 	mov	_TMOD,a
                                    510 ;	mcu_config.c:9: TH0=0x38;     /* auto reload value for 100us */
      000BF8 75 8C 38         [24]  511 	mov	_TH0,#0x38
                                    512 ;	mcu_config.c:10: TL0=0x38;     /* initize timer with start value */
      000BFB 75 8A 38         [24]  513 	mov	_TL0,#0x38
                                    514 ;	mcu_config.c:11: TF0 = 0; 
                                    515 ;	assignBit
      000BFE C2 8D            [12]  516 	clr	_TF0
                                    517 ;	mcu_config.c:12: ET0=1;        /* Enable timer interrupt */
                                    518 ;	assignBit
      000C00 D2 A9            [12]  519 	setb	_ET0
                                    520 ;	mcu_config.c:13: TR0=1;        /* Start Timer 0 */
                                    521 ;	assignBit
      000C02 D2 8C            [12]  522 	setb	_TR0
                                    523 ;	mcu_config.c:15: }
      000C04 22               [24]  524 	ret
                                    525 	.area CSEG    (CODE)
                                    526 	.area CONST   (CODE)
                                    527 	.area XINIT   (CODE)
                                    528 	.area CABS    (ABS,CODE)
