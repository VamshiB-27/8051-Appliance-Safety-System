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
                                    211 	.globl _i2c_write_PARM_2
                                    212 	.globl _timer0_init
                                    213 	.globl _i2c_init
                                    214 	.globl _i2c_write
                                    215 ;--------------------------------------------------------
                                    216 ; special function registers
                                    217 ;--------------------------------------------------------
                                    218 	.area RSEG    (ABS,DATA)
      000000                        219 	.org 0x0000
                           000080   220 _P0	=	0x0080
                           000081   221 _SP	=	0x0081
                           000082   222 _DPL	=	0x0082
                           000083   223 _DPH	=	0x0083
                           000087   224 _PCON	=	0x0087
                           000088   225 _TCON	=	0x0088
                           000089   226 _TMOD	=	0x0089
                           008C8A   227 _TMR0	=	0x8c8a
                           00008A   228 _TL0	=	0x008a
                           00008C   229 _TH0	=	0x008c
                           008D8B   230 _TMR1	=	0x8d8b
                           00008B   231 _TL1	=	0x008b
                           00008D   232 _TH1	=	0x008d
                           00008E   233 _AUXR	=	0x008e
                           00008F   234 _CKCON0	=	0x008f
                           000090   235 _P1	=	0x0090
                           000093   236 _SSCON	=	0x0093
                           000094   237 _SSCS	=	0x0094
                           000095   238 _SSDAT	=	0x0095
                           000096   239 _SSADR	=	0x0096
                           000098   240 _SCON	=	0x0098
                           000099   241 _SBUF	=	0x0099
                           00009A   242 _BRL	=	0x009a
                           00009B   243 _BDRCON	=	0x009b
                           00009C   244 _KBLS	=	0x009c
                           00009D   245 _KBE	=	0x009d
                           00009E   246 _KBF	=	0x009e
                           0000A0   247 _P2	=	0x00a0
                           0000A2   248 _AUXR1	=	0x00a2
                           0000A3   249 _PLLCON	=	0x00a3
                           0000A4   250 _PLLDIV	=	0x00a4
                           0000A6   251 _WDTRST	=	0x00a6
                           0000A7   252 _WDTPRG	=	0x00a7
                           0000A8   253 _IE	=	0x00a8
                           0000A8   254 _IEN0	=	0x00a8
                           0000A9   255 _SADDR	=	0x00a9
                           0000AF   256 _CKCON1	=	0x00af
                           0000B0   257 _P3	=	0x00b0
                           0000B1   258 _IEN1	=	0x00b1
                           0000B2   259 _IPL1	=	0x00b2
                           0000B3   260 _IPH1	=	0x00b3
                           0000B7   261 _IPH0	=	0x00b7
                           0000B8   262 _IPL0	=	0x00b8
                           0000B9   263 _SADEN	=	0x00b9
                           00BBBA   264 _UFNUM	=	0xbbba
                           0000BA   265 _UFNUML	=	0x00ba
                           0000BB   266 _UFNUMH	=	0x00bb
                           0000BC   267 _USBCON	=	0x00bc
                           0000BD   268 _USBINT	=	0x00bd
                           0000BE   269 _USBIEN	=	0x00be
                           0000C0   270 _P4	=	0x00c0
                           0000C2   271 _UEPIEN	=	0x00c2
                           0000C3   272 _SPCON	=	0x00c3
                           0000C4   273 _SPSTA	=	0x00c4
                           0000C5   274 _SPDAT	=	0x00c5
                           0000C6   275 _USBADDR	=	0x00c6
                           0000C7   276 _UEPNUM	=	0x00c7
                           0000C8   277 _T2CON	=	0x00c8
                           0000C9   278 _T2MOD	=	0x00c9
                           00CBCA   279 _RCAP2	=	0xcbca
                           0000CA   280 _RCAP2L	=	0x00ca
                           0000CB   281 _RCAP2H	=	0x00cb
                           00CDCC   282 _TMR2	=	0xcdcc
                           0000CC   283 _TL2	=	0x00cc
                           0000CD   284 _TH2	=	0x00cd
                           0000CE   285 _UEPSTAX	=	0x00ce
                           0000CF   286 _UEPDATX	=	0x00cf
                           0000D0   287 _PSW	=	0x00d0
                           0000D1   288 _FCON	=	0x00d1
                           0000D2   289 _EECON	=	0x00d2
                           0000D4   290 _UEPCONX	=	0x00d4
                           0000D5   291 _UEPRST	=	0x00d5
                           0000D8   292 _CCON	=	0x00d8
                           0000D9   293 _CMOD	=	0x00d9
                           0000DA   294 _CCAPM0	=	0x00da
                           0000DB   295 _CCAPM1	=	0x00db
                           0000DC   296 _CCAPM2	=	0x00dc
                           0000DD   297 _CCAPM3	=	0x00dd
                           0000DE   298 _CCAPM4	=	0x00de
                           0000E0   299 _ACC	=	0x00e0
                           00E3E2   300 _UBYCTX	=	0xe3e2
                           0000E2   301 _UBYCTLX	=	0x00e2
                           0000E3   302 _UBYCTHX	=	0x00e3
                           00F9E9   303 _PCA	=	0xf9e9
                           0000E9   304 _CL	=	0x00e9
                           0000F9   305 _CH	=	0x00f9
                           00FAEA   306 _CCAP0	=	0xfaea
                           0000EA   307 _CCAP0L	=	0x00ea
                           0000FA   308 _CCAP0H	=	0x00fa
                           00FBEB   309 _CCAP1	=	0xfbeb
                           0000EB   310 _CCAP1L	=	0x00eb
                           0000FB   311 _CCAP1H	=	0x00fb
                           00FCEC   312 _CCAP2	=	0xfcec
                           0000EC   313 _CCAP2L	=	0x00ec
                           0000FC   314 _CCAP2H	=	0x00fc
                           00FDED   315 _CCAP3	=	0xfded
                           0000ED   316 _CCAP3L	=	0x00ed
                           0000FD   317 _CCAP3H	=	0x00fd
                           00FEEE   318 _CCAP4	=	0xfeee
                           0000EE   319 _CCAP4L	=	0x00ee
                           0000FE   320 _CCAP4H	=	0x00fe
                           0000F0   321 _B	=	0x00f0
                           0000F1   322 _LEDCON	=	0x00f1
                           0000F8   323 _UEPINT	=	0x00f8
                                    324 ;--------------------------------------------------------
                                    325 ; special function bits
                                    326 ;--------------------------------------------------------
                                    327 	.area RSEG    (ABS,DATA)
      000000                        328 	.org 0x0000
                           000080   329 _P0_0	=	0x0080
                           000081   330 _P0_1	=	0x0081
                           000082   331 _P0_2	=	0x0082
                           000083   332 _P0_3	=	0x0083
                           000084   333 _P0_4	=	0x0084
                           000085   334 _P0_5	=	0x0085
                           000086   335 _P0_6	=	0x0086
                           000087   336 _P0_7	=	0x0087
                           000088   337 _IT0	=	0x0088
                           000089   338 _IE0	=	0x0089
                           00008A   339 _IT1	=	0x008a
                           00008B   340 _IE1	=	0x008b
                           00008C   341 _TR0	=	0x008c
                           00008D   342 _TF0	=	0x008d
                           00008E   343 _TR1	=	0x008e
                           00008F   344 _TF1	=	0x008f
                           000090   345 _P1_0	=	0x0090
                           000091   346 _P1_1	=	0x0091
                           000092   347 _P1_2	=	0x0092
                           000093   348 _P1_3	=	0x0093
                           000094   349 _P1_4	=	0x0094
                           000095   350 _P1_5	=	0x0095
                           000096   351 _P1_6	=	0x0096
                           000097   352 _P1_7	=	0x0097
                           000098   353 _RI	=	0x0098
                           000099   354 _TI	=	0x0099
                           00009A   355 _RB8	=	0x009a
                           00009B   356 _TB8	=	0x009b
                           00009C   357 _REN	=	0x009c
                           00009D   358 _SM2	=	0x009d
                           00009E   359 _SM1	=	0x009e
                           00009F   360 _SM0	=	0x009f
                           00009F   361 _FE	=	0x009f
                           0000A0   362 _P2_0	=	0x00a0
                           0000A1   363 _P2_1	=	0x00a1
                           0000A2   364 _P2_2	=	0x00a2
                           0000A3   365 _P2_3	=	0x00a3
                           0000A4   366 _P2_4	=	0x00a4
                           0000A5   367 _P2_5	=	0x00a5
                           0000A6   368 _P2_6	=	0x00a6
                           0000A7   369 _P2_7	=	0x00a7
                           0000A8   370 _EX0	=	0x00a8
                           0000A9   371 _ET0	=	0x00a9
                           0000AA   372 _EX1	=	0x00aa
                           0000AB   373 _ET1	=	0x00ab
                           0000AC   374 _ES	=	0x00ac
                           0000AD   375 _ET2	=	0x00ad
                           0000AE   376 _EC	=	0x00ae
                           0000AF   377 _EA	=	0x00af
                           0000B0   378 _P3_0	=	0x00b0
                           0000B1   379 _P3_1	=	0x00b1
                           0000B2   380 _P3_2	=	0x00b2
                           0000B3   381 _P3_3	=	0x00b3
                           0000B4   382 _P3_4	=	0x00b4
                           0000B5   383 _P3_5	=	0x00b5
                           0000B6   384 _P3_6	=	0x00b6
                           0000B7   385 _P3_7	=	0x00b7
                           0000B8   386 _PX0L	=	0x00b8
                           0000B9   387 _PT0L	=	0x00b9
                           0000BA   388 _PX1L	=	0x00ba
                           0000BB   389 _PT1L	=	0x00bb
                           0000BC   390 _PSL	=	0x00bc
                           0000BD   391 _PT2L	=	0x00bd
                           0000BE   392 _PPCL	=	0x00be
                           0000C0   393 _P4_0	=	0x00c0
                           0000C1   394 _P4_1	=	0x00c1
                           0000C8   395 _CP_RL2	=	0x00c8
                           0000C9   396 _C_T2	=	0x00c9
                           0000CA   397 _TR2	=	0x00ca
                           0000CB   398 _EXEN2	=	0x00cb
                           0000CC   399 _TCLK	=	0x00cc
                           0000CD   400 _RCLK	=	0x00cd
                           0000CE   401 _EXF2	=	0x00ce
                           0000CF   402 _TF2	=	0x00cf
                           0000D0   403 _P	=	0x00d0
                           0000D1   404 _F1	=	0x00d1
                           0000D2   405 _OV	=	0x00d2
                           0000D3   406 _RS0	=	0x00d3
                           0000D4   407 _RS1	=	0x00d4
                           0000D5   408 _F0	=	0x00d5
                           0000D6   409 _AC	=	0x00d6
                           0000D7   410 _CY	=	0x00d7
                           0000D8   411 _CCF0	=	0x00d8
                           0000D9   412 _CCF1	=	0x00d9
                           0000DA   413 _CCF2	=	0x00da
                           0000DB   414 _CCF3	=	0x00db
                           0000DC   415 _CCF4	=	0x00dc
                           0000DE   416 _CR	=	0x00de
                           0000DF   417 _CF	=	0x00df
                           0000F8   418 _EP0INT	=	0x00f8
                           0000F9   419 _EP1INT	=	0x00f9
                           0000FA   420 _EP2INT	=	0x00fa
                           0000FB   421 _EP3INT	=	0x00fb
                           0000FC   422 _EP4INT	=	0x00fc
                           0000FD   423 _EP5INT	=	0x00fd
                           0000FE   424 _EP6INT	=	0x00fe
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
      000036                        434 _i2c_write_PARM_2:
      000036                        435 	.ds 1
      000037                        436 _i2c_write_data_10000_10:
      000037                        437 	.ds 3
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable items in internal ram
                                    440 ;--------------------------------------------------------
                                    441 ;--------------------------------------------------------
                                    442 ; indirectly addressable internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area ISEG    (DATA)
                                    445 ;--------------------------------------------------------
                                    446 ; absolute internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area IABS    (ABS,DATA)
                                    449 	.area IABS    (ABS,DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; bit data
                                    452 ;--------------------------------------------------------
                                    453 	.area BSEG    (BIT)
                                    454 ;--------------------------------------------------------
                                    455 ; paged external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area PSEG    (PAG,XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; uninitialized external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XSEG    (XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; absolute external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XABS    (ABS,XDATA)
                                    466 ;--------------------------------------------------------
                                    467 ; initialized external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area XISEG   (XDATA)
                                    470 	.area HOME    (CODE)
                                    471 	.area GSINIT0 (CODE)
                                    472 	.area GSINIT1 (CODE)
                                    473 	.area GSINIT2 (CODE)
                                    474 	.area GSINIT3 (CODE)
                                    475 	.area GSINIT4 (CODE)
                                    476 	.area GSINIT5 (CODE)
                                    477 	.area GSINIT  (CODE)
                                    478 	.area GSFINAL (CODE)
                                    479 	.area CSEG    (CODE)
                                    480 ;--------------------------------------------------------
                                    481 ; global & static initialisations
                                    482 ;--------------------------------------------------------
                                    483 	.area HOME    (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; Home
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
                                    491 	.area HOME    (CODE)
                                    492 ;--------------------------------------------------------
                                    493 ; code
                                    494 ;--------------------------------------------------------
                                    495 	.area CSEG    (CODE)
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'timer0_init'
                                    498 ;------------------------------------------------------------
                                    499 ;	mcu_config.c:5: void timer0_init(void){
                                    500 ;	-----------------------------------------
                                    501 ;	 function timer0_init
                                    502 ;	-----------------------------------------
      000367                        503 _timer0_init:
                           000007   504 	ar7 = 0x07
                           000006   505 	ar6 = 0x06
                           000005   506 	ar5 = 0x05
                           000004   507 	ar4 = 0x04
                           000003   508 	ar3 = 0x03
                           000002   509 	ar2 = 0x02
                           000001   510 	ar1 = 0x01
                           000000   511 	ar0 = 0x00
                                    512 ;	mcu_config.c:8: TMOD = (TMOD & 0xF0) | 0x02;
      000367 E5 89            [12]  513 	mov	a,_TMOD
      000369 54 F0            [12]  514 	anl	a,#0xf0
      00036B 44 02            [12]  515 	orl	a,#0x02
      00036D F5 89            [12]  516 	mov	_TMOD,a
                                    517 ;	mcu_config.c:9: TH0=0x38;     /* auto reload value for 100us */
      00036F 75 8C 38         [24]  518 	mov	_TH0,#0x38
                                    519 ;	mcu_config.c:10: TL0=0x38;     /* initize timer with start value */
      000372 75 8A 38         [24]  520 	mov	_TL0,#0x38
                                    521 ;	mcu_config.c:11: TF0 = 0; 
                                    522 ;	assignBit
      000375 C2 8D            [12]  523 	clr	_TF0
                                    524 ;	mcu_config.c:12: ET0=1;        /* Enable timer interrupt */
                                    525 ;	assignBit
      000377 D2 A9            [12]  526 	setb	_ET0
                                    527 ;	mcu_config.c:13: TR0=1;        /* Start Timer 0 */
                                    528 ;	assignBit
      000379 D2 8C            [12]  529 	setb	_TR0
                                    530 ;	mcu_config.c:15: }
      00037B 22               [24]  531 	ret
                                    532 ;------------------------------------------------------------
                                    533 ;Allocation info for local variables in function 'i2c_init'
                                    534 ;------------------------------------------------------------
                                    535 ;	mcu_config.c:17: void i2c_init(void){
                                    536 ;	-----------------------------------------
                                    537 ;	 function i2c_init
                                    538 ;	-----------------------------------------
      00037C                        539 _i2c_init:
                                    540 ;	mcu_config.c:19: P4 |= 0x03;    /* make P4.0 and P4.1 high */
      00037C 43 C0 03         [24]  541 	orl	_P4,#0x03
                                    542 ;	mcu_config.c:22: SSCON=0x40;
      00037F 75 93 40         [24]  543 	mov	_SSCON,#0x40
                                    544 ;	mcu_config.c:23: }
      000382 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'i2c_write'
                                    548 ;------------------------------------------------------------
                                    549 ;length        Allocated with name '_i2c_write_PARM_2'
                                    550 ;data          Allocated with name '_i2c_write_data_10000_10'
                                    551 ;i             Allocated to registers r4 
                                    552 ;timeout       Allocated to registers r6 r7 
                                    553 ;------------------------------------------------------------
                                    554 ;	mcu_config.c:25: unsigned char i2c_write(const unsigned char *data, unsigned char length){
                                    555 ;	-----------------------------------------
                                    556 ;	 function i2c_write
                                    557 ;	-----------------------------------------
      000383                        558 _i2c_write:
      000383 85 82 37         [24]  559 	mov	_i2c_write_data_10000_10,dpl
      000386 85 83 38         [24]  560 	mov	(_i2c_write_data_10000_10 + 1),dph
      000389 85 F0 39         [24]  561 	mov	(_i2c_write_data_10000_10 + 2),b
                                    562 ;	mcu_config.c:30: if(length == 0 || length > 32)
      00038C E5 36            [12]  563 	mov	a,_i2c_write_PARM_2
      00038E 60 06            [24]  564 	jz	00101$
      000390 E5 36            [12]  565 	mov	a,_i2c_write_PARM_2
      000392 24 DF            [12]  566 	add	a,#0xff - 0x20
      000394 50 04            [24]  567 	jnc	00102$
                                    568 ;	free result
      000396                        569 00101$:
                                    570 ;	mcu_config.c:31: return 0;
      000396 75 82 00         [24]  571 	mov	dpl, #0x00
      000399 22               [24]  572 	ret
      00039A                        573 00102$:
                                    574 ;	mcu_config.c:33: if(i2c_busy)
      00039A E5 31            [12]  575 	mov	a,_i2c_busy
      00039C 60 04            [24]  576 	jz	00105$
                                    577 ;	mcu_config.c:34: return 0;
      00039E 75 82 00         [24]  578 	mov	dpl, #0x00
      0003A1 22               [24]  579 	ret
      0003A2                        580 00105$:
                                    581 ;	mcu_config.c:36: i2c_busy = 1;
      0003A2 75 31 01         [24]  582 	mov	_i2c_busy,#0x01
                                    583 ;	mcu_config.c:37: i2c_done = 0;
      0003A5 75 32 00         [24]  584 	mov	_i2c_done,#0x00
                                    585 ;	mcu_config.c:38: i2c_error = 0;
      0003A8 75 30 00         [24]  586 	mov	_i2c_error,#0x00
                                    587 ;	mcu_config.c:39: i2c_tx_index = 0;
      0003AB 75 2F 00         [24]  588 	mov	_i2c_tx_index,#0x00
                                    589 ;	mcu_config.c:40: i2c_tx_length = length;
      0003AE 85 36 2E         [24]  590 	mov	_i2c_tx_length,_i2c_write_PARM_2
                                    591 ;	mcu_config.c:42: for(i = 0; i < length; i++){
      0003B1 7C 00            [12]  592 	mov	r4,#0x00
      0003B3                        593 00127$:
      0003B3 C3               [12]  594 	clr	c
      0003B4 EC               [12]  595 	mov	a,r4
      0003B5 95 36            [12]  596 	subb	a,_i2c_write_PARM_2
      0003B7 50 1B            [24]  597 	jnc	00106$
                                    598 ;	mcu_config.c:43: i2c_tx_buffer[i] = data[i];
      0003B9 EC               [12]  599 	mov	a,r4
      0003BA 24 0E            [12]  600 	add	a, #_i2c_tx_buffer
      0003BC F9               [12]  601 	mov	r1,a
      0003BD EC               [12]  602 	mov	a,r4
      0003BE 25 37            [12]  603 	add	a, _i2c_write_data_10000_10
      0003C0 FA               [12]  604 	mov	r2,a
      0003C1 E4               [12]  605 	clr	a
      0003C2 35 38            [12]  606 	addc	a, (_i2c_write_data_10000_10 + 1)
      0003C4 FB               [12]  607 	mov	r3,a
      0003C5 AF 39            [24]  608 	mov	r7,(_i2c_write_data_10000_10 + 2)
      0003C7 8A 82            [24]  609 	mov	dpl,r2
      0003C9 8B 83            [24]  610 	mov	dph,r3
      0003CB 8F F0            [24]  611 	mov	b,r7
      0003CD 12 07 C0         [24]  612 	lcall	__gptrget
      0003D0 F7               [12]  613 	mov	@r1,a
                                    614 ;	mcu_config.c:42: for(i = 0; i < length; i++){
      0003D1 0C               [12]  615 	inc	r4
      0003D2 80 DF            [24]  616 	sjmp	00127$
      0003D4                        617 00106$:
                                    618 ;	mcu_config.c:46: SSCON |= 0x40;
      0003D4 43 93 40         [24]  619 	orl	_SSCON,#0x40
                                    620 ;	mcu_config.c:47: SSCON |= 0x20;
      0003D7 43 93 20         [24]  621 	orl	_SSCON,#0x20
                                    622 ;	mcu_config.c:49: timeout = 0;
      0003DA 7E 00            [12]  623 	mov	r6,#0x00
      0003DC 7F 00            [12]  624 	mov	r7,#0x00
                                    625 ;	mcu_config.c:51: while(!i2c_done && timeout < 60000U)
      0003DE                        626 00108$:
      0003DE E5 32            [12]  627 	mov	a,_i2c_done
      0003E0 70 10            [24]  628 	jnz	00110$
      0003E2 C3               [12]  629 	clr	c
      0003E3 EE               [12]  630 	mov	a,r6
      0003E4 94 60            [12]  631 	subb	a,#0x60
      0003E6 EF               [12]  632 	mov	a,r7
      0003E7 94 EA            [12]  633 	subb	a,#0xea
      0003E9 50 07            [24]  634 	jnc	00110$
                                    635 ;	mcu_config.c:52: timeout++;
      0003EB 0E               [12]  636 	inc	r6
      0003EC BE 00 EF         [24]  637 	cjne	r6,#0x00,00108$
      0003EF 0F               [12]  638 	inc	r7
      0003F0 80 EC            [24]  639 	sjmp	00108$
      0003F2                        640 00110$:
                                    641 ;	mcu_config.c:54: if(!i2c_done){
      0003F2 E5 32            [12]  642 	mov	a,_i2c_done
      0003F4 70 2D            [24]  643 	jnz	00124$
                                    644 ;	mcu_config.c:56: i2c_error = 0xFE;
      0003F6 75 30 FE         [24]  645 	mov	_i2c_error,#0xfe
                                    646 ;	mcu_config.c:58: SSCON &= ~0x40;
      0003F9 53 93 BF         [24]  647 	anl	_SSCON,#0xbf
                                    648 ;	mcu_config.c:59: SSCON |= 0x10;
      0003FC 43 93 10         [24]  649 	orl	_SSCON,#0x10
                                    650 ;	mcu_config.c:60: SSCON &= ~0x08;
      0003FF 53 93 F7         [24]  651 	anl	_SSCON,#0xf7
                                    652 ;	mcu_config.c:62: timeout = 0;
      000402 7E 00            [12]  653 	mov	r6,#0x00
      000404 7F 00            [12]  654 	mov	r7,#0x00
                                    655 ;	mcu_config.c:64: while((SSCON & 0x10) && timeout < 60000U)
      000406                        656 00112$:
      000406 E5 93            [12]  657 	mov	a,_SSCON
      000408 30 E4 10         [24]  658 	jnb	acc.4,00114$
      00040B C3               [12]  659 	clr	c
      00040C EE               [12]  660 	mov	a,r6
      00040D 94 60            [12]  661 	subb	a,#0x60
      00040F EF               [12]  662 	mov	a,r7
      000410 94 EA            [12]  663 	subb	a,#0xea
      000412 50 07            [24]  664 	jnc	00114$
                                    665 ;	mcu_config.c:65: timeout++;
      000414 0E               [12]  666 	inc	r6
      000415 BE 00 EE         [24]  667 	cjne	r6,#0x00,00112$
      000418 0F               [12]  668 	inc	r7
      000419 80 EB            [24]  669 	sjmp	00112$
      00041B                        670 00114$:
                                    671 ;	mcu_config.c:67: SSCON &= ~0x08;
      00041B 53 93 F7         [24]  672 	anl	_SSCON,#0xf7
                                    673 ;	mcu_config.c:68: SSCON |= 0x40;
      00041E 43 93 40         [24]  674 	orl	_SSCON,#0x40
      000421 80 2F            [24]  675 	sjmp	00125$
      000423                        676 00124$:
                                    677 ;	mcu_config.c:70: }else if(SSCON & 0x10){
      000423 E5 93            [12]  678 	mov	a,_SSCON
      000425 30 E4 2A         [24]  679 	jnb	acc.4,00125$
                                    680 ;	mcu_config.c:72: timeout = 0;
      000428 7E 00            [12]  681 	mov	r6,#0x00
      00042A 7F 00            [12]  682 	mov	r7,#0x00
                                    683 ;	mcu_config.c:74: while((SSCON & 0x10) && timeout < 60000U)
      00042C                        684 00116$:
      00042C E5 93            [12]  685 	mov	a,_SSCON
      00042E 30 E4 10         [24]  686 	jnb	acc.4,00118$
      000431 C3               [12]  687 	clr	c
      000432 EE               [12]  688 	mov	a,r6
      000433 94 60            [12]  689 	subb	a,#0x60
      000435 EF               [12]  690 	mov	a,r7
      000436 94 EA            [12]  691 	subb	a,#0xea
      000438 50 07            [24]  692 	jnc	00118$
                                    693 ;	mcu_config.c:75: timeout++;
      00043A 0E               [12]  694 	inc	r6
      00043B BE 00 EE         [24]  695 	cjne	r6,#0x00,00116$
      00043E 0F               [12]  696 	inc	r7
      00043F 80 EB            [24]  697 	sjmp	00116$
      000441                        698 00118$:
                                    699 ;	mcu_config.c:77: if(SSCON & 0x10){
      000441 E5 93            [12]  700 	mov	a,_SSCON
      000443 30 E4 0C         [24]  701 	jnb	acc.4,00125$
                                    702 ;	mcu_config.c:78: i2c_error = 0xFE;
      000446 75 30 FE         [24]  703 	mov	_i2c_error,#0xfe
                                    704 ;	mcu_config.c:79: SSCON &= ~0x40;
      000449 53 93 BF         [24]  705 	anl	_SSCON,#0xbf
                                    706 ;	mcu_config.c:80: SSCON &= ~0x08;
      00044C 53 93 F7         [24]  707 	anl	_SSCON,#0xf7
                                    708 ;	mcu_config.c:81: SSCON |= 0x40;
      00044F 43 93 40         [24]  709 	orl	_SSCON,#0x40
      000452                        710 00125$:
                                    711 ;	mcu_config.c:85: i2c_tx_length = 0;
                                    712 ;	mcu_config.c:86: i2c_busy = 0;
                                    713 ;	mcu_config.c:88: return (i2c_error == 0);
      000452 E4               [12]  714 	clr	a
      000453 F5 2E            [12]  715 	mov	_i2c_tx_length,a
      000455 F5 31            [12]  716 	mov	_i2c_busy,a
      000457 B5 30 04         [24]  717 	cjne	a,_i2c_error,00275$
      00045A 74 01            [12]  718 	mov	a,#0x01
      00045C 80 01            [24]  719 	sjmp	00276$
      00045E                        720 00275$:
      00045E E4               [12]  721 	clr	a
      00045F                        722 00276$:
      00045F F5 82            [12]  723 	mov	dpl,a
                                    724 ;	mcu_config.c:89: }
      000461 22               [24]  725 	ret
                                    726 	.area CSEG    (CODE)
                                    727 	.area CONST   (CODE)
                                    728 	.area XINIT   (CODE)
                                    729 	.area CABS    (ABS,CODE)
