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
                                     11 	.globl _timer0_isr
                                     12 	.globl _main
                                     13 	.globl _oled_show_message
                                     14 	.globl _uart_read_byte
                                     15 	.globl _uart_write_string
                                     16 	.globl _uart_write_buffer
                                     17 	.globl _uart_init
                                     18 	.globl _oled_string
                                     19 	.globl _oled_char
                                     20 	.globl _oled_set_position
                                     21 	.globl _oled_clear
                                     22 	.globl _oled_init
                                     23 	.globl _timer0_init
                                     24 	.globl _EP6INT
                                     25 	.globl _EP5INT
                                     26 	.globl _EP4INT
                                     27 	.globl _EP3INT
                                     28 	.globl _EP2INT
                                     29 	.globl _EP1INT
                                     30 	.globl _EP0INT
                                     31 	.globl _CF
                                     32 	.globl _CR
                                     33 	.globl _CCF4
                                     34 	.globl _CCF3
                                     35 	.globl _CCF2
                                     36 	.globl _CCF1
                                     37 	.globl _CCF0
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _P4_1
                                     55 	.globl _P4_0
                                     56 	.globl _PPCL
                                     57 	.globl _PT2L
                                     58 	.globl _PSL
                                     59 	.globl _PT1L
                                     60 	.globl _PX1L
                                     61 	.globl _PT0L
                                     62 	.globl _PX0L
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _EC
                                     73 	.globl _ET2
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _FE
                                     88 	.globl _SM0
                                     89 	.globl _SM1
                                     90 	.globl _SM2
                                     91 	.globl _REN
                                     92 	.globl _TB8
                                     93 	.globl _RB8
                                     94 	.globl _TI
                                     95 	.globl _RI
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _UEPINT
                                    121 	.globl _LEDCON
                                    122 	.globl _B
                                    123 	.globl _CCAP4H
                                    124 	.globl _CCAP4L
                                    125 	.globl _CCAP4
                                    126 	.globl _CCAP3H
                                    127 	.globl _CCAP3L
                                    128 	.globl _CCAP3
                                    129 	.globl _CCAP2H
                                    130 	.globl _CCAP2L
                                    131 	.globl _CCAP2
                                    132 	.globl _CCAP1H
                                    133 	.globl _CCAP1L
                                    134 	.globl _CCAP1
                                    135 	.globl _CCAP0H
                                    136 	.globl _CCAP0L
                                    137 	.globl _CCAP0
                                    138 	.globl _CH
                                    139 	.globl _CL
                                    140 	.globl _PCA
                                    141 	.globl _UBYCTHX
                                    142 	.globl _UBYCTLX
                                    143 	.globl _UBYCTX
                                    144 	.globl _ACC
                                    145 	.globl _CCAPM4
                                    146 	.globl _CCAPM3
                                    147 	.globl _CCAPM2
                                    148 	.globl _CCAPM1
                                    149 	.globl _CCAPM0
                                    150 	.globl _CMOD
                                    151 	.globl _CCON
                                    152 	.globl _UEPRST
                                    153 	.globl _UEPCONX
                                    154 	.globl _EECON
                                    155 	.globl _FCON
                                    156 	.globl _PSW
                                    157 	.globl _UEPDATX
                                    158 	.globl _UEPSTAX
                                    159 	.globl _TH2
                                    160 	.globl _TL2
                                    161 	.globl _TMR2
                                    162 	.globl _RCAP2H
                                    163 	.globl _RCAP2L
                                    164 	.globl _RCAP2
                                    165 	.globl _T2MOD
                                    166 	.globl _T2CON
                                    167 	.globl _UEPNUM
                                    168 	.globl _USBADDR
                                    169 	.globl _SPDAT
                                    170 	.globl _SPSTA
                                    171 	.globl _SPCON
                                    172 	.globl _UEPIEN
                                    173 	.globl _P4
                                    174 	.globl _USBIEN
                                    175 	.globl _USBINT
                                    176 	.globl _USBCON
                                    177 	.globl _UFNUMH
                                    178 	.globl _UFNUML
                                    179 	.globl _UFNUM
                                    180 	.globl _SADEN
                                    181 	.globl _IPL0
                                    182 	.globl _IPH0
                                    183 	.globl _IPH1
                                    184 	.globl _IPL1
                                    185 	.globl _IEN1
                                    186 	.globl _P3
                                    187 	.globl _CKCON1
                                    188 	.globl _SADDR
                                    189 	.globl _IEN0
                                    190 	.globl _IE
                                    191 	.globl _WDTPRG
                                    192 	.globl _WDTRST
                                    193 	.globl _PLLDIV
                                    194 	.globl _PLLCON
                                    195 	.globl _AUXR1
                                    196 	.globl _P2
                                    197 	.globl _KBF
                                    198 	.globl _KBE
                                    199 	.globl _KBLS
                                    200 	.globl _BDRCON
                                    201 	.globl _BRL
                                    202 	.globl _SBUF
                                    203 	.globl _SCON
                                    204 	.globl _SSADR
                                    205 	.globl _SSDAT
                                    206 	.globl _SSCS
                                    207 	.globl _SSCON
                                    208 	.globl _P1
                                    209 	.globl _CKCON0
                                    210 	.globl _AUXR
                                    211 	.globl _TH1
                                    212 	.globl _TL1
                                    213 	.globl _TMR1
                                    214 	.globl _TH0
                                    215 	.globl _TL0
                                    216 	.globl _TMR0
                                    217 	.globl _TMOD
                                    218 	.globl _TCON
                                    219 	.globl _PCON
                                    220 	.globl _DPH
                                    221 	.globl _DPL
                                    222 	.globl _SP
                                    223 	.globl _P0
                                    224 	.globl _oled_show_message_PARM_3
                                    225 	.globl _oled_show_message_PARM_2
                                    226 	.globl _time_ms
                                    227 	.globl _delay_time_ms
                                    228 	.globl _delay_us
                                    229 	.globl _delay_ms
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           000080   235 _P0	=	0x0080
                           000081   236 _SP	=	0x0081
                           000082   237 _DPL	=	0x0082
                           000083   238 _DPH	=	0x0083
                           000087   239 _PCON	=	0x0087
                           000088   240 _TCON	=	0x0088
                           000089   241 _TMOD	=	0x0089
                           008C8A   242 _TMR0	=	0x8c8a
                           00008A   243 _TL0	=	0x008a
                           00008C   244 _TH0	=	0x008c
                           008D8B   245 _TMR1	=	0x8d8b
                           00008B   246 _TL1	=	0x008b
                           00008D   247 _TH1	=	0x008d
                           00008E   248 _AUXR	=	0x008e
                           00008F   249 _CKCON0	=	0x008f
                           000090   250 _P1	=	0x0090
                           000093   251 _SSCON	=	0x0093
                           000094   252 _SSCS	=	0x0094
                           000095   253 _SSDAT	=	0x0095
                           000096   254 _SSADR	=	0x0096
                           000098   255 _SCON	=	0x0098
                           000099   256 _SBUF	=	0x0099
                           00009A   257 _BRL	=	0x009a
                           00009B   258 _BDRCON	=	0x009b
                           00009C   259 _KBLS	=	0x009c
                           00009D   260 _KBE	=	0x009d
                           00009E   261 _KBF	=	0x009e
                           0000A0   262 _P2	=	0x00a0
                           0000A2   263 _AUXR1	=	0x00a2
                           0000A3   264 _PLLCON	=	0x00a3
                           0000A4   265 _PLLDIV	=	0x00a4
                           0000A6   266 _WDTRST	=	0x00a6
                           0000A7   267 _WDTPRG	=	0x00a7
                           0000A8   268 _IE	=	0x00a8
                           0000A8   269 _IEN0	=	0x00a8
                           0000A9   270 _SADDR	=	0x00a9
                           0000AF   271 _CKCON1	=	0x00af
                           0000B0   272 _P3	=	0x00b0
                           0000B1   273 _IEN1	=	0x00b1
                           0000B2   274 _IPL1	=	0x00b2
                           0000B3   275 _IPH1	=	0x00b3
                           0000B7   276 _IPH0	=	0x00b7
                           0000B8   277 _IPL0	=	0x00b8
                           0000B9   278 _SADEN	=	0x00b9
                           00BBBA   279 _UFNUM	=	0xbbba
                           0000BA   280 _UFNUML	=	0x00ba
                           0000BB   281 _UFNUMH	=	0x00bb
                           0000BC   282 _USBCON	=	0x00bc
                           0000BD   283 _USBINT	=	0x00bd
                           0000BE   284 _USBIEN	=	0x00be
                           0000C0   285 _P4	=	0x00c0
                           0000C2   286 _UEPIEN	=	0x00c2
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C6   290 _USBADDR	=	0x00c6
                           0000C7   291 _UEPNUM	=	0x00c7
                           0000C8   292 _T2CON	=	0x00c8
                           0000C9   293 _T2MOD	=	0x00c9
                           00CBCA   294 _RCAP2	=	0xcbca
                           0000CA   295 _RCAP2L	=	0x00ca
                           0000CB   296 _RCAP2H	=	0x00cb
                           00CDCC   297 _TMR2	=	0xcdcc
                           0000CC   298 _TL2	=	0x00cc
                           0000CD   299 _TH2	=	0x00cd
                           0000CE   300 _UEPSTAX	=	0x00ce
                           0000CF   301 _UEPDATX	=	0x00cf
                           0000D0   302 _PSW	=	0x00d0
                           0000D1   303 _FCON	=	0x00d1
                           0000D2   304 _EECON	=	0x00d2
                           0000D4   305 _UEPCONX	=	0x00d4
                           0000D5   306 _UEPRST	=	0x00d5
                           0000D8   307 _CCON	=	0x00d8
                           0000D9   308 _CMOD	=	0x00d9
                           0000DA   309 _CCAPM0	=	0x00da
                           0000DB   310 _CCAPM1	=	0x00db
                           0000DC   311 _CCAPM2	=	0x00dc
                           0000DD   312 _CCAPM3	=	0x00dd
                           0000DE   313 _CCAPM4	=	0x00de
                           0000E0   314 _ACC	=	0x00e0
                           00E3E2   315 _UBYCTX	=	0xe3e2
                           0000E2   316 _UBYCTLX	=	0x00e2
                           0000E3   317 _UBYCTHX	=	0x00e3
                           00F9E9   318 _PCA	=	0xf9e9
                           0000E9   319 _CL	=	0x00e9
                           0000F9   320 _CH	=	0x00f9
                           00FAEA   321 _CCAP0	=	0xfaea
                           0000EA   322 _CCAP0L	=	0x00ea
                           0000FA   323 _CCAP0H	=	0x00fa
                           00FBEB   324 _CCAP1	=	0xfbeb
                           0000EB   325 _CCAP1L	=	0x00eb
                           0000FB   326 _CCAP1H	=	0x00fb
                           00FCEC   327 _CCAP2	=	0xfcec
                           0000EC   328 _CCAP2L	=	0x00ec
                           0000FC   329 _CCAP2H	=	0x00fc
                           00FDED   330 _CCAP3	=	0xfded
                           0000ED   331 _CCAP3L	=	0x00ed
                           0000FD   332 _CCAP3H	=	0x00fd
                           00FEEE   333 _CCAP4	=	0xfeee
                           0000EE   334 _CCAP4L	=	0x00ee
                           0000FE   335 _CCAP4H	=	0x00fe
                           0000F0   336 _B	=	0x00f0
                           0000F1   337 _LEDCON	=	0x00f1
                           0000F8   338 _UEPINT	=	0x00f8
                                    339 ;--------------------------------------------------------
                                    340 ; special function bits
                                    341 ;--------------------------------------------------------
                                    342 	.area RSEG    (ABS,DATA)
      000000                        343 	.org 0x0000
                           000080   344 _P0_0	=	0x0080
                           000081   345 _P0_1	=	0x0081
                           000082   346 _P0_2	=	0x0082
                           000083   347 _P0_3	=	0x0083
                           000084   348 _P0_4	=	0x0084
                           000085   349 _P0_5	=	0x0085
                           000086   350 _P0_6	=	0x0086
                           000087   351 _P0_7	=	0x0087
                           000088   352 _IT0	=	0x0088
                           000089   353 _IE0	=	0x0089
                           00008A   354 _IT1	=	0x008a
                           00008B   355 _IE1	=	0x008b
                           00008C   356 _TR0	=	0x008c
                           00008D   357 _TF0	=	0x008d
                           00008E   358 _TR1	=	0x008e
                           00008F   359 _TF1	=	0x008f
                           000090   360 _P1_0	=	0x0090
                           000091   361 _P1_1	=	0x0091
                           000092   362 _P1_2	=	0x0092
                           000093   363 _P1_3	=	0x0093
                           000094   364 _P1_4	=	0x0094
                           000095   365 _P1_5	=	0x0095
                           000096   366 _P1_6	=	0x0096
                           000097   367 _P1_7	=	0x0097
                           000098   368 _RI	=	0x0098
                           000099   369 _TI	=	0x0099
                           00009A   370 _RB8	=	0x009a
                           00009B   371 _TB8	=	0x009b
                           00009C   372 _REN	=	0x009c
                           00009D   373 _SM2	=	0x009d
                           00009E   374 _SM1	=	0x009e
                           00009F   375 _SM0	=	0x009f
                           00009F   376 _FE	=	0x009f
                           0000A0   377 _P2_0	=	0x00a0
                           0000A1   378 _P2_1	=	0x00a1
                           0000A2   379 _P2_2	=	0x00a2
                           0000A3   380 _P2_3	=	0x00a3
                           0000A4   381 _P2_4	=	0x00a4
                           0000A5   382 _P2_5	=	0x00a5
                           0000A6   383 _P2_6	=	0x00a6
                           0000A7   384 _P2_7	=	0x00a7
                           0000A8   385 _EX0	=	0x00a8
                           0000A9   386 _ET0	=	0x00a9
                           0000AA   387 _EX1	=	0x00aa
                           0000AB   388 _ET1	=	0x00ab
                           0000AC   389 _ES	=	0x00ac
                           0000AD   390 _ET2	=	0x00ad
                           0000AE   391 _EC	=	0x00ae
                           0000AF   392 _EA	=	0x00af
                           0000B0   393 _P3_0	=	0x00b0
                           0000B1   394 _P3_1	=	0x00b1
                           0000B2   395 _P3_2	=	0x00b2
                           0000B3   396 _P3_3	=	0x00b3
                           0000B4   397 _P3_4	=	0x00b4
                           0000B5   398 _P3_5	=	0x00b5
                           0000B6   399 _P3_6	=	0x00b6
                           0000B7   400 _P3_7	=	0x00b7
                           0000B8   401 _PX0L	=	0x00b8
                           0000B9   402 _PT0L	=	0x00b9
                           0000BA   403 _PX1L	=	0x00ba
                           0000BB   404 _PT1L	=	0x00bb
                           0000BC   405 _PSL	=	0x00bc
                           0000BD   406 _PT2L	=	0x00bd
                           0000BE   407 _PPCL	=	0x00be
                           0000C0   408 _P4_0	=	0x00c0
                           0000C1   409 _P4_1	=	0x00c1
                           0000C8   410 _CP_RL2	=	0x00c8
                           0000C9   411 _C_T2	=	0x00c9
                           0000CA   412 _TR2	=	0x00ca
                           0000CB   413 _EXEN2	=	0x00cb
                           0000CC   414 _TCLK	=	0x00cc
                           0000CD   415 _RCLK	=	0x00cd
                           0000CE   416 _EXF2	=	0x00ce
                           0000CF   417 _TF2	=	0x00cf
                           0000D0   418 _P	=	0x00d0
                           0000D1   419 _F1	=	0x00d1
                           0000D2   420 _OV	=	0x00d2
                           0000D3   421 _RS0	=	0x00d3
                           0000D4   422 _RS1	=	0x00d4
                           0000D5   423 _F0	=	0x00d5
                           0000D6   424 _AC	=	0x00d6
                           0000D7   425 _CY	=	0x00d7
                           0000D8   426 _CCF0	=	0x00d8
                           0000D9   427 _CCF1	=	0x00d9
                           0000DA   428 _CCF2	=	0x00da
                           0000DB   429 _CCF3	=	0x00db
                           0000DC   430 _CCF4	=	0x00dc
                           0000DE   431 _CR	=	0x00de
                           0000DF   432 _CF	=	0x00df
                           0000F8   433 _EP0INT	=	0x00f8
                           0000F9   434 _EP1INT	=	0x00f9
                           0000FA   435 _EP2INT	=	0x00fa
                           0000FB   436 _EP3INT	=	0x00fb
                           0000FC   437 _EP4INT	=	0x00fc
                           0000FD   438 _EP5INT	=	0x00fd
                           0000FE   439 _EP6INT	=	0x00fe
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable register banks
                                    442 ;--------------------------------------------------------
                                    443 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        444 	.ds 8
                                    445 ;--------------------------------------------------------
                                    446 ; internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area DSEG    (DATA)
      000008                        449 _delay_time_ms::
      000008                        450 	.ds 4
      00000C                        451 _time_ms::
      00000C                        452 	.ds 2
      00000E                        453 _oled_show_message_PARM_2:
      00000E                        454 	.ds 3
      000011                        455 _oled_show_message_PARM_3:
      000011                        456 	.ds 1
      000012                        457 _main_rx_data_10000_26:
      000012                        458 	.ds 1
      000013                        459 _main_rx_buffer_10000_26:
      000013                        460 	.ds 20
      000027                        461 _main_tx_buffer_10000_26:
      000027                        462 	.ds 13
      000034                        463 _timer0_isr_value_10000_46:
      000034                        464 	.ds 2
                                    465 ;--------------------------------------------------------
                                    466 ; overlayable items in internal ram
                                    467 ;--------------------------------------------------------
                                    468 ;--------------------------------------------------------
                                    469 ; Stack segment in internal ram
                                    470 ;--------------------------------------------------------
                                    471 	.area SSEG
      00005B                        472 __start__stack:
      00005B                        473 	.ds	1
                                    474 
                                    475 ;--------------------------------------------------------
                                    476 ; indirectly addressable internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area ISEG    (DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; absolute internal ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area IABS    (ABS,DATA)
                                    483 	.area IABS    (ABS,DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; bit data
                                    486 ;--------------------------------------------------------
                                    487 	.area BSEG    (BIT)
                                    488 ;--------------------------------------------------------
                                    489 ; paged external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area PSEG    (PAG,XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; uninitialized external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XSEG    (XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; absolute external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XABS    (ABS,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; initialized external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XISEG   (XDATA)
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT0 (CODE)
                                    506 	.area GSINIT1 (CODE)
                                    507 	.area GSINIT2 (CODE)
                                    508 	.area GSINIT3 (CODE)
                                    509 	.area GSINIT4 (CODE)
                                    510 	.area GSINIT5 (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area CSEG    (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; interrupt vector
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
      000000                        518 __interrupt_vect:
      000000 02 00 56         [24]  519 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  520 	reti
      000004                        521 	.ds	7
      00000B 02 02 A5         [24]  522 	ljmp	_timer0_isr
                                    523 ; restartable atomic support routines
      00000E                        524 	.ds	2
      000010                        525 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  526 	nop
      000011 00               [12]  527 	nop
      000012                        528 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  529 	movx	a, @r0
      000013 FB               [12]  530 	mov	r3, a
      000014 EA               [12]  531 	mov	a, r2
      000015 F2               [24]  532 	movx	@r0, a
      000016 80 2C            [24]  533 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  534 	nop
      000019 00               [12]  535 	nop
      00001A                        536 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  537 	movx	a, @dptr
      00001B FB               [12]  538 	mov	r3, a
      00001C EA               [12]  539 	mov	a, r2
      00001D F0               [24]  540 	movx	@dptr, a
      00001E 80 24            [24]  541 	sjmp	sdcc_atomic_exchange_exit
      000020                        542 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  543 	mov	a, @r0
      000021 B5 02 02         [24]  544 	cjne	a, ar2, .+#5
      000024 EB               [12]  545 	mov	a, r3
      000025 F6               [12]  546 	mov	@r0, a
      000026 22               [24]  547 	ret
      000027 00               [12]  548 	nop
      000028                        549 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  550 	movx	a, @r0
      000029 B5 02 02         [24]  551 	cjne	a, ar2, .+#5
      00002C EB               [12]  552 	mov	a, r3
      00002D F2               [24]  553 	movx	@r0, a
      00002E 22               [24]  554 	ret
      00002F 00               [12]  555 	nop
      000030                        556 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  557 	movx	a, @dptr
      000031 B5 02 02         [24]  558 	cjne	a, ar2, .+#5
      000034 EB               [12]  559 	mov	a, r3
      000035 F0               [24]  560 	movx	@dptr, a
      000036 22               [24]  561 	ret
      000037                        562 sdcc_atomic_exchange_rollback_end::
                                    563 
      000037                        564 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  565 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  566 	mov	r0, dpl
      00003C 20 F5 D3         [24]  567 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        568 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  569 	mov	a, r2
      000040 C6               [12]  570 	xch	a, @r0
      000041 F5 82            [12]  571 	mov	dpl, a
      000043 22               [24]  572 	ret
      000044                        573 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  574 	mov	dpl, r3
      000046 22               [24]  575 	ret
      000047                        576 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  577 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  578 	mov	r0, dpl
      00004C 20 F5 D9         [24]  579 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  580 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    581 ;--------------------------------------------------------
                                    582 ; global & static initialisations
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
                                    585 	.area GSINIT  (CODE)
                                    586 	.area GSFINAL (CODE)
                                    587 	.area GSINIT  (CODE)
                                    588 	.globl __sdcc_gsinit_startup
                                    589 	.globl __sdcc_program_startup
                                    590 	.globl __start__stack
                                    591 	.globl __mcs51_genXINIT
                                    592 	.globl __mcs51_genXRAMCLEAR
                                    593 	.globl __mcs51_genRAMCLEAR
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'timer0_isr'
                                    596 ;------------------------------------------------------------
                                    597 ;value         Allocated with name '_timer0_isr_value_10000_46'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:117: static int value = 0;
      0000AF E4               [12]  600 	clr	a
      0000B0 F5 34            [12]  601 	mov	_timer0_isr_value_10000_46,a
      0000B2 F5 35            [12]  602 	mov	(_timer0_isr_value_10000_46 + 1),a
                                    603 ;	main.c:8: volatile unsigned long int delay_time_ms = 0;
      0000B4 F5 08            [12]  604 	mov	_delay_time_ms,a
      0000B6 F5 09            [12]  605 	mov	(_delay_time_ms + 1),a
      0000B8 F5 0A            [12]  606 	mov	(_delay_time_ms + 2),a
      0000BA F5 0B            [12]  607 	mov	(_delay_time_ms + 3),a
                                    608 ;	main.c:9: volatile unsigned short int time_ms = 0;
      0000BC F5 0C            [12]  609 	mov	_time_ms,a
      0000BE F5 0D            [12]  610 	mov	(_time_ms + 1),a
                                    611 	.area GSFINAL (CODE)
      0000C6 02 00 51         [24]  612 	ljmp	__sdcc_program_startup
                                    613 ;--------------------------------------------------------
                                    614 ; Home
                                    615 ;--------------------------------------------------------
                                    616 	.area HOME    (CODE)
                                    617 	.area HOME    (CODE)
      000051                        618 __sdcc_program_startup:
      000051 12 01 50         [24]  619 	lcall	_main
      000054                        620 __sdcc_program_exit:
      000054 80 FE            [24]  621 	sjmp	.
                                    622 ;	return from main will return to caller
                                    623 ;--------------------------------------------------------
                                    624 ; code
                                    625 ;--------------------------------------------------------
                                    626 	.area CSEG    (CODE)
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'oled_show_message'
                                    629 ;------------------------------------------------------------
                                    630 ;data          Allocated with name '_oled_show_message_PARM_2'
                                    631 ;length        Allocated with name '_oled_show_message_PARM_3'
                                    632 ;label         Allocated to registers r5 r6 r7 
                                    633 ;i             Allocated to registers r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	main.c:13: void oled_show_message(char *label, unsigned char *data, unsigned char length)
                                    636 ;	-----------------------------------------
                                    637 ;	 function oled_show_message
                                    638 ;	-----------------------------------------
      0000C9                        639 _oled_show_message:
                           000007   640 	ar7 = 0x07
                           000006   641 	ar6 = 0x06
                           000005   642 	ar5 = 0x05
                           000004   643 	ar4 = 0x04
                           000003   644 	ar3 = 0x03
                           000002   645 	ar2 = 0x02
                           000001   646 	ar1 = 0x01
                           000000   647 	ar0 = 0x00
      0000C9 AD 82            [24]  648 	mov	r5, dpl
      0000CB AE 83            [24]  649 	mov	r6, dph
      0000CD AF F0            [24]  650 	mov	r7, b
                                    651 ;	main.c:17: oled_set_position(0, 0);
      0000CF 75 3E 00         [24]  652 	mov	_oled_set_position_PARM_2,#0x00
      0000D2 75 82 00         [24]  653 	mov	dpl, #0x00
      0000D5 C0 07            [24]  654 	push	ar7
      0000D7 C0 06            [24]  655 	push	ar6
      0000D9 C0 05            [24]  656 	push	ar5
      0000DB 12 04 BE         [24]  657 	lcall	_oled_set_position
                                    658 ;	main.c:18: oled_string("                    ");
      0000DE 90 0B C9         [24]  659 	mov	dptr,#___str_0
      0000E1 75 F0 80         [24]  660 	mov	b, #0x80
      0000E4 12 08 C9         [24]  661 	lcall	_oled_string
                                    662 ;	main.c:19: oled_set_position(0, 0);
      0000E7 75 3E 00         [24]  663 	mov	_oled_set_position_PARM_2,#0x00
      0000EA 75 82 00         [24]  664 	mov	dpl, #0x00
      0000ED 12 04 BE         [24]  665 	lcall	_oled_set_position
      0000F0 D0 05            [24]  666 	pop	ar5
      0000F2 D0 06            [24]  667 	pop	ar6
      0000F4 D0 07            [24]  668 	pop	ar7
                                    669 ;	main.c:20: oled_string(label);
      0000F6 8D 82            [24]  670 	mov	dpl, r5
      0000F8 8E 83            [24]  671 	mov	dph, r6
      0000FA 8F F0            [24]  672 	mov	b, r7
      0000FC 12 08 C9         [24]  673 	lcall	_oled_string
                                    674 ;	main.c:22: oled_set_position(3, 0);
      0000FF 75 3E 00         [24]  675 	mov	_oled_set_position_PARM_2,#0x00
      000102 75 82 03         [24]  676 	mov	dpl, #0x03
      000105 12 04 BE         [24]  677 	lcall	_oled_set_position
                                    678 ;	main.c:24: for (i = 0; i < DISPLAY_LENGTH; i++)
      000108 7F 00            [12]  679 	mov	r7,#0x00
      00010A                        680 00103$:
                                    681 ;	main.c:25: oled_char(' ');
      00010A 75 82 20         [24]  682 	mov	dpl, #0x20
      00010D C0 07            [24]  683 	push	ar7
      00010F 12 05 FC         [24]  684 	lcall	_oled_char
      000112 D0 07            [24]  685 	pop	ar7
                                    686 ;	main.c:24: for (i = 0; i < DISPLAY_LENGTH; i++)
      000114 0F               [12]  687 	inc	r7
      000115 BF 14 00         [24]  688 	cjne	r7,#0x14,00151$
      000118                        689 00151$:
      000118 40 F0            [24]  690 	jc	00103$
                                    691 ;	main.c:27: oled_set_position(3, 0);
      00011A 75 3E 00         [24]  692 	mov	_oled_set_position_PARM_2,#0x00
      00011D 75 82 03         [24]  693 	mov	dpl, #0x03
      000120 12 04 BE         [24]  694 	lcall	_oled_set_position
                                    695 ;	main.c:29: for (i = 0; i < length && i < DISPLAY_LENGTH; i++)
      000123 7F 00            [12]  696 	mov	r7,#0x00
      000125                        697 00107$:
      000125 C3               [12]  698 	clr	c
      000126 EF               [12]  699 	mov	a,r7
      000127 95 11            [12]  700 	subb	a,_oled_show_message_PARM_3
      000129 50 24            [24]  701 	jnc	00109$
      00012B BF 14 00         [24]  702 	cjne	r7,#0x14,00154$
      00012E                        703 00154$:
      00012E 50 1F            [24]  704 	jnc	00109$
                                    705 ;	main.c:30: oled_char(data[i]);
      000130 EF               [12]  706 	mov	a,r7
      000131 25 0E            [12]  707 	add	a, _oled_show_message_PARM_2
      000133 FC               [12]  708 	mov	r4,a
      000134 E4               [12]  709 	clr	a
      000135 35 0F            [12]  710 	addc	a, (_oled_show_message_PARM_2 + 1)
      000137 FD               [12]  711 	mov	r5,a
      000138 AE 10            [24]  712 	mov	r6,(_oled_show_message_PARM_2 + 2)
      00013A 8C 82            [24]  713 	mov	dpl,r4
      00013C 8D 83            [24]  714 	mov	dph,r5
      00013E 8E F0            [24]  715 	mov	b,r6
      000140 12 0B A9         [24]  716 	lcall	__gptrget
      000143 F5 82            [12]  717 	mov	dpl,a
      000145 C0 07            [24]  718 	push	ar7
      000147 12 05 FC         [24]  719 	lcall	_oled_char
      00014A D0 07            [24]  720 	pop	ar7
                                    721 ;	main.c:29: for (i = 0; i < length && i < DISPLAY_LENGTH; i++)
      00014C 0F               [12]  722 	inc	r7
      00014D 80 D6            [24]  723 	sjmp	00107$
      00014F                        724 00109$:
                                    725 ;	main.c:31: }
      00014F 22               [24]  726 	ret
                                    727 ;------------------------------------------------------------
                                    728 ;Allocation info for local variables in function 'main'
                                    729 ;------------------------------------------------------------
                                    730 ;rx_data       Allocated with name '_main_rx_data_10000_26'
                                    731 ;uart_status   Allocated to registers 
                                    732 ;rx_buffer     Allocated with name '_main_rx_buffer_10000_26'
                                    733 ;rx_length     Allocated to registers r7 
                                    734 ;tx_buffer     Allocated with name '_main_tx_buffer_10000_26'
                                    735 ;------------------------------------------------------------
                                    736 ;	main.c:33: void main(void)
                                    737 ;	-----------------------------------------
                                    738 ;	 function main
                                    739 ;	-----------------------------------------
      000150                        740 _main:
                                    741 ;	main.c:38: unsigned char rx_length = 0;
      000150 7F 00            [12]  742 	mov	r7,#0x00
                                    743 ;	main.c:39: unsigned char tx_buffer[] = "UART TX TEST";
      000152 75 27 55         [24]  744 	mov	_main_tx_buffer_10000_26,#0x55
      000155 75 28 41         [24]  745 	mov	(_main_tx_buffer_10000_26 + 0x0001),#0x41
      000158 75 29 52         [24]  746 	mov	(_main_tx_buffer_10000_26 + 0x0002),#0x52
      00015B 75 2A 54         [24]  747 	mov	(_main_tx_buffer_10000_26 + 0x0003),#0x54
      00015E 75 2B 20         [24]  748 	mov	(_main_tx_buffer_10000_26 + 0x0004),#0x20
      000161 75 2C 54         [24]  749 	mov	(_main_tx_buffer_10000_26 + 0x0005),#0x54
      000164 75 2D 58         [24]  750 	mov	(_main_tx_buffer_10000_26 + 0x0006),#0x58
      000167 75 2E 20         [24]  751 	mov	(_main_tx_buffer_10000_26 + 0x0007),#0x20
      00016A 75 2F 54         [24]  752 	mov	(_main_tx_buffer_10000_26 + 0x0008),#0x54
      00016D 75 30 45         [24]  753 	mov	(_main_tx_buffer_10000_26 + 0x0009),#0x45
      000170 75 31 53         [24]  754 	mov	(_main_tx_buffer_10000_26 + 0x000a),#0x53
      000173 75 32 54         [24]  755 	mov	(_main_tx_buffer_10000_26 + 0x000b),#0x54
      000176 8F 33            [24]  756 	mov	(_main_tx_buffer_10000_26 + 0x000c),r7
                                    757 ;	main.c:41: EA = 0;
                                    758 ;	assignBit
      000178 C2 AF            [12]  759 	clr	_EA
                                    760 ;	main.c:42: timer0_init();
      00017A C0 07            [24]  761 	push	ar7
      00017C 12 03 14         [24]  762 	lcall	_timer0_init
                                    763 ;	main.c:43: EA = 1;
                                    764 ;	assignBit
      00017F D2 AF            [12]  765 	setb	_EA
                                    766 ;	main.c:45: oled_init();
      000181 12 05 4D         [24]  767 	lcall	_oled_init
                                    768 ;	main.c:46: oled_clear();
      000184 12 04 FB         [24]  769 	lcall	_oled_clear
                                    770 ;	main.c:48: oled_set_position(0, 0);
      000187 75 3E 00         [24]  771 	mov	_oled_set_position_PARM_2,#0x00
      00018A 75 82 00         [24]  772 	mov	dpl, #0x00
      00018D 12 04 BE         [24]  773 	lcall	_oled_set_position
                                    774 ;	main.c:49: oled_string("UART RX TX TEST");
      000190 90 0B DE         [24]  775 	mov	dptr,#___str_2
      000193 75 F0 80         [24]  776 	mov	b, #0x80
      000196 12 08 C9         [24]  777 	lcall	_oled_string
                                    778 ;	main.c:51: uart_status = uart_init(9600);
      000199 90 25 80         [24]  779 	mov	dptr,#0x2580
      00019C E4               [12]  780 	clr	a
      00019D F5 F0            [12]  781 	mov	b,a
      00019F 12 09 43         [24]  782 	lcall	_uart_init
      0001A2 E5 82            [12]  783 	mov	a, dpl
      0001A4 D0 07            [24]  784 	pop	ar7
                                    785 ;	main.c:53: if (!uart_status)
                                    786 ;	main.c:55: oled_set_position(2, 0);
      0001A6 70 13            [24]  787 	jnz	00105$
      0001A8 F5 3E            [12]  788 	mov	_oled_set_position_PARM_2,a
      0001AA 75 82 02         [24]  789 	mov	dpl, #0x02
      0001AD 12 04 BE         [24]  790 	lcall	_oled_set_position
                                    791 ;	main.c:56: oled_string("UART INIT FAIL");
      0001B0 90 0B EE         [24]  792 	mov	dptr,#___str_3
      0001B3 75 F0 80         [24]  793 	mov	b, #0x80
      0001B6 12 08 C9         [24]  794 	lcall	_oled_string
                                    795 ;	main.c:58: while (1);
      0001B9                        796 00102$:
      0001B9 80 FE            [24]  797 	sjmp	00102$
      0001BB                        798 00105$:
                                    799 ;	main.c:61: uart_write_string("UART TX TEST\r\n");
      0001BB 90 0B FD         [24]  800 	mov	dptr,#___str_4
      0001BE 75 F0 80         [24]  801 	mov	b, #0x80
      0001C1 C0 07            [24]  802 	push	ar7
      0001C3 12 0A 4C         [24]  803 	lcall	_uart_write_string
                                    804 ;	main.c:63: oled_show_message("TX: SENT", tx_buffer, 12);
      0001C6 75 0E 27         [24]  805 	mov	_oled_show_message_PARM_2,#_main_tx_buffer_10000_26
      0001C9 75 0F 00         [24]  806 	mov	(_oled_show_message_PARM_2 + 1),#0x00
      0001CC 75 10 40         [24]  807 	mov	(_oled_show_message_PARM_2 + 2),#0x40
      0001CF 75 11 0C         [24]  808 	mov	_oled_show_message_PARM_3,#0x0c
      0001D2 90 0C 0C         [24]  809 	mov	dptr,#___str_5
      0001D5 75 F0 80         [24]  810 	mov	b, #0x80
      0001D8 12 00 C9         [24]  811 	lcall	_oled_show_message
                                    812 ;	main.c:64: delay_ms(1000);
      0001DB 90 03 E8         [24]  813 	mov	dptr,#0x03e8
      0001DE E4               [12]  814 	clr	a
      0001DF F5 F0            [12]  815 	mov	b,a
      0001E1 12 02 85         [24]  816 	lcall	_delay_ms
                                    817 ;	main.c:66: oled_set_position(0, 0);
      0001E4 75 3E 00         [24]  818 	mov	_oled_set_position_PARM_2,#0x00
      0001E7 75 82 00         [24]  819 	mov	dpl, #0x00
      0001EA 12 04 BE         [24]  820 	lcall	_oled_set_position
                                    821 ;	main.c:67: oled_string("                    ");
      0001ED 90 0B C9         [24]  822 	mov	dptr,#___str_0
      0001F0 75 F0 80         [24]  823 	mov	b, #0x80
      0001F3 12 08 C9         [24]  824 	lcall	_oled_string
                                    825 ;	main.c:68: oled_set_position(0, 0);
      0001F6 75 3E 00         [24]  826 	mov	_oled_set_position_PARM_2,#0x00
      0001F9 75 82 00         [24]  827 	mov	dpl, #0x00
      0001FC 12 04 BE         [24]  828 	lcall	_oled_set_position
                                    829 ;	main.c:69: oled_string("WAITING RX");
      0001FF 90 0C 15         [24]  830 	mov	dptr,#___str_6
      000202 75 F0 80         [24]  831 	mov	b, #0x80
      000205 12 08 C9         [24]  832 	lcall	_oled_string
      000208 D0 07            [24]  833 	pop	ar7
                                    834 ;	main.c:71: while (1)
      00020A                        835 00117$:
                                    836 ;	main.c:73: if (uart_read_byte(&rx_data))
      00020A 90 00 12         [24]  837 	mov	dptr,#_main_rx_data_10000_26
      00020D 75 F0 40         [24]  838 	mov	b, #0x40
      000210 C0 07            [24]  839 	push	ar7
      000212 12 0A 83         [24]  840 	lcall	_uart_read_byte
      000215 E5 82            [12]  841 	mov	a, dpl
      000217 D0 07            [24]  842 	pop	ar7
      000219 60 EF            [24]  843 	jz	00117$
                                    844 ;	main.c:75: if (rx_data == '\r' || rx_data == '\n')
      00021B 74 0D            [12]  845 	mov	a,#0x0d
      00021D B5 12 02         [24]  846 	cjne	a,_main_rx_data_10000_26,00172$
      000220 80 05            [24]  847 	sjmp	00110$
      000222                        848 00172$:
      000222 74 0A            [12]  849 	mov	a,#0x0a
      000224 B5 12 36         [24]  850 	cjne	a,_main_rx_data_10000_26,00111$
      000227                        851 00110$:
                                    852 ;	main.c:77: if (rx_length > 0)
      000227 EF               [12]  853 	mov	a,r7
      000228 60 E0            [24]  854 	jz	00117$
                                    855 ;	main.c:79: uart_write_buffer(rx_buffer, rx_length);
      00022A 8F 55            [24]  856 	mov	_uart_write_buffer_PARM_2,r7
      00022C 75 56 00         [24]  857 	mov	(_uart_write_buffer_PARM_2 + 1),#0x00
      00022F 90 00 13         [24]  858 	mov	dptr,#_main_rx_buffer_10000_26
      000232 75 F0 40         [24]  859 	mov	b, #0x40
      000235 C0 07            [24]  860 	push	ar7
      000237 12 0A 07         [24]  861 	lcall	_uart_write_buffer
                                    862 ;	main.c:80: uart_write_string("\r\n");
      00023A 90 0C 20         [24]  863 	mov	dptr,#___str_7
      00023D 75 F0 80         [24]  864 	mov	b, #0x80
      000240 12 0A 4C         [24]  865 	lcall	_uart_write_string
      000243 D0 07            [24]  866 	pop	ar7
                                    867 ;	main.c:82: oled_show_message("RX: RECEIVED", rx_buffer, rx_length);
      000245 75 0E 13         [24]  868 	mov	_oled_show_message_PARM_2,#_main_rx_buffer_10000_26
      000248 75 0F 00         [24]  869 	mov	(_oled_show_message_PARM_2 + 1),#0x00
      00024B 75 10 40         [24]  870 	mov	(_oled_show_message_PARM_2 + 2),#0x40
      00024E 8F 11            [24]  871 	mov	_oled_show_message_PARM_3,r7
      000250 90 0C 23         [24]  872 	mov	dptr,#___str_8
      000253 75 F0 80         [24]  873 	mov	b, #0x80
      000256 12 00 C9         [24]  874 	lcall	_oled_show_message
                                    875 ;	main.c:84: rx_length = 0;
      000259 7F 00            [12]  876 	mov	r7,#0x00
      00025B 80 AD            [24]  877 	sjmp	00117$
      00025D                        878 00111$:
                                    879 ;	main.c:89: if (rx_length < DISPLAY_LENGTH)
      00025D BF 14 00         [24]  880 	cjne	r7,#0x14,00176$
      000260                        881 00176$:
      000260 50 A8            [24]  882 	jnc	00117$
                                    883 ;	main.c:91: rx_buffer[rx_length++] = rx_data;
      000262 8F 06            [24]  884 	mov	ar6,r7
      000264 0F               [12]  885 	inc	r7
      000265 EE               [12]  886 	mov	a,r6
      000266 24 13            [12]  887 	add	a, #_main_rx_buffer_10000_26
      000268 F8               [12]  888 	mov	r0,a
      000269 A6 12            [24]  889 	mov	@r0,_main_rx_data_10000_26
                                    890 ;	main.c:96: }
      00026B 80 9D            [24]  891 	sjmp	00117$
                                    892 ;------------------------------------------------------------
                                    893 ;Allocation info for local variables in function 'delay_us'
                                    894 ;------------------------------------------------------------
                                    895 ;value         Allocated to registers r6 r7 
                                    896 ;i             Allocated to registers r5 
                                    897 ;------------------------------------------------------------
                                    898 ;	main.c:98: void delay_us(unsigned int value)
                                    899 ;	-----------------------------------------
                                    900 ;	 function delay_us
                                    901 ;	-----------------------------------------
      00026D                        902 _delay_us:
      00026D AE 82            [24]  903 	mov	r6, dpl
      00026F AF 83            [24]  904 	mov	r7, dph
                                    905 ;	main.c:102: while (value--)
      000271                        906 00102$:
      000271 8E 04            [24]  907 	mov	ar4,r6
      000273 8F 05            [24]  908 	mov	ar5,r7
      000275 1E               [12]  909 	dec	r6
      000276 BE FF 01         [24]  910 	cjne	r6,#0xff,00138$
      000279 1F               [12]  911 	dec	r7
      00027A                        912 00138$:
      00027A EC               [12]  913 	mov	a,r4
      00027B 4D               [12]  914 	orl	a,r5
      00027C 60 06            [24]  915 	jz	00108$
                                    916 ;	main.c:104: for (i = 0; i < 4; i++);
      00027E 7D 04            [12]  917 	mov	r5,#0x04
      000280                        918 00107$:
      000280 DD FE            [24]  919 	djnz	r5,00107$
      000282 80 ED            [24]  920 	sjmp	00102$
      000284                        921 00108$:
                                    922 ;	main.c:106: }
      000284 22               [24]  923 	ret
                                    924 ;------------------------------------------------------------
                                    925 ;Allocation info for local variables in function 'delay_ms'
                                    926 ;------------------------------------------------------------
                                    927 ;value         Allocated to registers r4 r5 r6 r7 
                                    928 ;------------------------------------------------------------
                                    929 ;	main.c:108: void delay_ms(unsigned long int value)
                                    930 ;	-----------------------------------------
                                    931 ;	 function delay_ms
                                    932 ;	-----------------------------------------
      000285                        933 _delay_ms:
      000285 AC 82            [24]  934 	mov	r4,dpl
      000287 AD 83            [24]  935 	mov	r5,dph
      000289 AE F0            [24]  936 	mov	r6,b
      00028B FF               [12]  937 	mov	r7,a
                                    938 ;	main.c:110: delay_time_ms = 0;
      00028C E4               [12]  939 	clr	a
      00028D F5 08            [12]  940 	mov	_delay_time_ms,a
      00028F F5 09            [12]  941 	mov	(_delay_time_ms + 1),a
      000291 F5 0A            [12]  942 	mov	(_delay_time_ms + 2),a
      000293 F5 0B            [12]  943 	mov	(_delay_time_ms + 3),a
                                    944 ;	main.c:112: while (delay_time_ms < value);
      000295                        945 00101$:
      000295 C3               [12]  946 	clr	c
      000296 E5 08            [12]  947 	mov	a,_delay_time_ms
      000298 9C               [12]  948 	subb	a,r4
      000299 E5 09            [12]  949 	mov	a,(_delay_time_ms + 1)
      00029B 9D               [12]  950 	subb	a,r5
      00029C E5 0A            [12]  951 	mov	a,(_delay_time_ms + 2)
      00029E 9E               [12]  952 	subb	a,r6
      00029F E5 0B            [12]  953 	mov	a,(_delay_time_ms + 3)
      0002A1 9F               [12]  954 	subb	a,r7
      0002A2 40 F1            [24]  955 	jc	00101$
                                    956 ;	main.c:113: }
      0002A4 22               [24]  957 	ret
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'timer0_isr'
                                    960 ;------------------------------------------------------------
                                    961 ;value         Allocated with name '_timer0_isr_value_10000_46'
                                    962 ;------------------------------------------------------------
                                    963 ;	main.c:115: void timer0_isr(void) __interrupt(1)
                                    964 ;	-----------------------------------------
                                    965 ;	 function timer0_isr
                                    966 ;	-----------------------------------------
      0002A5                        967 _timer0_isr:
      0002A5 C0 E0            [24]  968 	push	acc
      0002A7 C0 07            [24]  969 	push	ar7
      0002A9 C0 06            [24]  970 	push	ar6
      0002AB C0 05            [24]  971 	push	ar5
      0002AD C0 04            [24]  972 	push	ar4
      0002AF C0 D0            [24]  973 	push	psw
      0002B1 75 D0 00         [24]  974 	mov	psw,#0x00
                                    975 ;	main.c:119: TF0 = 0;
                                    976 ;	assignBit
      0002B4 C2 8D            [12]  977 	clr	_TF0
                                    978 ;	main.c:120: value++;
      0002B6 05 34            [12]  979 	inc	_timer0_isr_value_10000_46
      0002B8 E4               [12]  980 	clr	a
      0002B9 B5 34 02         [24]  981 	cjne	a,_timer0_isr_value_10000_46,00121$
      0002BC 05 35            [12]  982 	inc	(_timer0_isr_value_10000_46 + 1)
      0002BE                        983 00121$:
                                    984 ;	main.c:122: if (value >= 10)
      0002BE C3               [12]  985 	clr	c
      0002BF E5 34            [12]  986 	mov	a,_timer0_isr_value_10000_46
      0002C1 94 0A            [12]  987 	subb	a,#0x0a
      0002C3 E5 35            [12]  988 	mov	a,(_timer0_isr_value_10000_46 + 1)
      0002C5 64 80            [12]  989 	xrl	a,#0x80
      0002C7 94 80            [12]  990 	subb	a,#0x80
      0002C9 40 3C            [24]  991 	jc	00105$
                                    992 ;	main.c:124: value = 0;
      0002CB E4               [12]  993 	clr	a
      0002CC F5 34            [12]  994 	mov	_timer0_isr_value_10000_46,a
      0002CE F5 35            [12]  995 	mov	(_timer0_isr_value_10000_46 + 1),a
                                    996 ;	main.c:125: delay_time_ms++;
      0002D0 AC 08            [24]  997 	mov	r4,_delay_time_ms
      0002D2 AD 09            [24]  998 	mov	r5,(_delay_time_ms + 1)
      0002D4 AE 0A            [24]  999 	mov	r6,(_delay_time_ms + 2)
      0002D6 AF 0B            [24] 1000 	mov	r7,(_delay_time_ms + 3)
      0002D8 04               [12] 1001 	inc	a
      0002D9 2C               [12] 1002 	add	a, r4
      0002DA F5 08            [12] 1003 	mov	_delay_time_ms,a
      0002DC E4               [12] 1004 	clr	a
      0002DD 3D               [12] 1005 	addc	a, r5
      0002DE F5 09            [12] 1006 	mov	(_delay_time_ms + 1),a
      0002E0 E4               [12] 1007 	clr	a
      0002E1 3E               [12] 1008 	addc	a, r6
      0002E2 F5 0A            [12] 1009 	mov	(_delay_time_ms + 2),a
      0002E4 E4               [12] 1010 	clr	a
      0002E5 3F               [12] 1011 	addc	a, r7
      0002E6 F5 0B            [12] 1012 	mov	(_delay_time_ms + 3),a
                                   1013 ;	main.c:126: time_ms++;
      0002E8 AE 0C            [24] 1014 	mov	r6,_time_ms
      0002EA AF 0D            [24] 1015 	mov	r7,(_time_ms + 1)
      0002EC 74 01            [12] 1016 	mov	a,#0x01
      0002EE 2E               [12] 1017 	add	a, r6
      0002EF F5 0C            [12] 1018 	mov	_time_ms,a
      0002F1 E4               [12] 1019 	clr	a
      0002F2 3F               [12] 1020 	addc	a, r7
      0002F3 F5 0D            [12] 1021 	mov	(_time_ms + 1),a
                                   1022 ;	main.c:128: if (time_ms >= 1000)
      0002F5 AE 0C            [24] 1023 	mov	r6,_time_ms
      0002F7 AF 0D            [24] 1024 	mov	r7,(_time_ms + 1)
      0002F9 C3               [12] 1025 	clr	c
      0002FA EE               [12] 1026 	mov	a,r6
      0002FB 94 E8            [12] 1027 	subb	a,#0xe8
      0002FD EF               [12] 1028 	mov	a,r7
      0002FE 94 03            [12] 1029 	subb	a,#0x03
      000300 40 05            [24] 1030 	jc	00105$
                                   1031 ;	main.c:129: time_ms = 0;
      000302 E4               [12] 1032 	clr	a
      000303 F5 0C            [12] 1033 	mov	_time_ms,a
      000305 F5 0D            [12] 1034 	mov	(_time_ms + 1),a
      000307                       1035 00105$:
                                   1036 ;	main.c:131: }
      000307 D0 D0            [24] 1037 	pop	psw
      000309 D0 04            [24] 1038 	pop	ar4
      00030B D0 05            [24] 1039 	pop	ar5
      00030D D0 06            [24] 1040 	pop	ar6
      00030F D0 07            [24] 1041 	pop	ar7
      000311 D0 E0            [24] 1042 	pop	acc
      000313 32               [24] 1043 	reti
                                   1044 ;	eliminated unneeded push/pop dpl
                                   1045 ;	eliminated unneeded push/pop dph
                                   1046 ;	eliminated unneeded push/pop b
                                   1047 	.area CSEG    (CODE)
                                   1048 	.area CONST   (CODE)
                                   1049 	.area CONST   (CODE)
      000BC9                       1050 ___str_0:
      000BC9 20 20 20 20 20 20 20  1051 	.ascii "                    "
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      000BDD 00                    1052 	.db 0x00
                                   1053 	.area CSEG    (CODE)
                                   1054 	.area CONST   (CODE)
      000BDE                       1055 ___str_2:
      000BDE 55 41 52 54 20 52 58  1056 	.ascii "UART RX TX TEST"
             20 54 58 20 54 45 53
             54
      000BED 00                    1057 	.db 0x00
                                   1058 	.area CSEG    (CODE)
                                   1059 	.area CONST   (CODE)
      000BEE                       1060 ___str_3:
      000BEE 55 41 52 54 20 49 4E  1061 	.ascii "UART INIT FAIL"
             49 54 20 46 41 49 4C
      000BFC 00                    1062 	.db 0x00
                                   1063 	.area CSEG    (CODE)
                                   1064 	.area CONST   (CODE)
      000BFD                       1065 ___str_4:
      000BFD 55 41 52 54 20 54 58  1066 	.ascii "UART TX TEST"
             20 54 45 53 54
      000C09 0D                    1067 	.db 0x0d
      000C0A 0A                    1068 	.db 0x0a
      000C0B 00                    1069 	.db 0x00
                                   1070 	.area CSEG    (CODE)
                                   1071 	.area CONST   (CODE)
      000C0C                       1072 ___str_5:
      000C0C 54 58 3A 20 53 45 4E  1073 	.ascii "TX: SENT"
             54
      000C14 00                    1074 	.db 0x00
                                   1075 	.area CSEG    (CODE)
                                   1076 	.area CONST   (CODE)
      000C15                       1077 ___str_6:
      000C15 57 41 49 54 49 4E 47  1078 	.ascii "WAITING RX"
             20 52 58
      000C1F 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
      000C20                       1082 ___str_7:
      000C20 0D                    1083 	.db 0x0d
      000C21 0A                    1084 	.db 0x0a
      000C22 00                    1085 	.db 0x00
                                   1086 	.area CSEG    (CODE)
                                   1087 	.area CONST   (CODE)
      000C23                       1088 ___str_8:
      000C23 52 58 3A 20 52 45 43  1089 	.ascii "RX: RECEIVED"
             45 49 56 45 44
      000C2F 00                    1090 	.db 0x00
                                   1091 	.area CSEG    (CODE)
                                   1092 	.area XINIT   (CODE)
                                   1093 	.area CABS    (ABS,CODE)
