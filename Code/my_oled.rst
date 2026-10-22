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
      000010                        443 _oled_page:
      000010                        444 	.ds 1
      000011                        445 _oled_column:
      000011                        446 	.ds 1
      000012                        447 _i2c_write_transaction_PARM_2:
      000012                        448 	.ds 3
      000015                        449 _i2c_write_transaction_PARM_3:
      000015                        450 	.ds 1
      000016                        451 _oled_command_cmd_10000_30:
      000016                        452 	.ds 1
      000017                        453 _oled_data_dat_10000_32:
      000017                        454 	.ds 1
      000018                        455 _oled_set_position_PARM_2:
      000018                        456 	.ds 1
      000019                        457 _oled_clear_zeros_10000_39:
      000019                        458 	.ds 16
      000029                        459 _oled_char_data_10000_47:
      000029                        460 	.ds 6
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
      0000C0 75 10 00         [24]  511 	mov	_oled_page,#0x00
                                    512 ;	my_oled.c:10: static unsigned char oled_column = 0;
      0000C3 75 11 00         [24]  513 	mov	_oled_column,#0x00
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
                                    526 ;	my_oled.c:51: static void i2c_delay(void)
                                    527 ;	-----------------------------------------
                                    528 ;	 function i2c_delay
                                    529 ;	-----------------------------------------
      00023C                        530 _i2c_delay:
                           000007   531 	ar7 = 0x07
                           000006   532 	ar6 = 0x06
                           000005   533 	ar5 = 0x05
                           000004   534 	ar4 = 0x04
                           000003   535 	ar3 = 0x03
                           000002   536 	ar2 = 0x02
                           000001   537 	ar1 = 0x01
                           000000   538 	ar0 = 0x00
                                    539 ;	my_oled.c:53: delay_us(5);
      00023C 90 00 05         [24]  540 	mov	dptr,#0x0005
                                    541 ;	my_oled.c:54: }
      00023F 02 00 E7         [24]  542 	ljmp	_delay_us
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'i2c_start'
                                    545 ;------------------------------------------------------------
                                    546 ;	my_oled.c:56: void i2c_start(void)
                                    547 ;	-----------------------------------------
                                    548 ;	 function i2c_start
                                    549 ;	-----------------------------------------
      000242                        550 _i2c_start:
                                    551 ;	my_oled.c:58: OLED_SDA = 1;
                                    552 ;	assignBit
      000242 D2 C1            [12]  553 	setb	_P4_1
                                    554 ;	my_oled.c:59: OLED_SCL = 1;
                                    555 ;	assignBit
      000244 D2 C0            [12]  556 	setb	_P4_0
                                    557 ;	my_oled.c:60: i2c_delay();
      000246 12 02 3C         [24]  558 	lcall	_i2c_delay
                                    559 ;	my_oled.c:61: OLED_SDA = 0;
                                    560 ;	assignBit
      000249 C2 C1            [12]  561 	clr	_P4_1
                                    562 ;	my_oled.c:62: i2c_delay();
      00024B 12 02 3C         [24]  563 	lcall	_i2c_delay
                                    564 ;	my_oled.c:63: OLED_SCL = 0;
                                    565 ;	assignBit
      00024E C2 C0            [12]  566 	clr	_P4_0
                                    567 ;	my_oled.c:64: }
      000250 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'i2c_stop'
                                    571 ;------------------------------------------------------------
                                    572 ;	my_oled.c:66: void i2c_stop(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function i2c_stop
                                    575 ;	-----------------------------------------
      000251                        576 _i2c_stop:
                                    577 ;	my_oled.c:68: OLED_SDA = 0;
                                    578 ;	assignBit
      000251 C2 C1            [12]  579 	clr	_P4_1
                                    580 ;	my_oled.c:69: OLED_SCL = 1;
                                    581 ;	assignBit
      000253 D2 C0            [12]  582 	setb	_P4_0
                                    583 ;	my_oled.c:70: i2c_delay();
      000255 12 02 3C         [24]  584 	lcall	_i2c_delay
                                    585 ;	my_oled.c:71: OLED_SDA = 1;
                                    586 ;	assignBit
      000258 D2 C1            [12]  587 	setb	_P4_1
                                    588 ;	my_oled.c:72: i2c_delay();
                                    589 ;	my_oled.c:73: }
      00025A 02 02 3C         [24]  590 	ljmp	_i2c_delay
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'i2c_write'
                                    593 ;------------------------------------------------------------
                                    594 ;dat           Allocated to registers r7 
                                    595 ;i             Allocated to registers r6 
                                    596 ;ack           Allocated to registers r7 
                                    597 ;------------------------------------------------------------
                                    598 ;	my_oled.c:75: unsigned char i2c_write(unsigned char dat)
                                    599 ;	-----------------------------------------
                                    600 ;	 function i2c_write
                                    601 ;	-----------------------------------------
      00025D                        602 _i2c_write:
      00025D AF 82            [24]  603 	mov	r7, dpl
                                    604 ;	my_oled.c:80: for(i = 0; i < 8; i++)
      00025F 7E 00            [12]  605 	mov	r6,#0x00
      000261                        606 00102$:
                                    607 ;	my_oled.c:82: OLED_SDA = (dat & 0x80) ? 1 : 0;
      000261 8F 05            [24]  608 	mov	ar5,r7
      000263 53 05 80         [24]  609 	anl	ar5,#0x80
                                    610 ;	assignBit
      000266 ED               [12]  611 	mov	a,r5
      000267 24 FF            [12]  612 	add	a,#0xff
      000269 92 C1            [24]  613 	mov	_P4_1,c
                                    614 ;	my_oled.c:83: i2c_delay();
      00026B C0 07            [24]  615 	push	ar7
      00026D C0 06            [24]  616 	push	ar6
      00026F 12 02 3C         [24]  617 	lcall	_i2c_delay
                                    618 ;	my_oled.c:84: OLED_SCL = 1;
                                    619 ;	assignBit
      000272 D2 C0            [12]  620 	setb	_P4_0
                                    621 ;	my_oled.c:85: i2c_delay();
      000274 12 02 3C         [24]  622 	lcall	_i2c_delay
      000277 D0 06            [24]  623 	pop	ar6
      000279 D0 07            [24]  624 	pop	ar7
                                    625 ;	my_oled.c:86: OLED_SCL = 0;
                                    626 ;	assignBit
      00027B C2 C0            [12]  627 	clr	_P4_0
                                    628 ;	my_oled.c:87: dat <<= 1;
      00027D EF               [12]  629 	mov	a,r7
      00027E 2F               [12]  630 	add	a,r7
      00027F FF               [12]  631 	mov	r7,a
                                    632 ;	my_oled.c:80: for(i = 0; i < 8; i++)
      000280 0E               [12]  633 	inc	r6
      000281 BE 08 00         [24]  634 	cjne	r6,#0x08,00120$
      000284                        635 00120$:
      000284 40 DB            [24]  636 	jc	00102$
                                    637 ;	my_oled.c:90: OLED_SDA = 1;
                                    638 ;	assignBit
      000286 D2 C1            [12]  639 	setb	_P4_1
                                    640 ;	my_oled.c:91: i2c_delay();
      000288 12 02 3C         [24]  641 	lcall	_i2c_delay
                                    642 ;	my_oled.c:92: OLED_SCL = 1;
                                    643 ;	assignBit
      00028B D2 C0            [12]  644 	setb	_P4_0
                                    645 ;	my_oled.c:93: i2c_delay();
      00028D 12 02 3C         [24]  646 	lcall	_i2c_delay
                                    647 ;	my_oled.c:94: ack = OLED_SDA;
      000290 A2 C1            [12]  648 	mov	c,_P4_1
      000292 E4               [12]  649 	clr	a
      000293 33               [12]  650 	rlc	a
      000294 FF               [12]  651 	mov	r7,a
                                    652 ;	my_oled.c:95: OLED_SCL = 0;
                                    653 ;	assignBit
      000295 C2 C0            [12]  654 	clr	_P4_0
                                    655 ;	my_oled.c:96: i2c_delay();
      000297 C0 07            [24]  656 	push	ar7
      000299 12 02 3C         [24]  657 	lcall	_i2c_delay
      00029C D0 07            [24]  658 	pop	ar7
                                    659 ;	my_oled.c:98: return (ack == 0);
      00029E E4               [12]  660 	clr	a
      00029F BF 00 01         [24]  661 	cjne	r7,#0x00,00122$
      0002A2 04               [12]  662 	inc	a
      0002A3                        663 00122$:
      0002A3 F5 82            [12]  664 	mov	dpl,a
                                    665 ;	my_oled.c:99: }
      0002A5 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'i2c_write_transaction'
                                    669 ;------------------------------------------------------------
                                    670 ;data          Allocated with name '_i2c_write_transaction_PARM_2'
                                    671 ;length        Allocated with name '_i2c_write_transaction_PARM_3'
                                    672 ;control       Allocated to registers r7 
                                    673 ;i             Allocated to registers r7 
                                    674 ;success       Allocated to registers r6 
                                    675 ;------------------------------------------------------------
                                    676 ;	my_oled.c:101: static unsigned char i2c_write_transaction(
                                    677 ;	-----------------------------------------
                                    678 ;	 function i2c_write_transaction
                                    679 ;	-----------------------------------------
      0002A6                        680 _i2c_write_transaction:
      0002A6 AF 82            [24]  681 	mov	r7, dpl
                                    682 ;	my_oled.c:107: unsigned char success = 1;
      0002A8 7E 01            [12]  683 	mov	r6,#0x01
                                    684 ;	my_oled.c:109: i2c_start();
      0002AA C0 07            [24]  685 	push	ar7
      0002AC C0 06            [24]  686 	push	ar6
      0002AE 12 02 42         [24]  687 	lcall	_i2c_start
                                    688 ;	my_oled.c:111: if(!i2c_write(OLED_ADDR))
      0002B1 75 82 78         [24]  689 	mov	dpl, #0x78
      0002B4 12 02 5D         [24]  690 	lcall	_i2c_write
      0002B7 E5 82            [12]  691 	mov	a, dpl
      0002B9 D0 06            [24]  692 	pop	ar6
      0002BB D0 07            [24]  693 	pop	ar7
                                    694 ;	my_oled.c:112: success = 0;
      0002BD 70 01            [24]  695 	jnz	00102$
      0002BF FE               [12]  696 	mov	r6,a
      0002C0                        697 00102$:
                                    698 ;	my_oled.c:114: if(success && !i2c_write(control))
      0002C0 EE               [12]  699 	mov	a,r6
      0002C1 60 0E            [24]  700 	jz	00104$
      0002C3 8F 82            [24]  701 	mov	dpl, r7
      0002C5 C0 06            [24]  702 	push	ar6
      0002C7 12 02 5D         [24]  703 	lcall	_i2c_write
      0002CA E5 82            [12]  704 	mov	a, dpl
      0002CC D0 06            [24]  705 	pop	ar6
                                    706 ;	my_oled.c:115: success = 0;
      0002CE 70 01            [24]  707 	jnz	00104$
      0002D0 FE               [12]  708 	mov	r6,a
      0002D1                        709 00104$:
                                    710 ;	my_oled.c:117: for(i = 0; i < length && success; i++)
      0002D1 7F 00            [12]  711 	mov	r7,#0x00
      0002D3                        712 00111$:
      0002D3 C3               [12]  713 	clr	c
      0002D4 EF               [12]  714 	mov	a,r7
      0002D5 95 15            [12]  715 	subb	a,_i2c_write_transaction_PARM_3
      0002D7 50 2B            [24]  716 	jnc	00108$
      0002D9 EE               [12]  717 	mov	a,r6
      0002DA 60 28            [24]  718 	jz	00108$
                                    719 ;	my_oled.c:119: if(!i2c_write(data[i]))
      0002DC EF               [12]  720 	mov	a,r7
      0002DD 25 12            [12]  721 	add	a, _i2c_write_transaction_PARM_2
      0002DF FB               [12]  722 	mov	r3,a
      0002E0 E4               [12]  723 	clr	a
      0002E1 35 13            [12]  724 	addc	a, (_i2c_write_transaction_PARM_2 + 1)
      0002E3 FC               [12]  725 	mov	r4,a
      0002E4 AD 14            [24]  726 	mov	r5,(_i2c_write_transaction_PARM_2 + 2)
      0002E6 8B 82            [24]  727 	mov	dpl,r3
      0002E8 8C 83            [24]  728 	mov	dph,r4
      0002EA 8D F0            [24]  729 	mov	b,r5
      0002EC 12 07 BD         [24]  730 	lcall	__gptrget
      0002EF F5 82            [12]  731 	mov	dpl,a
      0002F1 C0 07            [24]  732 	push	ar7
      0002F3 C0 06            [24]  733 	push	ar6
      0002F5 12 02 5D         [24]  734 	lcall	_i2c_write
      0002F8 E5 82            [12]  735 	mov	a, dpl
      0002FA D0 06            [24]  736 	pop	ar6
      0002FC D0 07            [24]  737 	pop	ar7
                                    738 ;	my_oled.c:120: success = 0;
      0002FE 70 01            [24]  739 	jnz	00112$
      000300 FE               [12]  740 	mov	r6,a
      000301                        741 00112$:
                                    742 ;	my_oled.c:117: for(i = 0; i < length && success; i++)
      000301 0F               [12]  743 	inc	r7
      000302 80 CF            [24]  744 	sjmp	00111$
      000304                        745 00108$:
                                    746 ;	my_oled.c:123: i2c_stop();
      000304 C0 06            [24]  747 	push	ar6
      000306 12 02 51         [24]  748 	lcall	_i2c_stop
      000309 D0 06            [24]  749 	pop	ar6
                                    750 ;	my_oled.c:124: return success;
      00030B 8E 82            [24]  751 	mov	dpl, r6
                                    752 ;	my_oled.c:125: }
      00030D 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'oled_command'
                                    756 ;------------------------------------------------------------
                                    757 ;cmd           Allocated with name '_oled_command_cmd_10000_30'
                                    758 ;------------------------------------------------------------
                                    759 ;	my_oled.c:127: void oled_command(unsigned char cmd)
                                    760 ;	-----------------------------------------
                                    761 ;	 function oled_command
                                    762 ;	-----------------------------------------
      00030E                        763 _oled_command:
      00030E 85 82 16         [24]  764 	mov	_oled_command_cmd_10000_30,dpl
                                    765 ;	my_oled.c:129: i2c_write_transaction(0x00, &cmd, 1);
      000311 75 12 16         [24]  766 	mov	_i2c_write_transaction_PARM_2,#_oled_command_cmd_10000_30
      000314 75 13 00         [24]  767 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000317 75 14 40         [24]  768 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      00031A 75 15 01         [24]  769 	mov	_i2c_write_transaction_PARM_3,#0x01
      00031D 75 82 00         [24]  770 	mov	dpl, #0x00
                                    771 ;	my_oled.c:130: }
      000320 02 02 A6         [24]  772 	ljmp	_i2c_write_transaction
                                    773 ;------------------------------------------------------------
                                    774 ;Allocation info for local variables in function 'oled_data'
                                    775 ;------------------------------------------------------------
                                    776 ;dat           Allocated with name '_oled_data_dat_10000_32'
                                    777 ;------------------------------------------------------------
                                    778 ;	my_oled.c:132: void oled_data(unsigned char dat)
                                    779 ;	-----------------------------------------
                                    780 ;	 function oled_data
                                    781 ;	-----------------------------------------
      000323                        782 _oled_data:
      000323 85 82 17         [24]  783 	mov	_oled_data_dat_10000_32,dpl
                                    784 ;	my_oled.c:134: i2c_write_transaction(0x40, &dat, 1);
      000326 75 12 17         [24]  785 	mov	_i2c_write_transaction_PARM_2,#_oled_data_dat_10000_32
      000329 75 13 00         [24]  786 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      00032C 75 14 40         [24]  787 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      00032F 75 15 01         [24]  788 	mov	_i2c_write_transaction_PARM_3,#0x01
      000332 75 82 40         [24]  789 	mov	dpl, #0x40
                                    790 ;	my_oled.c:135: }
      000335 02 02 A6         [24]  791 	ljmp	_i2c_write_transaction
                                    792 ;------------------------------------------------------------
                                    793 ;Allocation info for local variables in function 'oled_set_position'
                                    794 ;------------------------------------------------------------
                                    795 ;column        Allocated with name '_oled_set_position_PARM_2'
                                    796 ;page          Allocated to registers r7 
                                    797 ;------------------------------------------------------------
                                    798 ;	my_oled.c:137: void oled_set_position(unsigned char page, unsigned char column)
                                    799 ;	-----------------------------------------
                                    800 ;	 function oled_set_position
                                    801 ;	-----------------------------------------
      000338                        802 _oled_set_position:
                                    803 ;	my_oled.c:139: if(page > 7)
      000338 E5 82            [12]  804 	mov	a,dpl
      00033A FF               [12]  805 	mov	r7,a
      00033B 24 F8            [12]  806 	add	a,#0xff - 0x07
      00033D 50 02            [24]  807 	jnc	00102$
                                    808 ;	free result
                                    809 ;	my_oled.c:140: page = 7;
      00033F 7F 07            [12]  810 	mov	r7,#0x07
      000341                        811 00102$:
                                    812 ;	my_oled.c:142: if(column > 127)
      000341 E5 18            [12]  813 	mov	a,_oled_set_position_PARM_2
      000343 24 80            [12]  814 	add	a,#0xff - 0x7f
      000345 50 03            [24]  815 	jnc	00104$
                                    816 ;	free result
                                    817 ;	my_oled.c:143: column = 127;
      000347 75 18 7F         [24]  818 	mov	_oled_set_position_PARM_2,#0x7f
      00034A                        819 00104$:
                                    820 ;	my_oled.c:145: oled_page = page;
      00034A 8F 10            [24]  821 	mov	_oled_page,r7
                                    822 ;	my_oled.c:146: oled_column = column;
      00034C AE 18            [24]  823 	mov	r6,_oled_set_position_PARM_2
      00034E 8E 11            [24]  824 	mov	_oled_column,r6
                                    825 ;	my_oled.c:148: oled_command(0xB0 | page);
      000350 74 B0            [12]  826 	mov	a,#0xb0
      000352 4F               [12]  827 	orl	a,r7
      000353 F5 82            [12]  828 	mov	dpl,a
      000355 C0 06            [24]  829 	push	ar6
      000357 12 03 0E         [24]  830 	lcall	_oled_command
      00035A D0 06            [24]  831 	pop	ar6
                                    832 ;	my_oled.c:149: oled_command(column & 0x0F);
      00035C 74 0F            [12]  833 	mov	a,#0x0f
      00035E 5E               [12]  834 	anl	a,r6
      00035F F5 82            [12]  835 	mov	dpl,a
      000361 C0 06            [24]  836 	push	ar6
      000363 12 03 0E         [24]  837 	lcall	_oled_command
      000366 D0 06            [24]  838 	pop	ar6
                                    839 ;	my_oled.c:150: oled_command(0x10 | (column >> 4));
      000368 EE               [12]  840 	mov	a,r6
      000369 C4               [12]  841 	swap	a
      00036A 54 0F            [12]  842 	anl	a,#0x0f
      00036C FE               [12]  843 	mov	r6,a
      00036D 74 10            [12]  844 	mov	a,#0x10
      00036F 4E               [12]  845 	orl	a,r6
      000370 F5 82            [12]  846 	mov	dpl,a
                                    847 ;	my_oled.c:151: }
      000372 02 03 0E         [24]  848 	ljmp	_oled_command
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'oled_clear'
                                    851 ;------------------------------------------------------------
                                    852 ;page          Allocated to registers r7 
                                    853 ;col           Allocated to registers r6 
                                    854 ;i             Allocated to registers r7 
                                    855 ;zeros         Allocated with name '_oled_clear_zeros_10000_39'
                                    856 ;------------------------------------------------------------
                                    857 ;	my_oled.c:153: void oled_clear(void)
                                    858 ;	-----------------------------------------
                                    859 ;	 function oled_clear
                                    860 ;	-----------------------------------------
      000375                        861 _oled_clear:
                                    862 ;	my_oled.c:160: for(i = 0; i < 16; i++)
      000375 7F 00            [12]  863 	mov	r7,#0x00
      000377                        864 00104$:
                                    865 ;	my_oled.c:161: zeros[i] = 0x00;
      000377 EF               [12]  866 	mov	a,r7
      000378 24 19            [12]  867 	add	a, #_oled_clear_zeros_10000_39
      00037A F8               [12]  868 	mov	r0,a
      00037B 76 00            [12]  869 	mov	@r0,#0x00
                                    870 ;	my_oled.c:160: for(i = 0; i < 16; i++)
      00037D 0F               [12]  871 	inc	r7
      00037E BF 10 00         [24]  872 	cjne	r7,#0x10,00154$
      000381                        873 00154$:
      000381 40 F4            [24]  874 	jc	00104$
                                    875 ;	my_oled.c:163: for(page = 0; page < 8; page++)
      000383 7F 00            [12]  876 	mov	r7,#0x00
      000385                        877 00108$:
                                    878 ;	my_oled.c:165: oled_set_position(page, 0);
      000385 75 18 00         [24]  879 	mov	_oled_set_position_PARM_2,#0x00
      000388 8F 82            [24]  880 	mov	dpl, r7
      00038A C0 07            [24]  881 	push	ar7
      00038C 12 03 38         [24]  882 	lcall	_oled_set_position
      00038F D0 07            [24]  883 	pop	ar7
                                    884 ;	my_oled.c:167: for(col = 0; col < 128; col += 16)
      000391 7E 00            [12]  885 	mov	r6,#0x00
      000393                        886 00106$:
                                    887 ;	my_oled.c:168: i2c_write_transaction(0x40, zeros, 16);
      000393 75 12 19         [24]  888 	mov	_i2c_write_transaction_PARM_2,#_oled_clear_zeros_10000_39
      000396 75 13 00         [24]  889 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000399 75 14 40         [24]  890 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      00039C 75 15 10         [24]  891 	mov	_i2c_write_transaction_PARM_3,#0x10
      00039F 75 82 40         [24]  892 	mov	dpl, #0x40
      0003A2 C0 07            [24]  893 	push	ar7
      0003A4 C0 06            [24]  894 	push	ar6
      0003A6 12 02 A6         [24]  895 	lcall	_i2c_write_transaction
      0003A9 D0 06            [24]  896 	pop	ar6
      0003AB D0 07            [24]  897 	pop	ar7
                                    898 ;	my_oled.c:167: for(col = 0; col < 128; col += 16)
      0003AD 8E 05            [24]  899 	mov	ar5,r6
      0003AF 74 10            [12]  900 	mov	a,#0x10
      0003B1 2D               [12]  901 	add	a, r5
      0003B2 FE               [12]  902 	mov	r6,a
      0003B3 BE 80 00         [24]  903 	cjne	r6,#0x80,00156$
      0003B6                        904 00156$:
      0003B6 40 DB            [24]  905 	jc	00106$
                                    906 ;	my_oled.c:163: for(page = 0; page < 8; page++)
      0003B8 0F               [12]  907 	inc	r7
      0003B9 BF 08 00         [24]  908 	cjne	r7,#0x08,00158$
      0003BC                        909 00158$:
      0003BC 40 C7            [24]  910 	jc	00108$
                                    911 ;	my_oled.c:171: oled_set_position(0, 0);
      0003BE 75 18 00         [24]  912 	mov	_oled_set_position_PARM_2,#0x00
      0003C1 75 82 00         [24]  913 	mov	dpl, #0x00
                                    914 ;	my_oled.c:172: }
      0003C4 02 03 38         [24]  915 	ljmp	_oled_set_position
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'oled_init'
                                    918 ;------------------------------------------------------------
                                    919 ;	my_oled.c:174: void oled_init(void)
                                    920 ;	-----------------------------------------
                                    921 ;	 function oled_init
                                    922 ;	-----------------------------------------
      0003C7                        923 _oled_init:
                                    924 ;	my_oled.c:176: delay_ms(100);
      0003C7 90 00 64         [24]  925 	mov	dptr,#0x0064
      0003CA E4               [12]  926 	clr	a
      0003CB F5 F0            [12]  927 	mov	b,a
      0003CD 12 00 FF         [24]  928 	lcall	_delay_ms
                                    929 ;	my_oled.c:178: OLED_SCL = 1;
                                    930 ;	assignBit
      0003D0 D2 C0            [12]  931 	setb	_P4_0
                                    932 ;	my_oled.c:179: OLED_SDA = 1;
                                    933 ;	assignBit
      0003D2 D2 C1            [12]  934 	setb	_P4_1
                                    935 ;	my_oled.c:181: oled_command(0xAE);
      0003D4 75 82 AE         [24]  936 	mov	dpl, #0xae
      0003D7 12 03 0E         [24]  937 	lcall	_oled_command
                                    938 ;	my_oled.c:182: oled_command(0xD5);
      0003DA 75 82 D5         [24]  939 	mov	dpl, #0xd5
      0003DD 12 03 0E         [24]  940 	lcall	_oled_command
                                    941 ;	my_oled.c:183: oled_command(0x80);
      0003E0 75 82 80         [24]  942 	mov	dpl, #0x80
      0003E3 12 03 0E         [24]  943 	lcall	_oled_command
                                    944 ;	my_oled.c:184: oled_command(0xA8);
      0003E6 75 82 A8         [24]  945 	mov	dpl, #0xa8
      0003E9 12 03 0E         [24]  946 	lcall	_oled_command
                                    947 ;	my_oled.c:185: oled_command(0x3F);
      0003EC 75 82 3F         [24]  948 	mov	dpl, #0x3f
      0003EF 12 03 0E         [24]  949 	lcall	_oled_command
                                    950 ;	my_oled.c:186: oled_command(0xD3);
      0003F2 75 82 D3         [24]  951 	mov	dpl, #0xd3
      0003F5 12 03 0E         [24]  952 	lcall	_oled_command
                                    953 ;	my_oled.c:187: oled_command(0x00);
      0003F8 75 82 00         [24]  954 	mov	dpl, #0x00
      0003FB 12 03 0E         [24]  955 	lcall	_oled_command
                                    956 ;	my_oled.c:188: oled_command(0x40);
      0003FE 75 82 40         [24]  957 	mov	dpl, #0x40
      000401 12 03 0E         [24]  958 	lcall	_oled_command
                                    959 ;	my_oled.c:189: oled_command(0x8D);
      000404 75 82 8D         [24]  960 	mov	dpl, #0x8d
      000407 12 03 0E         [24]  961 	lcall	_oled_command
                                    962 ;	my_oled.c:190: oled_command(0x14);
      00040A 75 82 14         [24]  963 	mov	dpl, #0x14
      00040D 12 03 0E         [24]  964 	lcall	_oled_command
                                    965 ;	my_oled.c:191: oled_command(0x20);
      000410 75 82 20         [24]  966 	mov	dpl, #0x20
      000413 12 03 0E         [24]  967 	lcall	_oled_command
                                    968 ;	my_oled.c:192: oled_command(0x02);
      000416 75 82 02         [24]  969 	mov	dpl, #0x02
      000419 12 03 0E         [24]  970 	lcall	_oled_command
                                    971 ;	my_oled.c:193: oled_command(0xA1);
      00041C 75 82 A1         [24]  972 	mov	dpl, #0xa1
      00041F 12 03 0E         [24]  973 	lcall	_oled_command
                                    974 ;	my_oled.c:194: oled_command(0xC8);
      000422 75 82 C8         [24]  975 	mov	dpl, #0xc8
      000425 12 03 0E         [24]  976 	lcall	_oled_command
                                    977 ;	my_oled.c:195: oled_command(0xDA);
      000428 75 82 DA         [24]  978 	mov	dpl, #0xda
      00042B 12 03 0E         [24]  979 	lcall	_oled_command
                                    980 ;	my_oled.c:196: oled_command(0x12);
      00042E 75 82 12         [24]  981 	mov	dpl, #0x12
      000431 12 03 0E         [24]  982 	lcall	_oled_command
                                    983 ;	my_oled.c:197: oled_command(0x81);
      000434 75 82 81         [24]  984 	mov	dpl, #0x81
      000437 12 03 0E         [24]  985 	lcall	_oled_command
                                    986 ;	my_oled.c:198: oled_command(0x7F);
      00043A 75 82 7F         [24]  987 	mov	dpl, #0x7f
      00043D 12 03 0E         [24]  988 	lcall	_oled_command
                                    989 ;	my_oled.c:199: oled_command(0xD9);
      000440 75 82 D9         [24]  990 	mov	dpl, #0xd9
      000443 12 03 0E         [24]  991 	lcall	_oled_command
                                    992 ;	my_oled.c:200: oled_command(0xF1);
      000446 75 82 F1         [24]  993 	mov	dpl, #0xf1
      000449 12 03 0E         [24]  994 	lcall	_oled_command
                                    995 ;	my_oled.c:201: oled_command(0xDB);
      00044C 75 82 DB         [24]  996 	mov	dpl, #0xdb
      00044F 12 03 0E         [24]  997 	lcall	_oled_command
                                    998 ;	my_oled.c:202: oled_command(0x40);
      000452 75 82 40         [24]  999 	mov	dpl, #0x40
      000455 12 03 0E         [24] 1000 	lcall	_oled_command
                                   1001 ;	my_oled.c:203: oled_command(0xA4);
      000458 75 82 A4         [24] 1002 	mov	dpl, #0xa4
      00045B 12 03 0E         [24] 1003 	lcall	_oled_command
                                   1004 ;	my_oled.c:204: oled_command(0xA6);
      00045E 75 82 A6         [24] 1005 	mov	dpl, #0xa6
      000461 12 03 0E         [24] 1006 	lcall	_oled_command
                                   1007 ;	my_oled.c:206: oled_clear();
      000464 12 03 75         [24] 1008 	lcall	_oled_clear
                                   1009 ;	my_oled.c:207: oled_command(0xAF);
      000467 75 82 AF         [24] 1010 	mov	dpl, #0xaf
      00046A 12 03 0E         [24] 1011 	lcall	_oled_command
                                   1012 ;	my_oled.c:208: oled_set_position(0, 0);
      00046D 75 18 00         [24] 1013 	mov	_oled_set_position_PARM_2,#0x00
      000470 75 82 00         [24] 1014 	mov	dpl, #0x00
                                   1015 ;	my_oled.c:209: }
      000473 02 03 38         [24] 1016 	ljmp	_oled_set_position
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'oled_char'
                                   1019 ;------------------------------------------------------------
                                   1020 ;c             Allocated to registers r7 
                                   1021 ;i             Allocated to registers r5 
                                   1022 ;index         Allocated to registers r6 
                                   1023 ;data          Allocated with name '_oled_char_data_10000_47'
                                   1024 ;------------------------------------------------------------
                                   1025 ;	my_oled.c:211: void oled_char(unsigned char c)
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function oled_char
                                   1028 ;	-----------------------------------------
      000476                       1029 _oled_char:
      000476 AF 82            [24] 1030 	mov	r7, dpl
                                   1031 ;	my_oled.c:217: if(c >= 'a' && c <= 'z')
      000478 BF 61 00         [24] 1032 	cjne	r7,#0x61,00513$
      00047B                       1033 00513$:
      00047B 40 0B            [24] 1034 	jc	00102$
      00047D EF               [12] 1035 	mov	a,r7
      00047E 24 85            [12] 1036 	add	a,#0xff - 0x7a
      000480 40 06            [24] 1037 	jc	00102$
                                   1038 ;	free result
                                   1039 ;	my_oled.c:218: c -= ('a' - 'A');
      000482 8F 06            [24] 1040 	mov	ar6,r7
      000484 EE               [12] 1041 	mov	a,r6
      000485 24 E0            [12] 1042 	add	a,#0xe0
      000487 FF               [12] 1043 	mov	r7,a
      000488                       1044 00102$:
                                   1045 ;	my_oled.c:220: for(i = 0; i < 6; i++)
      000488 7E 00            [12] 1046 	mov	r6,#0x00
      00048A                       1047 00153$:
                                   1048 ;	my_oled.c:221: data[i] = 0x00;
      00048A EE               [12] 1049 	mov	a,r6
      00048B 24 29            [12] 1050 	add	a, #_oled_char_data_10000_47
      00048D F8               [12] 1051 	mov	r0,a
      00048E 76 00            [12] 1052 	mov	@r0,#0x00
                                   1053 ;	my_oled.c:220: for(i = 0; i < 6; i++)
      000490 0E               [12] 1054 	inc	r6
      000491 BE 06 00         [24] 1055 	cjne	r6,#0x06,00516$
      000494                       1056 00516$:
      000494 40 F4            [24] 1057 	jc	00153$
                                   1058 ;	my_oled.c:223: if(c >= 'A' && c <= 'Z')
      000496 BF 41 00         [24] 1059 	cjne	r7,#0x41,00518$
      000499                       1060 00518$:
      000499 40 30            [24] 1061 	jc	00142$
      00049B EF               [12] 1062 	mov	a,r7
      00049C 24 A5            [12] 1063 	add	a,#0xff - 0x5a
      00049E 40 2B            [24] 1064 	jc	00142$
                                   1065 ;	free result
                                   1066 ;	my_oled.c:225: index = c - 'A';
      0004A0 8F 06            [24] 1067 	mov	ar6,r7
      0004A2 EE               [12] 1068 	mov	a,r6
      0004A3 24 BF            [12] 1069 	add	a,#0xbf
                                   1070 ;	my_oled.c:227: for(i = 0; i < 5; i++)
      0004A5 7D 00            [12] 1071 	mov	r5,#0x00
      0004A7 75 F0 05         [24] 1072 	mov	b,#0x05
      0004AA A4               [48] 1073 	mul	ab
      0004AB 24 E7            [12] 1074 	add	a, #_font5x7
      0004AD FC               [12] 1075 	mov	r4,a
      0004AE 74 07            [12] 1076 	mov	a,#(_font5x7 >> 8)
      0004B0 35 F0            [12] 1077 	addc	a, b
      0004B2 FE               [12] 1078 	mov	r6,a
      0004B3                       1079 00155$:
                                   1080 ;	my_oled.c:228: data[i] = font5x7[index][i];
      0004B3 ED               [12] 1081 	mov	a,r5
      0004B4 24 29            [12] 1082 	add	a, #_oled_char_data_10000_47
      0004B6 F9               [12] 1083 	mov	r1,a
      0004B7 ED               [12] 1084 	mov	a,r5
      0004B8 2C               [12] 1085 	add	a, r4
      0004B9 F5 82            [12] 1086 	mov	dpl,a
      0004BB E4               [12] 1087 	clr	a
      0004BC 3E               [12] 1088 	addc	a, r6
      0004BD F5 83            [12] 1089 	mov	dph,a
      0004BF E4               [12] 1090 	clr	a
      0004C0 93               [24] 1091 	movc	a,@a+dptr
      0004C1 F7               [12] 1092 	mov	@r1,a
                                   1093 ;	my_oled.c:227: for(i = 0; i < 5; i++)
      0004C2 0D               [12] 1094 	inc	r5
      0004C3 BD 05 00         [24] 1095 	cjne	r5,#0x05,00521$
      0004C6                       1096 00521$:
      0004C6 40 EB            [24] 1097 	jc	00155$
      0004C8 02 06 E3         [24] 1098 	ljmp	00143$
      0004CB                       1099 00142$:
                                   1100 ;	my_oled.c:230: else if(c >= '0' && c <= '9')
      0004CB BF 30 00         [24] 1101 	cjne	r7,#0x30,00523$
      0004CE                       1102 00523$:
      0004CE 40 30            [24] 1103 	jc	00138$
      0004D0 EF               [12] 1104 	mov	a,r7
      0004D1 24 C6            [12] 1105 	add	a,#0xff - 0x39
      0004D3 40 2B            [24] 1106 	jc	00138$
                                   1107 ;	free result
                                   1108 ;	my_oled.c:232: index = 26 + c - '0';
      0004D5 8F 06            [24] 1109 	mov	ar6,r7
      0004D7 74 EA            [12] 1110 	mov	a,#0xea
      0004D9 2E               [12] 1111 	add	a, r6
                                   1112 ;	my_oled.c:234: for(i = 0; i < 5; i++)
      0004DA 7D 00            [12] 1113 	mov	r5,#0x00
      0004DC 75 F0 05         [24] 1114 	mov	b,#0x05
      0004DF A4               [48] 1115 	mul	ab
      0004E0 24 E7            [12] 1116 	add	a, #_font5x7
      0004E2 FC               [12] 1117 	mov	r4,a
      0004E3 74 07            [12] 1118 	mov	a,#(_font5x7 >> 8)
      0004E5 35 F0            [12] 1119 	addc	a, b
      0004E7 FE               [12] 1120 	mov	r6,a
      0004E8                       1121 00157$:
                                   1122 ;	my_oled.c:235: data[i] = font5x7[index][i];
      0004E8 ED               [12] 1123 	mov	a,r5
      0004E9 24 29            [12] 1124 	add	a, #_oled_char_data_10000_47
      0004EB F9               [12] 1125 	mov	r1,a
      0004EC ED               [12] 1126 	mov	a,r5
      0004ED 2C               [12] 1127 	add	a, r4
      0004EE F5 82            [12] 1128 	mov	dpl,a
      0004F0 E4               [12] 1129 	clr	a
      0004F1 3E               [12] 1130 	addc	a, r6
      0004F2 F5 83            [12] 1131 	mov	dph,a
      0004F4 E4               [12] 1132 	clr	a
      0004F5 93               [24] 1133 	movc	a,@a+dptr
      0004F6 F7               [12] 1134 	mov	@r1,a
                                   1135 ;	my_oled.c:234: for(i = 0; i < 5; i++)
      0004F7 0D               [12] 1136 	inc	r5
      0004F8 BD 05 00         [24] 1137 	cjne	r5,#0x05,00526$
      0004FB                       1138 00526$:
      0004FB 40 EB            [24] 1139 	jc	00157$
      0004FD 02 06 E3         [24] 1140 	ljmp	00143$
      000500                       1141 00138$:
                                   1142 ;	my_oled.c:239: switch(c)
      000500 BF 20 03         [24] 1143 	cjne	r7,#0x20,00528$
      000503 02 06 E3         [24] 1144 	ljmp	00143$
      000506                       1145 00528$:
      000506 BF 21 03         [24] 1146 	cjne	r7,#0x21,00529$
      000509 02 05 E6         [24] 1147 	ljmp	00113$
      00050C                       1148 00529$:
      00050C BF 22 03         [24] 1149 	cjne	r7,#0x22,00530$
      00050F 02 06 69         [24] 1150 	ljmp	00123$
      000512                       1151 00530$:
      000512 BF 23 03         [24] 1152 	cjne	r7,#0x23,00531$
      000515 02 06 7C         [24] 1153 	ljmp	00125$
      000518                       1154 00531$:
      000518 BF 25 03         [24] 1155 	cjne	r7,#0x25,00532$
      00051B 02 06 52         [24] 1156 	ljmp	00121$
      00051E                       1157 00532$:
      00051E BF 27 03         [24] 1158 	cjne	r7,#0x27,00533$
      000521 02 06 64         [24] 1159 	ljmp	00122$
      000524                       1160 00533$:
      000524 BF 28 03         [24] 1161 	cjne	r7,#0x28,00534$
      000527 02 06 3A         [24] 1162 	ljmp	00119$
      00052A                       1163 00534$:
      00052A BF 29 03         [24] 1164 	cjne	r7,#0x29,00535$
      00052D 02 06 46         [24] 1165 	ljmp	00120$
      000530                       1166 00535$:
      000530 BF 2A 03         [24] 1167 	cjne	r7,#0x2a,00536$
      000533 02 06 71         [24] 1168 	ljmp	00124$
      000536                       1169 00536$:
      000536 BF 2B 03         [24] 1170 	cjne	r7,#0x2b,00537$
      000539 02 06 22         [24] 1171 	ljmp	00117$
      00053C                       1172 00537$:
      00053C BF 2C 02         [24] 1173 	cjne	r7,#0x2c,00538$
      00053F 80 69            [24] 1174 	sjmp	00108$
      000541                       1175 00538$:
      000541 BF 2D 02         [24] 1176 	cjne	r7,#0x2d,00539$
      000544 80 7C            [24] 1177 	sjmp	00111$
      000546                       1178 00539$:
      000546 BF 2E 02         [24] 1179 	cjne	r7,#0x2e,00540$
      000549 80 59            [24] 1180 	sjmp	00107$
      00054B                       1181 00540$:
      00054B BF 2F 03         [24] 1182 	cjne	r7,#0x2f,00541$
      00054E 02 05 FE         [24] 1183 	ljmp	00115$
      000551                       1184 00541$:
      000551 BF 3A 02         [24] 1185 	cjne	r7,#0x3a,00542$
      000554 80 5D            [24] 1186 	sjmp	00109$
      000556                       1187 00542$:
      000556 BF 3B 02         [24] 1188 	cjne	r7,#0x3b,00543$
      000559 80 5E            [24] 1189 	sjmp	00110$
      00055B                       1190 00543$:
      00055B BF 3C 03         [24] 1191 	cjne	r7,#0x3c,00544$
      00055E 02 06 8D         [24] 1192 	ljmp	00126$
      000561                       1193 00544$:
      000561 BF 3D 03         [24] 1194 	cjne	r7,#0x3d,00545$
      000564 02 06 2E         [24] 1195 	ljmp	00118$
      000567                       1196 00545$:
      000567 BF 3E 03         [24] 1197 	cjne	r7,#0x3e,00546$
      00056A 02 06 9B         [24] 1198 	ljmp	00127$
      00056D                       1199 00546$:
      00056D BF 3F 02         [24] 1200 	cjne	r7,#0x3f,00547$
      000570 80 7A            [24] 1201 	sjmp	00114$
      000572                       1202 00547$:
      000572 BF 5B 03         [24] 1203 	cjne	r7,#0x5b,00548$
      000575 02 06 AE         [24] 1204 	ljmp	00129$
      000578                       1205 00548$:
      000578 BF 5C 03         [24] 1206 	cjne	r7,#0x5c,00549$
      00057B 02 06 10         [24] 1207 	ljmp	00116$
      00057E                       1208 00549$:
      00057E BF 5D 03         [24] 1209 	cjne	r7,#0x5d,00550$
      000581 02 06 B6         [24] 1210 	ljmp	00130$
      000584                       1211 00550$:
      000584 BF 5F 02         [24] 1212 	cjne	r7,#0x5f,00551$
      000587 80 4B            [24] 1213 	sjmp	00112$
      000589                       1214 00551$:
      000589 BF 7B 03         [24] 1215 	cjne	r7,#0x7b,00552$
      00058C 02 06 BE         [24] 1216 	ljmp	00131$
      00058F                       1217 00552$:
      00058F BF 7C 03         [24] 1218 	cjne	r7,#0x7c,00553$
      000592 02 06 A9         [24] 1219 	ljmp	00128$
      000595                       1220 00553$:
      000595 BF 7D 03         [24] 1221 	cjne	r7,#0x7d,00554$
      000598 02 06 C9         [24] 1222 	ljmp	00132$
      00059B                       1223 00554$:
      00059B BF 7E 03         [24] 1224 	cjne	r7,#0x7e,00555$
      00059E 02 06 D4         [24] 1225 	ljmp	00133$
      0005A1                       1226 00555$:
      0005A1 02 06 E3         [24] 1227 	ljmp	00143$
                                   1228 ;	my_oled.c:241: case '.':
      0005A4                       1229 00107$:
                                   1230 ;	my_oled.c:242: data[2] = 0x60;
      0005A4 75 2B 60         [24] 1231 	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
                                   1232 ;	my_oled.c:243: break;
      0005A7 02 06 E3         [24] 1233 	ljmp	00143$
                                   1234 ;	my_oled.c:245: case ',':
      0005AA                       1235 00108$:
                                   1236 ;	my_oled.c:246: data[2] = 0x60;
      0005AA 75 2B 60         [24] 1237 	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
                                   1238 ;	my_oled.c:247: data[3] = 0x40;
      0005AD 75 2C 40         [24] 1239 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1240 ;	my_oled.c:248: break;
      0005B0 02 06 E3         [24] 1241 	ljmp	00143$
                                   1242 ;	my_oled.c:250: case ':':
      0005B3                       1243 00109$:
                                   1244 ;	my_oled.c:251: data[2] = 0x36;
      0005B3 75 2B 36         [24] 1245 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1246 ;	my_oled.c:252: break;
      0005B6 02 06 E3         [24] 1247 	ljmp	00143$
                                   1248 ;	my_oled.c:254: case ';':
      0005B9                       1249 00110$:
                                   1250 ;	my_oled.c:255: data[2] = 0x36;
      0005B9 75 2B 36         [24] 1251 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1252 ;	my_oled.c:256: data[3] = 0x40;
      0005BC 75 2C 40         [24] 1253 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1254 ;	my_oled.c:257: break;
      0005BF 02 06 E3         [24] 1255 	ljmp	00143$
                                   1256 ;	my_oled.c:259: case '-':
      0005C2                       1257 00111$:
                                   1258 ;	my_oled.c:260: data[0] = 0x08;
      0005C2 75 29 08         [24] 1259 	mov	_oled_char_data_10000_47,#0x08
                                   1260 ;	my_oled.c:261: data[1] = 0x08;
      0005C5 75 2A 08         [24] 1261 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1262 ;	my_oled.c:262: data[2] = 0x08;
      0005C8 75 2B 08         [24] 1263 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1264 ;	my_oled.c:263: data[3] = 0x08;
      0005CB 75 2C 08         [24] 1265 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1266 ;	my_oled.c:264: data[4] = 0x08;
      0005CE 75 2D 08         [24] 1267 	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
                                   1268 ;	my_oled.c:265: break;
      0005D1 02 06 E3         [24] 1269 	ljmp	00143$
                                   1270 ;	my_oled.c:267: case '_':
      0005D4                       1271 00112$:
                                   1272 ;	my_oled.c:268: data[0] = 0x40;
      0005D4 75 29 40         [24] 1273 	mov	_oled_char_data_10000_47,#0x40
                                   1274 ;	my_oled.c:269: data[1] = 0x40;
      0005D7 75 2A 40         [24] 1275 	mov	(_oled_char_data_10000_47 + 0x0001),#0x40
                                   1276 ;	my_oled.c:270: data[2] = 0x40;
      0005DA 75 2B 40         [24] 1277 	mov	(_oled_char_data_10000_47 + 0x0002),#0x40
                                   1278 ;	my_oled.c:271: data[3] = 0x40;
      0005DD 75 2C 40         [24] 1279 	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
                                   1280 ;	my_oled.c:272: data[4] = 0x40;
      0005E0 75 2D 40         [24] 1281 	mov	(_oled_char_data_10000_47 + 0x0004),#0x40
                                   1282 ;	my_oled.c:273: break;
      0005E3 02 06 E3         [24] 1283 	ljmp	00143$
                                   1284 ;	my_oled.c:275: case '!':
      0005E6                       1285 00113$:
                                   1286 ;	my_oled.c:276: data[2] = 0x5F;
      0005E6 75 2B 5F         [24] 1287 	mov	(_oled_char_data_10000_47 + 0x0002),#0x5f
                                   1288 ;	my_oled.c:277: break;
      0005E9 02 06 E3         [24] 1289 	ljmp	00143$
                                   1290 ;	my_oled.c:279: case '?':
      0005EC                       1291 00114$:
                                   1292 ;	my_oled.c:280: data[0] = 0x02;
      0005EC 75 29 02         [24] 1293 	mov	_oled_char_data_10000_47,#0x02
                                   1294 ;	my_oled.c:281: data[1] = 0x01;
      0005EF 75 2A 01         [24] 1295 	mov	(_oled_char_data_10000_47 + 0x0001),#0x01
                                   1296 ;	my_oled.c:282: data[2] = 0x51;
      0005F2 75 2B 51         [24] 1297 	mov	(_oled_char_data_10000_47 + 0x0002),#0x51
                                   1298 ;	my_oled.c:283: data[3] = 0x09;
      0005F5 75 2C 09         [24] 1299 	mov	(_oled_char_data_10000_47 + 0x0003),#0x09
                                   1300 ;	my_oled.c:284: data[4] = 0x06;
      0005F8 75 2D 06         [24] 1301 	mov	(_oled_char_data_10000_47 + 0x0004),#0x06
                                   1302 ;	my_oled.c:285: break;
      0005FB 02 06 E3         [24] 1303 	ljmp	00143$
                                   1304 ;	my_oled.c:287: case '/':
      0005FE                       1305 00115$:
                                   1306 ;	my_oled.c:288: data[0] = 0x20;
      0005FE 75 29 20         [24] 1307 	mov	_oled_char_data_10000_47,#0x20
                                   1308 ;	my_oled.c:289: data[1] = 0x10;
      000601 75 2A 10         [24] 1309 	mov	(_oled_char_data_10000_47 + 0x0001),#0x10
                                   1310 ;	my_oled.c:290: data[2] = 0x08;
      000604 75 2B 08         [24] 1311 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1312 ;	my_oled.c:291: data[3] = 0x04;
      000607 75 2C 04         [24] 1313 	mov	(_oled_char_data_10000_47 + 0x0003),#0x04
                                   1314 ;	my_oled.c:292: data[4] = 0x02;
      00060A 75 2D 02         [24] 1315 	mov	(_oled_char_data_10000_47 + 0x0004),#0x02
                                   1316 ;	my_oled.c:293: break;
      00060D 02 06 E3         [24] 1317 	ljmp	00143$
                                   1318 ;	my_oled.c:295: case '\\':
      000610                       1319 00116$:
                                   1320 ;	my_oled.c:296: data[0] = 0x02;
      000610 75 29 02         [24] 1321 	mov	_oled_char_data_10000_47,#0x02
                                   1322 ;	my_oled.c:297: data[1] = 0x04;
      000613 75 2A 04         [24] 1323 	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
                                   1324 ;	my_oled.c:298: data[2] = 0x08;
      000616 75 2B 08         [24] 1325 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1326 ;	my_oled.c:299: data[3] = 0x10;
      000619 75 2C 10         [24] 1327 	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
                                   1328 ;	my_oled.c:300: data[4] = 0x20;
      00061C 75 2D 20         [24] 1329 	mov	(_oled_char_data_10000_47 + 0x0004),#0x20
                                   1330 ;	my_oled.c:301: break;
      00061F 02 06 E3         [24] 1331 	ljmp	00143$
                                   1332 ;	my_oled.c:303: case '+':
      000622                       1333 00117$:
                                   1334 ;	my_oled.c:304: data[1] = 0x08;
      000622 75 2A 08         [24] 1335 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1336 ;	my_oled.c:305: data[2] = 0x1C;
      000625 75 2B 1C         [24] 1337 	mov	(_oled_char_data_10000_47 + 0x0002),#0x1c
                                   1338 ;	my_oled.c:306: data[3] = 0x08;
      000628 75 2C 08         [24] 1339 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1340 ;	my_oled.c:307: break;
      00062B 02 06 E3         [24] 1341 	ljmp	00143$
                                   1342 ;	my_oled.c:309: case '=':
      00062E                       1343 00118$:
                                   1344 ;	my_oled.c:310: data[1] = 0x14;
      00062E 75 2A 14         [24] 1345 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1346 ;	my_oled.c:311: data[2] = 0x14;
      000631 75 2B 14         [24] 1347 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1348 ;	my_oled.c:312: data[3] = 0x14;
      000634 75 2C 14         [24] 1349 	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
                                   1350 ;	my_oled.c:313: break;
      000637 02 06 E3         [24] 1351 	ljmp	00143$
                                   1352 ;	my_oled.c:315: case '(':
      00063A                       1353 00119$:
                                   1354 ;	my_oled.c:316: data[1] = 0x1C;
      00063A 75 2A 1C         [24] 1355 	mov	(_oled_char_data_10000_47 + 0x0001),#0x1c
                                   1356 ;	my_oled.c:317: data[2] = 0x22;
      00063D 75 2B 22         [24] 1357 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1358 ;	my_oled.c:318: data[3] = 0x41;
      000640 75 2C 41         [24] 1359 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1360 ;	my_oled.c:319: break;
      000643 02 06 E3         [24] 1361 	ljmp	00143$
                                   1362 ;	my_oled.c:321: case ')':
      000646                       1363 00120$:
                                   1364 ;	my_oled.c:322: data[1] = 0x41;
      000646 75 2A 41         [24] 1365 	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
                                   1366 ;	my_oled.c:323: data[2] = 0x22;
      000649 75 2B 22         [24] 1367 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1368 ;	my_oled.c:324: data[3] = 0x1C;
      00064C 75 2C 1C         [24] 1369 	mov	(_oled_char_data_10000_47 + 0x0003),#0x1c
                                   1370 ;	my_oled.c:325: break;
      00064F 02 06 E3         [24] 1371 	ljmp	00143$
                                   1372 ;	my_oled.c:327: case '%':
      000652                       1373 00121$:
                                   1374 ;	my_oled.c:328: data[0] = 0x23;
      000652 75 29 23         [24] 1375 	mov	_oled_char_data_10000_47,#0x23
                                   1376 ;	my_oled.c:329: data[1] = 0x13;
      000655 75 2A 13         [24] 1377 	mov	(_oled_char_data_10000_47 + 0x0001),#0x13
                                   1378 ;	my_oled.c:330: data[2] = 0x08;
      000658 75 2B 08         [24] 1379 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1380 ;	my_oled.c:331: data[3] = 0x64;
      00065B 75 2C 64         [24] 1381 	mov	(_oled_char_data_10000_47 + 0x0003),#0x64
                                   1382 ;	my_oled.c:332: data[4] = 0x62;
      00065E 75 2D 62         [24] 1383 	mov	(_oled_char_data_10000_47 + 0x0004),#0x62
                                   1384 ;	my_oled.c:333: break;
      000661 02 06 E3         [24] 1385 	ljmp	00143$
                                   1386 ;	my_oled.c:335: case '\'':
      000664                       1387 00122$:
                                   1388 ;	my_oled.c:336: data[2] = 0x07;
      000664 75 2B 07         [24] 1389 	mov	(_oled_char_data_10000_47 + 0x0002),#0x07
                                   1390 ;	my_oled.c:337: break;
                                   1391 ;	my_oled.c:339: case 0x22:     /* for char ' " ' */
      000667 80 7A            [24] 1392 	sjmp	00143$
      000669                       1393 00123$:
                                   1394 ;	my_oled.c:340: data[1] = 0x03;
      000669 75 2A 03         [24] 1395 	mov	(_oled_char_data_10000_47 + 0x0001),#0x03
                                   1396 ;	my_oled.c:341: data[3] = 0x03;
      00066C 75 2C 03         [24] 1397 	mov	(_oled_char_data_10000_47 + 0x0003),#0x03
                                   1398 ;	my_oled.c:342: break;
                                   1399 ;	my_oled.c:344: case '*':
      00066F 80 72            [24] 1400 	sjmp	00143$
      000671                       1401 00124$:
                                   1402 ;	my_oled.c:345: data[1] = 0x14;
      000671 75 2A 14         [24] 1403 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1404 ;	my_oled.c:346: data[2] = 0x08;
      000674 75 2B 08         [24] 1405 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1406 ;	my_oled.c:347: data[3] = 0x14;
      000677 75 2C 14         [24] 1407 	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
                                   1408 ;	my_oled.c:348: break;
                                   1409 ;	my_oled.c:350: case '#':
      00067A 80 67            [24] 1410 	sjmp	00143$
      00067C                       1411 00125$:
                                   1412 ;	my_oled.c:351: data[0] = 0x14;
      00067C 75 29 14         [24] 1413 	mov	_oled_char_data_10000_47,#0x14
                                   1414 ;	my_oled.c:352: data[1] = 0x7F;
      00067F 75 2A 7F         [24] 1415 	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
                                   1416 ;	my_oled.c:353: data[2] = 0x14;
      000682 75 2B 14         [24] 1417 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1418 ;	my_oled.c:354: data[3] = 0x7F;
      000685 75 2C 7F         [24] 1419 	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
                                   1420 ;	my_oled.c:355: data[4] = 0x14;
      000688 75 2D 14         [24] 1421 	mov	(_oled_char_data_10000_47 + 0x0004),#0x14
                                   1422 ;	my_oled.c:356: break;
                                   1423 ;	my_oled.c:358: case '<':
      00068B 80 56            [24] 1424 	sjmp	00143$
      00068D                       1425 00126$:
                                   1426 ;	my_oled.c:359: data[0] = 0x08;
      00068D 75 29 08         [24] 1427 	mov	_oled_char_data_10000_47,#0x08
                                   1428 ;	my_oled.c:360: data[1] = 0x14;
      000690 75 2A 14         [24] 1429 	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
                                   1430 ;	my_oled.c:361: data[2] = 0x22;
      000693 75 2B 22         [24] 1431 	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
                                   1432 ;	my_oled.c:362: data[3] = 0x41;
      000696 75 2C 41         [24] 1433 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1434 ;	my_oled.c:363: break;
                                   1435 ;	my_oled.c:365: case '>':
      000699 80 48            [24] 1436 	sjmp	00143$
      00069B                       1437 00127$:
                                   1438 ;	my_oled.c:366: data[0] = 0x41;
      00069B 75 29 41         [24] 1439 	mov	_oled_char_data_10000_47,#0x41
                                   1440 ;	my_oled.c:367: data[1] = 0x22;
      00069E 75 2A 22         [24] 1441 	mov	(_oled_char_data_10000_47 + 0x0001),#0x22
                                   1442 ;	my_oled.c:368: data[2] = 0x14;
      0006A1 75 2B 14         [24] 1443 	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
                                   1444 ;	my_oled.c:369: data[3] = 0x08;
      0006A4 75 2C 08         [24] 1445 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1446 ;	my_oled.c:370: break;
                                   1447 ;	my_oled.c:372: case '|':
      0006A7 80 3A            [24] 1448 	sjmp	00143$
      0006A9                       1449 00128$:
                                   1450 ;	my_oled.c:373: data[2] = 0x7F;
      0006A9 75 2B 7F         [24] 1451 	mov	(_oled_char_data_10000_47 + 0x0002),#0x7f
                                   1452 ;	my_oled.c:374: break;
                                   1453 ;	my_oled.c:376: case '[':
      0006AC 80 35            [24] 1454 	sjmp	00143$
      0006AE                       1455 00129$:
                                   1456 ;	my_oled.c:377: data[1] = 0x7F;
      0006AE 75 2A 7F         [24] 1457 	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
                                   1458 ;	my_oled.c:378: data[2] = 0x41;
      0006B1 75 2B 41         [24] 1459 	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
                                   1460 ;	my_oled.c:379: break;
                                   1461 ;	my_oled.c:381: case ']':
      0006B4 80 2D            [24] 1462 	sjmp	00143$
      0006B6                       1463 00130$:
                                   1464 ;	my_oled.c:382: data[2] = 0x41;
      0006B6 75 2B 41         [24] 1465 	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
                                   1466 ;	my_oled.c:383: data[3] = 0x7F;
      0006B9 75 2C 7F         [24] 1467 	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
                                   1468 ;	my_oled.c:384: break;
                                   1469 ;	my_oled.c:386: case '{':
      0006BC 80 25            [24] 1470 	sjmp	00143$
      0006BE                       1471 00131$:
                                   1472 ;	my_oled.c:387: data[1] = 0x08;
      0006BE 75 2A 08         [24] 1473 	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
                                   1474 ;	my_oled.c:388: data[2] = 0x36;
      0006C1 75 2B 36         [24] 1475 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1476 ;	my_oled.c:389: data[3] = 0x41;
      0006C4 75 2C 41         [24] 1477 	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
                                   1478 ;	my_oled.c:390: break;
                                   1479 ;	my_oled.c:392: case '}':
      0006C7 80 1A            [24] 1480 	sjmp	00143$
      0006C9                       1481 00132$:
                                   1482 ;	my_oled.c:393: data[1] = 0x41;
      0006C9 75 2A 41         [24] 1483 	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
                                   1484 ;	my_oled.c:394: data[2] = 0x36;
      0006CC 75 2B 36         [24] 1485 	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
                                   1486 ;	my_oled.c:395: data[3] = 0x08;
      0006CF 75 2C 08         [24] 1487 	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
                                   1488 ;	my_oled.c:396: break;
                                   1489 ;	my_oled.c:398: case '~':
      0006D2 80 0F            [24] 1490 	sjmp	00143$
      0006D4                       1491 00133$:
                                   1492 ;	my_oled.c:399: data[0] = 0x08;
      0006D4 75 29 08         [24] 1493 	mov	_oled_char_data_10000_47,#0x08
                                   1494 ;	my_oled.c:400: data[1] = 0x04;
      0006D7 75 2A 04         [24] 1495 	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
                                   1496 ;	my_oled.c:401: data[2] = 0x08;
      0006DA 75 2B 08         [24] 1497 	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
                                   1498 ;	my_oled.c:402: data[3] = 0x10;
      0006DD 75 2C 10         [24] 1499 	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
                                   1500 ;	my_oled.c:403: data[4] = 0x08;
      0006E0 75 2D 08         [24] 1501 	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
                                   1502 ;	my_oled.c:409: }
      0006E3                       1503 00143$:
                                   1504 ;	my_oled.c:412: if((unsigned int)oled_column + 6 > 128)
      0006E3 AE 11            [24] 1505 	mov	r6,_oled_column
      0006E5 7F 00            [12] 1506 	mov	r7,#0x00
      0006E7 74 06            [12] 1507 	mov	a,#0x06
      0006E9 2E               [12] 1508 	add	a, r6
      0006EA FE               [12] 1509 	mov	r6,a
      0006EB E4               [12] 1510 	clr	a
      0006EC 3F               [12] 1511 	addc	a, r7
      0006ED FF               [12] 1512 	mov	r7,a
      0006EE C3               [12] 1513 	clr	c
      0006EF 74 80            [12] 1514 	mov	a,#0x80
      0006F1 9E               [12] 1515 	subb	a,r6
      0006F2 E4               [12] 1516 	clr	a
      0006F3 9F               [12] 1517 	subb	a,r7
      0006F4 50 17            [24] 1518 	jnc	00148$
                                   1519 ;	free result
                                   1520 ;	my_oled.c:414: oled_page++;
      0006F6 05 10            [12] 1521 	inc	_oled_page
                                   1522 ;	my_oled.c:415: oled_column = 0;
      0006F8 75 11 00         [24] 1523 	mov	_oled_column,#0x00
                                   1524 ;	my_oled.c:417: if(oled_page > 7)
      0006FB E5 10            [12] 1525 	mov	a,_oled_page
      0006FD 24 F8            [12] 1526 	add	a,#0xff - 0x07
      0006FF 50 03            [24] 1527 	jnc	00146$
                                   1528 ;	free result
                                   1529 ;	my_oled.c:418: oled_page = 0;
      000701 75 10 00         [24] 1530 	mov	_oled_page,#0x00
      000704                       1531 00146$:
                                   1532 ;	my_oled.c:420: oled_set_position(oled_page, oled_column);
      000704 75 18 00         [24] 1533 	mov	_oled_set_position_PARM_2,#0x00
      000707 85 10 82         [24] 1534 	mov	dpl, _oled_page
      00070A 12 03 38         [24] 1535 	lcall	_oled_set_position
      00070D                       1536 00148$:
                                   1537 ;	my_oled.c:423: i2c_write_transaction(0x40, data, 6);
      00070D 75 12 29         [24] 1538 	mov	_i2c_write_transaction_PARM_2,#_oled_char_data_10000_47
      000710 75 13 00         [24] 1539 	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
      000713 75 14 40         [24] 1540 	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
      000716 75 15 06         [24] 1541 	mov	_i2c_write_transaction_PARM_3,#0x06
      000719 75 82 40         [24] 1542 	mov	dpl, #0x40
      00071C 12 02 A6         [24] 1543 	lcall	_i2c_write_transaction
                                   1544 ;	my_oled.c:424: oled_column += 6;
      00071F AF 11            [24] 1545 	mov	r7,_oled_column
      000721 74 06            [12] 1546 	mov	a,#0x06
      000723 2F               [12] 1547 	add	a, r7
                                   1548 ;	my_oled.c:426: if(oled_column >= 128)
      000724 F5 11            [12] 1549 	mov	_oled_column,a
      000726 C3               [12] 1550 	clr	c
      000727 94 80            [12] 1551 	subb	a,#0x80
      000729 40 17            [24] 1552 	jc	00159$
                                   1553 ;	my_oled.c:428: oled_column = 0;
      00072B 75 11 00         [24] 1554 	mov	_oled_column,#0x00
                                   1555 ;	my_oled.c:429: oled_page++;
      00072E 05 10            [12] 1556 	inc	_oled_page
                                   1557 ;	my_oled.c:431: if(oled_page > 7)
      000730 E5 10            [12] 1558 	mov	a,_oled_page
      000732 24 F8            [12] 1559 	add	a,#0xff - 0x07
      000734 50 03            [24] 1560 	jnc	00150$
                                   1561 ;	free result
                                   1562 ;	my_oled.c:432: oled_page = 0;
      000736 75 10 00         [24] 1563 	mov	_oled_page,#0x00
      000739                       1564 00150$:
                                   1565 ;	my_oled.c:434: oled_set_position(oled_page, oled_column);
      000739 75 18 00         [24] 1566 	mov	_oled_set_position_PARM_2,#0x00
      00073C 85 10 82         [24] 1567 	mov	dpl, _oled_page
                                   1568 ;	my_oled.c:436: }
      00073F 02 03 38         [24] 1569 	ljmp	_oled_set_position
      000742                       1570 00159$:
      000742 22               [24] 1571 	ret
                                   1572 ;------------------------------------------------------------
                                   1573 ;Allocation info for local variables in function 'oled_string'
                                   1574 ;------------------------------------------------------------
                                   1575 ;str           Allocated to registers r5 r6 r7 
                                   1576 ;------------------------------------------------------------
                                   1577 ;	my_oled.c:438: void oled_string(char *str)
                                   1578 ;	-----------------------------------------
                                   1579 ;	 function oled_string
                                   1580 ;	-----------------------------------------
      000743                       1581 _oled_string:
      000743 AD 82            [24] 1582 	mov	r5, dpl
      000745 AE 83            [24] 1583 	mov	r6, dph
      000747 AF F0            [24] 1584 	mov	r7, b
                                   1585 ;	my_oled.c:440: while(*str)
      000749                       1586 00109$:
      000749 8D 82            [24] 1587 	mov	dpl,r5
      00074B 8E 83            [24] 1588 	mov	dph,r6
      00074D 8F F0            [24] 1589 	mov	b,r7
      00074F 12 07 BD         [24] 1590 	lcall	__gptrget
      000752 FC               [12] 1591 	mov	r4,a
      000753 60 67            [24] 1592 	jz	00112$
                                   1593 ;	my_oled.c:442: if(*str == '\n')
      000755 BC 0A 2A         [24] 1594 	cjne	r4,#0x0a,00107$
                                   1595 ;	my_oled.c:444: oled_page++;
      000758 05 10            [12] 1596 	inc	_oled_page
                                   1597 ;	my_oled.c:446: if(oled_page > 7)
      00075A E5 10            [12] 1598 	mov	a,_oled_page
      00075C 24 F8            [12] 1599 	add	a,#0xff - 0x07
      00075E 50 03            [24] 1600 	jnc	00102$
                                   1601 ;	free result
                                   1602 ;	my_oled.c:447: oled_page = 0;
      000760 75 10 00         [24] 1603 	mov	_oled_page,#0x00
      000763                       1604 00102$:
                                   1605 ;	my_oled.c:449: oled_column = 0;
      000763 75 11 00         [24] 1606 	mov	_oled_column,#0x00
                                   1607 ;	my_oled.c:450: oled_set_position(oled_page, oled_column);
      000766 75 18 00         [24] 1608 	mov	_oled_set_position_PARM_2,#0x00
      000769 85 10 82         [24] 1609 	mov	dpl, _oled_page
      00076C C0 07            [24] 1610 	push	ar7
      00076E C0 06            [24] 1611 	push	ar6
      000770 C0 05            [24] 1612 	push	ar5
      000772 12 03 38         [24] 1613 	lcall	_oled_set_position
      000775 D0 05            [24] 1614 	pop	ar5
      000777 D0 06            [24] 1615 	pop	ar6
      000779 D0 07            [24] 1616 	pop	ar7
                                   1617 ;	my_oled.c:451: str++;
      00077B 0D               [12] 1618 	inc	r5
      00077C BD 00 CA         [24] 1619 	cjne	r5,#0x00,00109$
      00077F 0E               [12] 1620 	inc	r6
      000780 80 C7            [24] 1621 	sjmp	00109$
      000782                       1622 00107$:
                                   1623 ;	my_oled.c:453: else if(*str == '\r')
      000782 BC 0D 1F         [24] 1624 	cjne	r4,#0x0d,00104$
                                   1625 ;	my_oled.c:455: oled_column = 0;
      000785 75 11 00         [24] 1626 	mov	_oled_column,#0x00
                                   1627 ;	my_oled.c:456: oled_set_position(oled_page, oled_column);
      000788 75 18 00         [24] 1628 	mov	_oled_set_position_PARM_2,#0x00
      00078B 85 10 82         [24] 1629 	mov	dpl, _oled_page
      00078E C0 07            [24] 1630 	push	ar7
      000790 C0 06            [24] 1631 	push	ar6
      000792 C0 05            [24] 1632 	push	ar5
      000794 12 03 38         [24] 1633 	lcall	_oled_set_position
      000797 D0 05            [24] 1634 	pop	ar5
      000799 D0 06            [24] 1635 	pop	ar6
      00079B D0 07            [24] 1636 	pop	ar7
                                   1637 ;	my_oled.c:457: str++;
      00079D 0D               [12] 1638 	inc	r5
      00079E BD 00 A8         [24] 1639 	cjne	r5,#0x00,00109$
      0007A1 0E               [12] 1640 	inc	r6
      0007A2 80 A5            [24] 1641 	sjmp	00109$
      0007A4                       1642 00104$:
                                   1643 ;	my_oled.c:461: oled_char((unsigned char)*str++);
      0007A4 8C 82            [24] 1644 	mov	dpl,r4
      0007A6 0D               [12] 1645 	inc	r5
      0007A7 BD 00 01         [24] 1646 	cjne	r5,#0x00,00157$
      0007AA 0E               [12] 1647 	inc	r6
      0007AB                       1648 00157$:
      0007AB C0 07            [24] 1649 	push	ar7
      0007AD C0 06            [24] 1650 	push	ar6
      0007AF C0 05            [24] 1651 	push	ar5
      0007B1 12 04 76         [24] 1652 	lcall	_oled_char
      0007B4 D0 05            [24] 1653 	pop	ar5
      0007B6 D0 06            [24] 1654 	pop	ar6
      0007B8 D0 07            [24] 1655 	pop	ar7
      0007BA 80 8D            [24] 1656 	sjmp	00109$
      0007BC                       1657 00112$:
                                   1658 ;	my_oled.c:464: }
      0007BC 22               [24] 1659 	ret
                                   1660 	.area CSEG    (CODE)
                                   1661 	.area CONST   (CODE)
                                   1662 	.area CONST   (CODE)
      0007E7                       1663 _font5x7:
      0007E7 7E                    1664 	.db #0x7e	; 126
      0007E8 11                    1665 	.db #0x11	; 17
      0007E9 11                    1666 	.db #0x11	; 17
      0007EA 11                    1667 	.db #0x11	; 17
      0007EB 7E                    1668 	.db #0x7e	; 126
      0007EC 7F                    1669 	.db #0x7f	; 127
      0007ED 49                    1670 	.db #0x49	; 73	'I'
      0007EE 49                    1671 	.db #0x49	; 73	'I'
      0007EF 49                    1672 	.db #0x49	; 73	'I'
      0007F0 36                    1673 	.db #0x36	; 54	'6'
      0007F1 3E                    1674 	.db #0x3e	; 62
      0007F2 41                    1675 	.db #0x41	; 65	'A'
      0007F3 41                    1676 	.db #0x41	; 65	'A'
      0007F4 41                    1677 	.db #0x41	; 65	'A'
      0007F5 22                    1678 	.db #0x22	; 34
      0007F6 7F                    1679 	.db #0x7f	; 127
      0007F7 41                    1680 	.db #0x41	; 65	'A'
      0007F8 41                    1681 	.db #0x41	; 65	'A'
      0007F9 22                    1682 	.db #0x22	; 34
      0007FA 1C                    1683 	.db #0x1c	; 28
      0007FB 7F                    1684 	.db #0x7f	; 127
      0007FC 49                    1685 	.db #0x49	; 73	'I'
      0007FD 49                    1686 	.db #0x49	; 73	'I'
      0007FE 49                    1687 	.db #0x49	; 73	'I'
      0007FF 41                    1688 	.db #0x41	; 65	'A'
      000800 7F                    1689 	.db #0x7f	; 127
      000801 09                    1690 	.db #0x09	; 9
      000802 09                    1691 	.db #0x09	; 9
      000803 09                    1692 	.db #0x09	; 9
      000804 01                    1693 	.db #0x01	; 1
      000805 3E                    1694 	.db #0x3e	; 62
      000806 41                    1695 	.db #0x41	; 65	'A'
      000807 49                    1696 	.db #0x49	; 73	'I'
      000808 49                    1697 	.db #0x49	; 73	'I'
      000809 7A                    1698 	.db #0x7a	; 122	'z'
      00080A 7F                    1699 	.db #0x7f	; 127
      00080B 08                    1700 	.db #0x08	; 8
      00080C 08                    1701 	.db #0x08	; 8
      00080D 08                    1702 	.db #0x08	; 8
      00080E 7F                    1703 	.db #0x7f	; 127
      00080F 00                    1704 	.db #0x00	; 0
      000810 41                    1705 	.db #0x41	; 65	'A'
      000811 7F                    1706 	.db #0x7f	; 127
      000812 41                    1707 	.db #0x41	; 65	'A'
      000813 00                    1708 	.db #0x00	; 0
      000814 20                    1709 	.db #0x20	; 32
      000815 40                    1710 	.db #0x40	; 64
      000816 41                    1711 	.db #0x41	; 65	'A'
      000817 3F                    1712 	.db #0x3f	; 63
      000818 01                    1713 	.db #0x01	; 1
      000819 7F                    1714 	.db #0x7f	; 127
      00081A 08                    1715 	.db #0x08	; 8
      00081B 14                    1716 	.db #0x14	; 20
      00081C 22                    1717 	.db #0x22	; 34
      00081D 41                    1718 	.db #0x41	; 65	'A'
      00081E 7F                    1719 	.db #0x7f	; 127
      00081F 40                    1720 	.db #0x40	; 64
      000820 40                    1721 	.db #0x40	; 64
      000821 40                    1722 	.db #0x40	; 64
      000822 40                    1723 	.db #0x40	; 64
      000823 7F                    1724 	.db #0x7f	; 127
      000824 02                    1725 	.db #0x02	; 2
      000825 0C                    1726 	.db #0x0c	; 12
      000826 02                    1727 	.db #0x02	; 2
      000827 7F                    1728 	.db #0x7f	; 127
      000828 7F                    1729 	.db #0x7f	; 127
      000829 04                    1730 	.db #0x04	; 4
      00082A 08                    1731 	.db #0x08	; 8
      00082B 10                    1732 	.db #0x10	; 16
      00082C 7F                    1733 	.db #0x7f	; 127
      00082D 3E                    1734 	.db #0x3e	; 62
      00082E 41                    1735 	.db #0x41	; 65	'A'
      00082F 41                    1736 	.db #0x41	; 65	'A'
      000830 41                    1737 	.db #0x41	; 65	'A'
      000831 3E                    1738 	.db #0x3e	; 62
      000832 7F                    1739 	.db #0x7f	; 127
      000833 09                    1740 	.db #0x09	; 9
      000834 09                    1741 	.db #0x09	; 9
      000835 09                    1742 	.db #0x09	; 9
      000836 06                    1743 	.db #0x06	; 6
      000837 3E                    1744 	.db #0x3e	; 62
      000838 41                    1745 	.db #0x41	; 65	'A'
      000839 51                    1746 	.db #0x51	; 81	'Q'
      00083A 21                    1747 	.db #0x21	; 33
      00083B 5E                    1748 	.db #0x5e	; 94
      00083C 7F                    1749 	.db #0x7f	; 127
      00083D 09                    1750 	.db #0x09	; 9
      00083E 19                    1751 	.db #0x19	; 25
      00083F 29                    1752 	.db #0x29	; 41
      000840 46                    1753 	.db #0x46	; 70	'F'
      000841 26                    1754 	.db #0x26	; 38
      000842 49                    1755 	.db #0x49	; 73	'I'
      000843 49                    1756 	.db #0x49	; 73	'I'
      000844 49                    1757 	.db #0x49	; 73	'I'
      000845 32                    1758 	.db #0x32	; 50	'2'
      000846 01                    1759 	.db #0x01	; 1
      000847 01                    1760 	.db #0x01	; 1
      000848 7F                    1761 	.db #0x7f	; 127
      000849 01                    1762 	.db #0x01	; 1
      00084A 01                    1763 	.db #0x01	; 1
      00084B 3F                    1764 	.db #0x3f	; 63
      00084C 40                    1765 	.db #0x40	; 64
      00084D 40                    1766 	.db #0x40	; 64
      00084E 40                    1767 	.db #0x40	; 64
      00084F 3F                    1768 	.db #0x3f	; 63
      000850 1F                    1769 	.db #0x1f	; 31
      000851 20                    1770 	.db #0x20	; 32
      000852 40                    1771 	.db #0x40	; 64
      000853 20                    1772 	.db #0x20	; 32
      000854 1F                    1773 	.db #0x1f	; 31
      000855 3F                    1774 	.db #0x3f	; 63
      000856 40                    1775 	.db #0x40	; 64
      000857 38                    1776 	.db #0x38	; 56	'8'
      000858 40                    1777 	.db #0x40	; 64
      000859 3F                    1778 	.db #0x3f	; 63
      00085A 63                    1779 	.db #0x63	; 99	'c'
      00085B 14                    1780 	.db #0x14	; 20
      00085C 08                    1781 	.db #0x08	; 8
      00085D 14                    1782 	.db #0x14	; 20
      00085E 63                    1783 	.db #0x63	; 99	'c'
      00085F 07                    1784 	.db #0x07	; 7
      000860 08                    1785 	.db #0x08	; 8
      000861 70                    1786 	.db #0x70	; 112	'p'
      000862 08                    1787 	.db #0x08	; 8
      000863 07                    1788 	.db #0x07	; 7
      000864 61                    1789 	.db #0x61	; 97	'a'
      000865 51                    1790 	.db #0x51	; 81	'Q'
      000866 49                    1791 	.db #0x49	; 73	'I'
      000867 45                    1792 	.db #0x45	; 69	'E'
      000868 43                    1793 	.db #0x43	; 67	'C'
      000869 3E                    1794 	.db #0x3e	; 62
      00086A 45                    1795 	.db #0x45	; 69	'E'
      00086B 49                    1796 	.db #0x49	; 73	'I'
      00086C 51                    1797 	.db #0x51	; 81	'Q'
      00086D 3E                    1798 	.db #0x3e	; 62
      00086E 00                    1799 	.db #0x00	; 0
      00086F 21                    1800 	.db #0x21	; 33
      000870 7F                    1801 	.db #0x7f	; 127
      000871 01                    1802 	.db #0x01	; 1
      000872 00                    1803 	.db #0x00	; 0
      000873 23                    1804 	.db #0x23	; 35
      000874 45                    1805 	.db #0x45	; 69	'E'
      000875 49                    1806 	.db #0x49	; 73	'I'
      000876 51                    1807 	.db #0x51	; 81	'Q'
      000877 21                    1808 	.db #0x21	; 33
      000878 42                    1809 	.db #0x42	; 66	'B'
      000879 41                    1810 	.db #0x41	; 65	'A'
      00087A 51                    1811 	.db #0x51	; 81	'Q'
      00087B 69                    1812 	.db #0x69	; 105	'i'
      00087C 46                    1813 	.db #0x46	; 70	'F'
      00087D 0C                    1814 	.db #0x0c	; 12
      00087E 14                    1815 	.db #0x14	; 20
      00087F 24                    1816 	.db #0x24	; 36
      000880 7F                    1817 	.db #0x7f	; 127
      000881 04                    1818 	.db #0x04	; 4
      000882 72                    1819 	.db #0x72	; 114	'r'
      000883 51                    1820 	.db #0x51	; 81	'Q'
      000884 51                    1821 	.db #0x51	; 81	'Q'
      000885 51                    1822 	.db #0x51	; 81	'Q'
      000886 4E                    1823 	.db #0x4e	; 78	'N'
      000887 1E                    1824 	.db #0x1e	; 30
      000888 29                    1825 	.db #0x29	; 41
      000889 49                    1826 	.db #0x49	; 73	'I'
      00088A 49                    1827 	.db #0x49	; 73	'I'
      00088B 06                    1828 	.db #0x06	; 6
      00088C 40                    1829 	.db #0x40	; 64
      00088D 47                    1830 	.db #0x47	; 71	'G'
      00088E 48                    1831 	.db #0x48	; 72	'H'
      00088F 50                    1832 	.db #0x50	; 80	'P'
      000890 60                    1833 	.db #0x60	; 96
      000891 36                    1834 	.db #0x36	; 54	'6'
      000892 49                    1835 	.db #0x49	; 73	'I'
      000893 49                    1836 	.db #0x49	; 73	'I'
      000894 49                    1837 	.db #0x49	; 73	'I'
      000895 36                    1838 	.db #0x36	; 54	'6'
      000896 30                    1839 	.db #0x30	; 48	'0'
      000897 49                    1840 	.db #0x49	; 73	'I'
      000898 49                    1841 	.db #0x49	; 73	'I'
      000899 4A                    1842 	.db #0x4a	; 74	'J'
      00089A 3C                    1843 	.db #0x3c	; 60
                                   1844 	.area CSEG    (CODE)
                                   1845 	.area XINIT   (CODE)
                                   1846 	.area CABS    (ABS,CODE)
