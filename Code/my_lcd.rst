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
                                     11 	.globl _delay_us
                                     12 	.globl _delay_ms
                                     13 	.globl _EP6INT
                                     14 	.globl _EP5INT
                                     15 	.globl _EP4INT
                                     16 	.globl _EP3INT
                                     17 	.globl _EP2INT
                                     18 	.globl _EP1INT
                                     19 	.globl _EP0INT
                                     20 	.globl _CF
                                     21 	.globl _CR
                                     22 	.globl _CCF4
                                     23 	.globl _CCF3
                                     24 	.globl _CCF2
                                     25 	.globl _CCF1
                                     26 	.globl _CCF0
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _TF2
                                     36 	.globl _EXF2
                                     37 	.globl _RCLK
                                     38 	.globl _TCLK
                                     39 	.globl _EXEN2
                                     40 	.globl _TR2
                                     41 	.globl _C_T2
                                     42 	.globl _CP_RL2
                                     43 	.globl _P4_1
                                     44 	.globl _P4_0
                                     45 	.globl _PPCL
                                     46 	.globl _PT2L
                                     47 	.globl _PSL
                                     48 	.globl _PT1L
                                     49 	.globl _PX1L
                                     50 	.globl _PT0L
                                     51 	.globl _PX0L
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _EC
                                     62 	.globl _ET2
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
                                     76 	.globl _FE
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _UEPINT
                                    110 	.globl _LEDCON
                                    111 	.globl _B
                                    112 	.globl _CCAP4H
                                    113 	.globl _CCAP4L
                                    114 	.globl _CCAP4
                                    115 	.globl _CCAP3H
                                    116 	.globl _CCAP3L
                                    117 	.globl _CCAP3
                                    118 	.globl _CCAP2H
                                    119 	.globl _CCAP2L
                                    120 	.globl _CCAP2
                                    121 	.globl _CCAP1H
                                    122 	.globl _CCAP1L
                                    123 	.globl _CCAP1
                                    124 	.globl _CCAP0H
                                    125 	.globl _CCAP0L
                                    126 	.globl _CCAP0
                                    127 	.globl _CH
                                    128 	.globl _CL
                                    129 	.globl _PCA
                                    130 	.globl _UBYCTHX
                                    131 	.globl _UBYCTLX
                                    132 	.globl _UBYCTX
                                    133 	.globl _ACC
                                    134 	.globl _CCAPM4
                                    135 	.globl _CCAPM3
                                    136 	.globl _CCAPM2
                                    137 	.globl _CCAPM1
                                    138 	.globl _CCAPM0
                                    139 	.globl _CMOD
                                    140 	.globl _CCON
                                    141 	.globl _UEPRST
                                    142 	.globl _UEPCONX
                                    143 	.globl _EECON
                                    144 	.globl _FCON
                                    145 	.globl _PSW
                                    146 	.globl _UEPDATX
                                    147 	.globl _UEPSTAX
                                    148 	.globl _TH2
                                    149 	.globl _TL2
                                    150 	.globl _TMR2
                                    151 	.globl _RCAP2H
                                    152 	.globl _RCAP2L
                                    153 	.globl _RCAP2
                                    154 	.globl _T2MOD
                                    155 	.globl _T2CON
                                    156 	.globl _UEPNUM
                                    157 	.globl _USBADDR
                                    158 	.globl _SPDAT
                                    159 	.globl _SPSTA
                                    160 	.globl _SPCON
                                    161 	.globl _UEPIEN
                                    162 	.globl _P4
                                    163 	.globl _USBIEN
                                    164 	.globl _USBINT
                                    165 	.globl _USBCON
                                    166 	.globl _UFNUMH
                                    167 	.globl _UFNUML
                                    168 	.globl _UFNUM
                                    169 	.globl _SADEN
                                    170 	.globl _IPL0
                                    171 	.globl _IPH0
                                    172 	.globl _IPH1
                                    173 	.globl _IPL1
                                    174 	.globl _IEN1
                                    175 	.globl _P3
                                    176 	.globl _CKCON1
                                    177 	.globl _SADDR
                                    178 	.globl _IEN0
                                    179 	.globl _IE
                                    180 	.globl _WDTPRG
                                    181 	.globl _WDTRST
                                    182 	.globl _PLLDIV
                                    183 	.globl _PLLCON
                                    184 	.globl _AUXR1
                                    185 	.globl _P2
                                    186 	.globl _KBF
                                    187 	.globl _KBE
                                    188 	.globl _KBLS
                                    189 	.globl _BDRCON
                                    190 	.globl _BRL
                                    191 	.globl _SBUF
                                    192 	.globl _SCON
                                    193 	.globl _SSADR
                                    194 	.globl _SSDAT
                                    195 	.globl _SSCS
                                    196 	.globl _SSCON
                                    197 	.globl _P1
                                    198 	.globl _CKCON0
                                    199 	.globl _AUXR
                                    200 	.globl _TH1
                                    201 	.globl _TL1
                                    202 	.globl _TMR1
                                    203 	.globl _TH0
                                    204 	.globl _TL0
                                    205 	.globl _TMR0
                                    206 	.globl _TMOD
                                    207 	.globl _TCON
                                    208 	.globl _PCON
                                    209 	.globl _DPH
                                    210 	.globl _DPL
                                    211 	.globl _SP
                                    212 	.globl _P0
                                    213 	.globl _lcd_init
                                    214 	.globl _cmd_write
                                    215 	.globl _letter_write
                                    216 	.globl _lcd_string
                                    217 ;--------------------------------------------------------
                                    218 ; special function registers
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 _P0	=	0x0080
                           000081   223 _SP	=	0x0081
                           000082   224 _DPL	=	0x0082
                           000083   225 _DPH	=	0x0083
                           000087   226 _PCON	=	0x0087
                           000088   227 _TCON	=	0x0088
                           000089   228 _TMOD	=	0x0089
                           008C8A   229 _TMR0	=	0x8c8a
                           00008A   230 _TL0	=	0x008a
                           00008C   231 _TH0	=	0x008c
                           008D8B   232 _TMR1	=	0x8d8b
                           00008B   233 _TL1	=	0x008b
                           00008D   234 _TH1	=	0x008d
                           00008E   235 _AUXR	=	0x008e
                           00008F   236 _CKCON0	=	0x008f
                           000090   237 _P1	=	0x0090
                           000093   238 _SSCON	=	0x0093
                           000094   239 _SSCS	=	0x0094
                           000095   240 _SSDAT	=	0x0095
                           000096   241 _SSADR	=	0x0096
                           000098   242 _SCON	=	0x0098
                           000099   243 _SBUF	=	0x0099
                           00009A   244 _BRL	=	0x009a
                           00009B   245 _BDRCON	=	0x009b
                           00009C   246 _KBLS	=	0x009c
                           00009D   247 _KBE	=	0x009d
                           00009E   248 _KBF	=	0x009e
                           0000A0   249 _P2	=	0x00a0
                           0000A2   250 _AUXR1	=	0x00a2
                           0000A3   251 _PLLCON	=	0x00a3
                           0000A4   252 _PLLDIV	=	0x00a4
                           0000A6   253 _WDTRST	=	0x00a6
                           0000A7   254 _WDTPRG	=	0x00a7
                           0000A8   255 _IE	=	0x00a8
                           0000A8   256 _IEN0	=	0x00a8
                           0000A9   257 _SADDR	=	0x00a9
                           0000AF   258 _CKCON1	=	0x00af
                           0000B0   259 _P3	=	0x00b0
                           0000B1   260 _IEN1	=	0x00b1
                           0000B2   261 _IPL1	=	0x00b2
                           0000B3   262 _IPH1	=	0x00b3
                           0000B7   263 _IPH0	=	0x00b7
                           0000B8   264 _IPL0	=	0x00b8
                           0000B9   265 _SADEN	=	0x00b9
                           00BBBA   266 _UFNUM	=	0xbbba
                           0000BA   267 _UFNUML	=	0x00ba
                           0000BB   268 _UFNUMH	=	0x00bb
                           0000BC   269 _USBCON	=	0x00bc
                           0000BD   270 _USBINT	=	0x00bd
                           0000BE   271 _USBIEN	=	0x00be
                           0000C0   272 _P4	=	0x00c0
                           0000C2   273 _UEPIEN	=	0x00c2
                           0000C3   274 _SPCON	=	0x00c3
                           0000C4   275 _SPSTA	=	0x00c4
                           0000C5   276 _SPDAT	=	0x00c5
                           0000C6   277 _USBADDR	=	0x00c6
                           0000C7   278 _UEPNUM	=	0x00c7
                           0000C8   279 _T2CON	=	0x00c8
                           0000C9   280 _T2MOD	=	0x00c9
                           00CBCA   281 _RCAP2	=	0xcbca
                           0000CA   282 _RCAP2L	=	0x00ca
                           0000CB   283 _RCAP2H	=	0x00cb
                           00CDCC   284 _TMR2	=	0xcdcc
                           0000CC   285 _TL2	=	0x00cc
                           0000CD   286 _TH2	=	0x00cd
                           0000CE   287 _UEPSTAX	=	0x00ce
                           0000CF   288 _UEPDATX	=	0x00cf
                           0000D0   289 _PSW	=	0x00d0
                           0000D1   290 _FCON	=	0x00d1
                           0000D2   291 _EECON	=	0x00d2
                           0000D4   292 _UEPCONX	=	0x00d4
                           0000D5   293 _UEPRST	=	0x00d5
                           0000D8   294 _CCON	=	0x00d8
                           0000D9   295 _CMOD	=	0x00d9
                           0000DA   296 _CCAPM0	=	0x00da
                           0000DB   297 _CCAPM1	=	0x00db
                           0000DC   298 _CCAPM2	=	0x00dc
                           0000DD   299 _CCAPM3	=	0x00dd
                           0000DE   300 _CCAPM4	=	0x00de
                           0000E0   301 _ACC	=	0x00e0
                           00E3E2   302 _UBYCTX	=	0xe3e2
                           0000E2   303 _UBYCTLX	=	0x00e2
                           0000E3   304 _UBYCTHX	=	0x00e3
                           00F9E9   305 _PCA	=	0xf9e9
                           0000E9   306 _CL	=	0x00e9
                           0000F9   307 _CH	=	0x00f9
                           00FAEA   308 _CCAP0	=	0xfaea
                           0000EA   309 _CCAP0L	=	0x00ea
                           0000FA   310 _CCAP0H	=	0x00fa
                           00FBEB   311 _CCAP1	=	0xfbeb
                           0000EB   312 _CCAP1L	=	0x00eb
                           0000FB   313 _CCAP1H	=	0x00fb
                           00FCEC   314 _CCAP2	=	0xfcec
                           0000EC   315 _CCAP2L	=	0x00ec
                           0000FC   316 _CCAP2H	=	0x00fc
                           00FDED   317 _CCAP3	=	0xfded
                           0000ED   318 _CCAP3L	=	0x00ed
                           0000FD   319 _CCAP3H	=	0x00fd
                           00FEEE   320 _CCAP4	=	0xfeee
                           0000EE   321 _CCAP4L	=	0x00ee
                           0000FE   322 _CCAP4H	=	0x00fe
                           0000F0   323 _B	=	0x00f0
                           0000F1   324 _LEDCON	=	0x00f1
                           0000F8   325 _UEPINT	=	0x00f8
                                    326 ;--------------------------------------------------------
                                    327 ; special function bits
                                    328 ;--------------------------------------------------------
                                    329 	.area RSEG    (ABS,DATA)
      000000                        330 	.org 0x0000
                           000080   331 _P0_0	=	0x0080
                           000081   332 _P0_1	=	0x0081
                           000082   333 _P0_2	=	0x0082
                           000083   334 _P0_3	=	0x0083
                           000084   335 _P0_4	=	0x0084
                           000085   336 _P0_5	=	0x0085
                           000086   337 _P0_6	=	0x0086
                           000087   338 _P0_7	=	0x0087
                           000088   339 _IT0	=	0x0088
                           000089   340 _IE0	=	0x0089
                           00008A   341 _IT1	=	0x008a
                           00008B   342 _IE1	=	0x008b
                           00008C   343 _TR0	=	0x008c
                           00008D   344 _TF0	=	0x008d
                           00008E   345 _TR1	=	0x008e
                           00008F   346 _TF1	=	0x008f
                           000090   347 _P1_0	=	0x0090
                           000091   348 _P1_1	=	0x0091
                           000092   349 _P1_2	=	0x0092
                           000093   350 _P1_3	=	0x0093
                           000094   351 _P1_4	=	0x0094
                           000095   352 _P1_5	=	0x0095
                           000096   353 _P1_6	=	0x0096
                           000097   354 _P1_7	=	0x0097
                           000098   355 _RI	=	0x0098
                           000099   356 _TI	=	0x0099
                           00009A   357 _RB8	=	0x009a
                           00009B   358 _TB8	=	0x009b
                           00009C   359 _REN	=	0x009c
                           00009D   360 _SM2	=	0x009d
                           00009E   361 _SM1	=	0x009e
                           00009F   362 _SM0	=	0x009f
                           00009F   363 _FE	=	0x009f
                           0000A0   364 _P2_0	=	0x00a0
                           0000A1   365 _P2_1	=	0x00a1
                           0000A2   366 _P2_2	=	0x00a2
                           0000A3   367 _P2_3	=	0x00a3
                           0000A4   368 _P2_4	=	0x00a4
                           0000A5   369 _P2_5	=	0x00a5
                           0000A6   370 _P2_6	=	0x00a6
                           0000A7   371 _P2_7	=	0x00a7
                           0000A8   372 _EX0	=	0x00a8
                           0000A9   373 _ET0	=	0x00a9
                           0000AA   374 _EX1	=	0x00aa
                           0000AB   375 _ET1	=	0x00ab
                           0000AC   376 _ES	=	0x00ac
                           0000AD   377 _ET2	=	0x00ad
                           0000AE   378 _EC	=	0x00ae
                           0000AF   379 _EA	=	0x00af
                           0000B0   380 _P3_0	=	0x00b0
                           0000B1   381 _P3_1	=	0x00b1
                           0000B2   382 _P3_2	=	0x00b2
                           0000B3   383 _P3_3	=	0x00b3
                           0000B4   384 _P3_4	=	0x00b4
                           0000B5   385 _P3_5	=	0x00b5
                           0000B6   386 _P3_6	=	0x00b6
                           0000B7   387 _P3_7	=	0x00b7
                           0000B8   388 _PX0L	=	0x00b8
                           0000B9   389 _PT0L	=	0x00b9
                           0000BA   390 _PX1L	=	0x00ba
                           0000BB   391 _PT1L	=	0x00bb
                           0000BC   392 _PSL	=	0x00bc
                           0000BD   393 _PT2L	=	0x00bd
                           0000BE   394 _PPCL	=	0x00be
                           0000C0   395 _P4_0	=	0x00c0
                           0000C1   396 _P4_1	=	0x00c1
                           0000C8   397 _CP_RL2	=	0x00c8
                           0000C9   398 _C_T2	=	0x00c9
                           0000CA   399 _TR2	=	0x00ca
                           0000CB   400 _EXEN2	=	0x00cb
                           0000CC   401 _TCLK	=	0x00cc
                           0000CD   402 _RCLK	=	0x00cd
                           0000CE   403 _EXF2	=	0x00ce
                           0000CF   404 _TF2	=	0x00cf
                           0000D0   405 _P	=	0x00d0
                           0000D1   406 _F1	=	0x00d1
                           0000D2   407 _OV	=	0x00d2
                           0000D3   408 _RS0	=	0x00d3
                           0000D4   409 _RS1	=	0x00d4
                           0000D5   410 _F0	=	0x00d5
                           0000D6   411 _AC	=	0x00d6
                           0000D7   412 _CY	=	0x00d7
                           0000D8   413 _CCF0	=	0x00d8
                           0000D9   414 _CCF1	=	0x00d9
                           0000DA   415 _CCF2	=	0x00da
                           0000DB   416 _CCF3	=	0x00db
                           0000DC   417 _CCF4	=	0x00dc
                           0000DE   418 _CR	=	0x00de
                           0000DF   419 _CF	=	0x00df
                           0000F8   420 _EP0INT	=	0x00f8
                           0000F9   421 _EP1INT	=	0x00f9
                           0000FA   422 _EP2INT	=	0x00fa
                           0000FB   423 _EP3INT	=	0x00fb
                           0000FC   424 _EP4INT	=	0x00fc
                           0000FD   425 _EP5INT	=	0x00fd
                           0000FE   426 _EP6INT	=	0x00fe
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable register banks
                                    429 ;--------------------------------------------------------
                                    430 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        431 	.ds 8
                                    432 ;--------------------------------------------------------
                                    433 ; internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area DSEG    (DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable items in internal ram
                                    438 ;--------------------------------------------------------
                                    439 ;--------------------------------------------------------
                                    440 ; indirectly addressable internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area ISEG    (DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; absolute internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area IABS    (ABS,DATA)
                                    447 	.area IABS    (ABS,DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; bit data
                                    450 ;--------------------------------------------------------
                                    451 	.area BSEG    (BIT)
                                    452 ;--------------------------------------------------------
                                    453 ; paged external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area PSEG    (PAG,XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; uninitialized external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XSEG    (XDATA)
                                    460 ;--------------------------------------------------------
                                    461 ; absolute external ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XABS    (ABS,XDATA)
                                    464 ;--------------------------------------------------------
                                    465 ; initialized external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area XISEG   (XDATA)
                                    468 	.area HOME    (CODE)
                                    469 	.area GSINIT0 (CODE)
                                    470 	.area GSINIT1 (CODE)
                                    471 	.area GSINIT2 (CODE)
                                    472 	.area GSINIT3 (CODE)
                                    473 	.area GSINIT4 (CODE)
                                    474 	.area GSINIT5 (CODE)
                                    475 	.area GSINIT  (CODE)
                                    476 	.area GSFINAL (CODE)
                                    477 	.area CSEG    (CODE)
                                    478 ;--------------------------------------------------------
                                    479 ; global & static initialisations
                                    480 ;--------------------------------------------------------
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.area GSFINAL (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; Home
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
                                    489 	.area HOME    (CODE)
                                    490 ;--------------------------------------------------------
                                    491 ; code
                                    492 ;--------------------------------------------------------
                                    493 	.area CSEG    (CODE)
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'lcd_init'
                                    496 ;------------------------------------------------------------
                                    497 ;	my_lcd.c:5: void lcd_init(void){
                                    498 ;	-----------------------------------------
                                    499 ;	 function lcd_init
                                    500 ;	-----------------------------------------
      0001A3                        501 _lcd_init:
                           000007   502 	ar7 = 0x07
                           000006   503 	ar6 = 0x06
                           000005   504 	ar5 = 0x05
                           000004   505 	ar4 = 0x04
                           000003   506 	ar3 = 0x03
                           000002   507 	ar2 = 0x02
                           000001   508 	ar1 = 0x01
                           000000   509 	ar0 = 0x00
                                    510 ;	my_lcd.c:7: delay_ms(15);     /* LCD displays need 10ms for giving 1st cmd*/
      0001A3 90 00 0F         [24]  511 	mov	dptr,#0x000f
      0001A6 E4               [12]  512 	clr	a
      0001A7 F5 F0            [12]  513 	mov	b,a
      0001A9 12 00 FF         [24]  514 	lcall	_delay_ms
                                    515 ;	my_lcd.c:8: cmd_write(0x38); /* 8-bit mode, 2 lines */
      0001AC 75 82 38         [24]  516 	mov	dpl, #0x38
      0001AF 12 01 CD         [24]  517 	lcall	_cmd_write
                                    518 ;	my_lcd.c:9: cmd_write(0x0C); /* Display ON, Cursor off */
      0001B2 75 82 0C         [24]  519 	mov	dpl, #0x0c
      0001B5 12 01 CD         [24]  520 	lcall	_cmd_write
                                    521 ;	my_lcd.c:10: cmd_write(0x01); /* Clear Display */
      0001B8 75 82 01         [24]  522 	mov	dpl, #0x01
      0001BB 12 01 CD         [24]  523 	lcall	_cmd_write
                                    524 ;	my_lcd.c:11: delay_ms(2);
      0001BE 90 00 02         [24]  525 	mov	dptr,#0x0002
      0001C1 E4               [12]  526 	clr	a
      0001C2 F5 F0            [12]  527 	mov	b,a
      0001C4 12 00 FF         [24]  528 	lcall	_delay_ms
                                    529 ;	my_lcd.c:12: cmd_write(0x06); /* Auto Increment Cursor after Writing*/
      0001C7 75 82 06         [24]  530 	mov	dpl, #0x06
                                    531 ;	my_lcd.c:14: }
      0001CA 02 01 CD         [24]  532 	ljmp	_cmd_write
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'cmd_write'
                                    535 ;------------------------------------------------------------
                                    536 ;cmd           Allocated to registers r7 
                                    537 ;------------------------------------------------------------
                                    538 ;	my_lcd.c:16: void cmd_write(char cmd){
                                    539 ;	-----------------------------------------
                                    540 ;	 function cmd_write
                                    541 ;	-----------------------------------------
      0001CD                        542 _cmd_write:
      0001CD AF 82            [24]  543 	mov	r7, dpl
                                    544 ;	my_lcd.c:18: RS=0; /* Cmd Register */
                                    545 ;	assignBit
      0001CF C2 80            [12]  546 	clr	_P0_0
                                    547 ;	my_lcd.c:19: RW=0; /* Write */
                                    548 ;	assignBit
      0001D1 C2 81            [12]  549 	clr	_P0_1
                                    550 ;	my_lcd.c:20: DATA=cmd;
      0001D3 8F A0            [24]  551 	mov	_P2,r7
                                    552 ;	my_lcd.c:21: EN=1;
                                    553 ;	assignBit
      0001D5 D2 82            [12]  554 	setb	_P0_2
                                    555 ;	my_lcd.c:22: delay_us(1);
      0001D7 90 00 01         [24]  556 	mov	dptr,#0x0001
      0001DA 12 00 E7         [24]  557 	lcall	_delay_us
                                    558 ;	my_lcd.c:23: EN=0;
                                    559 ;	assignBit
      0001DD C2 82            [12]  560 	clr	_P0_2
                                    561 ;	my_lcd.c:24: delay_us(50);
      0001DF 90 00 32         [24]  562 	mov	dptr,#0x0032
                                    563 ;	my_lcd.c:26: }
      0001E2 02 00 E7         [24]  564 	ljmp	_delay_us
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'letter_write'
                                    567 ;------------------------------------------------------------
                                    568 ;letter        Allocated to registers r7 
                                    569 ;------------------------------------------------------------
                                    570 ;	my_lcd.c:28: void letter_write(char letter){
                                    571 ;	-----------------------------------------
                                    572 ;	 function letter_write
                                    573 ;	-----------------------------------------
      0001E5                        574 _letter_write:
      0001E5 AF 82            [24]  575 	mov	r7, dpl
                                    576 ;	my_lcd.c:30: RS=1; /* Data Register */
                                    577 ;	assignBit
      0001E7 D2 80            [12]  578 	setb	_P0_0
                                    579 ;	my_lcd.c:31: RW=0; /* Write */
                                    580 ;	assignBit
      0001E9 C2 81            [12]  581 	clr	_P0_1
                                    582 ;	my_lcd.c:32: DATA=letter;
      0001EB 8F A0            [24]  583 	mov	_P2,r7
                                    584 ;	my_lcd.c:33: EN=1;
                                    585 ;	assignBit
      0001ED D2 82            [12]  586 	setb	_P0_2
                                    587 ;	my_lcd.c:34: delay_us(1);
      0001EF 90 00 01         [24]  588 	mov	dptr,#0x0001
      0001F2 12 00 E7         [24]  589 	lcall	_delay_us
                                    590 ;	my_lcd.c:35: EN=0;
                                    591 ;	assignBit
      0001F5 C2 82            [12]  592 	clr	_P0_2
                                    593 ;	my_lcd.c:36: delay_us(50);
      0001F7 90 00 32         [24]  594 	mov	dptr,#0x0032
                                    595 ;	my_lcd.c:37: }
      0001FA 02 00 E7         [24]  596 	ljmp	_delay_us
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'lcd_string'
                                    599 ;------------------------------------------------------------
                                    600 ;str           Allocated to registers r5 r6 r7 
                                    601 ;i             Allocated to registers r3 r4 
                                    602 ;------------------------------------------------------------
                                    603 ;	my_lcd.c:39: void lcd_string(char* str){
                                    604 ;	-----------------------------------------
                                    605 ;	 function lcd_string
                                    606 ;	-----------------------------------------
      0001FD                        607 _lcd_string:
      0001FD AD 82            [24]  608 	mov	r5, dpl
      0001FF AE 83            [24]  609 	mov	r6, dph
      000201 AF F0            [24]  610 	mov	r7, b
                                    611 ;	my_lcd.c:43: for(i=0;str[i]!='\0';i++){
      000203 7B 00            [12]  612 	mov	r3,#0x00
      000205 7C 00            [12]  613 	mov	r4,#0x00
      000207                        614 00103$:
      000207 EB               [12]  615 	mov	a,r3
      000208 2D               [12]  616 	add	a, r5
      000209 F8               [12]  617 	mov	r0,a
      00020A EC               [12]  618 	mov	a,r4
      00020B 3E               [12]  619 	addc	a, r6
      00020C F9               [12]  620 	mov	r1,a
      00020D 8F 02            [24]  621 	mov	ar2,r7
      00020F 88 82            [24]  622 	mov	dpl,r0
      000211 89 83            [24]  623 	mov	dph,r1
      000213 8A F0            [24]  624 	mov	b,r2
      000215 12 07 BD         [24]  625 	lcall	__gptrget
      000218 FA               [12]  626 	mov	r2,a
      000219 60 20            [24]  627 	jz	00105$
                                    628 ;	my_lcd.c:44: letter_write(str[i]);
      00021B 8A 82            [24]  629 	mov	dpl, r2
      00021D C0 07            [24]  630 	push	ar7
      00021F C0 06            [24]  631 	push	ar6
      000221 C0 05            [24]  632 	push	ar5
      000223 C0 04            [24]  633 	push	ar4
      000225 C0 03            [24]  634 	push	ar3
      000227 12 01 E5         [24]  635 	lcall	_letter_write
      00022A D0 03            [24]  636 	pop	ar3
      00022C D0 04            [24]  637 	pop	ar4
      00022E D0 05            [24]  638 	pop	ar5
      000230 D0 06            [24]  639 	pop	ar6
      000232 D0 07            [24]  640 	pop	ar7
                                    641 ;	my_lcd.c:43: for(i=0;str[i]!='\0';i++){
      000234 0B               [12]  642 	inc	r3
      000235 BB 00 CF         [24]  643 	cjne	r3,#0x00,00103$
      000238 0C               [12]  644 	inc	r4
      000239 80 CC            [24]  645 	sjmp	00103$
      00023B                        646 00105$:
                                    647 ;	my_lcd.c:46: }
      00023B 22               [24]  648 	ret
                                    649 	.area CSEG    (CODE)
                                    650 	.area CONST   (CODE)
                                    651 	.area XINIT   (CODE)
                                    652 	.area CABS    (ABS,CODE)
