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
                                    213 	.globl _oled_set_position_PARM_2
                                    214 	.globl _i2c_start
                                    215 	.globl _i2c_stop
                                    216 	.globl _i2c_write
                                    217 	.globl _oled_command
                                    218 	.globl _oled_data
                                    219 	.globl _oled_set_position
                                    220 	.globl _oled_clear
                                    221 	.globl _oled_init
                                    222 	.globl _oled_char
                                    223 	.globl _oled_string
                                    224 ;--------------------------------------------------------
                                    225 ; special function registers
                                    226 ;--------------------------------------------------------
                                    227 	.area RSEG    (ABS,DATA)
      000000                        228 	.org 0x0000
                           000080   229 _P0	=	0x0080
                           000081   230 _SP	=	0x0081
                           000082   231 _DPL	=	0x0082
                           000083   232 _DPH	=	0x0083
                           000087   233 _PCON	=	0x0087
                           000088   234 _TCON	=	0x0088
                           000089   235 _TMOD	=	0x0089
                           008C8A   236 _TMR0	=	0x8c8a
                           00008A   237 _TL0	=	0x008a
                           00008C   238 _TH0	=	0x008c
                           008D8B   239 _TMR1	=	0x8d8b
                           00008B   240 _TL1	=	0x008b
                           00008D   241 _TH1	=	0x008d
                           00008E   242 _AUXR	=	0x008e
                           00008F   243 _CKCON0	=	0x008f
                           000090   244 _P1	=	0x0090
                           000093   245 _SSCON	=	0x0093
                           000094   246 _SSCS	=	0x0094
                           000095   247 _SSDAT	=	0x0095
                           000096   248 _SSADR	=	0x0096
                           000098   249 _SCON	=	0x0098
                           000099   250 _SBUF	=	0x0099
                           00009A   251 _BRL	=	0x009a
                           00009B   252 _BDRCON	=	0x009b
                           00009C   253 _KBLS	=	0x009c
                           00009D   254 _KBE	=	0x009d
                           00009E   255 _KBF	=	0x009e
                           0000A0   256 _P2	=	0x00a0
                           0000A2   257 _AUXR1	=	0x00a2
                           0000A3   258 _PLLCON	=	0x00a3
                           0000A4   259 _PLLDIV	=	0x00a4
                           0000A6   260 _WDTRST	=	0x00a6
                           0000A7   261 _WDTPRG	=	0x00a7
                           0000A8   262 _IE	=	0x00a8
                           0000A8   263 _IEN0	=	0x00a8
                           0000A9   264 _SADDR	=	0x00a9
                           0000AF   265 _CKCON1	=	0x00af
                           0000B0   266 _P3	=	0x00b0
                           0000B1   267 _IEN1	=	0x00b1
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000B7   270 _IPH0	=	0x00b7
                           0000B8   271 _IPL0	=	0x00b8
                           0000B9   272 _SADEN	=	0x00b9
                           00BBBA   273 _UFNUM	=	0xbbba
                           0000BA   274 _UFNUML	=	0x00ba
                           0000BB   275 _UFNUMH	=	0x00bb
                           0000BC   276 _USBCON	=	0x00bc
                           0000BD   277 _USBINT	=	0x00bd
                           0000BE   278 _USBIEN	=	0x00be
                           0000C0   279 _P4	=	0x00c0
                           0000C2   280 _UEPIEN	=	0x00c2
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C6   284 _USBADDR	=	0x00c6
                           0000C7   285 _UEPNUM	=	0x00c7
                           0000C8   286 _T2CON	=	0x00c8
                           0000C9   287 _T2MOD	=	0x00c9
                           00CBCA   288 _RCAP2	=	0xcbca
                           0000CA   289 _RCAP2L	=	0x00ca
                           0000CB   290 _RCAP2H	=	0x00cb
                           00CDCC   291 _TMR2	=	0xcdcc
                           0000CC   292 _TL2	=	0x00cc
                           0000CD   293 _TH2	=	0x00cd
                           0000CE   294 _UEPSTAX	=	0x00ce
                           0000CF   295 _UEPDATX	=	0x00cf
                           0000D0   296 _PSW	=	0x00d0
                           0000D1   297 _FCON	=	0x00d1
                           0000D2   298 _EECON	=	0x00d2
                           0000D4   299 _UEPCONX	=	0x00d4
                           0000D5   300 _UEPRST	=	0x00d5
                           0000D8   301 _CCON	=	0x00d8
                           0000D9   302 _CMOD	=	0x00d9
                           0000DA   303 _CCAPM0	=	0x00da
                           0000DB   304 _CCAPM1	=	0x00db
                           0000DC   305 _CCAPM2	=	0x00dc
                           0000DD   306 _CCAPM3	=	0x00dd
                           0000DE   307 _CCAPM4	=	0x00de
                           0000E0   308 _ACC	=	0x00e0
                           00E3E2   309 _UBYCTX	=	0xe3e2
                           0000E2   310 _UBYCTLX	=	0x00e2
                           0000E3   311 _UBYCTHX	=	0x00e3
                           00F9E9   312 _PCA	=	0xf9e9
                           0000E9   313 _CL	=	0x00e9
                           0000F9   314 _CH	=	0x00f9
                           00FAEA   315 _CCAP0	=	0xfaea
                           0000EA   316 _CCAP0L	=	0x00ea
                           0000FA   317 _CCAP0H	=	0x00fa
                           00FBEB   318 _CCAP1	=	0xfbeb
                           0000EB   319 _CCAP1L	=	0x00eb
                           0000FB   320 _CCAP1H	=	0x00fb
                           00FCEC   321 _CCAP2	=	0xfcec
                           0000EC   322 _CCAP2L	=	0x00ec
                           0000FC   323 _CCAP2H	=	0x00fc
                           00FDED   324 _CCAP3	=	0xfded
                           0000ED   325 _CCAP3L	=	0x00ed
                           0000FD   326 _CCAP3H	=	0x00fd
                           00FEEE   327 _CCAP4	=	0xfeee
                           0000EE   328 _CCAP4L	=	0x00ee
                           0000FE   329 _CCAP4H	=	0x00fe
                           0000F0   330 _B	=	0x00f0
                           0000F1   331 _LEDCON	=	0x00f1
                           0000F8   332 _UEPINT	=	0x00f8
                                    333 ;--------------------------------------------------------
                                    334 ; special function bits
                                    335 ;--------------------------------------------------------
                                    336 	.area RSEG    (ABS,DATA)
      000000                        337 	.org 0x0000
                           000080   338 _P0_0	=	0x0080
                           000081   339 _P0_1	=	0x0081
                           000082   340 _P0_2	=	0x0082
                           000083   341 _P0_3	=	0x0083
                           000084   342 _P0_4	=	0x0084
                           000085   343 _P0_5	=	0x0085
                           000086   344 _P0_6	=	0x0086
                           000087   345 _P0_7	=	0x0087
                           000088   346 _IT0	=	0x0088
                           000089   347 _IE0	=	0x0089
                           00008A   348 _IT1	=	0x008a
                           00008B   349 _IE1	=	0x008b
                           00008C   350 _TR0	=	0x008c
                           00008D   351 _TF0	=	0x008d
                           00008E   352 _TR1	=	0x008e
                           00008F   353 _TF1	=	0x008f
                           000090   354 _P1_0	=	0x0090
                           000091   355 _P1_1	=	0x0091
                           000092   356 _P1_2	=	0x0092
                           000093   357 _P1_3	=	0x0093
                           000094   358 _P1_4	=	0x0094
                           000095   359 _P1_5	=	0x0095
                           000096   360 _P1_6	=	0x0096
                           000097   361 _P1_7	=	0x0097
                           000098   362 _RI	=	0x0098
                           000099   363 _TI	=	0x0099
                           00009A   364 _RB8	=	0x009a
                           00009B   365 _TB8	=	0x009b
                           00009C   366 _REN	=	0x009c
                           00009D   367 _SM2	=	0x009d
                           00009E   368 _SM1	=	0x009e
                           00009F   369 _SM0	=	0x009f
                           00009F   370 _FE	=	0x009f
                           0000A0   371 _P2_0	=	0x00a0
                           0000A1   372 _P2_1	=	0x00a1
                           0000A2   373 _P2_2	=	0x00a2
                           0000A3   374 _P2_3	=	0x00a3
                           0000A4   375 _P2_4	=	0x00a4
                           0000A5   376 _P2_5	=	0x00a5
                           0000A6   377 _P2_6	=	0x00a6
                           0000A7   378 _P2_7	=	0x00a7
                           0000A8   379 _EX0	=	0x00a8
                           0000A9   380 _ET0	=	0x00a9
                           0000AA   381 _EX1	=	0x00aa
                           0000AB   382 _ET1	=	0x00ab
                           0000AC   383 _ES	=	0x00ac
                           0000AD   384 _ET2	=	0x00ad
                           0000AE   385 _EC	=	0x00ae
                           0000AF   386 _EA	=	0x00af
                           0000B0   387 _P3_0	=	0x00b0
                           0000B1   388 _P3_1	=	0x00b1
                           0000B2   389 _P3_2	=	0x00b2
                           0000B3   390 _P3_3	=	0x00b3
                           0000B4   391 _P3_4	=	0x00b4
                           0000B5   392 _P3_5	=	0x00b5
                           0000B6   393 _P3_6	=	0x00b6
                           0000B7   394 _P3_7	=	0x00b7
                           0000B8   395 _PX0L	=	0x00b8
                           0000B9   396 _PT0L	=	0x00b9
                           0000BA   397 _PX1L	=	0x00ba
                           0000BB   398 _PT1L	=	0x00bb
                           0000BC   399 _PSL	=	0x00bc
                           0000BD   400 _PT2L	=	0x00bd
                           0000BE   401 _PPCL	=	0x00be
                           0000C0   402 _P4_0	=	0x00c0
                           0000C1   403 _P4_1	=	0x00c1
                           0000C8   404 _CP_RL2	=	0x00c8
                           0000C9   405 _C_T2	=	0x00c9
                           0000CA   406 _TR2	=	0x00ca
                           0000CB   407 _EXEN2	=	0x00cb
                           0000CC   408 _TCLK	=	0x00cc
                           0000CD   409 _RCLK	=	0x00cd
                           0000CE   410 _EXF2	=	0x00ce
                           0000CF   411 _TF2	=	0x00cf
                           0000D0   412 _P	=	0x00d0
                           0000D1   413 _F1	=	0x00d1
                           0000D2   414 _OV	=	0x00d2
                           0000D3   415 _RS0	=	0x00d3
                           0000D4   416 _RS1	=	0x00d4
                           0000D5   417 _F0	=	0x00d5
                           0000D6   418 _AC	=	0x00d6
                           0000D7   419 _CY	=	0x00d7
                           0000D8   420 _CCF0	=	0x00d8
                           0000D9   421 _CCF1	=	0x00d9
                           0000DA   422 _CCF2	=	0x00da
                           0000DB   423 _CCF3	=	0x00db
                           0000DC   424 _CCF4	=	0x00dc
                           0000DE   425 _CR	=	0x00de
                           0000DF   426 _CF	=	0x00df
                           0000F8   427 _EP0INT	=	0x00f8
                           0000F9   428 _EP1INT	=	0x00f9
                           0000FA   429 _EP2INT	=	0x00fa
                           0000FB   430 _EP3INT	=	0x00fb
                           0000FC   431 _EP4INT	=	0x00fc
                           0000FD   432 _EP5INT	=	0x00fd
                           0000FE   433 _EP6INT	=	0x00fe
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable register banks
                                    436 ;--------------------------------------------------------
                                    437 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        438 	.ds 8
                                    439 ;--------------------------------------------------------
                                    440 ; internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area DSEG    (DATA)
      000036                        443 _oled_page:
      000036                        444 	.ds 1
      000037                        445 _oled_column:
      000037                        446 	.ds 1
      000038                        447 _i2c_write_transaction_PARM_2:
      000038                        448 	.ds 3
      00003B                        449 _i2c_write_transaction_PARM_3:
      00003B                        450 	.ds 1
      00003C                        451 _oled_command_cmd_10000_30:
      00003C                        452 	.ds 1
      00003D                        453 _oled_data_dat_10000_32:
      00003D                        454 	.ds 1
      00003E                        455 _oled_set_position_PARM_2:
      00003E                        456 	.ds 1
      00003F                        457 _oled_clear_zeros_10000_39:
      00003F                        458 	.ds 16
      00004F                        459 _oled_char_data_10000_47:
      00004F                        460 	.ds 6
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable items in internal ram
                                    463 ;--------------------------------------------------------
                                    464 ;--------------------------------------------------------
                                    465 ; indirectly addressable internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area ISEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; absolute internal ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area IABS    (ABS,DATA)
                                    472 	.area IABS    (ABS,DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; bit data
                                    475 ;--------------------------------------------------------
                                    476 	.area BSEG    (BIT)
                                    477 ;--------------------------------------------------------
                                    478 ; paged external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area PSEG    (PAG,XDATA)
                                    481 ;--------------------------------------------------------
                                    482 ; uninitialized external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area XSEG    (XDATA)
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; initialized external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT0 (CODE)
                                    495 	.area GSINIT1 (CODE)
                                    496 	.area GSINIT2 (CODE)
                                    497 	.area GSINIT3 (CODE)
                                    498 	.area GSINIT4 (CODE)
                                    499 	.area GSINIT5 (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area CSEG    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; global & static initialisations
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area GSINIT  (CODE)
                                    508 	.area GSFINAL (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 ;	my_oled.c:9: static unsigned char oled_page = 0;
      0000C0 75 36 00         [24]  511 	mov	_oled_page,#0x00
                                    512 ;	my_oled.c:10: static unsigned char oled_column = 0;
      0000C3 75 37 00         [24]  513 	mov	_oled_column,#0x00
                                    514 ;--------------------------------------------------------
                                    515 ; Home
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
                                    518 	.area HOME    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; code
                                    521 ;--------------------------------------------------------
                                    522 	.area CSEG    (CODE)
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'i2c_delay'
                                    525 ;------------------------------------------------------------
                                    526 ;	my_oled.c:52: static void i2c_delay(void)
                                    527 ;	-----------------------------------------
                                    528 ;	 function i2c_delay
                                    529 ;	-----------------------------------------
      0003C2                        530 _i2c_delay:
                           000007   531 	ar7 = 0x07
                           000006   532 	ar6 = 0x06
                           000005   533 	ar5 = 0x05
                           000004   534 	ar4 = 0x04
                           000003   535 	ar3 = 0x03
                           000002   536 	ar2 = 0x02
                           000001   537 	ar1 = 0x01
                           000000   538 	ar0 = 0x00
                                    539 ;	my_oled.c:54: delay_us(5);
      0003C2 90 00 05         [24]  540 	mov	dptr,#0x0005
                                    541 ;	my_oled.c:55: }
      0003C5 02 02 6D         [24]  542 	ljmp	_delay_us
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'i2c_start'
                                    545 ;------------------------------------------------------------
                                    546 ;	my_oled.c:57: void i2c_start(void)
                                    547 ;	-----------------------------------------
                                    548 ;	 function i2c_start
                                    549 ;	-----------------------------------------
      0003C8                        550 _i2c_start:
                                    551 ;	my_oled.c:59: OLED_SDA = 1;
                                    552 ;	assignBit
      0003C8 D2 C1            [12]  553 	setb	_P4_1
                                    554 ;	my_oled.c:60: OLED_SCL = 1;
                                    555 ;	assignBit
      0003CA D2 C0            [12]  556 	setb	_P4_0
                                    557 ;	my_oled.c:61: i2c_delay();
      0003CC 12 03 C2         [24]  558 	lcall	_i2c_delay
                                    559 ;	my_oled.c:62: OLED_SDA = 0;
                                    560 ;	assignBit
      0003CF C2 C1            [12]  561 	clr	_P4_1
                                    562 ;	my_oled.c:63: i2c_delay();
      0003D1 12 03 C2         [24]  563 	lcall	_i2c_delay
                                    564 ;	my_oled.c:64: OLED_SCL = 0;
                                    565 ;	assignBit
      0003D4 C2 C0            [12]  566 	clr	_P4_0
                                    567 ;	my_oled.c:65: }
      0003D6 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'i2c_stop'
                                    571 ;------------------------------------------------------------
                                    572 ;	my_oled.c:67: void i2c_stop(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function i2c_stop
                                    575 ;	-----------------------------------------
      0003D7                        576 _i2c_stop:
                                    577 ;	my_oled.c:69: OLED_SDA = 0;
                                    578 ;	assignBit
      0003D7 C2 C1            [12]  579 	clr	_P4_1
                                    580 ;	my_oled.c:70: OLED_SCL = 1;
                                    581 ;	assignBit
      0003D9 D2 C0            [12]  582 	setb	_P4_0
                                    583 ;	my_oled.c:71: i2c_delay();
      0003DB 12 03 C2         [24]  584 	lcall	_i2c_delay
                                    585 ;	my_oled.c:72: OLED_SDA = 1;
                                    586 ;	assignBit
      0003DE D2 C1            [12]  587 	setb	_P4_1
                                    588 ;	my_oled.c:73: i2c_delay();
                                    589 ;	my_oled.c:74: }
      0003E0 02 03 C2         [24]  590 	ljmp	_i2c_delay
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'i2c_write'
                                    593 ;------------------------------------------------------------
                                    594 ;dat           Allocated to registers r7 
                                    595 ;i             Allocated to registers r6 
                                    596 ;ack           Allocated to registers r7 
                                    597 ;------------------------------------------------------------
                                    598 ;	my_oled.c:76: unsigned char i2c_write(unsigned char dat)
                                    599 ;	-----------------------------------------
                                    600 ;	 function i2c_write
                                    601 ;	-----------------------------------------
      0003E3                        602 _i2c_write:
      0003E3 AF 82            [24]  603 	mov	r7, dpl
                                    604 ;	my_oled.c:81: for(i = 0; i < 8; i++)
      0003E5 7E 00            [12]  605 	mov	r6,#0x00
      0003E7                        606 00102$:
                                    607 ;	my_oled.c:83: OLED_SDA = (dat & 0x80) ? 1 : 0;
      0003E7 8F 05            [24]  608 	mov	ar5,r7
      0003E9 53 05 80         [24]  609 	anl	ar5,#0x80
                                    610 ;	assignBit
      0003EC ED               [12]  611 	mov	a,r5
      0003ED 24 FF            [12]  612 	add	a,#0xff
      0003EF 92 C1            [24]  613 	mov	_P4_1,c
                                    614 ;	my_oled.c:84: i2c_delay();
      0003F1 C0 07            [24]  615 	push	ar7
      0003F3 C0 06            [24]  616 	push	ar6
      0003F5 12 03 C2         [24]  617 	lcall	_i2c_delay
                                    618 ;	my_oled.c:85: OLED_SCL = 1;
                                    619 ;	assignBit
      0003F8 D2 C0            [12]  620 	setb	_P4_0
                                    621 ;	my_oled.c:86: i2c_delay();
      0003FA 12 03 C2         [24]  622 	lcall	_i2c_delay
      0003FD D0 06            [24]  623 	pop	ar6
      0003FF D0 07            [24]  624 	pop	ar7
                                    625 ;	my_oled.c:87: OLED_SCL = 0;
                                    626 ;	assignBit
      000401 C2 C0            [12]  627 	clr	_P4_0
                                    628 ;	my_oled.c:88: dat <<= 1;
      000403 EF               [12]  629 	mov	a,r7
      000404 2F               [12]  630 	add	a,r7
      000405 FF               [12]  631 	mov	r7,a
                                    632 ;	my_oled.c:81: for(i = 0; i < 8; i++)
      000406 0E               [12]  633 	inc	r6
      000407 BE 08 00         [24]  634 	cjne	r6,#0x08,00120$
      00040A                        635 00120$:
      00040A 40 DB            [24]  636 	jc	00102$
                                    637 ;	my_oled.c:91: OLED_SDA = 1;
                                    638 ;	assignBit
      00040C D2 C1            [12]  639 	setb	_P4_1
                                    640 ;	my_oled.c:92: i2c_delay();
      00040E 12 03 C2         [24]  641 	lcall	_i2c_delay
                                    642 ;	my_oled.c:93: OLED_SCL = 1;
                                    643 ;	assignBit
      000411 D2 C0            [12]  644 	setb	_P4_0
                                    645 ;	my_oled.c:94: i2c_delay();
      000413 12 03 C2         [24]  646 	lcall	_i2c_delay
                                    647 ;	my_oled.c:95: ack = OLED_SDA;
      000416 A2 C1            [12]  648 	mov	c,_P4_1
      000418 E4               [12]  649 	clr	a
      000419 33               [12]  650 	rlc	a
      00041A FF               [12]  651 	mov	r7,a
                                    652 ;	my_oled.c:96: OLED_SCL = 0;
                                    653 ;	assignBit
      00041B C2 C0            [12]  654 	clr	_P4_0
                                    655 ;	my_oled.c:97: i2c_delay();
      00041D C0 07            [24]  656 	push	ar7
      00041F 12 03 C2         [24]  657 	lcall	_i2c_delay
      000422 D0 07            [24]  658 	pop	ar7
                                    659 ;	my_oled.c:99: return (ack == 0);
      000424 E4               [12]  660 	clr	a
      000425 BF 00 01         [24]  661 	cjne	r7,#0x00,00122$
      000428 04               [12]  662 	inc	a
      000429                        663 00122$:
      000429 F5 82            [12]  664 	mov	dpl,a
                                    665 ;	my_oled.c:100: }
      00042B 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'i2c_write_transaction'
                                    669 ;------------------------------------------------------------
                                    670 ;data          Allocated with name '_i2c_write_transaction_PARM_2'
                                    671 ;length        Allocated with name '_i2c_write_transaction_PARM_3'
                                    672 ;control       Allocated to registers r7 
                                    673 ;i             Allocated to registers r7 
                                    674 ;success       Allocated to registers r6 
                                    675 ;------------------------------------------------------------
                                    676 ;	my_oled.c:102: static unsigned char i2c_write_transaction(
                                    677 ;	-----------------------------------------
                                    678 ;	 function i2c_write_transaction
                                    679 ;	-----------------------------------------
      00042C                        680 _i2c_write_transaction:
      00042C AF 82            [24]  681 	mov	r7, dpl
                                    682 ;	my_oled.c:108: unsigned char success = 1;
      00042E 7E 01            [12]  683 	mov	r6,#0x01
                                    684 ;	my_oled.c:110: i2c_start();
      000430 C0 07            [24]  685 	push	ar7
      000432 C0 06            [24]  686 	push	ar6
      000434 12 03 C8         [24]  687 	lcall	_i2c_start
                                    688 ;	my_oled.c:112: if(!i2c_write(OLED_ADDR))
      000437 75 82 78         [24]  689 	mov	dpl, #0x78
      00043A 12 03 E3         [24]  690 	lcall	_i2c_write
      00043D E5 82            [12]  691 	mov	a, dpl
      00043F D0 06            [24]  692 	pop	ar6
      000441 D0 07            [24]  693 	pop	ar7
                                    694 ;	my_oled.c:113: success = 0;
      000443 70 01            [24]  695 	jnz	00102$
      000445 FE               [12]  696 	mov	r6,a
      000446                        697 00102$:
                                    698 ;	my_oled.c:115: if(success && !i2c_write(control))
      000446 EE               [12]  699 	mov	a,r6
      000447 60 0E            [24]  700 	jz	00104$
      000449 8F 82            [24]  701 	mov	dpl, r7
      00044B C0 06            [24]  702 	push	ar6
      00044D 12 03 E3         [24]  703 	lcall	_i2c_write
      000450 E5 82            [12]  704 	mov	a, dpl
      000452 D0 06            [24]  705 	pop	ar6
                                    706 ;	my_oled.c:116: success = 0;
      000454 70 01            [24]  707 	jnz	00104$
      000456 FE               [12]  708 	mov	r6,a
      000457                        709 00104$:
                                    710 ;	my_oled.c:118: for(i = 0; i < length && success; i++)
      000457 7F 00            [12]  711 	mov	r7,#0x00
      000459                        712 00111$:
      000459 C3               [12]  713 	clr	c
      00045A EF               [12]  714 	mov	a,r7
      00045B 95 3B            [12]  715 	subb	a,_i2c_write_transaction_PARM_3
      00045D 50 2B            [24]  716 	jnc	00108$
      00045F EE               [12]  717 	mov	a,r6
      000460 60 28            [24]  718 	jz	00108$
                                    719 ;	my_oled.c:120: if(!i2c_write(data[i]))
      000462 EF               [12]  720 	mov	a,r7
      000463 25 38            [12]  721 	add	a, _i2c_write_transaction_PARM_2
      000465 FB               [12]  722 	mov	r3,a
      000466 E4               [12]  723 	clr	a
      000467 35 39            [12]  724 	addc	a, (_i2c_write_transaction_PARM_2 + 1)
      000469 FC               [12]  725 	mov	r4,a
      00046A AD 3A            [24]  726 	mov	r5,(_i2c_write_transaction_PARM_2 + 2)
      00046C 8B 82            [24]  727 	mov	dpl,r3
      00046E 8C 83            [24]  728 	mov	dph,r4
      000470 8D F0            [24]  729 	mov	b,r5
      000472 12 0B A9         [24]  730 	lcall	__gptrget
      000475 F5 82            [12]  731 	mov	dpl,a
      000477 C0 07            [24]  732 	push	ar7
      000479 C0 06            [24]  733 	push	ar6
      00047B 12 03 E3         [24]  734 	lcall	_i2c_write
      00047E E5 82            [12]  735 	mov	a, dpl
      000480 D0 06            [24]  736 	pop	ar6
      000482 D0 07            [24]  737 	pop	ar7
                                    738 ;	my_oled.c:121: success = 0;
      000484 70 01            [24]  739 	jnz	00112$
      000486 FE               [12]  740 	mov	r6,a
      000487                        741 00112$:
                                    742 ;	my_oled.c:118: for(i = 0; i < length && success; i++)
      000487 0F               [12]  743 	inc	r7
      000488 80 CF            [24]  744 	sjmp	00111$
      00048A                        745 00108$:
                                    746 ;	my_oled.c:124: i2c_stop();
      00048A C0 06            [24]  747 	push	ar6
      00048C 12 03 D7         [24]  748 	lcall	_i2c_stop
      00048F D0 06            [24]  749 	pop	ar6
                                    750 ;	my_oled.c:125: return success;
      000491 8E 82            [24]  751 	mov	dpl, r6
                                    752 ;	my_oled.c:126: }
      000493 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'oled_command'
                                    756 ;------------------------------------------------------------
                                    757 ;cmd           Allocated with name '_oled_command_cmd_10000_30'
                                    758 ;------------------------------------------------------------
                                    759 ;	my_oled.c:128: void oled_command(unsigned char cmd)
                                    760 ;	-----------------------------------------
                                    761 ;	 function oled_command
                                    762 ;	-----------------------------------------
      000494                        763 _oled_command:
      000494 85 82 3C         [24]  764 	mov	_oled_command_cmd_10000_30,dpl
                                    765 ;	my_oled.c:130: i2c_write_transaction(0x00, &cmd, 1);
      000497 75 38 3C         [24]  766 	mov	_i2c_write_transaction_PARM_2,#_oled_command_cmd_10000_30
      00049A 75 39 00         [24]  767 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      00049D 75 3A 40         [24]  768 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      0004A0 75 3B 01         [24]  769 	mov	_i2c_write_transaction_PARM_3,#0x01
      0004A3 75 82 00         [24]  770 	mov	dpl, #0x00
                                    771 ;	my_oled.c:131: }
      0004A6 02 04 2C         [24]  772 	ljmp	_i2c_write_transaction
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'oled_data'
                                    775 ;------------------------------------------------------------
                                    776 ;dat           Allocated with name '_oled_data_dat_10000_32'
                                    777 ;------------------------------------------------------------
                                    778 ;	my_oled.c:133: void oled_data(unsigned char dat)
                                    779 ;	-----------------------------------------
                                    780 ;	 function oled_data
                                    781 ;	-----------------------------------------
      0004A9                        782 _oled_data:
      0004A9 85 82 3D         [24]  783 	mov	_oled_data_dat_10000_32,dpl
                                    784 ;	my_oled.c:135: i2c_write_transaction(0x40, &dat, 1);
      0004AC 75 38 3D         [24]  785 	mov	_i2c_write_transaction_PARM_2,#_oled_data_dat_10000_32
      0004AF 75 39 00         [24]  786 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      0004B2 75 3A 40         [24]  787 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      0004B5 75 3B 01         [24]  788 	mov	_i2c_write_transaction_PARM_3,#0x01
      0004B8 75 82 40         [24]  789 	mov	dpl, #0x40
                                    790 ;	my_oled.c:136: }
      0004BB 02 04 2C         [24]  791 	ljmp	_i2c_write_transaction
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'oled_set_position'
                                    794 ;------------------------------------------------------------
                                    795 ;column        Allocated with name '_oled_set_position_PARM_2'
                                    796 ;page          Allocated to registers r7 
                                    797 ;------------------------------------------------------------
                                    798 ;	my_oled.c:138: void oled_set_position(unsigned char page, unsigned char column)
                                    799 ;	-----------------------------------------
                                    800 ;	 function oled_set_position
                                    801 ;	-----------------------------------------
      0004BE                        802 _oled_set_position:
                                    803 ;	my_oled.c:140: if(page > 7)
      0004BE E5 82            [12]  804 	mov	a,dpl
      0004C0 FF               [12]  805 	mov	r7,a
      0004C1 24 F8            [12]  806 	add	a,#0xff - 0x07
      0004C3 50 02            [24]  807 	jnc	00102$
                                    808 ;	free result
                                    809 ;	my_oled.c:141: page = 7;
      0004C5 7F 07            [12]  810 	mov	r7,#0x07
      0004C7                        811 00102$:
                                    812 ;	my_oled.c:143: if(column > 127)
      0004C7 E5 3E            [12]  813 	mov	a,_oled_set_position_PARM_2
      0004C9 24 80            [12]  814 	add	a,#0xff - 0x7f
      0004CB 50 03            [24]  815 	jnc	00104$
                                    816 ;	free result
                                    817 ;	my_oled.c:144: column = 127;
      0004CD 75 3E 7F         [24]  818 	mov	_oled_set_position_PARM_2,#0x7f
      0004D0                        819 00104$:
                                    820 ;	my_oled.c:146: oled_page = page;
      0004D0 8F 36            [24]  821 	mov	_oled_page,r7
                                    822 ;	my_oled.c:147: oled_column = column;
      0004D2 AE 3E            [24]  823 	mov	r6,_oled_set_position_PARM_2
      0004D4 8E 37            [24]  824 	mov	_oled_column,r6
                                    825 ;	my_oled.c:149: oled_command(0xB0 | page);
      0004D6 74 B0            [12]  826 	mov	a,#0xb0
      0004D8 4F               [12]  827 	orl	a,r7
      0004D9 F5 82            [12]  828 	mov	dpl,a
      0004DB C0 06            [24]  829 	push	ar6
      0004DD 12 04 94         [24]  830 	lcall	_oled_command
      0004E0 D0 06            [24]  831 	pop	ar6
                                    832 ;	my_oled.c:150: oled_command(column & 0x0F);
      0004E2 74 0F            [12]  833 	mov	a,#0x0f
      0004E4 5E               [12]  834 	anl	a,r6
      0004E5 F5 82            [12]  835 	mov	dpl,a
      0004E7 C0 06            [24]  836 	push	ar6
      0004E9 12 04 94         [24]  837 	lcall	_oled_command
      0004EC D0 06            [24]  838 	pop	ar6
                                    839 ;	my_oled.c:151: oled_command(0x10 | (column >> 4));
      0004EE EE               [12]  840 	mov	a,r6
      0004EF C4               [12]  841 	swap	a
      0004F0 54 0F            [12]  842 	anl	a,#0x0f
      0004F2 FE               [12]  843 	mov	r6,a
      0004F3 74 10            [12]  844 	mov	a,#0x10
      0004F5 4E               [12]  845 	orl	a,r6
      0004F6 F5 82            [12]  846 	mov	dpl,a
                                    847 ;	my_oled.c:152: }
      0004F8 02 04 94         [24]  848 	ljmp	_oled_command
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'oled_clear'
                                    851 ;------------------------------------------------------------
                                    852 ;page          Allocated to registers r7 
                                    853 ;col           Allocated to registers r6 
                                    854 ;i             Allocated to registers r7 
                                    855 ;zeros         Allocated with name '_oled_clear_zeros_10000_39'
                                    856 ;------------------------------------------------------------
                                    857 ;	my_oled.c:154: void oled_clear(void)
                                    858 ;	-----------------------------------------
                                    859 ;	 function oled_clear
                                    860 ;	-----------------------------------------
      0004FB                        861 _oled_clear:
                                    862 ;	my_oled.c:161: for(i = 0; i < 16; i++)
      0004FB 7F 00            [12]  863 	mov	r7,#0x00
      0004FD                        864 00104$:
                                    865 ;	my_oled.c:162: zeros[i] = 0x00;
      0004FD EF               [12]  866 	mov	a,r7
      0004FE 24 3F            [12]  867 	add	a, #_oled_clear_zeros_10000_39
      000500 F8               [12]  868 	mov	r0,a
      000501 76 00            [12]  869 	mov	@r0,#0x00
                                    870 ;	my_oled.c:161: for(i = 0; i < 16; i++)
      000503 0F               [12]  871 	inc	r7
      000504 BF 10 00         [24]  872 	cjne	r7,#0x10,00154$
      000507                        873 00154$:
      000507 40 F4            [24]  874 	jc	00104$
                                    875 ;	my_oled.c:164: for(page = 0; page < 8; page++)
      000509 7F 00            [12]  876 	mov	r7,#0x00
      00050B                        877 00108$:
                                    878 ;	my_oled.c:166: oled_set_position(page, 0);
      00050B 75 3E 00         [24]  879 	mov	_oled_set_position_PARM_2,#0x00
      00050E 8F 82            [24]  880 	mov	dpl, r7
      000510 C0 07            [24]  881 	push	ar7
      000512 12 04 BE         [24]  882 	lcall	_oled_set_position
      000515 D0 07            [24]  883 	pop	ar7
                                    884 ;	my_oled.c:168: for(col = 0; col < 128; col += 16)
      000517 7E 00            [12]  885 	mov	r6,#0x00
      000519                        886 00106$:
                                    887 ;	my_oled.c:169: i2c_write_transaction(0x40, zeros, 16);
      000519 75 38 3F         [24]  888 	mov	_i2c_write_transaction_PARM_2,#_oled_clear_zeros_10000_39
      00051C 75 39 00         [24]  889 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      00051F 75 3A 40         [24]  890 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      000522 75 3B 10         [24]  891 	mov	_i2c_write_transaction_PARM_3,#0x10
      000525 75 82 40         [24]  892 	mov	dpl, #0x40
      000528 C0 07            [24]  893 	push	ar7
      00052A C0 06            [24]  894 	push	ar6
      00052C 12 04 2C         [24]  895 	lcall	_i2c_write_transaction
      00052F D0 06            [24]  896 	pop	ar6
      000531 D0 07            [24]  897 	pop	ar7
                                    898 ;	my_oled.c:168: for(col = 0; col < 128; col += 16)
      000533 8E 05            [24]  899 	mov	ar5,r6
      000535 74 10            [12]  900 	mov	a,#0x10
      000537 2D               [12]  901 	add	a, r5
      000538 FE               [12]  902 	mov	r6,a
      000539 BE 80 00         [24]  903 	cjne	r6,#0x80,00156$
      00053C                        904 00156$:
      00053C 40 DB            [24]  905 	jc	00106$
                                    906 ;	my_oled.c:164: for(page = 0; page < 8; page++)
      00053E 0F               [12]  907 	inc	r7
      00053F BF 08 00         [24]  908 	cjne	r7,#0x08,00158$
      000542                        909 00158$:
      000542 40 C7            [24]  910 	jc	00108$
                                    911 ;	my_oled.c:172: oled_set_position(0, 0);
      000544 75 3E 00         [24]  912 	mov	_oled_set_position_PARM_2,#0x00
      000547 75 82 00         [24]  913 	mov	dpl, #0x00
                                    914 ;	my_oled.c:173: }
      00054A 02 04 BE         [24]  915 	ljmp	_oled_set_position
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'oled_init'
                                    918 ;------------------------------------------------------------
                                    919 ;	my_oled.c:175: void oled_init(void)
                                    920 ;	-----------------------------------------
                                    921 ;	 function oled_init
                                    922 ;	-----------------------------------------
      00054D                        923 _oled_init:
                                    924 ;	my_oled.c:177: delay_ms(100);
      00054D 90 00 64         [24]  925 	mov	dptr,#0x0064
      000550 E4               [12]  926 	clr	a
      000551 F5 F0            [12]  927 	mov	b,a
      000553 12 02 85         [24]  928 	lcall	_delay_ms
                                    929 ;	my_oled.c:179: OLED_SCL = 1;
                                    930 ;	assignBit
      000556 D2 C0            [12]  931 	setb	_P4_0
                                    932 ;	my_oled.c:180: OLED_SDA = 1;
                                    933 ;	assignBit
      000558 D2 C1            [12]  934 	setb	_P4_1
                                    935 ;	my_oled.c:182: oled_command(0xAE);
      00055A 75 82 AE         [24]  936 	mov	dpl, #0xae
      00055D 12 04 94         [24]  937 	lcall	_oled_command
                                    938 ;	my_oled.c:183: oled_command(0xD5);
      000560 75 82 D5         [24]  939 	mov	dpl, #0xd5
      000563 12 04 94         [24]  940 	lcall	_oled_command
                                    941 ;	my_oled.c:184: oled_command(0x80);
      000566 75 82 80         [24]  942 	mov	dpl, #0x80
      000569 12 04 94         [24]  943 	lcall	_oled_command
                                    944 ;	my_oled.c:185: oled_command(0xA8);
      00056C 75 82 A8         [24]  945 	mov	dpl, #0xa8
      00056F 12 04 94         [24]  946 	lcall	_oled_command
                                    947 ;	my_oled.c:186: oled_command(0x3F);
      000572 75 82 3F         [24]  948 	mov	dpl, #0x3f
      000575 12 04 94         [24]  949 	lcall	_oled_command
                                    950 ;	my_oled.c:187: oled_command(0xD3);
      000578 75 82 D3         [24]  951 	mov	dpl, #0xd3
      00057B 12 04 94         [24]  952 	lcall	_oled_command
                                    953 ;	my_oled.c:188: oled_command(0x00);
      00057E 75 82 00         [24]  954 	mov	dpl, #0x00
      000581 12 04 94         [24]  955 	lcall	_oled_command
                                    956 ;	my_oled.c:189: oled_command(0x40);
      000584 75 82 40         [24]  957 	mov	dpl, #0x40
      000587 12 04 94         [24]  958 	lcall	_oled_command
                                    959 ;	my_oled.c:190: oled_command(0x8D);
      00058A 75 82 8D         [24]  960 	mov	dpl, #0x8d
      00058D 12 04 94         [24]  961 	lcall	_oled_command
                                    962 ;	my_oled.c:191: oled_command(0x14);
      000590 75 82 14         [24]  963 	mov	dpl, #0x14
      000593 12 04 94         [24]  964 	lcall	_oled_command
                                    965 ;	my_oled.c:192: oled_command(0x20);
      000596 75 82 20         [24]  966 	mov	dpl, #0x20
      000599 12 04 94         [24]  967 	lcall	_oled_command
                                    968 ;	my_oled.c:193: oled_command(0x02);
      00059C 75 82 02         [24]  969 	mov	dpl, #0x02
      00059F 12 04 94         [24]  970 	lcall	_oled_command
                                    971 ;	my_oled.c:194: oled_command(0xA1);
      0005A2 75 82 A1         [24]  972 	mov	dpl, #0xa1
      0005A5 12 04 94         [24]  973 	lcall	_oled_command
                                    974 ;	my_oled.c:195: oled_command(0xC8);
      0005A8 75 82 C8         [24]  975 	mov	dpl, #0xc8
      0005AB 12 04 94         [24]  976 	lcall	_oled_command
                                    977 ;	my_oled.c:196: oled_command(0xDA);
      0005AE 75 82 DA         [24]  978 	mov	dpl, #0xda
      0005B1 12 04 94         [24]  979 	lcall	_oled_command
                                    980 ;	my_oled.c:197: oled_command(0x12);
      0005B4 75 82 12         [24]  981 	mov	dpl, #0x12
      0005B7 12 04 94         [24]  982 	lcall	_oled_command
                                    983 ;	my_oled.c:198: oled_command(0x81);
      0005BA 75 82 81         [24]  984 	mov	dpl, #0x81
      0005BD 12 04 94         [24]  985 	lcall	_oled_command
                                    986 ;	my_oled.c:199: oled_command(0x7F);
      0005C0 75 82 7F         [24]  987 	mov	dpl, #0x7f
      0005C3 12 04 94         [24]  988 	lcall	_oled_command
                                    989 ;	my_oled.c:200: oled_command(0xD9);
      0005C6 75 82 D9         [24]  990 	mov	dpl, #0xd9
      0005C9 12 04 94         [24]  991 	lcall	_oled_command
                                    992 ;	my_oled.c:201: oled_command(0xF1);
      0005CC 75 82 F1         [24]  993 	mov	dpl, #0xf1
      0005CF 12 04 94         [24]  994 	lcall	_oled_command
                                    995 ;	my_oled.c:202: oled_command(0xDB);
      0005D2 75 82 DB         [24]  996 	mov	dpl, #0xdb
      0005D5 12 04 94         [24]  997 	lcall	_oled_command
                                    998 ;	my_oled.c:203: oled_command(0x40);
      0005D8 75 82 40         [24]  999 	mov	dpl, #0x40
      0005DB 12 04 94         [24] 1000 	lcall	_oled_command
                                   1001 ;	my_oled.c:204: oled_command(0xA4);
      0005DE 75 82 A4         [24] 1002 	mov	dpl, #0xa4
      0005E1 12 04 94         [24] 1003 	lcall	_oled_command
                                   1004 ;	my_oled.c:205: oled_command(0xA6);
      0005E4 75 82 A6         [24] 1005 	mov	dpl, #0xa6
      0005E7 12 04 94         [24] 1006 	lcall	_oled_command
                                   1007 ;	my_oled.c:207: oled_clear();
      0005EA 12 04 FB         [24] 1008 	lcall	_oled_clear
                                   1009 ;	my_oled.c:208: oled_command(0xAF);
      0005ED 75 82 AF         [24] 1010 	mov	dpl, #0xaf
      0005F0 12 04 94         [24] 1011 	lcall	_oled_command
                                   1012 ;	my_oled.c:209: oled_set_position(0, 0);
      0005F3 75 3E 00         [24] 1013 	mov	_oled_set_position_PARM_2,#0x00
      0005F6 75 82 00         [24] 1014 	mov	dpl, #0x00
                                   1015 ;	my_oled.c:210: }
      0005F9 02 04 BE         [24] 1016 	ljmp	_oled_set_position
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'oled_char'
                                   1019 ;------------------------------------------------------------
                                   1020 ;c             Allocated to registers r7 
                                   1021 ;i             Allocated to registers r5 
                                   1022 ;index         Allocated to registers r6 
                                   1023 ;data          Allocated with name '_oled_char_data_10000_47'
                                   1024 ;------------------------------------------------------------
                                   1025 ;	my_oled.c:212: void oled_char(unsigned char c)
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function oled_char
                                   1028 ;	-----------------------------------------
      0005FC                       1029 _oled_char:
      0005FC AF 82            [24] 1030 	mov	r7, dpl
                                   1031 ;	my_oled.c:218: if(c >= 'a' && c <= 'z')
      0005FE BF 61 00         [24] 1032 	cjne	r7,#0x61,00513$
      000601                       1033 00513$:
      000601 40 0B            [24] 1034 	jc	00102$
      000603 EF               [12] 1035 	mov	a,r7
      000604 24 85            [12] 1036 	add	a,#0xff - 0x7a
      000606 40 06            [24] 1037 	jc	00102$
                                   1038 ;	free result
                                   1039 ;	my_oled.c:219: c -= ('a' - 'A');
      000608 8F 06            [24] 1040 	mov	ar6,r7
      00060A EE               [12] 1041 	mov	a,r6
      00060B 24 E0            [12] 1042 	add	a,#0xe0
      00060D FF               [12] 1043 	mov	r7,a
      00060E                       1044 00102$:
                                   1045 ;	my_oled.c:221: for(i = 0; i < 6; i++)
      00060E 7E 00            [12] 1046 	mov	r6,#0x00
      000610                       1047 00153$:
                                   1048 ;	my_oled.c:222: data[i] = 0x00;
      000610 EE               [12] 1049 	mov	a,r6
      000611 24 4F            [12] 1050 	add	a, #_oled_char_data_10000_47
      000613 F8               [12] 1051 	mov	r0,a
      000614 76 00            [12] 1052 	mov	@r0,#0x00
                                   1053 ;	my_oled.c:221: for(i = 0; i < 6; i++)
      000616 0E               [12] 1054 	inc	r6
      000617 BE 06 00         [24] 1055 	cjne	r6,#0x06,00516$
      00061A                       1056 00516$:
      00061A 40 F4            [24] 1057 	jc	00153$
                                   1058 ;	my_oled.c:224: if(c >= 'A' && c <= 'Z')
      00061C BF 41 00         [24] 1059 	cjne	r7,#0x41,00518$
      00061F                       1060 00518$:
      00061F 40 30            [24] 1061 	jc	00142$
      000621 EF               [12] 1062 	mov	a,r7
      000622 24 A5            [12] 1063 	add	a,#0xff - 0x5a
      000624 40 2B            [24] 1064 	jc	00142$
                                   1065 ;	free result
                                   1066 ;	my_oled.c:226: index = c - 'A';
      000626 8F 06            [24] 1067 	mov	ar6,r7
      000628 EE               [12] 1068 	mov	a,r6
      000629 24 BF            [12] 1069 	add	a,#0xbf
                                   1070 ;	my_oled.c:228: for(i = 0; i < 5; i++)
      00062B 7D 00            [12] 1071 	mov	r5,#0x00
      00062D 75 F0 05         [24] 1072 	mov	b,#0x05
      000630 A4               [48] 1073 	mul	ab
      000631 24 30            [12] 1074 	add	a, #_font5x7
      000633 FC               [12] 1075 	mov	r4,a
      000634 74 0C            [12] 1076 	mov	a,#(_font5x7 >> 8)
      000636 35 F0            [12] 1077 	addc	a, b
      000638 FE               [12] 1078 	mov	r6,a
      000639                       1079 00155$:
                                   1080 ;	my_oled.c:229: data[i] = font5x7[index][i];
      000639 ED               [12] 1081 	mov	a,r5
      00063A 24 4F            [12] 1082 	add	a, #_oled_char_data_10000_47
      00063C F9               [12] 1083 	mov	r1,a
      00063D ED               [12] 1084 	mov	a,r5
      00063E 2C               [12] 1085 	add	a, r4
      00063F F5 82            [12] 1086 	mov	dpl,a
      000641 E4               [12] 1087 	clr	a
      000642 3E               [12] 1088 	addc	a, r6
      000643 F5 83            [12] 1089 	mov	dph,a
      000645 E4               [12] 1090 	clr	a
      000646 93               [24] 1091 	movc	a,@a+dptr
      000647 F7               [12] 1092 	mov	@r1,a
                                   1093 ;	my_oled.c:228: for(i = 0; i < 5; i++)
      000648 0D               [12] 1094 	inc	r5
      000649 BD 05 00         [24] 1095 	cjne	r5,#0x05,00521$
      00064C                       1096 00521$:
      00064C 40 EB            [24] 1097 	jc	00155$
      00064E 02 08 69         [24] 1098 	ljmp	00143$
      000651                       1099 00142$:
                                   1100 ;	my_oled.c:231: else if(c >= '0' && c <= '9')
      000651 BF 30 00         [24] 1101 	cjne	r7,#0x30,00523$
      000654                       1102 00523$:
      000654 40 30            [24] 1103 	jc	00138$
      000656 EF               [12] 1104 	mov	a,r7
      000657 24 C6            [12] 1105 	add	a,#0xff - 0x39
      000659 40 2B            [24] 1106 	jc	00138$
                                   1107 ;	free result
                                   1108 ;	my_oled.c:233: index = 26 + c - '0';
      00065B 8F 06            [24] 1109 	mov	ar6,r7
      00065D 74 EA            [12] 1110 	mov	a,#0xea
      00065F 2E               [12] 1111 	add	a, r6
                                   1112 ;	my_oled.c:235: for(i = 0; i < 5; i++)
      000660 7D 00            [12] 1113 	mov	r5,#0x00
      000662 75 F0 05         [24] 1114 	mov	b,#0x05
      000665 A4               [48] 1115 	mul	ab
      000666 24 30            [12] 1116 	add	a, #_font5x7
      000668 FC               [12] 1117 	mov	r4,a
      000669 74 0C            [12] 1118 	mov	a,#(_font5x7 >> 8)
      00066B 35 F0            [12] 1119 	addc	a, b
      00066D FE               [12] 1120 	mov	r6,a
      00066E                       1121 00157$:
                                   1122 ;	my_oled.c:236: data[i] = font5x7[index][i];
      00066E ED               [12] 1123 	mov	a,r5
      00066F 24 4F            [12] 1124 	add	a, #_oled_char_data_10000_47
      000671 F9               [12] 1125 	mov	r1,a
      000672 ED               [12] 1126 	mov	a,r5
      000673 2C               [12] 1127 	add	a, r4
      000674 F5 82            [12] 1128 	mov	dpl,a
      000676 E4               [12] 1129 	clr	a
      000677 3E               [12] 1130 	addc	a, r6
      000678 F5 83            [12] 1131 	mov	dph,a
      00067A E4               [12] 1132 	clr	a
      00067B 93               [24] 1133 	movc	a,@a+dptr
      00067C F7               [12] 1134 	mov	@r1,a
                                   1135 ;	my_oled.c:235: for(i = 0; i < 5; i++)
      00067D 0D               [12] 1136 	inc	r5
      00067E BD 05 00         [24] 1137 	cjne	r5,#0x05,00526$
      000681                       1138 00526$:
      000681 40 EB            [24] 1139 	jc	00157$
      000683 02 08 69         [24] 1140 	ljmp	00143$
      000686                       1141 00138$:
                                   1142 ;	my_oled.c:240: switch(c)
      000686 BF 20 03         [24] 1143 	cjne	r7,#0x20,00528$
      000689 02 08 69         [24] 1144 	ljmp	00143$
      00068C                       1145 00528$:
      00068C BF 21 03         [24] 1146 	cjne	r7,#0x21,00529$
      00068F 02 07 6C         [24] 1147 	ljmp	00113$
      000692                       1148 00529$:
      000692 BF 22 03         [24] 1149 	cjne	r7,#0x22,00530$
      000695 02 07 EF         [24] 1150 	ljmp	00123$
      000698                       1151 00530$:
      000698 BF 23 03         [24] 1152 	cjne	r7,#0x23,00531$
      00069B 02 08 02         [24] 1153 	ljmp	00125$
      00069E                       1154 00531$:
      00069E BF 25 03         [24] 1155 	cjne	r7,#0x25,00532$
      0006A1 02 07 D8         [24] 1156 	ljmp	00121$
      0006A4                       1157 00532$:
      0006A4 BF 27 03         [24] 1158 	cjne	r7,#0x27,00533$
      0006A7 02 07 EA         [24] 1159 	ljmp	00122$
      0006AA                       1160 00533$:
      0006AA BF 28 03         [24] 1161 	cjne	r7,#0x28,00534$
      0006AD 02 07 C0         [24] 1162 	ljmp	00119$
      0006B0                       1163 00534$:
      0006B0 BF 29 03         [24] 1164 	cjne	r7,#0x29,00535$
      0006B3 02 07 CC         [24] 1165 	ljmp	00120$
      0006B6                       1166 00535$:
      0006B6 BF 2A 03         [24] 1167 	cjne	r7,#0x2a,00536$
      0006B9 02 07 F7         [24] 1168 	ljmp	00124$
      0006BC                       1169 00536$:
      0006BC BF 2B 03         [24] 1170 	cjne	r7,#0x2b,00537$
      0006BF 02 07 A8         [24] 1171 	ljmp	00117$
      0006C2                       1172 00537$:
      0006C2 BF 2C 02         [24] 1173 	cjne	r7,#0x2c,00538$
      0006C5 80 69            [24] 1174 	sjmp	00108$
      0006C7                       1175 00538$:
      0006C7 BF 2D 02         [24] 1176 	cjne	r7,#0x2d,00539$
      0006CA 80 7C            [24] 1177 	sjmp	00111$
      0006CC                       1178 00539$:
      0006CC BF 2E 02         [24] 1179 	cjne	r7,#0x2e,00540$
      0006CF 80 59            [24] 1180 	sjmp	00107$
      0006D1                       1181 00540$:
      0006D1 BF 2F 03         [24] 1182 	cjne	r7,#0x2f,00541$
      0006D4 02 07 84         [24] 1183 	ljmp	00115$
      0006D7                       1184 00541$:
      0006D7 BF 3A 02         [24] 1185 	cjne	r7,#0x3a,00542$
      0006DA 80 5D            [24] 1186 	sjmp	00109$
      0006DC                       1187 00542$:
      0006DC BF 3B 02         [24] 1188 	cjne	r7,#0x3b,00543$
      0006DF 80 5E            [24] 1189 	sjmp	00110$
      0006E1                       1190 00543$:
      0006E1 BF 3C 03         [24] 1191 	cjne	r7,#0x3c,00544$
      0006E4 02 08 13         [24] 1192 	ljmp	00126$
      0006E7                       1193 00544$:
      0006E7 BF 3D 03         [24] 1194 	cjne	r7,#0x3d,00545$
      0006EA 02 07 B4         [24] 1195 	ljmp	00118$
      0006ED                       1196 00545$:
      0006ED BF 3E 03         [24] 1197 	cjne	r7,#0x3e,00546$
      0006F0 02 08 21         [24] 1198 	ljmp	00127$
      0006F3                       1199 00546$:
      0006F3 BF 3F 02         [24] 1200 	cjne	r7,#0x3f,00547$
      0006F6 80 7A            [24] 1201 	sjmp	00114$
      0006F8                       1202 00547$:
      0006F8 BF 5B 03         [24] 1203 	cjne	r7,#0x5b,00548$
      0006FB 02 08 34         [24] 1204 	ljmp	00129$
      0006FE                       1205 00548$:
      0006FE BF 5C 03         [24] 1206 	cjne	r7,#0x5c,00549$
      000701 02 07 96         [24] 1207 	ljmp	00116$
      000704                       1208 00549$:
      000704 BF 5D 03         [24] 1209 	cjne	r7,#0x5d,00550$
      000707 02 08 3C         [24] 1210 	ljmp	00130$
      00070A                       1211 00550$:
      00070A BF 5F 02         [24] 1212 	cjne	r7,#0x5f,00551$
      00070D 80 4B            [24] 1213 	sjmp	00112$
      00070F                       1214 00551$:
      00070F BF 7B 03         [24] 1215 	cjne	r7,#0x7b,00552$
      000712 02 08 44         [24] 1216 	ljmp	00131$
      000715                       1217 00552$:
      000715 BF 7C 03         [24] 1218 	cjne	r7,#0x7c,00553$
      000718 02 08 2F         [24] 1219 	ljmp	00128$
      00071B                       1220 00553$:
      00071B BF 7D 03         [24] 1221 	cjne	r7,#0x7d,00554$
      00071E 02 08 4F         [24] 1222 	ljmp	00132$
      000721                       1223 00554$:
      000721 BF 7E 03         [24] 1224 	cjne	r7,#0x7e,00555$
      000724 02 08 5A         [24] 1225 	ljmp	00133$
      000727                       1226 00555$:
      000727 02 08 69         [24] 1227 	ljmp	00143$
                                   1228 ;	my_oled.c:242: case '.':
      00072A                       1229 00107$:
                                   1230 ;	my_oled.c:243: data[2] = 0x60;
      00072A 75 51 60         [24] 1231 	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
                                   1232 ;	my_oled.c:244: break;
      00072D 02 08 69         [24] 1233 	ljmp	00143$
                                   1234 ;	my_oled.c:246: case ',':
      000730                       1235 00108$:
                                   1236 ;	my_oled.c:247: data[2] = 0x60;
      000730 75 51 60         [24] 1237 	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
                                   1238 ;	my_oled.c:248: data[3] = 0x40;
      000733 75 52 40         [24] 1239 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1240 ;	my_oled.c:249: break;
      000736 02 08 69         [24] 1241 	ljmp	00143$
                                   1242 ;	my_oled.c:251: case ':':
      000739                       1243 00109$:
                                   1244 ;	my_oled.c:252: data[2] = 0x36;
      000739 75 51 36         [24] 1245 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1246 ;	my_oled.c:253: break;
      00073C 02 08 69         [24] 1247 	ljmp	00143$
                                   1248 ;	my_oled.c:255: case ';':
      00073F                       1249 00110$:
                                   1250 ;	my_oled.c:256: data[2] = 0x36;
      00073F 75 51 36         [24] 1251 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1252 ;	my_oled.c:257: data[3] = 0x40;
      000742 75 52 40         [24] 1253 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1254 ;	my_oled.c:258: break;
      000745 02 08 69         [24] 1255 	ljmp	00143$
                                   1256 ;	my_oled.c:260: case '-':
      000748                       1257 00111$:
                                   1258 ;	my_oled.c:261: data[0] = 0x08;
      000748 75 4F 08         [24] 1259 	mov	_oled_char_data_10000_47,#0x08
                                   1260 ;	my_oled.c:262: data[1] = 0x08;
      00074B 75 50 08         [24] 1261 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1262 ;	my_oled.c:263: data[2] = 0x08;
      00074E 75 51 08         [24] 1263 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1264 ;	my_oled.c:264: data[3] = 0x08;
      000751 75 52 08         [24] 1265 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1266 ;	my_oled.c:265: data[4] = 0x08;
      000754 75 53 08         [24] 1267 	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
                                   1268 ;	my_oled.c:266: break;
      000757 02 08 69         [24] 1269 	ljmp	00143$
                                   1270 ;	my_oled.c:268: case '_':
      00075A                       1271 00112$:
                                   1272 ;	my_oled.c:269: data[0] = 0x40;
      00075A 75 4F 40         [24] 1273 	mov	_oled_char_data_10000_47,#0x40
                                   1274 ;	my_oled.c:270: data[1] = 0x40;
      00075D 75 50 40         [24] 1275 	mov	(_oled_char_data_10000_47 + 0x0001),#0x40
                                   1276 ;	my_oled.c:271: data[2] = 0x40;
      000760 75 51 40         [24] 1277 	mov	(_oled_char_data_10000_47 + 0x0002),#0x40
                                   1278 ;	my_oled.c:272: data[3] = 0x40;
      000763 75 52 40         [24] 1279 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1280 ;	my_oled.c:273: data[4] = 0x40;
      000766 75 53 40         [24] 1281 	mov	(_oled_char_data_10000_47 + 0x0004),#0x40
                                   1282 ;	my_oled.c:274: break;
      000769 02 08 69         [24] 1283 	ljmp	00143$
                                   1284 ;	my_oled.c:276: case '!':
      00076C                       1285 00113$:
                                   1286 ;	my_oled.c:277: data[2] = 0x5F;
      00076C 75 51 5F         [24] 1287 	mov	(_oled_char_data_10000_47 + 0x0002),#0x5f
                                   1288 ;	my_oled.c:278: break;
      00076F 02 08 69         [24] 1289 	ljmp	00143$
                                   1290 ;	my_oled.c:280: case '?':
      000772                       1291 00114$:
                                   1292 ;	my_oled.c:281: data[0] = 0x02;
      000772 75 4F 02         [24] 1293 	mov	_oled_char_data_10000_47,#0x02
                                   1294 ;	my_oled.c:282: data[1] = 0x01;
      000775 75 50 01         [24] 1295 	mov	(_oled_char_data_10000_47 + 0x0001),#0x01
                                   1296 ;	my_oled.c:283: data[2] = 0x51;
      000778 75 51 51         [24] 1297 	mov	(_oled_char_data_10000_47 + 0x0002),#0x51
                                   1298 ;	my_oled.c:284: data[3] = 0x09;
      00077B 75 52 09         [24] 1299 	mov	(_oled_char_data_10000_47 + 0x0003),#0x09
                                   1300 ;	my_oled.c:285: data[4] = 0x06;
      00077E 75 53 06         [24] 1301 	mov	(_oled_char_data_10000_47 + 0x0004),#0x06
                                   1302 ;	my_oled.c:286: break;
      000781 02 08 69         [24] 1303 	ljmp	00143$
                                   1304 ;	my_oled.c:288: case '/':
      000784                       1305 00115$:
                                   1306 ;	my_oled.c:289: data[0] = 0x20;
      000784 75 4F 20         [24] 1307 	mov	_oled_char_data_10000_47,#0x20
                                   1308 ;	my_oled.c:290: data[1] = 0x10;
      000787 75 50 10         [24] 1309 	mov	(_oled_char_data_10000_47 + 0x0001),#0x10
                                   1310 ;	my_oled.c:291: data[2] = 0x08;
      00078A 75 51 08         [24] 1311 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1312 ;	my_oled.c:292: data[3] = 0x04;
      00078D 75 52 04         [24] 1313 	mov	(_oled_char_data_10000_47 + 0x0003),#0x04
                                   1314 ;	my_oled.c:293: data[4] = 0x02;
      000790 75 53 02         [24] 1315 	mov	(_oled_char_data_10000_47 + 0x0004),#0x02
                                   1316 ;	my_oled.c:294: break;
      000793 02 08 69         [24] 1317 	ljmp	00143$
                                   1318 ;	my_oled.c:296: case '\\':
      000796                       1319 00116$:
                                   1320 ;	my_oled.c:297: data[0] = 0x02;
      000796 75 4F 02         [24] 1321 	mov	_oled_char_data_10000_47,#0x02
                                   1322 ;	my_oled.c:298: data[1] = 0x04;
      000799 75 50 04         [24] 1323 	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
                                   1324 ;	my_oled.c:299: data[2] = 0x08;
      00079C 75 51 08         [24] 1325 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1326 ;	my_oled.c:300: data[3] = 0x10;
      00079F 75 52 10         [24] 1327 	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
                                   1328 ;	my_oled.c:301: data[4] = 0x20;
      0007A2 75 53 20         [24] 1329 	mov	(_oled_char_data_10000_47 + 0x0004),#0x20
                                   1330 ;	my_oled.c:302: break;
      0007A5 02 08 69         [24] 1331 	ljmp	00143$
                                   1332 ;	my_oled.c:304: case '+':
      0007A8                       1333 00117$:
                                   1334 ;	my_oled.c:305: data[1] = 0x08;
      0007A8 75 50 08         [24] 1335 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1336 ;	my_oled.c:306: data[2] = 0x1C;
      0007AB 75 51 1C         [24] 1337 	mov	(_oled_char_data_10000_47 + 0x0002),#0x1c
                                   1338 ;	my_oled.c:307: data[3] = 0x08;
      0007AE 75 52 08         [24] 1339 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1340 ;	my_oled.c:308: break;
      0007B1 02 08 69         [24] 1341 	ljmp	00143$
                                   1342 ;	my_oled.c:310: case '=':
      0007B4                       1343 00118$:
                                   1344 ;	my_oled.c:311: data[1] = 0x14;
      0007B4 75 50 14         [24] 1345 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1346 ;	my_oled.c:312: data[2] = 0x14;
      0007B7 75 51 14         [24] 1347 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1348 ;	my_oled.c:313: data[3] = 0x14;
      0007BA 75 52 14         [24] 1349 	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
                                   1350 ;	my_oled.c:314: break;
      0007BD 02 08 69         [24] 1351 	ljmp	00143$
                                   1352 ;	my_oled.c:316: case '(':
      0007C0                       1353 00119$:
                                   1354 ;	my_oled.c:317: data[1] = 0x1C;
      0007C0 75 50 1C         [24] 1355 	mov	(_oled_char_data_10000_47 + 0x0001),#0x1c
                                   1356 ;	my_oled.c:318: data[2] = 0x22;
      0007C3 75 51 22         [24] 1357 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1358 ;	my_oled.c:319: data[3] = 0x41;
      0007C6 75 52 41         [24] 1359 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1360 ;	my_oled.c:320: break;
      0007C9 02 08 69         [24] 1361 	ljmp	00143$
                                   1362 ;	my_oled.c:322: case ')':
      0007CC                       1363 00120$:
                                   1364 ;	my_oled.c:323: data[1] = 0x41;
      0007CC 75 50 41         [24] 1365 	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
                                   1366 ;	my_oled.c:324: data[2] = 0x22;
      0007CF 75 51 22         [24] 1367 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1368 ;	my_oled.c:325: data[3] = 0x1C;
      0007D2 75 52 1C         [24] 1369 	mov	(_oled_char_data_10000_47 + 0x0003),#0x1c
                                   1370 ;	my_oled.c:326: break;
      0007D5 02 08 69         [24] 1371 	ljmp	00143$
                                   1372 ;	my_oled.c:328: case '%':
      0007D8                       1373 00121$:
                                   1374 ;	my_oled.c:329: data[0] = 0x23;
      0007D8 75 4F 23         [24] 1375 	mov	_oled_char_data_10000_47,#0x23
                                   1376 ;	my_oled.c:330: data[1] = 0x13;
      0007DB 75 50 13         [24] 1377 	mov	(_oled_char_data_10000_47 + 0x0001),#0x13
                                   1378 ;	my_oled.c:331: data[2] = 0x08;
      0007DE 75 51 08         [24] 1379 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1380 ;	my_oled.c:332: data[3] = 0x64;
      0007E1 75 52 64         [24] 1381 	mov	(_oled_char_data_10000_47 + 0x0003),#0x64
                                   1382 ;	my_oled.c:333: data[4] = 0x62;
      0007E4 75 53 62         [24] 1383 	mov	(_oled_char_data_10000_47 + 0x0004),#0x62
                                   1384 ;	my_oled.c:334: break;
      0007E7 02 08 69         [24] 1385 	ljmp	00143$
                                   1386 ;	my_oled.c:336: case '\'':
      0007EA                       1387 00122$:
                                   1388 ;	my_oled.c:337: data[2] = 0x07;
      0007EA 75 51 07         [24] 1389 	mov	(_oled_char_data_10000_47 + 0x0002),#0x07
                                   1390 ;	my_oled.c:338: break;
                                   1391 ;	my_oled.c:340: case 0x22:     /* for char ' " ' */
      0007ED 80 7A            [24] 1392 	sjmp	00143$
      0007EF                       1393 00123$:
                                   1394 ;	my_oled.c:341: data[1] = 0x03;
      0007EF 75 50 03         [24] 1395 	mov	(_oled_char_data_10000_47 + 0x0001),#0x03
                                   1396 ;	my_oled.c:342: data[3] = 0x03;
      0007F2 75 52 03         [24] 1397 	mov	(_oled_char_data_10000_47 + 0x0003),#0x03
                                   1398 ;	my_oled.c:343: break;
                                   1399 ;	my_oled.c:345: case '*':
      0007F5 80 72            [24] 1400 	sjmp	00143$
      0007F7                       1401 00124$:
                                   1402 ;	my_oled.c:346: data[1] = 0x14;
      0007F7 75 50 14         [24] 1403 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1404 ;	my_oled.c:347: data[2] = 0x08;
      0007FA 75 51 08         [24] 1405 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1406 ;	my_oled.c:348: data[3] = 0x14;
      0007FD 75 52 14         [24] 1407 	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
                                   1408 ;	my_oled.c:349: break;
                                   1409 ;	my_oled.c:351: case '#':
      000800 80 67            [24] 1410 	sjmp	00143$
      000802                       1411 00125$:
                                   1412 ;	my_oled.c:352: data[0] = 0x14;
      000802 75 4F 14         [24] 1413 	mov	_oled_char_data_10000_47,#0x14
                                   1414 ;	my_oled.c:353: data[1] = 0x7F;
      000805 75 50 7F         [24] 1415 	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
                                   1416 ;	my_oled.c:354: data[2] = 0x14;
      000808 75 51 14         [24] 1417 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1418 ;	my_oled.c:355: data[3] = 0x7F;
      00080B 75 52 7F         [24] 1419 	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
                                   1420 ;	my_oled.c:356: data[4] = 0x14;
      00080E 75 53 14         [24] 1421 	mov	(_oled_char_data_10000_47 + 0x0004),#0x14
                                   1422 ;	my_oled.c:357: break;
                                   1423 ;	my_oled.c:359: case '<':
      000811 80 56            [24] 1424 	sjmp	00143$
      000813                       1425 00126$:
                                   1426 ;	my_oled.c:360: data[0] = 0x08;
      000813 75 4F 08         [24] 1427 	mov	_oled_char_data_10000_47,#0x08
                                   1428 ;	my_oled.c:361: data[1] = 0x14;
      000816 75 50 14         [24] 1429 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1430 ;	my_oled.c:362: data[2] = 0x22;
      000819 75 51 22         [24] 1431 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1432 ;	my_oled.c:363: data[3] = 0x41;
      00081C 75 52 41         [24] 1433 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1434 ;	my_oled.c:364: break;
                                   1435 ;	my_oled.c:366: case '>':
      00081F 80 48            [24] 1436 	sjmp	00143$
      000821                       1437 00127$:
                                   1438 ;	my_oled.c:367: data[0] = 0x41;
      000821 75 4F 41         [24] 1439 	mov	_oled_char_data_10000_47,#0x41
                                   1440 ;	my_oled.c:368: data[1] = 0x22;
      000824 75 50 22         [24] 1441 	mov	(_oled_char_data_10000_47 + 0x0001),#0x22
                                   1442 ;	my_oled.c:369: data[2] = 0x14;
      000827 75 51 14         [24] 1443 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1444 ;	my_oled.c:370: data[3] = 0x08;
      00082A 75 52 08         [24] 1445 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1446 ;	my_oled.c:371: break;
                                   1447 ;	my_oled.c:373: case '|':
      00082D 80 3A            [24] 1448 	sjmp	00143$
      00082F                       1449 00128$:
                                   1450 ;	my_oled.c:374: data[2] = 0x7F;
      00082F 75 51 7F         [24] 1451 	mov	(_oled_char_data_10000_47 + 0x0002),#0x7f
                                   1452 ;	my_oled.c:375: break;
                                   1453 ;	my_oled.c:377: case '[':
      000832 80 35            [24] 1454 	sjmp	00143$
      000834                       1455 00129$:
                                   1456 ;	my_oled.c:378: data[1] = 0x7F;
      000834 75 50 7F         [24] 1457 	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
                                   1458 ;	my_oled.c:379: data[2] = 0x41;
      000837 75 51 41         [24] 1459 	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
                                   1460 ;	my_oled.c:380: break;
                                   1461 ;	my_oled.c:382: case ']':
      00083A 80 2D            [24] 1462 	sjmp	00143$
      00083C                       1463 00130$:
                                   1464 ;	my_oled.c:383: data[2] = 0x41;
      00083C 75 51 41         [24] 1465 	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
                                   1466 ;	my_oled.c:384: data[3] = 0x7F;
      00083F 75 52 7F         [24] 1467 	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
                                   1468 ;	my_oled.c:385: break;
                                   1469 ;	my_oled.c:387: case '{':
      000842 80 25            [24] 1470 	sjmp	00143$
      000844                       1471 00131$:
                                   1472 ;	my_oled.c:388: data[1] = 0x08;
      000844 75 50 08         [24] 1473 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1474 ;	my_oled.c:389: data[2] = 0x36;
      000847 75 51 36         [24] 1475 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1476 ;	my_oled.c:390: data[3] = 0x41;
      00084A 75 52 41         [24] 1477 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1478 ;	my_oled.c:391: break;
                                   1479 ;	my_oled.c:393: case '}':
      00084D 80 1A            [24] 1480 	sjmp	00143$
      00084F                       1481 00132$:
                                   1482 ;	my_oled.c:394: data[1] = 0x41;
      00084F 75 50 41         [24] 1483 	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
                                   1484 ;	my_oled.c:395: data[2] = 0x36;
      000852 75 51 36         [24] 1485 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1486 ;	my_oled.c:396: data[3] = 0x08;
      000855 75 52 08         [24] 1487 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1488 ;	my_oled.c:397: break;
                                   1489 ;	my_oled.c:399: case '~':
      000858 80 0F            [24] 1490 	sjmp	00143$
      00085A                       1491 00133$:
                                   1492 ;	my_oled.c:400: data[0] = 0x08;
      00085A 75 4F 08         [24] 1493 	mov	_oled_char_data_10000_47,#0x08
                                   1494 ;	my_oled.c:401: data[1] = 0x04;
      00085D 75 50 04         [24] 1495 	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
                                   1496 ;	my_oled.c:402: data[2] = 0x08;
      000860 75 51 08         [24] 1497 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1498 ;	my_oled.c:403: data[3] = 0x10;
      000863 75 52 10         [24] 1499 	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
                                   1500 ;	my_oled.c:404: data[4] = 0x08;
      000866 75 53 08         [24] 1501 	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
                                   1502 ;	my_oled.c:410: }
      000869                       1503 00143$:
                                   1504 ;	my_oled.c:413: if((unsigned int)oled_column + 6 > 128)
      000869 AE 37            [24] 1505 	mov	r6,_oled_column
      00086B 7F 00            [12] 1506 	mov	r7,#0x00
      00086D 74 06            [12] 1507 	mov	a,#0x06
      00086F 2E               [12] 1508 	add	a, r6
      000870 FE               [12] 1509 	mov	r6,a
      000871 E4               [12] 1510 	clr	a
      000872 3F               [12] 1511 	addc	a, r7
      000873 FF               [12] 1512 	mov	r7,a
      000874 C3               [12] 1513 	clr	c
      000875 74 80            [12] 1514 	mov	a,#0x80
      000877 9E               [12] 1515 	subb	a,r6
      000878 E4               [12] 1516 	clr	a
      000879 9F               [12] 1517 	subb	a,r7
      00087A 50 17            [24] 1518 	jnc	00148$
                                   1519 ;	free result
                                   1520 ;	my_oled.c:415: oled_page++;
      00087C 05 36            [12] 1521 	inc	_oled_page
                                   1522 ;	my_oled.c:416: oled_column = 0;
      00087E 75 37 00         [24] 1523 	mov	_oled_column,#0x00
                                   1524 ;	my_oled.c:418: if(oled_page > 7)
      000881 E5 36            [12] 1525 	mov	a,_oled_page
      000883 24 F8            [12] 1526 	add	a,#0xff - 0x07
      000885 50 03            [24] 1527 	jnc	00146$
                                   1528 ;	free result
                                   1529 ;	my_oled.c:419: oled_page = 0;
      000887 75 36 00         [24] 1530 	mov	_oled_page,#0x00
      00088A                       1531 00146$:
                                   1532 ;	my_oled.c:421: oled_set_position(oled_page, oled_column);
      00088A 75 3E 00         [24] 1533 	mov	_oled_set_position_PARM_2,#0x00
      00088D 85 36 82         [24] 1534 	mov	dpl, _oled_page
      000890 12 04 BE         [24] 1535 	lcall	_oled_set_position
      000893                       1536 00148$:
                                   1537 ;	my_oled.c:424: i2c_write_transaction(0x40, data, 6);
      000893 75 38 4F         [24] 1538 	mov	_i2c_write_transaction_PARM_2,#_oled_char_data_10000_47
      000896 75 39 00         [24] 1539 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000899 75 3A 40         [24] 1540 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      00089C 75 3B 06         [24] 1541 	mov	_i2c_write_transaction_PARM_3,#0x06
      00089F 75 82 40         [24] 1542 	mov	dpl, #0x40
      0008A2 12 04 2C         [24] 1543 	lcall	_i2c_write_transaction
                                   1544 ;	my_oled.c:425: oled_column += 6;
      0008A5 AF 37            [24] 1545 	mov	r7,_oled_column
      0008A7 74 06            [12] 1546 	mov	a,#0x06
      0008A9 2F               [12] 1547 	add	a, r7
                                   1548 ;	my_oled.c:427: if(oled_column >= 128)
      0008AA F5 37            [12] 1549 	mov	_oled_column,a
      0008AC C3               [12] 1550 	clr	c
      0008AD 94 80            [12] 1551 	subb	a,#0x80
      0008AF 40 17            [24] 1552 	jc	00159$
                                   1553 ;	my_oled.c:429: oled_column = 0;
      0008B1 75 37 00         [24] 1554 	mov	_oled_column,#0x00
                                   1555 ;	my_oled.c:430: oled_page++;
      0008B4 05 36            [12] 1556 	inc	_oled_page
                                   1557 ;	my_oled.c:432: if(oled_page > 7)
      0008B6 E5 36            [12] 1558 	mov	a,_oled_page
      0008B8 24 F8            [12] 1559 	add	a,#0xff - 0x07
      0008BA 50 03            [24] 1560 	jnc	00150$
                                   1561 ;	free result
                                   1562 ;	my_oled.c:433: oled_page = 0;
      0008BC 75 36 00         [24] 1563 	mov	_oled_page,#0x00
      0008BF                       1564 00150$:
                                   1565 ;	my_oled.c:435: oled_set_position(oled_page, oled_column);
      0008BF 75 3E 00         [24] 1566 	mov	_oled_set_position_PARM_2,#0x00
      0008C2 85 36 82         [24] 1567 	mov	dpl, _oled_page
                                   1568 ;	my_oled.c:437: }
      0008C5 02 04 BE         [24] 1569 	ljmp	_oled_set_position
      0008C8                       1570 00159$:
      0008C8 22               [24] 1571 	ret
                                   1572 ;------------------------------------------------------------
                                   1573 ;Allocation info for local variables in function 'oled_string'
                                   1574 ;------------------------------------------------------------
                                   1575 ;str           Allocated to registers r5 r6 r7 
                                   1576 ;------------------------------------------------------------
                                   1577 ;	my_oled.c:439: void oled_string(char *str)
                                   1578 ;	-----------------------------------------
                                   1579 ;	 function oled_string
                                   1580 ;	-----------------------------------------
      0008C9                       1581 _oled_string:
      0008C9 AD 82            [24] 1582 	mov	r5, dpl
      0008CB AE 83            [24] 1583 	mov	r6, dph
      0008CD AF F0            [24] 1584 	mov	r7, b
                                   1585 ;	my_oled.c:441: while(*str)
      0008CF                       1586 00109$:
      0008CF 8D 82            [24] 1587 	mov	dpl,r5
      0008D1 8E 83            [24] 1588 	mov	dph,r6
      0008D3 8F F0            [24] 1589 	mov	b,r7
      0008D5 12 0B A9         [24] 1590 	lcall	__gptrget
      0008D8 FC               [12] 1591 	mov	r4,a
      0008D9 60 67            [24] 1592 	jz	00112$
                                   1593 ;	my_oled.c:443: if(*str == '\n')
      0008DB BC 0A 2A         [24] 1594 	cjne	r4,#0x0a,00107$
                                   1595 ;	my_oled.c:445: oled_page++;
      0008DE 05 36            [12] 1596 	inc	_oled_page
                                   1597 ;	my_oled.c:447: if(oled_page > 7)
      0008E0 E5 36            [12] 1598 	mov	a,_oled_page
      0008E2 24 F8            [12] 1599 	add	a,#0xff - 0x07
      0008E4 50 03            [24] 1600 	jnc	00102$
                                   1601 ;	free result
                                   1602 ;	my_oled.c:448: oled_page = 0;
      0008E6 75 36 00         [24] 1603 	mov	_oled_page,#0x00
      0008E9                       1604 00102$:
                                   1605 ;	my_oled.c:450: oled_column = 0;
      0008E9 75 37 00         [24] 1606 	mov	_oled_column,#0x00
                                   1607 ;	my_oled.c:451: oled_set_position(oled_page, oled_column);
      0008EC 75 3E 00         [24] 1608 	mov	_oled_set_position_PARM_2,#0x00
      0008EF 85 36 82         [24] 1609 	mov	dpl, _oled_page
      0008F2 C0 07            [24] 1610 	push	ar7
      0008F4 C0 06            [24] 1611 	push	ar6
      0008F6 C0 05            [24] 1612 	push	ar5
      0008F8 12 04 BE         [24] 1613 	lcall	_oled_set_position
      0008FB D0 05            [24] 1614 	pop	ar5
      0008FD D0 06            [24] 1615 	pop	ar6
      0008FF D0 07            [24] 1616 	pop	ar7
                                   1617 ;	my_oled.c:452: str++;
      000901 0D               [12] 1618 	inc	r5
      000902 BD 00 CA         [24] 1619 	cjne	r5,#0x00,00109$
      000905 0E               [12] 1620 	inc	r6
      000906 80 C7            [24] 1621 	sjmp	00109$
      000908                       1622 00107$:
                                   1623 ;	my_oled.c:454: else if(*str == '\r')
      000908 BC 0D 1F         [24] 1624 	cjne	r4,#0x0d,00104$
                                   1625 ;	my_oled.c:456: oled_column = 0;
      00090B 75 37 00         [24] 1626 	mov	_oled_column,#0x00
                                   1627 ;	my_oled.c:457: oled_set_position(oled_page, oled_column);
      00090E 75 3E 00         [24] 1628 	mov	_oled_set_position_PARM_2,#0x00
      000911 85 36 82         [24] 1629 	mov	dpl, _oled_page
      000914 C0 07            [24] 1630 	push	ar7
      000916 C0 06            [24] 1631 	push	ar6
      000918 C0 05            [24] 1632 	push	ar5
      00091A 12 04 BE         [24] 1633 	lcall	_oled_set_position
      00091D D0 05            [24] 1634 	pop	ar5
      00091F D0 06            [24] 1635 	pop	ar6
      000921 D0 07            [24] 1636 	pop	ar7
                                   1637 ;	my_oled.c:458: str++;
      000923 0D               [12] 1638 	inc	r5
      000924 BD 00 A8         [24] 1639 	cjne	r5,#0x00,00109$
      000927 0E               [12] 1640 	inc	r6
      000928 80 A5            [24] 1641 	sjmp	00109$
      00092A                       1642 00104$:
                                   1643 ;	my_oled.c:462: oled_char((unsigned char)*str++);
      00092A 8C 82            [24] 1644 	mov	dpl,r4
      00092C 0D               [12] 1645 	inc	r5
      00092D BD 00 01         [24] 1646 	cjne	r5,#0x00,00157$
      000930 0E               [12] 1647 	inc	r6
      000931                       1648 00157$:
      000931 C0 07            [24] 1649 	push	ar7
      000933 C0 06            [24] 1650 	push	ar6
      000935 C0 05            [24] 1651 	push	ar5
      000937 12 05 FC         [24] 1652 	lcall	_oled_char
      00093A D0 05            [24] 1653 	pop	ar5
      00093C D0 06            [24] 1654 	pop	ar6
      00093E D0 07            [24] 1655 	pop	ar7
      000940 80 8D            [24] 1656 	sjmp	00109$
      000942                       1657 00112$:
                                   1658 ;	my_oled.c:465: }
      000942 22               [24] 1659 	ret
                                   1660 	.area CSEG    (CODE)
                                   1661 	.area CONST   (CODE)
                                   1662 	.area CONST   (CODE)
      000C30                       1663 _font5x7:
      000C30 7E                    1664 	.db #0x7e	; 126
      000C31 11                    1665 	.db #0x11	; 17
      000C32 11                    1666 	.db #0x11	; 17
      000C33 11                    1667 	.db #0x11	; 17
      000C34 7E                    1668 	.db #0x7e	; 126
      000C35 7F                    1669 	.db #0x7f	; 127
      000C36 49                    1670 	.db #0x49	; 73	'I'
      000C37 49                    1671 	.db #0x49	; 73	'I'
      000C38 49                    1672 	.db #0x49	; 73	'I'
      000C39 36                    1673 	.db #0x36	; 54	'6'
      000C3A 3E                    1674 	.db #0x3e	; 62
      000C3B 41                    1675 	.db #0x41	; 65	'A'
      000C3C 41                    1676 	.db #0x41	; 65	'A'
      000C3D 41                    1677 	.db #0x41	; 65	'A'
      000C3E 22                    1678 	.db #0x22	; 34
      000C3F 7F                    1679 	.db #0x7f	; 127
      000C40 41                    1680 	.db #0x41	; 65	'A'
      000C41 41                    1681 	.db #0x41	; 65	'A'
      000C42 22                    1682 	.db #0x22	; 34
      000C43 1C                    1683 	.db #0x1c	; 28
      000C44 7F                    1684 	.db #0x7f	; 127
      000C45 49                    1685 	.db #0x49	; 73	'I'
      000C46 49                    1686 	.db #0x49	; 73	'I'
      000C47 49                    1687 	.db #0x49	; 73	'I'
      000C48 41                    1688 	.db #0x41	; 65	'A'
      000C49 7F                    1689 	.db #0x7f	; 127
      000C4A 09                    1690 	.db #0x09	; 9
      000C4B 09                    1691 	.db #0x09	; 9
      000C4C 09                    1692 	.db #0x09	; 9
      000C4D 01                    1693 	.db #0x01	; 1
      000C4E 3E                    1694 	.db #0x3e	; 62
      000C4F 41                    1695 	.db #0x41	; 65	'A'
      000C50 49                    1696 	.db #0x49	; 73	'I'
      000C51 49                    1697 	.db #0x49	; 73	'I'
      000C52 7A                    1698 	.db #0x7a	; 122	'z'
      000C53 7F                    1699 	.db #0x7f	; 127
      000C54 08                    1700 	.db #0x08	; 8
      000C55 08                    1701 	.db #0x08	; 8
      000C56 08                    1702 	.db #0x08	; 8
      000C57 7F                    1703 	.db #0x7f	; 127
      000C58 00                    1704 	.db #0x00	; 0
      000C59 41                    1705 	.db #0x41	; 65	'A'
      000C5A 7F                    1706 	.db #0x7f	; 127
      000C5B 41                    1707 	.db #0x41	; 65	'A'
      000C5C 00                    1708 	.db #0x00	; 0
      000C5D 20                    1709 	.db #0x20	; 32
      000C5E 40                    1710 	.db #0x40	; 64
      000C5F 41                    1711 	.db #0x41	; 65	'A'
      000C60 3F                    1712 	.db #0x3f	; 63
      000C61 01                    1713 	.db #0x01	; 1
      000C62 7F                    1714 	.db #0x7f	; 127
      000C63 08                    1715 	.db #0x08	; 8
      000C64 14                    1716 	.db #0x14	; 20
      000C65 22                    1717 	.db #0x22	; 34
      000C66 41                    1718 	.db #0x41	; 65	'A'
      000C67 7F                    1719 	.db #0x7f	; 127
      000C68 40                    1720 	.db #0x40	; 64
      000C69 40                    1721 	.db #0x40	; 64
      000C6A 40                    1722 	.db #0x40	; 64
      000C6B 40                    1723 	.db #0x40	; 64
      000C6C 7F                    1724 	.db #0x7f	; 127
      000C6D 02                    1725 	.db #0x02	; 2
      000C6E 0C                    1726 	.db #0x0c	; 12
      000C6F 02                    1727 	.db #0x02	; 2
      000C70 7F                    1728 	.db #0x7f	; 127
      000C71 7F                    1729 	.db #0x7f	; 127
      000C72 04                    1730 	.db #0x04	; 4
      000C73 08                    1731 	.db #0x08	; 8
      000C74 10                    1732 	.db #0x10	; 16
      000C75 7F                    1733 	.db #0x7f	; 127
      000C76 3E                    1734 	.db #0x3e	; 62
      000C77 41                    1735 	.db #0x41	; 65	'A'
      000C78 41                    1736 	.db #0x41	; 65	'A'
      000C79 41                    1737 	.db #0x41	; 65	'A'
      000C7A 3E                    1738 	.db #0x3e	; 62
      000C7B 7F                    1739 	.db #0x7f	; 127
      000C7C 09                    1740 	.db #0x09	; 9
      000C7D 09                    1741 	.db #0x09	; 9
      000C7E 09                    1742 	.db #0x09	; 9
      000C7F 06                    1743 	.db #0x06	; 6
      000C80 3E                    1744 	.db #0x3e	; 62
      000C81 41                    1745 	.db #0x41	; 65	'A'
      000C82 51                    1746 	.db #0x51	; 81	'Q'
      000C83 21                    1747 	.db #0x21	; 33
      000C84 5E                    1748 	.db #0x5e	; 94
      000C85 7F                    1749 	.db #0x7f	; 127
      000C86 09                    1750 	.db #0x09	; 9
      000C87 19                    1751 	.db #0x19	; 25
      000C88 29                    1752 	.db #0x29	; 41
      000C89 46                    1753 	.db #0x46	; 70	'F'
      000C8A 26                    1754 	.db #0x26	; 38
      000C8B 49                    1755 	.db #0x49	; 73	'I'
      000C8C 49                    1756 	.db #0x49	; 73	'I'
      000C8D 49                    1757 	.db #0x49	; 73	'I'
      000C8E 32                    1758 	.db #0x32	; 50	'2'
      000C8F 01                    1759 	.db #0x01	; 1
      000C90 01                    1760 	.db #0x01	; 1
      000C91 7F                    1761 	.db #0x7f	; 127
      000C92 01                    1762 	.db #0x01	; 1
      000C93 01                    1763 	.db #0x01	; 1
      000C94 3F                    1764 	.db #0x3f	; 63
      000C95 40                    1765 	.db #0x40	; 64
      000C96 40                    1766 	.db #0x40	; 64
      000C97 40                    1767 	.db #0x40	; 64
      000C98 3F                    1768 	.db #0x3f	; 63
      000C99 1F                    1769 	.db #0x1f	; 31
      000C9A 20                    1770 	.db #0x20	; 32
      000C9B 40                    1771 	.db #0x40	; 64
      000C9C 20                    1772 	.db #0x20	; 32
      000C9D 1F                    1773 	.db #0x1f	; 31
      000C9E 3F                    1774 	.db #0x3f	; 63
      000C9F 40                    1775 	.db #0x40	; 64
      000CA0 38                    1776 	.db #0x38	; 56	'8'
      000CA1 40                    1777 	.db #0x40	; 64
      000CA2 3F                    1778 	.db #0x3f	; 63
      000CA3 63                    1779 	.db #0x63	; 99	'c'
      000CA4 14                    1780 	.db #0x14	; 20
      000CA5 08                    1781 	.db #0x08	; 8
      000CA6 14                    1782 	.db #0x14	; 20
      000CA7 63                    1783 	.db #0x63	; 99	'c'
      000CA8 07                    1784 	.db #0x07	; 7
      000CA9 08                    1785 	.db #0x08	; 8
      000CAA 70                    1786 	.db #0x70	; 112	'p'
      000CAB 08                    1787 	.db #0x08	; 8
      000CAC 07                    1788 	.db #0x07	; 7
      000CAD 61                    1789 	.db #0x61	; 97	'a'
      000CAE 51                    1790 	.db #0x51	; 81	'Q'
      000CAF 49                    1791 	.db #0x49	; 73	'I'
      000CB0 45                    1792 	.db #0x45	; 69	'E'
      000CB1 43                    1793 	.db #0x43	; 67	'C'
      000CB2 3E                    1794 	.db #0x3e	; 62
      000CB3 45                    1795 	.db #0x45	; 69	'E'
      000CB4 49                    1796 	.db #0x49	; 73	'I'
      000CB5 51                    1797 	.db #0x51	; 81	'Q'
      000CB6 3E                    1798 	.db #0x3e	; 62
      000CB7 00                    1799 	.db #0x00	; 0
      000CB8 42                    1800 	.db #0x42	; 66	'B'
      000CB9 7F                    1801 	.db #0x7f	; 127
      000CBA 40                    1802 	.db #0x40	; 64
      000CBB 00                    1803 	.db #0x00	; 0
      000CBC 42                    1804 	.db #0x42	; 66	'B'
      000CBD 61                    1805 	.db #0x61	; 97	'a'
      000CBE 51                    1806 	.db #0x51	; 81	'Q'
      000CBF 49                    1807 	.db #0x49	; 73	'I'
      000CC0 46                    1808 	.db #0x46	; 70	'F'
      000CC1 21                    1809 	.db #0x21	; 33
      000CC2 41                    1810 	.db #0x41	; 65	'A'
      000CC3 45                    1811 	.db #0x45	; 69	'E'
      000CC4 4B                    1812 	.db #0x4b	; 75	'K'
      000CC5 31                    1813 	.db #0x31	; 49	'1'
      000CC6 18                    1814 	.db #0x18	; 24
      000CC7 14                    1815 	.db #0x14	; 20
      000CC8 12                    1816 	.db #0x12	; 18
      000CC9 7F                    1817 	.db #0x7f	; 127
      000CCA 10                    1818 	.db #0x10	; 16
      000CCB 27                    1819 	.db #0x27	; 39
      000CCC 45                    1820 	.db #0x45	; 69	'E'
      000CCD 45                    1821 	.db #0x45	; 69	'E'
      000CCE 45                    1822 	.db #0x45	; 69	'E'
      000CCF 39                    1823 	.db #0x39	; 57	'9'
      000CD0 3C                    1824 	.db #0x3c	; 60
      000CD1 4A                    1825 	.db #0x4a	; 74	'J'
      000CD2 49                    1826 	.db #0x49	; 73	'I'
      000CD3 49                    1827 	.db #0x49	; 73	'I'
      000CD4 30                    1828 	.db #0x30	; 48	'0'
      000CD5 01                    1829 	.db #0x01	; 1
      000CD6 71                    1830 	.db #0x71	; 113	'q'
      000CD7 09                    1831 	.db #0x09	; 9
      000CD8 05                    1832 	.db #0x05	; 5
      000CD9 03                    1833 	.db #0x03	; 3
      000CDA 36                    1834 	.db #0x36	; 54	'6'
      000CDB 49                    1835 	.db #0x49	; 73	'I'
      000CDC 49                    1836 	.db #0x49	; 73	'I'
      000CDD 49                    1837 	.db #0x49	; 73	'I'
      000CDE 36                    1838 	.db #0x36	; 54	'6'
      000CDF 06                    1839 	.db #0x06	; 6
      000CE0 49                    1840 	.db #0x49	; 73	'I'
      000CE1 49                    1841 	.db #0x49	; 73	'I'
      000CE2 29                    1842 	.db #0x29	; 41
      000CE3 1E                    1843 	.db #0x1e	; 30
                                   1844 	.area CSEG    (CODE)
                                   1845 	.area XINIT   (CODE)
                                   1846 	.area CABS    (ABS,CODE)
