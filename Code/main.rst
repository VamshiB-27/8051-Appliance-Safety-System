                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.6.0 #16555 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _i2c_isr
                                     12 	.globl _timer0_isr
                                     13 	.globl _main
                                     14 	.globl _lcd_write_hex
                                     15 	.globl _letter_write
                                     16 	.globl _cmd_write
                                     17 	.globl _lcd_init
                                     18 	.globl _i2c_init
                                     19 	.globl _timer0_init
                                     20 	.globl _oled_write_string
                                     21 	.globl _init_oled
                                     22 	.globl _EP6INT
                                     23 	.globl _EP5INT
                                     24 	.globl _EP4INT
                                     25 	.globl _EP3INT
                                     26 	.globl _EP2INT
                                     27 	.globl _EP1INT
                                     28 	.globl _EP0INT
                                     29 	.globl _CF
                                     30 	.globl _CR
                                     31 	.globl _CCF4
                                     32 	.globl _CCF3
                                     33 	.globl _CCF2
                                     34 	.globl _CCF1
                                     35 	.globl _CCF0
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _P4_1
                                     53 	.globl _P4_0
                                     54 	.globl _PPCL
                                     55 	.globl _PT2L
                                     56 	.globl _PSL
                                     57 	.globl _PT1L
                                     58 	.globl _PX1L
                                     59 	.globl _PT0L
                                     60 	.globl _PX0L
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _EC
                                     71 	.globl _ET2
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _FE
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _UEPINT
                                    119 	.globl _LEDCON
                                    120 	.globl _B
                                    121 	.globl _CCAP4H
                                    122 	.globl _CCAP4L
                                    123 	.globl _CCAP4
                                    124 	.globl _CCAP3H
                                    125 	.globl _CCAP3L
                                    126 	.globl _CCAP3
                                    127 	.globl _CCAP2H
                                    128 	.globl _CCAP2L
                                    129 	.globl _CCAP2
                                    130 	.globl _CCAP1H
                                    131 	.globl _CCAP1L
                                    132 	.globl _CCAP1
                                    133 	.globl _CCAP0H
                                    134 	.globl _CCAP0L
                                    135 	.globl _CCAP0
                                    136 	.globl _CH
                                    137 	.globl _CL
                                    138 	.globl _PCA
                                    139 	.globl _UBYCTHX
                                    140 	.globl _UBYCTLX
                                    141 	.globl _UBYCTX
                                    142 	.globl _ACC
                                    143 	.globl _CCAPM4
                                    144 	.globl _CCAPM3
                                    145 	.globl _CCAPM2
                                    146 	.globl _CCAPM1
                                    147 	.globl _CCAPM0
                                    148 	.globl _CMOD
                                    149 	.globl _CCON
                                    150 	.globl _UEPRST
                                    151 	.globl _UEPCONX
                                    152 	.globl _EECON
                                    153 	.globl _FCON
                                    154 	.globl _PSW
                                    155 	.globl _UEPDATX
                                    156 	.globl _UEPSTAX
                                    157 	.globl _TH2
                                    158 	.globl _TL2
                                    159 	.globl _TMR2
                                    160 	.globl _RCAP2H
                                    161 	.globl _RCAP2L
                                    162 	.globl _RCAP2
                                    163 	.globl _T2MOD
                                    164 	.globl _T2CON
                                    165 	.globl _UEPNUM
                                    166 	.globl _USBADDR
                                    167 	.globl _SPDAT
                                    168 	.globl _SPSTA
                                    169 	.globl _SPCON
                                    170 	.globl _UEPIEN
                                    171 	.globl _P4
                                    172 	.globl _USBIEN
                                    173 	.globl _USBINT
                                    174 	.globl _USBCON
                                    175 	.globl _UFNUMH
                                    176 	.globl _UFNUML
                                    177 	.globl _UFNUM
                                    178 	.globl _SADEN
                                    179 	.globl _IPL0
                                    180 	.globl _IPH0
                                    181 	.globl _IPH1
                                    182 	.globl _IPL1
                                    183 	.globl _IEN1
                                    184 	.globl _P3
                                    185 	.globl _CKCON1
                                    186 	.globl _SADDR
                                    187 	.globl _IEN0
                                    188 	.globl _IE
                                    189 	.globl _WDTPRG
                                    190 	.globl _WDTRST
                                    191 	.globl _PLLDIV
                                    192 	.globl _PLLCON
                                    193 	.globl _AUXR1
                                    194 	.globl _P2
                                    195 	.globl _KBF
                                    196 	.globl _KBE
                                    197 	.globl _KBLS
                                    198 	.globl _BDRCON
                                    199 	.globl _BRL
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _SSADR
                                    203 	.globl _SSDAT
                                    204 	.globl _SSCS
                                    205 	.globl _SSCON
                                    206 	.globl _P1
                                    207 	.globl _CKCON0
                                    208 	.globl _AUXR
                                    209 	.globl _TH1
                                    210 	.globl _TL1
                                    211 	.globl _TMR1
                                    212 	.globl _TH0
                                    213 	.globl _TL0
                                    214 	.globl _TMR0
                                    215 	.globl _TMOD
                                    216 	.globl _TCON
                                    217 	.globl _PCON
                                    218 	.globl _DPH
                                    219 	.globl _DPL
                                    220 	.globl _SP
                                    221 	.globl _P0
                                    222 	.globl _oled_status
                                    223 	.globl _i2c_done
                                    224 	.globl _i2c_busy
                                    225 	.globl _i2c_error
                                    226 	.globl _i2c_tx_index
                                    227 	.globl _i2c_tx_length
                                    228 	.globl _i2c_tx_buffer
                                    229 	.globl _time_ms
                                    230 	.globl _delay_time_ms
                                    231 	.globl _delay_us
                                    232 	.globl _delay_ms
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           000080   238 _P0	=	0x0080
                           000081   239 _SP	=	0x0081
                           000082   240 _DPL	=	0x0082
                           000083   241 _DPH	=	0x0083
                           000087   242 _PCON	=	0x0087
                           000088   243 _TCON	=	0x0088
                           000089   244 _TMOD	=	0x0089
                           008C8A   245 _TMR0	=	0x8c8a
                           00008A   246 _TL0	=	0x008a
                           00008C   247 _TH0	=	0x008c
                           008D8B   248 _TMR1	=	0x8d8b
                           00008B   249 _TL1	=	0x008b
                           00008D   250 _TH1	=	0x008d
                           00008E   251 _AUXR	=	0x008e
                           00008F   252 _CKCON0	=	0x008f
                           000090   253 _P1	=	0x0090
                           000093   254 _SSCON	=	0x0093
                           000094   255 _SSCS	=	0x0094
                           000095   256 _SSDAT	=	0x0095
                           000096   257 _SSADR	=	0x0096
                           000098   258 _SCON	=	0x0098
                           000099   259 _SBUF	=	0x0099
                           00009A   260 _BRL	=	0x009a
                           00009B   261 _BDRCON	=	0x009b
                           00009C   262 _KBLS	=	0x009c
                           00009D   263 _KBE	=	0x009d
                           00009E   264 _KBF	=	0x009e
                           0000A0   265 _P2	=	0x00a0
                           0000A2   266 _AUXR1	=	0x00a2
                           0000A3   267 _PLLCON	=	0x00a3
                           0000A4   268 _PLLDIV	=	0x00a4
                           0000A6   269 _WDTRST	=	0x00a6
                           0000A7   270 _WDTPRG	=	0x00a7
                           0000A8   271 _IE	=	0x00a8
                           0000A8   272 _IEN0	=	0x00a8
                           0000A9   273 _SADDR	=	0x00a9
                           0000AF   274 _CKCON1	=	0x00af
                           0000B0   275 _P3	=	0x00b0
                           0000B1   276 _IEN1	=	0x00b1
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000B7   279 _IPH0	=	0x00b7
                           0000B8   280 _IPL0	=	0x00b8
                           0000B9   281 _SADEN	=	0x00b9
                           00BBBA   282 _UFNUM	=	0xbbba
                           0000BA   283 _UFNUML	=	0x00ba
                           0000BB   284 _UFNUMH	=	0x00bb
                           0000BC   285 _USBCON	=	0x00bc
                           0000BD   286 _USBINT	=	0x00bd
                           0000BE   287 _USBIEN	=	0x00be
                           0000C0   288 _P4	=	0x00c0
                           0000C2   289 _UEPIEN	=	0x00c2
                           0000C3   290 _SPCON	=	0x00c3
                           0000C4   291 _SPSTA	=	0x00c4
                           0000C5   292 _SPDAT	=	0x00c5
                           0000C6   293 _USBADDR	=	0x00c6
                           0000C7   294 _UEPNUM	=	0x00c7
                           0000C8   295 _T2CON	=	0x00c8
                           0000C9   296 _T2MOD	=	0x00c9
                           00CBCA   297 _RCAP2	=	0xcbca
                           0000CA   298 _RCAP2L	=	0x00ca
                           0000CB   299 _RCAP2H	=	0x00cb
                           00CDCC   300 _TMR2	=	0xcdcc
                           0000CC   301 _TL2	=	0x00cc
                           0000CD   302 _TH2	=	0x00cd
                           0000CE   303 _UEPSTAX	=	0x00ce
                           0000CF   304 _UEPDATX	=	0x00cf
                           0000D0   305 _PSW	=	0x00d0
                           0000D1   306 _FCON	=	0x00d1
                           0000D2   307 _EECON	=	0x00d2
                           0000D4   308 _UEPCONX	=	0x00d4
                           0000D5   309 _UEPRST	=	0x00d5
                           0000D8   310 _CCON	=	0x00d8
                           0000D9   311 _CMOD	=	0x00d9
                           0000DA   312 _CCAPM0	=	0x00da
                           0000DB   313 _CCAPM1	=	0x00db
                           0000DC   314 _CCAPM2	=	0x00dc
                           0000DD   315 _CCAPM3	=	0x00dd
                           0000DE   316 _CCAPM4	=	0x00de
                           0000E0   317 _ACC	=	0x00e0
                           00E3E2   318 _UBYCTX	=	0xe3e2
                           0000E2   319 _UBYCTLX	=	0x00e2
                           0000E3   320 _UBYCTHX	=	0x00e3
                           00F9E9   321 _PCA	=	0xf9e9
                           0000E9   322 _CL	=	0x00e9
                           0000F9   323 _CH	=	0x00f9
                           00FAEA   324 _CCAP0	=	0xfaea
                           0000EA   325 _CCAP0L	=	0x00ea
                           0000FA   326 _CCAP0H	=	0x00fa
                           00FBEB   327 _CCAP1	=	0xfbeb
                           0000EB   328 _CCAP1L	=	0x00eb
                           0000FB   329 _CCAP1H	=	0x00fb
                           00FCEC   330 _CCAP2	=	0xfcec
                           0000EC   331 _CCAP2L	=	0x00ec
                           0000FC   332 _CCAP2H	=	0x00fc
                           00FDED   333 _CCAP3	=	0xfded
                           0000ED   334 _CCAP3L	=	0x00ed
                           0000FD   335 _CCAP3H	=	0x00fd
                           00FEEE   336 _CCAP4	=	0xfeee
                           0000EE   337 _CCAP4L	=	0x00ee
                           0000FE   338 _CCAP4H	=	0x00fe
                           0000F0   339 _B	=	0x00f0
                           0000F1   340 _LEDCON	=	0x00f1
                           0000F8   341 _UEPINT	=	0x00f8
                                    342 ;--------------------------------------------------------
                                    343 ; special function bits
                                    344 ;--------------------------------------------------------
                                    345 	.area RSEG    (ABS,DATA)
      000000                        346 	.org 0x0000
                           000080   347 _P0_0	=	0x0080
                           000081   348 _P0_1	=	0x0081
                           000082   349 _P0_2	=	0x0082
                           000083   350 _P0_3	=	0x0083
                           000084   351 _P0_4	=	0x0084
                           000085   352 _P0_5	=	0x0085
                           000086   353 _P0_6	=	0x0086
                           000087   354 _P0_7	=	0x0087
                           000088   355 _IT0	=	0x0088
                           000089   356 _IE0	=	0x0089
                           00008A   357 _IT1	=	0x008a
                           00008B   358 _IE1	=	0x008b
                           00008C   359 _TR0	=	0x008c
                           00008D   360 _TF0	=	0x008d
                           00008E   361 _TR1	=	0x008e
                           00008F   362 _TF1	=	0x008f
                           000090   363 _P1_0	=	0x0090
                           000091   364 _P1_1	=	0x0091
                           000092   365 _P1_2	=	0x0092
                           000093   366 _P1_3	=	0x0093
                           000094   367 _P1_4	=	0x0094
                           000095   368 _P1_5	=	0x0095
                           000096   369 _P1_6	=	0x0096
                           000097   370 _P1_7	=	0x0097
                           000098   371 _RI	=	0x0098
                           000099   372 _TI	=	0x0099
                           00009A   373 _RB8	=	0x009a
                           00009B   374 _TB8	=	0x009b
                           00009C   375 _REN	=	0x009c
                           00009D   376 _SM2	=	0x009d
                           00009E   377 _SM1	=	0x009e
                           00009F   378 _SM0	=	0x009f
                           00009F   379 _FE	=	0x009f
                           0000A0   380 _P2_0	=	0x00a0
                           0000A1   381 _P2_1	=	0x00a1
                           0000A2   382 _P2_2	=	0x00a2
                           0000A3   383 _P2_3	=	0x00a3
                           0000A4   384 _P2_4	=	0x00a4
                           0000A5   385 _P2_5	=	0x00a5
                           0000A6   386 _P2_6	=	0x00a6
                           0000A7   387 _P2_7	=	0x00a7
                           0000A8   388 _EX0	=	0x00a8
                           0000A9   389 _ET0	=	0x00a9
                           0000AA   390 _EX1	=	0x00aa
                           0000AB   391 _ET1	=	0x00ab
                           0000AC   392 _ES	=	0x00ac
                           0000AD   393 _ET2	=	0x00ad
                           0000AE   394 _EC	=	0x00ae
                           0000AF   395 _EA	=	0x00af
                           0000B0   396 _P3_0	=	0x00b0
                           0000B1   397 _P3_1	=	0x00b1
                           0000B2   398 _P3_2	=	0x00b2
                           0000B3   399 _P3_3	=	0x00b3
                           0000B4   400 _P3_4	=	0x00b4
                           0000B5   401 _P3_5	=	0x00b5
                           0000B6   402 _P3_6	=	0x00b6
                           0000B7   403 _P3_7	=	0x00b7
                           0000B8   404 _PX0L	=	0x00b8
                           0000B9   405 _PT0L	=	0x00b9
                           0000BA   406 _PX1L	=	0x00ba
                           0000BB   407 _PT1L	=	0x00bb
                           0000BC   408 _PSL	=	0x00bc
                           0000BD   409 _PT2L	=	0x00bd
                           0000BE   410 _PPCL	=	0x00be
                           0000C0   411 _P4_0	=	0x00c0
                           0000C1   412 _P4_1	=	0x00c1
                           0000C8   413 _CP_RL2	=	0x00c8
                           0000C9   414 _C_T2	=	0x00c9
                           0000CA   415 _TR2	=	0x00ca
                           0000CB   416 _EXEN2	=	0x00cb
                           0000CC   417 _TCLK	=	0x00cc
                           0000CD   418 _RCLK	=	0x00cd
                           0000CE   419 _EXF2	=	0x00ce
                           0000CF   420 _TF2	=	0x00cf
                           0000D0   421 _P	=	0x00d0
                           0000D1   422 _F1	=	0x00d1
                           0000D2   423 _OV	=	0x00d2
                           0000D3   424 _RS0	=	0x00d3
                           0000D4   425 _RS1	=	0x00d4
                           0000D5   426 _F0	=	0x00d5
                           0000D6   427 _AC	=	0x00d6
                           0000D7   428 _CY	=	0x00d7
                           0000D8   429 _CCF0	=	0x00d8
                           0000D9   430 _CCF1	=	0x00d9
                           0000DA   431 _CCF2	=	0x00da
                           0000DB   432 _CCF3	=	0x00db
                           0000DC   433 _CCF4	=	0x00dc
                           0000DE   434 _CR	=	0x00de
                           0000DF   435 _CF	=	0x00df
                           0000F8   436 _EP0INT	=	0x00f8
                           0000F9   437 _EP1INT	=	0x00f9
                           0000FA   438 _EP2INT	=	0x00fa
                           0000FB   439 _EP3INT	=	0x00fb
                           0000FC   440 _EP4INT	=	0x00fc
                           0000FD   441 _EP5INT	=	0x00fd
                           0000FE   442 _EP6INT	=	0x00fe
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable register banks
                                    445 ;--------------------------------------------------------
                                    446 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        447 	.ds 8
                                    448 ;--------------------------------------------------------
                                    449 ; internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area DSEG    (DATA)
      000008                        452 _delay_time_ms::
      000008                        453 	.ds 4
      00000C                        454 _time_ms::
      00000C                        455 	.ds 2
      00000E                        456 _i2c_tx_buffer::
      00000E                        457 	.ds 32
      00002E                        458 _i2c_tx_length::
      00002E                        459 	.ds 1
      00002F                        460 _i2c_tx_index::
      00002F                        461 	.ds 1
      000030                        462 _i2c_error::
      000030                        463 	.ds 1
      000031                        464 _i2c_busy::
      000031                        465 	.ds 1
      000032                        466 _i2c_done::
      000032                        467 	.ds 1
      000033                        468 _oled_status::
      000033                        469 	.ds 1
      000034                        470 _timer0_isr_value_10000_31:
      000034                        471 	.ds 2
                                    472 ;--------------------------------------------------------
                                    473 ; overlayable items in internal ram
                                    474 ;--------------------------------------------------------
                                    475 ;--------------------------------------------------------
                                    476 ; Stack segment in internal ram
                                    477 ;--------------------------------------------------------
                                    478 	.area SSEG
      000063                        479 __start__stack:
      000063                        480 	.ds	1
                                    481 
                                    482 ;--------------------------------------------------------
                                    483 ; indirectly addressable internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area ISEG    (DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; absolute internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area IABS    (ABS,DATA)
                                    490 	.area IABS    (ABS,DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; bit data
                                    493 ;--------------------------------------------------------
                                    494 	.area BSEG    (BIT)
                                    495 ;--------------------------------------------------------
                                    496 ; paged external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area PSEG    (PAG,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; uninitialized external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XSEG    (XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; absolute external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XABS    (ABS,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; initialized external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XISEG   (XDATA)
                                    511 	.area HOME    (CODE)
                                    512 	.area GSINIT0 (CODE)
                                    513 	.area GSINIT1 (CODE)
                                    514 	.area GSINIT2 (CODE)
                                    515 	.area GSINIT3 (CODE)
                                    516 	.area GSINIT4 (CODE)
                                    517 	.area GSINIT5 (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 	.area GSFINAL (CODE)
                                    520 	.area CSEG    (CODE)
                                    521 ;--------------------------------------------------------
                                    522 ; interrupt vector
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
      000000                        525 __interrupt_vect:
      000000 02 00 96         [24]  526 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  527 	reti
      000004                        528 	.ds	7
      00000B 02 02 65         [24]  529 	ljmp	_timer0_isr
      00000E                        530 	.ds	5
      000013 32               [24]  531 	reti
      000014                        532 	.ds	7
      00001B 32               [24]  533 	reti
      00001C                        534 	.ds	7
      000023 32               [24]  535 	reti
      000024                        536 	.ds	7
      00002B 32               [24]  537 	reti
      00002C                        538 	.ds	7
      000033 32               [24]  539 	reti
      000034                        540 	.ds	7
      00003B 32               [24]  541 	reti
      00003C                        542 	.ds	7
      000043 32               [24]  543 	reti
      000044                        544 	.ds	7
      00004B 02 02 D4         [24]  545 	ljmp	_i2c_isr
                                    546 ; restartable atomic support routines
      00004E                        547 	.ds	2
      000050                        548 sdcc_atomic_exchange_rollback_start::
      000050 00               [12]  549 	nop
      000051 00               [12]  550 	nop
      000052                        551 sdcc_atomic_exchange_pdata_impl:
      000052 E2               [24]  552 	movx	a, @r0
      000053 FB               [12]  553 	mov	r3, a
      000054 EA               [12]  554 	mov	a, r2
      000055 F2               [24]  555 	movx	@r0, a
      000056 80 2C            [24]  556 	sjmp	sdcc_atomic_exchange_exit
      000058 00               [12]  557 	nop
      000059 00               [12]  558 	nop
      00005A                        559 sdcc_atomic_exchange_xdata_impl:
      00005A E0               [24]  560 	movx	a, @dptr
      00005B FB               [12]  561 	mov	r3, a
      00005C EA               [12]  562 	mov	a, r2
      00005D F0               [24]  563 	movx	@dptr, a
      00005E 80 24            [24]  564 	sjmp	sdcc_atomic_exchange_exit
      000060                        565 sdcc_atomic_compare_exchange_idata_impl:
      000060 E6               [12]  566 	mov	a, @r0
      000061 B5 02 02         [24]  567 	cjne	a, ar2, .+#5
      000064 EB               [12]  568 	mov	a, r3
      000065 F6               [12]  569 	mov	@r0, a
      000066 22               [24]  570 	ret
      000067 00               [12]  571 	nop
      000068                        572 sdcc_atomic_compare_exchange_pdata_impl:
      000068 E2               [24]  573 	movx	a, @r0
      000069 B5 02 02         [24]  574 	cjne	a, ar2, .+#5
      00006C EB               [12]  575 	mov	a, r3
      00006D F2               [24]  576 	movx	@r0, a
      00006E 22               [24]  577 	ret
      00006F 00               [12]  578 	nop
      000070                        579 sdcc_atomic_compare_exchange_xdata_impl:
      000070 E0               [24]  580 	movx	a, @dptr
      000071 B5 02 02         [24]  581 	cjne	a, ar2, .+#5
      000074 EB               [12]  582 	mov	a, r3
      000075 F0               [24]  583 	movx	@dptr, a
      000076 22               [24]  584 	ret
      000077                        585 sdcc_atomic_exchange_rollback_end::
                                    586 
      000077                        587 sdcc_atomic_exchange_gptr_impl::
      000077 30 F6 E0         [24]  588 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00007A A8 82            [24]  589 	mov	r0, dpl
      00007C 20 F5 D3         [24]  590 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00007F                        591 sdcc_atomic_exchange_idata_impl:
      00007F EA               [12]  592 	mov	a, r2
      000080 C6               [12]  593 	xch	a, @r0
      000081 F5 82            [12]  594 	mov	dpl, a
      000083 22               [24]  595 	ret
      000084                        596 sdcc_atomic_exchange_exit:
      000084 8B 82            [24]  597 	mov	dpl, r3
      000086 22               [24]  598 	ret
      000087                        599 sdcc_atomic_compare_exchange_gptr_impl::
      000087 30 F6 E6         [24]  600 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00008A A8 82            [24]  601 	mov	r0, dpl
      00008C 20 F5 D9         [24]  602 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00008F 80 CF            [24]  603 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    604 ;--------------------------------------------------------
                                    605 ; global & static initialisations
                                    606 ;--------------------------------------------------------
                                    607 	.area HOME    (CODE)
                                    608 	.area GSINIT  (CODE)
                                    609 	.area GSFINAL (CODE)
                                    610 	.area GSINIT  (CODE)
                                    611 	.globl __sdcc_gsinit_startup
                                    612 	.globl __sdcc_program_startup
                                    613 	.globl __start__stack
                                    614 	.globl __mcs51_genXINIT
                                    615 	.globl __mcs51_genXRAMCLEAR
                                    616 	.globl __mcs51_genRAMCLEAR
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'timer0_isr'
                                    619 ;------------------------------------------------------------
                                    620 ;value         Allocated with name '_timer0_isr_value_10000_31'
                                    621 ;------------------------------------------------------------
                                    622 ;	main.c:115: static int value=0;
      0000EF E4               [12]  623 	clr	a
      0000F0 F5 34            [12]  624 	mov	_timer0_isr_value_10000_31,a
      0000F2 F5 35            [12]  625 	mov	(_timer0_isr_value_10000_31 + 1),a
                                    626 ;	main.c:7: volatile unsigned long int delay_time_ms = 0;
      0000F4 E4               [12]  627 	clr	a
      0000F5 F5 08            [12]  628 	mov	_delay_time_ms,a
      0000F7 F5 09            [12]  629 	mov	(_delay_time_ms + 1),a
      0000F9 F5 0A            [12]  630 	mov	(_delay_time_ms + 2),a
      0000FB F5 0B            [12]  631 	mov	(_delay_time_ms + 3),a
                                    632 ;	main.c:8: volatile unsigned short int time_ms = 0;
      0000FD F5 0C            [12]  633 	mov	_time_ms,a
      0000FF F5 0D            [12]  634 	mov	(_time_ms + 1),a
                                    635 ;	main.c:11: volatile unsigned char i2c_tx_length = 0;
      000101 F5 2E            [12]  636 	mov	_i2c_tx_length,a
                                    637 ;	main.c:12: volatile unsigned char i2c_tx_index = 0;
      000103 F5 2F            [12]  638 	mov	_i2c_tx_index,a
                                    639 ;	main.c:13: volatile unsigned char i2c_error = 0;
      000105 F5 30            [12]  640 	mov	_i2c_error,a
                                    641 ;	main.c:14: volatile unsigned char i2c_busy = 0;
      000107 F5 31            [12]  642 	mov	_i2c_busy,a
                                    643 ;	main.c:15: volatile unsigned char i2c_done = 0;
      000109 F5 32            [12]  644 	mov	_i2c_done,a
                                    645 ;	main.c:17: volatile unsigned char oled_status = 0;
      00010B F5 33            [12]  646 	mov	_oled_status,a
                                    647 	.area GSFINAL (CODE)
      00010D 02 00 91         [24]  648 	ljmp	__sdcc_program_startup
                                    649 ;--------------------------------------------------------
                                    650 ; Home
                                    651 ;--------------------------------------------------------
                                    652 	.area HOME    (CODE)
                                    653 	.area HOME    (CODE)
      000091                        654 __sdcc_program_startup:
      000091 12 01 55         [24]  655 	lcall	_main
      000094                        656 __sdcc_program_exit:
      000094 80 FE            [24]  657 	sjmp	.
                                    658 ;	return from main will return to caller
                                    659 ;--------------------------------------------------------
                                    660 ; code
                                    661 ;--------------------------------------------------------
                                    662 	.area CSEG    (CODE)
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'lcd_write_hex'
                                    665 ;------------------------------------------------------------
                                    666 ;value         Allocated to registers r7 
                                    667 ;digit         Allocated to registers r7 
                                    668 ;------------------------------------------------------------
                                    669 ;	main.c:19: void lcd_write_hex(unsigned char value)
                                    670 ;	-----------------------------------------
                                    671 ;	 function lcd_write_hex
                                    672 ;	-----------------------------------------
      000110                        673 _lcd_write_hex:
                           000007   674 	ar7 = 0x07
                           000006   675 	ar6 = 0x06
                           000005   676 	ar5 = 0x05
                           000004   677 	ar4 = 0x04
                           000003   678 	ar3 = 0x03
                           000002   679 	ar2 = 0x02
                           000001   680 	ar1 = 0x01
                           000000   681 	ar0 = 0x00
                                    682 ;	main.c:23: digit = (value >> 4) & 0x0F;
      000110 E5 82            [12]  683 	mov	a,dpl
      000112 FF               [12]  684 	mov	r7,a
      000113 C4               [12]  685 	swap	a
      000114 54 0F            [12]  686 	anl	a,#0x0f
      000116 FE               [12]  687 	mov	r6,a
      000117 53 06 0F         [24]  688 	anl	ar6,#0x0f
                                    689 ;	main.c:24: if(digit < 10)
      00011A BE 0A 00         [24]  690 	cjne	r6,#0x0a,00125$
      00011D                        691 00125$:
      00011D 50 10            [24]  692 	jnc	00102$
                                    693 ;	main.c:25: letter_write('0' + digit);
      00011F 8E 05            [24]  694 	mov	ar5,r6
      000121 74 30            [12]  695 	mov	a,#0x30
      000123 2D               [12]  696 	add	a, r5
      000124 F5 82            [12]  697 	mov	dpl,a
      000126 C0 07            [24]  698 	push	ar7
      000128 12 04 A4         [24]  699 	lcall	_letter_write
      00012B D0 07            [24]  700 	pop	ar7
      00012D 80 0C            [24]  701 	sjmp	00103$
      00012F                        702 00102$:
                                    703 ;	main.c:27: letter_write('A' + digit - 10);
      00012F 74 37            [12]  704 	mov	a,#0x37
      000131 2E               [12]  705 	add	a, r6
      000132 F5 82            [12]  706 	mov	dpl,a
      000134 C0 07            [24]  707 	push	ar7
      000136 12 04 A4         [24]  708 	lcall	_letter_write
      000139 D0 07            [24]  709 	pop	ar7
      00013B                        710 00103$:
                                    711 ;	main.c:29: digit = value & 0x0F;
      00013B 53 07 0F         [24]  712 	anl	ar7,#0x0f
                                    713 ;	main.c:30: if(digit < 10)
      00013E BF 0A 00         [24]  714 	cjne	r7,#0x0a,00127$
      000141                        715 00127$:
      000141 50 0A            [24]  716 	jnc	00105$
                                    717 ;	main.c:31: letter_write('0' + digit);
      000143 8F 06            [24]  718 	mov	ar6,r7
      000145 74 30            [12]  719 	mov	a,#0x30
      000147 2E               [12]  720 	add	a, r6
      000148 F5 82            [12]  721 	mov	dpl,a
      00014A 02 04 A4         [24]  722 	ljmp	_letter_write
      00014D                        723 00105$:
                                    724 ;	main.c:33: letter_write('A' + digit - 10);
      00014D 74 37            [12]  725 	mov	a,#0x37
      00014F 2F               [12]  726 	add	a, r7
      000150 F5 82            [12]  727 	mov	dpl,a
                                    728 ;	main.c:34: }
      000152 02 04 A4         [24]  729 	ljmp	_letter_write
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'main'
                                    732 ;------------------------------------------------------------
                                    733 ;	main.c:36: void main(void){
                                    734 ;	-----------------------------------------
                                    735 ;	 function main
                                    736 ;	-----------------------------------------
      000155                        737 _main:
                                    738 ;	main.c:38: timer0_init();
      000155 12 03 67         [24]  739 	lcall	_timer0_init
                                    740 ;	main.c:39: i2c_init();
      000158 12 03 7C         [24]  741 	lcall	_i2c_init
                                    742 ;	main.c:41: EA=1;         /* Enable global interrupt */
                                    743 ;	assignBit
      00015B D2 AF            [12]  744 	setb	_EA
                                    745 ;	main.c:43: delay_ms(100);
      00015D 90 00 64         [24]  746 	mov	dptr,#0x0064
      000160 E4               [12]  747 	clr	a
      000161 F5 F0            [12]  748 	mov	b,a
      000163 12 02 45         [24]  749 	lcall	_delay_ms
                                    750 ;	main.c:45: lcd_init();
      000166 12 04 62         [24]  751 	lcall	_lcd_init
                                    752 ;	main.c:47: oled_status = init_oled();
      000169 12 04 FB         [24]  753 	lcall	_init_oled
      00016C 85 82 33         [24]  754 	mov	_oled_status,dpl
                                    755 ;	main.c:49: cmd_write(0x80);
      00016F 75 82 80         [24]  756 	mov	dpl, #0x80
      000172 12 04 8C         [24]  757 	lcall	_cmd_write
                                    758 ;	main.c:50: letter_write('L');
      000175 75 82 4C         [24]  759 	mov	dpl, #0x4c
      000178 12 04 A4         [24]  760 	lcall	_letter_write
                                    761 ;	main.c:51: letter_write('C');
      00017B 75 82 43         [24]  762 	mov	dpl, #0x43
      00017E 12 04 A4         [24]  763 	lcall	_letter_write
                                    764 ;	main.c:52: letter_write('D');
      000181 75 82 44         [24]  765 	mov	dpl, #0x44
      000184 12 04 A4         [24]  766 	lcall	_letter_write
                                    767 ;	main.c:53: letter_write(' ');
      000187 75 82 20         [24]  768 	mov	dpl, #0x20
      00018A 12 04 A4         [24]  769 	lcall	_letter_write
                                    770 ;	main.c:54: letter_write('O');
      00018D 75 82 4F         [24]  771 	mov	dpl, #0x4f
      000190 12 04 A4         [24]  772 	lcall	_letter_write
                                    773 ;	main.c:55: letter_write('K');
      000193 75 82 4B         [24]  774 	mov	dpl, #0x4b
      000196 12 04 A4         [24]  775 	lcall	_letter_write
                                    776 ;	main.c:57: if(oled_status){
      000199 E5 33            [12]  777 	mov	a,_oled_status
      00019B 60 0C            [24]  778 	jz	00102$
                                    779 ;	main.c:58: oled_write_string("HELLO WORLD");
      00019D 90 07 E0         [24]  780 	mov	dptr,#___str_0
      0001A0 75 F0 80         [24]  781 	mov	b, #0x80
      0001A3 12 07 66         [24]  782 	lcall	_oled_write_string
      0001A6 02 02 2B         [24]  783 	ljmp	00105$
      0001A9                        784 00102$:
                                    785 ;	main.c:61: P1_7=0;
                                    786 ;	assignBit
      0001A9 C2 97            [12]  787 	clr	_P1_7
                                    788 ;	main.c:62: delay_ms(1000);
      0001AB 90 03 E8         [24]  789 	mov	dptr,#0x03e8
      0001AE E4               [12]  790 	clr	a
      0001AF F5 F0            [12]  791 	mov	b,a
      0001B1 12 02 45         [24]  792 	lcall	_delay_ms
                                    793 ;	main.c:63: P1_7=1;
                                    794 ;	assignBit
      0001B4 D2 97            [12]  795 	setb	_P1_7
                                    796 ;	main.c:64: delay_ms(1000);
      0001B6 90 03 E8         [24]  797 	mov	dptr,#0x03e8
      0001B9 E4               [12]  798 	clr	a
      0001BA F5 F0            [12]  799 	mov	b,a
      0001BC 12 02 45         [24]  800 	lcall	_delay_ms
                                    801 ;	main.c:65: P1_7=0;
                                    802 ;	assignBit
      0001BF C2 97            [12]  803 	clr	_P1_7
                                    804 ;	main.c:66: delay_ms(1000);
      0001C1 90 03 E8         [24]  805 	mov	dptr,#0x03e8
      0001C4 E4               [12]  806 	clr	a
      0001C5 F5 F0            [12]  807 	mov	b,a
      0001C7 12 02 45         [24]  808 	lcall	_delay_ms
                                    809 ;	main.c:67: P1_7=1;
                                    810 ;	assignBit
      0001CA D2 97            [12]  811 	setb	_P1_7
                                    812 ;	main.c:68: delay_ms(1000);
      0001CC 90 03 E8         [24]  813 	mov	dptr,#0x03e8
      0001CF E4               [12]  814 	clr	a
      0001D0 F5 F0            [12]  815 	mov	b,a
      0001D2 12 02 45         [24]  816 	lcall	_delay_ms
                                    817 ;	main.c:69: P1_7=0;
                                    818 ;	assignBit
      0001D5 C2 97            [12]  819 	clr	_P1_7
                                    820 ;	main.c:71: cmd_write(0x80);
      0001D7 75 82 80         [24]  821 	mov	dpl, #0x80
      0001DA 12 04 8C         [24]  822 	lcall	_cmd_write
                                    823 ;	main.c:72: letter_write('E');
      0001DD 75 82 45         [24]  824 	mov	dpl, #0x45
      0001E0 12 04 A4         [24]  825 	lcall	_letter_write
                                    826 ;	main.c:73: letter_write('R');
      0001E3 75 82 52         [24]  827 	mov	dpl, #0x52
      0001E6 12 04 A4         [24]  828 	lcall	_letter_write
                                    829 ;	main.c:74: letter_write('R');
      0001E9 75 82 52         [24]  830 	mov	dpl, #0x52
      0001EC 12 04 A4         [24]  831 	lcall	_letter_write
                                    832 ;	main.c:75: letter_write(':');
      0001EF 75 82 3A         [24]  833 	mov	dpl, #0x3a
      0001F2 12 04 A4         [24]  834 	lcall	_letter_write
                                    835 ;	main.c:76: lcd_write_hex(i2c_error);
      0001F5 85 30 82         [24]  836 	mov	dpl, _i2c_error
      0001F8 12 01 10         [24]  837 	lcall	_lcd_write_hex
                                    838 ;	main.c:78: cmd_write(0xC0);
      0001FB 75 82 C0         [24]  839 	mov	dpl, #0xc0
      0001FE 12 04 8C         [24]  840 	lcall	_cmd_write
                                    841 ;	main.c:79: letter_write('S');
      000201 75 82 53         [24]  842 	mov	dpl, #0x53
      000204 12 04 A4         [24]  843 	lcall	_letter_write
                                    844 ;	main.c:80: letter_write(':');
      000207 75 82 3A         [24]  845 	mov	dpl, #0x3a
      00020A 12 04 A4         [24]  846 	lcall	_letter_write
                                    847 ;	main.c:81: lcd_write_hex(SSCS);
      00020D 85 94 82         [24]  848 	mov	dpl, _SSCS
      000210 12 01 10         [24]  849 	lcall	_lcd_write_hex
                                    850 ;	main.c:83: cmd_write(0x94);
      000213 75 82 94         [24]  851 	mov	dpl, #0x94
      000216 12 04 8C         [24]  852 	lcall	_cmd_write
                                    853 ;	main.c:84: letter_write('C');
      000219 75 82 43         [24]  854 	mov	dpl, #0x43
      00021C 12 04 A4         [24]  855 	lcall	_letter_write
                                    856 ;	main.c:85: letter_write(':');
      00021F 75 82 3A         [24]  857 	mov	dpl, #0x3a
      000222 12 04 A4         [24]  858 	lcall	_letter_write
                                    859 ;	main.c:86: lcd_write_hex(SSCON);
      000225 85 93 82         [24]  860 	mov	dpl, _SSCON
      000228 12 01 10         [24]  861 	lcall	_lcd_write_hex
                                    862 ;	main.c:89: while(1){
      00022B                        863 00105$:
                                    864 ;	main.c:92: }
      00022B 80 FE            [24]  865 	sjmp	00105$
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'delay_us'
                                    868 ;------------------------------------------------------------
                                    869 ;value         Allocated to registers r6 r7 
                                    870 ;i             Allocated to registers r5 
                                    871 ;------------------------------------------------------------
                                    872 ;	main.c:95: void delay_us(unsigned int value){
                                    873 ;	-----------------------------------------
                                    874 ;	 function delay_us
                                    875 ;	-----------------------------------------
      00022D                        876 _delay_us:
      00022D AE 82            [24]  877 	mov	r6, dpl
      00022F AF 83            [24]  878 	mov	r7, dph
                                    879 ;	main.c:99: while(value--){
      000231                        880 00102$:
      000231 8E 04            [24]  881 	mov	ar4,r6
      000233 8F 05            [24]  882 	mov	ar5,r7
      000235 1E               [12]  883 	dec	r6
      000236 BE FF 01         [24]  884 	cjne	r6,#0xff,00138$
      000239 1F               [12]  885 	dec	r7
      00023A                        886 00138$:
      00023A EC               [12]  887 	mov	a,r4
      00023B 4D               [12]  888 	orl	a,r5
      00023C 60 06            [24]  889 	jz	00108$
                                    890 ;	main.c:100: for(i=0;i<4;i++);   /* This is around 1us */
      00023E 7D 04            [12]  891 	mov	r5,#0x04
      000240                        892 00107$:
      000240 DD FE            [24]  893 	djnz	r5,00107$
      000242 80 ED            [24]  894 	sjmp	00102$
      000244                        895 00108$:
                                    896 ;	main.c:102: }
      000244 22               [24]  897 	ret
                                    898 ;------------------------------------------------------------
                                    899 ;Allocation info for local variables in function 'delay_ms'
                                    900 ;------------------------------------------------------------
                                    901 ;value         Allocated to registers r4 r5 r6 r7 
                                    902 ;------------------------------------------------------------
                                    903 ;	main.c:104: void delay_ms(unsigned long int value){
                                    904 ;	-----------------------------------------
                                    905 ;	 function delay_ms
                                    906 ;	-----------------------------------------
      000245                        907 _delay_ms:
      000245 AC 82            [24]  908 	mov	r4,dpl
      000247 AD 83            [24]  909 	mov	r5,dph
      000249 AE F0            [24]  910 	mov	r6,b
      00024B FF               [12]  911 	mov	r7,a
                                    912 ;	main.c:106: delay_time_ms=0;
      00024C E4               [12]  913 	clr	a
      00024D F5 08            [12]  914 	mov	_delay_time_ms,a
      00024F F5 09            [12]  915 	mov	(_delay_time_ms + 1),a
      000251 F5 0A            [12]  916 	mov	(_delay_time_ms + 2),a
      000253 F5 0B            [12]  917 	mov	(_delay_time_ms + 3),a
                                    918 ;	main.c:107: while(delay_time_ms<value);
      000255                        919 00101$:
      000255 C3               [12]  920 	clr	c
      000256 E5 08            [12]  921 	mov	a,_delay_time_ms
      000258 9C               [12]  922 	subb	a,r4
      000259 E5 09            [12]  923 	mov	a,(_delay_time_ms + 1)
      00025B 9D               [12]  924 	subb	a,r5
      00025C E5 0A            [12]  925 	mov	a,(_delay_time_ms + 2)
      00025E 9E               [12]  926 	subb	a,r6
      00025F E5 0B            [12]  927 	mov	a,(_delay_time_ms + 3)
      000261 9F               [12]  928 	subb	a,r7
      000262 40 F1            [24]  929 	jc	00101$
                                    930 ;	main.c:109: }
      000264 22               [24]  931 	ret
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'timer0_isr'
                                    934 ;------------------------------------------------------------
                                    935 ;value         Allocated with name '_timer0_isr_value_10000_31'
                                    936 ;------------------------------------------------------------
                                    937 ;	main.c:113: void timer0_isr(void) __interrupt(1){
                                    938 ;	-----------------------------------------
                                    939 ;	 function timer0_isr
                                    940 ;	-----------------------------------------
      000265                        941 _timer0_isr:
      000265 C0 E0            [24]  942 	push	acc
      000267 C0 07            [24]  943 	push	ar7
      000269 C0 06            [24]  944 	push	ar6
      00026B C0 05            [24]  945 	push	ar5
      00026D C0 04            [24]  946 	push	ar4
      00026F C0 D0            [24]  947 	push	psw
      000271 75 D0 00         [24]  948 	mov	psw,#0x00
                                    949 ;	main.c:116: TF0=0;
                                    950 ;	assignBit
      000274 C2 8D            [12]  951 	clr	_TF0
                                    952 ;	main.c:117: value++;
      000276 05 34            [12]  953 	inc	_timer0_isr_value_10000_31
      000278 E4               [12]  954 	clr	a
      000279 B5 34 02         [24]  955 	cjne	a,_timer0_isr_value_10000_31,00121$
      00027C 05 35            [12]  956 	inc	(_timer0_isr_value_10000_31 + 1)
      00027E                        957 00121$:
                                    958 ;	main.c:118: if(value>=10){
      00027E C3               [12]  959 	clr	c
      00027F E5 34            [12]  960 	mov	a,_timer0_isr_value_10000_31
      000281 94 0A            [12]  961 	subb	a,#0x0a
      000283 E5 35            [12]  962 	mov	a,(_timer0_isr_value_10000_31 + 1)
      000285 64 80            [12]  963 	xrl	a,#0x80
      000287 94 80            [12]  964 	subb	a,#0x80
      000289 40 3C            [24]  965 	jc	00105$
                                    966 ;	main.c:120: value=0;
      00028B E4               [12]  967 	clr	a
      00028C F5 34            [12]  968 	mov	_timer0_isr_value_10000_31,a
      00028E F5 35            [12]  969 	mov	(_timer0_isr_value_10000_31 + 1),a
                                    970 ;	main.c:121: delay_time_ms++;
      000290 AC 08            [24]  971 	mov	r4,_delay_time_ms
      000292 AD 09            [24]  972 	mov	r5,(_delay_time_ms + 1)
      000294 AE 0A            [24]  973 	mov	r6,(_delay_time_ms + 2)
      000296 AF 0B            [24]  974 	mov	r7,(_delay_time_ms + 3)
      000298 04               [12]  975 	inc	a
      000299 2C               [12]  976 	add	a, r4
      00029A F5 08            [12]  977 	mov	_delay_time_ms,a
      00029C E4               [12]  978 	clr	a
      00029D 3D               [12]  979 	addc	a, r5
      00029E F5 09            [12]  980 	mov	(_delay_time_ms + 1),a
      0002A0 E4               [12]  981 	clr	a
      0002A1 3E               [12]  982 	addc	a, r6
      0002A2 F5 0A            [12]  983 	mov	(_delay_time_ms + 2),a
      0002A4 E4               [12]  984 	clr	a
      0002A5 3F               [12]  985 	addc	a, r7
      0002A6 F5 0B            [12]  986 	mov	(_delay_time_ms + 3),a
                                    987 ;	main.c:122: time_ms++;
      0002A8 AE 0C            [24]  988 	mov	r6,_time_ms
      0002AA AF 0D            [24]  989 	mov	r7,(_time_ms + 1)
      0002AC 74 01            [12]  990 	mov	a,#0x01
      0002AE 2E               [12]  991 	add	a, r6
      0002AF F5 0C            [12]  992 	mov	_time_ms,a
      0002B1 E4               [12]  993 	clr	a
      0002B2 3F               [12]  994 	addc	a, r7
      0002B3 F5 0D            [12]  995 	mov	(_time_ms + 1),a
                                    996 ;	main.c:124: if(time_ms>=1000){
      0002B5 AE 0C            [24]  997 	mov	r6,_time_ms
      0002B7 AF 0D            [24]  998 	mov	r7,(_time_ms + 1)
      0002B9 C3               [12]  999 	clr	c
      0002BA EE               [12] 1000 	mov	a,r6
      0002BB 94 E8            [12] 1001 	subb	a,#0xe8
      0002BD EF               [12] 1002 	mov	a,r7
      0002BE 94 03            [12] 1003 	subb	a,#0x03
      0002C0 40 05            [24] 1004 	jc	00105$
                                   1005 ;	main.c:125: time_ms=0;
      0002C2 E4               [12] 1006 	clr	a
      0002C3 F5 0C            [12] 1007 	mov	_time_ms,a
      0002C5 F5 0D            [12] 1008 	mov	(_time_ms + 1),a
      0002C7                       1009 00105$:
                                   1010 ;	main.c:128: }
      0002C7 D0 D0            [24] 1011 	pop	psw
      0002C9 D0 04            [24] 1012 	pop	ar4
      0002CB D0 05            [24] 1013 	pop	ar5
      0002CD D0 06            [24] 1014 	pop	ar6
      0002CF D0 07            [24] 1015 	pop	ar7
      0002D1 D0 E0            [24] 1016 	pop	acc
      0002D3 32               [24] 1017 	reti
                                   1018 ;	eliminated unneeded push/pop dpl
                                   1019 ;	eliminated unneeded push/pop dph
                                   1020 ;	eliminated unneeded push/pop b
                                   1021 ;------------------------------------------------------------
                                   1022 ;Allocation info for local variables in function 'i2c_isr'
                                   1023 ;------------------------------------------------------------
                                   1024 ;status        Allocated to registers r7 
                                   1025 ;------------------------------------------------------------
                                   1026 ;	main.c:130: void i2c_isr(void) __interrupt(9){
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function i2c_isr
                                   1029 ;	-----------------------------------------
      0002D4                       1030 _i2c_isr:
      0002D4 C0 E0            [24] 1031 	push	acc
      0002D6 C0 07            [24] 1032 	push	ar7
      0002D8 C0 01            [24] 1033 	push	ar1
      0002DA C0 D0            [24] 1034 	push	psw
      0002DC 75 D0 00         [24] 1035 	mov	psw,#0x00
                                   1036 ;	main.c:135: status=SSCS&0xf8;
      0002DF E5 94            [12] 1037 	mov	a,_SSCS
      0002E1 54 F8            [12] 1038 	anl	a,#0xf8
                                   1039 ;	main.c:137: switch(status){
      0002E3 FF               [12] 1040 	mov	r7,a
      0002E4 60 6D            [24] 1041 	jz	00115$
      0002E6 BF 08 02         [24] 1042 	cjne	r7,#0x08,00190$
      0002E9 80 1E            [24] 1043 	sjmp	00102$
      0002EB                       1044 00190$:
      0002EB BF 10 02         [24] 1045 	cjne	r7,#0x10,00191$
      0002EE 80 19            [24] 1046 	sjmp	00102$
      0002F0                       1047 00191$:
      0002F0 BF 18 02         [24] 1048 	cjne	r7,#0x18,00192$
      0002F3 80 19            [24] 1049 	sjmp	00103$
      0002F5                       1050 00192$:
      0002F5 BF 20 02         [24] 1051 	cjne	r7,#0x20,00193$
      0002F8 80 48            [24] 1052 	sjmp	00112$
      0002FA                       1053 00193$:
      0002FA BF 28 02         [24] 1054 	cjne	r7,#0x28,00194$
      0002FD 80 26            [24] 1055 	sjmp	00107$
      0002FF                       1056 00194$:
      0002FF BF 30 02         [24] 1057 	cjne	r7,#0x30,00195$
      000302 80 3E            [24] 1058 	sjmp	00112$
      000304                       1059 00195$:
                                   1060 ;	main.c:140: case 0x10: /* */
      000304 BF 38 4C         [24] 1061 	cjne	r7,#0x38,00115$
      000307 80 43            [24] 1062 	sjmp	00113$
      000309                       1063 00102$:
                                   1064 ;	main.c:141: SSDAT=0x78;
      000309 75 95 78         [24] 1065 	mov	_SSDAT,#0x78
                                   1066 ;	main.c:142: break;
                                   1067 ;	main.c:144: case 0x18: /* Address transmitted,ack received */
      00030C 80 4D            [24] 1068 	sjmp	00116$
      00030E                       1069 00103$:
                                   1070 ;	main.c:145: if(i2c_tx_length>0){
      00030E E5 2E            [12] 1071 	mov	a,_i2c_tx_length
      000310 60 08            [24] 1072 	jz	00105$
                                   1073 ;	main.c:146: SSDAT=i2c_tx_buffer[0];
      000312 85 0E 95         [24] 1074 	mov	_SSDAT,_i2c_tx_buffer
                                   1075 ;	main.c:147: i2c_tx_index=1;
      000315 75 2F 01         [24] 1076 	mov	_i2c_tx_index,#0x01
      000318 80 41            [24] 1077 	sjmp	00116$
      00031A                       1078 00105$:
                                   1079 ;	main.c:149: i2c_error=0xFD;
      00031A 75 30 FD         [24] 1080 	mov	_i2c_error,#0xfd
                                   1081 ;	main.c:150: SSCON |= 0x10; /* Request stop bit */
      00031D 43 93 10         [24] 1082 	orl	_SSCON,#0x10
                                   1083 ;	main.c:151: i2c_done=1;
      000320 75 32 01         [24] 1084 	mov	_i2c_done,#0x01
                                   1085 ;	main.c:153: break;
                                   1086 ;	main.c:155: case 0x28: /* Data transmitted,ACK received */
      000323 80 36            [24] 1087 	sjmp	00116$
      000325                       1088 00107$:
                                   1089 ;	main.c:156: if(i2c_tx_index<i2c_tx_length){
      000325 C3               [12] 1090 	clr	c
      000326 E5 2F            [12] 1091 	mov	a,_i2c_tx_index
      000328 95 2E            [12] 1092 	subb	a,_i2c_tx_length
      00032A 50 0E            [24] 1093 	jnc	00109$
                                   1094 ;	main.c:157: SSDAT=i2c_tx_buffer[i2c_tx_index];
      00032C E5 2F            [12] 1095 	mov	a,_i2c_tx_index
      00032E 24 0E            [12] 1096 	add	a, #_i2c_tx_buffer
      000330 F9               [12] 1097 	mov	r1,a
      000331 87 95            [24] 1098 	mov	_SSDAT,@r1
                                   1099 ;	main.c:158: i2c_tx_index++;
      000333 E5 2F            [12] 1100 	mov	a,_i2c_tx_index
      000335 04               [12] 1101 	inc	a
      000336 F5 2F            [12] 1102 	mov	_i2c_tx_index,a
      000338 80 21            [24] 1103 	sjmp	00116$
      00033A                       1104 00109$:
                                   1105 ;	main.c:160: SSCON |= 0x10; /* Request stop bit */
      00033A 43 93 10         [24] 1106 	orl	_SSCON,#0x10
                                   1107 ;	main.c:161: i2c_done=1;
      00033D 75 32 01         [24] 1108 	mov	_i2c_done,#0x01
                                   1109 ;	main.c:163: break;
                                   1110 ;	main.c:166: case 0x30: /* Data byte not acknowledged */
      000340 80 19            [24] 1111 	sjmp	00116$
      000342                       1112 00112$:
                                   1113 ;	main.c:167: i2c_error=status;
      000342 8F 30            [24] 1114 	mov	_i2c_error,r7
                                   1115 ;	main.c:168: SSCON |= 0x10; /* Request stop bit */
      000344 43 93 10         [24] 1116 	orl	_SSCON,#0x10
                                   1117 ;	main.c:169: i2c_done = 1;
      000347 75 32 01         [24] 1118 	mov	_i2c_done,#0x01
                                   1119 ;	main.c:170: break;
                                   1120 ;	main.c:172: case 0x38:
      00034A 80 0F            [24] 1121 	sjmp	00116$
      00034C                       1122 00113$:
                                   1123 ;	main.c:173: i2c_error=status;
      00034C 8F 30            [24] 1124 	mov	_i2c_error,r7
                                   1125 ;	main.c:174: i2c_done = 1;
      00034E 75 32 01         [24] 1126 	mov	_i2c_done,#0x01
                                   1127 ;	main.c:175: break;
                                   1128 ;	main.c:178: default:
      000351 80 08            [24] 1129 	sjmp	00116$
      000353                       1130 00115$:
                                   1131 ;	main.c:179: i2c_error=status;
      000353 8F 30            [24] 1132 	mov	_i2c_error,r7
                                   1133 ;	main.c:180: SSCON |= 0x10; /* Request stop bit */
      000355 43 93 10         [24] 1134 	orl	_SSCON,#0x10
                                   1135 ;	main.c:181: i2c_done = 1;
      000358 75 32 01         [24] 1136 	mov	_i2c_done,#0x01
                                   1137 ;	main.c:183: }
      00035B                       1138 00116$:
                                   1139 ;	main.c:185: SSCON &= ~0x08; /* Clear interrupt flag */
      00035B 53 93 F7         [24] 1140 	anl	_SSCON,#0xf7
                                   1141 ;	main.c:187: }
      00035E D0 D0            [24] 1142 	pop	psw
      000360 D0 01            [24] 1143 	pop	ar1
      000362 D0 07            [24] 1144 	pop	ar7
      000364 D0 E0            [24] 1145 	pop	acc
      000366 32               [24] 1146 	reti
                                   1147 ;	eliminated unneeded push/pop ar0
                                   1148 ;	eliminated unneeded push/pop dpl
                                   1149 ;	eliminated unneeded push/pop dph
                                   1150 ;	eliminated unneeded push/pop b
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
                                   1153 	.area CONST   (CODE)
      0007E0                       1154 ___str_0:
      0007E0 48 45 4C 4C 4F 20 57  1155 	.ascii "HELLO WORLD"
             4F 52 4C 44
      0007EB 00                    1156 	.db 0x00
                                   1157 	.area CSEG    (CODE)
                                   1158 	.area XINIT   (CODE)
                                   1159 	.area CABS    (ABS,CODE)
