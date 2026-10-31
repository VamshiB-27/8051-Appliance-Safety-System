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
      000034                        443 _oled_page:
      000034                        444 	.ds 1
      000035                        445 _oled_column:
      000035                        446 	.ds 1
      000036                        447 _i2c_write_transaction_PARM_2:
      000036                        448 	.ds 3
      000039                        449 _i2c_write_transaction_PARM_3:
      000039                        450 	.ds 1
      00003A                        451 _oled_command_cmd_10000_30:
      00003A                        452 	.ds 1
      00003B                        453 _oled_data_dat_10000_32:
      00003B                        454 	.ds 1
      00003C                        455 _oled_set_position_PARM_2:
      00003C                        456 	.ds 1
      00003D                        457 _oled_clear_zeros_10000_39:
      00003D                        458 	.ds 16
      00004D                        459 _oled_char_data_10000_47:
      00004D                        460 	.ds 6
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
      0000C3 75 34 00         [24]  511 	mov	_oled_page,#0x00
                                    512 ;	my_oled.c:10: static unsigned char oled_column = 0;
      0000C6 75 35 00         [24]  513 	mov	_oled_column,#0x00
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
      0009E0                        530 _i2c_delay:
                           000007   531 	ar7 = 0x07
                           000006   532 	ar6 = 0x06
                           000005   533 	ar5 = 0x05
                           000004   534 	ar4 = 0x04
                           000003   535 	ar3 = 0x03
                           000002   536 	ar2 = 0x02
                           000001   537 	ar1 = 0x01
                           000000   538 	ar0 = 0x00
                                    539 ;	my_oled.c:54: delay_us(5);
      0009E0 90 00 05         [24]  540 	mov	dptr,#0x0005
                                    541 ;	my_oled.c:55: }
      0009E3 02 00 CC         [24]  542 	ljmp	_delay_us
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'i2c_start'
                                    545 ;------------------------------------------------------------
                                    546 ;	my_oled.c:57: void i2c_start(void)
                                    547 ;	-----------------------------------------
                                    548 ;	 function i2c_start
                                    549 ;	-----------------------------------------
      0009E6                        550 _i2c_start:
                                    551 ;	my_oled.c:59: OLED_SDA = 1;
                                    552 ;	assignBit
      0009E6 D2 C1            [12]  553 	setb	_P4_1
                                    554 ;	my_oled.c:60: OLED_SCL = 1;
                                    555 ;	assignBit
      0009E8 D2 C0            [12]  556 	setb	_P4_0
                                    557 ;	my_oled.c:61: i2c_delay();
      0009EA 12 09 E0         [24]  558 	lcall	_i2c_delay
                                    559 ;	my_oled.c:62: OLED_SDA = 0;
                                    560 ;	assignBit
      0009ED C2 C1            [12]  561 	clr	_P4_1
                                    562 ;	my_oled.c:63: i2c_delay();
      0009EF 12 09 E0         [24]  563 	lcall	_i2c_delay
                                    564 ;	my_oled.c:64: OLED_SCL = 0;
                                    565 ;	assignBit
      0009F2 C2 C0            [12]  566 	clr	_P4_0
                                    567 ;	my_oled.c:65: }
      0009F4 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'i2c_stop'
                                    571 ;------------------------------------------------------------
                                    572 ;	my_oled.c:67: void i2c_stop(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function i2c_stop
                                    575 ;	-----------------------------------------
      0009F5                        576 _i2c_stop:
                                    577 ;	my_oled.c:69: OLED_SDA = 0;
                                    578 ;	assignBit
      0009F5 C2 C1            [12]  579 	clr	_P4_1
                                    580 ;	my_oled.c:70: OLED_SCL = 1;
                                    581 ;	assignBit
      0009F7 D2 C0            [12]  582 	setb	_P4_0
                                    583 ;	my_oled.c:71: i2c_delay();
      0009F9 12 09 E0         [24]  584 	lcall	_i2c_delay
                                    585 ;	my_oled.c:72: OLED_SDA = 1;
                                    586 ;	assignBit
      0009FC D2 C1            [12]  587 	setb	_P4_1
                                    588 ;	my_oled.c:73: i2c_delay();
                                    589 ;	my_oled.c:74: }
      0009FE 02 09 E0         [24]  590 	ljmp	_i2c_delay
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
      000A01                        602 _i2c_write:
      000A01 AF 82            [24]  603 	mov	r7, dpl
                                    604 ;	my_oled.c:81: for(i = 0; i < 8; i++)
      000A03 7E 00            [12]  605 	mov	r6,#0x00
      000A05                        606 00102$:
                                    607 ;	my_oled.c:83: OLED_SDA = (dat & 0x80) ? 1 : 0;
      000A05 8F 05            [24]  608 	mov	ar5,r7
      000A07 53 05 80         [24]  609 	anl	ar5,#0x80
                                    610 ;	assignBit
      000A0A ED               [12]  611 	mov	a,r5
      000A0B 24 FF            [12]  612 	add	a,#0xff
      000A0D 92 C1            [24]  613 	mov	_P4_1,c
                                    614 ;	my_oled.c:84: i2c_delay();
      000A0F C0 07            [24]  615 	push	ar7
      000A11 C0 06            [24]  616 	push	ar6
      000A13 12 09 E0         [24]  617 	lcall	_i2c_delay
                                    618 ;	my_oled.c:85: OLED_SCL = 1;
                                    619 ;	assignBit
      000A16 D2 C0            [12]  620 	setb	_P4_0
                                    621 ;	my_oled.c:86: i2c_delay();
      000A18 12 09 E0         [24]  622 	lcall	_i2c_delay
      000A1B D0 06            [24]  623 	pop	ar6
      000A1D D0 07            [24]  624 	pop	ar7
                                    625 ;	my_oled.c:87: OLED_SCL = 0;
                                    626 ;	assignBit
      000A1F C2 C0            [12]  627 	clr	_P4_0
                                    628 ;	my_oled.c:88: dat <<= 1;
      000A21 EF               [12]  629 	mov	a,r7
      000A22 2F               [12]  630 	add	a,r7
      000A23 FF               [12]  631 	mov	r7,a
                                    632 ;	my_oled.c:81: for(i = 0; i < 8; i++)
      000A24 0E               [12]  633 	inc	r6
      000A25 BE 08 00         [24]  634 	cjne	r6,#0x08,00120$
      000A28                        635 00120$:
      000A28 40 DB            [24]  636 	jc	00102$
                                    637 ;	my_oled.c:91: OLED_SDA = 1;
                                    638 ;	assignBit
      000A2A D2 C1            [12]  639 	setb	_P4_1
                                    640 ;	my_oled.c:92: i2c_delay();
      000A2C 12 09 E0         [24]  641 	lcall	_i2c_delay
                                    642 ;	my_oled.c:93: OLED_SCL = 1;
                                    643 ;	assignBit
      000A2F D2 C0            [12]  644 	setb	_P4_0
                                    645 ;	my_oled.c:94: i2c_delay();
      000A31 12 09 E0         [24]  646 	lcall	_i2c_delay
                                    647 ;	my_oled.c:95: ack = OLED_SDA;
      000A34 A2 C1            [12]  648 	mov	c,_P4_1
      000A36 E4               [12]  649 	clr	a
      000A37 33               [12]  650 	rlc	a
      000A38 FF               [12]  651 	mov	r7,a
                                    652 ;	my_oled.c:96: OLED_SCL = 0;
                                    653 ;	assignBit
      000A39 C2 C0            [12]  654 	clr	_P4_0
                                    655 ;	my_oled.c:97: i2c_delay();
      000A3B C0 07            [24]  656 	push	ar7
      000A3D 12 09 E0         [24]  657 	lcall	_i2c_delay
      000A40 D0 07            [24]  658 	pop	ar7
                                    659 ;	my_oled.c:99: return (ack == 0);
      000A42 E4               [12]  660 	clr	a
      000A43 BF 00 01         [24]  661 	cjne	r7,#0x00,00122$
      000A46 04               [12]  662 	inc	a
      000A47                        663 00122$:
      000A47 F5 82            [12]  664 	mov	dpl,a
                                    665 ;	my_oled.c:100: }
      000A49 22               [24]  666 	ret
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
      000A4A                        680 _i2c_write_transaction:
      000A4A AF 82            [24]  681 	mov	r7, dpl
                                    682 ;	my_oled.c:108: unsigned char success = 1;
      000A4C 7E 01            [12]  683 	mov	r6,#0x01
                                    684 ;	my_oled.c:110: i2c_start();
      000A4E C0 07            [24]  685 	push	ar7
      000A50 C0 06            [24]  686 	push	ar6
      000A52 12 09 E6         [24]  687 	lcall	_i2c_start
                                    688 ;	my_oled.c:112: if(!i2c_write(OLED_ADDR))
      000A55 75 82 78         [24]  689 	mov	dpl, #0x78
      000A58 12 0A 01         [24]  690 	lcall	_i2c_write
      000A5B E5 82            [12]  691 	mov	a, dpl
      000A5D D0 06            [24]  692 	pop	ar6
      000A5F D0 07            [24]  693 	pop	ar7
                                    694 ;	my_oled.c:113: success = 0;
      000A61 70 01            [24]  695 	jnz	00102$
      000A63 FE               [12]  696 	mov	r6,a
      000A64                        697 00102$:
                                    698 ;	my_oled.c:115: if(success && !i2c_write(control))
      000A64 EE               [12]  699 	mov	a,r6
      000A65 60 0E            [24]  700 	jz	00104$
      000A67 8F 82            [24]  701 	mov	dpl, r7
      000A69 C0 06            [24]  702 	push	ar6
      000A6B 12 0A 01         [24]  703 	lcall	_i2c_write
      000A6E E5 82            [12]  704 	mov	a, dpl
      000A70 D0 06            [24]  705 	pop	ar6
                                    706 ;	my_oled.c:116: success = 0;
      000A72 70 01            [24]  707 	jnz	00104$
      000A74 FE               [12]  708 	mov	r6,a
      000A75                        709 00104$:
                                    710 ;	my_oled.c:118: for(i = 0; i < length && success; i++)
      000A75 7F 00            [12]  711 	mov	r7,#0x00
      000A77                        712 00111$:
      000A77 C3               [12]  713 	clr	c
      000A78 EF               [12]  714 	mov	a,r7
      000A79 95 39            [12]  715 	subb	a,_i2c_write_transaction_PARM_3
      000A7B 50 2B            [24]  716 	jnc	00108$
      000A7D EE               [12]  717 	mov	a,r6
      000A7E 60 28            [24]  718 	jz	00108$
                                    719 ;	my_oled.c:120: if(!i2c_write(data[i]))
      000A80 EF               [12]  720 	mov	a,r7
      000A81 25 36            [12]  721 	add	a, _i2c_write_transaction_PARM_2
      000A83 FB               [12]  722 	mov	r3,a
      000A84 E4               [12]  723 	clr	a
      000A85 35 37            [12]  724 	addc	a, (_i2c_write_transaction_PARM_2 + 1)
      000A87 FC               [12]  725 	mov	r4,a
      000A88 AD 38            [24]  726 	mov	r5,(_i2c_write_transaction_PARM_2 + 2)
      000A8A 8B 82            [24]  727 	mov	dpl,r3
      000A8C 8C 83            [24]  728 	mov	dph,r4
      000A8E 8D F0            [24]  729 	mov	b,r5
      000A90 12 11 C7         [24]  730 	lcall	__gptrget
      000A93 F5 82            [12]  731 	mov	dpl,a
      000A95 C0 07            [24]  732 	push	ar7
      000A97 C0 06            [24]  733 	push	ar6
      000A99 12 0A 01         [24]  734 	lcall	_i2c_write
      000A9C E5 82            [12]  735 	mov	a, dpl
      000A9E D0 06            [24]  736 	pop	ar6
      000AA0 D0 07            [24]  737 	pop	ar7
                                    738 ;	my_oled.c:121: success = 0;
      000AA2 70 01            [24]  739 	jnz	00112$
      000AA4 FE               [12]  740 	mov	r6,a
      000AA5                        741 00112$:
                                    742 ;	my_oled.c:118: for(i = 0; i < length && success; i++)
      000AA5 0F               [12]  743 	inc	r7
      000AA6 80 CF            [24]  744 	sjmp	00111$
      000AA8                        745 00108$:
                                    746 ;	my_oled.c:124: i2c_stop();
      000AA8 C0 06            [24]  747 	push	ar6
      000AAA 12 09 F5         [24]  748 	lcall	_i2c_stop
      000AAD D0 06            [24]  749 	pop	ar6
                                    750 ;	my_oled.c:125: return success;
      000AAF 8E 82            [24]  751 	mov	dpl, r6
                                    752 ;	my_oled.c:126: }
      000AB1 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'oled_command'
                                    756 ;------------------------------------------------------------
                                    757 ;cmd           Allocated with name '_oled_command_cmd_10000_30'
                                    758 ;------------------------------------------------------------
                                    759 ;	my_oled.c:128: void oled_command(unsigned char cmd)
                                    760 ;	-----------------------------------------
                                    761 ;	 function oled_command
                                    762 ;	-----------------------------------------
      000AB2                        763 _oled_command:
      000AB2 85 82 3A         [24]  764 	mov	_oled_command_cmd_10000_30,dpl
                                    765 ;	my_oled.c:130: i2c_write_transaction(0x00, &cmd, 1);
      000AB5 75 36 3A         [24]  766 	mov	_i2c_write_transaction_PARM_2,#_oled_command_cmd_10000_30
      000AB8 75 37 00         [24]  767 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000ABB 75 38 40         [24]  768 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      000ABE 75 39 01         [24]  769 	mov	_i2c_write_transaction_PARM_3,#0x01
      000AC1 75 82 00         [24]  770 	mov	dpl, #0x00
                                    771 ;	my_oled.c:131: }
      000AC4 02 0A 4A         [24]  772 	ljmp	_i2c_write_transaction
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'oled_data'
                                    775 ;------------------------------------------------------------
                                    776 ;dat           Allocated with name '_oled_data_dat_10000_32'
                                    777 ;------------------------------------------------------------
                                    778 ;	my_oled.c:133: void oled_data(unsigned char dat)
                                    779 ;	-----------------------------------------
                                    780 ;	 function oled_data
                                    781 ;	-----------------------------------------
      000AC7                        782 _oled_data:
      000AC7 85 82 3B         [24]  783 	mov	_oled_data_dat_10000_32,dpl
                                    784 ;	my_oled.c:135: i2c_write_transaction(0x40, &dat, 1);
      000ACA 75 36 3B         [24]  785 	mov	_i2c_write_transaction_PARM_2,#_oled_data_dat_10000_32
      000ACD 75 37 00         [24]  786 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000AD0 75 38 40         [24]  787 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      000AD3 75 39 01         [24]  788 	mov	_i2c_write_transaction_PARM_3,#0x01
      000AD6 75 82 40         [24]  789 	mov	dpl, #0x40
                                    790 ;	my_oled.c:136: }
      000AD9 02 0A 4A         [24]  791 	ljmp	_i2c_write_transaction
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
      000ADC                        802 _oled_set_position:
                                    803 ;	my_oled.c:140: if(page > 7)
      000ADC E5 82            [12]  804 	mov	a,dpl
      000ADE FF               [12]  805 	mov	r7,a
      000ADF 24 F8            [12]  806 	add	a,#0xff - 0x07
      000AE1 50 02            [24]  807 	jnc	00102$
                                    808 ;	free result
                                    809 ;	my_oled.c:141: page = 7;
      000AE3 7F 07            [12]  810 	mov	r7,#0x07
      000AE5                        811 00102$:
                                    812 ;	my_oled.c:143: if(column > 127)
      000AE5 E5 3C            [12]  813 	mov	a,_oled_set_position_PARM_2
      000AE7 24 80            [12]  814 	add	a,#0xff - 0x7f
      000AE9 50 03            [24]  815 	jnc	00104$
                                    816 ;	free result
                                    817 ;	my_oled.c:144: column = 127;
      000AEB 75 3C 7F         [24]  818 	mov	_oled_set_position_PARM_2,#0x7f
      000AEE                        819 00104$:
                                    820 ;	my_oled.c:146: oled_page = page;
      000AEE 8F 34            [24]  821 	mov	_oled_page,r7
                                    822 ;	my_oled.c:147: oled_column = column;
      000AF0 AE 3C            [24]  823 	mov	r6,_oled_set_position_PARM_2
      000AF2 8E 35            [24]  824 	mov	_oled_column,r6
                                    825 ;	my_oled.c:149: oled_command(0xB0 | page);
      000AF4 74 B0            [12]  826 	mov	a,#0xb0
      000AF6 4F               [12]  827 	orl	a,r7
      000AF7 F5 82            [12]  828 	mov	dpl,a
      000AF9 C0 06            [24]  829 	push	ar6
      000AFB 12 0A B2         [24]  830 	lcall	_oled_command
      000AFE D0 06            [24]  831 	pop	ar6
                                    832 ;	my_oled.c:150: oled_command(column & 0x0F);
      000B00 74 0F            [12]  833 	mov	a,#0x0f
      000B02 5E               [12]  834 	anl	a,r6
      000B03 F5 82            [12]  835 	mov	dpl,a
      000B05 C0 06            [24]  836 	push	ar6
      000B07 12 0A B2         [24]  837 	lcall	_oled_command
      000B0A D0 06            [24]  838 	pop	ar6
                                    839 ;	my_oled.c:151: oled_command(0x10 | (column >> 4));
      000B0C EE               [12]  840 	mov	a,r6
      000B0D C4               [12]  841 	swap	a
      000B0E 54 0F            [12]  842 	anl	a,#0x0f
      000B10 FE               [12]  843 	mov	r6,a
      000B11 74 10            [12]  844 	mov	a,#0x10
      000B13 4E               [12]  845 	orl	a,r6
      000B14 F5 82            [12]  846 	mov	dpl,a
                                    847 ;	my_oled.c:152: }
      000B16 02 0A B2         [24]  848 	ljmp	_oled_command
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
      000B19                        861 _oled_clear:
                                    862 ;	my_oled.c:161: for(i = 0; i < 16; i++)
      000B19 7F 00            [12]  863 	mov	r7,#0x00
      000B1B                        864 00104$:
                                    865 ;	my_oled.c:162: zeros[i] = 0x00;
      000B1B EF               [12]  866 	mov	a,r7
      000B1C 24 3D            [12]  867 	add	a, #_oled_clear_zeros_10000_39
      000B1E F8               [12]  868 	mov	r0,a
      000B1F 76 00            [12]  869 	mov	@r0,#0x00
                                    870 ;	my_oled.c:161: for(i = 0; i < 16; i++)
      000B21 0F               [12]  871 	inc	r7
      000B22 BF 10 00         [24]  872 	cjne	r7,#0x10,00154$
      000B25                        873 00154$:
      000B25 40 F4            [24]  874 	jc	00104$
                                    875 ;	my_oled.c:164: for(page = 0; page < 8; page++)
      000B27 7F 00            [12]  876 	mov	r7,#0x00
      000B29                        877 00108$:
                                    878 ;	my_oled.c:166: oled_set_position(page, 0);
      000B29 75 3C 00         [24]  879 	mov	_oled_set_position_PARM_2,#0x00
      000B2C 8F 82            [24]  880 	mov	dpl, r7
      000B2E C0 07            [24]  881 	push	ar7
      000B30 12 0A DC         [24]  882 	lcall	_oled_set_position
      000B33 D0 07            [24]  883 	pop	ar7
                                    884 ;	my_oled.c:168: for(col = 0; col < 128; col += 16)
      000B35 7E 00            [12]  885 	mov	r6,#0x00
      000B37                        886 00106$:
                                    887 ;	my_oled.c:169: i2c_write_transaction(0x40, zeros, 16);
      000B37 75 36 3D         [24]  888 	mov	_i2c_write_transaction_PARM_2,#_oled_clear_zeros_10000_39
      000B3A 75 37 00         [24]  889 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000B3D 75 38 40         [24]  890 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      000B40 75 39 10         [24]  891 	mov	_i2c_write_transaction_PARM_3,#0x10
      000B43 75 82 40         [24]  892 	mov	dpl, #0x40
      000B46 C0 07            [24]  893 	push	ar7
      000B48 C0 06            [24]  894 	push	ar6
      000B4A 12 0A 4A         [24]  895 	lcall	_i2c_write_transaction
      000B4D D0 06            [24]  896 	pop	ar6
      000B4F D0 07            [24]  897 	pop	ar7
                                    898 ;	my_oled.c:168: for(col = 0; col < 128; col += 16)
      000B51 8E 05            [24]  899 	mov	ar5,r6
      000B53 74 10            [12]  900 	mov	a,#0x10
      000B55 2D               [12]  901 	add	a, r5
      000B56 FE               [12]  902 	mov	r6,a
      000B57 BE 80 00         [24]  903 	cjne	r6,#0x80,00156$
      000B5A                        904 00156$:
      000B5A 40 DB            [24]  905 	jc	00106$
                                    906 ;	my_oled.c:164: for(page = 0; page < 8; page++)
      000B5C 0F               [12]  907 	inc	r7
      000B5D BF 08 00         [24]  908 	cjne	r7,#0x08,00158$
      000B60                        909 00158$:
      000B60 40 C7            [24]  910 	jc	00108$
                                    911 ;	my_oled.c:172: oled_set_position(0, 0);
      000B62 75 3C 00         [24]  912 	mov	_oled_set_position_PARM_2,#0x00
      000B65 75 82 00         [24]  913 	mov	dpl, #0x00
                                    914 ;	my_oled.c:173: }
      000B68 02 0A DC         [24]  915 	ljmp	_oled_set_position
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'oled_init'
                                    918 ;------------------------------------------------------------
                                    919 ;	my_oled.c:175: void oled_init(void)
                                    920 ;	-----------------------------------------
                                    921 ;	 function oled_init
                                    922 ;	-----------------------------------------
      000B6B                        923 _oled_init:
                                    924 ;	my_oled.c:177: delay_ms(100);
      000B6B 90 00 64         [24]  925 	mov	dptr,#0x0064
      000B6E E4               [12]  926 	clr	a
      000B6F F5 F0            [12]  927 	mov	b,a
      000B71 12 00 E4         [24]  928 	lcall	_delay_ms
                                    929 ;	my_oled.c:179: OLED_SCL = 1;
                                    930 ;	assignBit
      000B74 D2 C0            [12]  931 	setb	_P4_0
                                    932 ;	my_oled.c:180: OLED_SDA = 1;
                                    933 ;	assignBit
      000B76 D2 C1            [12]  934 	setb	_P4_1
                                    935 ;	my_oled.c:182: oled_command(0xAE);
      000B78 75 82 AE         [24]  936 	mov	dpl, #0xae
      000B7B 12 0A B2         [24]  937 	lcall	_oled_command
                                    938 ;	my_oled.c:183: oled_command(0xD5);
      000B7E 75 82 D5         [24]  939 	mov	dpl, #0xd5
      000B81 12 0A B2         [24]  940 	lcall	_oled_command
                                    941 ;	my_oled.c:184: oled_command(0x80);
      000B84 75 82 80         [24]  942 	mov	dpl, #0x80
      000B87 12 0A B2         [24]  943 	lcall	_oled_command
                                    944 ;	my_oled.c:185: oled_command(0xA8);
      000B8A 75 82 A8         [24]  945 	mov	dpl, #0xa8
      000B8D 12 0A B2         [24]  946 	lcall	_oled_command
                                    947 ;	my_oled.c:186: oled_command(0x3F);
      000B90 75 82 3F         [24]  948 	mov	dpl, #0x3f
      000B93 12 0A B2         [24]  949 	lcall	_oled_command
                                    950 ;	my_oled.c:187: oled_command(0xD3);
      000B96 75 82 D3         [24]  951 	mov	dpl, #0xd3
      000B99 12 0A B2         [24]  952 	lcall	_oled_command
                                    953 ;	my_oled.c:188: oled_command(0x00);
      000B9C 75 82 00         [24]  954 	mov	dpl, #0x00
      000B9F 12 0A B2         [24]  955 	lcall	_oled_command
                                    956 ;	my_oled.c:189: oled_command(0x40);
      000BA2 75 82 40         [24]  957 	mov	dpl, #0x40
      000BA5 12 0A B2         [24]  958 	lcall	_oled_command
                                    959 ;	my_oled.c:190: oled_command(0x8D);
      000BA8 75 82 8D         [24]  960 	mov	dpl, #0x8d
      000BAB 12 0A B2         [24]  961 	lcall	_oled_command
                                    962 ;	my_oled.c:191: oled_command(0x14);
      000BAE 75 82 14         [24]  963 	mov	dpl, #0x14
      000BB1 12 0A B2         [24]  964 	lcall	_oled_command
                                    965 ;	my_oled.c:192: oled_command(0x20);
      000BB4 75 82 20         [24]  966 	mov	dpl, #0x20
      000BB7 12 0A B2         [24]  967 	lcall	_oled_command
                                    968 ;	my_oled.c:193: oled_command(0x02);
      000BBA 75 82 02         [24]  969 	mov	dpl, #0x02
      000BBD 12 0A B2         [24]  970 	lcall	_oled_command
                                    971 ;	my_oled.c:194: oled_command(0xA1);
      000BC0 75 82 A1         [24]  972 	mov	dpl, #0xa1
      000BC3 12 0A B2         [24]  973 	lcall	_oled_command
                                    974 ;	my_oled.c:195: oled_command(0xC8);
      000BC6 75 82 C8         [24]  975 	mov	dpl, #0xc8
      000BC9 12 0A B2         [24]  976 	lcall	_oled_command
                                    977 ;	my_oled.c:196: oled_command(0xDA);
      000BCC 75 82 DA         [24]  978 	mov	dpl, #0xda
      000BCF 12 0A B2         [24]  979 	lcall	_oled_command
                                    980 ;	my_oled.c:197: oled_command(0x12);
      000BD2 75 82 12         [24]  981 	mov	dpl, #0x12
      000BD5 12 0A B2         [24]  982 	lcall	_oled_command
                                    983 ;	my_oled.c:198: oled_command(0x81);
      000BD8 75 82 81         [24]  984 	mov	dpl, #0x81
      000BDB 12 0A B2         [24]  985 	lcall	_oled_command
                                    986 ;	my_oled.c:199: oled_command(0x7F);
      000BDE 75 82 7F         [24]  987 	mov	dpl, #0x7f
      000BE1 12 0A B2         [24]  988 	lcall	_oled_command
                                    989 ;	my_oled.c:200: oled_command(0xD9);
      000BE4 75 82 D9         [24]  990 	mov	dpl, #0xd9
      000BE7 12 0A B2         [24]  991 	lcall	_oled_command
                                    992 ;	my_oled.c:201: oled_command(0xF1);
      000BEA 75 82 F1         [24]  993 	mov	dpl, #0xf1
      000BED 12 0A B2         [24]  994 	lcall	_oled_command
                                    995 ;	my_oled.c:202: oled_command(0xDB);
      000BF0 75 82 DB         [24]  996 	mov	dpl, #0xdb
      000BF3 12 0A B2         [24]  997 	lcall	_oled_command
                                    998 ;	my_oled.c:203: oled_command(0x40);
      000BF6 75 82 40         [24]  999 	mov	dpl, #0x40
      000BF9 12 0A B2         [24] 1000 	lcall	_oled_command
                                   1001 ;	my_oled.c:204: oled_command(0xA4);
      000BFC 75 82 A4         [24] 1002 	mov	dpl, #0xa4
      000BFF 12 0A B2         [24] 1003 	lcall	_oled_command
                                   1004 ;	my_oled.c:205: oled_command(0xA6);
      000C02 75 82 A6         [24] 1005 	mov	dpl, #0xa6
      000C05 12 0A B2         [24] 1006 	lcall	_oled_command
                                   1007 ;	my_oled.c:207: oled_clear();
      000C08 12 0B 19         [24] 1008 	lcall	_oled_clear
                                   1009 ;	my_oled.c:208: oled_command(0xAF);
      000C0B 75 82 AF         [24] 1010 	mov	dpl, #0xaf
      000C0E 12 0A B2         [24] 1011 	lcall	_oled_command
                                   1012 ;	my_oled.c:209: oled_set_position(0, 0);
      000C11 75 3C 00         [24] 1013 	mov	_oled_set_position_PARM_2,#0x00
      000C14 75 82 00         [24] 1014 	mov	dpl, #0x00
                                   1015 ;	my_oled.c:210: }
      000C17 02 0A DC         [24] 1016 	ljmp	_oled_set_position
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
      000C1A                       1029 _oled_char:
      000C1A AF 82            [24] 1030 	mov	r7, dpl
                                   1031 ;	my_oled.c:218: if(c >= 'a' && c <= 'z')
      000C1C BF 61 00         [24] 1032 	cjne	r7,#0x61,00513$
      000C1F                       1033 00513$:
      000C1F 40 0B            [24] 1034 	jc	00102$
      000C21 EF               [12] 1035 	mov	a,r7
      000C22 24 85            [12] 1036 	add	a,#0xff - 0x7a
      000C24 40 06            [24] 1037 	jc	00102$
                                   1038 ;	free result
                                   1039 ;	my_oled.c:219: c -= ('a' - 'A');
      000C26 8F 06            [24] 1040 	mov	ar6,r7
      000C28 EE               [12] 1041 	mov	a,r6
      000C29 24 E0            [12] 1042 	add	a,#0xe0
      000C2B FF               [12] 1043 	mov	r7,a
      000C2C                       1044 00102$:
                                   1045 ;	my_oled.c:221: for(i = 0; i < 6; i++)
      000C2C 7E 00            [12] 1046 	mov	r6,#0x00
      000C2E                       1047 00153$:
                                   1048 ;	my_oled.c:222: data[i] = 0x00;
      000C2E EE               [12] 1049 	mov	a,r6
      000C2F 24 4D            [12] 1050 	add	a, #_oled_char_data_10000_47
      000C31 F8               [12] 1051 	mov	r0,a
      000C32 76 00            [12] 1052 	mov	@r0,#0x00
                                   1053 ;	my_oled.c:221: for(i = 0; i < 6; i++)
      000C34 0E               [12] 1054 	inc	r6
      000C35 BE 06 00         [24] 1055 	cjne	r6,#0x06,00516$
      000C38                       1056 00516$:
      000C38 40 F4            [24] 1057 	jc	00153$
                                   1058 ;	my_oled.c:224: if(c >= 'A' && c <= 'Z')
      000C3A BF 41 00         [24] 1059 	cjne	r7,#0x41,00518$
      000C3D                       1060 00518$:
      000C3D 40 30            [24] 1061 	jc	00142$
      000C3F EF               [12] 1062 	mov	a,r7
      000C40 24 A5            [12] 1063 	add	a,#0xff - 0x5a
      000C42 40 2B            [24] 1064 	jc	00142$
                                   1065 ;	free result
                                   1066 ;	my_oled.c:226: index = c - 'A';
      000C44 8F 06            [24] 1067 	mov	ar6,r7
      000C46 EE               [12] 1068 	mov	a,r6
      000C47 24 BF            [12] 1069 	add	a,#0xbf
                                   1070 ;	my_oled.c:228: for(i = 0; i < 5; i++)
      000C49 7D 00            [12] 1071 	mov	r5,#0x00
      000C4B 75 F0 05         [24] 1072 	mov	b,#0x05
      000C4E A4               [48] 1073 	mul	ab
      000C4F 24 B5            [12] 1074 	add	a, #_font5x7
      000C51 FC               [12] 1075 	mov	r4,a
      000C52 74 12            [12] 1076 	mov	a,#(_font5x7 >> 8)
      000C54 35 F0            [12] 1077 	addc	a, b
      000C56 FE               [12] 1078 	mov	r6,a
      000C57                       1079 00155$:
                                   1080 ;	my_oled.c:229: data[i] = font5x7[index][i];
      000C57 ED               [12] 1081 	mov	a,r5
      000C58 24 4D            [12] 1082 	add	a, #_oled_char_data_10000_47
      000C5A F9               [12] 1083 	mov	r1,a
      000C5B ED               [12] 1084 	mov	a,r5
      000C5C 2C               [12] 1085 	add	a, r4
      000C5D F5 82            [12] 1086 	mov	dpl,a
      000C5F E4               [12] 1087 	clr	a
      000C60 3E               [12] 1088 	addc	a, r6
      000C61 F5 83            [12] 1089 	mov	dph,a
      000C63 E4               [12] 1090 	clr	a
      000C64 93               [24] 1091 	movc	a,@a+dptr
      000C65 F7               [12] 1092 	mov	@r1,a
                                   1093 ;	my_oled.c:228: for(i = 0; i < 5; i++)
      000C66 0D               [12] 1094 	inc	r5
      000C67 BD 05 00         [24] 1095 	cjne	r5,#0x05,00521$
      000C6A                       1096 00521$:
      000C6A 40 EB            [24] 1097 	jc	00155$
      000C6C 02 0E 87         [24] 1098 	ljmp	00143$
      000C6F                       1099 00142$:
                                   1100 ;	my_oled.c:231: else if(c >= '0' && c <= '9')
      000C6F BF 30 00         [24] 1101 	cjne	r7,#0x30,00523$
      000C72                       1102 00523$:
      000C72 40 30            [24] 1103 	jc	00138$
      000C74 EF               [12] 1104 	mov	a,r7
      000C75 24 C6            [12] 1105 	add	a,#0xff - 0x39
      000C77 40 2B            [24] 1106 	jc	00138$
                                   1107 ;	free result
                                   1108 ;	my_oled.c:233: index = 26 + c - '0';
      000C79 8F 06            [24] 1109 	mov	ar6,r7
      000C7B 74 EA            [12] 1110 	mov	a,#0xea
      000C7D 2E               [12] 1111 	add	a, r6
                                   1112 ;	my_oled.c:235: for(i = 0; i < 5; i++)
      000C7E 7D 00            [12] 1113 	mov	r5,#0x00
      000C80 75 F0 05         [24] 1114 	mov	b,#0x05
      000C83 A4               [48] 1115 	mul	ab
      000C84 24 B5            [12] 1116 	add	a, #_font5x7
      000C86 FC               [12] 1117 	mov	r4,a
      000C87 74 12            [12] 1118 	mov	a,#(_font5x7 >> 8)
      000C89 35 F0            [12] 1119 	addc	a, b
      000C8B FE               [12] 1120 	mov	r6,a
      000C8C                       1121 00157$:
                                   1122 ;	my_oled.c:236: data[i] = font5x7[index][i];
      000C8C ED               [12] 1123 	mov	a,r5
      000C8D 24 4D            [12] 1124 	add	a, #_oled_char_data_10000_47
      000C8F F9               [12] 1125 	mov	r1,a
      000C90 ED               [12] 1126 	mov	a,r5
      000C91 2C               [12] 1127 	add	a, r4
      000C92 F5 82            [12] 1128 	mov	dpl,a
      000C94 E4               [12] 1129 	clr	a
      000C95 3E               [12] 1130 	addc	a, r6
      000C96 F5 83            [12] 1131 	mov	dph,a
      000C98 E4               [12] 1132 	clr	a
      000C99 93               [24] 1133 	movc	a,@a+dptr
      000C9A F7               [12] 1134 	mov	@r1,a
                                   1135 ;	my_oled.c:235: for(i = 0; i < 5; i++)
      000C9B 0D               [12] 1136 	inc	r5
      000C9C BD 05 00         [24] 1137 	cjne	r5,#0x05,00526$
      000C9F                       1138 00526$:
      000C9F 40 EB            [24] 1139 	jc	00157$
      000CA1 02 0E 87         [24] 1140 	ljmp	00143$
      000CA4                       1141 00138$:
                                   1142 ;	my_oled.c:240: switch(c)
      000CA4 BF 20 03         [24] 1143 	cjne	r7,#0x20,00528$
      000CA7 02 0E 87         [24] 1144 	ljmp	00143$
      000CAA                       1145 00528$:
      000CAA BF 21 03         [24] 1146 	cjne	r7,#0x21,00529$
      000CAD 02 0D 8A         [24] 1147 	ljmp	00113$
      000CB0                       1148 00529$:
      000CB0 BF 22 03         [24] 1149 	cjne	r7,#0x22,00530$
      000CB3 02 0E 0D         [24] 1150 	ljmp	00123$
      000CB6                       1151 00530$:
      000CB6 BF 23 03         [24] 1152 	cjne	r7,#0x23,00531$
      000CB9 02 0E 20         [24] 1153 	ljmp	00125$
      000CBC                       1154 00531$:
      000CBC BF 25 03         [24] 1155 	cjne	r7,#0x25,00532$
      000CBF 02 0D F6         [24] 1156 	ljmp	00121$
      000CC2                       1157 00532$:
      000CC2 BF 27 03         [24] 1158 	cjne	r7,#0x27,00533$
      000CC5 02 0E 08         [24] 1159 	ljmp	00122$
      000CC8                       1160 00533$:
      000CC8 BF 28 03         [24] 1161 	cjne	r7,#0x28,00534$
      000CCB 02 0D DE         [24] 1162 	ljmp	00119$
      000CCE                       1163 00534$:
      000CCE BF 29 03         [24] 1164 	cjne	r7,#0x29,00535$
      000CD1 02 0D EA         [24] 1165 	ljmp	00120$
      000CD4                       1166 00535$:
      000CD4 BF 2A 03         [24] 1167 	cjne	r7,#0x2a,00536$
      000CD7 02 0E 15         [24] 1168 	ljmp	00124$
      000CDA                       1169 00536$:
      000CDA BF 2B 03         [24] 1170 	cjne	r7,#0x2b,00537$
      000CDD 02 0D C6         [24] 1171 	ljmp	00117$
      000CE0                       1172 00537$:
      000CE0 BF 2C 02         [24] 1173 	cjne	r7,#0x2c,00538$
      000CE3 80 69            [24] 1174 	sjmp	00108$
      000CE5                       1175 00538$:
      000CE5 BF 2D 02         [24] 1176 	cjne	r7,#0x2d,00539$
      000CE8 80 7C            [24] 1177 	sjmp	00111$
      000CEA                       1178 00539$:
      000CEA BF 2E 02         [24] 1179 	cjne	r7,#0x2e,00540$
      000CED 80 59            [24] 1180 	sjmp	00107$
      000CEF                       1181 00540$:
      000CEF BF 2F 03         [24] 1182 	cjne	r7,#0x2f,00541$
      000CF2 02 0D A2         [24] 1183 	ljmp	00115$
      000CF5                       1184 00541$:
      000CF5 BF 3A 02         [24] 1185 	cjne	r7,#0x3a,00542$
      000CF8 80 5D            [24] 1186 	sjmp	00109$
      000CFA                       1187 00542$:
      000CFA BF 3B 02         [24] 1188 	cjne	r7,#0x3b,00543$
      000CFD 80 5E            [24] 1189 	sjmp	00110$
      000CFF                       1190 00543$:
      000CFF BF 3C 03         [24] 1191 	cjne	r7,#0x3c,00544$
      000D02 02 0E 31         [24] 1192 	ljmp	00126$
      000D05                       1193 00544$:
      000D05 BF 3D 03         [24] 1194 	cjne	r7,#0x3d,00545$
      000D08 02 0D D2         [24] 1195 	ljmp	00118$
      000D0B                       1196 00545$:
      000D0B BF 3E 03         [24] 1197 	cjne	r7,#0x3e,00546$
      000D0E 02 0E 3F         [24] 1198 	ljmp	00127$
      000D11                       1199 00546$:
      000D11 BF 3F 02         [24] 1200 	cjne	r7,#0x3f,00547$
      000D14 80 7A            [24] 1201 	sjmp	00114$
      000D16                       1202 00547$:
      000D16 BF 5B 03         [24] 1203 	cjne	r7,#0x5b,00548$
      000D19 02 0E 52         [24] 1204 	ljmp	00129$
      000D1C                       1205 00548$:
      000D1C BF 5C 03         [24] 1206 	cjne	r7,#0x5c,00549$
      000D1F 02 0D B4         [24] 1207 	ljmp	00116$
      000D22                       1208 00549$:
      000D22 BF 5D 03         [24] 1209 	cjne	r7,#0x5d,00550$
      000D25 02 0E 5A         [24] 1210 	ljmp	00130$
      000D28                       1211 00550$:
      000D28 BF 5F 02         [24] 1212 	cjne	r7,#0x5f,00551$
      000D2B 80 4B            [24] 1213 	sjmp	00112$
      000D2D                       1214 00551$:
      000D2D BF 7B 03         [24] 1215 	cjne	r7,#0x7b,00552$
      000D30 02 0E 62         [24] 1216 	ljmp	00131$
      000D33                       1217 00552$:
      000D33 BF 7C 03         [24] 1218 	cjne	r7,#0x7c,00553$
      000D36 02 0E 4D         [24] 1219 	ljmp	00128$
      000D39                       1220 00553$:
      000D39 BF 7D 03         [24] 1221 	cjne	r7,#0x7d,00554$
      000D3C 02 0E 6D         [24] 1222 	ljmp	00132$
      000D3F                       1223 00554$:
      000D3F BF 7E 03         [24] 1224 	cjne	r7,#0x7e,00555$
      000D42 02 0E 78         [24] 1225 	ljmp	00133$
      000D45                       1226 00555$:
      000D45 02 0E 87         [24] 1227 	ljmp	00143$
                                   1228 ;	my_oled.c:242: case '.':
      000D48                       1229 00107$:
                                   1230 ;	my_oled.c:243: data[2] = 0x60;
      000D48 75 4F 60         [24] 1231 	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
                                   1232 ;	my_oled.c:244: break;
      000D4B 02 0E 87         [24] 1233 	ljmp	00143$
                                   1234 ;	my_oled.c:246: case ',':
      000D4E                       1235 00108$:
                                   1236 ;	my_oled.c:247: data[2] = 0x60;
      000D4E 75 4F 60         [24] 1237 	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
                                   1238 ;	my_oled.c:248: data[3] = 0x40;
      000D51 75 50 40         [24] 1239 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1240 ;	my_oled.c:249: break;
      000D54 02 0E 87         [24] 1241 	ljmp	00143$
                                   1242 ;	my_oled.c:251: case ':':
      000D57                       1243 00109$:
                                   1244 ;	my_oled.c:252: data[2] = 0x36;
      000D57 75 4F 36         [24] 1245 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1246 ;	my_oled.c:253: break;
      000D5A 02 0E 87         [24] 1247 	ljmp	00143$
                                   1248 ;	my_oled.c:255: case ';':
      000D5D                       1249 00110$:
                                   1250 ;	my_oled.c:256: data[2] = 0x36;
      000D5D 75 4F 36         [24] 1251 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1252 ;	my_oled.c:257: data[3] = 0x40;
      000D60 75 50 40         [24] 1253 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1254 ;	my_oled.c:258: break;
      000D63 02 0E 87         [24] 1255 	ljmp	00143$
                                   1256 ;	my_oled.c:260: case '-':
      000D66                       1257 00111$:
                                   1258 ;	my_oled.c:261: data[0] = 0x08;
      000D66 75 4D 08         [24] 1259 	mov	_oled_char_data_10000_47,#0x08
                                   1260 ;	my_oled.c:262: data[1] = 0x08;
      000D69 75 4E 08         [24] 1261 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1262 ;	my_oled.c:263: data[2] = 0x08;
      000D6C 75 4F 08         [24] 1263 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1264 ;	my_oled.c:264: data[3] = 0x08;
      000D6F 75 50 08         [24] 1265 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1266 ;	my_oled.c:265: data[4] = 0x08;
      000D72 75 51 08         [24] 1267 	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
                                   1268 ;	my_oled.c:266: break;
      000D75 02 0E 87         [24] 1269 	ljmp	00143$
                                   1270 ;	my_oled.c:268: case '_':
      000D78                       1271 00112$:
                                   1272 ;	my_oled.c:269: data[0] = 0x40;
      000D78 75 4D 40         [24] 1273 	mov	_oled_char_data_10000_47,#0x40
                                   1274 ;	my_oled.c:270: data[1] = 0x40;
      000D7B 75 4E 40         [24] 1275 	mov	(_oled_char_data_10000_47 + 0x0001),#0x40
                                   1276 ;	my_oled.c:271: data[2] = 0x40;
      000D7E 75 4F 40         [24] 1277 	mov	(_oled_char_data_10000_47 + 0x0002),#0x40
                                   1278 ;	my_oled.c:272: data[3] = 0x40;
      000D81 75 50 40         [24] 1279 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1280 ;	my_oled.c:273: data[4] = 0x40;
      000D84 75 51 40         [24] 1281 	mov	(_oled_char_data_10000_47 + 0x0004),#0x40
                                   1282 ;	my_oled.c:274: break;
      000D87 02 0E 87         [24] 1283 	ljmp	00143$
                                   1284 ;	my_oled.c:276: case '!':
      000D8A                       1285 00113$:
                                   1286 ;	my_oled.c:277: data[2] = 0x5F;
      000D8A 75 4F 5F         [24] 1287 	mov	(_oled_char_data_10000_47 + 0x0002),#0x5f
                                   1288 ;	my_oled.c:278: break;
      000D8D 02 0E 87         [24] 1289 	ljmp	00143$
                                   1290 ;	my_oled.c:280: case '?':
      000D90                       1291 00114$:
                                   1292 ;	my_oled.c:281: data[0] = 0x02;
      000D90 75 4D 02         [24] 1293 	mov	_oled_char_data_10000_47,#0x02
                                   1294 ;	my_oled.c:282: data[1] = 0x01;
      000D93 75 4E 01         [24] 1295 	mov	(_oled_char_data_10000_47 + 0x0001),#0x01
                                   1296 ;	my_oled.c:283: data[2] = 0x51;
      000D96 75 4F 51         [24] 1297 	mov	(_oled_char_data_10000_47 + 0x0002),#0x51
                                   1298 ;	my_oled.c:284: data[3] = 0x09;
      000D99 75 50 09         [24] 1299 	mov	(_oled_char_data_10000_47 + 0x0003),#0x09
                                   1300 ;	my_oled.c:285: data[4] = 0x06;
      000D9C 75 51 06         [24] 1301 	mov	(_oled_char_data_10000_47 + 0x0004),#0x06
                                   1302 ;	my_oled.c:286: break;
      000D9F 02 0E 87         [24] 1303 	ljmp	00143$
                                   1304 ;	my_oled.c:288: case '/':
      000DA2                       1305 00115$:
                                   1306 ;	my_oled.c:289: data[0] = 0x20;
      000DA2 75 4D 20         [24] 1307 	mov	_oled_char_data_10000_47,#0x20
                                   1308 ;	my_oled.c:290: data[1] = 0x10;
      000DA5 75 4E 10         [24] 1309 	mov	(_oled_char_data_10000_47 + 0x0001),#0x10
                                   1310 ;	my_oled.c:291: data[2] = 0x08;
      000DA8 75 4F 08         [24] 1311 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1312 ;	my_oled.c:292: data[3] = 0x04;
      000DAB 75 50 04         [24] 1313 	mov	(_oled_char_data_10000_47 + 0x0003),#0x04
                                   1314 ;	my_oled.c:293: data[4] = 0x02;
      000DAE 75 51 02         [24] 1315 	mov	(_oled_char_data_10000_47 + 0x0004),#0x02
                                   1316 ;	my_oled.c:294: break;
      000DB1 02 0E 87         [24] 1317 	ljmp	00143$
                                   1318 ;	my_oled.c:296: case '\\':
      000DB4                       1319 00116$:
                                   1320 ;	my_oled.c:297: data[0] = 0x02;
      000DB4 75 4D 02         [24] 1321 	mov	_oled_char_data_10000_47,#0x02
                                   1322 ;	my_oled.c:298: data[1] = 0x04;
      000DB7 75 4E 04         [24] 1323 	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
                                   1324 ;	my_oled.c:299: data[2] = 0x08;
      000DBA 75 4F 08         [24] 1325 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1326 ;	my_oled.c:300: data[3] = 0x10;
      000DBD 75 50 10         [24] 1327 	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
                                   1328 ;	my_oled.c:301: data[4] = 0x20;
      000DC0 75 51 20         [24] 1329 	mov	(_oled_char_data_10000_47 + 0x0004),#0x20
                                   1330 ;	my_oled.c:302: break;
      000DC3 02 0E 87         [24] 1331 	ljmp	00143$
                                   1332 ;	my_oled.c:304: case '+':
      000DC6                       1333 00117$:
                                   1334 ;	my_oled.c:305: data[1] = 0x08;
      000DC6 75 4E 08         [24] 1335 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1336 ;	my_oled.c:306: data[2] = 0x1C;
      000DC9 75 4F 1C         [24] 1337 	mov	(_oled_char_data_10000_47 + 0x0002),#0x1c
                                   1338 ;	my_oled.c:307: data[3] = 0x08;
      000DCC 75 50 08         [24] 1339 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1340 ;	my_oled.c:308: break;
      000DCF 02 0E 87         [24] 1341 	ljmp	00143$
                                   1342 ;	my_oled.c:310: case '=':
      000DD2                       1343 00118$:
                                   1344 ;	my_oled.c:311: data[1] = 0x14;
      000DD2 75 4E 14         [24] 1345 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1346 ;	my_oled.c:312: data[2] = 0x14;
      000DD5 75 4F 14         [24] 1347 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1348 ;	my_oled.c:313: data[3] = 0x14;
      000DD8 75 50 14         [24] 1349 	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
                                   1350 ;	my_oled.c:314: break;
      000DDB 02 0E 87         [24] 1351 	ljmp	00143$
                                   1352 ;	my_oled.c:316: case '(':
      000DDE                       1353 00119$:
                                   1354 ;	my_oled.c:317: data[1] = 0x1C;
      000DDE 75 4E 1C         [24] 1355 	mov	(_oled_char_data_10000_47 + 0x0001),#0x1c
                                   1356 ;	my_oled.c:318: data[2] = 0x22;
      000DE1 75 4F 22         [24] 1357 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1358 ;	my_oled.c:319: data[3] = 0x41;
      000DE4 75 50 41         [24] 1359 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1360 ;	my_oled.c:320: break;
      000DE7 02 0E 87         [24] 1361 	ljmp	00143$
                                   1362 ;	my_oled.c:322: case ')':
      000DEA                       1363 00120$:
                                   1364 ;	my_oled.c:323: data[1] = 0x41;
      000DEA 75 4E 41         [24] 1365 	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
                                   1366 ;	my_oled.c:324: data[2] = 0x22;
      000DED 75 4F 22         [24] 1367 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1368 ;	my_oled.c:325: data[3] = 0x1C;
      000DF0 75 50 1C         [24] 1369 	mov	(_oled_char_data_10000_47 + 0x0003),#0x1c
                                   1370 ;	my_oled.c:326: break;
      000DF3 02 0E 87         [24] 1371 	ljmp	00143$
                                   1372 ;	my_oled.c:328: case '%':
      000DF6                       1373 00121$:
                                   1374 ;	my_oled.c:329: data[0] = 0x23;
      000DF6 75 4D 23         [24] 1375 	mov	_oled_char_data_10000_47,#0x23
                                   1376 ;	my_oled.c:330: data[1] = 0x13;
      000DF9 75 4E 13         [24] 1377 	mov	(_oled_char_data_10000_47 + 0x0001),#0x13
                                   1378 ;	my_oled.c:331: data[2] = 0x08;
      000DFC 75 4F 08         [24] 1379 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1380 ;	my_oled.c:332: data[3] = 0x64;
      000DFF 75 50 64         [24] 1381 	mov	(_oled_char_data_10000_47 + 0x0003),#0x64
                                   1382 ;	my_oled.c:333: data[4] = 0x62;
      000E02 75 51 62         [24] 1383 	mov	(_oled_char_data_10000_47 + 0x0004),#0x62
                                   1384 ;	my_oled.c:334: break;
      000E05 02 0E 87         [24] 1385 	ljmp	00143$
                                   1386 ;	my_oled.c:336: case '\'':
      000E08                       1387 00122$:
                                   1388 ;	my_oled.c:337: data[2] = 0x07;
      000E08 75 4F 07         [24] 1389 	mov	(_oled_char_data_10000_47 + 0x0002),#0x07
                                   1390 ;	my_oled.c:338: break;
                                   1391 ;	my_oled.c:340: case 0x22:     /* for char ' " ' */
      000E0B 80 7A            [24] 1392 	sjmp	00143$
      000E0D                       1393 00123$:
                                   1394 ;	my_oled.c:341: data[1] = 0x03;
      000E0D 75 4E 03         [24] 1395 	mov	(_oled_char_data_10000_47 + 0x0001),#0x03
                                   1396 ;	my_oled.c:342: data[3] = 0x03;
      000E10 75 50 03         [24] 1397 	mov	(_oled_char_data_10000_47 + 0x0003),#0x03
                                   1398 ;	my_oled.c:343: break;
                                   1399 ;	my_oled.c:345: case '*':
      000E13 80 72            [24] 1400 	sjmp	00143$
      000E15                       1401 00124$:
                                   1402 ;	my_oled.c:346: data[1] = 0x14;
      000E15 75 4E 14         [24] 1403 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1404 ;	my_oled.c:347: data[2] = 0x08;
      000E18 75 4F 08         [24] 1405 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1406 ;	my_oled.c:348: data[3] = 0x14;
      000E1B 75 50 14         [24] 1407 	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
                                   1408 ;	my_oled.c:349: break;
                                   1409 ;	my_oled.c:351: case '#':
      000E1E 80 67            [24] 1410 	sjmp	00143$
      000E20                       1411 00125$:
                                   1412 ;	my_oled.c:352: data[0] = 0x14;
      000E20 75 4D 14         [24] 1413 	mov	_oled_char_data_10000_47,#0x14
                                   1414 ;	my_oled.c:353: data[1] = 0x7F;
      000E23 75 4E 7F         [24] 1415 	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
                                   1416 ;	my_oled.c:354: data[2] = 0x14;
      000E26 75 4F 14         [24] 1417 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1418 ;	my_oled.c:355: data[3] = 0x7F;
      000E29 75 50 7F         [24] 1419 	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
                                   1420 ;	my_oled.c:356: data[4] = 0x14;
      000E2C 75 51 14         [24] 1421 	mov	(_oled_char_data_10000_47 + 0x0004),#0x14
                                   1422 ;	my_oled.c:357: break;
                                   1423 ;	my_oled.c:359: case '<':
      000E2F 80 56            [24] 1424 	sjmp	00143$
      000E31                       1425 00126$:
                                   1426 ;	my_oled.c:360: data[0] = 0x08;
      000E31 75 4D 08         [24] 1427 	mov	_oled_char_data_10000_47,#0x08
                                   1428 ;	my_oled.c:361: data[1] = 0x14;
      000E34 75 4E 14         [24] 1429 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1430 ;	my_oled.c:362: data[2] = 0x22;
      000E37 75 4F 22         [24] 1431 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1432 ;	my_oled.c:363: data[3] = 0x41;
      000E3A 75 50 41         [24] 1433 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1434 ;	my_oled.c:364: break;
                                   1435 ;	my_oled.c:366: case '>':
      000E3D 80 48            [24] 1436 	sjmp	00143$
      000E3F                       1437 00127$:
                                   1438 ;	my_oled.c:367: data[0] = 0x41;
      000E3F 75 4D 41         [24] 1439 	mov	_oled_char_data_10000_47,#0x41
                                   1440 ;	my_oled.c:368: data[1] = 0x22;
      000E42 75 4E 22         [24] 1441 	mov	(_oled_char_data_10000_47 + 0x0001),#0x22
                                   1442 ;	my_oled.c:369: data[2] = 0x14;
      000E45 75 4F 14         [24] 1443 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1444 ;	my_oled.c:370: data[3] = 0x08;
      000E48 75 50 08         [24] 1445 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1446 ;	my_oled.c:371: break;
                                   1447 ;	my_oled.c:373: case '|':
      000E4B 80 3A            [24] 1448 	sjmp	00143$
      000E4D                       1449 00128$:
                                   1450 ;	my_oled.c:374: data[2] = 0x7F;
      000E4D 75 4F 7F         [24] 1451 	mov	(_oled_char_data_10000_47 + 0x0002),#0x7f
                                   1452 ;	my_oled.c:375: break;
                                   1453 ;	my_oled.c:377: case '[':
      000E50 80 35            [24] 1454 	sjmp	00143$
      000E52                       1455 00129$:
                                   1456 ;	my_oled.c:378: data[1] = 0x7F;
      000E52 75 4E 7F         [24] 1457 	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
                                   1458 ;	my_oled.c:379: data[2] = 0x41;
      000E55 75 4F 41         [24] 1459 	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
                                   1460 ;	my_oled.c:380: break;
                                   1461 ;	my_oled.c:382: case ']':
      000E58 80 2D            [24] 1462 	sjmp	00143$
      000E5A                       1463 00130$:
                                   1464 ;	my_oled.c:383: data[2] = 0x41;
      000E5A 75 4F 41         [24] 1465 	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
                                   1466 ;	my_oled.c:384: data[3] = 0x7F;
      000E5D 75 50 7F         [24] 1467 	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
                                   1468 ;	my_oled.c:385: break;
                                   1469 ;	my_oled.c:387: case '{':
      000E60 80 25            [24] 1470 	sjmp	00143$
      000E62                       1471 00131$:
                                   1472 ;	my_oled.c:388: data[1] = 0x08;
      000E62 75 4E 08         [24] 1473 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1474 ;	my_oled.c:389: data[2] = 0x36;
      000E65 75 4F 36         [24] 1475 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1476 ;	my_oled.c:390: data[3] = 0x41;
      000E68 75 50 41         [24] 1477 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1478 ;	my_oled.c:391: break;
                                   1479 ;	my_oled.c:393: case '}':
      000E6B 80 1A            [24] 1480 	sjmp	00143$
      000E6D                       1481 00132$:
                                   1482 ;	my_oled.c:394: data[1] = 0x41;
      000E6D 75 4E 41         [24] 1483 	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
                                   1484 ;	my_oled.c:395: data[2] = 0x36;
      000E70 75 4F 36         [24] 1485 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1486 ;	my_oled.c:396: data[3] = 0x08;
      000E73 75 50 08         [24] 1487 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1488 ;	my_oled.c:397: break;
                                   1489 ;	my_oled.c:399: case '~':
      000E76 80 0F            [24] 1490 	sjmp	00143$
      000E78                       1491 00133$:
                                   1492 ;	my_oled.c:400: data[0] = 0x08;
      000E78 75 4D 08         [24] 1493 	mov	_oled_char_data_10000_47,#0x08
                                   1494 ;	my_oled.c:401: data[1] = 0x04;
      000E7B 75 4E 04         [24] 1495 	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
                                   1496 ;	my_oled.c:402: data[2] = 0x08;
      000E7E 75 4F 08         [24] 1497 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1498 ;	my_oled.c:403: data[3] = 0x10;
      000E81 75 50 10         [24] 1499 	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
                                   1500 ;	my_oled.c:404: data[4] = 0x08;
      000E84 75 51 08         [24] 1501 	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
                                   1502 ;	my_oled.c:410: }
      000E87                       1503 00143$:
                                   1504 ;	my_oled.c:413: if((unsigned int)oled_column + 6 > 128)
      000E87 AE 35            [24] 1505 	mov	r6,_oled_column
      000E89 7F 00            [12] 1506 	mov	r7,#0x00
      000E8B 74 06            [12] 1507 	mov	a,#0x06
      000E8D 2E               [12] 1508 	add	a, r6
      000E8E FE               [12] 1509 	mov	r6,a
      000E8F E4               [12] 1510 	clr	a
      000E90 3F               [12] 1511 	addc	a, r7
      000E91 FF               [12] 1512 	mov	r7,a
      000E92 C3               [12] 1513 	clr	c
      000E93 74 80            [12] 1514 	mov	a,#0x80
      000E95 9E               [12] 1515 	subb	a,r6
      000E96 E4               [12] 1516 	clr	a
      000E97 9F               [12] 1517 	subb	a,r7
      000E98 50 17            [24] 1518 	jnc	00148$
                                   1519 ;	free result
                                   1520 ;	my_oled.c:415: oled_page++;
      000E9A 05 34            [12] 1521 	inc	_oled_page
                                   1522 ;	my_oled.c:416: oled_column = 0;
      000E9C 75 35 00         [24] 1523 	mov	_oled_column,#0x00
                                   1524 ;	my_oled.c:418: if(oled_page > 7)
      000E9F E5 34            [12] 1525 	mov	a,_oled_page
      000EA1 24 F8            [12] 1526 	add	a,#0xff - 0x07
      000EA3 50 03            [24] 1527 	jnc	00146$
                                   1528 ;	free result
                                   1529 ;	my_oled.c:419: oled_page = 0;
      000EA5 75 34 00         [24] 1530 	mov	_oled_page,#0x00
      000EA8                       1531 00146$:
                                   1532 ;	my_oled.c:421: oled_set_position(oled_page, oled_column);
      000EA8 75 3C 00         [24] 1533 	mov	_oled_set_position_PARM_2,#0x00
      000EAB 85 34 82         [24] 1534 	mov	dpl, _oled_page
      000EAE 12 0A DC         [24] 1535 	lcall	_oled_set_position
      000EB1                       1536 00148$:
                                   1537 ;	my_oled.c:424: i2c_write_transaction(0x40, data, 6);
      000EB1 75 36 4D         [24] 1538 	mov	_i2c_write_transaction_PARM_2,#_oled_char_data_10000_47
      000EB4 75 37 00         [24] 1539 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000EB7 75 38 40         [24] 1540 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      000EBA 75 39 06         [24] 1541 	mov	_i2c_write_transaction_PARM_3,#0x06
      000EBD 75 82 40         [24] 1542 	mov	dpl, #0x40
      000EC0 12 0A 4A         [24] 1543 	lcall	_i2c_write_transaction
                                   1544 ;	my_oled.c:425: oled_column += 6;
      000EC3 AF 35            [24] 1545 	mov	r7,_oled_column
      000EC5 74 06            [12] 1546 	mov	a,#0x06
      000EC7 2F               [12] 1547 	add	a, r7
                                   1548 ;	my_oled.c:427: if(oled_column >= 128)
      000EC8 F5 35            [12] 1549 	mov	_oled_column,a
      000ECA C3               [12] 1550 	clr	c
      000ECB 94 80            [12] 1551 	subb	a,#0x80
      000ECD 40 17            [24] 1552 	jc	00159$
                                   1553 ;	my_oled.c:429: oled_column = 0;
      000ECF 75 35 00         [24] 1554 	mov	_oled_column,#0x00
                                   1555 ;	my_oled.c:430: oled_page++;
      000ED2 05 34            [12] 1556 	inc	_oled_page
                                   1557 ;	my_oled.c:432: if(oled_page > 7)
      000ED4 E5 34            [12] 1558 	mov	a,_oled_page
      000ED6 24 F8            [12] 1559 	add	a,#0xff - 0x07
      000ED8 50 03            [24] 1560 	jnc	00150$
                                   1561 ;	free result
                                   1562 ;	my_oled.c:433: oled_page = 0;
      000EDA 75 34 00         [24] 1563 	mov	_oled_page,#0x00
      000EDD                       1564 00150$:
                                   1565 ;	my_oled.c:435: oled_set_position(oled_page, oled_column);
      000EDD 75 3C 00         [24] 1566 	mov	_oled_set_position_PARM_2,#0x00
      000EE0 85 34 82         [24] 1567 	mov	dpl, _oled_page
                                   1568 ;	my_oled.c:437: }
      000EE3 02 0A DC         [24] 1569 	ljmp	_oled_set_position
      000EE6                       1570 00159$:
      000EE6 22               [24] 1571 	ret
                                   1572 ;------------------------------------------------------------
                                   1573 ;Allocation info for local variables in function 'oled_string'
                                   1574 ;------------------------------------------------------------
                                   1575 ;str           Allocated to registers r5 r6 r7 
                                   1576 ;------------------------------------------------------------
                                   1577 ;	my_oled.c:439: void oled_string(char *str)
                                   1578 ;	-----------------------------------------
                                   1579 ;	 function oled_string
                                   1580 ;	-----------------------------------------
      000EE7                       1581 _oled_string:
      000EE7 AD 82            [24] 1582 	mov	r5, dpl
      000EE9 AE 83            [24] 1583 	mov	r6, dph
      000EEB AF F0            [24] 1584 	mov	r7, b
                                   1585 ;	my_oled.c:441: while(*str)
      000EED                       1586 00109$:
      000EED 8D 82            [24] 1587 	mov	dpl,r5
      000EEF 8E 83            [24] 1588 	mov	dph,r6
      000EF1 8F F0            [24] 1589 	mov	b,r7
      000EF3 12 11 C7         [24] 1590 	lcall	__gptrget
      000EF6 FC               [12] 1591 	mov	r4,a
      000EF7 60 67            [24] 1592 	jz	00112$
                                   1593 ;	my_oled.c:443: if(*str == '\n')
      000EF9 BC 0A 2A         [24] 1594 	cjne	r4,#0x0a,00107$
                                   1595 ;	my_oled.c:445: oled_page++;
      000EFC 05 34            [12] 1596 	inc	_oled_page
                                   1597 ;	my_oled.c:447: if(oled_page > 7)
      000EFE E5 34            [12] 1598 	mov	a,_oled_page
      000F00 24 F8            [12] 1599 	add	a,#0xff - 0x07
      000F02 50 03            [24] 1600 	jnc	00102$
                                   1601 ;	free result
                                   1602 ;	my_oled.c:448: oled_page = 0;
      000F04 75 34 00         [24] 1603 	mov	_oled_page,#0x00
      000F07                       1604 00102$:
                                   1605 ;	my_oled.c:450: oled_column = 0;
      000F07 75 35 00         [24] 1606 	mov	_oled_column,#0x00
                                   1607 ;	my_oled.c:451: oled_set_position(oled_page, oled_column);
      000F0A 75 3C 00         [24] 1608 	mov	_oled_set_position_PARM_2,#0x00
      000F0D 85 34 82         [24] 1609 	mov	dpl, _oled_page
      000F10 C0 07            [24] 1610 	push	ar7
      000F12 C0 06            [24] 1611 	push	ar6
      000F14 C0 05            [24] 1612 	push	ar5
      000F16 12 0A DC         [24] 1613 	lcall	_oled_set_position
      000F19 D0 05            [24] 1614 	pop	ar5
      000F1B D0 06            [24] 1615 	pop	ar6
      000F1D D0 07            [24] 1616 	pop	ar7
                                   1617 ;	my_oled.c:452: str++;
      000F1F 0D               [12] 1618 	inc	r5
      000F20 BD 00 CA         [24] 1619 	cjne	r5,#0x00,00109$
      000F23 0E               [12] 1620 	inc	r6
      000F24 80 C7            [24] 1621 	sjmp	00109$
      000F26                       1622 00107$:
                                   1623 ;	my_oled.c:454: else if(*str == '\r')
      000F26 BC 0D 1F         [24] 1624 	cjne	r4,#0x0d,00104$
                                   1625 ;	my_oled.c:456: oled_column = 0;
      000F29 75 35 00         [24] 1626 	mov	_oled_column,#0x00
                                   1627 ;	my_oled.c:457: oled_set_position(oled_page, oled_column);
      000F2C 75 3C 00         [24] 1628 	mov	_oled_set_position_PARM_2,#0x00
      000F2F 85 34 82         [24] 1629 	mov	dpl, _oled_page
      000F32 C0 07            [24] 1630 	push	ar7
      000F34 C0 06            [24] 1631 	push	ar6
      000F36 C0 05            [24] 1632 	push	ar5
      000F38 12 0A DC         [24] 1633 	lcall	_oled_set_position
      000F3B D0 05            [24] 1634 	pop	ar5
      000F3D D0 06            [24] 1635 	pop	ar6
      000F3F D0 07            [24] 1636 	pop	ar7
                                   1637 ;	my_oled.c:458: str++;
      000F41 0D               [12] 1638 	inc	r5
      000F42 BD 00 A8         [24] 1639 	cjne	r5,#0x00,00109$
      000F45 0E               [12] 1640 	inc	r6
      000F46 80 A5            [24] 1641 	sjmp	00109$
      000F48                       1642 00104$:
                                   1643 ;	my_oled.c:462: oled_char((unsigned char)*str++);
      000F48 8C 82            [24] 1644 	mov	dpl,r4
      000F4A 0D               [12] 1645 	inc	r5
      000F4B BD 00 01         [24] 1646 	cjne	r5,#0x00,00157$
      000F4E 0E               [12] 1647 	inc	r6
      000F4F                       1648 00157$:
      000F4F C0 07            [24] 1649 	push	ar7
      000F51 C0 06            [24] 1650 	push	ar6
      000F53 C0 05            [24] 1651 	push	ar5
      000F55 12 0C 1A         [24] 1652 	lcall	_oled_char
      000F58 D0 05            [24] 1653 	pop	ar5
      000F5A D0 06            [24] 1654 	pop	ar6
      000F5C D0 07            [24] 1655 	pop	ar7
      000F5E 80 8D            [24] 1656 	sjmp	00109$
      000F60                       1657 00112$:
                                   1658 ;	my_oled.c:465: }
      000F60 22               [24] 1659 	ret
                                   1660 	.area CSEG    (CODE)
                                   1661 	.area CONST   (CODE)
                                   1662 	.area CONST   (CODE)
      0012B5                       1663 _font5x7:
      0012B5 7E                    1664 	.db #0x7e	; 126
      0012B6 11                    1665 	.db #0x11	; 17
      0012B7 11                    1666 	.db #0x11	; 17
      0012B8 11                    1667 	.db #0x11	; 17
      0012B9 7E                    1668 	.db #0x7e	; 126
      0012BA 7F                    1669 	.db #0x7f	; 127
      0012BB 49                    1670 	.db #0x49	; 73	'I'
      0012BC 49                    1671 	.db #0x49	; 73	'I'
      0012BD 49                    1672 	.db #0x49	; 73	'I'
      0012BE 36                    1673 	.db #0x36	; 54	'6'
      0012BF 3E                    1674 	.db #0x3e	; 62
      0012C0 41                    1675 	.db #0x41	; 65	'A'
      0012C1 41                    1676 	.db #0x41	; 65	'A'
      0012C2 41                    1677 	.db #0x41	; 65	'A'
      0012C3 22                    1678 	.db #0x22	; 34
      0012C4 7F                    1679 	.db #0x7f	; 127
      0012C5 41                    1680 	.db #0x41	; 65	'A'
      0012C6 41                    1681 	.db #0x41	; 65	'A'
      0012C7 22                    1682 	.db #0x22	; 34
      0012C8 1C                    1683 	.db #0x1c	; 28
      0012C9 7F                    1684 	.db #0x7f	; 127
      0012CA 49                    1685 	.db #0x49	; 73	'I'
      0012CB 49                    1686 	.db #0x49	; 73	'I'
      0012CC 49                    1687 	.db #0x49	; 73	'I'
      0012CD 41                    1688 	.db #0x41	; 65	'A'
      0012CE 7F                    1689 	.db #0x7f	; 127
      0012CF 09                    1690 	.db #0x09	; 9
      0012D0 09                    1691 	.db #0x09	; 9
      0012D1 09                    1692 	.db #0x09	; 9
      0012D2 01                    1693 	.db #0x01	; 1
      0012D3 3E                    1694 	.db #0x3e	; 62
      0012D4 41                    1695 	.db #0x41	; 65	'A'
      0012D5 49                    1696 	.db #0x49	; 73	'I'
      0012D6 49                    1697 	.db #0x49	; 73	'I'
      0012D7 7A                    1698 	.db #0x7a	; 122	'z'
      0012D8 7F                    1699 	.db #0x7f	; 127
      0012D9 08                    1700 	.db #0x08	; 8
      0012DA 08                    1701 	.db #0x08	; 8
      0012DB 08                    1702 	.db #0x08	; 8
      0012DC 7F                    1703 	.db #0x7f	; 127
      0012DD 00                    1704 	.db #0x00	; 0
      0012DE 41                    1705 	.db #0x41	; 65	'A'
      0012DF 7F                    1706 	.db #0x7f	; 127
      0012E0 41                    1707 	.db #0x41	; 65	'A'
      0012E1 00                    1708 	.db #0x00	; 0
      0012E2 20                    1709 	.db #0x20	; 32
      0012E3 40                    1710 	.db #0x40	; 64
      0012E4 41                    1711 	.db #0x41	; 65	'A'
      0012E5 3F                    1712 	.db #0x3f	; 63
      0012E6 01                    1713 	.db #0x01	; 1
      0012E7 7F                    1714 	.db #0x7f	; 127
      0012E8 08                    1715 	.db #0x08	; 8
      0012E9 14                    1716 	.db #0x14	; 20
      0012EA 22                    1717 	.db #0x22	; 34
      0012EB 41                    1718 	.db #0x41	; 65	'A'
      0012EC 7F                    1719 	.db #0x7f	; 127
      0012ED 40                    1720 	.db #0x40	; 64
      0012EE 40                    1721 	.db #0x40	; 64
      0012EF 40                    1722 	.db #0x40	; 64
      0012F0 40                    1723 	.db #0x40	; 64
      0012F1 7F                    1724 	.db #0x7f	; 127
      0012F2 02                    1725 	.db #0x02	; 2
      0012F3 0C                    1726 	.db #0x0c	; 12
      0012F4 02                    1727 	.db #0x02	; 2
      0012F5 7F                    1728 	.db #0x7f	; 127
      0012F6 7F                    1729 	.db #0x7f	; 127
      0012F7 04                    1730 	.db #0x04	; 4
      0012F8 08                    1731 	.db #0x08	; 8
      0012F9 10                    1732 	.db #0x10	; 16
      0012FA 7F                    1733 	.db #0x7f	; 127
      0012FB 3E                    1734 	.db #0x3e	; 62
      0012FC 41                    1735 	.db #0x41	; 65	'A'
      0012FD 41                    1736 	.db #0x41	; 65	'A'
      0012FE 41                    1737 	.db #0x41	; 65	'A'
      0012FF 3E                    1738 	.db #0x3e	; 62
      001300 7F                    1739 	.db #0x7f	; 127
      001301 09                    1740 	.db #0x09	; 9
      001302 09                    1741 	.db #0x09	; 9
      001303 09                    1742 	.db #0x09	; 9
      001304 06                    1743 	.db #0x06	; 6
      001305 3E                    1744 	.db #0x3e	; 62
      001306 41                    1745 	.db #0x41	; 65	'A'
      001307 51                    1746 	.db #0x51	; 81	'Q'
      001308 21                    1747 	.db #0x21	; 33
      001309 5E                    1748 	.db #0x5e	; 94
      00130A 7F                    1749 	.db #0x7f	; 127
      00130B 09                    1750 	.db #0x09	; 9
      00130C 19                    1751 	.db #0x19	; 25
      00130D 29                    1752 	.db #0x29	; 41
      00130E 46                    1753 	.db #0x46	; 70	'F'
      00130F 26                    1754 	.db #0x26	; 38
      001310 49                    1755 	.db #0x49	; 73	'I'
      001311 49                    1756 	.db #0x49	; 73	'I'
      001312 49                    1757 	.db #0x49	; 73	'I'
      001313 32                    1758 	.db #0x32	; 50	'2'
      001314 01                    1759 	.db #0x01	; 1
      001315 01                    1760 	.db #0x01	; 1
      001316 7F                    1761 	.db #0x7f	; 127
      001317 01                    1762 	.db #0x01	; 1
      001318 01                    1763 	.db #0x01	; 1
      001319 3F                    1764 	.db #0x3f	; 63
      00131A 40                    1765 	.db #0x40	; 64
      00131B 40                    1766 	.db #0x40	; 64
      00131C 40                    1767 	.db #0x40	; 64
      00131D 3F                    1768 	.db #0x3f	; 63
      00131E 1F                    1769 	.db #0x1f	; 31
      00131F 20                    1770 	.db #0x20	; 32
      001320 40                    1771 	.db #0x40	; 64
      001321 20                    1772 	.db #0x20	; 32
      001322 1F                    1773 	.db #0x1f	; 31
      001323 3F                    1774 	.db #0x3f	; 63
      001324 40                    1775 	.db #0x40	; 64
      001325 38                    1776 	.db #0x38	; 56	'8'
      001326 40                    1777 	.db #0x40	; 64
      001327 3F                    1778 	.db #0x3f	; 63
      001328 63                    1779 	.db #0x63	; 99	'c'
      001329 14                    1780 	.db #0x14	; 20
      00132A 08                    1781 	.db #0x08	; 8
      00132B 14                    1782 	.db #0x14	; 20
      00132C 63                    1783 	.db #0x63	; 99	'c'
      00132D 07                    1784 	.db #0x07	; 7
      00132E 08                    1785 	.db #0x08	; 8
      00132F 70                    1786 	.db #0x70	; 112	'p'
      001330 08                    1787 	.db #0x08	; 8
      001331 07                    1788 	.db #0x07	; 7
      001332 61                    1789 	.db #0x61	; 97	'a'
      001333 51                    1790 	.db #0x51	; 81	'Q'
      001334 49                    1791 	.db #0x49	; 73	'I'
      001335 45                    1792 	.db #0x45	; 69	'E'
      001336 43                    1793 	.db #0x43	; 67	'C'
      001337 3E                    1794 	.db #0x3e	; 62
      001338 45                    1795 	.db #0x45	; 69	'E'
      001339 49                    1796 	.db #0x49	; 73	'I'
      00133A 51                    1797 	.db #0x51	; 81	'Q'
      00133B 3E                    1798 	.db #0x3e	; 62
      00133C 00                    1799 	.db #0x00	; 0
      00133D 42                    1800 	.db #0x42	; 66	'B'
      00133E 7F                    1801 	.db #0x7f	; 127
      00133F 40                    1802 	.db #0x40	; 64
      001340 00                    1803 	.db #0x00	; 0
      001341 42                    1804 	.db #0x42	; 66	'B'
      001342 61                    1805 	.db #0x61	; 97	'a'
      001343 51                    1806 	.db #0x51	; 81	'Q'
      001344 49                    1807 	.db #0x49	; 73	'I'
      001345 46                    1808 	.db #0x46	; 70	'F'
      001346 21                    1809 	.db #0x21	; 33
      001347 41                    1810 	.db #0x41	; 65	'A'
      001348 45                    1811 	.db #0x45	; 69	'E'
      001349 4B                    1812 	.db #0x4b	; 75	'K'
      00134A 31                    1813 	.db #0x31	; 49	'1'
      00134B 18                    1814 	.db #0x18	; 24
      00134C 14                    1815 	.db #0x14	; 20
      00134D 12                    1816 	.db #0x12	; 18
      00134E 7F                    1817 	.db #0x7f	; 127
      00134F 10                    1818 	.db #0x10	; 16
      001350 27                    1819 	.db #0x27	; 39
      001351 45                    1820 	.db #0x45	; 69	'E'
      001352 45                    1821 	.db #0x45	; 69	'E'
      001353 45                    1822 	.db #0x45	; 69	'E'
      001354 39                    1823 	.db #0x39	; 57	'9'
      001355 3C                    1824 	.db #0x3c	; 60
      001356 4A                    1825 	.db #0x4a	; 74	'J'
      001357 49                    1826 	.db #0x49	; 73	'I'
      001358 49                    1827 	.db #0x49	; 73	'I'
      001359 30                    1828 	.db #0x30	; 48	'0'
      00135A 01                    1829 	.db #0x01	; 1
      00135B 71                    1830 	.db #0x71	; 113	'q'
      00135C 09                    1831 	.db #0x09	; 9
      00135D 05                    1832 	.db #0x05	; 5
      00135E 03                    1833 	.db #0x03	; 3
      00135F 36                    1834 	.db #0x36	; 54	'6'
      001360 49                    1835 	.db #0x49	; 73	'I'
      001361 49                    1836 	.db #0x49	; 73	'I'
      001362 49                    1837 	.db #0x49	; 73	'I'
      001363 36                    1838 	.db #0x36	; 54	'6'
      001364 06                    1839 	.db #0x06	; 6
      001365 49                    1840 	.db #0x49	; 73	'I'
      001366 49                    1841 	.db #0x49	; 73	'I'
      001367 29                    1842 	.db #0x29	; 41
      001368 1E                    1843 	.db #0x1e	; 30
                                   1844 	.area CSEG    (CODE)
                                   1845 	.area XINIT   (CODE)
                                   1846 	.area CABS    (ABS,CODE)
