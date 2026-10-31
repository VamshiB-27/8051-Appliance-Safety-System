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
      000075                        438 _uart_write_buffer_PARM_2:
      000075                        439 	.ds 2
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable items in internal ram
                                    442 ;--------------------------------------------------------
                                    443 	.area	OSEG    (OVR,DATA)
                                    444 	.area	OSEG    (OVR,DATA)
                                    445 	.area	OSEG    (OVR,DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; indirectly addressable internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area ISEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; absolute internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area IABS    (ABS,DATA)
                                    454 	.area IABS    (ABS,DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; bit data
                                    457 ;--------------------------------------------------------
                                    458 	.area BSEG    (BIT)
                                    459 ;--------------------------------------------------------
                                    460 ; paged external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area PSEG    (PAG,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; uninitialized external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XSEG    (XDATA)
                                    467 ;--------------------------------------------------------
                                    468 ; absolute external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area XABS    (ABS,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; initialized external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XISEG   (XDATA)
                                    475 	.area HOME    (CODE)
                                    476 	.area GSINIT0 (CODE)
                                    477 	.area GSINIT1 (CODE)
                                    478 	.area GSINIT2 (CODE)
                                    479 	.area GSINIT3 (CODE)
                                    480 	.area GSINIT4 (CODE)
                                    481 	.area GSINIT5 (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.area GSFINAL (CODE)
                                    484 	.area CSEG    (CODE)
                                    485 ;--------------------------------------------------------
                                    486 ; global & static initialisations
                                    487 ;--------------------------------------------------------
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT  (CODE)
                                    490 	.area GSFINAL (CODE)
                                    491 	.area GSINIT  (CODE)
                                    492 ;--------------------------------------------------------
                                    493 ; Home
                                    494 ;--------------------------------------------------------
                                    495 	.area HOME    (CODE)
                                    496 	.area HOME    (CODE)
                                    497 ;--------------------------------------------------------
                                    498 ; code
                                    499 ;--------------------------------------------------------
                                    500 	.area CSEG    (CODE)
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'uart_init'
                                    503 ;------------------------------------------------------------
                                    504 ;baud          Allocated to registers r4 r5 r6 r7 
                                    505 ;divisor       Allocated to registers r4 r5 r6 r7 
                                    506 ;reload        Allocated to registers r4 
                                    507 ;------------------------------------------------------------
                                    508 ;	my_uart.c:5: uart_u8 uart_init(uart_u32 baud)
                                    509 ;	-----------------------------------------
                                    510 ;	 function uart_init
                                    511 ;	-----------------------------------------
      000DBA                        512 _uart_init:
                           000007   513 	ar7 = 0x07
                           000006   514 	ar6 = 0x06
                           000005   515 	ar5 = 0x05
                           000004   516 	ar4 = 0x04
                           000003   517 	ar3 = 0x03
                           000002   518 	ar2 = 0x02
                           000001   519 	ar1 = 0x01
                           000000   520 	ar0 = 0x00
      000DBA AC 82            [24]  521 	mov	r4,dpl
      000DBC AD 83            [24]  522 	mov	r5,dph
      000DBE AE F0            [24]  523 	mov	r6,b
      000DC0 FF               [12]  524 	mov	r7,a
                                    525 ;	my_uart.c:10: if (baud == 0)
      000DC1 EC               [12]  526 	mov	a,r4
      000DC2 4D               [12]  527 	orl	a,r5
      000DC3 4E               [12]  528 	orl	a,r6
      000DC4 4F               [12]  529 	orl	a,r7
                                    530 ;	my_uart.c:11: return 0;
      000DC5 70 03            [24]  531 	jnz	00102$
      000DC7 F5 82            [12]  532 	mov	dpl,a
      000DC9 22               [24]  533 	ret
      000DCA                        534 00102$:
                                    535 ;	my_uart.c:13: divisor = (UART_FOSC_HZ + (96UL * baud))
      000DCA 8C 77            [24]  536 	mov	__mullong_PARM_2,r4
      000DCC 8D 78            [24]  537 	mov	(__mullong_PARM_2 + 1),r5
      000DCE 8E 79            [24]  538 	mov	(__mullong_PARM_2 + 2),r6
      000DD0 8F 7A            [24]  539 	mov	(__mullong_PARM_2 + 3),r7
      000DD2 90 00 60         [24]  540 	mov	dptr,#0x0060
      000DD5 E4               [12]  541 	clr	a
      000DD6 F5 F0            [12]  542 	mov	b,a
      000DD8 C0 07            [24]  543 	push	ar7
      000DDA C0 06            [24]  544 	push	ar6
      000DDC C0 05            [24]  545 	push	ar5
      000DDE C0 04            [24]  546 	push	ar4
      000DE0 12 0F B2         [24]  547 	lcall	__mullong
      000DE3 A8 82            [24]  548 	mov	r0, dpl
      000DE5 A9 83            [24]  549 	mov	r1, dph
      000DE7 AA F0            [24]  550 	mov	r2, b
      000DE9 FB               [12]  551 	mov	r3, a
      000DEA D0 04            [24]  552 	pop	ar4
      000DEC D0 05            [24]  553 	pop	ar5
      000DEE D0 06            [24]  554 	pop	ar6
      000DF0 D0 07            [24]  555 	pop	ar7
      000DF2 74 36            [12]  556 	mov	a,#0x36
      000DF4 29               [12]  557 	add	a, r1
      000DF5 F9               [12]  558 	mov	r1,a
      000DF6 74 6E            [12]  559 	mov	a,#0x6e
      000DF8 3A               [12]  560 	addc	a, r2
      000DF9 FA               [12]  561 	mov	r2,a
      000DFA 74 01            [12]  562 	mov	a,#0x01
      000DFC 3B               [12]  563 	addc	a, r3
      000DFD FB               [12]  564 	mov	r3,a
                                    565 ;	my_uart.c:14: / (192UL * baud);
      000DFE 8C 77            [24]  566 	mov	__mullong_PARM_2,r4
      000E00 8D 78            [24]  567 	mov	(__mullong_PARM_2 + 1),r5
      000E02 8E 79            [24]  568 	mov	(__mullong_PARM_2 + 2),r6
      000E04 8F 7A            [24]  569 	mov	(__mullong_PARM_2 + 3),r7
      000E06 90 00 C0         [24]  570 	mov	dptr,#0x00c0
      000E09 E4               [12]  571 	clr	a
      000E0A F5 F0            [12]  572 	mov	b,a
      000E0C C0 03            [24]  573 	push	ar3
      000E0E C0 02            [24]  574 	push	ar2
      000E10 C0 01            [24]  575 	push	ar1
      000E12 C0 00            [24]  576 	push	ar0
      000E14 12 0F B2         [24]  577 	lcall	__mullong
      000E17 85 82 77         [24]  578 	mov	__divulong_PARM_2,dpl
      000E1A 85 83 78         [24]  579 	mov	(__divulong_PARM_2 + 1),dph
      000E1D 85 F0 79         [24]  580 	mov	(__divulong_PARM_2 + 2),b
      000E20 F5 7A            [12]  581 	mov	(__divulong_PARM_2 + 3),a
      000E22 D0 00            [24]  582 	pop	ar0
      000E24 D0 01            [24]  583 	pop	ar1
      000E26 D0 02            [24]  584 	pop	ar2
      000E28 D0 03            [24]  585 	pop	ar3
                                    586 ;	my_uart.c:16: if (divisor == 0 || divisor > 255UL)
      000E2A 88 82            [24]  587 	mov	dpl, r0
      000E2C 89 83            [24]  588 	mov	dph, r1
      000E2E 8A F0            [24]  589 	mov	b, r2
      000E30 EB               [12]  590 	mov	a, r3
      000E31 12 0F 32         [24]  591 	lcall	__divulong
      000E34 AC 82            [24]  592 	mov	r4, dpl
      000E36 AD 83            [24]  593 	mov	r5, dph
      000E38 AE F0            [24]  594 	mov	r6, b
      000E3A FF               [12]  595 	mov	r7, a
      000E3B EC               [12]  596 	mov	a,r4
      000E3C 4D               [12]  597 	orl	a,r5
      000E3D 4E               [12]  598 	orl	a,r6
      000E3E 4F               [12]  599 	orl	a,r7
      000E3F 60 0C            [24]  600 	jz	00103$
      000E41 C3               [12]  601 	clr	c
      000E42 74 FF            [12]  602 	mov	a,#0xff
      000E44 9C               [12]  603 	subb	a,r4
      000E45 E4               [12]  604 	clr	a
      000E46 9D               [12]  605 	subb	a,r5
      000E47 E4               [12]  606 	clr	a
      000E48 9E               [12]  607 	subb	a,r6
      000E49 E4               [12]  608 	clr	a
      000E4A 9F               [12]  609 	subb	a,r7
      000E4B 50 04            [24]  610 	jnc	00104$
                                    611 ;	free result
      000E4D                        612 00103$:
                                    613 ;	my_uart.c:17: return 0;
      000E4D 75 82 00         [24]  614 	mov	dpl, #0x00
      000E50 22               [24]  615 	ret
      000E51                        616 00104$:
                                    617 ;	my_uart.c:19: reload = (uart_u8)(256UL - divisor);
      000E51 C3               [12]  618 	clr	c
      000E52 E4               [12]  619 	clr	a
      000E53 9C               [12]  620 	subb	a,r4
      000E54 FC               [12]  621 	mov	r4,a
                                    622 ;	my_uart.c:21: ES = 0;
                                    623 ;	assignBit
      000E55 C2 AC            [12]  624 	clr	_ES
                                    625 ;	my_uart.c:23: TR1 = 0;
                                    626 ;	assignBit
      000E57 C2 8E            [12]  627 	clr	_TR1
                                    628 ;	my_uart.c:24: TMOD = (TMOD & 0x0F) | 0x20;
      000E59 E5 89            [12]  629 	mov	a,_TMOD
      000E5B 54 0F            [12]  630 	anl	a,#0x0f
      000E5D 44 20            [12]  631 	orl	a,#0x20
      000E5F F5 89            [12]  632 	mov	_TMOD,a
                                    633 ;	my_uart.c:26: PCON |= 0x80;
      000E61 43 87 80         [24]  634 	orl	_PCON,#0x80
                                    635 ;	my_uart.c:28: TH1 = reload;
      000E64 8C 8D            [24]  636 	mov	_TH1,r4
                                    637 ;	my_uart.c:29: TL1 = reload;
      000E66 8C 8B            [24]  638 	mov	_TL1,r4
                                    639 ;	my_uart.c:31: SCON = 0x50;
      000E68 75 98 50         [24]  640 	mov	_SCON,#0x50
                                    641 ;	my_uart.c:33: TI = 0;
                                    642 ;	assignBit
      000E6B C2 99            [12]  643 	clr	_TI
                                    644 ;	my_uart.c:34: RI = 0;
                                    645 ;	assignBit
      000E6D C2 98            [12]  646 	clr	_RI
                                    647 ;	my_uart.c:36: TR1 = 1;
                                    648 ;	assignBit
      000E6F D2 8E            [12]  649 	setb	_TR1
                                    650 ;	my_uart.c:38: return 1;
      000E71 75 82 01         [24]  651 	mov	dpl, #0x01
                                    652 ;	my_uart.c:39: }
      000E74 22               [24]  653 	ret
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'uart_write_byte'
                                    656 ;------------------------------------------------------------
                                    657 ;data          Allocated to registers 
                                    658 ;------------------------------------------------------------
                                    659 ;	my_uart.c:41: void uart_write_byte(uart_u8 data)
                                    660 ;	-----------------------------------------
                                    661 ;	 function uart_write_byte
                                    662 ;	-----------------------------------------
      000E75                        663 _uart_write_byte:
      000E75 85 82 99         [24]  664 	mov	_SBUF,dpl
                                    665 ;	my_uart.c:45: while (TI == 0);
      000E78                        666 00101$:
                                    667 ;	my_uart.c:47: TI = 0;
                                    668 ;	assignBit
      000E78 10 99 02         [24]  669 	jbc	_TI,00120$
      000E7B 80 FB            [24]  670 	sjmp	00101$
      000E7D                        671 00120$:
                                    672 ;	my_uart.c:48: }
      000E7D 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'uart_write_buffer'
                                    676 ;------------------------------------------------------------
                                    677 ;length        Allocated with name '_uart_write_buffer_PARM_2'
                                    678 ;data          Allocated to registers r5 r6 r7 
                                    679 ;i             Allocated to registers r3 r4 
                                    680 ;------------------------------------------------------------
                                    681 ;	my_uart.c:50: void uart_write_buffer(const uart_u8 *data, uart_u16 length)
                                    682 ;	-----------------------------------------
                                    683 ;	 function uart_write_buffer
                                    684 ;	-----------------------------------------
      000E7E                        685 _uart_write_buffer:
      000E7E AD 82            [24]  686 	mov	r5, dpl
      000E80 AE 83            [24]  687 	mov	r6, dph
      000E82 AF F0            [24]  688 	mov	r7, b
                                    689 ;	my_uart.c:54: for (i = 0; i < length; i++)
      000E84 7B 00            [12]  690 	mov	r3,#0x00
      000E86 7C 00            [12]  691 	mov	r4,#0x00
      000E88                        692 00103$:
      000E88 C3               [12]  693 	clr	c
      000E89 EB               [12]  694 	mov	a,r3
      000E8A 95 75            [12]  695 	subb	a,_uart_write_buffer_PARM_2
      000E8C EC               [12]  696 	mov	a,r4
      000E8D 95 76            [12]  697 	subb	a,(_uart_write_buffer_PARM_2 + 1)
      000E8F 50 31            [24]  698 	jnc	00105$
                                    699 ;	my_uart.c:55: uart_write_byte(data[i]);
      000E91 EB               [12]  700 	mov	a,r3
      000E92 2D               [12]  701 	add	a, r5
      000E93 F8               [12]  702 	mov	r0,a
      000E94 EC               [12]  703 	mov	a,r4
      000E95 3E               [12]  704 	addc	a, r6
      000E96 F9               [12]  705 	mov	r1,a
      000E97 8F 02            [24]  706 	mov	ar2,r7
      000E99 88 82            [24]  707 	mov	dpl,r0
      000E9B 89 83            [24]  708 	mov	dph,r1
      000E9D 8A F0            [24]  709 	mov	b,r2
      000E9F 12 10 20         [24]  710 	lcall	__gptrget
      000EA2 F5 82            [12]  711 	mov	dpl,a
      000EA4 C0 07            [24]  712 	push	ar7
      000EA6 C0 06            [24]  713 	push	ar6
      000EA8 C0 05            [24]  714 	push	ar5
      000EAA C0 04            [24]  715 	push	ar4
      000EAC C0 03            [24]  716 	push	ar3
      000EAE 12 0E 75         [24]  717 	lcall	_uart_write_byte
      000EB1 D0 03            [24]  718 	pop	ar3
      000EB3 D0 04            [24]  719 	pop	ar4
      000EB5 D0 05            [24]  720 	pop	ar5
      000EB7 D0 06            [24]  721 	pop	ar6
      000EB9 D0 07            [24]  722 	pop	ar7
                                    723 ;	my_uart.c:54: for (i = 0; i < length; i++)
      000EBB 0B               [12]  724 	inc	r3
      000EBC BB 00 C9         [24]  725 	cjne	r3,#0x00,00103$
      000EBF 0C               [12]  726 	inc	r4
      000EC0 80 C6            [24]  727 	sjmp	00103$
      000EC2                        728 00105$:
                                    729 ;	my_uart.c:56: }
      000EC2 22               [24]  730 	ret
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'uart_write_string'
                                    733 ;------------------------------------------------------------
                                    734 ;str           Allocated to registers r5 r6 r7 
                                    735 ;------------------------------------------------------------
                                    736 ;	my_uart.c:58: void uart_write_string(const char *str)
                                    737 ;	-----------------------------------------
                                    738 ;	 function uart_write_string
                                    739 ;	-----------------------------------------
      000EC3                        740 _uart_write_string:
      000EC3 AD 82            [24]  741 	mov	r5, dpl
      000EC5 AE 83            [24]  742 	mov	r6, dph
      000EC7 AF F0            [24]  743 	mov	r7, b
                                    744 ;	my_uart.c:60: while (*str != '\0')
      000EC9                        745 00101$:
      000EC9 8D 82            [24]  746 	mov	dpl,r5
      000ECB 8E 83            [24]  747 	mov	dph,r6
      000ECD 8F F0            [24]  748 	mov	b,r7
      000ECF 12 10 20         [24]  749 	lcall	__gptrget
      000ED2 FC               [12]  750 	mov	r4,a
      000ED3 60 18            [24]  751 	jz	00104$
                                    752 ;	my_uart.c:62: uart_write_byte((uart_u8)*str);
      000ED5 8C 82            [24]  753 	mov	dpl, r4
      000ED7 C0 07            [24]  754 	push	ar7
      000ED9 C0 06            [24]  755 	push	ar6
      000EDB C0 05            [24]  756 	push	ar5
      000EDD 12 0E 75         [24]  757 	lcall	_uart_write_byte
      000EE0 D0 05            [24]  758 	pop	ar5
      000EE2 D0 06            [24]  759 	pop	ar6
      000EE4 D0 07            [24]  760 	pop	ar7
                                    761 ;	my_uart.c:63: str++;
      000EE6 0D               [12]  762 	inc	r5
      000EE7 BD 00 DF         [24]  763 	cjne	r5,#0x00,00101$
      000EEA 0E               [12]  764 	inc	r6
      000EEB 80 DC            [24]  765 	sjmp	00101$
      000EED                        766 00104$:
                                    767 ;	my_uart.c:65: }
      000EED 22               [24]  768 	ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'uart_available'
                                    771 ;------------------------------------------------------------
                                    772 ;	my_uart.c:67: uart_u8 uart_available(void)
                                    773 ;	-----------------------------------------
                                    774 ;	 function uart_available
                                    775 ;	-----------------------------------------
      000EEE                        776 _uart_available:
                                    777 ;	my_uart.c:69: return RI ? 1 : 0;
      000EEE 30 98 04         [24]  778 	jnb	_RI,00103$
      000EF1 7F 01            [12]  779 	mov	r7,#0x01
      000EF3 80 02            [24]  780 	sjmp	00104$
      000EF5                        781 00103$:
      000EF5 7F 00            [12]  782 	mov	r7,#0x00
      000EF7                        783 00104$:
      000EF7 8F 82            [24]  784 	mov	dpl,r7
                                    785 ;	my_uart.c:70: }
      000EF9 22               [24]  786 	ret
                                    787 ;------------------------------------------------------------
                                    788 ;Allocation info for local variables in function 'uart_read_byte'
                                    789 ;------------------------------------------------------------
                                    790 ;data          Allocated to registers r5 r6 r7 
                                    791 ;------------------------------------------------------------
                                    792 ;	my_uart.c:72: uart_u8 uart_read_byte(uart_u8 *data)
                                    793 ;	-----------------------------------------
                                    794 ;	 function uart_read_byte
                                    795 ;	-----------------------------------------
      000EFA                        796 _uart_read_byte:
      000EFA AD 82            [24]  797 	mov	r5, dpl
      000EFC AE 83            [24]  798 	mov	r6, dph
      000EFE AF F0            [24]  799 	mov	r7, b
                                    800 ;	my_uart.c:74: if (RI == 0)
      000F00 20 98 04         [24]  801 	jb	_RI,00102$
                                    802 ;	my_uart.c:75: return 0;
      000F03 75 82 00         [24]  803 	mov	dpl, #0x00
      000F06 22               [24]  804 	ret
      000F07                        805 00102$:
                                    806 ;	my_uart.c:77: *data = SBUF;
      000F07 8D 82            [24]  807 	mov	dpl,r5
      000F09 8E 83            [24]  808 	mov	dph,r6
      000F0B 8F F0            [24]  809 	mov	b,r7
      000F0D E5 99            [12]  810 	mov	a,_SBUF
      000F0F 12 0F 97         [24]  811 	lcall	__gptrput
                                    812 ;	my_uart.c:78: RI = 0;
                                    813 ;	assignBit
      000F12 C2 98            [12]  814 	clr	_RI
                                    815 ;	my_uart.c:80: return 1;
      000F14 75 82 01         [24]  816 	mov	dpl, #0x01
                                    817 ;	my_uart.c:81: }
      000F17 22               [24]  818 	ret
                                    819 ;------------------------------------------------------------
                                    820 ;Allocation info for local variables in function 'uart_read_byte_blocking'
                                    821 ;------------------------------------------------------------
                                    822 ;data          Allocated to registers r5 r6 r7 
                                    823 ;------------------------------------------------------------
                                    824 ;	my_uart.c:83: uart_u8 uart_read_byte_blocking(uart_u8 *data)
                                    825 ;	-----------------------------------------
                                    826 ;	 function uart_read_byte_blocking
                                    827 ;	-----------------------------------------
      000F18                        828 _uart_read_byte_blocking:
      000F18 AD 82            [24]  829 	mov	r5, dpl
      000F1A AE 83            [24]  830 	mov	r6, dph
      000F1C AF F0            [24]  831 	mov	r7, b
                                    832 ;	my_uart.c:85: while (RI == 0);
      000F1E                        833 00101$:
      000F1E 30 98 FD         [24]  834 	jnb	_RI,00101$
                                    835 ;	my_uart.c:87: *data = SBUF;
      000F21 8D 82            [24]  836 	mov	dpl,r5
      000F23 8E 83            [24]  837 	mov	dph,r6
      000F25 8F F0            [24]  838 	mov	b,r7
      000F27 E5 99            [12]  839 	mov	a,_SBUF
      000F29 12 0F 97         [24]  840 	lcall	__gptrput
                                    841 ;	my_uart.c:88: RI = 0;
                                    842 ;	assignBit
      000F2C C2 98            [12]  843 	clr	_RI
                                    844 ;	my_uart.c:90: return 1;
      000F2E 75 82 01         [24]  845 	mov	dpl, #0x01
                                    846 ;	my_uart.c:91: }
      000F31 22               [24]  847 	ret
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
                                    850 	.area XINIT   (CODE)
                                    851 	.area CABS    (ABS,CODE)
