                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module my_oled
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_write
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
                                    212 	.globl _init_oled
                                    213 	.globl _oled_command
                                    214 	.globl _oled_write_char
                                    215 	.globl _oled_write_string
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
      00003A                        435 _init_oled_data_10000_11:
      00003A                        436 	.ds 32
      00005A                        437 _oled_command_data_10000_47:
      00005A                        438 	.ds 2
      00005C                        439 _oled_write_char_data_10000_49:
      00005C                        440 	.ds 7
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable items in internal ram
                                    443 ;--------------------------------------------------------
                                    444 ;--------------------------------------------------------
                                    445 ; indirectly addressable internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area ISEG    (DATA)
                                    448 ;--------------------------------------------------------
                                    449 ; absolute internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area IABS    (ABS,DATA)
                                    452 	.area IABS    (ABS,DATA)
                                    453 ;--------------------------------------------------------
                                    454 ; bit data
                                    455 ;--------------------------------------------------------
                                    456 	.area BSEG    (BIT)
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; uninitialized external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area XABS    (ABS,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; initialized external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XISEG   (XDATA)
                                    473 	.area HOME    (CODE)
                                    474 	.area GSINIT0 (CODE)
                                    475 	.area GSINIT1 (CODE)
                                    476 	.area GSINIT2 (CODE)
                                    477 	.area GSINIT3 (CODE)
                                    478 	.area GSINIT4 (CODE)
                                    479 	.area GSINIT5 (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 	.area GSFINAL (CODE)
                                    482 	.area CSEG    (CODE)
                                    483 ;--------------------------------------------------------
                                    484 ; global & static initialisations
                                    485 ;--------------------------------------------------------
                                    486 	.area HOME    (CODE)
                                    487 	.area GSINIT  (CODE)
                                    488 	.area GSFINAL (CODE)
                                    489 	.area GSINIT  (CODE)
                                    490 ;--------------------------------------------------------
                                    491 ; Home
                                    492 ;--------------------------------------------------------
                                    493 	.area HOME    (CODE)
                                    494 	.area HOME    (CODE)
                                    495 ;--------------------------------------------------------
                                    496 ; code
                                    497 ;--------------------------------------------------------
                                    498 	.area CSEG    (CODE)
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'init_oled'
                                    501 ;------------------------------------------------------------
                                    502 ;page          Allocated to registers r7 
                                    503 ;column        Allocated to registers r6 
                                    504 ;count         Allocated to registers r5 
                                    505 ;i             Allocated to registers r7 
                                    506 ;data          Allocated with name '_init_oled_data_10000_11'
                                    507 ;------------------------------------------------------------
                                    508 ;	my_oled.c:36: unsigned char init_oled(void){
                                    509 ;	-----------------------------------------
                                    510 ;	 function init_oled
                                    511 ;	-----------------------------------------
      0004FB                        512 _init_oled:
                           000007   513 	ar7 = 0x07
                           000006   514 	ar6 = 0x06
                           000005   515 	ar5 = 0x05
                           000004   516 	ar4 = 0x04
                           000003   517 	ar3 = 0x03
                           000002   518 	ar2 = 0x02
                           000001   519 	ar1 = 0x01
                           000000   520 	ar0 = 0x00
                                    521 ;	my_oled.c:44: if(!oled_command(0xAE)) return 0;
      0004FB 75 82 AE         [24]  522 	mov	dpl, #0xae
      0004FE 12 06 EB         [24]  523 	lcall	_oled_command
      000501 E5 82            [12]  524 	mov	a, dpl
      000503 70 03            [24]  525 	jnz	00102$
      000505 F5 82            [12]  526 	mov	dpl,a
      000507 22               [24]  527 	ret
      000508                        528 00102$:
                                    529 ;	my_oled.c:45: if(!oled_command(0xD5)) return 0;
      000508 75 82 D5         [24]  530 	mov	dpl, #0xd5
      00050B 12 06 EB         [24]  531 	lcall	_oled_command
      00050E E5 82            [12]  532 	mov	a, dpl
      000510 70 03            [24]  533 	jnz	00104$
      000512 F5 82            [12]  534 	mov	dpl,a
      000514 22               [24]  535 	ret
      000515                        536 00104$:
                                    537 ;	my_oled.c:46: if(!oled_command(0x80)) return 0;
      000515 75 82 80         [24]  538 	mov	dpl, #0x80
      000518 12 06 EB         [24]  539 	lcall	_oled_command
      00051B E5 82            [12]  540 	mov	a, dpl
      00051D 70 03            [24]  541 	jnz	00106$
      00051F F5 82            [12]  542 	mov	dpl,a
      000521 22               [24]  543 	ret
      000522                        544 00106$:
                                    545 ;	my_oled.c:47: if(!oled_command(0xA8)) return 0;
      000522 75 82 A8         [24]  546 	mov	dpl, #0xa8
      000525 12 06 EB         [24]  547 	lcall	_oled_command
      000528 E5 82            [12]  548 	mov	a, dpl
      00052A 70 03            [24]  549 	jnz	00108$
      00052C F5 82            [12]  550 	mov	dpl,a
      00052E 22               [24]  551 	ret
      00052F                        552 00108$:
                                    553 ;	my_oled.c:48: if(!oled_command(0x3F)) return 0;
      00052F 75 82 3F         [24]  554 	mov	dpl, #0x3f
      000532 12 06 EB         [24]  555 	lcall	_oled_command
      000535 E5 82            [12]  556 	mov	a, dpl
      000537 70 03            [24]  557 	jnz	00110$
      000539 F5 82            [12]  558 	mov	dpl,a
      00053B 22               [24]  559 	ret
      00053C                        560 00110$:
                                    561 ;	my_oled.c:49: if(!oled_command(0xD3)) return 0;
      00053C 75 82 D3         [24]  562 	mov	dpl, #0xd3
      00053F 12 06 EB         [24]  563 	lcall	_oled_command
      000542 E5 82            [12]  564 	mov	a, dpl
      000544 70 03            [24]  565 	jnz	00112$
      000546 F5 82            [12]  566 	mov	dpl,a
      000548 22               [24]  567 	ret
      000549                        568 00112$:
                                    569 ;	my_oled.c:50: if(!oled_command(0x00)) return 0;
      000549 75 82 00         [24]  570 	mov	dpl, #0x00
      00054C 12 06 EB         [24]  571 	lcall	_oled_command
      00054F E5 82            [12]  572 	mov	a, dpl
      000551 70 03            [24]  573 	jnz	00114$
      000553 F5 82            [12]  574 	mov	dpl,a
      000555 22               [24]  575 	ret
      000556                        576 00114$:
                                    577 ;	my_oled.c:51: if(!oled_command(0x40)) return 0;
      000556 75 82 40         [24]  578 	mov	dpl, #0x40
      000559 12 06 EB         [24]  579 	lcall	_oled_command
      00055C E5 82            [12]  580 	mov	a, dpl
      00055E 70 03            [24]  581 	jnz	00116$
      000560 F5 82            [12]  582 	mov	dpl,a
      000562 22               [24]  583 	ret
      000563                        584 00116$:
                                    585 ;	my_oled.c:52: if(!oled_command(0x8D)) return 0;
      000563 75 82 8D         [24]  586 	mov	dpl, #0x8d
      000566 12 06 EB         [24]  587 	lcall	_oled_command
      000569 E5 82            [12]  588 	mov	a, dpl
      00056B 70 03            [24]  589 	jnz	00118$
      00056D F5 82            [12]  590 	mov	dpl,a
      00056F 22               [24]  591 	ret
      000570                        592 00118$:
                                    593 ;	my_oled.c:53: if(!oled_command(0x14)) return 0;
      000570 75 82 14         [24]  594 	mov	dpl, #0x14
      000573 12 06 EB         [24]  595 	lcall	_oled_command
      000576 E5 82            [12]  596 	mov	a, dpl
      000578 70 03            [24]  597 	jnz	00120$
      00057A F5 82            [12]  598 	mov	dpl,a
      00057C 22               [24]  599 	ret
      00057D                        600 00120$:
                                    601 ;	my_oled.c:54: if(!oled_command(0x20)) return 0;
      00057D 75 82 20         [24]  602 	mov	dpl, #0x20
      000580 12 06 EB         [24]  603 	lcall	_oled_command
      000583 E5 82            [12]  604 	mov	a, dpl
      000585 70 03            [24]  605 	jnz	00122$
      000587 F5 82            [12]  606 	mov	dpl,a
      000589 22               [24]  607 	ret
      00058A                        608 00122$:
                                    609 ;	my_oled.c:55: if(!oled_command(0x02)) return 0;
      00058A 75 82 02         [24]  610 	mov	dpl, #0x02
      00058D 12 06 EB         [24]  611 	lcall	_oled_command
      000590 E5 82            [12]  612 	mov	a, dpl
      000592 70 03            [24]  613 	jnz	00124$
      000594 F5 82            [12]  614 	mov	dpl,a
      000596 22               [24]  615 	ret
      000597                        616 00124$:
                                    617 ;	my_oled.c:56: if(!oled_command(0xA1)) return 0;
      000597 75 82 A1         [24]  618 	mov	dpl, #0xa1
      00059A 12 06 EB         [24]  619 	lcall	_oled_command
      00059D E5 82            [12]  620 	mov	a, dpl
      00059F 70 03            [24]  621 	jnz	00126$
      0005A1 F5 82            [12]  622 	mov	dpl,a
      0005A3 22               [24]  623 	ret
      0005A4                        624 00126$:
                                    625 ;	my_oled.c:57: if(!oled_command(0xC8)) return 0;
      0005A4 75 82 C8         [24]  626 	mov	dpl, #0xc8
      0005A7 12 06 EB         [24]  627 	lcall	_oled_command
      0005AA E5 82            [12]  628 	mov	a, dpl
      0005AC 70 03            [24]  629 	jnz	00128$
      0005AE F5 82            [12]  630 	mov	dpl,a
      0005B0 22               [24]  631 	ret
      0005B1                        632 00128$:
                                    633 ;	my_oled.c:58: if(!oled_command(0xDA)) return 0;
      0005B1 75 82 DA         [24]  634 	mov	dpl, #0xda
      0005B4 12 06 EB         [24]  635 	lcall	_oled_command
      0005B7 E5 82            [12]  636 	mov	a, dpl
      0005B9 70 03            [24]  637 	jnz	00130$
      0005BB F5 82            [12]  638 	mov	dpl,a
      0005BD 22               [24]  639 	ret
      0005BE                        640 00130$:
                                    641 ;	my_oled.c:59: if(!oled_command(0x12)) return 0;
      0005BE 75 82 12         [24]  642 	mov	dpl, #0x12
      0005C1 12 06 EB         [24]  643 	lcall	_oled_command
      0005C4 E5 82            [12]  644 	mov	a, dpl
      0005C6 70 03            [24]  645 	jnz	00132$
      0005C8 F5 82            [12]  646 	mov	dpl,a
      0005CA 22               [24]  647 	ret
      0005CB                        648 00132$:
                                    649 ;	my_oled.c:60: if(!oled_command(0x81)) return 0;
      0005CB 75 82 81         [24]  650 	mov	dpl, #0x81
      0005CE 12 06 EB         [24]  651 	lcall	_oled_command
      0005D1 E5 82            [12]  652 	mov	a, dpl
      0005D3 70 03            [24]  653 	jnz	00134$
      0005D5 F5 82            [12]  654 	mov	dpl,a
      0005D7 22               [24]  655 	ret
      0005D8                        656 00134$:
                                    657 ;	my_oled.c:61: if(!oled_command(0x7F)) return 0;
      0005D8 75 82 7F         [24]  658 	mov	dpl, #0x7f
      0005DB 12 06 EB         [24]  659 	lcall	_oled_command
      0005DE E5 82            [12]  660 	mov	a, dpl
      0005E0 70 03            [24]  661 	jnz	00136$
      0005E2 F5 82            [12]  662 	mov	dpl,a
      0005E4 22               [24]  663 	ret
      0005E5                        664 00136$:
                                    665 ;	my_oled.c:62: if(!oled_command(0xD9)) return 0;
      0005E5 75 82 D9         [24]  666 	mov	dpl, #0xd9
      0005E8 12 06 EB         [24]  667 	lcall	_oled_command
      0005EB E5 82            [12]  668 	mov	a, dpl
      0005ED 70 03            [24]  669 	jnz	00138$
      0005EF F5 82            [12]  670 	mov	dpl,a
      0005F1 22               [24]  671 	ret
      0005F2                        672 00138$:
                                    673 ;	my_oled.c:63: if(!oled_command(0xF1)) return 0;
      0005F2 75 82 F1         [24]  674 	mov	dpl, #0xf1
      0005F5 12 06 EB         [24]  675 	lcall	_oled_command
      0005F8 E5 82            [12]  676 	mov	a, dpl
      0005FA 70 03            [24]  677 	jnz	00140$
      0005FC F5 82            [12]  678 	mov	dpl,a
      0005FE 22               [24]  679 	ret
      0005FF                        680 00140$:
                                    681 ;	my_oled.c:64: if(!oled_command(0xDB)) return 0;
      0005FF 75 82 DB         [24]  682 	mov	dpl, #0xdb
      000602 12 06 EB         [24]  683 	lcall	_oled_command
      000605 E5 82            [12]  684 	mov	a, dpl
      000607 70 03            [24]  685 	jnz	00142$
      000609 F5 82            [12]  686 	mov	dpl,a
      00060B 22               [24]  687 	ret
      00060C                        688 00142$:
                                    689 ;	my_oled.c:65: if(!oled_command(0x40)) return 0;
      00060C 75 82 40         [24]  690 	mov	dpl, #0x40
      00060F 12 06 EB         [24]  691 	lcall	_oled_command
      000612 E5 82            [12]  692 	mov	a, dpl
      000614 70 03            [24]  693 	jnz	00144$
      000616 F5 82            [12]  694 	mov	dpl,a
      000618 22               [24]  695 	ret
      000619                        696 00144$:
                                    697 ;	my_oled.c:66: if(!oled_command(0xA4)) return 0;
      000619 75 82 A4         [24]  698 	mov	dpl, #0xa4
      00061C 12 06 EB         [24]  699 	lcall	_oled_command
      00061F E5 82            [12]  700 	mov	a, dpl
      000621 70 03            [24]  701 	jnz	00146$
      000623 F5 82            [12]  702 	mov	dpl,a
      000625 22               [24]  703 	ret
      000626                        704 00146$:
                                    705 ;	my_oled.c:67: if(!oled_command(0xA6)) return 0;
      000626 75 82 A6         [24]  706 	mov	dpl, #0xa6
      000629 12 06 EB         [24]  707 	lcall	_oled_command
      00062C E5 82            [12]  708 	mov	a, dpl
      00062E 70 03            [24]  709 	jnz	00148$
      000630 F5 82            [12]  710 	mov	dpl,a
      000632 22               [24]  711 	ret
      000633                        712 00148$:
                                    713 ;	my_oled.c:72: data[0] = 0x40;
      000633 75 3A 40         [24]  714 	mov	_init_oled_data_10000_11,#0x40
                                    715 ;	my_oled.c:74: for(i = 1; i < 32; i++)
      000636 7F 01            [12]  716 	mov	r7,#0x01
      000638                        717 00166$:
                                    718 ;	my_oled.c:75: data[i] = 0x00;
      000638 EF               [12]  719 	mov	a,r7
      000639 24 3A            [12]  720 	add	a, #_init_oled_data_10000_11
      00063B F8               [12]  721 	mov	r0,a
      00063C 76 00            [12]  722 	mov	@r0,#0x00
                                    723 ;	my_oled.c:74: for(i = 1; i < 32; i++)
      00063E 0F               [12]  724 	inc	r7
      00063F BF 20 00         [24]  725 	cjne	r7,#0x20,00448$
      000642                        726 00448$:
      000642 40 F4            [24]  727 	jc	00166$
                                    728 ;	my_oled.c:77: for(page = 0; page < 8; page++){
      000644 7F 00            [12]  729 	mov	r7,#0x00
      000646                        730 00168$:
                                    731 ;	my_oled.c:78: column = 0;
      000646 7E 00            [12]  732 	mov	r6,#0x00
                                    733 ;	my_oled.c:80: while(column < 128){
      000648                        734 00160$:
      000648 BE 80 00         [24]  735 	cjne	r6,#0x80,00450$
      00064B                        736 00450$:
      00064B 40 03            [24]  737 	jc	00451$
      00064D 02 06 D1         [24]  738 	ljmp	00169$
      000650                        739 00451$:
                                    740 ;	my_oled.c:82: if(!oled_command(0xB0 + page)) return 0;
      000650 8F 05            [24]  741 	mov	ar5,r7
      000652 74 B0            [12]  742 	mov	a,#0xb0
      000654 2D               [12]  743 	add	a, r5
      000655 F5 82            [12]  744 	mov	dpl,a
      000657 C0 07            [24]  745 	push	ar7
      000659 C0 06            [24]  746 	push	ar6
      00065B 12 06 EB         [24]  747 	lcall	_oled_command
      00065E E5 82            [12]  748 	mov	a, dpl
      000660 D0 06            [24]  749 	pop	ar6
      000662 D0 07            [24]  750 	pop	ar7
      000664 70 03            [24]  751 	jnz	00151$
      000666 F5 82            [12]  752 	mov	dpl,a
      000668 22               [24]  753 	ret
      000669                        754 00151$:
                                    755 ;	my_oled.c:83: if(!oled_command(column & 0x0F)) return 0;
      000669 74 0F            [12]  756 	mov	a,#0x0f
      00066B 5E               [12]  757 	anl	a,r6
      00066C F5 82            [12]  758 	mov	dpl,a
      00066E C0 07            [24]  759 	push	ar7
      000670 C0 06            [24]  760 	push	ar6
      000672 12 06 EB         [24]  761 	lcall	_oled_command
      000675 E5 82            [12]  762 	mov	a, dpl
      000677 D0 06            [24]  763 	pop	ar6
      000679 D0 07            [24]  764 	pop	ar7
      00067B 70 03            [24]  765 	jnz	00153$
      00067D F5 82            [12]  766 	mov	dpl,a
      00067F 22               [24]  767 	ret
      000680                        768 00153$:
                                    769 ;	my_oled.c:84: if(!oled_command(0x10 | (column >> 4))) return 0;
      000680 EE               [12]  770 	mov	a,r6
      000681 C4               [12]  771 	swap	a
      000682 54 0F            [12]  772 	anl	a,#0x0f
      000684 FD               [12]  773 	mov	r5,a
      000685 74 10            [12]  774 	mov	a,#0x10
      000687 4D               [12]  775 	orl	a,r5
      000688 F5 82            [12]  776 	mov	dpl,a
      00068A C0 07            [24]  777 	push	ar7
      00068C C0 06            [24]  778 	push	ar6
      00068E 12 06 EB         [24]  779 	lcall	_oled_command
      000691 E5 82            [12]  780 	mov	a, dpl
      000693 D0 06            [24]  781 	pop	ar6
      000695 D0 07            [24]  782 	pop	ar7
      000697 70 03            [24]  783 	jnz	00155$
      000699 F5 82            [12]  784 	mov	dpl,a
      00069B 22               [24]  785 	ret
      00069C                        786 00155$:
                                    787 ;	my_oled.c:86: count = 128 - column;
      00069C 8E 05            [24]  788 	mov	ar5,r6
      00069E 74 80            [12]  789 	mov	a,#0x80
      0006A0 C3               [12]  790 	clr	c
      0006A1 9D               [12]  791 	subb	a,r5
                                    792 ;	my_oled.c:88: if(count > 31)
      0006A2 FD               [12]  793 	mov  r5,a
      0006A3 24 E0            [12]  794 	add	a,#0xff - 0x1f
      0006A5 50 02            [24]  795 	jnc	00157$
                                    796 ;	free result
                                    797 ;	my_oled.c:89: count = 31;
      0006A7 7D 1F            [12]  798 	mov	r5,#0x1f
      0006A9                        799 00157$:
                                    800 ;	my_oled.c:91: if(!i2c_write(data, count + 1)) return 0;
      0006A9 8D 04            [24]  801 	mov	ar4,r5
      0006AB EC               [12]  802 	mov	a,r4
      0006AC 04               [12]  803 	inc	a
      0006AD F5 36            [12]  804 	mov	_i2c_write_PARM_2,a
      0006AF 90 00 3A         [24]  805 	mov	dptr,#_init_oled_data_10000_11
      0006B2 75 F0 40         [24]  806 	mov	b, #0x40
      0006B5 C0 07            [24]  807 	push	ar7
      0006B7 C0 06            [24]  808 	push	ar6
      0006B9 C0 05            [24]  809 	push	ar5
      0006BB 12 03 83         [24]  810 	lcall	_i2c_write
      0006BE E5 82            [12]  811 	mov	a, dpl
      0006C0 D0 05            [24]  812 	pop	ar5
      0006C2 D0 06            [24]  813 	pop	ar6
      0006C4 D0 07            [24]  814 	pop	ar7
      0006C6 70 03            [24]  815 	jnz	00159$
      0006C8 F5 82            [12]  816 	mov	dpl,a
      0006CA 22               [24]  817 	ret
      0006CB                        818 00159$:
                                    819 ;	my_oled.c:93: column += count;
      0006CB ED               [12]  820 	mov	a,r5
      0006CC 2E               [12]  821 	add	a, r6
      0006CD FE               [12]  822 	mov	r6,a
      0006CE 02 06 48         [24]  823 	ljmp	00160$
      0006D1                        824 00169$:
                                    825 ;	my_oled.c:77: for(page = 0; page < 8; page++){
      0006D1 0F               [12]  826 	inc	r7
      0006D2 BF 08 00         [24]  827 	cjne	r7,#0x08,00457$
      0006D5                        828 00457$:
      0006D5 50 03            [24]  829 	jnc	00458$
      0006D7 02 06 46         [24]  830 	ljmp	00168$
      0006DA                        831 00458$:
                                    832 ;	my_oled.c:97: if(!oled_command(0xAF)) return 0;
      0006DA 75 82 AF         [24]  833 	mov	dpl, #0xaf
      0006DD 12 06 EB         [24]  834 	lcall	_oled_command
      0006E0 E5 82            [12]  835 	mov	a, dpl
      0006E2 70 03            [24]  836 	jnz	00165$
      0006E4 F5 82            [12]  837 	mov	dpl,a
      0006E6 22               [24]  838 	ret
      0006E7                        839 00165$:
                                    840 ;	my_oled.c:99: return 1;
      0006E7 75 82 01         [24]  841 	mov	dpl, #0x01
                                    842 ;	my_oled.c:100: }
      0006EA 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'oled_command'
                                    846 ;------------------------------------------------------------
                                    847 ;command       Allocated to registers r7 
                                    848 ;data          Allocated with name '_oled_command_data_10000_47'
                                    849 ;------------------------------------------------------------
                                    850 ;	my_oled.c:102: unsigned char oled_command(unsigned char command){
                                    851 ;	-----------------------------------------
                                    852 ;	 function oled_command
                                    853 ;	-----------------------------------------
      0006EB                        854 _oled_command:
      0006EB AF 82            [24]  855 	mov	r7, dpl
                                    856 ;	my_oled.c:106: data[0] = 0x00;
      0006ED 75 5A 00         [24]  857 	mov	_oled_command_data_10000_47,#0x00
                                    858 ;	my_oled.c:107: data[1] = command;
      0006F0 8F 5B            [24]  859 	mov	(_oled_command_data_10000_47 + 0x0001),r7
                                    860 ;	my_oled.c:109: return i2c_write(data, 2);
      0006F2 75 36 02         [24]  861 	mov	_i2c_write_PARM_2,#0x02
      0006F5 90 00 5A         [24]  862 	mov	dptr,#_oled_command_data_10000_47
      0006F8 75 F0 40         [24]  863 	mov	b, #0x40
                                    864 ;	my_oled.c:110: }
      0006FB 02 03 83         [24]  865 	ljmp	_i2c_write
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'oled_write_char'
                                    868 ;------------------------------------------------------------
                                    869 ;character     Allocated to registers r7 
                                    870 ;data          Allocated with name '_oled_write_char_data_10000_49'
                                    871 ;i             Allocated to registers r6 
                                    872 ;index         Allocated to registers r7 
                                    873 ;------------------------------------------------------------
                                    874 ;	my_oled.c:112: void oled_write_char(unsigned char character){
                                    875 ;	-----------------------------------------
                                    876 ;	 function oled_write_char
                                    877 ;	-----------------------------------------
      0006FE                        878 _oled_write_char:
      0006FE AF 82            [24]  879 	mov	r7, dpl
                                    880 ;	my_oled.c:118: if(character >= 'A' && character <= 'Z'){
      000700 BF 41 00         [24]  881 	cjne	r7,#0x41,00161$
      000703                        882 00161$:
      000703 40 0B            [24]  883 	jc	00103$
      000705 EF               [12]  884 	mov	a,r7
      000706 24 A5            [12]  885 	add	a,#0xff - 0x5a
      000708 40 06            [24]  886 	jc	00103$
                                    887 ;	free result
                                    888 ;	my_oled.c:119: index = character - 'A';
      00070A EF               [12]  889 	mov	a,r7
      00070B 24 BF            [12]  890 	add	a,#0xbf
      00070D FF               [12]  891 	mov	r7,a
      00070E 80 1D            [24]  892 	sjmp	00104$
      000710                        893 00103$:
                                    894 ;	my_oled.c:121: data[0] = 0x40;
      000710 75 5C 40         [24]  895 	mov	_oled_write_char_data_10000_49,#0x40
                                    896 ;	my_oled.c:122: for(i = 1; i < 7; i++)
      000713 7E 01            [12]  897 	mov	r6,#0x01
      000715                        898 00107$:
                                    899 ;	my_oled.c:123: data[i] = 0x00;
      000715 EE               [12]  900 	mov	a,r6
      000716 24 5C            [12]  901 	add	a, #_oled_write_char_data_10000_49
      000718 F8               [12]  902 	mov	r0,a
      000719 76 00            [12]  903 	mov	@r0,#0x00
                                    904 ;	my_oled.c:122: for(i = 1; i < 7; i++)
      00071B 0E               [12]  905 	inc	r6
      00071C BE 07 00         [24]  906 	cjne	r6,#0x07,00164$
      00071F                        907 00164$:
      00071F 40 F4            [24]  908 	jc	00107$
                                    909 ;	my_oled.c:125: i2c_write(data, 7);
      000721 75 36 07         [24]  910 	mov	_i2c_write_PARM_2,#0x07
      000724 90 00 5C         [24]  911 	mov	dptr,#_oled_write_char_data_10000_49
      000727 75 F0 40         [24]  912 	mov	b, #0x40
                                    913 ;	my_oled.c:126: return;
      00072A 02 03 83         [24]  914 	ljmp	_i2c_write
      00072D                        915 00104$:
                                    916 ;	my_oled.c:129: data[0] = 0x40;
      00072D 75 5C 40         [24]  917 	mov	_oled_write_char_data_10000_49,#0x40
                                    918 ;	my_oled.c:131: for(i = 0; i < 5; i++)
      000730 7E 00            [12]  919 	mov	r6,#0x00
      000732 EF               [12]  920 	mov	a,r7
      000733 75 F0 05         [24]  921 	mov	b,#0x05
      000736 A4               [48]  922 	mul	ab
      000737 24 EC            [12]  923 	add	a, #_font5x7
      000739 FD               [12]  924 	mov	r5,a
      00073A 74 07            [12]  925 	mov	a,#(_font5x7 >> 8)
      00073C 35 F0            [12]  926 	addc	a, b
      00073E FF               [12]  927 	mov	r7,a
      00073F                        928 00109$:
                                    929 ;	my_oled.c:132: data[i + 1] = font5x7[index][i];
      00073F 8E 04            [24]  930 	mov	ar4,r6
      000741 EC               [12]  931 	mov	a,r4
      000742 04               [12]  932 	inc	a
      000743 24 5C            [12]  933 	add	a, #_oled_write_char_data_10000_49
      000745 F9               [12]  934 	mov	r1,a
      000746 EE               [12]  935 	mov	a,r6
      000747 2D               [12]  936 	add	a, r5
      000748 F5 82            [12]  937 	mov	dpl,a
      00074A E4               [12]  938 	clr	a
      00074B 3F               [12]  939 	addc	a, r7
      00074C F5 83            [12]  940 	mov	dph,a
      00074E E4               [12]  941 	clr	a
      00074F 93               [24]  942 	movc	a,@a+dptr
      000750 F7               [12]  943 	mov	@r1,a
                                    944 ;	my_oled.c:131: for(i = 0; i < 5; i++)
      000751 0E               [12]  945 	inc	r6
      000752 BE 05 00         [24]  946 	cjne	r6,#0x05,00166$
      000755                        947 00166$:
      000755 40 E8            [24]  948 	jc	00109$
                                    949 ;	my_oled.c:134: data[6] = 0x00;
      000757 75 62 00         [24]  950 	mov	(_oled_write_char_data_10000_49 + 0x0006),#0x00
                                    951 ;	my_oled.c:136: i2c_write(data, 7);
      00075A 75 36 07         [24]  952 	mov	_i2c_write_PARM_2,#0x07
      00075D 90 00 5C         [24]  953 	mov	dptr,#_oled_write_char_data_10000_49
      000760 75 F0 40         [24]  954 	mov	b, #0x40
                                    955 ;	my_oled.c:137: }
      000763 02 03 83         [24]  956 	ljmp	_i2c_write
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'oled_write_string'
                                    959 ;------------------------------------------------------------
                                    960 ;text          Allocated to registers r5 r6 r7 
                                    961 ;column        Allocated to registers r4 
                                    962 ;------------------------------------------------------------
                                    963 ;	my_oled.c:139: void oled_write_string(const char *text){
                                    964 ;	-----------------------------------------
                                    965 ;	 function oled_write_string
                                    966 ;	-----------------------------------------
      000766                        967 _oled_write_string:
      000766 AD 82            [24]  968 	mov	r5, dpl
      000768 AE 83            [24]  969 	mov	r6, dph
      00076A AF F0            [24]  970 	mov	r7, b
                                    971 ;	my_oled.c:143: oled_command(0xB0);
      00076C 75 82 B0         [24]  972 	mov	dpl, #0xb0
      00076F C0 07            [24]  973 	push	ar7
      000771 C0 06            [24]  974 	push	ar6
      000773 C0 05            [24]  975 	push	ar5
      000775 12 06 EB         [24]  976 	lcall	_oled_command
                                    977 ;	my_oled.c:144: oled_command(0x00);
      000778 75 82 00         [24]  978 	mov	dpl, #0x00
      00077B 12 06 EB         [24]  979 	lcall	_oled_command
                                    980 ;	my_oled.c:145: oled_command(0x10);
      00077E 75 82 10         [24]  981 	mov	dpl, #0x10
      000781 12 06 EB         [24]  982 	lcall	_oled_command
      000784 D0 05            [24]  983 	pop	ar5
      000786 D0 06            [24]  984 	pop	ar6
      000788 D0 07            [24]  985 	pop	ar7
                                    986 ;	my_oled.c:147: column = 0;
      00078A 7C 00            [12]  987 	mov	r4,#0x00
                                    988 ;	my_oled.c:149: while(*text && column <= 122){
      00078C                        989 00102$:
      00078C 8D 82            [24]  990 	mov	dpl,r5
      00078E 8E 83            [24]  991 	mov	dph,r6
      000790 8F F0            [24]  992 	mov	b,r7
      000792 12 07 C0         [24]  993 	lcall	__gptrget
      000795 FB               [12]  994 	mov	r3,a
      000796 60 27            [24]  995 	jz	00105$
      000798 EC               [12]  996 	mov	a,r4
      000799 24 85            [12]  997 	add	a,#0xff - 0x7a
      00079B 40 22            [24]  998 	jc	00105$
                                    999 ;	free result
                                   1000 ;	my_oled.c:150: oled_write_char((unsigned char)*text++);
      00079D 8B 82            [24] 1001 	mov	dpl,r3
      00079F 0D               [12] 1002 	inc	r5
      0007A0 BD 00 01         [24] 1003 	cjne	r5,#0x00,00130$
      0007A3 0E               [12] 1004 	inc	r6
      0007A4                       1005 00130$:
      0007A4 C0 07            [24] 1006 	push	ar7
      0007A6 C0 06            [24] 1007 	push	ar6
      0007A8 C0 05            [24] 1008 	push	ar5
      0007AA C0 04            [24] 1009 	push	ar4
      0007AC 12 06 FE         [24] 1010 	lcall	_oled_write_char
      0007AF D0 04            [24] 1011 	pop	ar4
      0007B1 D0 05            [24] 1012 	pop	ar5
      0007B3 D0 06            [24] 1013 	pop	ar6
      0007B5 D0 07            [24] 1014 	pop	ar7
                                   1015 ;	my_oled.c:151: column += 6;
      0007B7 8C 03            [24] 1016 	mov	ar3,r4
      0007B9 74 06            [12] 1017 	mov	a,#0x06
      0007BB 2B               [12] 1018 	add	a, r3
      0007BC FC               [12] 1019 	mov	r4,a
      0007BD 80 CD            [24] 1020 	sjmp	00102$
      0007BF                       1021 00105$:
                                   1022 ;	my_oled.c:153: }
      0007BF 22               [24] 1023 	ret
                                   1024 	.area CSEG    (CODE)
                                   1025 	.area CONST   (CODE)
                                   1026 	.area CONST   (CODE)
      0007EC                       1027 _font5x7:
      0007EC 7E                    1028 	.db #0x7e	; 126
      0007ED 11                    1029 	.db #0x11	; 17
      0007EE 11                    1030 	.db #0x11	; 17
      0007EF 11                    1031 	.db #0x11	; 17
      0007F0 7E                    1032 	.db #0x7e	; 126
      0007F1 7F                    1033 	.db #0x7f	; 127
      0007F2 49                    1034 	.db #0x49	; 73	'I'
      0007F3 49                    1035 	.db #0x49	; 73	'I'
      0007F4 49                    1036 	.db #0x49	; 73	'I'
      0007F5 36                    1037 	.db #0x36	; 54	'6'
      0007F6 7F                    1038 	.db #0x7f	; 127
      0007F7 09                    1039 	.db #0x09	; 9
      0007F8 19                    1040 	.db #0x19	; 25
      0007F9 29                    1041 	.db #0x29	; 41
      0007FA 46                    1042 	.db #0x46	; 70	'F'
      0007FB 3E                    1043 	.db #0x3e	; 62
      0007FC 41                    1044 	.db #0x41	; 65	'A'
      0007FD 41                    1045 	.db #0x41	; 65	'A'
      0007FE 41                    1046 	.db #0x41	; 65	'A'
      0007FF 22                    1047 	.db #0x22	; 34
      000800 7F                    1048 	.db #0x7f	; 127
      000801 41                    1049 	.db #0x41	; 65	'A'
      000802 41                    1050 	.db #0x41	; 65	'A'
      000803 22                    1051 	.db #0x22	; 34
      000804 1C                    1052 	.db #0x1c	; 28
      000805 7F                    1053 	.db #0x7f	; 127
      000806 49                    1054 	.db #0x49	; 73	'I'
      000807 49                    1055 	.db #0x49	; 73	'I'
      000808 49                    1056 	.db #0x49	; 73	'I'
      000809 41                    1057 	.db #0x41	; 65	'A'
      00080A 7F                    1058 	.db #0x7f	; 127
      00080B 09                    1059 	.db #0x09	; 9
      00080C 09                    1060 	.db #0x09	; 9
      00080D 09                    1061 	.db #0x09	; 9
      00080E 01                    1062 	.db #0x01	; 1
      00080F 3E                    1063 	.db #0x3e	; 62
      000810 41                    1064 	.db #0x41	; 65	'A'
      000811 49                    1065 	.db #0x49	; 73	'I'
      000812 49                    1066 	.db #0x49	; 73	'I'
      000813 7A                    1067 	.db #0x7a	; 122	'z'
      000814 7F                    1068 	.db #0x7f	; 127
      000815 08                    1069 	.db #0x08	; 8
      000816 08                    1070 	.db #0x08	; 8
      000817 08                    1071 	.db #0x08	; 8
      000818 7F                    1072 	.db #0x7f	; 127
      000819 00                    1073 	.db #0x00	; 0
      00081A 41                    1074 	.db #0x41	; 65	'A'
      00081B 7F                    1075 	.db #0x7f	; 127
      00081C 41                    1076 	.db #0x41	; 65	'A'
      00081D 00                    1077 	.db #0x00	; 0
      00081E 20                    1078 	.db #0x20	; 32
      00081F 40                    1079 	.db #0x40	; 64
      000820 41                    1080 	.db #0x41	; 65	'A'
      000821 3F                    1081 	.db #0x3f	; 63
      000822 01                    1082 	.db #0x01	; 1
      000823 7F                    1083 	.db #0x7f	; 127
      000824 08                    1084 	.db #0x08	; 8
      000825 14                    1085 	.db #0x14	; 20
      000826 22                    1086 	.db #0x22	; 34
      000827 41                    1087 	.db #0x41	; 65	'A'
      000828 7F                    1088 	.db #0x7f	; 127
      000829 40                    1089 	.db #0x40	; 64
      00082A 40                    1090 	.db #0x40	; 64
      00082B 40                    1091 	.db #0x40	; 64
      00082C 40                    1092 	.db #0x40	; 64
      00082D 7F                    1093 	.db #0x7f	; 127
      00082E 02                    1094 	.db #0x02	; 2
      00082F 0C                    1095 	.db #0x0c	; 12
      000830 02                    1096 	.db #0x02	; 2
      000831 7F                    1097 	.db #0x7f	; 127
      000832 7F                    1098 	.db #0x7f	; 127
      000833 04                    1099 	.db #0x04	; 4
      000834 08                    1100 	.db #0x08	; 8
      000835 10                    1101 	.db #0x10	; 16
      000836 7F                    1102 	.db #0x7f	; 127
      000837 3E                    1103 	.db #0x3e	; 62
      000838 41                    1104 	.db #0x41	; 65	'A'
      000839 41                    1105 	.db #0x41	; 65	'A'
      00083A 41                    1106 	.db #0x41	; 65	'A'
      00083B 3E                    1107 	.db #0x3e	; 62
      00083C 7F                    1108 	.db #0x7f	; 127
      00083D 09                    1109 	.db #0x09	; 9
      00083E 09                    1110 	.db #0x09	; 9
      00083F 09                    1111 	.db #0x09	; 9
      000840 06                    1112 	.db #0x06	; 6
      000841 3E                    1113 	.db #0x3e	; 62
      000842 41                    1114 	.db #0x41	; 65	'A'
      000843 51                    1115 	.db #0x51	; 81	'Q'
      000844 21                    1116 	.db #0x21	; 33
      000845 5E                    1117 	.db #0x5e	; 94
      000846 7F                    1118 	.db #0x7f	; 127
      000847 09                    1119 	.db #0x09	; 9
      000848 19                    1120 	.db #0x19	; 25
      000849 29                    1121 	.db #0x29	; 41
      00084A 46                    1122 	.db #0x46	; 70	'F'
      00084B 26                    1123 	.db #0x26	; 38
      00084C 49                    1124 	.db #0x49	; 73	'I'
      00084D 49                    1125 	.db #0x49	; 73	'I'
      00084E 49                    1126 	.db #0x49	; 73	'I'
      00084F 32                    1127 	.db #0x32	; 50	'2'
      000850 01                    1128 	.db #0x01	; 1
      000851 01                    1129 	.db #0x01	; 1
      000852 7F                    1130 	.db #0x7f	; 127
      000853 01                    1131 	.db #0x01	; 1
      000854 01                    1132 	.db #0x01	; 1
      000855 3F                    1133 	.db #0x3f	; 63
      000856 40                    1134 	.db #0x40	; 64
      000857 40                    1135 	.db #0x40	; 64
      000858 40                    1136 	.db #0x40	; 64
      000859 3F                    1137 	.db #0x3f	; 63
      00085A 1F                    1138 	.db #0x1f	; 31
      00085B 20                    1139 	.db #0x20	; 32
      00085C 40                    1140 	.db #0x40	; 64
      00085D 20                    1141 	.db #0x20	; 32
      00085E 1F                    1142 	.db #0x1f	; 31
      00085F 3F                    1143 	.db #0x3f	; 63
      000860 40                    1144 	.db #0x40	; 64
      000861 38                    1145 	.db #0x38	; 56	'8'
      000862 40                    1146 	.db #0x40	; 64
      000863 3F                    1147 	.db #0x3f	; 63
      000864 63                    1148 	.db #0x63	; 99	'c'
      000865 14                    1149 	.db #0x14	; 20
      000866 08                    1150 	.db #0x08	; 8
      000867 14                    1151 	.db #0x14	; 20
      000868 63                    1152 	.db #0x63	; 99	'c'
      000869 07                    1153 	.db #0x07	; 7
      00086A 08                    1154 	.db #0x08	; 8
      00086B 70                    1155 	.db #0x70	; 112	'p'
      00086C 08                    1156 	.db #0x08	; 8
      00086D 07                    1157 	.db #0x07	; 7
      00086E 61                    1158 	.db #0x61	; 97	'a'
      00086F 51                    1159 	.db #0x51	; 81	'Q'
      000870 49                    1160 	.db #0x49	; 73	'I'
      000871 45                    1161 	.db #0x45	; 69	'E'
      000872 43                    1162 	.db #0x43	; 67	'C'
                                   1163 	.area CSEG    (CODE)
                                   1164 	.area XINIT   (CODE)
                                   1165 	.area CABS    (ABS,CODE)
