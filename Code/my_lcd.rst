                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module my_lcd
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay
                                     12 	.globl _EP6INT
                                     13 	.globl _EP5INT
                                     14 	.globl _EP4INT
                                     15 	.globl _EP3INT
                                     16 	.globl _EP2INT
                                     17 	.globl _EP1INT
                                     18 	.globl _EP0INT
                                     19 	.globl _CF
                                     20 	.globl _CR
                                     21 	.globl _CCF4
                                     22 	.globl _CCF3
                                     23 	.globl _CCF2
                                     24 	.globl _CCF1
                                     25 	.globl _CCF0
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _F1
                                     33 	.globl _P
                                     34 	.globl _TF2
                                     35 	.globl _EXF2
                                     36 	.globl _RCLK
                                     37 	.globl _TCLK
                                     38 	.globl _EXEN2
                                     39 	.globl _TR2
                                     40 	.globl _C_T2
                                     41 	.globl _CP_RL2
                                     42 	.globl _P4_1
                                     43 	.globl _P4_0
                                     44 	.globl _PPCL
                                     45 	.globl _PT2L
                                     46 	.globl _PSL
                                     47 	.globl _PT1L
                                     48 	.globl _PX1L
                                     49 	.globl _PT0L
                                     50 	.globl _PX0L
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _EC
                                     61 	.globl _ET2
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _FE
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
                                    108 	.globl _UEPINT
                                    109 	.globl _LEDCON
                                    110 	.globl _B
                                    111 	.globl _CCAP4H
                                    112 	.globl _CCAP4L
                                    113 	.globl _CCAP4
                                    114 	.globl _CCAP3H
                                    115 	.globl _CCAP3L
                                    116 	.globl _CCAP3
                                    117 	.globl _CCAP2H
                                    118 	.globl _CCAP2L
                                    119 	.globl _CCAP2
                                    120 	.globl _CCAP1H
                                    121 	.globl _CCAP1L
                                    122 	.globl _CCAP1
                                    123 	.globl _CCAP0H
                                    124 	.globl _CCAP0L
                                    125 	.globl _CCAP0
                                    126 	.globl _CH
                                    127 	.globl _CL
                                    128 	.globl _PCA
                                    129 	.globl _UBYCTHX
                                    130 	.globl _UBYCTLX
                                    131 	.globl _UBYCTX
                                    132 	.globl _ACC
                                    133 	.globl _CCAPM4
                                    134 	.globl _CCAPM3
                                    135 	.globl _CCAPM2
                                    136 	.globl _CCAPM1
                                    137 	.globl _CCAPM0
                                    138 	.globl _CMOD
                                    139 	.globl _CCON
                                    140 	.globl _UEPRST
                                    141 	.globl _UEPCONX
                                    142 	.globl _EECON
                                    143 	.globl _FCON
                                    144 	.globl _PSW
                                    145 	.globl _UEPDATX
                                    146 	.globl _UEPSTAX
                                    147 	.globl _TH2
                                    148 	.globl _TL2
                                    149 	.globl _TMR2
                                    150 	.globl _RCAP2H
                                    151 	.globl _RCAP2L
                                    152 	.globl _RCAP2
                                    153 	.globl _T2MOD
                                    154 	.globl _T2CON
                                    155 	.globl _UEPNUM
                                    156 	.globl _USBADDR
                                    157 	.globl _SPDAT
                                    158 	.globl _SPSTA
                                    159 	.globl _SPCON
                                    160 	.globl _UEPIEN
                                    161 	.globl _P4
                                    162 	.globl _USBIEN
                                    163 	.globl _USBINT
                                    164 	.globl _USBCON
                                    165 	.globl _UFNUMH
                                    166 	.globl _UFNUML
                                    167 	.globl _UFNUM
                                    168 	.globl _SADEN
                                    169 	.globl _IPL0
                                    170 	.globl _IPH0
                                    171 	.globl _IPH1
                                    172 	.globl _IPL1
                                    173 	.globl _IEN1
                                    174 	.globl _P3
                                    175 	.globl _CKCON1
                                    176 	.globl _SADDR
                                    177 	.globl _IEN0
                                    178 	.globl _IE
                                    179 	.globl _WDTPRG
                                    180 	.globl _WDTRST
                                    181 	.globl _PLLDIV
                                    182 	.globl _PLLCON
                                    183 	.globl _AUXR1
                                    184 	.globl _P2
                                    185 	.globl _KBF
                                    186 	.globl _KBE
                                    187 	.globl _KBLS
                                    188 	.globl _BDRCON
                                    189 	.globl _BRL
                                    190 	.globl _SBUF
                                    191 	.globl _SCON
                                    192 	.globl _SSADR
                                    193 	.globl _SSDAT
                                    194 	.globl _SSCS
                                    195 	.globl _SSCON
                                    196 	.globl _P1
                                    197 	.globl _CKCON0
                                    198 	.globl _AUXR
                                    199 	.globl _TH1
                                    200 	.globl _TL1
                                    201 	.globl _TMR1
                                    202 	.globl _TH0
                                    203 	.globl _TL0
                                    204 	.globl _TMR0
                                    205 	.globl _TMOD
                                    206 	.globl _TCON
                                    207 	.globl _PCON
                                    208 	.globl _DPH
                                    209 	.globl _DPL
                                    210 	.globl _SP
                                    211 	.globl _P0
                                    212 	.globl _lcd_init
                                    213 	.globl _cmd_write
                                    214 	.globl _letter_write
                                    215 	.globl _lcd_string
                                    216 ;--------------------------------------------------------
                                    217 ; special function registers
                                    218 ;--------------------------------------------------------
                                    219 	.area RSEG    (ABS,DATA)
      000000                        220 	.org 0x0000
                           000080   221 _P0	=	0x0080
                           000081   222 _SP	=	0x0081
                           000082   223 _DPL	=	0x0082
                           000083   224 _DPH	=	0x0083
                           000087   225 _PCON	=	0x0087
                           000088   226 _TCON	=	0x0088
                           000089   227 _TMOD	=	0x0089
                           008C8A   228 _TMR0	=	0x8c8a
                           00008A   229 _TL0	=	0x008a
                           00008C   230 _TH0	=	0x008c
                           008D8B   231 _TMR1	=	0x8d8b
                           00008B   232 _TL1	=	0x008b
                           00008D   233 _TH1	=	0x008d
                           00008E   234 _AUXR	=	0x008e
                           00008F   235 _CKCON0	=	0x008f
                           000090   236 _P1	=	0x0090
                           000093   237 _SSCON	=	0x0093
                           000094   238 _SSCS	=	0x0094
                           000095   239 _SSDAT	=	0x0095
                           000096   240 _SSADR	=	0x0096
                           000098   241 _SCON	=	0x0098
                           000099   242 _SBUF	=	0x0099
                           00009A   243 _BRL	=	0x009a
                           00009B   244 _BDRCON	=	0x009b
                           00009C   245 _KBLS	=	0x009c
                           00009D   246 _KBE	=	0x009d
                           00009E   247 _KBF	=	0x009e
                           0000A0   248 _P2	=	0x00a0
                           0000A2   249 _AUXR1	=	0x00a2
                           0000A3   250 _PLLCON	=	0x00a3
                           0000A4   251 _PLLDIV	=	0x00a4
                           0000A6   252 _WDTRST	=	0x00a6
                           0000A7   253 _WDTPRG	=	0x00a7
                           0000A8   254 _IE	=	0x00a8
                           0000A8   255 _IEN0	=	0x00a8
                           0000A9   256 _SADDR	=	0x00a9
                           0000AF   257 _CKCON1	=	0x00af
                           0000B0   258 _P3	=	0x00b0
                           0000B1   259 _IEN1	=	0x00b1
                           0000B2   260 _IPL1	=	0x00b2
                           0000B3   261 _IPH1	=	0x00b3
                           0000B7   262 _IPH0	=	0x00b7
                           0000B8   263 _IPL0	=	0x00b8
                           0000B9   264 _SADEN	=	0x00b9
                           00BBBA   265 _UFNUM	=	0xbbba
                           0000BA   266 _UFNUML	=	0x00ba
                           0000BB   267 _UFNUMH	=	0x00bb
                           0000BC   268 _USBCON	=	0x00bc
                           0000BD   269 _USBINT	=	0x00bd
                           0000BE   270 _USBIEN	=	0x00be
                           0000C0   271 _P4	=	0x00c0
                           0000C2   272 _UEPIEN	=	0x00c2
                           0000C3   273 _SPCON	=	0x00c3
                           0000C4   274 _SPSTA	=	0x00c4
                           0000C5   275 _SPDAT	=	0x00c5
                           0000C6   276 _USBADDR	=	0x00c6
                           0000C7   277 _UEPNUM	=	0x00c7
                           0000C8   278 _T2CON	=	0x00c8
                           0000C9   279 _T2MOD	=	0x00c9
                           00CBCA   280 _RCAP2	=	0xcbca
                           0000CA   281 _RCAP2L	=	0x00ca
                           0000CB   282 _RCAP2H	=	0x00cb
                           00CDCC   283 _TMR2	=	0xcdcc
                           0000CC   284 _TL2	=	0x00cc
                           0000CD   285 _TH2	=	0x00cd
                           0000CE   286 _UEPSTAX	=	0x00ce
                           0000CF   287 _UEPDATX	=	0x00cf
                           0000D0   288 _PSW	=	0x00d0
                           0000D1   289 _FCON	=	0x00d1
                           0000D2   290 _EECON	=	0x00d2
                           0000D4   291 _UEPCONX	=	0x00d4
                           0000D5   292 _UEPRST	=	0x00d5
                           0000D8   293 _CCON	=	0x00d8
                           0000D9   294 _CMOD	=	0x00d9
                           0000DA   295 _CCAPM0	=	0x00da
                           0000DB   296 _CCAPM1	=	0x00db
                           0000DC   297 _CCAPM2	=	0x00dc
                           0000DD   298 _CCAPM3	=	0x00dd
                           0000DE   299 _CCAPM4	=	0x00de
                           0000E0   300 _ACC	=	0x00e0
                           00E3E2   301 _UBYCTX	=	0xe3e2
                           0000E2   302 _UBYCTLX	=	0x00e2
                           0000E3   303 _UBYCTHX	=	0x00e3
                           00F9E9   304 _PCA	=	0xf9e9
                           0000E9   305 _CL	=	0x00e9
                           0000F9   306 _CH	=	0x00f9
                           00FAEA   307 _CCAP0	=	0xfaea
                           0000EA   308 _CCAP0L	=	0x00ea
                           0000FA   309 _CCAP0H	=	0x00fa
                           00FBEB   310 _CCAP1	=	0xfbeb
                           0000EB   311 _CCAP1L	=	0x00eb
                           0000FB   312 _CCAP1H	=	0x00fb
                           00FCEC   313 _CCAP2	=	0xfcec
                           0000EC   314 _CCAP2L	=	0x00ec
                           0000FC   315 _CCAP2H	=	0x00fc
                           00FDED   316 _CCAP3	=	0xfded
                           0000ED   317 _CCAP3L	=	0x00ed
                           0000FD   318 _CCAP3H	=	0x00fd
                           00FEEE   319 _CCAP4	=	0xfeee
                           0000EE   320 _CCAP4L	=	0x00ee
                           0000FE   321 _CCAP4H	=	0x00fe
                           0000F0   322 _B	=	0x00f0
                           0000F1   323 _LEDCON	=	0x00f1
                           0000F8   324 _UEPINT	=	0x00f8
                                    325 ;--------------------------------------------------------
                                    326 ; special function bits
                                    327 ;--------------------------------------------------------
                                    328 	.area RSEG    (ABS,DATA)
      000000                        329 	.org 0x0000
                           000080   330 _P0_0	=	0x0080
                           000081   331 _P0_1	=	0x0081
                           000082   332 _P0_2	=	0x0082
                           000083   333 _P0_3	=	0x0083
                           000084   334 _P0_4	=	0x0084
                           000085   335 _P0_5	=	0x0085
                           000086   336 _P0_6	=	0x0086
                           000087   337 _P0_7	=	0x0087
                           000088   338 _IT0	=	0x0088
                           000089   339 _IE0	=	0x0089
                           00008A   340 _IT1	=	0x008a
                           00008B   341 _IE1	=	0x008b
                           00008C   342 _TR0	=	0x008c
                           00008D   343 _TF0	=	0x008d
                           00008E   344 _TR1	=	0x008e
                           00008F   345 _TF1	=	0x008f
                           000090   346 _P1_0	=	0x0090
                           000091   347 _P1_1	=	0x0091
                           000092   348 _P1_2	=	0x0092
                           000093   349 _P1_3	=	0x0093
                           000094   350 _P1_4	=	0x0094
                           000095   351 _P1_5	=	0x0095
                           000096   352 _P1_6	=	0x0096
                           000097   353 _P1_7	=	0x0097
                           000098   354 _RI	=	0x0098
                           000099   355 _TI	=	0x0099
                           00009A   356 _RB8	=	0x009a
                           00009B   357 _TB8	=	0x009b
                           00009C   358 _REN	=	0x009c
                           00009D   359 _SM2	=	0x009d
                           00009E   360 _SM1	=	0x009e
                           00009F   361 _SM0	=	0x009f
                           00009F   362 _FE	=	0x009f
                           0000A0   363 _P2_0	=	0x00a0
                           0000A1   364 _P2_1	=	0x00a1
                           0000A2   365 _P2_2	=	0x00a2
                           0000A3   366 _P2_3	=	0x00a3
                           0000A4   367 _P2_4	=	0x00a4
                           0000A5   368 _P2_5	=	0x00a5
                           0000A6   369 _P2_6	=	0x00a6
                           0000A7   370 _P2_7	=	0x00a7
                           0000A8   371 _EX0	=	0x00a8
                           0000A9   372 _ET0	=	0x00a9
                           0000AA   373 _EX1	=	0x00aa
                           0000AB   374 _ET1	=	0x00ab
                           0000AC   375 _ES	=	0x00ac
                           0000AD   376 _ET2	=	0x00ad
                           0000AE   377 _EC	=	0x00ae
                           0000AF   378 _EA	=	0x00af
                           0000B0   379 _P3_0	=	0x00b0
                           0000B1   380 _P3_1	=	0x00b1
                           0000B2   381 _P3_2	=	0x00b2
                           0000B3   382 _P3_3	=	0x00b3
                           0000B4   383 _P3_4	=	0x00b4
                           0000B5   384 _P3_5	=	0x00b5
                           0000B6   385 _P3_6	=	0x00b6
                           0000B7   386 _P3_7	=	0x00b7
                           0000B8   387 _PX0L	=	0x00b8
                           0000B9   388 _PT0L	=	0x00b9
                           0000BA   389 _PX1L	=	0x00ba
                           0000BB   390 _PT1L	=	0x00bb
                           0000BC   391 _PSL	=	0x00bc
                           0000BD   392 _PT2L	=	0x00bd
                           0000BE   393 _PPCL	=	0x00be
                           0000C0   394 _P4_0	=	0x00c0
                           0000C1   395 _P4_1	=	0x00c1
                           0000C8   396 _CP_RL2	=	0x00c8
                           0000C9   397 _C_T2	=	0x00c9
                           0000CA   398 _TR2	=	0x00ca
                           0000CB   399 _EXEN2	=	0x00cb
                           0000CC   400 _TCLK	=	0x00cc
                           0000CD   401 _RCLK	=	0x00cd
                           0000CE   402 _EXF2	=	0x00ce
                           0000CF   403 _TF2	=	0x00cf
                           0000D0   404 _P	=	0x00d0
                           0000D1   405 _F1	=	0x00d1
                           0000D2   406 _OV	=	0x00d2
                           0000D3   407 _RS0	=	0x00d3
                           0000D4   408 _RS1	=	0x00d4
                           0000D5   409 _F0	=	0x00d5
                           0000D6   410 _AC	=	0x00d6
                           0000D7   411 _CY	=	0x00d7
                           0000D8   412 _CCF0	=	0x00d8
                           0000D9   413 _CCF1	=	0x00d9
                           0000DA   414 _CCF2	=	0x00da
                           0000DB   415 _CCF3	=	0x00db
                           0000DC   416 _CCF4	=	0x00dc
                           0000DE   417 _CR	=	0x00de
                           0000DF   418 _CF	=	0x00df
                           0000F8   419 _EP0INT	=	0x00f8
                           0000F9   420 _EP1INT	=	0x00f9
                           0000FA   421 _EP2INT	=	0x00fa
                           0000FB   422 _EP3INT	=	0x00fb
                           0000FC   423 _EP4INT	=	0x00fc
                           0000FD   424 _EP5INT	=	0x00fd
                           0000FE   425 _EP6INT	=	0x00fe
                                    426 ;--------------------------------------------------------
                                    427 ; overlayable register banks
                                    428 ;--------------------------------------------------------
                                    429 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        430 	.ds 8
                                    431 ;--------------------------------------------------------
                                    432 ; internal ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area DSEG    (DATA)
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable items in internal ram
                                    437 ;--------------------------------------------------------
                                    438 ;--------------------------------------------------------
                                    439 ; indirectly addressable internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area ISEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; absolute internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area IABS    (ABS,DATA)
                                    446 	.area IABS    (ABS,DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; bit data
                                    449 ;--------------------------------------------------------
                                    450 	.area BSEG    (BIT)
                                    451 ;--------------------------------------------------------
                                    452 ; paged external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area PSEG    (PAG,XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; uninitialized external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XSEG    (XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; absolute external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XABS    (ABS,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; initialized external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XISEG   (XDATA)
                                    467 	.area HOME    (CODE)
                                    468 	.area GSINIT0 (CODE)
                                    469 	.area GSINIT1 (CODE)
                                    470 	.area GSINIT2 (CODE)
                                    471 	.area GSINIT3 (CODE)
                                    472 	.area GSINIT4 (CODE)
                                    473 	.area GSINIT5 (CODE)
                                    474 	.area GSINIT  (CODE)
                                    475 	.area GSFINAL (CODE)
                                    476 	.area CSEG    (CODE)
                                    477 ;--------------------------------------------------------
                                    478 ; global & static initialisations
                                    479 ;--------------------------------------------------------
                                    480 	.area HOME    (CODE)
                                    481 	.area GSINIT  (CODE)
                                    482 	.area GSFINAL (CODE)
                                    483 	.area GSINIT  (CODE)
                                    484 ;--------------------------------------------------------
                                    485 ; Home
                                    486 ;--------------------------------------------------------
                                    487 	.area HOME    (CODE)
                                    488 	.area HOME    (CODE)
                                    489 ;--------------------------------------------------------
                                    490 ; code
                                    491 ;--------------------------------------------------------
                                    492 	.area CSEG    (CODE)
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'lcd_init'
                                    495 ;------------------------------------------------------------
                                    496 ;	my_lcd.c:5: void lcd_init(void){
                                    497 ;	-----------------------------------------
                                    498 ;	 function lcd_init
                                    499 ;	-----------------------------------------
      0000F7                        500 _lcd_init:
                           000007   501 	ar7 = 0x07
                           000006   502 	ar6 = 0x06
                           000005   503 	ar5 = 0x05
                           000004   504 	ar4 = 0x04
                           000003   505 	ar3 = 0x03
                           000002   506 	ar2 = 0x02
                           000001   507 	ar1 = 0x01
                           000000   508 	ar0 = 0x00
                                    509 ;	my_lcd.c:7: delay();
      0000F7 12 00 B8         [24]  510 	lcall	_delay
                                    511 ;	my_lcd.c:8: cmd_write(0x38); /* 8-bit mode, 2 lines */
      0000FA 75 82 38         [24]  512 	mov	dpl, #0x38
      0000FD 12 01 12         [24]  513 	lcall	_cmd_write
                                    514 ;	my_lcd.c:9: cmd_write(0x0C); /* Display ON, Cursor off */
      000100 75 82 0C         [24]  515 	mov	dpl, #0x0c
      000103 12 01 12         [24]  516 	lcall	_cmd_write
                                    517 ;	my_lcd.c:10: cmd_write(0x01); /* Clear Display */
      000106 75 82 01         [24]  518 	mov	dpl, #0x01
      000109 12 01 12         [24]  519 	lcall	_cmd_write
                                    520 ;	my_lcd.c:11: cmd_write(0x06); /* Auto Increment Cursor after Writing*/
      00010C 75 82 06         [24]  521 	mov	dpl, #0x06
                                    522 ;	my_lcd.c:13: }
      00010F 02 01 12         [24]  523 	ljmp	_cmd_write
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'cmd_write'
                                    526 ;------------------------------------------------------------
                                    527 ;cmd           Allocated to registers r7 
                                    528 ;------------------------------------------------------------
                                    529 ;	my_lcd.c:15: void cmd_write(char cmd){
                                    530 ;	-----------------------------------------
                                    531 ;	 function cmd_write
                                    532 ;	-----------------------------------------
      000112                        533 _cmd_write:
      000112 AF 82            [24]  534 	mov	r7, dpl
                                    535 ;	my_lcd.c:17: RS=0; /* Cmd Register */
                                    536 ;	assignBit
      000114 C2 80            [12]  537 	clr	_P0_0
                                    538 ;	my_lcd.c:18: RW=0; /* Write */
                                    539 ;	assignBit
      000116 C2 81            [12]  540 	clr	_P0_1
                                    541 ;	my_lcd.c:19: DATA=cmd;
      000118 8F A0            [24]  542 	mov	_P2,r7
                                    543 ;	my_lcd.c:20: EN=1;
                                    544 ;	assignBit
      00011A D2 82            [12]  545 	setb	_P0_2
                                    546 ;	my_lcd.c:21: delay();
      00011C 12 00 B8         [24]  547 	lcall	_delay
                                    548 ;	my_lcd.c:22: EN=0;
                                    549 ;	assignBit
      00011F C2 82            [12]  550 	clr	_P0_2
                                    551 ;	my_lcd.c:24: }
      000121 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'letter_write'
                                    555 ;------------------------------------------------------------
                                    556 ;letter        Allocated to registers r7 
                                    557 ;------------------------------------------------------------
                                    558 ;	my_lcd.c:26: void letter_write(char letter){
                                    559 ;	-----------------------------------------
                                    560 ;	 function letter_write
                                    561 ;	-----------------------------------------
      000122                        562 _letter_write:
      000122 AF 82            [24]  563 	mov	r7, dpl
                                    564 ;	my_lcd.c:28: RS=1; /* Data Register */
                                    565 ;	assignBit
      000124 D2 80            [12]  566 	setb	_P0_0
                                    567 ;	my_lcd.c:29: RW=0; /* Write */
                                    568 ;	assignBit
      000126 C2 81            [12]  569 	clr	_P0_1
                                    570 ;	my_lcd.c:30: DATA=letter;
      000128 8F A0            [24]  571 	mov	_P2,r7
                                    572 ;	my_lcd.c:31: EN=1;
                                    573 ;	assignBit
      00012A D2 82            [12]  574 	setb	_P0_2
                                    575 ;	my_lcd.c:32: delay();
      00012C 12 00 B8         [24]  576 	lcall	_delay
                                    577 ;	my_lcd.c:33: EN=0;
                                    578 ;	assignBit
      00012F C2 82            [12]  579 	clr	_P0_2
                                    580 ;	my_lcd.c:34: }
      000131 22               [24]  581 	ret
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'lcd_string'
                                    584 ;------------------------------------------------------------
                                    585 ;str           Allocated to registers r5 r6 r7 
                                    586 ;i             Allocated to registers r3 r4 
                                    587 ;------------------------------------------------------------
                                    588 ;	my_lcd.c:36: void lcd_string(char* str){
                                    589 ;	-----------------------------------------
                                    590 ;	 function lcd_string
                                    591 ;	-----------------------------------------
      000132                        592 _lcd_string:
      000132 AD 82            [24]  593 	mov	r5, dpl
      000134 AE 83            [24]  594 	mov	r6, dph
      000136 AF F0            [24]  595 	mov	r7, b
                                    596 ;	my_lcd.c:40: for(i=0;str[i]!='\0';i++){
      000138 7B 00            [12]  597 	mov	r3,#0x00
      00013A 7C 00            [12]  598 	mov	r4,#0x00
      00013C                        599 00103$:
      00013C EB               [12]  600 	mov	a,r3
      00013D 2D               [12]  601 	add	a, r5
      00013E F8               [12]  602 	mov	r0,a
      00013F EC               [12]  603 	mov	a,r4
      000140 3E               [12]  604 	addc	a, r6
      000141 F9               [12]  605 	mov	r1,a
      000142 8F 02            [24]  606 	mov	ar2,r7
      000144 88 82            [24]  607 	mov	dpl,r0
      000146 89 83            [24]  608 	mov	dph,r1
      000148 8A F0            [24]  609 	mov	b,r2
      00014A 12 01 71         [24]  610 	lcall	__gptrget
      00014D FA               [12]  611 	mov	r2,a
      00014E 60 20            [24]  612 	jz	00105$
                                    613 ;	my_lcd.c:41: letter_write(str[i]);
      000150 8A 82            [24]  614 	mov	dpl, r2
      000152 C0 07            [24]  615 	push	ar7
      000154 C0 06            [24]  616 	push	ar6
      000156 C0 05            [24]  617 	push	ar5
      000158 C0 04            [24]  618 	push	ar4
      00015A C0 03            [24]  619 	push	ar3
      00015C 12 01 22         [24]  620 	lcall	_letter_write
      00015F D0 03            [24]  621 	pop	ar3
      000161 D0 04            [24]  622 	pop	ar4
      000163 D0 05            [24]  623 	pop	ar5
      000165 D0 06            [24]  624 	pop	ar6
      000167 D0 07            [24]  625 	pop	ar7
                                    626 ;	my_lcd.c:40: for(i=0;str[i]!='\0';i++){
      000169 0B               [12]  627 	inc	r3
      00016A BB 00 CF         [24]  628 	cjne	r3,#0x00,00103$
      00016D 0C               [12]  629 	inc	r4
      00016E 80 CC            [24]  630 	sjmp	00103$
      000170                        631 00105$:
                                    632 ;	my_lcd.c:43: }
      000170 22               [24]  633 	ret
                                    634 	.area CSEG    (CODE)
                                    635 	.area CONST   (CODE)
                                    636 	.area XINIT   (CODE)
                                    637 	.area CABS    (ABS,CODE)
