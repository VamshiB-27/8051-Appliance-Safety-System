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
                                     11 	.globl _main
                                     12 	.globl _timer0_isr
                                     13 	.globl _uart_read_byte
                                     14 	.globl _uart_write_string
                                     15 	.globl _uart_init
                                     16 	.globl _oled_string
                                     17 	.globl _oled_char
                                     18 	.globl _oled_set_position
                                     19 	.globl _oled_clear
                                     20 	.globl _oled_init
                                     21 	.globl _timer0_init
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
                                    222 	.globl _delay_time_ms
                                    223 	.globl _delay_us
                                    224 	.globl _delay_ms
                                    225 ;--------------------------------------------------------
                                    226 ; special function registers
                                    227 ;--------------------------------------------------------
                                    228 	.area RSEG    (ABS,DATA)
      000000                        229 	.org 0x0000
                           000080   230 _P0	=	0x0080
                           000081   231 _SP	=	0x0081
                           000082   232 _DPL	=	0x0082
                           000083   233 _DPH	=	0x0083
                           000087   234 _PCON	=	0x0087
                           000088   235 _TCON	=	0x0088
                           000089   236 _TMOD	=	0x0089
                           008C8A   237 _TMR0	=	0x8c8a
                           00008A   238 _TL0	=	0x008a
                           00008C   239 _TH0	=	0x008c
                           008D8B   240 _TMR1	=	0x8d8b
                           00008B   241 _TL1	=	0x008b
                           00008D   242 _TH1	=	0x008d
                           00008E   243 _AUXR	=	0x008e
                           00008F   244 _CKCON0	=	0x008f
                           000090   245 _P1	=	0x0090
                           000093   246 _SSCON	=	0x0093
                           000094   247 _SSCS	=	0x0094
                           000095   248 _SSDAT	=	0x0095
                           000096   249 _SSADR	=	0x0096
                           000098   250 _SCON	=	0x0098
                           000099   251 _SBUF	=	0x0099
                           00009A   252 _BRL	=	0x009a
                           00009B   253 _BDRCON	=	0x009b
                           00009C   254 _KBLS	=	0x009c
                           00009D   255 _KBE	=	0x009d
                           00009E   256 _KBF	=	0x009e
                           0000A0   257 _P2	=	0x00a0
                           0000A2   258 _AUXR1	=	0x00a2
                           0000A3   259 _PLLCON	=	0x00a3
                           0000A4   260 _PLLDIV	=	0x00a4
                           0000A6   261 _WDTRST	=	0x00a6
                           0000A7   262 _WDTPRG	=	0x00a7
                           0000A8   263 _IE	=	0x00a8
                           0000A8   264 _IEN0	=	0x00a8
                           0000A9   265 _SADDR	=	0x00a9
                           0000AF   266 _CKCON1	=	0x00af
                           0000B0   267 _P3	=	0x00b0
                           0000B1   268 _IEN1	=	0x00b1
                           0000B2   269 _IPL1	=	0x00b2
                           0000B3   270 _IPH1	=	0x00b3
                           0000B7   271 _IPH0	=	0x00b7
                           0000B8   272 _IPL0	=	0x00b8
                           0000B9   273 _SADEN	=	0x00b9
                           00BBBA   274 _UFNUM	=	0xbbba
                           0000BA   275 _UFNUML	=	0x00ba
                           0000BB   276 _UFNUMH	=	0x00bb
                           0000BC   277 _USBCON	=	0x00bc
                           0000BD   278 _USBINT	=	0x00bd
                           0000BE   279 _USBIEN	=	0x00be
                           0000C0   280 _P4	=	0x00c0
                           0000C2   281 _UEPIEN	=	0x00c2
                           0000C3   282 _SPCON	=	0x00c3
                           0000C4   283 _SPSTA	=	0x00c4
                           0000C5   284 _SPDAT	=	0x00c5
                           0000C6   285 _USBADDR	=	0x00c6
                           0000C7   286 _UEPNUM	=	0x00c7
                           0000C8   287 _T2CON	=	0x00c8
                           0000C9   288 _T2MOD	=	0x00c9
                           00CBCA   289 _RCAP2	=	0xcbca
                           0000CA   290 _RCAP2L	=	0x00ca
                           0000CB   291 _RCAP2H	=	0x00cb
                           00CDCC   292 _TMR2	=	0xcdcc
                           0000CC   293 _TL2	=	0x00cc
                           0000CD   294 _TH2	=	0x00cd
                           0000CE   295 _UEPSTAX	=	0x00ce
                           0000CF   296 _UEPDATX	=	0x00cf
                           0000D0   297 _PSW	=	0x00d0
                           0000D1   298 _FCON	=	0x00d1
                           0000D2   299 _EECON	=	0x00d2
                           0000D4   300 _UEPCONX	=	0x00d4
                           0000D5   301 _UEPRST	=	0x00d5
                           0000D8   302 _CCON	=	0x00d8
                           0000D9   303 _CMOD	=	0x00d9
                           0000DA   304 _CCAPM0	=	0x00da
                           0000DB   305 _CCAPM1	=	0x00db
                           0000DC   306 _CCAPM2	=	0x00dc
                           0000DD   307 _CCAPM3	=	0x00dd
                           0000DE   308 _CCAPM4	=	0x00de
                           0000E0   309 _ACC	=	0x00e0
                           00E3E2   310 _UBYCTX	=	0xe3e2
                           0000E2   311 _UBYCTLX	=	0x00e2
                           0000E3   312 _UBYCTHX	=	0x00e3
                           00F9E9   313 _PCA	=	0xf9e9
                           0000E9   314 _CL	=	0x00e9
                           0000F9   315 _CH	=	0x00f9
                           00FAEA   316 _CCAP0	=	0xfaea
                           0000EA   317 _CCAP0L	=	0x00ea
                           0000FA   318 _CCAP0H	=	0x00fa
                           00FBEB   319 _CCAP1	=	0xfbeb
                           0000EB   320 _CCAP1L	=	0x00eb
                           0000FB   321 _CCAP1H	=	0x00fb
                           00FCEC   322 _CCAP2	=	0xfcec
                           0000EC   323 _CCAP2L	=	0x00ec
                           0000FC   324 _CCAP2H	=	0x00fc
                           00FDED   325 _CCAP3	=	0xfded
                           0000ED   326 _CCAP3L	=	0x00ed
                           0000FD   327 _CCAP3H	=	0x00fd
                           00FEEE   328 _CCAP4	=	0xfeee
                           0000EE   329 _CCAP4L	=	0x00ee
                           0000FE   330 _CCAP4H	=	0x00fe
                           0000F0   331 _B	=	0x00f0
                           0000F1   332 _LEDCON	=	0x00f1
                           0000F8   333 _UEPINT	=	0x00f8
                                    334 ;--------------------------------------------------------
                                    335 ; special function bits
                                    336 ;--------------------------------------------------------
                                    337 	.area RSEG    (ABS,DATA)
      000000                        338 	.org 0x0000
                           000080   339 _P0_0	=	0x0080
                           000081   340 _P0_1	=	0x0081
                           000082   341 _P0_2	=	0x0082
                           000083   342 _P0_3	=	0x0083
                           000084   343 _P0_4	=	0x0084
                           000085   344 _P0_5	=	0x0085
                           000086   345 _P0_6	=	0x0086
                           000087   346 _P0_7	=	0x0087
                           000088   347 _IT0	=	0x0088
                           000089   348 _IE0	=	0x0089
                           00008A   349 _IT1	=	0x008a
                           00008B   350 _IE1	=	0x008b
                           00008C   351 _TR0	=	0x008c
                           00008D   352 _TF0	=	0x008d
                           00008E   353 _TR1	=	0x008e
                           00008F   354 _TF1	=	0x008f
                           000090   355 _P1_0	=	0x0090
                           000091   356 _P1_1	=	0x0091
                           000092   357 _P1_2	=	0x0092
                           000093   358 _P1_3	=	0x0093
                           000094   359 _P1_4	=	0x0094
                           000095   360 _P1_5	=	0x0095
                           000096   361 _P1_6	=	0x0096
                           000097   362 _P1_7	=	0x0097
                           000098   363 _RI	=	0x0098
                           000099   364 _TI	=	0x0099
                           00009A   365 _RB8	=	0x009a
                           00009B   366 _TB8	=	0x009b
                           00009C   367 _REN	=	0x009c
                           00009D   368 _SM2	=	0x009d
                           00009E   369 _SM1	=	0x009e
                           00009F   370 _SM0	=	0x009f
                           00009F   371 _FE	=	0x009f
                           0000A0   372 _P2_0	=	0x00a0
                           0000A1   373 _P2_1	=	0x00a1
                           0000A2   374 _P2_2	=	0x00a2
                           0000A3   375 _P2_3	=	0x00a3
                           0000A4   376 _P2_4	=	0x00a4
                           0000A5   377 _P2_5	=	0x00a5
                           0000A6   378 _P2_6	=	0x00a6
                           0000A7   379 _P2_7	=	0x00a7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AD   385 _ET2	=	0x00ad
                           0000AE   386 _EC	=	0x00ae
                           0000AF   387 _EA	=	0x00af
                           0000B0   388 _P3_0	=	0x00b0
                           0000B1   389 _P3_1	=	0x00b1
                           0000B2   390 _P3_2	=	0x00b2
                           0000B3   391 _P3_3	=	0x00b3
                           0000B4   392 _P3_4	=	0x00b4
                           0000B5   393 _P3_5	=	0x00b5
                           0000B6   394 _P3_6	=	0x00b6
                           0000B7   395 _P3_7	=	0x00b7
                           0000B8   396 _PX0L	=	0x00b8
                           0000B9   397 _PT0L	=	0x00b9
                           0000BA   398 _PX1L	=	0x00ba
                           0000BB   399 _PT1L	=	0x00bb
                           0000BC   400 _PSL	=	0x00bc
                           0000BD   401 _PT2L	=	0x00bd
                           0000BE   402 _PPCL	=	0x00be
                           0000C0   403 _P4_0	=	0x00c0
                           0000C1   404 _P4_1	=	0x00c1
                           0000C8   405 _CP_RL2	=	0x00c8
                           0000C9   406 _C_T2	=	0x00c9
                           0000CA   407 _TR2	=	0x00ca
                           0000CB   408 _EXEN2	=	0x00cb
                           0000CC   409 _TCLK	=	0x00cc
                           0000CD   410 _RCLK	=	0x00cd
                           0000CE   411 _EXF2	=	0x00ce
                           0000CF   412 _TF2	=	0x00cf
                           0000D0   413 _P	=	0x00d0
                           0000D1   414 _F1	=	0x00d1
                           0000D2   415 _OV	=	0x00d2
                           0000D3   416 _RS0	=	0x00d3
                           0000D4   417 _RS1	=	0x00d4
                           0000D5   418 _F0	=	0x00d5
                           0000D6   419 _AC	=	0x00d6
                           0000D7   420 _CY	=	0x00d7
                           0000D8   421 _CCF0	=	0x00d8
                           0000D9   422 _CCF1	=	0x00d9
                           0000DA   423 _CCF2	=	0x00da
                           0000DB   424 _CCF3	=	0x00db
                           0000DC   425 _CCF4	=	0x00dc
                           0000DE   426 _CR	=	0x00de
                           0000DF   427 _CF	=	0x00df
                           0000F8   428 _EP0INT	=	0x00f8
                           0000F9   429 _EP1INT	=	0x00f9
                           0000FA   430 _EP2INT	=	0x00fa
                           0000FB   431 _EP3INT	=	0x00fb
                           0000FC   432 _EP4INT	=	0x00fc
                           0000FD   433 _EP5INT	=	0x00fd
                           0000FE   434 _EP6INT	=	0x00fe
                                    435 ;--------------------------------------------------------
                                    436 ; overlayable register banks
                                    437 ;--------------------------------------------------------
                                    438 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        439 	.ds 8
                                    440 ;--------------------------------------------------------
                                    441 ; internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area DSEG    (DATA)
      000008                        444 _delay_time_ms::
      000008                        445 	.ds 4
      00000C                        446 _rx_buffer:
      00000C                        447 	.ds 32
      00002C                        448 _rx_length:
      00002C                        449 	.ds 1
      00002D                        450 _relay_state:
      00002D                        451 	.ds 1
      00002E                        452 _buzzer_state:
      00002E                        453 	.ds 1
      00002F                        454 _fault_active:
      00002F                        455 	.ds 1
      000030                        456 _parse_index:
      000030                        457 	.ds 1
      000031                        458 _button_last_sample:
      000031                        459 	.ds 1
      000032                        460 _button_stable_state:
      000032                        461 	.ds 1
      000033                        462 _button_last_change_time:
      000033                        463 	.ds 4
      000037                        464 _timer0_isr_count_10000_28:
      000037                        465 	.ds 1
      000038                        466 _oled_clear_region_PARM_2:
      000038                        467 	.ds 1
      000039                        468 _oled_clear_region_PARM_3:
      000039                        469 	.ds 1
      00003A                        470 _uart_receive_process_data_10000_132:
      00003A                        471 	.ds 1
                                    472 ;--------------------------------------------------------
                                    473 ; overlayable items in internal ram
                                    474 ;--------------------------------------------------------
                                    475 	.area	OSEG    (OVR,DATA)
                                    476 	.area	OSEG    (OVR,DATA)
                                    477 	.area	OSEG    (OVR,DATA)
                                    478 	.area	OSEG    (OVR,DATA)
                                    479 	.area	OSEG    (OVR,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; Stack segment in internal ram
                                    482 ;--------------------------------------------------------
                                    483 	.area SSEG
      000060                        484 __start__stack:
      000060                        485 	.ds	1
                                    486 
                                    487 ;--------------------------------------------------------
                                    488 ; indirectly addressable internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area ISEG    (DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area IABS    (ABS,DATA)
                                    495 	.area IABS    (ABS,DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; bit data
                                    498 ;--------------------------------------------------------
                                    499 	.area BSEG    (BIT)
                                    500 ;--------------------------------------------------------
                                    501 ; paged external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area PSEG    (PAG,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; uninitialized external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XSEG    (XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; initialized external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT0 (CODE)
                                    518 	.area GSINIT1 (CODE)
                                    519 	.area GSINIT2 (CODE)
                                    520 	.area GSINIT3 (CODE)
                                    521 	.area GSINIT4 (CODE)
                                    522 	.area GSINIT5 (CODE)
                                    523 	.area GSINIT  (CODE)
                                    524 	.area GSFINAL (CODE)
                                    525 	.area CSEG    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; interrupt vector
                                    528 ;--------------------------------------------------------
                                    529 	.area HOME    (CODE)
      000000                        530 __interrupt_vect:
      000000 02 00 56         [24]  531 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  532 	reti
      000004                        533 	.ds	7
      00000B 02 01 14         [24]  534 	ljmp	_timer0_isr
                                    535 ; restartable atomic support routines
      00000E                        536 	.ds	2
      000010                        537 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  538 	nop
      000011 00               [12]  539 	nop
      000012                        540 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  541 	movx	a, @r0
      000013 FB               [12]  542 	mov	r3, a
      000014 EA               [12]  543 	mov	a, r2
      000015 F2               [24]  544 	movx	@r0, a
      000016 80 2C            [24]  545 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  546 	nop
      000019 00               [12]  547 	nop
      00001A                        548 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  549 	movx	a, @dptr
      00001B FB               [12]  550 	mov	r3, a
      00001C EA               [12]  551 	mov	a, r2
      00001D F0               [24]  552 	movx	@dptr, a
      00001E 80 24            [24]  553 	sjmp	sdcc_atomic_exchange_exit
      000020                        554 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  555 	mov	a, @r0
      000021 B5 02 02         [24]  556 	cjne	a, ar2, .+#5
      000024 EB               [12]  557 	mov	a, r3
      000025 F6               [12]  558 	mov	@r0, a
      000026 22               [24]  559 	ret
      000027 00               [12]  560 	nop
      000028                        561 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  562 	movx	a, @r0
      000029 B5 02 02         [24]  563 	cjne	a, ar2, .+#5
      00002C EB               [12]  564 	mov	a, r3
      00002D F2               [24]  565 	movx	@r0, a
      00002E 22               [24]  566 	ret
      00002F 00               [12]  567 	nop
      000030                        568 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  569 	movx	a, @dptr
      000031 B5 02 02         [24]  570 	cjne	a, ar2, .+#5
      000034 EB               [12]  571 	mov	a, r3
      000035 F0               [24]  572 	movx	@dptr, a
      000036 22               [24]  573 	ret
      000037                        574 sdcc_atomic_exchange_rollback_end::
                                    575 
      000037                        576 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  577 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  578 	mov	r0, dpl
      00003C 20 F5 D3         [24]  579 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        580 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  581 	mov	a, r2
      000040 C6               [12]  582 	xch	a, @r0
      000041 F5 82            [12]  583 	mov	dpl, a
      000043 22               [24]  584 	ret
      000044                        585 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  586 	mov	dpl, r3
      000046 22               [24]  587 	ret
      000047                        588 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  589 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  590 	mov	r0, dpl
      00004C 20 F5 D9         [24]  591 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  592 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    593 ;--------------------------------------------------------
                                    594 ; global & static initialisations
                                    595 ;--------------------------------------------------------
                                    596 	.area HOME    (CODE)
                                    597 	.area GSINIT  (CODE)
                                    598 	.area GSFINAL (CODE)
                                    599 	.area GSINIT  (CODE)
                                    600 	.globl __sdcc_gsinit_startup
                                    601 	.globl __sdcc_program_startup
                                    602 	.globl __start__stack
                                    603 	.globl __mcs51_genXINIT
                                    604 	.globl __mcs51_genXRAMCLEAR
                                    605 	.globl __mcs51_genRAMCLEAR
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'timer0_isr'
                                    608 ;------------------------------------------------------------
                                    609 ;count         Allocated with name '_timer0_isr_count_10000_28'
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:48: static unsigned char count = 0;
      0000AF 75 37 00         [24]  612 	mov	_timer0_isr_count_10000_28,#0x00
                                    613 ;	main.c:16: volatile unsigned long int delay_time_ms = 0;
      0000B2 E4               [12]  614 	clr	a
      0000B3 F5 08            [12]  615 	mov	_delay_time_ms,a
      0000B5 F5 09            [12]  616 	mov	(_delay_time_ms + 1),a
      0000B7 F5 0A            [12]  617 	mov	(_delay_time_ms + 2),a
      0000B9 F5 0B            [12]  618 	mov	(_delay_time_ms + 3),a
                                    619 ;	main.c:19: static unsigned char rx_length = 0;
      0000BB F5 2C            [12]  620 	mov	_rx_length,a
                                    621 ;	main.c:20: static unsigned char relay_state = 0;
      0000BD F5 2D            [12]  622 	mov	_relay_state,a
                                    623 ;	main.c:21: static unsigned char buzzer_state = 0;
      0000BF F5 2E            [12]  624 	mov	_buzzer_state,a
                                    625 ;	main.c:22: static unsigned char fault_active = 0;
      0000C1 F5 2F            [12]  626 	mov	_fault_active,a
                                    627 ;	main.c:23: static unsigned char parse_index = 0;
      0000C3 F5 30            [12]  628 	mov	_parse_index,a
                                    629 ;	main.c:25: static unsigned char button_last_sample = 1;
      0000C5 75 31 01         [24]  630 	mov	_button_last_sample,#0x01
                                    631 ;	main.c:26: static unsigned char button_stable_state = 1;
      0000C8 75 32 01         [24]  632 	mov	_button_stable_state,#0x01
                                    633 ;	main.c:27: static unsigned long int button_last_change_time = 0;
      0000CB F5 33            [12]  634 	mov	_button_last_change_time,a
      0000CD F5 34            [12]  635 	mov	(_button_last_change_time + 1),a
      0000CF F5 35            [12]  636 	mov	(_button_last_change_time + 2),a
      0000D1 F5 36            [12]  637 	mov	(_button_last_change_time + 3),a
                                    638 	.area GSFINAL (CODE)
      0000D9 02 00 51         [24]  639 	ljmp	__sdcc_program_startup
                                    640 ;--------------------------------------------------------
                                    641 ; Home
                                    642 ;--------------------------------------------------------
                                    643 	.area HOME    (CODE)
                                    644 	.area HOME    (CODE)
      000051                        645 __sdcc_program_startup:
      000051 12 0B 83         [24]  646 	lcall	_main
      000054                        647 __sdcc_program_exit:
      000054 80 FE            [24]  648 	sjmp	.
                                    649 ;	return from main will return to caller
                                    650 ;--------------------------------------------------------
                                    651 ; code
                                    652 ;--------------------------------------------------------
                                    653 	.area CSEG    (CODE)
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'delay_us'
                                    656 ;------------------------------------------------------------
                                    657 ;value         Allocated to registers r6 r7 
                                    658 ;i             Allocated to registers r5 
                                    659 ;------------------------------------------------------------
                                    660 ;	main.c:29: void delay_us(unsigned int value)
                                    661 ;	-----------------------------------------
                                    662 ;	 function delay_us
                                    663 ;	-----------------------------------------
      0000DC                        664 _delay_us:
                           000007   665 	ar7 = 0x07
                           000006   666 	ar6 = 0x06
                           000005   667 	ar5 = 0x05
                           000004   668 	ar4 = 0x04
                           000003   669 	ar3 = 0x03
                           000002   670 	ar2 = 0x02
                           000001   671 	ar1 = 0x01
                           000000   672 	ar0 = 0x00
      0000DC AE 82            [24]  673 	mov	r6, dpl
      0000DE AF 83            [24]  674 	mov	r7, dph
                                    675 ;	main.c:33: while (value--)
      0000E0                        676 00102$:
      0000E0 8E 04            [24]  677 	mov	ar4,r6
      0000E2 8F 05            [24]  678 	mov	ar5,r7
      0000E4 1E               [12]  679 	dec	r6
      0000E5 BE FF 01         [24]  680 	cjne	r6,#0xff,00138$
      0000E8 1F               [12]  681 	dec	r7
      0000E9                        682 00138$:
      0000E9 EC               [12]  683 	mov	a,r4
      0000EA 4D               [12]  684 	orl	a,r5
      0000EB 60 06            [24]  685 	jz	00108$
                                    686 ;	main.c:35: for (i = 0; i < 4; i++);
      0000ED 7D 04            [12]  687 	mov	r5,#0x04
      0000EF                        688 00107$:
      0000EF DD FE            [24]  689 	djnz	r5,00107$
      0000F1 80 ED            [24]  690 	sjmp	00102$
      0000F3                        691 00108$:
                                    692 ;	main.c:37: }
      0000F3 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'delay_ms'
                                    696 ;------------------------------------------------------------
                                    697 ;value         Allocated to registers r4 r5 r6 r7 
                                    698 ;------------------------------------------------------------
                                    699 ;	main.c:39: void delay_ms(unsigned long int value)
                                    700 ;	-----------------------------------------
                                    701 ;	 function delay_ms
                                    702 ;	-----------------------------------------
      0000F4                        703 _delay_ms:
      0000F4 AC 82            [24]  704 	mov	r4,dpl
      0000F6 AD 83            [24]  705 	mov	r5,dph
      0000F8 AE F0            [24]  706 	mov	r6,b
      0000FA FF               [12]  707 	mov	r7,a
                                    708 ;	main.c:41: delay_time_ms = 0;
      0000FB E4               [12]  709 	clr	a
      0000FC F5 08            [12]  710 	mov	_delay_time_ms,a
      0000FE F5 09            [12]  711 	mov	(_delay_time_ms + 1),a
      000100 F5 0A            [12]  712 	mov	(_delay_time_ms + 2),a
      000102 F5 0B            [12]  713 	mov	(_delay_time_ms + 3),a
                                    714 ;	main.c:43: while (delay_time_ms < value);
      000104                        715 00101$:
      000104 C3               [12]  716 	clr	c
      000105 E5 08            [12]  717 	mov	a,_delay_time_ms
      000107 9C               [12]  718 	subb	a,r4
      000108 E5 09            [12]  719 	mov	a,(_delay_time_ms + 1)
      00010A 9D               [12]  720 	subb	a,r5
      00010B E5 0A            [12]  721 	mov	a,(_delay_time_ms + 2)
      00010D 9E               [12]  722 	subb	a,r6
      00010E E5 0B            [12]  723 	mov	a,(_delay_time_ms + 3)
      000110 9F               [12]  724 	subb	a,r7
      000111 40 F1            [24]  725 	jc	00101$
                                    726 ;	main.c:44: }
      000113 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'timer0_isr'
                                    730 ;------------------------------------------------------------
                                    731 ;count         Allocated with name '_timer0_isr_count_10000_28'
                                    732 ;------------------------------------------------------------
                                    733 ;	main.c:46: void timer0_isr(void) __interrupt(1)
                                    734 ;	-----------------------------------------
                                    735 ;	 function timer0_isr
                                    736 ;	-----------------------------------------
      000114                        737 _timer0_isr:
      000114 C0 E0            [24]  738 	push	acc
      000116 C0 07            [24]  739 	push	ar7
      000118 C0 06            [24]  740 	push	ar6
      00011A C0 05            [24]  741 	push	ar5
      00011C C0 04            [24]  742 	push	ar4
      00011E C0 D0            [24]  743 	push	psw
      000120 75 D0 00         [24]  744 	mov	psw,#0x00
                                    745 ;	main.c:50: TF0 = 0;
                                    746 ;	assignBit
      000123 C2 8D            [12]  747 	clr	_TF0
                                    748 ;	main.c:51: count++;
      000125 05 37            [12]  749 	inc	_timer0_isr_count_10000_28
                                    750 ;	main.c:53: if (count >= 10)
      000127 74 F6            [12]  751 	mov	a,#0x100 - 0x0a
      000129 25 37            [12]  752 	add	a,_timer0_isr_count_10000_28
      00012B 50 1C            [24]  753 	jnc	00103$
                                    754 ;	main.c:55: count = 0;
      00012D 75 37 00         [24]  755 	mov	_timer0_isr_count_10000_28,#0x00
                                    756 ;	main.c:56: delay_time_ms++;
      000130 AC 08            [24]  757 	mov	r4,_delay_time_ms
      000132 AD 09            [24]  758 	mov	r5,(_delay_time_ms + 1)
      000134 AE 0A            [24]  759 	mov	r6,(_delay_time_ms + 2)
      000136 AF 0B            [24]  760 	mov	r7,(_delay_time_ms + 3)
      000138 74 01            [12]  761 	mov	a,#0x01
      00013A 2C               [12]  762 	add	a, r4
      00013B F5 08            [12]  763 	mov	_delay_time_ms,a
      00013D E4               [12]  764 	clr	a
      00013E 3D               [12]  765 	addc	a, r5
      00013F F5 09            [12]  766 	mov	(_delay_time_ms + 1),a
      000141 E4               [12]  767 	clr	a
      000142 3E               [12]  768 	addc	a, r6
      000143 F5 0A            [12]  769 	mov	(_delay_time_ms + 2),a
      000145 E4               [12]  770 	clr	a
      000146 3F               [12]  771 	addc	a, r7
      000147 F5 0B            [12]  772 	mov	(_delay_time_ms + 3),a
      000149                        773 00103$:
                                    774 ;	main.c:58: }
      000149 D0 D0            [24]  775 	pop	psw
      00014B D0 04            [24]  776 	pop	ar4
      00014D D0 05            [24]  777 	pop	ar5
      00014F D0 06            [24]  778 	pop	ar6
      000151 D0 07            [24]  779 	pop	ar7
      000153 D0 E0            [24]  780 	pop	acc
      000155 32               [24]  781 	reti
                                    782 ;	eliminated unneeded push/pop dpl
                                    783 ;	eliminated unneeded push/pop dph
                                    784 ;	eliminated unneeded push/pop b
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'get_millis'
                                    787 ;------------------------------------------------------------
                                    788 ;value         Allocated to registers r4 r5 r6 r7 
                                    789 ;------------------------------------------------------------
                                    790 ;	main.c:60: static unsigned long int get_millis(void)
                                    791 ;	-----------------------------------------
                                    792 ;	 function get_millis
                                    793 ;	-----------------------------------------
      000156                        794 _get_millis:
                                    795 ;	main.c:64: EA = 0;
                                    796 ;	assignBit
      000156 C2 AF            [12]  797 	clr	_EA
                                    798 ;	main.c:65: value = delay_time_ms;
      000158 AC 08            [24]  799 	mov	r4,_delay_time_ms
      00015A AD 09            [24]  800 	mov	r5,(_delay_time_ms + 1)
      00015C AE 0A            [24]  801 	mov	r6,(_delay_time_ms + 2)
      00015E AF 0B            [24]  802 	mov	r7,(_delay_time_ms + 3)
                                    803 ;	main.c:66: EA = 1;
                                    804 ;	assignBit
      000160 D2 AF            [12]  805 	setb	_EA
                                    806 ;	main.c:68: return value;
      000162 8C 82            [24]  807 	mov	dpl, r4
      000164 8D 83            [24]  808 	mov	dph, r5
      000166 8E F0            [24]  809 	mov	b, r6
      000168 EF               [12]  810 	mov	a, r7
                                    811 ;	main.c:69: }
      000169 22               [24]  812 	ret
                                    813 ;------------------------------------------------------------
                                    814 ;Allocation info for local variables in function 'relay_set'
                                    815 ;------------------------------------------------------------
                                    816 ;state         Allocated to registers r7 
                                    817 ;------------------------------------------------------------
                                    818 ;	main.c:71: static void relay_set(unsigned char state)
                                    819 ;	-----------------------------------------
                                    820 ;	 function relay_set
                                    821 ;	-----------------------------------------
      00016A                        822 _relay_set:
                                    823 ;	main.c:73: if (state)
      00016A E5 82            [12]  824 	mov	a,dpl
      00016C 60 06            [24]  825 	jz	00102$
                                    826 ;	main.c:75: RELAY_PIN = 0;
                                    827 ;	assignBit
      00016E C2 A6            [12]  828 	clr	_P2_6
                                    829 ;	main.c:76: relay_state = 1;
      000170 75 2D 01         [24]  830 	mov	_relay_state,#0x01
      000173 22               [24]  831 	ret
      000174                        832 00102$:
                                    833 ;	main.c:80: RELAY_PIN = 1;
                                    834 ;	assignBit
      000174 D2 A6            [12]  835 	setb	_P2_6
                                    836 ;	main.c:81: relay_state = 0;
      000176 75 2D 00         [24]  837 	mov	_relay_state,#0x00
                                    838 ;	main.c:83: }
      000179 22               [24]  839 	ret
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'buzzer_set'
                                    842 ;------------------------------------------------------------
                                    843 ;state         Allocated to registers r7 
                                    844 ;------------------------------------------------------------
                                    845 ;	main.c:85: static void buzzer_set(unsigned char state)
                                    846 ;	-----------------------------------------
                                    847 ;	 function buzzer_set
                                    848 ;	-----------------------------------------
      00017A                        849 _buzzer_set:
                                    850 ;	main.c:87: if (state)
      00017A E5 82            [12]  851 	mov	a,dpl
      00017C 60 0A            [24]  852 	jz	00102$
                                    853 ;	main.c:89: GREEN_LED_PIN = 1;
                                    854 ;	assignBit
      00017E D2 A0            [12]  855 	setb	_P2_0
                                    856 ;	main.c:90: RED_LED_PIN = 0;
                                    857 ;	assignBit
      000180 C2 A1            [12]  858 	clr	_P2_1
                                    859 ;	main.c:91: BUZZER_PIN = 0;
                                    860 ;	assignBit
      000182 C2 A7            [12]  861 	clr	_P2_7
                                    862 ;	main.c:92: buzzer_state = 1;
      000184 75 2E 01         [24]  863 	mov	_buzzer_state,#0x01
      000187 22               [24]  864 	ret
      000188                        865 00102$:
                                    866 ;	main.c:96: RED_LED_PIN = 1;
                                    867 ;	assignBit
      000188 D2 A1            [12]  868 	setb	_P2_1
                                    869 ;	main.c:97: GREEN_LED_PIN = 0;
                                    870 ;	assignBit
      00018A C2 A0            [12]  871 	clr	_P2_0
                                    872 ;	main.c:98: BUZZER_PIN = 1;
                                    873 ;	assignBit
      00018C D2 A7            [12]  874 	setb	_P2_7
                                    875 ;	main.c:99: buzzer_state = 0;
      00018E 75 2E 00         [24]  876 	mov	_buzzer_state,#0x00
                                    877 ;	main.c:101: }
      000191 22               [24]  878 	ret
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'relay_button_process'
                                    881 ;------------------------------------------------------------
                                    882 ;sample        Allocated to registers r7 
                                    883 ;now           Allocated to registers r3 r4 r5 r6 
                                    884 ;------------------------------------------------------------
                                    885 ;	main.c:103: static void relay_button_process(void)
                                    886 ;	-----------------------------------------
                                    887 ;	 function relay_button_process
                                    888 ;	-----------------------------------------
      000192                        889 _relay_button_process:
                                    890 ;	main.c:108: sample = RELAY_BUTTON_PIN;
      000192 A2 A2            [12]  891 	mov	c,_P2_2
      000194 E4               [12]  892 	clr	a
      000195 33               [12]  893 	rlc	a
      000196 FF               [12]  894 	mov	r7,a
                                    895 ;	main.c:109: now = get_millis();
      000197 C0 07            [24]  896 	push	ar7
      000199 12 01 56         [24]  897 	lcall	_get_millis
      00019C AB 82            [24]  898 	mov	r3, dpl
      00019E AC 83            [24]  899 	mov	r4, dph
      0001A0 AD F0            [24]  900 	mov	r5, b
      0001A2 FE               [12]  901 	mov	r6, a
      0001A3 D0 07            [24]  902 	pop	ar7
                                    903 ;	main.c:111: if (sample != button_last_sample)
      0001A5 EF               [12]  904 	mov	a,r7
      0001A6 B5 31 02         [24]  905 	cjne	a,_button_last_sample,00158$
      0001A9 80 0A            [24]  906 	sjmp	00102$
      0001AB                        907 00158$:
                                    908 ;	main.c:113: button_last_sample = sample;
      0001AB 8F 31            [24]  909 	mov	_button_last_sample,r7
                                    910 ;	main.c:114: button_last_change_time = now;
      0001AD 8B 33            [24]  911 	mov	_button_last_change_time,r3
      0001AF 8C 34            [24]  912 	mov	(_button_last_change_time + 1),r4
      0001B1 8D 35            [24]  913 	mov	(_button_last_change_time + 2),r5
      0001B3 8E 36            [24]  914 	mov	(_button_last_change_time + 3),r6
      0001B5                        915 00102$:
                                    916 ;	main.c:117: if ((now - button_last_change_time) >= BUTTON_DEBOUNCE_MS)
      0001B5 EB               [12]  917 	mov	a,r3
      0001B6 C3               [12]  918 	clr	c
      0001B7 95 33            [12]  919 	subb	a,_button_last_change_time
      0001B9 FB               [12]  920 	mov	r3,a
      0001BA EC               [12]  921 	mov	a,r4
      0001BB 95 34            [12]  922 	subb	a,(_button_last_change_time + 1)
      0001BD FC               [12]  923 	mov	r4,a
      0001BE ED               [12]  924 	mov	a,r5
      0001BF 95 35            [12]  925 	subb	a,(_button_last_change_time + 2)
      0001C1 FD               [12]  926 	mov	r5,a
      0001C2 EE               [12]  927 	mov	a,r6
      0001C3 95 36            [12]  928 	subb	a,(_button_last_change_time + 3)
      0001C5 FE               [12]  929 	mov	r6,a
      0001C6 C3               [12]  930 	clr	c
      0001C7 EB               [12]  931 	mov	a,r3
      0001C8 94 19            [12]  932 	subb	a,#0x19
      0001CA EC               [12]  933 	mov	a,r4
      0001CB 94 00            [12]  934 	subb	a,#0x00
      0001CD ED               [12]  935 	mov	a,r5
      0001CE 94 00            [12]  936 	subb	a,#0x00
      0001D0 EE               [12]  937 	mov	a,r6
      0001D1 94 00            [12]  938 	subb	a,#0x00
      0001D3 40 20            [24]  939 	jc	00114$
                                    940 ;	main.c:119: if (button_stable_state != button_last_sample)
      0001D5 E5 31            [12]  941 	mov	a,_button_last_sample
      0001D7 B5 32 01         [24]  942 	cjne	a,_button_stable_state,00160$
      0001DA 22               [24]  943 	ret
      0001DB                        944 00160$:
                                    945 ;	main.c:121: button_stable_state = button_last_sample;
                                    946 ;	main.c:123: if (button_stable_state == 0)
      0001DB E5 31            [12]  947 	mov	a,_button_last_sample
      0001DD F5 32            [12]  948 	mov	_button_stable_state,a
      0001DF 70 14            [24]  949 	jnz	00114$
                                    950 ;	main.c:125: if (relay_state)
      0001E1 E5 2D            [12]  951 	mov	a,_relay_state
      0001E3 60 06            [24]  952 	jz	00106$
                                    953 ;	main.c:127: relay_set(0);
      0001E5 75 82 00         [24]  954 	mov	dpl, #0x00
      0001E8 02 01 6A         [24]  955 	ljmp	_relay_set
      0001EB                        956 00106$:
                                    957 ;	main.c:131: if (!fault_active)
      0001EB E5 2F            [12]  958 	mov	a,_fault_active
      0001ED 70 06            [24]  959 	jnz	00114$
                                    960 ;	main.c:133: relay_set(1);
      0001EF 75 82 01         [24]  961 	mov	dpl, #0x01
                                    962 ;	main.c:139: }
      0001F2 02 01 6A         [24]  963 	ljmp	_relay_set
      0001F5                        964 00114$:
      0001F5 22               [24]  965 	ret
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'oled_clear_region'
                                    968 ;------------------------------------------------------------
                                    969 ;column        Allocated with name '_oled_clear_region_PARM_2'
                                    970 ;characters    Allocated with name '_oled_clear_region_PARM_3'
                                    971 ;page          Allocated to registers r7 
                                    972 ;i             Allocated to registers r7 
                                    973 ;------------------------------------------------------------
                                    974 ;	main.c:141: static void oled_clear_region(unsigned char page,
                                    975 ;	-----------------------------------------
                                    976 ;	 function oled_clear_region
                                    977 ;	-----------------------------------------
      0001F6                        978 _oled_clear_region:
                                    979 ;	main.c:147: oled_set_position(page, column);
      0001F6 85 38 43         [24]  980 	mov	_oled_set_position_PARM_2,_oled_clear_region_PARM_2
      0001F9 12 0D 01         [24]  981 	lcall	_oled_set_position
                                    982 ;	main.c:149: for (i = 0; i < characters; i++)
      0001FC 7F 00            [12]  983 	mov	r7,#0x00
      0001FE                        984 00103$:
      0001FE C3               [12]  985 	clr	c
      0001FF EF               [12]  986 	mov	a,r7
      000200 95 39            [12]  987 	subb	a,_oled_clear_region_PARM_3
      000202 50 0D            [24]  988 	jnc	00105$
                                    989 ;	main.c:150: oled_char(' ');
      000204 75 82 20         [24]  990 	mov	dpl, #0x20
      000207 C0 07            [24]  991 	push	ar7
      000209 12 0E 3F         [24]  992 	lcall	_oled_char
      00020C D0 07            [24]  993 	pop	ar7
                                    994 ;	main.c:149: for (i = 0; i < characters; i++)
      00020E 0F               [12]  995 	inc	r7
      00020F 80 ED            [24]  996 	sjmp	00103$
      000211                        997 00105$:
                                    998 ;	main.c:151: }
      000211 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'oled_clear_error'
                                   1002 ;------------------------------------------------------------
                                   1003 ;	main.c:153: static void oled_clear_error(void)
                                   1004 ;	-----------------------------------------
                                   1005 ;	 function oled_clear_error
                                   1006 ;	-----------------------------------------
      000212                       1007 _oled_clear_error:
                                   1008 ;	main.c:155: oled_clear_region(5, 0, 21);
      000212 75 38 00         [24] 1009 	mov	_oled_clear_region_PARM_2,#0x00
      000215 75 39 15         [24] 1010 	mov	_oled_clear_region_PARM_3,#0x15
      000218 75 82 05         [24] 1011 	mov	dpl, #0x05
      00021B 12 01 F6         [24] 1012 	lcall	_oled_clear_region
                                   1013 ;	main.c:156: oled_clear_region(7, 0, 21);
      00021E 75 38 00         [24] 1014 	mov	_oled_clear_region_PARM_2,#0x00
      000221 75 39 15         [24] 1015 	mov	_oled_clear_region_PARM_3,#0x15
      000224 75 82 07         [24] 1016 	mov	dpl, #0x07
                                   1017 ;	main.c:157: }
      000227 02 01 F6         [24] 1018 	ljmp	_oled_clear_region
                                   1019 ;------------------------------------------------------------
                                   1020 ;Allocation info for local variables in function 'oled_print_field'
                                   1021 ;------------------------------------------------------------
                                   1022 ;comma_expected Allocated to registers r7 
                                   1023 ;count         Allocated to registers r6 
                                   1024 ;------------------------------------------------------------
                                   1025 ;	main.c:159: static unsigned char oled_print_field(unsigned char comma_expected)
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function oled_print_field
                                   1028 ;	-----------------------------------------
      00022A                       1029 _oled_print_field:
      00022A AF 82            [24] 1030 	mov	r7, dpl
                                   1031 ;	main.c:161: unsigned char count = 0;
      00022C 7E 00            [12] 1032 	mov	r6,#0x00
                                   1033 ;	main.c:163: if (rx_buffer[parse_index] == '\0')
      00022E E5 30            [12] 1034 	mov	a,_parse_index
      000230 24 0C            [12] 1035 	add	a, #_rx_buffer
      000232 F9               [12] 1036 	mov	r1,a
      000233 E7               [12] 1037 	mov	a,@r1
                                   1038 ;	main.c:164: return 0;
      000234 70 03            [24] 1039 	jnz	00106$
      000236 F5 82            [12] 1040 	mov	dpl,a
                                   1041 ;	main.c:166: while (rx_buffer[parse_index] != '\0' &&
      000238 22               [24] 1042 	ret
      000239                       1043 00106$:
      000239 E5 30            [12] 1044 	mov	a,_parse_index
      00023B 24 0C            [12] 1045 	add	a, #_rx_buffer
      00023D F9               [12] 1046 	mov	r1,a
      00023E E7               [12] 1047 	mov	a,@r1
      00023F FD               [12] 1048 	mov	r5,a
      000240 60 1C            [24] 1049 	jz	00108$
                                   1050 ;	main.c:167: rx_buffer[parse_index] != ',')
      000242 BD 2C 02         [24] 1051 	cjne	r5,#0x2c,00185$
      000245 80 17            [24] 1052 	sjmp	00108$
      000247                       1053 00185$:
                                   1054 ;	main.c:169: if (count < 20)
      000247 BE 14 00         [24] 1055 	cjne	r6,#0x14,00186$
      00024A                       1056 00186$:
      00024A 50 0D            [24] 1057 	jnc	00104$
                                   1058 ;	main.c:170: oled_char(rx_buffer[parse_index]);
      00024C 8D 82            [24] 1059 	mov	dpl, r5
      00024E C0 07            [24] 1060 	push	ar7
      000250 C0 06            [24] 1061 	push	ar6
      000252 12 0E 3F         [24] 1062 	lcall	_oled_char
      000255 D0 06            [24] 1063 	pop	ar6
      000257 D0 07            [24] 1064 	pop	ar7
      000259                       1065 00104$:
                                   1066 ;	main.c:172: count++;
      000259 0E               [12] 1067 	inc	r6
                                   1068 ;	main.c:173: parse_index++;
      00025A 05 30            [12] 1069 	inc	_parse_index
      00025C 80 DB            [24] 1070 	sjmp	00106$
      00025E                       1071 00108$:
                                   1072 ;	main.c:176: if (count == 0)
      00025E EE               [12] 1073 	mov	a,r6
                                   1074 ;	main.c:177: return 0;
      00025F 70 03            [24] 1075 	jnz	00110$
      000261 F5 82            [12] 1076 	mov	dpl,a
      000263 22               [24] 1077 	ret
      000264                       1078 00110$:
                                   1079 ;	main.c:179: if (comma_expected)
      000264 EF               [12] 1080 	mov	a,r7
      000265 60 14            [24] 1081 	jz	00116$
                                   1082 ;	main.c:181: if (rx_buffer[parse_index] != ',')
      000267 E5 30            [12] 1083 	mov	a,_parse_index
      000269 24 0C            [12] 1084 	add	a, #_rx_buffer
      00026B F9               [12] 1085 	mov	r1,a
      00026C 87 07            [24] 1086 	mov	ar7,@r1
      00026E BF 2C 02         [24] 1087 	cjne	r7,#0x2c,00190$
      000271 80 04            [24] 1088 	sjmp	00112$
      000273                       1089 00190$:
                                   1090 ;	main.c:182: return 0;
      000273 75 82 00         [24] 1091 	mov	dpl, #0x00
      000276 22               [24] 1092 	ret
      000277                       1093 00112$:
                                   1094 ;	main.c:184: parse_index++;
      000277 05 30            [12] 1095 	inc	_parse_index
      000279 80 0C            [24] 1096 	sjmp	00117$
      00027B                       1097 00116$:
                                   1098 ;	main.c:188: if (rx_buffer[parse_index] != '\0')
      00027B E5 30            [12] 1099 	mov	a,_parse_index
      00027D 24 0C            [12] 1100 	add	a, #_rx_buffer
      00027F F9               [12] 1101 	mov	r1,a
      000280 E7               [12] 1102 	mov	a,@r1
      000281 60 04            [24] 1103 	jz	00117$
                                   1104 ;	main.c:189: return 0;
      000283 75 82 00         [24] 1105 	mov	dpl, #0x00
      000286 22               [24] 1106 	ret
      000287                       1107 00117$:
                                   1108 ;	main.c:192: return 1;
      000287 75 82 01         [24] 1109 	mov	dpl, #0x01
                                   1110 ;	main.c:193: }
      00028A 22               [24] 1111 	ret
                                   1112 ;------------------------------------------------------------
                                   1113 ;Allocation info for local variables in function 'oled_initial_screen'
                                   1114 ;------------------------------------------------------------
                                   1115 ;	main.c:195: static void oled_initial_screen(void)
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function oled_initial_screen
                                   1118 ;	-----------------------------------------
      00028B                       1119 _oled_initial_screen:
                                   1120 ;	main.c:197: oled_clear();
      00028B 12 0D 3E         [24] 1121 	lcall	_oled_clear
                                   1122 ;	main.c:199: oled_set_position(0, 0);
      00028E 75 43 00         [24] 1123 	mov	_oled_set_position_PARM_2,#0x00
      000291 75 82 00         [24] 1124 	mov	dpl, #0x00
      000294 12 0D 01         [24] 1125 	lcall	_oled_set_position
                                   1126 ;	main.c:200: oled_string("V:--");
      000297 90 14 0C         [24] 1127 	mov	dptr,#___str_0
      00029A 75 F0 80         [24] 1128 	mov	b, #0x80
      00029D 12 11 0C         [24] 1129 	lcall	_oled_string
                                   1130 ;	main.c:202: oled_set_position(0, 66);
      0002A0 75 43 42         [24] 1131 	mov	_oled_set_position_PARM_2,#0x42
      0002A3 75 82 00         [24] 1132 	mov	dpl, #0x00
      0002A6 12 0D 01         [24] 1133 	lcall	_oled_set_position
                                   1134 ;	main.c:203: oled_string("F:--");
      0002A9 90 14 11         [24] 1135 	mov	dptr,#___str_1
      0002AC 75 F0 80         [24] 1136 	mov	b, #0x80
      0002AF 12 11 0C         [24] 1137 	lcall	_oled_string
                                   1138 ;	main.c:205: oled_set_position(1, 0);
      0002B2 75 43 00         [24] 1139 	mov	_oled_set_position_PARM_2,#0x00
      0002B5 75 82 01         [24] 1140 	mov	dpl, #0x01
      0002B8 12 0D 01         [24] 1141 	lcall	_oled_set_position
                                   1142 ;	main.c:206: oled_string("I:--");
      0002BB 90 14 16         [24] 1143 	mov	dptr,#___str_2
      0002BE 75 F0 80         [24] 1144 	mov	b, #0x80
      0002C1 12 11 0C         [24] 1145 	lcall	_oled_string
                                   1146 ;	main.c:208: oled_set_position(1, 66);
      0002C4 75 43 42         [24] 1147 	mov	_oled_set_position_PARM_2,#0x42
      0002C7 75 82 01         [24] 1148 	mov	dpl, #0x01
      0002CA 12 0D 01         [24] 1149 	lcall	_oled_set_position
                                   1150 ;	main.c:209: oled_string("E:--");
      0002CD 90 14 1B         [24] 1151 	mov	dptr,#___str_3
      0002D0 75 F0 80         [24] 1152 	mov	b, #0x80
      0002D3 12 11 0C         [24] 1153 	lcall	_oled_string
                                   1154 ;	main.c:211: oled_set_position(2, 0);
      0002D6 75 43 00         [24] 1155 	mov	_oled_set_position_PARM_2,#0x00
      0002D9 75 82 02         [24] 1156 	mov	dpl, #0x02
      0002DC 12 0D 01         [24] 1157 	lcall	_oled_set_position
                                   1158 ;	main.c:212: oled_string("P:--");
      0002DF 90 14 20         [24] 1159 	mov	dptr,#___str_4
      0002E2 75 F0 80         [24] 1160 	mov	b, #0x80
      0002E5 12 11 0C         [24] 1161 	lcall	_oled_string
                                   1162 ;	main.c:214: oled_set_position(2, 66);
      0002E8 75 43 42         [24] 1163 	mov	_oled_set_position_PARM_2,#0x42
      0002EB 75 82 02         [24] 1164 	mov	dpl, #0x02
      0002EE 12 0D 01         [24] 1165 	lcall	_oled_set_position
                                   1166 ;	main.c:215: oled_string("L:--");
      0002F1 90 14 25         [24] 1167 	mov	dptr,#___str_5
      0002F4 75 F0 80         [24] 1168 	mov	b, #0x80
      0002F7 12 11 0C         [24] 1169 	lcall	_oled_string
                                   1170 ;	main.c:217: oled_set_position(3, 0);
      0002FA 75 43 00         [24] 1171 	mov	_oled_set_position_PARM_2,#0x00
      0002FD 75 82 03         [24] 1172 	mov	dpl, #0x03
      000300 12 0D 01         [24] 1173 	lcall	_oled_set_position
                                   1174 ;	main.c:218: oled_string("PF:--");
      000303 90 14 2A         [24] 1175 	mov	dptr,#___str_6
      000306 75 F0 80         [24] 1176 	mov	b, #0x80
      000309 12 11 0C         [24] 1177 	lcall	_oled_string
                                   1178 ;	main.c:220: oled_set_position(3, 66);
      00030C 75 43 42         [24] 1179 	mov	_oled_set_position_PARM_2,#0x42
      00030F 75 82 03         [24] 1180 	mov	dpl, #0x03
      000312 12 0D 01         [24] 1181 	lcall	_oled_set_position
                                   1182 ;	main.c:221: oled_string("T:--C");
      000315 90 14 30         [24] 1183 	mov	dptr,#___str_7
      000318 75 F0 80         [24] 1184 	mov	b, #0x80
      00031B 12 11 0C         [24] 1185 	lcall	_oled_string
                                   1186 ;	main.c:223: oled_set_position(5, 0);
      00031E 75 43 00         [24] 1187 	mov	_oled_set_position_PARM_2,#0x00
      000321 75 82 05         [24] 1188 	mov	dpl, #0x05
      000324 12 0D 01         [24] 1189 	lcall	_oled_set_position
                                   1190 ;	main.c:224: oled_string("ERROR:");
      000327 90 14 36         [24] 1191 	mov	dptr,#___str_8
      00032A 75 F0 80         [24] 1192 	mov	b, #0x80
      00032D 12 11 0C         [24] 1193 	lcall	_oled_string
                                   1194 ;	main.c:226: oled_set_position(7, 0);
      000330 75 43 00         [24] 1195 	mov	_oled_set_position_PARM_2,#0x00
      000333 75 82 07         [24] 1196 	mov	dpl, #0x07
      000336 12 0D 01         [24] 1197 	lcall	_oled_set_position
                                   1198 ;	main.c:227: oled_string("NO ERROR");
      000339 90 14 3D         [24] 1199 	mov	dptr,#___str_9
      00033C 75 F0 80         [24] 1200 	mov	b, #0x80
                                   1201 ;	main.c:228: }
      00033F 02 11 0C         [24] 1202 	ljmp	_oled_string
                                   1203 ;------------------------------------------------------------
                                   1204 ;Allocation info for local variables in function 'process_data1'
                                   1205 ;------------------------------------------------------------
                                   1206 ;	main.c:230: static unsigned char process_data1(void)
                                   1207 ;	-----------------------------------------
                                   1208 ;	 function process_data1
                                   1209 ;	-----------------------------------------
      000342                       1210 _process_data1:
                                   1211 ;	main.c:232: parse_index = 6;
      000342 75 30 06         [24] 1212 	mov	_parse_index,#0x06
                                   1213 ;	main.c:234: oled_clear_region(0, 0, 10);
      000345 75 38 00         [24] 1214 	mov	_oled_clear_region_PARM_2,#0x00
      000348 75 39 0A         [24] 1215 	mov	_oled_clear_region_PARM_3,#0x0a
      00034B 75 82 00         [24] 1216 	mov	dpl, #0x00
      00034E 12 01 F6         [24] 1217 	lcall	_oled_clear_region
                                   1218 ;	main.c:235: oled_set_position(0, 0);
      000351 75 43 00         [24] 1219 	mov	_oled_set_position_PARM_2,#0x00
      000354 75 82 00         [24] 1220 	mov	dpl, #0x00
      000357 12 0D 01         [24] 1221 	lcall	_oled_set_position
                                   1222 ;	main.c:236: oled_string("V:");
      00035A 90 14 46         [24] 1223 	mov	dptr,#___str_10
      00035D 75 F0 80         [24] 1224 	mov	b, #0x80
      000360 12 11 0C         [24] 1225 	lcall	_oled_string
                                   1226 ;	main.c:238: if (!oled_print_field(1))
      000363 75 82 01         [24] 1227 	mov	dpl, #0x01
      000366 12 02 2A         [24] 1228 	lcall	_oled_print_field
      000369 E5 82            [12] 1229 	mov	a, dpl
                                   1230 ;	main.c:239: return 0;
      00036B 70 03            [24] 1231 	jnz	00102$
      00036D F5 82            [12] 1232 	mov	dpl,a
      00036F 22               [24] 1233 	ret
      000370                       1234 00102$:
                                   1235 ;	main.c:241: oled_clear_region(1, 0, 10);
      000370 75 38 00         [24] 1236 	mov	_oled_clear_region_PARM_2,#0x00
      000373 75 39 0A         [24] 1237 	mov	_oled_clear_region_PARM_3,#0x0a
      000376 75 82 01         [24] 1238 	mov	dpl, #0x01
      000379 12 01 F6         [24] 1239 	lcall	_oled_clear_region
                                   1240 ;	main.c:242: oled_set_position(1, 0);
      00037C 75 43 00         [24] 1241 	mov	_oled_set_position_PARM_2,#0x00
      00037F 75 82 01         [24] 1242 	mov	dpl, #0x01
      000382 12 0D 01         [24] 1243 	lcall	_oled_set_position
                                   1244 ;	main.c:243: oled_string("I:");
      000385 90 14 49         [24] 1245 	mov	dptr,#___str_11
      000388 75 F0 80         [24] 1246 	mov	b, #0x80
      00038B 12 11 0C         [24] 1247 	lcall	_oled_string
                                   1248 ;	main.c:245: if (!oled_print_field(1))
      00038E 75 82 01         [24] 1249 	mov	dpl, #0x01
      000391 12 02 2A         [24] 1250 	lcall	_oled_print_field
      000394 E5 82            [12] 1251 	mov	a, dpl
                                   1252 ;	main.c:246: return 0;
      000396 70 03            [24] 1253 	jnz	00104$
      000398 F5 82            [12] 1254 	mov	dpl,a
      00039A 22               [24] 1255 	ret
      00039B                       1256 00104$:
                                   1257 ;	main.c:248: oled_char('A');
      00039B 75 82 41         [24] 1258 	mov	dpl, #0x41
      00039E 12 0E 3F         [24] 1259 	lcall	_oled_char
                                   1260 ;	main.c:250: oled_clear_region(2, 0, 10);
      0003A1 75 38 00         [24] 1261 	mov	_oled_clear_region_PARM_2,#0x00
      0003A4 75 39 0A         [24] 1262 	mov	_oled_clear_region_PARM_3,#0x0a
      0003A7 75 82 02         [24] 1263 	mov	dpl, #0x02
      0003AA 12 01 F6         [24] 1264 	lcall	_oled_clear_region
                                   1265 ;	main.c:251: oled_set_position(2, 0);
      0003AD 75 43 00         [24] 1266 	mov	_oled_set_position_PARM_2,#0x00
      0003B0 75 82 02         [24] 1267 	mov	dpl, #0x02
      0003B3 12 0D 01         [24] 1268 	lcall	_oled_set_position
                                   1269 ;	main.c:252: oled_string("P:");
      0003B6 90 14 4C         [24] 1270 	mov	dptr,#___str_12
      0003B9 75 F0 80         [24] 1271 	mov	b, #0x80
      0003BC 12 11 0C         [24] 1272 	lcall	_oled_string
                                   1273 ;	main.c:254: if (!oled_print_field(1))
      0003BF 75 82 01         [24] 1274 	mov	dpl, #0x01
      0003C2 12 02 2A         [24] 1275 	lcall	_oled_print_field
      0003C5 E5 82            [12] 1276 	mov	a, dpl
                                   1277 ;	main.c:255: return 0;
      0003C7 70 03            [24] 1278 	jnz	00106$
      0003C9 F5 82            [12] 1279 	mov	dpl,a
      0003CB 22               [24] 1280 	ret
      0003CC                       1281 00106$:
                                   1282 ;	main.c:257: oled_char('W');
      0003CC 75 82 57         [24] 1283 	mov	dpl, #0x57
      0003CF 12 0E 3F         [24] 1284 	lcall	_oled_char
                                   1285 ;	main.c:259: oled_clear_region(3, 0, 10);
      0003D2 75 38 00         [24] 1286 	mov	_oled_clear_region_PARM_2,#0x00
      0003D5 75 39 0A         [24] 1287 	mov	_oled_clear_region_PARM_3,#0x0a
      0003D8 75 82 03         [24] 1288 	mov	dpl, #0x03
      0003DB 12 01 F6         [24] 1289 	lcall	_oled_clear_region
                                   1290 ;	main.c:260: oled_set_position(3, 0);
      0003DE 75 43 00         [24] 1291 	mov	_oled_set_position_PARM_2,#0x00
      0003E1 75 82 03         [24] 1292 	mov	dpl, #0x03
      0003E4 12 0D 01         [24] 1293 	lcall	_oled_set_position
                                   1294 ;	main.c:261: oled_string("PF:");
      0003E7 90 14 4F         [24] 1295 	mov	dptr,#___str_13
      0003EA 75 F0 80         [24] 1296 	mov	b, #0x80
      0003ED 12 11 0C         [24] 1297 	lcall	_oled_string
                                   1298 ;	main.c:263: if (!oled_print_field(0))
      0003F0 75 82 00         [24] 1299 	mov	dpl, #0x00
      0003F3 12 02 2A         [24] 1300 	lcall	_oled_print_field
      0003F6 E5 82            [12] 1301 	mov	a, dpl
                                   1302 ;	main.c:264: return 0;
      0003F8 70 03            [24] 1303 	jnz	00108$
      0003FA F5 82            [12] 1304 	mov	dpl,a
      0003FC 22               [24] 1305 	ret
      0003FD                       1306 00108$:
                                   1307 ;	main.c:266: return 1;
      0003FD 75 82 01         [24] 1308 	mov	dpl, #0x01
                                   1309 ;	main.c:267: }
      000400 22               [24] 1310 	ret
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'process_data2'
                                   1313 ;------------------------------------------------------------
                                   1314 ;	main.c:269: static unsigned char process_data2(void)
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function process_data2
                                   1317 ;	-----------------------------------------
      000401                       1318 _process_data2:
                                   1319 ;	main.c:271: parse_index = 6;
      000401 75 30 06         [24] 1320 	mov	_parse_index,#0x06
                                   1321 ;	main.c:273: oled_clear_region(0, 66, 10);
      000404 75 38 42         [24] 1322 	mov	_oled_clear_region_PARM_2,#0x42
      000407 75 39 0A         [24] 1323 	mov	_oled_clear_region_PARM_3,#0x0a
      00040A 75 82 00         [24] 1324 	mov	dpl, #0x00
      00040D 12 01 F6         [24] 1325 	lcall	_oled_clear_region
                                   1326 ;	main.c:274: oled_set_position(0, 66);
      000410 75 43 42         [24] 1327 	mov	_oled_set_position_PARM_2,#0x42
      000413 75 82 00         [24] 1328 	mov	dpl, #0x00
      000416 12 0D 01         [24] 1329 	lcall	_oled_set_position
                                   1330 ;	main.c:275: oled_string("F:");
      000419 90 14 53         [24] 1331 	mov	dptr,#___str_14
      00041C 75 F0 80         [24] 1332 	mov	b, #0x80
      00041F 12 11 0C         [24] 1333 	lcall	_oled_string
                                   1334 ;	main.c:277: if (!oled_print_field(1))
      000422 75 82 01         [24] 1335 	mov	dpl, #0x01
      000425 12 02 2A         [24] 1336 	lcall	_oled_print_field
      000428 E5 82            [12] 1337 	mov	a, dpl
                                   1338 ;	main.c:278: return 0;
      00042A 70 03            [24] 1339 	jnz	00102$
      00042C F5 82            [12] 1340 	mov	dpl,a
      00042E 22               [24] 1341 	ret
      00042F                       1342 00102$:
                                   1343 ;	main.c:280: oled_string("Hz");
      00042F 90 14 56         [24] 1344 	mov	dptr,#___str_15
      000432 75 F0 80         [24] 1345 	mov	b, #0x80
      000435 12 11 0C         [24] 1346 	lcall	_oled_string
                                   1347 ;	main.c:282: oled_clear_region(1, 66, 10);
      000438 75 38 42         [24] 1348 	mov	_oled_clear_region_PARM_2,#0x42
      00043B 75 39 0A         [24] 1349 	mov	_oled_clear_region_PARM_3,#0x0a
      00043E 75 82 01         [24] 1350 	mov	dpl, #0x01
      000441 12 01 F6         [24] 1351 	lcall	_oled_clear_region
                                   1352 ;	main.c:283: oled_set_position(1, 66);
      000444 75 43 42         [24] 1353 	mov	_oled_set_position_PARM_2,#0x42
      000447 75 82 01         [24] 1354 	mov	dpl, #0x01
      00044A 12 0D 01         [24] 1355 	lcall	_oled_set_position
                                   1356 ;	main.c:284: oled_string("E:");
      00044D 90 14 59         [24] 1357 	mov	dptr,#___str_16
      000450 75 F0 80         [24] 1358 	mov	b, #0x80
      000453 12 11 0C         [24] 1359 	lcall	_oled_string
                                   1360 ;	main.c:286: if (!oled_print_field(1))
      000456 75 82 01         [24] 1361 	mov	dpl, #0x01
      000459 12 02 2A         [24] 1362 	lcall	_oled_print_field
      00045C E5 82            [12] 1363 	mov	a, dpl
                                   1364 ;	main.c:287: return 0;
      00045E 70 03            [24] 1365 	jnz	00104$
      000460 F5 82            [12] 1366 	mov	dpl,a
      000462 22               [24] 1367 	ret
      000463                       1368 00104$:
                                   1369 ;	main.c:289: oled_string("kWh");
      000463 90 14 5C         [24] 1370 	mov	dptr,#___str_17
      000466 75 F0 80         [24] 1371 	mov	b, #0x80
      000469 12 11 0C         [24] 1372 	lcall	_oled_string
                                   1373 ;	main.c:291: oled_clear_region(2, 66, 10);
      00046C 75 38 42         [24] 1374 	mov	_oled_clear_region_PARM_2,#0x42
      00046F 75 39 0A         [24] 1375 	mov	_oled_clear_region_PARM_3,#0x0a
      000472 75 82 02         [24] 1376 	mov	dpl, #0x02
      000475 12 01 F6         [24] 1377 	lcall	_oled_clear_region
                                   1378 ;	main.c:292: oled_set_position(2, 66);
      000478 75 43 42         [24] 1379 	mov	_oled_set_position_PARM_2,#0x42
      00047B 75 82 02         [24] 1380 	mov	dpl, #0x02
      00047E 12 0D 01         [24] 1381 	lcall	_oled_set_position
                                   1382 ;	main.c:293: oled_string("L:");
      000481 90 14 60         [24] 1383 	mov	dptr,#___str_18
      000484 75 F0 80         [24] 1384 	mov	b, #0x80
      000487 12 11 0C         [24] 1385 	lcall	_oled_string
                                   1386 ;	main.c:295: if (!oled_print_field(0))
      00048A 75 82 00         [24] 1387 	mov	dpl, #0x00
      00048D 12 02 2A         [24] 1388 	lcall	_oled_print_field
      000490 E5 82            [12] 1389 	mov	a, dpl
                                   1390 ;	main.c:296: return 0;
      000492 70 03            [24] 1391 	jnz	00106$
      000494 F5 82            [12] 1392 	mov	dpl,a
      000496 22               [24] 1393 	ret
      000497                       1394 00106$:
                                   1395 ;	main.c:298: oled_char('A');
      000497 75 82 41         [24] 1396 	mov	dpl, #0x41
      00049A 12 0E 3F         [24] 1397 	lcall	_oled_char
                                   1398 ;	main.c:300: return 1;
      00049D 75 82 01         [24] 1399 	mov	dpl, #0x01
                                   1400 ;	main.c:301: }
      0004A0 22               [24] 1401 	ret
                                   1402 ;------------------------------------------------------------
                                   1403 ;Allocation info for local variables in function 'process_data3'
                                   1404 ;------------------------------------------------------------
                                   1405 ;	main.c:303: static unsigned char process_data3(void)
                                   1406 ;	-----------------------------------------
                                   1407 ;	 function process_data3
                                   1408 ;	-----------------------------------------
      0004A1                       1409 _process_data3:
                                   1410 ;	main.c:305: parse_index = 6;
      0004A1 75 30 06         [24] 1411 	mov	_parse_index,#0x06
                                   1412 ;	main.c:307: oled_clear_region(3, 66, 10);
      0004A4 75 38 42         [24] 1413 	mov	_oled_clear_region_PARM_2,#0x42
      0004A7 75 39 0A         [24] 1414 	mov	_oled_clear_region_PARM_3,#0x0a
      0004AA 75 82 03         [24] 1415 	mov	dpl, #0x03
      0004AD 12 01 F6         [24] 1416 	lcall	_oled_clear_region
                                   1417 ;	main.c:308: oled_set_position(3, 66);
      0004B0 75 43 42         [24] 1418 	mov	_oled_set_position_PARM_2,#0x42
      0004B3 75 82 03         [24] 1419 	mov	dpl, #0x03
      0004B6 12 0D 01         [24] 1420 	lcall	_oled_set_position
                                   1421 ;	main.c:309: oled_string("T:");
      0004B9 90 14 63         [24] 1422 	mov	dptr,#___str_19
      0004BC 75 F0 80         [24] 1423 	mov	b, #0x80
      0004BF 12 11 0C         [24] 1424 	lcall	_oled_string
                                   1425 ;	main.c:311: if (!oled_print_field(0))
      0004C2 75 82 00         [24] 1426 	mov	dpl, #0x00
      0004C5 12 02 2A         [24] 1427 	lcall	_oled_print_field
      0004C8 E5 82            [12] 1428 	mov	a, dpl
                                   1429 ;	main.c:312: return 0;
      0004CA 70 03            [24] 1430 	jnz	00102$
      0004CC F5 82            [12] 1431 	mov	dpl,a
      0004CE 22               [24] 1432 	ret
      0004CF                       1433 00102$:
                                   1434 ;	main.c:314: oled_char('C');
      0004CF 75 82 43         [24] 1435 	mov	dpl, #0x43
      0004D2 12 0E 3F         [24] 1436 	lcall	_oled_char
                                   1437 ;	main.c:316: return 1;
      0004D5 75 82 01         [24] 1438 	mov	dpl, #0x01
                                   1439 ;	main.c:317: }
      0004D8 22               [24] 1440 	ret
                                   1441 ;------------------------------------------------------------
                                   1442 ;Allocation info for local variables in function 'process_error'
                                   1443 ;------------------------------------------------------------
                                   1444 ;i             Allocated to registers r7 
                                   1445 ;is_none       Allocated to registers r7 
                                   1446 ;------------------------------------------------------------
                                   1447 ;	main.c:319: static unsigned char process_error(void)
                                   1448 ;	-----------------------------------------
                                   1449 ;	 function process_error
                                   1450 ;	-----------------------------------------
      0004D9                       1451 _process_error:
                                   1452 ;	main.c:322: unsigned char is_none = 0;
      0004D9 7F 00            [12] 1453 	mov	r7,#0x00
                                   1454 ;	main.c:324: parse_index = 6;
      0004DB 75 30 06         [24] 1455 	mov	_parse_index,#0x06
                                   1456 ;	main.c:326: if (rx_buffer[parse_index] == '\0')
      0004DE E5 12            [12] 1457 	mov	a,(_rx_buffer + 0x0006)
      0004E0 FE               [12] 1458 	mov	r6,a
                                   1459 ;	main.c:327: return 0;
      0004E1 70 03            [24] 1460 	jnz	00102$
      0004E3 F5 82            [12] 1461 	mov	dpl,a
      0004E5 22               [24] 1462 	ret
      0004E6                       1463 00102$:
                                   1464 ;	main.c:329: if (rx_buffer[parse_index] == 'N' &&
      0004E6 BE 4E 15         [24] 1465 	cjne	r6,#0x4e,00104$
                                   1466 ;	main.c:330: rx_buffer[parse_index + 1] == 'O' &&
      0004E9 74 4F            [12] 1467 	mov	a,#0x4f
      0004EB B5 13 10         [24] 1468 	cjne	a,(_rx_buffer + 0x0007),00104$
                                   1469 ;	main.c:331: rx_buffer[parse_index + 2] == 'N' &&
      0004EE 74 4E            [12] 1470 	mov	a,#0x4e
      0004F0 B5 14 0B         [24] 1471 	cjne	a,(_rx_buffer + 0x0008),00104$
                                   1472 ;	main.c:332: rx_buffer[parse_index + 3] == 'E' &&
      0004F3 74 45            [12] 1473 	mov	a,#0x45
      0004F5 B5 15 06         [24] 1474 	cjne	a,(_rx_buffer + 0x0009),00104$
                                   1475 ;	main.c:333: rx_buffer[parse_index + 4] == '\0')
      0004F8 E5 16            [12] 1476 	mov	a,(_rx_buffer + 0x000a)
      0004FA 70 02            [24] 1477 	jnz	00104$
                                   1478 ;	main.c:335: is_none = 1;
      0004FC 7F 01            [12] 1479 	mov	r7,#0x01
      0004FE                       1480 00104$:
                                   1481 ;	main.c:338: if (is_none)
      0004FE EF               [12] 1482 	mov	a,r7
      0004FF 60 2E            [24] 1483 	jz	00110$
                                   1484 ;	main.c:340: fault_active = 0;
      000501 75 2F 00         [24] 1485 	mov	_fault_active,#0x00
                                   1486 ;	main.c:341: oled_clear_error();
      000504 12 02 12         [24] 1487 	lcall	_oled_clear_error
                                   1488 ;	main.c:343: oled_set_position(5, 0);
      000507 75 43 00         [24] 1489 	mov	_oled_set_position_PARM_2,#0x00
      00050A 75 82 05         [24] 1490 	mov	dpl, #0x05
      00050D 12 0D 01         [24] 1491 	lcall	_oled_set_position
                                   1492 ;	main.c:344: oled_string("ERROR:");
      000510 90 14 36         [24] 1493 	mov	dptr,#___str_8
      000513 75 F0 80         [24] 1494 	mov	b, #0x80
      000516 12 11 0C         [24] 1495 	lcall	_oled_string
                                   1496 ;	main.c:346: oled_set_position(7, 0);
      000519 75 43 00         [24] 1497 	mov	_oled_set_position_PARM_2,#0x00
      00051C 75 82 07         [24] 1498 	mov	dpl, #0x07
      00051F 12 0D 01         [24] 1499 	lcall	_oled_set_position
                                   1500 ;	main.c:347: oled_string("NO ERROR");
      000522 90 14 3D         [24] 1501 	mov	dptr,#___str_9
      000525 75 F0 80         [24] 1502 	mov	b, #0x80
      000528 12 11 0C         [24] 1503 	lcall	_oled_string
                                   1504 ;	main.c:349: return 1;
      00052B 75 82 01         [24] 1505 	mov	dpl, #0x01
      00052E 22               [24] 1506 	ret
      00052F                       1507 00110$:
                                   1508 ;	main.c:352: fault_active = 1;
      00052F 75 2F 01         [24] 1509 	mov	_fault_active,#0x01
                                   1510 ;	main.c:353: relay_set(0);
      000532 75 82 00         [24] 1511 	mov	dpl, #0x00
      000535 12 01 6A         [24] 1512 	lcall	_relay_set
                                   1513 ;	main.c:355: oled_clear_error();
      000538 12 02 12         [24] 1514 	lcall	_oled_clear_error
                                   1515 ;	main.c:357: oled_set_position(5, 0);
      00053B 75 43 00         [24] 1516 	mov	_oled_set_position_PARM_2,#0x00
      00053E 75 82 05         [24] 1517 	mov	dpl, #0x05
      000541 12 0D 01         [24] 1518 	lcall	_oled_set_position
                                   1519 ;	main.c:358: oled_string("ERROR:");
      000544 90 14 36         [24] 1520 	mov	dptr,#___str_8
      000547 75 F0 80         [24] 1521 	mov	b, #0x80
      00054A 12 11 0C         [24] 1522 	lcall	_oled_string
                                   1523 ;	main.c:360: oled_set_position(7, 0);
      00054D 75 43 00         [24] 1524 	mov	_oled_set_position_PARM_2,#0x00
      000550 75 82 07         [24] 1525 	mov	dpl, #0x07
      000553 12 0D 01         [24] 1526 	lcall	_oled_set_position
                                   1527 ;	main.c:362: for (i = 0; i < 21; i++)
      000556 7F 00            [12] 1528 	mov	r7,#0x00
      000558                       1529 00114$:
                                   1530 ;	main.c:364: if (rx_buffer[parse_index] == '\0')
      000558 E5 30            [12] 1531 	mov	a,_parse_index
      00055A 24 0C            [12] 1532 	add	a, #_rx_buffer
      00055C F9               [12] 1533 	mov	r1,a
      00055D E7               [12] 1534 	mov	a,@r1
      00055E FE               [12] 1535 	mov	r6,a
      00055F 60 11            [24] 1536 	jz	00113$
                                   1537 ;	main.c:367: oled_char(rx_buffer[parse_index]);
      000561 8E 82            [24] 1538 	mov	dpl, r6
      000563 C0 07            [24] 1539 	push	ar7
      000565 12 0E 3F         [24] 1540 	lcall	_oled_char
      000568 D0 07            [24] 1541 	pop	ar7
                                   1542 ;	main.c:368: parse_index++;
      00056A 05 30            [12] 1543 	inc	_parse_index
                                   1544 ;	main.c:362: for (i = 0; i < 21; i++)
      00056C 0F               [12] 1545 	inc	r7
      00056D BF 15 00         [24] 1546 	cjne	r7,#0x15,00193$
      000570                       1547 00193$:
      000570 40 E6            [24] 1548 	jc	00114$
      000572                       1549 00113$:
                                   1550 ;	main.c:371: return 1;
      000572 75 82 01         [24] 1551 	mov	dpl, #0x01
                                   1552 ;	main.c:372: }
      000575 22               [24] 1553 	ret
                                   1554 ;------------------------------------------------------------
                                   1555 ;Allocation info for local variables in function 'process_command'
                                   1556 ;------------------------------------------------------------
                                   1557 ;command       Allocated to registers r5 r6 r7 
                                   1558 ;------------------------------------------------------------
                                   1559 ;	main.c:374: static void process_command(char *command)
                                   1560 ;	-----------------------------------------
                                   1561 ;	 function process_command
                                   1562 ;	-----------------------------------------
      000576                       1563 _process_command:
                                   1564 ;	main.c:376: if (command[0] == 'R' &&
      000576 AD 82            [24] 1565 	mov	r5,dpl
      000578 AE 83            [24] 1566 	mov	r6,dph
      00057A AF F0            [24] 1567 	mov	r7,b
      00057C 12 13 EC         [24] 1568 	lcall	__gptrget
      00057F FC               [12] 1569 	mov	r4,a
      000580 BC 52 02         [24] 1570 	cjne	r4,#0x52,00651$
      000583 80 03            [24] 1571 	sjmp	00652$
      000585                       1572 00651$:
      000585 02 06 D2         [24] 1573 	ljmp	00114$
      000588                       1574 00652$:
                                   1575 ;	main.c:377: command[1] == 'E' &&
      000588 74 01            [12] 1576 	mov	a,#0x01
      00058A 2D               [12] 1577 	add	a, r5
      00058B F9               [12] 1578 	mov	r1,a
      00058C E4               [12] 1579 	clr	a
      00058D 3E               [12] 1580 	addc	a, r6
      00058E FA               [12] 1581 	mov	r2,a
      00058F 8F 03            [24] 1582 	mov	ar3,r7
      000591 89 82            [24] 1583 	mov	dpl,r1
      000593 8A 83            [24] 1584 	mov	dph,r2
      000595 8B F0            [24] 1585 	mov	b,r3
      000597 12 13 EC         [24] 1586 	lcall	__gptrget
      00059A F9               [12] 1587 	mov	r1,a
      00059B B9 45 02         [24] 1588 	cjne	r1,#0x45,00653$
      00059E 80 03            [24] 1589 	sjmp	00654$
      0005A0                       1590 00653$:
      0005A0 02 06 D2         [24] 1591 	ljmp	00114$
      0005A3                       1592 00654$:
                                   1593 ;	main.c:378: command[2] == 'L' &&
      0005A3 74 02            [12] 1594 	mov	a,#0x02
      0005A5 2D               [12] 1595 	add	a, r5
      0005A6 F9               [12] 1596 	mov	r1,a
      0005A7 E4               [12] 1597 	clr	a
      0005A8 3E               [12] 1598 	addc	a, r6
      0005A9 FA               [12] 1599 	mov	r2,a
      0005AA 8F 03            [24] 1600 	mov	ar3,r7
      0005AC 89 82            [24] 1601 	mov	dpl,r1
      0005AE 8A 83            [24] 1602 	mov	dph,r2
      0005B0 8B F0            [24] 1603 	mov	b,r3
      0005B2 12 13 EC         [24] 1604 	lcall	__gptrget
      0005B5 F9               [12] 1605 	mov	r1,a
      0005B6 B9 4C 02         [24] 1606 	cjne	r1,#0x4c,00655$
      0005B9 80 03            [24] 1607 	sjmp	00656$
      0005BB                       1608 00655$:
      0005BB 02 06 D2         [24] 1609 	ljmp	00114$
      0005BE                       1610 00656$:
                                   1611 ;	main.c:379: command[3] == 'A' &&
      0005BE 74 03            [12] 1612 	mov	a,#0x03
      0005C0 2D               [12] 1613 	add	a, r5
      0005C1 F9               [12] 1614 	mov	r1,a
      0005C2 E4               [12] 1615 	clr	a
      0005C3 3E               [12] 1616 	addc	a, r6
      0005C4 FA               [12] 1617 	mov	r2,a
      0005C5 8F 03            [24] 1618 	mov	ar3,r7
      0005C7 89 82            [24] 1619 	mov	dpl,r1
      0005C9 8A 83            [24] 1620 	mov	dph,r2
      0005CB 8B F0            [24] 1621 	mov	b,r3
      0005CD 12 13 EC         [24] 1622 	lcall	__gptrget
      0005D0 F9               [12] 1623 	mov	r1,a
      0005D1 B9 41 02         [24] 1624 	cjne	r1,#0x41,00657$
      0005D4 80 03            [24] 1625 	sjmp	00658$
      0005D6                       1626 00657$:
      0005D6 02 06 D2         [24] 1627 	ljmp	00114$
      0005D9                       1628 00658$:
                                   1629 ;	main.c:380: command[4] == 'Y' &&
      0005D9 74 04            [12] 1630 	mov	a,#0x04
      0005DB 2D               [12] 1631 	add	a, r5
      0005DC F9               [12] 1632 	mov	r1,a
      0005DD E4               [12] 1633 	clr	a
      0005DE 3E               [12] 1634 	addc	a, r6
      0005DF FA               [12] 1635 	mov	r2,a
      0005E0 8F 03            [24] 1636 	mov	ar3,r7
      0005E2 89 82            [24] 1637 	mov	dpl,r1
      0005E4 8A 83            [24] 1638 	mov	dph,r2
      0005E6 8B F0            [24] 1639 	mov	b,r3
      0005E8 12 13 EC         [24] 1640 	lcall	__gptrget
      0005EB F9               [12] 1641 	mov	r1,a
      0005EC B9 59 02         [24] 1642 	cjne	r1,#0x59,00659$
      0005EF 80 03            [24] 1643 	sjmp	00660$
      0005F1                       1644 00659$:
      0005F1 02 06 D2         [24] 1645 	ljmp	00114$
      0005F4                       1646 00660$:
                                   1647 ;	main.c:381: command[5] == ',')
      0005F4 74 05            [12] 1648 	mov	a,#0x05
      0005F6 2D               [12] 1649 	add	a, r5
      0005F7 F9               [12] 1650 	mov	r1,a
      0005F8 E4               [12] 1651 	clr	a
      0005F9 3E               [12] 1652 	addc	a, r6
      0005FA FA               [12] 1653 	mov	r2,a
      0005FB 8F 03            [24] 1654 	mov	ar3,r7
      0005FD 89 82            [24] 1655 	mov	dpl,r1
      0005FF 8A 83            [24] 1656 	mov	dph,r2
      000601 8B F0            [24] 1657 	mov	b,r3
      000603 12 13 EC         [24] 1658 	lcall	__gptrget
      000606 F9               [12] 1659 	mov	r1,a
      000607 B9 2C 02         [24] 1660 	cjne	r1,#0x2c,00661$
      00060A 80 03            [24] 1661 	sjmp	00662$
      00060C                       1662 00661$:
      00060C 02 06 D2         [24] 1663 	ljmp	00114$
      00060F                       1664 00662$:
                                   1665 ;	main.c:383: if (command[6] == 'O' &&
      00060F 74 06            [12] 1666 	mov	a,#0x06
      000611 2D               [12] 1667 	add	a, r5
      000612 F9               [12] 1668 	mov	r1,a
      000613 E4               [12] 1669 	clr	a
      000614 3E               [12] 1670 	addc	a, r6
      000615 FA               [12] 1671 	mov	r2,a
      000616 8F 03            [24] 1672 	mov	ar3,r7
      000618 89 82            [24] 1673 	mov	dpl,r1
      00061A 8A 83            [24] 1674 	mov	dph,r2
      00061C 8B F0            [24] 1675 	mov	b,r3
      00061E 12 13 EC         [24] 1676 	lcall	__gptrget
      000621 F9               [12] 1677 	mov	r1,a
      000622 E4               [12] 1678 	clr	a
      000623 B9 4F 01         [24] 1679 	cjne	r1,#0x4f,00663$
      000626 04               [12] 1680 	inc	a
      000627                       1681 00663$:
      000627 FB               [12] 1682 	mov	r3,a
      000628 60 57            [24] 1683 	jz	00105$
                                   1684 ;	main.c:384: command[7] == 'N' &&
      00062A 74 07            [12] 1685 	mov	a,#0x07
      00062C 2D               [12] 1686 	add	a, r5
      00062D F8               [12] 1687 	mov	r0,a
      00062E E4               [12] 1688 	clr	a
      00062F 3E               [12] 1689 	addc	a, r6
      000630 F9               [12] 1690 	mov	r1,a
      000631 8F 02            [24] 1691 	mov	ar2,r7
      000633 88 82            [24] 1692 	mov	dpl,r0
      000635 89 83            [24] 1693 	mov	dph,r1
      000637 8A F0            [24] 1694 	mov	b,r2
      000639 12 13 EC         [24] 1695 	lcall	__gptrget
      00063C F8               [12] 1696 	mov	r0,a
      00063D B8 4E 41         [24] 1697 	cjne	r0,#0x4e,00105$
                                   1698 ;	main.c:385: command[8] == '\0')
      000640 74 08            [12] 1699 	mov	a,#0x08
      000642 2D               [12] 1700 	add	a, r5
      000643 F8               [12] 1701 	mov	r0,a
      000644 E4               [12] 1702 	clr	a
      000645 3E               [12] 1703 	addc	a, r6
      000646 F9               [12] 1704 	mov	r1,a
      000647 8F 02            [24] 1705 	mov	ar2,r7
      000649 88 82            [24] 1706 	mov	dpl,r0
      00064B 89 83            [24] 1707 	mov	dph,r1
      00064D 8A F0            [24] 1708 	mov	b,r2
      00064F 12 13 EC         [24] 1709 	lcall	__gptrget
      000652 70 2D            [24] 1710 	jnz	00105$
                                   1711 ;	main.c:387: if (!fault_active)
      000654 E5 2F            [12] 1712 	mov	a,_fault_active
      000656 70 08            [24] 1713 	jnz	00102$
                                   1714 ;	main.c:389: relay_set(1);
      000658 75 82 01         [24] 1715 	mov	dpl, #0x01
      00065B 12 01 6A         [24] 1716 	lcall	_relay_set
      00065E 80 06            [24] 1717 	sjmp	00103$
      000660                       1718 00102$:
                                   1719 ;	main.c:393: relay_set(0);
      000660 75 82 00         [24] 1720 	mov	dpl, #0x00
      000663 12 01 6A         [24] 1721 	lcall	_relay_set
      000666                       1722 00103$:
                                   1723 ;	main.c:397: relay_state ? "RELAY,ON\r\n" : "RELAY,OFF\r\n"
      000666 E5 2D            [12] 1724 	mov	a,_relay_state
      000668 60 06            [24] 1725 	jz	00183$
      00066A 79 66            [12] 1726 	mov	r1,#___str_20
      00066C 7A 14            [12] 1727 	mov	r2,#(___str_20 >> 8)
      00066E 80 04            [24] 1728 	sjmp	00184$
      000670                       1729 00183$:
                                   1730 ;	main.c:398: );
      000670 79 71            [12] 1731 	mov	r1,#___str_21
      000672 7A 14            [12] 1732 	mov	r2,#(___str_21 >> 8)
      000674                       1733 00184$:
      000674 8A 00            [24] 1734 	mov	ar0,r2
      000676 7A 80            [12] 1735 	mov	r2,#0x80
      000678 89 82            [24] 1736 	mov	dpl, r1
      00067A 88 83            [24] 1737 	mov	dph, r0
      00067C 8A F0            [24] 1738 	mov	b, r2
                                   1739 ;	main.c:400: return;
      00067E 02 12 8F         [24] 1740 	ljmp	_uart_write_string
      000681                       1741 00105$:
                                   1742 ;	main.c:403: if (command[6] == 'O' &&
      000681 EB               [12] 1743 	mov	a,r3
      000682 60 4E            [24] 1744 	jz	00114$
                                   1745 ;	main.c:404: command[7] == 'F' &&
      000684 74 07            [12] 1746 	mov	a,#0x07
      000686 2D               [12] 1747 	add	a, r5
      000687 F9               [12] 1748 	mov	r1,a
      000688 E4               [12] 1749 	clr	a
      000689 3E               [12] 1750 	addc	a, r6
      00068A FA               [12] 1751 	mov	r2,a
      00068B 8F 03            [24] 1752 	mov	ar3,r7
      00068D 89 82            [24] 1753 	mov	dpl,r1
      00068F 8A 83            [24] 1754 	mov	dph,r2
      000691 8B F0            [24] 1755 	mov	b,r3
      000693 12 13 EC         [24] 1756 	lcall	__gptrget
      000696 F9               [12] 1757 	mov	r1,a
      000697 B9 46 38         [24] 1758 	cjne	r1,#0x46,00114$
                                   1759 ;	main.c:405: command[8] == 'F' &&
      00069A 74 08            [12] 1760 	mov	a,#0x08
      00069C 2D               [12] 1761 	add	a, r5
      00069D F9               [12] 1762 	mov	r1,a
      00069E E4               [12] 1763 	clr	a
      00069F 3E               [12] 1764 	addc	a, r6
      0006A0 FA               [12] 1765 	mov	r2,a
      0006A1 8F 03            [24] 1766 	mov	ar3,r7
      0006A3 89 82            [24] 1767 	mov	dpl,r1
      0006A5 8A 83            [24] 1768 	mov	dph,r2
      0006A7 8B F0            [24] 1769 	mov	b,r3
      0006A9 12 13 EC         [24] 1770 	lcall	__gptrget
      0006AC F9               [12] 1771 	mov	r1,a
      0006AD B9 46 22         [24] 1772 	cjne	r1,#0x46,00114$
                                   1773 ;	main.c:406: command[9] == '\0')
      0006B0 74 09            [12] 1774 	mov	a,#0x09
      0006B2 2D               [12] 1775 	add	a, r5
      0006B3 F9               [12] 1776 	mov	r1,a
      0006B4 E4               [12] 1777 	clr	a
      0006B5 3E               [12] 1778 	addc	a, r6
      0006B6 FA               [12] 1779 	mov	r2,a
      0006B7 8F 03            [24] 1780 	mov	ar3,r7
      0006B9 89 82            [24] 1781 	mov	dpl,r1
      0006BB 8A 83            [24] 1782 	mov	dph,r2
      0006BD 8B F0            [24] 1783 	mov	b,r3
      0006BF 12 13 EC         [24] 1784 	lcall	__gptrget
                                   1785 ;	main.c:408: relay_set(0);
      0006C2 70 0E            [24] 1786 	jnz	00114$
      0006C4 F5 82            [12] 1787 	mov	dpl,a
      0006C6 12 01 6A         [24] 1788 	lcall	_relay_set
                                   1789 ;	main.c:410: uart_write_string("RELAY,OFF\r\n");
      0006C9 90 14 71         [24] 1790 	mov	dptr,#___str_21
      0006CC 75 F0 80         [24] 1791 	mov	b, #0x80
                                   1792 ;	main.c:411: return;
      0006CF 02 12 8F         [24] 1793 	ljmp	_uart_write_string
      0006D2                       1794 00114$:
                                   1795 ;	main.c:415: if (command[0] == 'B' &&
      0006D2 BC 42 02         [24] 1796 	cjne	r4,#0x42,00677$
      0006D5 80 03            [24] 1797 	sjmp	00678$
      0006D7                       1798 00677$:
      0006D7 02 08 21         [24] 1799 	ljmp	00130$
      0006DA                       1800 00678$:
                                   1801 ;	main.c:416: command[1] == 'U' &&
      0006DA 74 01            [12] 1802 	mov	a,#0x01
      0006DC 2D               [12] 1803 	add	a, r5
      0006DD F9               [12] 1804 	mov	r1,a
      0006DE E4               [12] 1805 	clr	a
      0006DF 3E               [12] 1806 	addc	a, r6
      0006E0 FA               [12] 1807 	mov	r2,a
      0006E1 8F 03            [24] 1808 	mov	ar3,r7
      0006E3 89 82            [24] 1809 	mov	dpl,r1
      0006E5 8A 83            [24] 1810 	mov	dph,r2
      0006E7 8B F0            [24] 1811 	mov	b,r3
      0006E9 12 13 EC         [24] 1812 	lcall	__gptrget
      0006EC F9               [12] 1813 	mov	r1,a
      0006ED B9 55 02         [24] 1814 	cjne	r1,#0x55,00679$
      0006F0 80 03            [24] 1815 	sjmp	00680$
      0006F2                       1816 00679$:
      0006F2 02 08 21         [24] 1817 	ljmp	00130$
      0006F5                       1818 00680$:
                                   1819 ;	main.c:417: command[2] == 'Z' &&
      0006F5 74 02            [12] 1820 	mov	a,#0x02
      0006F7 2D               [12] 1821 	add	a, r5
      0006F8 F9               [12] 1822 	mov	r1,a
      0006F9 E4               [12] 1823 	clr	a
      0006FA 3E               [12] 1824 	addc	a, r6
      0006FB FA               [12] 1825 	mov	r2,a
      0006FC 8F 03            [24] 1826 	mov	ar3,r7
      0006FE 89 82            [24] 1827 	mov	dpl,r1
      000700 8A 83            [24] 1828 	mov	dph,r2
      000702 8B F0            [24] 1829 	mov	b,r3
      000704 12 13 EC         [24] 1830 	lcall	__gptrget
      000707 F9               [12] 1831 	mov	r1,a
      000708 B9 5A 02         [24] 1832 	cjne	r1,#0x5a,00681$
      00070B 80 03            [24] 1833 	sjmp	00682$
      00070D                       1834 00681$:
      00070D 02 08 21         [24] 1835 	ljmp	00130$
      000710                       1836 00682$:
                                   1837 ;	main.c:418: command[3] == 'Z' &&
      000710 74 03            [12] 1838 	mov	a,#0x03
      000712 2D               [12] 1839 	add	a, r5
      000713 F9               [12] 1840 	mov	r1,a
      000714 E4               [12] 1841 	clr	a
      000715 3E               [12] 1842 	addc	a, r6
      000716 FA               [12] 1843 	mov	r2,a
      000717 8F 03            [24] 1844 	mov	ar3,r7
      000719 89 82            [24] 1845 	mov	dpl,r1
      00071B 8A 83            [24] 1846 	mov	dph,r2
      00071D 8B F0            [24] 1847 	mov	b,r3
      00071F 12 13 EC         [24] 1848 	lcall	__gptrget
      000722 F9               [12] 1849 	mov	r1,a
      000723 B9 5A 02         [24] 1850 	cjne	r1,#0x5a,00683$
      000726 80 03            [24] 1851 	sjmp	00684$
      000728                       1852 00683$:
      000728 02 08 21         [24] 1853 	ljmp	00130$
      00072B                       1854 00684$:
                                   1855 ;	main.c:419: command[4] == 'E' &&
      00072B 74 04            [12] 1856 	mov	a,#0x04
      00072D 2D               [12] 1857 	add	a, r5
      00072E F9               [12] 1858 	mov	r1,a
      00072F E4               [12] 1859 	clr	a
      000730 3E               [12] 1860 	addc	a, r6
      000731 FA               [12] 1861 	mov	r2,a
      000732 8F 03            [24] 1862 	mov	ar3,r7
      000734 89 82            [24] 1863 	mov	dpl,r1
      000736 8A 83            [24] 1864 	mov	dph,r2
      000738 8B F0            [24] 1865 	mov	b,r3
      00073A 12 13 EC         [24] 1866 	lcall	__gptrget
      00073D F9               [12] 1867 	mov	r1,a
      00073E B9 45 02         [24] 1868 	cjne	r1,#0x45,00685$
      000741 80 03            [24] 1869 	sjmp	00686$
      000743                       1870 00685$:
      000743 02 08 21         [24] 1871 	ljmp	00130$
      000746                       1872 00686$:
                                   1873 ;	main.c:420: command[5] == 'R' &&
      000746 74 05            [12] 1874 	mov	a,#0x05
      000748 2D               [12] 1875 	add	a, r5
      000749 F9               [12] 1876 	mov	r1,a
      00074A E4               [12] 1877 	clr	a
      00074B 3E               [12] 1878 	addc	a, r6
      00074C FA               [12] 1879 	mov	r2,a
      00074D 8F 03            [24] 1880 	mov	ar3,r7
      00074F 89 82            [24] 1881 	mov	dpl,r1
      000751 8A 83            [24] 1882 	mov	dph,r2
      000753 8B F0            [24] 1883 	mov	b,r3
      000755 12 13 EC         [24] 1884 	lcall	__gptrget
      000758 F9               [12] 1885 	mov	r1,a
      000759 B9 52 02         [24] 1886 	cjne	r1,#0x52,00687$
      00075C 80 03            [24] 1887 	sjmp	00688$
      00075E                       1888 00687$:
      00075E 02 08 21         [24] 1889 	ljmp	00130$
      000761                       1890 00688$:
                                   1891 ;	main.c:421: command[6] == ',')
      000761 74 06            [12] 1892 	mov	a,#0x06
      000763 2D               [12] 1893 	add	a, r5
      000764 F9               [12] 1894 	mov	r1,a
      000765 E4               [12] 1895 	clr	a
      000766 3E               [12] 1896 	addc	a, r6
      000767 FA               [12] 1897 	mov	r2,a
      000768 8F 03            [24] 1898 	mov	ar3,r7
      00076A 89 82            [24] 1899 	mov	dpl,r1
      00076C 8A 83            [24] 1900 	mov	dph,r2
      00076E 8B F0            [24] 1901 	mov	b,r3
      000770 12 13 EC         [24] 1902 	lcall	__gptrget
      000773 F9               [12] 1903 	mov	r1,a
      000774 B9 2C 02         [24] 1904 	cjne	r1,#0x2c,00689$
      000777 80 03            [24] 1905 	sjmp	00690$
      000779                       1906 00689$:
      000779 02 08 21         [24] 1907 	ljmp	00130$
      00077C                       1908 00690$:
                                   1909 ;	main.c:423: if (command[7] == 'O' &&
      00077C 74 07            [12] 1910 	mov	a,#0x07
      00077E 2D               [12] 1911 	add	a, r5
      00077F F9               [12] 1912 	mov	r1,a
      000780 E4               [12] 1913 	clr	a
      000781 3E               [12] 1914 	addc	a, r6
      000782 FA               [12] 1915 	mov	r2,a
      000783 8F 03            [24] 1916 	mov	ar3,r7
      000785 89 82            [24] 1917 	mov	dpl,r1
      000787 8A 83            [24] 1918 	mov	dph,r2
      000789 8B F0            [24] 1919 	mov	b,r3
      00078B 12 13 EC         [24] 1920 	lcall	__gptrget
      00078E F9               [12] 1921 	mov	r1,a
      00078F E4               [12] 1922 	clr	a
      000790 B9 4F 01         [24] 1923 	cjne	r1,#0x4f,00691$
      000793 04               [12] 1924 	inc	a
      000794                       1925 00691$:
      000794 FB               [12] 1926 	mov	r3,a
      000795 60 39            [24] 1927 	jz	00121$
                                   1928 ;	main.c:424: command[8] == 'N' &&
      000797 74 08            [12] 1929 	mov	a,#0x08
      000799 2D               [12] 1930 	add	a, r5
      00079A F8               [12] 1931 	mov	r0,a
      00079B E4               [12] 1932 	clr	a
      00079C 3E               [12] 1933 	addc	a, r6
      00079D F9               [12] 1934 	mov	r1,a
      00079E 8F 02            [24] 1935 	mov	ar2,r7
      0007A0 88 82            [24] 1936 	mov	dpl,r0
      0007A2 89 83            [24] 1937 	mov	dph,r1
      0007A4 8A F0            [24] 1938 	mov	b,r2
      0007A6 12 13 EC         [24] 1939 	lcall	__gptrget
      0007A9 F8               [12] 1940 	mov	r0,a
      0007AA B8 4E 23         [24] 1941 	cjne	r0,#0x4e,00121$
                                   1942 ;	main.c:425: command[9] == '\0')
      0007AD 74 09            [12] 1943 	mov	a,#0x09
      0007AF 2D               [12] 1944 	add	a, r5
      0007B0 F8               [12] 1945 	mov	r0,a
      0007B1 E4               [12] 1946 	clr	a
      0007B2 3E               [12] 1947 	addc	a, r6
      0007B3 F9               [12] 1948 	mov	r1,a
      0007B4 8F 02            [24] 1949 	mov	ar2,r7
      0007B6 88 82            [24] 1950 	mov	dpl,r0
      0007B8 89 83            [24] 1951 	mov	dph,r1
      0007BA 8A F0            [24] 1952 	mov	b,r2
      0007BC 12 13 EC         [24] 1953 	lcall	__gptrget
      0007BF 70 0F            [24] 1954 	jnz	00121$
                                   1955 ;	main.c:427: buzzer_set(1);
      0007C1 75 82 01         [24] 1956 	mov	dpl, #0x01
      0007C4 12 01 7A         [24] 1957 	lcall	_buzzer_set
                                   1958 ;	main.c:429: uart_write_string("BUZZER,ON\r\n");
      0007C7 90 14 7D         [24] 1959 	mov	dptr,#___str_22
      0007CA 75 F0 80         [24] 1960 	mov	b, #0x80
                                   1961 ;	main.c:430: return;
      0007CD 02 12 8F         [24] 1962 	ljmp	_uart_write_string
      0007D0                       1963 00121$:
                                   1964 ;	main.c:433: if (command[7] == 'O' &&
      0007D0 EB               [12] 1965 	mov	a,r3
      0007D1 60 4E            [24] 1966 	jz	00130$
                                   1967 ;	main.c:434: command[8] == 'F' &&
      0007D3 74 08            [12] 1968 	mov	a,#0x08
      0007D5 2D               [12] 1969 	add	a, r5
      0007D6 F9               [12] 1970 	mov	r1,a
      0007D7 E4               [12] 1971 	clr	a
      0007D8 3E               [12] 1972 	addc	a, r6
      0007D9 FA               [12] 1973 	mov	r2,a
      0007DA 8F 03            [24] 1974 	mov	ar3,r7
      0007DC 89 82            [24] 1975 	mov	dpl,r1
      0007DE 8A 83            [24] 1976 	mov	dph,r2
      0007E0 8B F0            [24] 1977 	mov	b,r3
      0007E2 12 13 EC         [24] 1978 	lcall	__gptrget
      0007E5 F9               [12] 1979 	mov	r1,a
      0007E6 B9 46 38         [24] 1980 	cjne	r1,#0x46,00130$
                                   1981 ;	main.c:435: command[9] == 'F' &&
      0007E9 74 09            [12] 1982 	mov	a,#0x09
      0007EB 2D               [12] 1983 	add	a, r5
      0007EC F9               [12] 1984 	mov	r1,a
      0007ED E4               [12] 1985 	clr	a
      0007EE 3E               [12] 1986 	addc	a, r6
      0007EF FA               [12] 1987 	mov	r2,a
      0007F0 8F 03            [24] 1988 	mov	ar3,r7
      0007F2 89 82            [24] 1989 	mov	dpl,r1
      0007F4 8A 83            [24] 1990 	mov	dph,r2
      0007F6 8B F0            [24] 1991 	mov	b,r3
      0007F8 12 13 EC         [24] 1992 	lcall	__gptrget
      0007FB F9               [12] 1993 	mov	r1,a
      0007FC B9 46 22         [24] 1994 	cjne	r1,#0x46,00130$
                                   1995 ;	main.c:436: command[10] == '\0')
      0007FF 74 0A            [12] 1996 	mov	a,#0x0a
      000801 2D               [12] 1997 	add	a, r5
      000802 F9               [12] 1998 	mov	r1,a
      000803 E4               [12] 1999 	clr	a
      000804 3E               [12] 2000 	addc	a, r6
      000805 FA               [12] 2001 	mov	r2,a
      000806 8F 03            [24] 2002 	mov	ar3,r7
      000808 89 82            [24] 2003 	mov	dpl,r1
      00080A 8A 83            [24] 2004 	mov	dph,r2
      00080C 8B F0            [24] 2005 	mov	b,r3
      00080E 12 13 EC         [24] 2006 	lcall	__gptrget
                                   2007 ;	main.c:438: buzzer_set(0);
      000811 70 0E            [24] 2008 	jnz	00130$
      000813 F5 82            [12] 2009 	mov	dpl,a
      000815 12 01 7A         [24] 2010 	lcall	_buzzer_set
                                   2011 ;	main.c:440: uart_write_string("BUZZER,OFF\r\n");
      000818 90 14 89         [24] 2012 	mov	dptr,#___str_23
      00081B 75 F0 80         [24] 2013 	mov	b, #0x80
                                   2014 ;	main.c:441: return;
      00081E 02 12 8F         [24] 2015 	ljmp	_uart_write_string
      000821                       2016 00130$:
                                   2017 ;	main.c:445: if (command[0] == 'S' &&
      000821 BC 53 02         [24] 2018 	cjne	r4,#0x53,00703$
      000824 80 03            [24] 2019 	sjmp	00704$
      000826                       2020 00703$:
      000826 02 09 0F         [24] 2021 	ljmp	00138$
      000829                       2022 00704$:
                                   2023 ;	main.c:446: command[1] == 'T' &&
      000829 74 01            [12] 2024 	mov	a,#0x01
      00082B 2D               [12] 2025 	add	a, r5
      00082C F9               [12] 2026 	mov	r1,a
      00082D E4               [12] 2027 	clr	a
      00082E 3E               [12] 2028 	addc	a, r6
      00082F FA               [12] 2029 	mov	r2,a
      000830 8F 03            [24] 2030 	mov	ar3,r7
      000832 89 82            [24] 2031 	mov	dpl,r1
      000834 8A 83            [24] 2032 	mov	dph,r2
      000836 8B F0            [24] 2033 	mov	b,r3
      000838 12 13 EC         [24] 2034 	lcall	__gptrget
      00083B F9               [12] 2035 	mov	r1,a
      00083C B9 54 02         [24] 2036 	cjne	r1,#0x54,00705$
      00083F 80 03            [24] 2037 	sjmp	00706$
      000841                       2038 00705$:
      000841 02 09 0F         [24] 2039 	ljmp	00138$
      000844                       2040 00706$:
                                   2041 ;	main.c:447: command[2] == 'A' &&
      000844 74 02            [12] 2042 	mov	a,#0x02
      000846 2D               [12] 2043 	add	a, r5
      000847 F9               [12] 2044 	mov	r1,a
      000848 E4               [12] 2045 	clr	a
      000849 3E               [12] 2046 	addc	a, r6
      00084A FA               [12] 2047 	mov	r2,a
      00084B 8F 03            [24] 2048 	mov	ar3,r7
      00084D 89 82            [24] 2049 	mov	dpl,r1
      00084F 8A 83            [24] 2050 	mov	dph,r2
      000851 8B F0            [24] 2051 	mov	b,r3
      000853 12 13 EC         [24] 2052 	lcall	__gptrget
      000856 F9               [12] 2053 	mov	r1,a
      000857 B9 41 02         [24] 2054 	cjne	r1,#0x41,00707$
      00085A 80 03            [24] 2055 	sjmp	00708$
      00085C                       2056 00707$:
      00085C 02 09 0F         [24] 2057 	ljmp	00138$
      00085F                       2058 00708$:
                                   2059 ;	main.c:448: command[3] == 'T' &&
      00085F 74 03            [12] 2060 	mov	a,#0x03
      000861 2D               [12] 2061 	add	a, r5
      000862 F9               [12] 2062 	mov	r1,a
      000863 E4               [12] 2063 	clr	a
      000864 3E               [12] 2064 	addc	a, r6
      000865 FA               [12] 2065 	mov	r2,a
      000866 8F 03            [24] 2066 	mov	ar3,r7
      000868 89 82            [24] 2067 	mov	dpl,r1
      00086A 8A 83            [24] 2068 	mov	dph,r2
      00086C 8B F0            [24] 2069 	mov	b,r3
      00086E 12 13 EC         [24] 2070 	lcall	__gptrget
      000871 F9               [12] 2071 	mov	r1,a
      000872 B9 54 02         [24] 2072 	cjne	r1,#0x54,00709$
      000875 80 03            [24] 2073 	sjmp	00710$
      000877                       2074 00709$:
      000877 02 09 0F         [24] 2075 	ljmp	00138$
      00087A                       2076 00710$:
                                   2077 ;	main.c:449: command[4] == 'U' &&
      00087A 74 04            [12] 2078 	mov	a,#0x04
      00087C 2D               [12] 2079 	add	a, r5
      00087D F9               [12] 2080 	mov	r1,a
      00087E E4               [12] 2081 	clr	a
      00087F 3E               [12] 2082 	addc	a, r6
      000880 FA               [12] 2083 	mov	r2,a
      000881 8F 03            [24] 2084 	mov	ar3,r7
      000883 89 82            [24] 2085 	mov	dpl,r1
      000885 8A 83            [24] 2086 	mov	dph,r2
      000887 8B F0            [24] 2087 	mov	b,r3
      000889 12 13 EC         [24] 2088 	lcall	__gptrget
      00088C F9               [12] 2089 	mov	r1,a
      00088D B9 55 02         [24] 2090 	cjne	r1,#0x55,00711$
      000890 80 02            [24] 2091 	sjmp	00712$
      000892                       2092 00711$:
      000892 80 7B            [24] 2093 	sjmp	00138$
      000894                       2094 00712$:
                                   2095 ;	main.c:450: command[5] == 'S' &&
      000894 74 05            [12] 2096 	mov	a,#0x05
      000896 2D               [12] 2097 	add	a, r5
      000897 F9               [12] 2098 	mov	r1,a
      000898 E4               [12] 2099 	clr	a
      000899 3E               [12] 2100 	addc	a, r6
      00089A FA               [12] 2101 	mov	r2,a
      00089B 8F 03            [24] 2102 	mov	ar3,r7
      00089D 89 82            [24] 2103 	mov	dpl,r1
      00089F 8A 83            [24] 2104 	mov	dph,r2
      0008A1 8B F0            [24] 2105 	mov	b,r3
      0008A3 12 13 EC         [24] 2106 	lcall	__gptrget
      0008A6 F9               [12] 2107 	mov	r1,a
      0008A7 B9 53 65         [24] 2108 	cjne	r1,#0x53,00138$
                                   2109 ;	main.c:451: command[6] == '\0')
      0008AA 74 06            [12] 2110 	mov	a,#0x06
      0008AC 2D               [12] 2111 	add	a, r5
      0008AD F9               [12] 2112 	mov	r1,a
      0008AE E4               [12] 2113 	clr	a
      0008AF 3E               [12] 2114 	addc	a, r6
      0008B0 FA               [12] 2115 	mov	r2,a
      0008B1 8F 03            [24] 2116 	mov	ar3,r7
      0008B3 89 82            [24] 2117 	mov	dpl,r1
      0008B5 8A 83            [24] 2118 	mov	dph,r2
      0008B7 8B F0            [24] 2119 	mov	b,r3
      0008B9 12 13 EC         [24] 2120 	lcall	__gptrget
      0008BC 70 51            [24] 2121 	jnz	00138$
                                   2122 ;	main.c:453: uart_write_string("STATUS,RELAY=");
      0008BE 90 14 96         [24] 2123 	mov	dptr,#___str_24
      0008C1 75 F0 80         [24] 2124 	mov	b, #0x80
      0008C4 12 12 8F         [24] 2125 	lcall	_uart_write_string
                                   2126 ;	main.c:454: uart_write_string(relay_state ? "ON" : "OFF");
      0008C7 E5 2D            [12] 2127 	mov	a,_relay_state
      0008C9 60 06            [24] 2128 	jz	00185$
      0008CB 7A A4            [12] 2129 	mov	r2,#___str_25
      0008CD 7B 14            [12] 2130 	mov	r3,#(___str_25 >> 8)
      0008CF 80 04            [24] 2131 	sjmp	00186$
      0008D1                       2132 00185$:
      0008D1 7A A7            [12] 2133 	mov	r2,#___str_26
      0008D3 7B 14            [12] 2134 	mov	r3,#(___str_26 >> 8)
      0008D5                       2135 00186$:
      0008D5 8B 01            [24] 2136 	mov	ar1,r3
      0008D7 7B 80            [12] 2137 	mov	r3,#0x80
      0008D9 8A 82            [24] 2138 	mov	dpl, r2
      0008DB 89 83            [24] 2139 	mov	dph, r1
      0008DD 8B F0            [24] 2140 	mov	b, r3
      0008DF 12 12 8F         [24] 2141 	lcall	_uart_write_string
                                   2142 ;	main.c:455: uart_write_string(",BUZZER=");
      0008E2 90 14 AB         [24] 2143 	mov	dptr,#___str_27
      0008E5 75 F0 80         [24] 2144 	mov	b, #0x80
      0008E8 12 12 8F         [24] 2145 	lcall	_uart_write_string
                                   2146 ;	main.c:456: uart_write_string(buzzer_state ? "ON" : "OFF");
      0008EB E5 2E            [12] 2147 	mov	a,_buzzer_state
      0008ED 60 06            [24] 2148 	jz	00187$
      0008EF 7A A4            [12] 2149 	mov	r2,#___str_25
      0008F1 7B 14            [12] 2150 	mov	r3,#(___str_25 >> 8)
      0008F3 80 04            [24] 2151 	sjmp	00188$
      0008F5                       2152 00187$:
      0008F5 7A A7            [12] 2153 	mov	r2,#___str_26
      0008F7 7B 14            [12] 2154 	mov	r3,#(___str_26 >> 8)
      0008F9                       2155 00188$:
      0008F9 8B 01            [24] 2156 	mov	ar1,r3
      0008FB 7B 80            [12] 2157 	mov	r3,#0x80
      0008FD 8A 82            [24] 2158 	mov	dpl, r2
      0008FF 89 83            [24] 2159 	mov	dph, r1
      000901 8B F0            [24] 2160 	mov	b, r3
      000903 12 12 8F         [24] 2161 	lcall	_uart_write_string
                                   2162 ;	main.c:457: uart_write_string("\r\n");
      000906 90 14 B4         [24] 2163 	mov	dptr,#___str_28
      000909 75 F0 80         [24] 2164 	mov	b, #0x80
                                   2165 ;	main.c:459: return;
      00090C 02 12 8F         [24] 2166 	ljmp	_uart_write_string
      00090F                       2167 00138$:
                                   2168 ;	main.c:462: if (command[0] == 'D' &&
      00090F E4               [12] 2169 	clr	a
      000910 BC 44 01         [24] 2170 	cjne	r4,#0x44,00718$
      000913 04               [12] 2171 	inc	a
      000914                       2172 00718$:
      000914 FB               [12] 2173 	mov	r3,a
      000915 70 03            [24] 2174 	jnz	00720$
      000917 02 09 99         [24] 2175 	ljmp	00148$
      00091A                       2176 00720$:
                                   2177 ;	main.c:463: command[1] == 'A' &&
      00091A 74 01            [12] 2178 	mov	a,#0x01
      00091C 2D               [12] 2179 	add	a, r5
      00091D F8               [12] 2180 	mov	r0,a
      00091E E4               [12] 2181 	clr	a
      00091F 3E               [12] 2182 	addc	a, r6
      000920 F9               [12] 2183 	mov	r1,a
      000921 8F 02            [24] 2184 	mov	ar2,r7
      000923 88 82            [24] 2185 	mov	dpl,r0
      000925 89 83            [24] 2186 	mov	dph,r1
      000927 8A F0            [24] 2187 	mov	b,r2
      000929 12 13 EC         [24] 2188 	lcall	__gptrget
      00092C F8               [12] 2189 	mov	r0,a
      00092D B8 41 69         [24] 2190 	cjne	r0,#0x41,00148$
                                   2191 ;	main.c:464: command[2] == 'T' &&
      000930 74 02            [12] 2192 	mov	a,#0x02
      000932 2D               [12] 2193 	add	a, r5
      000933 F8               [12] 2194 	mov	r0,a
      000934 E4               [12] 2195 	clr	a
      000935 3E               [12] 2196 	addc	a, r6
      000936 F9               [12] 2197 	mov	r1,a
      000937 8F 02            [24] 2198 	mov	ar2,r7
      000939 88 82            [24] 2199 	mov	dpl,r0
      00093B 89 83            [24] 2200 	mov	dph,r1
      00093D 8A F0            [24] 2201 	mov	b,r2
      00093F 12 13 EC         [24] 2202 	lcall	__gptrget
      000942 F8               [12] 2203 	mov	r0,a
      000943 B8 54 53         [24] 2204 	cjne	r0,#0x54,00148$
                                   2205 ;	main.c:465: command[3] == 'A' &&
      000946 74 03            [12] 2206 	mov	a,#0x03
      000948 2D               [12] 2207 	add	a, r5
      000949 F8               [12] 2208 	mov	r0,a
      00094A E4               [12] 2209 	clr	a
      00094B 3E               [12] 2210 	addc	a, r6
      00094C F9               [12] 2211 	mov	r1,a
      00094D 8F 02            [24] 2212 	mov	ar2,r7
      00094F 88 82            [24] 2213 	mov	dpl,r0
      000951 89 83            [24] 2214 	mov	dph,r1
      000953 8A F0            [24] 2215 	mov	b,r2
      000955 12 13 EC         [24] 2216 	lcall	__gptrget
      000958 F8               [12] 2217 	mov	r0,a
      000959 B8 41 3D         [24] 2218 	cjne	r0,#0x41,00148$
                                   2219 ;	main.c:466: command[4] == '1' &&
      00095C 74 04            [12] 2220 	mov	a,#0x04
      00095E 2D               [12] 2221 	add	a, r5
      00095F F8               [12] 2222 	mov	r0,a
      000960 E4               [12] 2223 	clr	a
      000961 3E               [12] 2224 	addc	a, r6
      000962 F9               [12] 2225 	mov	r1,a
      000963 8F 02            [24] 2226 	mov	ar2,r7
      000965 88 82            [24] 2227 	mov	dpl,r0
      000967 89 83            [24] 2228 	mov	dph,r1
      000969 8A F0            [24] 2229 	mov	b,r2
      00096B 12 13 EC         [24] 2230 	lcall	__gptrget
      00096E F8               [12] 2231 	mov	r0,a
      00096F B8 31 27         [24] 2232 	cjne	r0,#0x31,00148$
                                   2233 ;	main.c:467: command[5] == ',')
      000972 74 05            [12] 2234 	mov	a,#0x05
      000974 2D               [12] 2235 	add	a, r5
      000975 F8               [12] 2236 	mov	r0,a
      000976 E4               [12] 2237 	clr	a
      000977 3E               [12] 2238 	addc	a, r6
      000978 F9               [12] 2239 	mov	r1,a
      000979 8F 02            [24] 2240 	mov	ar2,r7
      00097B 88 82            [24] 2241 	mov	dpl,r0
      00097D 89 83            [24] 2242 	mov	dph,r1
      00097F 8A F0            [24] 2243 	mov	b,r2
      000981 12 13 EC         [24] 2244 	lcall	__gptrget
      000984 F8               [12] 2245 	mov	r0,a
      000985 B8 2C 11         [24] 2246 	cjne	r0,#0x2c,00148$
                                   2247 ;	main.c:469: if (process_data1())
      000988 12 03 42         [24] 2248 	lcall	_process_data1
      00098B E5 82            [12] 2249 	mov	a, dpl
      00098D 60 09            [24] 2250 	jz	00146$
                                   2251 ;	main.c:470: uart_write_string("ACK,DATA1\r\n");
      00098F 90 14 B7         [24] 2252 	mov	dptr,#___str_29
      000992 75 F0 80         [24] 2253 	mov	b, #0x80
                                   2254 ;	main.c:472: return;
      000995 02 12 8F         [24] 2255 	ljmp	_uart_write_string
      000998                       2256 00146$:
      000998 22               [24] 2257 	ret
      000999                       2258 00148$:
                                   2259 ;	main.c:475: if (command[0] == 'D' &&
      000999 EB               [12] 2260 	mov	a,r3
      00099A 70 03            [24] 2261 	jnz	00732$
      00099C 02 0A 1E         [24] 2262 	ljmp	00157$
      00099F                       2263 00732$:
                                   2264 ;	main.c:476: command[1] == 'A' &&
      00099F 74 01            [12] 2265 	mov	a,#0x01
      0009A1 2D               [12] 2266 	add	a, r5
      0009A2 F8               [12] 2267 	mov	r0,a
      0009A3 E4               [12] 2268 	clr	a
      0009A4 3E               [12] 2269 	addc	a, r6
      0009A5 F9               [12] 2270 	mov	r1,a
      0009A6 8F 02            [24] 2271 	mov	ar2,r7
      0009A8 88 82            [24] 2272 	mov	dpl,r0
      0009AA 89 83            [24] 2273 	mov	dph,r1
      0009AC 8A F0            [24] 2274 	mov	b,r2
      0009AE 12 13 EC         [24] 2275 	lcall	__gptrget
      0009B1 F8               [12] 2276 	mov	r0,a
      0009B2 B8 41 69         [24] 2277 	cjne	r0,#0x41,00157$
                                   2278 ;	main.c:477: command[2] == 'T' &&
      0009B5 74 02            [12] 2279 	mov	a,#0x02
      0009B7 2D               [12] 2280 	add	a, r5
      0009B8 F8               [12] 2281 	mov	r0,a
      0009B9 E4               [12] 2282 	clr	a
      0009BA 3E               [12] 2283 	addc	a, r6
      0009BB F9               [12] 2284 	mov	r1,a
      0009BC 8F 02            [24] 2285 	mov	ar2,r7
      0009BE 88 82            [24] 2286 	mov	dpl,r0
      0009C0 89 83            [24] 2287 	mov	dph,r1
      0009C2 8A F0            [24] 2288 	mov	b,r2
      0009C4 12 13 EC         [24] 2289 	lcall	__gptrget
      0009C7 F8               [12] 2290 	mov	r0,a
      0009C8 B8 54 53         [24] 2291 	cjne	r0,#0x54,00157$
                                   2292 ;	main.c:478: command[3] == 'A' &&
      0009CB 74 03            [12] 2293 	mov	a,#0x03
      0009CD 2D               [12] 2294 	add	a, r5
      0009CE F8               [12] 2295 	mov	r0,a
      0009CF E4               [12] 2296 	clr	a
      0009D0 3E               [12] 2297 	addc	a, r6
      0009D1 F9               [12] 2298 	mov	r1,a
      0009D2 8F 02            [24] 2299 	mov	ar2,r7
      0009D4 88 82            [24] 2300 	mov	dpl,r0
      0009D6 89 83            [24] 2301 	mov	dph,r1
      0009D8 8A F0            [24] 2302 	mov	b,r2
      0009DA 12 13 EC         [24] 2303 	lcall	__gptrget
      0009DD F8               [12] 2304 	mov	r0,a
      0009DE B8 41 3D         [24] 2305 	cjne	r0,#0x41,00157$
                                   2306 ;	main.c:479: command[4] == '2' &&
      0009E1 74 04            [12] 2307 	mov	a,#0x04
      0009E3 2D               [12] 2308 	add	a, r5
      0009E4 F8               [12] 2309 	mov	r0,a
      0009E5 E4               [12] 2310 	clr	a
      0009E6 3E               [12] 2311 	addc	a, r6
      0009E7 F9               [12] 2312 	mov	r1,a
      0009E8 8F 02            [24] 2313 	mov	ar2,r7
      0009EA 88 82            [24] 2314 	mov	dpl,r0
      0009EC 89 83            [24] 2315 	mov	dph,r1
      0009EE 8A F0            [24] 2316 	mov	b,r2
      0009F0 12 13 EC         [24] 2317 	lcall	__gptrget
      0009F3 F8               [12] 2318 	mov	r0,a
      0009F4 B8 32 27         [24] 2319 	cjne	r0,#0x32,00157$
                                   2320 ;	main.c:480: command[5] == ',')
      0009F7 74 05            [12] 2321 	mov	a,#0x05
      0009F9 2D               [12] 2322 	add	a, r5
      0009FA F8               [12] 2323 	mov	r0,a
      0009FB E4               [12] 2324 	clr	a
      0009FC 3E               [12] 2325 	addc	a, r6
      0009FD F9               [12] 2326 	mov	r1,a
      0009FE 8F 02            [24] 2327 	mov	ar2,r7
      000A00 88 82            [24] 2328 	mov	dpl,r0
      000A02 89 83            [24] 2329 	mov	dph,r1
      000A04 8A F0            [24] 2330 	mov	b,r2
      000A06 12 13 EC         [24] 2331 	lcall	__gptrget
      000A09 F8               [12] 2332 	mov	r0,a
      000A0A B8 2C 11         [24] 2333 	cjne	r0,#0x2c,00157$
                                   2334 ;	main.c:482: if (process_data2())
      000A0D 12 04 01         [24] 2335 	lcall	_process_data2
      000A10 E5 82            [12] 2336 	mov	a, dpl
      000A12 60 09            [24] 2337 	jz	00155$
                                   2338 ;	main.c:483: uart_write_string("ACK,DATA2\r\n");
      000A14 90 14 C3         [24] 2339 	mov	dptr,#___str_30
      000A17 75 F0 80         [24] 2340 	mov	b, #0x80
                                   2341 ;	main.c:485: return;
      000A1A 02 12 8F         [24] 2342 	ljmp	_uart_write_string
      000A1D                       2343 00155$:
      000A1D 22               [24] 2344 	ret
      000A1E                       2345 00157$:
                                   2346 ;	main.c:488: if (command[0] == 'D' &&
      000A1E EB               [12] 2347 	mov	a,r3
      000A1F 70 03            [24] 2348 	jnz	00744$
      000A21 02 0A A3         [24] 2349 	ljmp	00166$
      000A24                       2350 00744$:
                                   2351 ;	main.c:489: command[1] == 'A' &&
      000A24 74 01            [12] 2352 	mov	a,#0x01
      000A26 2D               [12] 2353 	add	a, r5
      000A27 F9               [12] 2354 	mov	r1,a
      000A28 E4               [12] 2355 	clr	a
      000A29 3E               [12] 2356 	addc	a, r6
      000A2A FA               [12] 2357 	mov	r2,a
      000A2B 8F 03            [24] 2358 	mov	ar3,r7
      000A2D 89 82            [24] 2359 	mov	dpl,r1
      000A2F 8A 83            [24] 2360 	mov	dph,r2
      000A31 8B F0            [24] 2361 	mov	b,r3
      000A33 12 13 EC         [24] 2362 	lcall	__gptrget
      000A36 F9               [12] 2363 	mov	r1,a
      000A37 B9 41 69         [24] 2364 	cjne	r1,#0x41,00166$
                                   2365 ;	main.c:490: command[2] == 'T' &&
      000A3A 74 02            [12] 2366 	mov	a,#0x02
      000A3C 2D               [12] 2367 	add	a, r5
      000A3D F9               [12] 2368 	mov	r1,a
      000A3E E4               [12] 2369 	clr	a
      000A3F 3E               [12] 2370 	addc	a, r6
      000A40 FA               [12] 2371 	mov	r2,a
      000A41 8F 03            [24] 2372 	mov	ar3,r7
      000A43 89 82            [24] 2373 	mov	dpl,r1
      000A45 8A 83            [24] 2374 	mov	dph,r2
      000A47 8B F0            [24] 2375 	mov	b,r3
      000A49 12 13 EC         [24] 2376 	lcall	__gptrget
      000A4C F9               [12] 2377 	mov	r1,a
      000A4D B9 54 53         [24] 2378 	cjne	r1,#0x54,00166$
                                   2379 ;	main.c:491: command[3] == 'A' &&
      000A50 74 03            [12] 2380 	mov	a,#0x03
      000A52 2D               [12] 2381 	add	a, r5
      000A53 F9               [12] 2382 	mov	r1,a
      000A54 E4               [12] 2383 	clr	a
      000A55 3E               [12] 2384 	addc	a, r6
      000A56 FA               [12] 2385 	mov	r2,a
      000A57 8F 03            [24] 2386 	mov	ar3,r7
      000A59 89 82            [24] 2387 	mov	dpl,r1
      000A5B 8A 83            [24] 2388 	mov	dph,r2
      000A5D 8B F0            [24] 2389 	mov	b,r3
      000A5F 12 13 EC         [24] 2390 	lcall	__gptrget
      000A62 F9               [12] 2391 	mov	r1,a
      000A63 B9 41 3D         [24] 2392 	cjne	r1,#0x41,00166$
                                   2393 ;	main.c:492: command[4] == '3' &&
      000A66 74 04            [12] 2394 	mov	a,#0x04
      000A68 2D               [12] 2395 	add	a, r5
      000A69 F9               [12] 2396 	mov	r1,a
      000A6A E4               [12] 2397 	clr	a
      000A6B 3E               [12] 2398 	addc	a, r6
      000A6C FA               [12] 2399 	mov	r2,a
      000A6D 8F 03            [24] 2400 	mov	ar3,r7
      000A6F 89 82            [24] 2401 	mov	dpl,r1
      000A71 8A 83            [24] 2402 	mov	dph,r2
      000A73 8B F0            [24] 2403 	mov	b,r3
      000A75 12 13 EC         [24] 2404 	lcall	__gptrget
      000A78 F9               [12] 2405 	mov	r1,a
      000A79 B9 33 27         [24] 2406 	cjne	r1,#0x33,00166$
                                   2407 ;	main.c:493: command[5] == ',')
      000A7C 74 05            [12] 2408 	mov	a,#0x05
      000A7E 2D               [12] 2409 	add	a, r5
      000A7F F9               [12] 2410 	mov	r1,a
      000A80 E4               [12] 2411 	clr	a
      000A81 3E               [12] 2412 	addc	a, r6
      000A82 FA               [12] 2413 	mov	r2,a
      000A83 8F 03            [24] 2414 	mov	ar3,r7
      000A85 89 82            [24] 2415 	mov	dpl,r1
      000A87 8A 83            [24] 2416 	mov	dph,r2
      000A89 8B F0            [24] 2417 	mov	b,r3
      000A8B 12 13 EC         [24] 2418 	lcall	__gptrget
      000A8E F9               [12] 2419 	mov	r1,a
      000A8F B9 2C 11         [24] 2420 	cjne	r1,#0x2c,00166$
                                   2421 ;	main.c:495: if (process_data3())
      000A92 12 04 A1         [24] 2422 	lcall	_process_data3
      000A95 E5 82            [12] 2423 	mov	a, dpl
      000A97 60 09            [24] 2424 	jz	00164$
                                   2425 ;	main.c:496: uart_write_string("ACK,DATA3\r\n");
      000A99 90 14 CF         [24] 2426 	mov	dptr,#___str_31
      000A9C 75 F0 80         [24] 2427 	mov	b, #0x80
                                   2428 ;	main.c:498: return;
      000A9F 02 12 8F         [24] 2429 	ljmp	_uart_write_string
      000AA2                       2430 00164$:
      000AA2 22               [24] 2431 	ret
      000AA3                       2432 00166$:
                                   2433 ;	main.c:501: if (command[0] == 'E' &&
      000AA3 BC 45 02         [24] 2434 	cjne	r4,#0x45,00756$
      000AA6 80 01            [24] 2435 	sjmp	00757$
      000AA8                       2436 00756$:
      000AA8 22               [24] 2437 	ret
      000AA9                       2438 00757$:
                                   2439 ;	main.c:502: command[1] == 'R' &&
      000AA9 74 01            [12] 2440 	mov	a,#0x01
      000AAB 2D               [12] 2441 	add	a, r5
      000AAC FA               [12] 2442 	mov	r2,a
      000AAD E4               [12] 2443 	clr	a
      000AAE 3E               [12] 2444 	addc	a, r6
      000AAF FB               [12] 2445 	mov	r3,a
      000AB0 8F 04            [24] 2446 	mov	ar4,r7
      000AB2 8A 82            [24] 2447 	mov	dpl,r2
      000AB4 8B 83            [24] 2448 	mov	dph,r3
      000AB6 8C F0            [24] 2449 	mov	b,r4
      000AB8 12 13 EC         [24] 2450 	lcall	__gptrget
      000ABB FA               [12] 2451 	mov	r2,a
      000ABC BA 52 02         [24] 2452 	cjne	r2,#0x52,00758$
      000ABF 80 01            [24] 2453 	sjmp	00759$
      000AC1                       2454 00758$:
      000AC1 22               [24] 2455 	ret
      000AC2                       2456 00759$:
                                   2457 ;	main.c:503: command[2] == 'R' &&
      000AC2 74 02            [12] 2458 	mov	a,#0x02
      000AC4 2D               [12] 2459 	add	a, r5
      000AC5 FA               [12] 2460 	mov	r2,a
      000AC6 E4               [12] 2461 	clr	a
      000AC7 3E               [12] 2462 	addc	a, r6
      000AC8 FB               [12] 2463 	mov	r3,a
      000AC9 8F 04            [24] 2464 	mov	ar4,r7
      000ACB 8A 82            [24] 2465 	mov	dpl,r2
      000ACD 8B 83            [24] 2466 	mov	dph,r3
      000ACF 8C F0            [24] 2467 	mov	b,r4
      000AD1 12 13 EC         [24] 2468 	lcall	__gptrget
      000AD4 FA               [12] 2469 	mov	r2,a
      000AD5 BA 52 50         [24] 2470 	cjne	r2,#0x52,00181$
                                   2471 ;	main.c:504: command[3] == 'O' &&
      000AD8 74 03            [12] 2472 	mov	a,#0x03
      000ADA 2D               [12] 2473 	add	a, r5
      000ADB FA               [12] 2474 	mov	r2,a
      000ADC E4               [12] 2475 	clr	a
      000ADD 3E               [12] 2476 	addc	a, r6
      000ADE FB               [12] 2477 	mov	r3,a
      000ADF 8F 04            [24] 2478 	mov	ar4,r7
      000AE1 8A 82            [24] 2479 	mov	dpl,r2
      000AE3 8B 83            [24] 2480 	mov	dph,r3
      000AE5 8C F0            [24] 2481 	mov	b,r4
      000AE7 12 13 EC         [24] 2482 	lcall	__gptrget
      000AEA FA               [12] 2483 	mov	r2,a
      000AEB BA 4F 3A         [24] 2484 	cjne	r2,#0x4f,00181$
                                   2485 ;	main.c:505: command[4] == 'R' &&
      000AEE 74 04            [12] 2486 	mov	a,#0x04
      000AF0 2D               [12] 2487 	add	a, r5
      000AF1 FA               [12] 2488 	mov	r2,a
      000AF2 E4               [12] 2489 	clr	a
      000AF3 3E               [12] 2490 	addc	a, r6
      000AF4 FB               [12] 2491 	mov	r3,a
      000AF5 8F 04            [24] 2492 	mov	ar4,r7
      000AF7 8A 82            [24] 2493 	mov	dpl,r2
      000AF9 8B 83            [24] 2494 	mov	dph,r3
      000AFB 8C F0            [24] 2495 	mov	b,r4
      000AFD 12 13 EC         [24] 2496 	lcall	__gptrget
      000B00 FA               [12] 2497 	mov	r2,a
      000B01 BA 52 24         [24] 2498 	cjne	r2,#0x52,00181$
                                   2499 ;	main.c:506: command[5] == ',')
      000B04 74 05            [12] 2500 	mov	a,#0x05
      000B06 2D               [12] 2501 	add	a, r5
      000B07 FD               [12] 2502 	mov	r5,a
      000B08 E4               [12] 2503 	clr	a
      000B09 3E               [12] 2504 	addc	a, r6
      000B0A FE               [12] 2505 	mov	r6,a
      000B0B 8D 82            [24] 2506 	mov	dpl,r5
      000B0D 8E 83            [24] 2507 	mov	dph,r6
      000B0F 8F F0            [24] 2508 	mov	b,r7
      000B11 12 13 EC         [24] 2509 	lcall	__gptrget
      000B14 FD               [12] 2510 	mov	r5,a
      000B15 BD 2C 10         [24] 2511 	cjne	r5,#0x2c,00181$
                                   2512 ;	main.c:508: if (process_error())
      000B18 12 04 D9         [24] 2513 	lcall	_process_error
      000B1B E5 82            [12] 2514 	mov	a, dpl
      000B1D 60 09            [24] 2515 	jz	00173$
                                   2516 ;	main.c:509: uart_write_string("ACK,ERROR\r\n");
      000B1F 90 14 DB         [24] 2517 	mov	dptr,#___str_32
      000B22 75 F0 80         [24] 2518 	mov	b, #0x80
      000B25 12 12 8F         [24] 2519 	lcall	_uart_write_string
      000B28                       2520 00173$:
                                   2521 ;	main.c:511: return;
      000B28                       2522 00181$:
                                   2523 ;	main.c:513: }
      000B28 22               [24] 2524 	ret
                                   2525 ;------------------------------------------------------------
                                   2526 ;Allocation info for local variables in function 'uart_receive_process'
                                   2527 ;------------------------------------------------------------
                                   2528 ;data          Allocated with name '_uart_receive_process_data_10000_132'
                                   2529 ;------------------------------------------------------------
                                   2530 ;	main.c:515: static void uart_receive_process(void)
                                   2531 ;	-----------------------------------------
                                   2532 ;	 function uart_receive_process
                                   2533 ;	-----------------------------------------
      000B29                       2534 _uart_receive_process:
                                   2535 ;	main.c:519: if (!uart_read_byte(&data))
      000B29 90 00 3A         [24] 2536 	mov	dptr,#_uart_receive_process_data_10000_132
      000B2C 75 F0 40         [24] 2537 	mov	b, #0x40
      000B2F 12 12 C6         [24] 2538 	lcall	_uart_read_byte
      000B32 E5 82            [12] 2539 	mov	a, dpl
      000B34 70 01            [24] 2540 	jnz	00102$
                                   2541 ;	main.c:520: return;
      000B36 22               [24] 2542 	ret
      000B37                       2543 00102$:
                                   2544 ;	main.c:522: if (data == '\r' || data == '\n')
      000B37 74 0D            [12] 2545 	mov	a,#0x0d
      000B39 B5 3A 02         [24] 2546 	cjne	a,_uart_receive_process_data_10000_132,00161$
      000B3C 80 05            [24] 2547 	sjmp	00105$
      000B3E                       2548 00161$:
      000B3E 74 0A            [12] 2549 	mov	a,#0x0a
      000B40 B5 3A 18         [24] 2550 	cjne	a,_uart_receive_process_data_10000_132,00106$
      000B43                       2551 00105$:
                                   2552 ;	main.c:524: if (rx_length > 0)
      000B43 E5 2C            [12] 2553 	mov	a,_rx_length
      000B45 60 13            [24] 2554 	jz	00104$
                                   2555 ;	main.c:526: rx_buffer[rx_length] = '\0';
      000B47 E5 2C            [12] 2556 	mov	a,_rx_length
      000B49 24 0C            [12] 2557 	add	a, #_rx_buffer
      000B4B F8               [12] 2558 	mov	r0,a
      000B4C 76 00            [12] 2559 	mov	@r0,#0x00
                                   2560 ;	main.c:528: process_command((char *)rx_buffer);
      000B4E 90 00 0C         [24] 2561 	mov	dptr,#_rx_buffer
      000B51 75 F0 40         [24] 2562 	mov	b, #0x40
      000B54 12 05 76         [24] 2563 	lcall	_process_command
                                   2564 ;	main.c:530: rx_length = 0;
      000B57 75 2C 00         [24] 2565 	mov	_rx_length,#0x00
      000B5A                       2566 00104$:
                                   2567 ;	main.c:533: return;
      000B5A 22               [24] 2568 	ret
      000B5B                       2569 00106$:
                                   2570 ;	main.c:536: if (data == 8 || data == 127)
      000B5B 74 08            [12] 2571 	mov	a,#0x08
      000B5D B5 3A 02         [24] 2572 	cjne	a,_uart_receive_process_data_10000_132,00165$
      000B60 80 05            [24] 2573 	sjmp	00110$
      000B62                       2574 00165$:
      000B62 74 7F            [12] 2575 	mov	a,#0x7f
      000B64 B5 3A 07         [24] 2576 	cjne	a,_uart_receive_process_data_10000_132,00111$
      000B67                       2577 00110$:
                                   2578 ;	main.c:538: if (rx_length > 0)
      000B67 E5 2C            [12] 2579 	mov	a,_rx_length
      000B69 60 02            [24] 2580 	jz	00109$
                                   2581 ;	main.c:539: rx_length--;
      000B6B 15 2C            [12] 2582 	dec	_rx_length
      000B6D                       2583 00109$:
                                   2584 ;	main.c:541: return;
      000B6D 22               [24] 2585 	ret
      000B6E                       2586 00111$:
                                   2587 ;	main.c:544: if (rx_length < RX_BUFFER_SIZE - 1)
      000B6E 74 E1            [12] 2588 	mov	a,#0x100 - 0x1f
      000B70 25 2C            [12] 2589 	add	a,_rx_length
      000B72 40 0B            [24] 2590 	jc	00114$
                                   2591 ;	main.c:546: rx_buffer[rx_length++] = data;
      000B74 AF 2C            [24] 2592 	mov	r7,_rx_length
      000B76 05 2C            [12] 2593 	inc	_rx_length
      000B78 EF               [12] 2594 	mov	a,r7
      000B79 24 0C            [12] 2595 	add	a, #_rx_buffer
      000B7B F8               [12] 2596 	mov	r0,a
      000B7C A6 3A            [24] 2597 	mov	@r0,_uart_receive_process_data_10000_132
      000B7E 22               [24] 2598 	ret
      000B7F                       2599 00114$:
                                   2600 ;	main.c:550: rx_length = 0;
      000B7F 75 2C 00         [24] 2601 	mov	_rx_length,#0x00
                                   2602 ;	main.c:552: }
      000B82 22               [24] 2603 	ret
                                   2604 ;------------------------------------------------------------
                                   2605 ;Allocation info for local variables in function 'main'
                                   2606 ;------------------------------------------------------------
                                   2607 ;uart_status   Allocated to registers 
                                   2608 ;------------------------------------------------------------
                                   2609 ;	main.c:554: void main(void)
                                   2610 ;	-----------------------------------------
                                   2611 ;	 function main
                                   2612 ;	-----------------------------------------
      000B83                       2613 _main:
                                   2614 ;	main.c:558: EA = 0;
                                   2615 ;	assignBit
      000B83 C2 AF            [12] 2616 	clr	_EA
                                   2617 ;	main.c:560: RELAY_PIN = 1;
                                   2618 ;	assignBit
      000B85 D2 A6            [12] 2619 	setb	_P2_6
                                   2620 ;	main.c:561: BUZZER_PIN = 1;
                                   2621 ;	assignBit
      000B87 D2 A7            [12] 2622 	setb	_P2_7
                                   2623 ;	main.c:562: RED_LED_PIN = 1;
                                   2624 ;	assignBit
      000B89 D2 A1            [12] 2625 	setb	_P2_1
                                   2626 ;	main.c:563: GREEN_LED_PIN = 0;
                                   2627 ;	assignBit
      000B8B C2 A0            [12] 2628 	clr	_P2_0
                                   2629 ;	main.c:565: RELAY_BUTTON_PIN = 1;
                                   2630 ;	assignBit
      000B8D D2 A2            [12] 2631 	setb	_P2_2
                                   2632 ;	main.c:567: relay_state = 0;
      000B8F 75 2D 00         [24] 2633 	mov	_relay_state,#0x00
                                   2634 ;	main.c:568: buzzer_state = 0;
      000B92 75 2E 00         [24] 2635 	mov	_buzzer_state,#0x00
                                   2636 ;	main.c:569: fault_active = 0;
      000B95 75 2F 00         [24] 2637 	mov	_fault_active,#0x00
                                   2638 ;	main.c:571: button_last_sample = 1;
      000B98 75 31 01         [24] 2639 	mov	_button_last_sample,#0x01
                                   2640 ;	main.c:572: button_stable_state = 1;
      000B9B 75 32 01         [24] 2641 	mov	_button_stable_state,#0x01
                                   2642 ;	main.c:574: timer0_init();
      000B9E 12 0B F0         [24] 2643 	lcall	_timer0_init
                                   2644 ;	main.c:576: EA = 1;
                                   2645 ;	assignBit
      000BA1 D2 AF            [12] 2646 	setb	_EA
                                   2647 ;	main.c:578: oled_init();
      000BA3 12 0D 90         [24] 2648 	lcall	_oled_init
                                   2649 ;	main.c:579: oled_initial_screen();
      000BA6 12 02 8B         [24] 2650 	lcall	_oled_initial_screen
                                   2651 ;	main.c:581: uart_status = uart_init(9600);
      000BA9 90 25 80         [24] 2652 	mov	dptr,#0x2580
      000BAC E4               [12] 2653 	clr	a
      000BAD F5 F0            [12] 2654 	mov	b,a
      000BAF 12 11 86         [24] 2655 	lcall	_uart_init
      000BB2 E5 82            [12] 2656 	mov	a, dpl
                                   2657 ;	main.c:583: if (!uart_status)
      000BB4 70 29            [24] 2658 	jnz	00105$
                                   2659 ;	main.c:585: oled_clear();
      000BB6 12 0D 3E         [24] 2660 	lcall	_oled_clear
                                   2661 ;	main.c:586: oled_set_position(0, 0);
      000BB9 75 43 00         [24] 2662 	mov	_oled_set_position_PARM_2,#0x00
      000BBC 75 82 00         [24] 2663 	mov	dpl, #0x00
      000BBF 12 0D 01         [24] 2664 	lcall	_oled_set_position
                                   2665 ;	main.c:587: oled_string("UART INIT FAILED");
      000BC2 90 14 E7         [24] 2666 	mov	dptr,#___str_33
      000BC5 75 F0 80         [24] 2667 	mov	b, #0x80
      000BC8 12 11 0C         [24] 2668 	lcall	_oled_string
                                   2669 ;	main.c:589: relay_set(0);
      000BCB 75 82 00         [24] 2670 	mov	dpl, #0x00
      000BCE 12 01 6A         [24] 2671 	lcall	_relay_set
                                   2672 ;	main.c:590: buzzer_set(0);
      000BD1 75 82 00         [24] 2673 	mov	dpl, #0x00
      000BD4 12 01 7A         [24] 2674 	lcall	_buzzer_set
                                   2675 ;	main.c:592: while (1)
      000BD7                       2676 00102$:
                                   2677 ;	main.c:594: relay_button_process();
      000BD7 12 01 92         [24] 2678 	lcall	_relay_button_process
                                   2679 ;	main.c:595: uart_receive_process();
      000BDA 12 0B 29         [24] 2680 	lcall	_uart_receive_process
      000BDD 80 F8            [24] 2681 	sjmp	00102$
      000BDF                       2682 00105$:
                                   2683 ;	main.c:599: uart_write_string("UART READY\r\n");
      000BDF 90 14 F8         [24] 2684 	mov	dptr,#___str_34
      000BE2 75 F0 80         [24] 2685 	mov	b, #0x80
      000BE5 12 12 8F         [24] 2686 	lcall	_uart_write_string
                                   2687 ;	main.c:601: while (1)
      000BE8                       2688 00107$:
                                   2689 ;	main.c:603: relay_button_process();
      000BE8 12 01 92         [24] 2690 	lcall	_relay_button_process
                                   2691 ;	main.c:604: uart_receive_process();
      000BEB 12 0B 29         [24] 2692 	lcall	_uart_receive_process
                                   2693 ;	main.c:606: }
      000BEE 80 F8            [24] 2694 	sjmp	00107$
                                   2695 	.area CSEG    (CODE)
                                   2696 	.area CONST   (CODE)
                                   2697 	.area CONST   (CODE)
      00140C                       2698 ___str_0:
      00140C 56 3A 2D 2D           2699 	.ascii "V:--"
      001410 00                    2700 	.db 0x00
                                   2701 	.area CSEG    (CODE)
                                   2702 	.area CONST   (CODE)
      001411                       2703 ___str_1:
      001411 46 3A 2D 2D           2704 	.ascii "F:--"
      001415 00                    2705 	.db 0x00
                                   2706 	.area CSEG    (CODE)
                                   2707 	.area CONST   (CODE)
      001416                       2708 ___str_2:
      001416 49 3A 2D 2D           2709 	.ascii "I:--"
      00141A 00                    2710 	.db 0x00
                                   2711 	.area CSEG    (CODE)
                                   2712 	.area CONST   (CODE)
      00141B                       2713 ___str_3:
      00141B 45 3A 2D 2D           2714 	.ascii "E:--"
      00141F 00                    2715 	.db 0x00
                                   2716 	.area CSEG    (CODE)
                                   2717 	.area CONST   (CODE)
      001420                       2718 ___str_4:
      001420 50 3A 2D 2D           2719 	.ascii "P:--"
      001424 00                    2720 	.db 0x00
                                   2721 	.area CSEG    (CODE)
                                   2722 	.area CONST   (CODE)
      001425                       2723 ___str_5:
      001425 4C 3A 2D 2D           2724 	.ascii "L:--"
      001429 00                    2725 	.db 0x00
                                   2726 	.area CSEG    (CODE)
                                   2727 	.area CONST   (CODE)
      00142A                       2728 ___str_6:
      00142A 50 46 3A 2D 2D        2729 	.ascii "PF:--"
      00142F 00                    2730 	.db 0x00
                                   2731 	.area CSEG    (CODE)
                                   2732 	.area CONST   (CODE)
      001430                       2733 ___str_7:
      001430 54 3A 2D 2D 43        2734 	.ascii "T:--C"
      001435 00                    2735 	.db 0x00
                                   2736 	.area CSEG    (CODE)
                                   2737 	.area CONST   (CODE)
      001436                       2738 ___str_8:
      001436 45 52 52 4F 52 3A     2739 	.ascii "ERROR:"
      00143C 00                    2740 	.db 0x00
                                   2741 	.area CSEG    (CODE)
                                   2742 	.area CONST   (CODE)
      00143D                       2743 ___str_9:
      00143D 4E 4F 20 45 52 52 4F  2744 	.ascii "NO ERROR"
             52
      001445 00                    2745 	.db 0x00
                                   2746 	.area CSEG    (CODE)
                                   2747 	.area CONST   (CODE)
      001446                       2748 ___str_10:
      001446 56 3A                 2749 	.ascii "V:"
      001448 00                    2750 	.db 0x00
                                   2751 	.area CSEG    (CODE)
                                   2752 	.area CONST   (CODE)
      001449                       2753 ___str_11:
      001449 49 3A                 2754 	.ascii "I:"
      00144B 00                    2755 	.db 0x00
                                   2756 	.area CSEG    (CODE)
                                   2757 	.area CONST   (CODE)
      00144C                       2758 ___str_12:
      00144C 50 3A                 2759 	.ascii "P:"
      00144E 00                    2760 	.db 0x00
                                   2761 	.area CSEG    (CODE)
                                   2762 	.area CONST   (CODE)
      00144F                       2763 ___str_13:
      00144F 50 46 3A              2764 	.ascii "PF:"
      001452 00                    2765 	.db 0x00
                                   2766 	.area CSEG    (CODE)
                                   2767 	.area CONST   (CODE)
      001453                       2768 ___str_14:
      001453 46 3A                 2769 	.ascii "F:"
      001455 00                    2770 	.db 0x00
                                   2771 	.area CSEG    (CODE)
                                   2772 	.area CONST   (CODE)
      001456                       2773 ___str_15:
      001456 48 7A                 2774 	.ascii "Hz"
      001458 00                    2775 	.db 0x00
                                   2776 	.area CSEG    (CODE)
                                   2777 	.area CONST   (CODE)
      001459                       2778 ___str_16:
      001459 45 3A                 2779 	.ascii "E:"
      00145B 00                    2780 	.db 0x00
                                   2781 	.area CSEG    (CODE)
                                   2782 	.area CONST   (CODE)
      00145C                       2783 ___str_17:
      00145C 6B 57 68              2784 	.ascii "kWh"
      00145F 00                    2785 	.db 0x00
                                   2786 	.area CSEG    (CODE)
                                   2787 	.area CONST   (CODE)
      001460                       2788 ___str_18:
      001460 4C 3A                 2789 	.ascii "L:"
      001462 00                    2790 	.db 0x00
                                   2791 	.area CSEG    (CODE)
                                   2792 	.area CONST   (CODE)
      001463                       2793 ___str_19:
      001463 54 3A                 2794 	.ascii "T:"
      001465 00                    2795 	.db 0x00
                                   2796 	.area CSEG    (CODE)
                                   2797 	.area CONST   (CODE)
      001466                       2798 ___str_20:
      001466 52 45 4C 41 59 2C 4F  2799 	.ascii "RELAY,ON"
             4E
      00146E 0D                    2800 	.db 0x0d
      00146F 0A                    2801 	.db 0x0a
      001470 00                    2802 	.db 0x00
                                   2803 	.area CSEG    (CODE)
                                   2804 	.area CONST   (CODE)
      001471                       2805 ___str_21:
      001471 52 45 4C 41 59 2C 4F  2806 	.ascii "RELAY,OFF"
             46 46
      00147A 0D                    2807 	.db 0x0d
      00147B 0A                    2808 	.db 0x0a
      00147C 00                    2809 	.db 0x00
                                   2810 	.area CSEG    (CODE)
                                   2811 	.area CONST   (CODE)
      00147D                       2812 ___str_22:
      00147D 42 55 5A 5A 45 52 2C  2813 	.ascii "BUZZER,ON"
             4F 4E
      001486 0D                    2814 	.db 0x0d
      001487 0A                    2815 	.db 0x0a
      001488 00                    2816 	.db 0x00
                                   2817 	.area CSEG    (CODE)
                                   2818 	.area CONST   (CODE)
      001489                       2819 ___str_23:
      001489 42 55 5A 5A 45 52 2C  2820 	.ascii "BUZZER,OFF"
             4F 46 46
      001493 0D                    2821 	.db 0x0d
      001494 0A                    2822 	.db 0x0a
      001495 00                    2823 	.db 0x00
                                   2824 	.area CSEG    (CODE)
                                   2825 	.area CONST   (CODE)
      001496                       2826 ___str_24:
      001496 53 54 41 54 55 53 2C  2827 	.ascii "STATUS,RELAY="
             52 45 4C 41 59 3D
      0014A3 00                    2828 	.db 0x00
                                   2829 	.area CSEG    (CODE)
                                   2830 	.area CONST   (CODE)
      0014A4                       2831 ___str_25:
      0014A4 4F 4E                 2832 	.ascii "ON"
      0014A6 00                    2833 	.db 0x00
                                   2834 	.area CSEG    (CODE)
                                   2835 	.area CONST   (CODE)
      0014A7                       2836 ___str_26:
      0014A7 4F 46 46              2837 	.ascii "OFF"
      0014AA 00                    2838 	.db 0x00
                                   2839 	.area CSEG    (CODE)
                                   2840 	.area CONST   (CODE)
      0014AB                       2841 ___str_27:
      0014AB 2C 42 55 5A 5A 45 52  2842 	.ascii ",BUZZER="
             3D
      0014B3 00                    2843 	.db 0x00
                                   2844 	.area CSEG    (CODE)
                                   2845 	.area CONST   (CODE)
      0014B4                       2846 ___str_28:
      0014B4 0D                    2847 	.db 0x0d
      0014B5 0A                    2848 	.db 0x0a
      0014B6 00                    2849 	.db 0x00
                                   2850 	.area CSEG    (CODE)
                                   2851 	.area CONST   (CODE)
      0014B7                       2852 ___str_29:
      0014B7 41 43 4B 2C 44 41 54  2853 	.ascii "ACK,DATA1"
             41 31
      0014C0 0D                    2854 	.db 0x0d
      0014C1 0A                    2855 	.db 0x0a
      0014C2 00                    2856 	.db 0x00
                                   2857 	.area CSEG    (CODE)
                                   2858 	.area CONST   (CODE)
      0014C3                       2859 ___str_30:
      0014C3 41 43 4B 2C 44 41 54  2860 	.ascii "ACK,DATA2"
             41 32
      0014CC 0D                    2861 	.db 0x0d
      0014CD 0A                    2862 	.db 0x0a
      0014CE 00                    2863 	.db 0x00
                                   2864 	.area CSEG    (CODE)
                                   2865 	.area CONST   (CODE)
      0014CF                       2866 ___str_31:
      0014CF 41 43 4B 2C 44 41 54  2867 	.ascii "ACK,DATA3"
             41 33
      0014D8 0D                    2868 	.db 0x0d
      0014D9 0A                    2869 	.db 0x0a
      0014DA 00                    2870 	.db 0x00
                                   2871 	.area CSEG    (CODE)
                                   2872 	.area CONST   (CODE)
      0014DB                       2873 ___str_32:
      0014DB 41 43 4B 2C 45 52 52  2874 	.ascii "ACK,ERROR"
             4F 52
      0014E4 0D                    2875 	.db 0x0d
      0014E5 0A                    2876 	.db 0x0a
      0014E6 00                    2877 	.db 0x00
                                   2878 	.area CSEG    (CODE)
                                   2879 	.area CONST   (CODE)
      0014E7                       2880 ___str_33:
      0014E7 55 41 52 54 20 49 4E  2881 	.ascii "UART INIT FAILED"
             49 54 20 46 41 49 4C
             45 44
      0014F7 00                    2882 	.db 0x00
                                   2883 	.area CSEG    (CODE)
                                   2884 	.area CONST   (CODE)
      0014F8                       2885 ___str_34:
      0014F8 55 41 52 54 20 52 45  2886 	.ascii "UART READY"
             41 44 59
      001502 0D                    2887 	.db 0x0d
      001503 0A                    2888 	.db 0x0a
      001504 00                    2889 	.db 0x00
                                   2890 	.area CSEG    (CODE)
                                   2891 	.area XINIT   (CODE)
                                   2892 	.area CABS    (ABS,CODE)
