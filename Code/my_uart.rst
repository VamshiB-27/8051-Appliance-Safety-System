                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module my_uart
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
                                    211 	.globl _uart_write_buffer_PARM_2
                                    212 	.globl _uart_init
                                    213 	.globl _uart_write_byte
                                    214 	.globl _uart_write_buffer
                                    215 	.globl _uart_write_string
                                    216 	.globl _uart_available
                                    217 	.globl _uart_read_byte
                                    218 	.globl _uart_read_byte_blocking
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
      000055                        438 _uart_write_buffer_PARM_2:
      000055                        439 	.ds 2
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable items in internal ram
                                    442 ;--------------------------------------------------------
                                    443 ;--------------------------------------------------------
                                    444 ; indirectly addressable internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area ISEG    (DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; absolute internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area IABS    (ABS,DATA)
                                    451 	.area IABS    (ABS,DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; bit data
                                    454 ;--------------------------------------------------------
                                    455 	.area BSEG    (BIT)
                                    456 ;--------------------------------------------------------
                                    457 ; paged external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area PSEG    (PAG,XDATA)
                                    460 ;--------------------------------------------------------
                                    461 ; uninitialized external ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area XSEG    (XDATA)
                                    464 ;--------------------------------------------------------
                                    465 ; absolute external ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area XABS    (ABS,XDATA)
                                    468 ;--------------------------------------------------------
                                    469 ; initialized external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area XISEG   (XDATA)
                                    472 	.area HOME    (CODE)
                                    473 	.area GSINIT0 (CODE)
                                    474 	.area GSINIT1 (CODE)
                                    475 	.area GSINIT2 (CODE)
                                    476 	.area GSINIT3 (CODE)
                                    477 	.area GSINIT4 (CODE)
                                    478 	.area GSINIT5 (CODE)
                                    479 	.area GSINIT  (CODE)
                                    480 	.area GSFINAL (CODE)
                                    481 	.area CSEG    (CODE)
                                    482 ;--------------------------------------------------------
                                    483 ; global & static initialisations
                                    484 ;--------------------------------------------------------
                                    485 	.area HOME    (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.area GSFINAL (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 ;--------------------------------------------------------
                                    490 ; Home
                                    491 ;--------------------------------------------------------
                                    492 	.area HOME    (CODE)
                                    493 	.area HOME    (CODE)
                                    494 ;--------------------------------------------------------
                                    495 ; code
                                    496 ;--------------------------------------------------------
                                    497 	.area CSEG    (CODE)
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'uart_init'
                                    500 ;------------------------------------------------------------
                                    501 ;baud          Allocated to registers r4 r5 r6 r7 
                                    502 ;divisor       Allocated to registers r4 r5 r6 r7 
                                    503 ;reload        Allocated to registers r4 
                                    504 ;------------------------------------------------------------
                                    505 ;	my_uart.c:5: uart_u8 uart_init(uart_u32 baud)
                                    506 ;	-----------------------------------------
                                    507 ;	 function uart_init
                                    508 ;	-----------------------------------------
      000943                        509 _uart_init:
                           000007   510 	ar7 = 0x07
                           000006   511 	ar6 = 0x06
                           000005   512 	ar5 = 0x05
                           000004   513 	ar4 = 0x04
                           000003   514 	ar3 = 0x03
                           000002   515 	ar2 = 0x02
                           000001   516 	ar1 = 0x01
                           000000   517 	ar0 = 0x00
      000943 AC 82            [24]  518 	mov	r4,dpl
      000945 AD 83            [24]  519 	mov	r5,dph
      000947 AE F0            [24]  520 	mov	r6,b
      000949 FF               [12]  521 	mov	r7,a
                                    522 ;	my_uart.c:10: if (baud == 0)
      00094A EC               [12]  523 	mov	a,r4
      00094B 4D               [12]  524 	orl	a,r5
      00094C 4E               [12]  525 	orl	a,r6
      00094D 4F               [12]  526 	orl	a,r7
                                    527 ;	my_uart.c:11: return 0;
      00094E 70 03            [24]  528 	jnz	00102$
      000950 F5 82            [12]  529 	mov	dpl,a
      000952 22               [24]  530 	ret
      000953                        531 00102$:
                                    532 ;	my_uart.c:13: divisor = (UART_FOSC_HZ + (96UL * baud))
      000953 8C 57            [24]  533 	mov	__mullong_PARM_2,r4
      000955 8D 58            [24]  534 	mov	(__mullong_PARM_2 + 1),r5
      000957 8E 59            [24]  535 	mov	(__mullong_PARM_2 + 2),r6
      000959 8F 5A            [24]  536 	mov	(__mullong_PARM_2 + 3),r7
      00095B 90 00 60         [24]  537 	mov	dptr,#0x0060
      00095E E4               [12]  538 	clr	a
      00095F F5 F0            [12]  539 	mov	b,a
      000961 C0 07            [24]  540 	push	ar7
      000963 C0 06            [24]  541 	push	ar6
      000965 C0 05            [24]  542 	push	ar5
      000967 C0 04            [24]  543 	push	ar4
      000969 12 0B 3B         [24]  544 	lcall	__mullong
      00096C A8 82            [24]  545 	mov	r0, dpl
      00096E A9 83            [24]  546 	mov	r1, dph
      000970 AA F0            [24]  547 	mov	r2, b
      000972 FB               [12]  548 	mov	r3, a
      000973 D0 04            [24]  549 	pop	ar4
      000975 D0 05            [24]  550 	pop	ar5
      000977 D0 06            [24]  551 	pop	ar6
      000979 D0 07            [24]  552 	pop	ar7
      00097B 74 36            [12]  553 	mov	a,#0x36
      00097D 29               [12]  554 	add	a, r1
      00097E F9               [12]  555 	mov	r1,a
      00097F 74 6E            [12]  556 	mov	a,#0x6e
      000981 3A               [12]  557 	addc	a, r2
      000982 FA               [12]  558 	mov	r2,a
      000983 74 01            [12]  559 	mov	a,#0x01
      000985 3B               [12]  560 	addc	a, r3
      000986 FB               [12]  561 	mov	r3,a
                                    562 ;	my_uart.c:14: / (192UL * baud);
      000987 8C 57            [24]  563 	mov	__mullong_PARM_2,r4
      000989 8D 58            [24]  564 	mov	(__mullong_PARM_2 + 1),r5
      00098B 8E 59            [24]  565 	mov	(__mullong_PARM_2 + 2),r6
      00098D 8F 5A            [24]  566 	mov	(__mullong_PARM_2 + 3),r7
      00098F 90 00 C0         [24]  567 	mov	dptr,#0x00c0
      000992 E4               [12]  568 	clr	a
      000993 F5 F0            [12]  569 	mov	b,a
      000995 C0 03            [24]  570 	push	ar3
      000997 C0 02            [24]  571 	push	ar2
      000999 C0 01            [24]  572 	push	ar1
      00099B C0 00            [24]  573 	push	ar0
      00099D 12 0B 3B         [24]  574 	lcall	__mullong
      0009A0 85 82 57         [24]  575 	mov	__divulong_PARM_2,dpl
      0009A3 85 83 58         [24]  576 	mov	(__divulong_PARM_2 + 1),dph
      0009A6 85 F0 59         [24]  577 	mov	(__divulong_PARM_2 + 2),b
      0009A9 F5 5A            [12]  578 	mov	(__divulong_PARM_2 + 3),a
      0009AB D0 00            [24]  579 	pop	ar0
      0009AD D0 01            [24]  580 	pop	ar1
      0009AF D0 02            [24]  581 	pop	ar2
      0009B1 D0 03            [24]  582 	pop	ar3
                                    583 ;	my_uart.c:16: if (divisor == 0 || divisor > 255UL)
      0009B3 88 82            [24]  584 	mov	dpl, r0
      0009B5 89 83            [24]  585 	mov	dph, r1
      0009B7 8A F0            [24]  586 	mov	b, r2
      0009B9 EB               [12]  587 	mov	a, r3
      0009BA 12 0A BB         [24]  588 	lcall	__divulong
      0009BD AC 82            [24]  589 	mov	r4, dpl
      0009BF AD 83            [24]  590 	mov	r5, dph
      0009C1 AE F0            [24]  591 	mov	r6, b
      0009C3 FF               [12]  592 	mov	r7, a
      0009C4 EC               [12]  593 	mov	a,r4
      0009C5 4D               [12]  594 	orl	a,r5
      0009C6 4E               [12]  595 	orl	a,r6
      0009C7 4F               [12]  596 	orl	a,r7
      0009C8 60 0C            [24]  597 	jz	00103$
      0009CA C3               [12]  598 	clr	c
      0009CB 74 FF            [12]  599 	mov	a,#0xff
      0009CD 9C               [12]  600 	subb	a,r4
      0009CE E4               [12]  601 	clr	a
      0009CF 9D               [12]  602 	subb	a,r5
      0009D0 E4               [12]  603 	clr	a
      0009D1 9E               [12]  604 	subb	a,r6
      0009D2 E4               [12]  605 	clr	a
      0009D3 9F               [12]  606 	subb	a,r7
      0009D4 50 04            [24]  607 	jnc	00104$
                                    608 ;	free result
      0009D6                        609 00103$:
                                    610 ;	my_uart.c:17: return 0;
      0009D6 75 82 00         [24]  611 	mov	dpl, #0x00
      0009D9 22               [24]  612 	ret
      0009DA                        613 00104$:
                                    614 ;	my_uart.c:19: reload = (uart_u8)(256UL - divisor);
      0009DA C3               [12]  615 	clr	c
      0009DB E4               [12]  616 	clr	a
      0009DC 9C               [12]  617 	subb	a,r4
      0009DD FC               [12]  618 	mov	r4,a
                                    619 ;	my_uart.c:21: ES = 0;
                                    620 ;	assignBit
      0009DE C2 AC            [12]  621 	clr	_ES
                                    622 ;	my_uart.c:23: TR1 = 0;
                                    623 ;	assignBit
      0009E0 C2 8E            [12]  624 	clr	_TR1
                                    625 ;	my_uart.c:24: TMOD = (TMOD & 0x0F) | 0x20;
      0009E2 E5 89            [12]  626 	mov	a,_TMOD
      0009E4 54 0F            [12]  627 	anl	a,#0x0f
      0009E6 44 20            [12]  628 	orl	a,#0x20
      0009E8 F5 89            [12]  629 	mov	_TMOD,a
                                    630 ;	my_uart.c:26: PCON |= 0x80;
      0009EA 43 87 80         [24]  631 	orl	_PCON,#0x80
                                    632 ;	my_uart.c:28: TH1 = reload;
      0009ED 8C 8D            [24]  633 	mov	_TH1,r4
                                    634 ;	my_uart.c:29: TL1 = reload;
      0009EF 8C 8B            [24]  635 	mov	_TL1,r4
                                    636 ;	my_uart.c:31: SCON = 0x50;
      0009F1 75 98 50         [24]  637 	mov	_SCON,#0x50
                                    638 ;	my_uart.c:33: TI = 0;
                                    639 ;	assignBit
      0009F4 C2 99            [12]  640 	clr	_TI
                                    641 ;	my_uart.c:34: RI = 0;
                                    642 ;	assignBit
      0009F6 C2 98            [12]  643 	clr	_RI
                                    644 ;	my_uart.c:36: TR1 = 1;
                                    645 ;	assignBit
      0009F8 D2 8E            [12]  646 	setb	_TR1
                                    647 ;	my_uart.c:38: return 1;
      0009FA 75 82 01         [24]  648 	mov	dpl, #0x01
                                    649 ;	my_uart.c:39: }
      0009FD 22               [24]  650 	ret
                                    651 ;------------------------------------------------------------
                                    652 ;Allocation info for local variables in function 'uart_write_byte'
                                    653 ;------------------------------------------------------------
                                    654 ;data          Allocated to registers 
                                    655 ;------------------------------------------------------------
                                    656 ;	my_uart.c:41: void uart_write_byte(uart_u8 data)
                                    657 ;	-----------------------------------------
                                    658 ;	 function uart_write_byte
                                    659 ;	-----------------------------------------
      0009FE                        660 _uart_write_byte:
      0009FE 85 82 99         [24]  661 	mov	_SBUF,dpl
                                    662 ;	my_uart.c:45: while (TI == 0);
      000A01                        663 00101$:
                                    664 ;	my_uart.c:47: TI = 0;
                                    665 ;	assignBit
      000A01 10 99 02         [24]  666 	jbc	_TI,00120$
      000A04 80 FB            [24]  667 	sjmp	00101$
      000A06                        668 00120$:
                                    669 ;	my_uart.c:48: }
      000A06 22               [24]  670 	ret
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'uart_write_buffer'
                                    673 ;------------------------------------------------------------
                                    674 ;length        Allocated with name '_uart_write_buffer_PARM_2'
                                    675 ;data          Allocated to registers r5 r6 r7 
                                    676 ;i             Allocated to registers r3 r4 
                                    677 ;------------------------------------------------------------
                                    678 ;	my_uart.c:50: void uart_write_buffer(const uart_u8 *data, uart_u16 length)
                                    679 ;	-----------------------------------------
                                    680 ;	 function uart_write_buffer
                                    681 ;	-----------------------------------------
      000A07                        682 _uart_write_buffer:
      000A07 AD 82            [24]  683 	mov	r5, dpl
      000A09 AE 83            [24]  684 	mov	r6, dph
      000A0B AF F0            [24]  685 	mov	r7, b
                                    686 ;	my_uart.c:54: for (i = 0; i < length; i++)
      000A0D 7B 00            [12]  687 	mov	r3,#0x00
      000A0F 7C 00            [12]  688 	mov	r4,#0x00
      000A11                        689 00103$:
      000A11 C3               [12]  690 	clr	c
      000A12 EB               [12]  691 	mov	a,r3
      000A13 95 55            [12]  692 	subb	a,_uart_write_buffer_PARM_2
      000A15 EC               [12]  693 	mov	a,r4
      000A16 95 56            [12]  694 	subb	a,(_uart_write_buffer_PARM_2 + 1)
      000A18 50 31            [24]  695 	jnc	00105$
                                    696 ;	my_uart.c:55: uart_write_byte(data[i]);
      000A1A EB               [12]  697 	mov	a,r3
      000A1B 2D               [12]  698 	add	a, r5
      000A1C F8               [12]  699 	mov	r0,a
      000A1D EC               [12]  700 	mov	a,r4
      000A1E 3E               [12]  701 	addc	a, r6
      000A1F F9               [12]  702 	mov	r1,a
      000A20 8F 02            [24]  703 	mov	ar2,r7
      000A22 88 82            [24]  704 	mov	dpl,r0
      000A24 89 83            [24]  705 	mov	dph,r1
      000A26 8A F0            [24]  706 	mov	b,r2
      000A28 12 0B A9         [24]  707 	lcall	__gptrget
      000A2B F5 82            [12]  708 	mov	dpl,a
      000A2D C0 07            [24]  709 	push	ar7
      000A2F C0 06            [24]  710 	push	ar6
      000A31 C0 05            [24]  711 	push	ar5
      000A33 C0 04            [24]  712 	push	ar4
      000A35 C0 03            [24]  713 	push	ar3
      000A37 12 09 FE         [24]  714 	lcall	_uart_write_byte
      000A3A D0 03            [24]  715 	pop	ar3
      000A3C D0 04            [24]  716 	pop	ar4
      000A3E D0 05            [24]  717 	pop	ar5
      000A40 D0 06            [24]  718 	pop	ar6
      000A42 D0 07            [24]  719 	pop	ar7
                                    720 ;	my_uart.c:54: for (i = 0; i < length; i++)
      000A44 0B               [12]  721 	inc	r3
      000A45 BB 00 C9         [24]  722 	cjne	r3,#0x00,00103$
      000A48 0C               [12]  723 	inc	r4
      000A49 80 C6            [24]  724 	sjmp	00103$
      000A4B                        725 00105$:
                                    726 ;	my_uart.c:56: }
      000A4B 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'uart_write_string'
                                    730 ;------------------------------------------------------------
                                    731 ;str           Allocated to registers r5 r6 r7 
                                    732 ;------------------------------------------------------------
                                    733 ;	my_uart.c:58: void uart_write_string(const char *str)
                                    734 ;	-----------------------------------------
                                    735 ;	 function uart_write_string
                                    736 ;	-----------------------------------------
      000A4C                        737 _uart_write_string:
      000A4C AD 82            [24]  738 	mov	r5, dpl
      000A4E AE 83            [24]  739 	mov	r6, dph
      000A50 AF F0            [24]  740 	mov	r7, b
                                    741 ;	my_uart.c:60: while (*str != '\0')
      000A52                        742 00101$:
      000A52 8D 82            [24]  743 	mov	dpl,r5
      000A54 8E 83            [24]  744 	mov	dph,r6
      000A56 8F F0            [24]  745 	mov	b,r7
      000A58 12 0B A9         [24]  746 	lcall	__gptrget
      000A5B FC               [12]  747 	mov	r4,a
      000A5C 60 18            [24]  748 	jz	00104$
                                    749 ;	my_uart.c:62: uart_write_byte((uart_u8)*str);
      000A5E 8C 82            [24]  750 	mov	dpl, r4
      000A60 C0 07            [24]  751 	push	ar7
      000A62 C0 06            [24]  752 	push	ar6
      000A64 C0 05            [24]  753 	push	ar5
      000A66 12 09 FE         [24]  754 	lcall	_uart_write_byte
      000A69 D0 05            [24]  755 	pop	ar5
      000A6B D0 06            [24]  756 	pop	ar6
      000A6D D0 07            [24]  757 	pop	ar7
                                    758 ;	my_uart.c:63: str++;
      000A6F 0D               [12]  759 	inc	r5
      000A70 BD 00 DF         [24]  760 	cjne	r5,#0x00,00101$
      000A73 0E               [12]  761 	inc	r6
      000A74 80 DC            [24]  762 	sjmp	00101$
      000A76                        763 00104$:
                                    764 ;	my_uart.c:65: }
      000A76 22               [24]  765 	ret
                                    766 ;------------------------------------------------------------
                                    767 ;Allocation info for local variables in function 'uart_available'
                                    768 ;------------------------------------------------------------
                                    769 ;	my_uart.c:67: uart_u8 uart_available(void)
                                    770 ;	-----------------------------------------
                                    771 ;	 function uart_available
                                    772 ;	-----------------------------------------
      000A77                        773 _uart_available:
                                    774 ;	my_uart.c:69: return RI ? 1 : 0;
      000A77 30 98 04         [24]  775 	jnb	_RI,00103$
      000A7A 7F 01            [12]  776 	mov	r7,#0x01
      000A7C 80 02            [24]  777 	sjmp	00104$
      000A7E                        778 00103$:
      000A7E 7F 00            [12]  779 	mov	r7,#0x00
      000A80                        780 00104$:
      000A80 8F 82            [24]  781 	mov	dpl,r7
                                    782 ;	my_uart.c:70: }
      000A82 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'uart_read_byte'
                                    786 ;------------------------------------------------------------
                                    787 ;data          Allocated to registers r5 r6 r7 
                                    788 ;------------------------------------------------------------
                                    789 ;	my_uart.c:72: uart_u8 uart_read_byte(uart_u8 *data)
                                    790 ;	-----------------------------------------
                                    791 ;	 function uart_read_byte
                                    792 ;	-----------------------------------------
      000A83                        793 _uart_read_byte:
      000A83 AD 82            [24]  794 	mov	r5, dpl
      000A85 AE 83            [24]  795 	mov	r6, dph
      000A87 AF F0            [24]  796 	mov	r7, b
                                    797 ;	my_uart.c:74: if (RI == 0)
      000A89 20 98 04         [24]  798 	jb	_RI,00102$
                                    799 ;	my_uart.c:75: return 0;
      000A8C 75 82 00         [24]  800 	mov	dpl, #0x00
      000A8F 22               [24]  801 	ret
      000A90                        802 00102$:
                                    803 ;	my_uart.c:77: *data = SBUF;
      000A90 8D 82            [24]  804 	mov	dpl,r5
      000A92 8E 83            [24]  805 	mov	dph,r6
      000A94 8F F0            [24]  806 	mov	b,r7
      000A96 E5 99            [12]  807 	mov	a,_SBUF
      000A98 12 0B 20         [24]  808 	lcall	__gptrput
                                    809 ;	my_uart.c:78: RI = 0;
                                    810 ;	assignBit
      000A9B C2 98            [12]  811 	clr	_RI
                                    812 ;	my_uart.c:80: return 1;
      000A9D 75 82 01         [24]  813 	mov	dpl, #0x01
                                    814 ;	my_uart.c:81: }
      000AA0 22               [24]  815 	ret
                                    816 ;------------------------------------------------------------
                                    817 ;Allocation info for local variables in function 'uart_read_byte_blocking'
                                    818 ;------------------------------------------------------------
                                    819 ;data          Allocated to registers r5 r6 r7 
                                    820 ;------------------------------------------------------------
                                    821 ;	my_uart.c:83: uart_u8 uart_read_byte_blocking(uart_u8 *data)
                                    822 ;	-----------------------------------------
                                    823 ;	 function uart_read_byte_blocking
                                    824 ;	-----------------------------------------
      000AA1                        825 _uart_read_byte_blocking:
      000AA1 AD 82            [24]  826 	mov	r5, dpl
      000AA3 AE 83            [24]  827 	mov	r6, dph
      000AA5 AF F0            [24]  828 	mov	r7, b
                                    829 ;	my_uart.c:85: while (RI == 0);
      000AA7                        830 00101$:
      000AA7 30 98 FD         [24]  831 	jnb	_RI,00101$
                                    832 ;	my_uart.c:87: *data = SBUF;
      000AAA 8D 82            [24]  833 	mov	dpl,r5
      000AAC 8E 83            [24]  834 	mov	dph,r6
      000AAE 8F F0            [24]  835 	mov	b,r7
      000AB0 E5 99            [12]  836 	mov	a,_SBUF
      000AB2 12 0B 20         [24]  837 	lcall	__gptrput
                                    838 ;	my_uart.c:88: RI = 0;
                                    839 ;	assignBit
      000AB5 C2 98            [12]  840 	clr	_RI
                                    841 ;	my_uart.c:90: return 1;
      000AB7 75 82 01         [24]  842 	mov	dpl, #0x01
                                    843 ;	my_uart.c:91: }
      000ABA 22               [24]  844 	ret
                                    845 	.area CSEG    (CODE)
                                    846 	.area CONST   (CODE)
                                    847 	.area XINIT   (CODE)
                                    848 	.area CABS    (ABS,CODE)
