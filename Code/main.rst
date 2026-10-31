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
      00002F                        454 _parse_index:
      00002F                        455 	.ds 1
      000030                        456 _timer0_isr_count_10000_28:
      000030                        457 	.ds 1
      000031                        458 _oled_clear_region_PARM_2:
      000031                        459 	.ds 1
      000032                        460 _oled_clear_region_PARM_3:
      000032                        461 	.ds 1
      000033                        462 _uart_receive_process_data_10000_89:
      000033                        463 	.ds 1
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable items in internal ram
                                    466 ;--------------------------------------------------------
                                    467 	.area	OSEG    (OVR,DATA)
                                    468 	.area	OSEG    (OVR,DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; Stack segment in internal ram
                                    471 ;--------------------------------------------------------
                                    472 	.area SSEG
      000059                        473 __start__stack:
      000059                        474 	.ds	1
                                    475 
                                    476 ;--------------------------------------------------------
                                    477 ; indirectly addressable internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area ISEG    (DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; absolute internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area IABS    (ABS,DATA)
                                    484 	.area IABS    (ABS,DATA)
                                    485 ;--------------------------------------------------------
                                    486 ; bit data
                                    487 ;--------------------------------------------------------
                                    488 	.area BSEG    (BIT)
                                    489 ;--------------------------------------------------------
                                    490 ; paged external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area PSEG    (PAG,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; uninitialized external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XSEG    (XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; absolute external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XABS    (ABS,XDATA)
                                    501 ;--------------------------------------------------------
                                    502 ; initialized external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XISEG   (XDATA)
                                    505 	.area HOME    (CODE)
                                    506 	.area GSINIT0 (CODE)
                                    507 	.area GSINIT1 (CODE)
                                    508 	.area GSINIT2 (CODE)
                                    509 	.area GSINIT3 (CODE)
                                    510 	.area GSINIT4 (CODE)
                                    511 	.area GSINIT5 (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.area GSFINAL (CODE)
                                    514 	.area CSEG    (CODE)
                                    515 ;--------------------------------------------------------
                                    516 ; interrupt vector
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
      000000                        519 __interrupt_vect:
      000000 02 00 56         [24]  520 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  521 	reti
      000004                        522 	.ds	7
      00000B 02 01 04         [24]  523 	ljmp	_timer0_isr
                                    524 ; restartable atomic support routines
      00000E                        525 	.ds	2
      000010                        526 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  527 	nop
      000011 00               [12]  528 	nop
      000012                        529 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  530 	movx	a, @r0
      000013 FB               [12]  531 	mov	r3, a
      000014 EA               [12]  532 	mov	a, r2
      000015 F2               [24]  533 	movx	@r0, a
      000016 80 2C            [24]  534 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  535 	nop
      000019 00               [12]  536 	nop
      00001A                        537 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  538 	movx	a, @dptr
      00001B FB               [12]  539 	mov	r3, a
      00001C EA               [12]  540 	mov	a, r2
      00001D F0               [24]  541 	movx	@dptr, a
      00001E 80 24            [24]  542 	sjmp	sdcc_atomic_exchange_exit
      000020                        543 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  544 	mov	a, @r0
      000021 B5 02 02         [24]  545 	cjne	a, ar2, .+#5
      000024 EB               [12]  546 	mov	a, r3
      000025 F6               [12]  547 	mov	@r0, a
      000026 22               [24]  548 	ret
      000027 00               [12]  549 	nop
      000028                        550 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  551 	movx	a, @r0
      000029 B5 02 02         [24]  552 	cjne	a, ar2, .+#5
      00002C EB               [12]  553 	mov	a, r3
      00002D F2               [24]  554 	movx	@r0, a
      00002E 22               [24]  555 	ret
      00002F 00               [12]  556 	nop
      000030                        557 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  558 	movx	a, @dptr
      000031 B5 02 02         [24]  559 	cjne	a, ar2, .+#5
      000034 EB               [12]  560 	mov	a, r3
      000035 F0               [24]  561 	movx	@dptr, a
      000036 22               [24]  562 	ret
      000037                        563 sdcc_atomic_exchange_rollback_end::
                                    564 
      000037                        565 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  566 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  567 	mov	r0, dpl
      00003C 20 F5 D3         [24]  568 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        569 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  570 	mov	a, r2
      000040 C6               [12]  571 	xch	a, @r0
      000041 F5 82            [12]  572 	mov	dpl, a
      000043 22               [24]  573 	ret
      000044                        574 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  575 	mov	dpl, r3
      000046 22               [24]  576 	ret
      000047                        577 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  578 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  579 	mov	r0, dpl
      00004C 20 F5 D9         [24]  580 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  581 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    582 ;--------------------------------------------------------
                                    583 ; global & static initialisations
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
                                    586 	.area GSINIT  (CODE)
                                    587 	.area GSFINAL (CODE)
                                    588 	.area GSINIT  (CODE)
                                    589 	.globl __sdcc_gsinit_startup
                                    590 	.globl __sdcc_program_startup
                                    591 	.globl __start__stack
                                    592 	.globl __mcs51_genXINIT
                                    593 	.globl __mcs51_genXRAMCLEAR
                                    594 	.globl __mcs51_genRAMCLEAR
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'timer0_isr'
                                    597 ;------------------------------------------------------------
                                    598 ;count         Allocated with name '_timer0_isr_count_10000_28'
                                    599 ;------------------------------------------------------------
                                    600 ;	main.c:40: static unsigned char count = 0;
      0000AF 75 30 00         [24]  601 	mov	_timer0_isr_count_10000_28,#0x00
                                    602 ;	main.c:13: volatile unsigned long int delay_time_ms = 0;
      0000B2 E4               [12]  603 	clr	a
      0000B3 F5 08            [12]  604 	mov	_delay_time_ms,a
      0000B5 F5 09            [12]  605 	mov	(_delay_time_ms + 1),a
      0000B7 F5 0A            [12]  606 	mov	(_delay_time_ms + 2),a
      0000B9 F5 0B            [12]  607 	mov	(_delay_time_ms + 3),a
                                    608 ;	main.c:16: static unsigned char rx_length = 0;
      0000BB F5 2C            [12]  609 	mov	_rx_length,a
                                    610 ;	main.c:17: static unsigned char relay_state = 0;
      0000BD F5 2D            [12]  611 	mov	_relay_state,a
                                    612 ;	main.c:18: static unsigned char buzzer_state = 0;
      0000BF F5 2E            [12]  613 	mov	_buzzer_state,a
                                    614 ;	main.c:19: static unsigned char parse_index = 0;
      0000C1 F5 2F            [12]  615 	mov	_parse_index,a
                                    616 	.area GSFINAL (CODE)
      0000C9 02 00 51         [24]  617 	ljmp	__sdcc_program_startup
                                    618 ;--------------------------------------------------------
                                    619 ; Home
                                    620 ;--------------------------------------------------------
                                    621 	.area HOME    (CODE)
                                    622 	.area HOME    (CODE)
      000051                        623 __sdcc_program_startup:
      000051 12 09 7C         [24]  624 	lcall	_main
      000054                        625 __sdcc_program_exit:
      000054 80 FE            [24]  626 	sjmp	.
                                    627 ;	return from main will return to caller
                                    628 ;--------------------------------------------------------
                                    629 ; code
                                    630 ;--------------------------------------------------------
                                    631 	.area CSEG    (CODE)
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'delay_us'
                                    634 ;------------------------------------------------------------
                                    635 ;value         Allocated to registers r6 r7 
                                    636 ;i             Allocated to registers r5 
                                    637 ;------------------------------------------------------------
                                    638 ;	main.c:21: void delay_us(unsigned int value)
                                    639 ;	-----------------------------------------
                                    640 ;	 function delay_us
                                    641 ;	-----------------------------------------
      0000CC                        642 _delay_us:
                           000007   643 	ar7 = 0x07
                           000006   644 	ar6 = 0x06
                           000005   645 	ar5 = 0x05
                           000004   646 	ar4 = 0x04
                           000003   647 	ar3 = 0x03
                           000002   648 	ar2 = 0x02
                           000001   649 	ar1 = 0x01
                           000000   650 	ar0 = 0x00
      0000CC AE 82            [24]  651 	mov	r6, dpl
      0000CE AF 83            [24]  652 	mov	r7, dph
                                    653 ;	main.c:25: while (value--)
      0000D0                        654 00102$:
      0000D0 8E 04            [24]  655 	mov	ar4,r6
      0000D2 8F 05            [24]  656 	mov	ar5,r7
      0000D4 1E               [12]  657 	dec	r6
      0000D5 BE FF 01         [24]  658 	cjne	r6,#0xff,00138$
      0000D8 1F               [12]  659 	dec	r7
      0000D9                        660 00138$:
      0000D9 EC               [12]  661 	mov	a,r4
      0000DA 4D               [12]  662 	orl	a,r5
      0000DB 60 06            [24]  663 	jz	00108$
                                    664 ;	main.c:27: for (i = 0; i < 4; i++);
      0000DD 7D 04            [12]  665 	mov	r5,#0x04
      0000DF                        666 00107$:
      0000DF DD FE            [24]  667 	djnz	r5,00107$
      0000E1 80 ED            [24]  668 	sjmp	00102$
      0000E3                        669 00108$:
                                    670 ;	main.c:29: }
      0000E3 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'delay_ms'
                                    674 ;------------------------------------------------------------
                                    675 ;value         Allocated to registers r4 r5 r6 r7 
                                    676 ;------------------------------------------------------------
                                    677 ;	main.c:31: void delay_ms(unsigned long int value)
                                    678 ;	-----------------------------------------
                                    679 ;	 function delay_ms
                                    680 ;	-----------------------------------------
      0000E4                        681 _delay_ms:
      0000E4 AC 82            [24]  682 	mov	r4,dpl
      0000E6 AD 83            [24]  683 	mov	r5,dph
      0000E8 AE F0            [24]  684 	mov	r6,b
      0000EA FF               [12]  685 	mov	r7,a
                                    686 ;	main.c:33: delay_time_ms = 0;
      0000EB E4               [12]  687 	clr	a
      0000EC F5 08            [12]  688 	mov	_delay_time_ms,a
      0000EE F5 09            [12]  689 	mov	(_delay_time_ms + 1),a
      0000F0 F5 0A            [12]  690 	mov	(_delay_time_ms + 2),a
      0000F2 F5 0B            [12]  691 	mov	(_delay_time_ms + 3),a
                                    692 ;	main.c:35: while (delay_time_ms < value);
      0000F4                        693 00101$:
      0000F4 C3               [12]  694 	clr	c
      0000F5 E5 08            [12]  695 	mov	a,_delay_time_ms
      0000F7 9C               [12]  696 	subb	a,r4
      0000F8 E5 09            [12]  697 	mov	a,(_delay_time_ms + 1)
      0000FA 9D               [12]  698 	subb	a,r5
      0000FB E5 0A            [12]  699 	mov	a,(_delay_time_ms + 2)
      0000FD 9E               [12]  700 	subb	a,r6
      0000FE E5 0B            [12]  701 	mov	a,(_delay_time_ms + 3)
      000100 9F               [12]  702 	subb	a,r7
      000101 40 F1            [24]  703 	jc	00101$
                                    704 ;	main.c:36: }
      000103 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'timer0_isr'
                                    708 ;------------------------------------------------------------
                                    709 ;count         Allocated with name '_timer0_isr_count_10000_28'
                                    710 ;------------------------------------------------------------
                                    711 ;	main.c:38: void timer0_isr(void) __interrupt(1)
                                    712 ;	-----------------------------------------
                                    713 ;	 function timer0_isr
                                    714 ;	-----------------------------------------
      000104                        715 _timer0_isr:
      000104 C0 E0            [24]  716 	push	acc
      000106 C0 07            [24]  717 	push	ar7
      000108 C0 06            [24]  718 	push	ar6
      00010A C0 05            [24]  719 	push	ar5
      00010C C0 04            [24]  720 	push	ar4
      00010E C0 D0            [24]  721 	push	psw
      000110 75 D0 00         [24]  722 	mov	psw,#0x00
                                    723 ;	main.c:42: TF0 = 0;
                                    724 ;	assignBit
      000113 C2 8D            [12]  725 	clr	_TF0
                                    726 ;	main.c:43: count++;
      000115 05 30            [12]  727 	inc	_timer0_isr_count_10000_28
                                    728 ;	main.c:45: if (count >= 10)
      000117 74 F6            [12]  729 	mov	a,#0x100 - 0x0a
      000119 25 30            [12]  730 	add	a,_timer0_isr_count_10000_28
      00011B 50 1C            [24]  731 	jnc	00103$
                                    732 ;	main.c:47: count = 0;
      00011D 75 30 00         [24]  733 	mov	_timer0_isr_count_10000_28,#0x00
                                    734 ;	main.c:48: delay_time_ms++;
      000120 AC 08            [24]  735 	mov	r4,_delay_time_ms
      000122 AD 09            [24]  736 	mov	r5,(_delay_time_ms + 1)
      000124 AE 0A            [24]  737 	mov	r6,(_delay_time_ms + 2)
      000126 AF 0B            [24]  738 	mov	r7,(_delay_time_ms + 3)
      000128 74 01            [12]  739 	mov	a,#0x01
      00012A 2C               [12]  740 	add	a, r4
      00012B F5 08            [12]  741 	mov	_delay_time_ms,a
      00012D E4               [12]  742 	clr	a
      00012E 3D               [12]  743 	addc	a, r5
      00012F F5 09            [12]  744 	mov	(_delay_time_ms + 1),a
      000131 E4               [12]  745 	clr	a
      000132 3E               [12]  746 	addc	a, r6
      000133 F5 0A            [12]  747 	mov	(_delay_time_ms + 2),a
      000135 E4               [12]  748 	clr	a
      000136 3F               [12]  749 	addc	a, r7
      000137 F5 0B            [12]  750 	mov	(_delay_time_ms + 3),a
      000139                        751 00103$:
                                    752 ;	main.c:50: }
      000139 D0 D0            [24]  753 	pop	psw
      00013B D0 04            [24]  754 	pop	ar4
      00013D D0 05            [24]  755 	pop	ar5
      00013F D0 06            [24]  756 	pop	ar6
      000141 D0 07            [24]  757 	pop	ar7
      000143 D0 E0            [24]  758 	pop	acc
      000145 32               [24]  759 	reti
                                    760 ;	eliminated unneeded push/pop dpl
                                    761 ;	eliminated unneeded push/pop dph
                                    762 ;	eliminated unneeded push/pop b
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'oled_clear_region'
                                    765 ;------------------------------------------------------------
                                    766 ;column        Allocated with name '_oled_clear_region_PARM_2'
                                    767 ;characters    Allocated with name '_oled_clear_region_PARM_3'
                                    768 ;page          Allocated to registers r7 
                                    769 ;i             Allocated to registers r7 
                                    770 ;------------------------------------------------------------
                                    771 ;	main.c:52: static void oled_clear_region(unsigned char page,
                                    772 ;	-----------------------------------------
                                    773 ;	 function oled_clear_region
                                    774 ;	-----------------------------------------
      000146                        775 _oled_clear_region:
                                    776 ;	main.c:58: oled_set_position(page, column);
      000146 85 31 3C         [24]  777 	mov	_oled_set_position_PARM_2,_oled_clear_region_PARM_2
      000149 12 0A DC         [24]  778 	lcall	_oled_set_position
                                    779 ;	main.c:60: for (i = 0; i < characters; i++)
      00014C 7F 00            [12]  780 	mov	r7,#0x00
      00014E                        781 00103$:
      00014E C3               [12]  782 	clr	c
      00014F EF               [12]  783 	mov	a,r7
      000150 95 32            [12]  784 	subb	a,_oled_clear_region_PARM_3
      000152 50 0D            [24]  785 	jnc	00105$
                                    786 ;	main.c:61: oled_char(' ');
      000154 75 82 20         [24]  787 	mov	dpl, #0x20
      000157 C0 07            [24]  788 	push	ar7
      000159 12 0C 1A         [24]  789 	lcall	_oled_char
      00015C D0 07            [24]  790 	pop	ar7
                                    791 ;	main.c:60: for (i = 0; i < characters; i++)
      00015E 0F               [12]  792 	inc	r7
      00015F 80 ED            [24]  793 	sjmp	00103$
      000161                        794 00105$:
                                    795 ;	main.c:62: }
      000161 22               [24]  796 	ret
                                    797 ;------------------------------------------------------------
                                    798 ;Allocation info for local variables in function 'oled_clear_error'
                                    799 ;------------------------------------------------------------
                                    800 ;	main.c:64: static void oled_clear_error(void)
                                    801 ;	-----------------------------------------
                                    802 ;	 function oled_clear_error
                                    803 ;	-----------------------------------------
      000162                        804 _oled_clear_error:
                                    805 ;	main.c:66: oled_clear_region(5, 0, 21);
      000162 75 31 00         [24]  806 	mov	_oled_clear_region_PARM_2,#0x00
      000165 75 32 15         [24]  807 	mov	_oled_clear_region_PARM_3,#0x15
      000168 75 82 05         [24]  808 	mov	dpl, #0x05
      00016B 12 01 46         [24]  809 	lcall	_oled_clear_region
                                    810 ;	main.c:67: oled_clear_region(7, 0, 21);
      00016E 75 31 00         [24]  811 	mov	_oled_clear_region_PARM_2,#0x00
      000171 75 32 15         [24]  812 	mov	_oled_clear_region_PARM_3,#0x15
      000174 75 82 07         [24]  813 	mov	dpl, #0x07
                                    814 ;	main.c:68: }
      000177 02 01 46         [24]  815 	ljmp	_oled_clear_region
                                    816 ;------------------------------------------------------------
                                    817 ;Allocation info for local variables in function 'oled_print_field'
                                    818 ;------------------------------------------------------------
                                    819 ;comma_expected Allocated to registers r7 
                                    820 ;count         Allocated to registers r6 
                                    821 ;------------------------------------------------------------
                                    822 ;	main.c:70: static unsigned char oled_print_field(unsigned char comma_expected)
                                    823 ;	-----------------------------------------
                                    824 ;	 function oled_print_field
                                    825 ;	-----------------------------------------
      00017A                        826 _oled_print_field:
      00017A AF 82            [24]  827 	mov	r7, dpl
                                    828 ;	main.c:72: unsigned char count = 0;
      00017C 7E 00            [12]  829 	mov	r6,#0x00
                                    830 ;	main.c:74: if (rx_buffer[parse_index] == '\0')
      00017E E5 2F            [12]  831 	mov	a,_parse_index
      000180 24 0C            [12]  832 	add	a, #_rx_buffer
      000182 F9               [12]  833 	mov	r1,a
      000183 E7               [12]  834 	mov	a,@r1
                                    835 ;	main.c:75: return 0;
      000184 70 03            [24]  836 	jnz	00106$
      000186 F5 82            [12]  837 	mov	dpl,a
                                    838 ;	main.c:77: while (rx_buffer[parse_index] != '\0' &&
      000188 22               [24]  839 	ret
      000189                        840 00106$:
      000189 E5 2F            [12]  841 	mov	a,_parse_index
      00018B 24 0C            [12]  842 	add	a, #_rx_buffer
      00018D F9               [12]  843 	mov	r1,a
      00018E E7               [12]  844 	mov	a,@r1
      00018F FD               [12]  845 	mov	r5,a
      000190 60 1C            [24]  846 	jz	00108$
                                    847 ;	main.c:78: rx_buffer[parse_index] != ',')
      000192 BD 2C 02         [24]  848 	cjne	r5,#0x2c,00175$
      000195 80 17            [24]  849 	sjmp	00108$
      000197                        850 00175$:
                                    851 ;	main.c:80: if (count < 20)
      000197 BE 14 00         [24]  852 	cjne	r6,#0x14,00176$
      00019A                        853 00176$:
      00019A 50 0D            [24]  854 	jnc	00104$
                                    855 ;	main.c:81: oled_char(rx_buffer[parse_index]);
      00019C 8D 82            [24]  856 	mov	dpl, r5
      00019E C0 07            [24]  857 	push	ar7
      0001A0 C0 06            [24]  858 	push	ar6
      0001A2 12 0C 1A         [24]  859 	lcall	_oled_char
      0001A5 D0 06            [24]  860 	pop	ar6
      0001A7 D0 07            [24]  861 	pop	ar7
      0001A9                        862 00104$:
                                    863 ;	main.c:83: count++;
      0001A9 0E               [12]  864 	inc	r6
                                    865 ;	main.c:84: parse_index++;
      0001AA 05 2F            [12]  866 	inc	_parse_index
      0001AC 80 DB            [24]  867 	sjmp	00106$
      0001AE                        868 00108$:
                                    869 ;	main.c:87: if (count == 0)
      0001AE EE               [12]  870 	mov	a,r6
                                    871 ;	main.c:88: return 0;
      0001AF 70 03            [24]  872 	jnz	00110$
      0001B1 F5 82            [12]  873 	mov	dpl,a
      0001B3 22               [24]  874 	ret
      0001B4                        875 00110$:
                                    876 ;	main.c:90: if (comma_expected)
      0001B4 EF               [12]  877 	mov	a,r7
      0001B5 60 12            [24]  878 	jz	00114$
                                    879 ;	main.c:92: if (rx_buffer[parse_index] != ',')
      0001B7 E5 2F            [12]  880 	mov	a,_parse_index
      0001B9 24 0C            [12]  881 	add	a, #_rx_buffer
      0001BB F9               [12]  882 	mov	r1,a
      0001BC 87 07            [24]  883 	mov	ar7,@r1
      0001BE BF 2C 02         [24]  884 	cjne	r7,#0x2c,00180$
      0001C1 80 04            [24]  885 	sjmp	00112$
      0001C3                        886 00180$:
                                    887 ;	main.c:93: return 0;
      0001C3 75 82 00         [24]  888 	mov	dpl, #0x00
      0001C6 22               [24]  889 	ret
      0001C7                        890 00112$:
                                    891 ;	main.c:95: parse_index++;
      0001C7 05 2F            [12]  892 	inc	_parse_index
      0001C9                        893 00114$:
                                    894 ;	main.c:98: return 1;
      0001C9 75 82 01         [24]  895 	mov	dpl, #0x01
                                    896 ;	main.c:99: }
      0001CC 22               [24]  897 	ret
                                    898 ;------------------------------------------------------------
                                    899 ;Allocation info for local variables in function 'oled_initial_screen'
                                    900 ;------------------------------------------------------------
                                    901 ;	main.c:101: static void oled_initial_screen(void)
                                    902 ;	-----------------------------------------
                                    903 ;	 function oled_initial_screen
                                    904 ;	-----------------------------------------
      0001CD                        905 _oled_initial_screen:
                                    906 ;	main.c:103: oled_clear();
      0001CD 12 0B 19         [24]  907 	lcall	_oled_clear
                                    908 ;	main.c:105: oled_set_position(0, 0);
      0001D0 75 3C 00         [24]  909 	mov	_oled_set_position_PARM_2,#0x00
      0001D3 75 82 00         [24]  910 	mov	dpl, #0x00
      0001D6 12 0A DC         [24]  911 	lcall	_oled_set_position
                                    912 ;	main.c:106: oled_string("V:--");
      0001D9 90 11 E7         [24]  913 	mov	dptr,#___str_0
      0001DC 75 F0 80         [24]  914 	mov	b, #0x80
      0001DF 12 0E E7         [24]  915 	lcall	_oled_string
                                    916 ;	main.c:108: oled_set_position(0, 66);
      0001E2 75 3C 42         [24]  917 	mov	_oled_set_position_PARM_2,#0x42
      0001E5 75 82 00         [24]  918 	mov	dpl, #0x00
      0001E8 12 0A DC         [24]  919 	lcall	_oled_set_position
                                    920 ;	main.c:109: oled_string("F:--");
      0001EB 90 11 EC         [24]  921 	mov	dptr,#___str_1
      0001EE 75 F0 80         [24]  922 	mov	b, #0x80
      0001F1 12 0E E7         [24]  923 	lcall	_oled_string
                                    924 ;	main.c:111: oled_set_position(1, 0);
      0001F4 75 3C 00         [24]  925 	mov	_oled_set_position_PARM_2,#0x00
      0001F7 75 82 01         [24]  926 	mov	dpl, #0x01
      0001FA 12 0A DC         [24]  927 	lcall	_oled_set_position
                                    928 ;	main.c:112: oled_string("I:--");
      0001FD 90 11 F1         [24]  929 	mov	dptr,#___str_2
      000200 75 F0 80         [24]  930 	mov	b, #0x80
      000203 12 0E E7         [24]  931 	lcall	_oled_string
                                    932 ;	main.c:114: oled_set_position(1, 66);
      000206 75 3C 42         [24]  933 	mov	_oled_set_position_PARM_2,#0x42
      000209 75 82 01         [24]  934 	mov	dpl, #0x01
      00020C 12 0A DC         [24]  935 	lcall	_oled_set_position
                                    936 ;	main.c:115: oled_string("E:--");
      00020F 90 11 F6         [24]  937 	mov	dptr,#___str_3
      000212 75 F0 80         [24]  938 	mov	b, #0x80
      000215 12 0E E7         [24]  939 	lcall	_oled_string
                                    940 ;	main.c:117: oled_set_position(2, 0);
      000218 75 3C 00         [24]  941 	mov	_oled_set_position_PARM_2,#0x00
      00021B 75 82 02         [24]  942 	mov	dpl, #0x02
      00021E 12 0A DC         [24]  943 	lcall	_oled_set_position
                                    944 ;	main.c:118: oled_string("P:--");
      000221 90 11 FB         [24]  945 	mov	dptr,#___str_4
      000224 75 F0 80         [24]  946 	mov	b, #0x80
      000227 12 0E E7         [24]  947 	lcall	_oled_string
                                    948 ;	main.c:120: oled_set_position(2, 66);
      00022A 75 3C 42         [24]  949 	mov	_oled_set_position_PARM_2,#0x42
      00022D 75 82 02         [24]  950 	mov	dpl, #0x02
      000230 12 0A DC         [24]  951 	lcall	_oled_set_position
                                    952 ;	main.c:121: oled_string("L:--");
      000233 90 12 00         [24]  953 	mov	dptr,#___str_5
      000236 75 F0 80         [24]  954 	mov	b, #0x80
      000239 12 0E E7         [24]  955 	lcall	_oled_string
                                    956 ;	main.c:123: oled_set_position(3, 0);
      00023C 75 3C 00         [24]  957 	mov	_oled_set_position_PARM_2,#0x00
      00023F 75 82 03         [24]  958 	mov	dpl, #0x03
      000242 12 0A DC         [24]  959 	lcall	_oled_set_position
                                    960 ;	main.c:124: oled_string("PF:--");
      000245 90 12 05         [24]  961 	mov	dptr,#___str_6
      000248 75 F0 80         [24]  962 	mov	b, #0x80
      00024B 12 0E E7         [24]  963 	lcall	_oled_string
                                    964 ;	main.c:126: oled_set_position(5, 0);
      00024E 75 3C 00         [24]  965 	mov	_oled_set_position_PARM_2,#0x00
      000251 75 82 05         [24]  966 	mov	dpl, #0x05
      000254 12 0A DC         [24]  967 	lcall	_oled_set_position
                                    968 ;	main.c:127: oled_string("ERROR:");
      000257 90 12 0B         [24]  969 	mov	dptr,#___str_7
      00025A 75 F0 80         [24]  970 	mov	b, #0x80
      00025D 12 0E E7         [24]  971 	lcall	_oled_string
                                    972 ;	main.c:129: oled_set_position(7, 0);
      000260 75 3C 00         [24]  973 	mov	_oled_set_position_PARM_2,#0x00
      000263 75 82 07         [24]  974 	mov	dpl, #0x07
      000266 12 0A DC         [24]  975 	lcall	_oled_set_position
                                    976 ;	main.c:130: oled_string("NO ERROR");
      000269 90 12 12         [24]  977 	mov	dptr,#___str_8
      00026C 75 F0 80         [24]  978 	mov	b, #0x80
                                    979 ;	main.c:131: }
      00026F 02 0E E7         [24]  980 	ljmp	_oled_string
                                    981 ;------------------------------------------------------------
                                    982 ;Allocation info for local variables in function 'process_data1'
                                    983 ;------------------------------------------------------------
                                    984 ;	main.c:133: static void process_data1(void)
                                    985 ;	-----------------------------------------
                                    986 ;	 function process_data1
                                    987 ;	-----------------------------------------
      000272                        988 _process_data1:
                                    989 ;	main.c:135: parse_index = 6;
      000272 75 2F 06         [24]  990 	mov	_parse_index,#0x06
                                    991 ;	main.c:137: oled_clear_region(0, 0, 10);
      000275 75 31 00         [24]  992 	mov	_oled_clear_region_PARM_2,#0x00
      000278 75 32 0A         [24]  993 	mov	_oled_clear_region_PARM_3,#0x0a
      00027B 75 82 00         [24]  994 	mov	dpl, #0x00
      00027E 12 01 46         [24]  995 	lcall	_oled_clear_region
                                    996 ;	main.c:138: oled_set_position(0, 0);
      000281 75 3C 00         [24]  997 	mov	_oled_set_position_PARM_2,#0x00
      000284 75 82 00         [24]  998 	mov	dpl, #0x00
      000287 12 0A DC         [24]  999 	lcall	_oled_set_position
                                   1000 ;	main.c:139: oled_string("V:");
      00028A 90 12 1B         [24] 1001 	mov	dptr,#___str_9
      00028D 75 F0 80         [24] 1002 	mov	b, #0x80
      000290 12 0E E7         [24] 1003 	lcall	_oled_string
                                   1004 ;	main.c:141: if (!oled_print_field(1))
      000293 75 82 01         [24] 1005 	mov	dpl, #0x01
      000296 12 01 7A         [24] 1006 	lcall	_oled_print_field
      000299 E5 82            [12] 1007 	mov	a, dpl
      00029B 70 01            [24] 1008 	jnz	00102$
                                   1009 ;	main.c:142: return;
      00029D 22               [24] 1010 	ret
      00029E                       1011 00102$:
                                   1012 ;	main.c:144: oled_clear_region(1, 0, 10);
      00029E 75 31 00         [24] 1013 	mov	_oled_clear_region_PARM_2,#0x00
      0002A1 75 32 0A         [24] 1014 	mov	_oled_clear_region_PARM_3,#0x0a
      0002A4 75 82 01         [24] 1015 	mov	dpl, #0x01
      0002A7 12 01 46         [24] 1016 	lcall	_oled_clear_region
                                   1017 ;	main.c:145: oled_set_position(1, 0);
      0002AA 75 3C 00         [24] 1018 	mov	_oled_set_position_PARM_2,#0x00
      0002AD 75 82 01         [24] 1019 	mov	dpl, #0x01
      0002B0 12 0A DC         [24] 1020 	lcall	_oled_set_position
                                   1021 ;	main.c:146: oled_string("I:");
      0002B3 90 12 1E         [24] 1022 	mov	dptr,#___str_10
      0002B6 75 F0 80         [24] 1023 	mov	b, #0x80
      0002B9 12 0E E7         [24] 1024 	lcall	_oled_string
                                   1025 ;	main.c:148: if (!oled_print_field(1))
      0002BC 75 82 01         [24] 1026 	mov	dpl, #0x01
      0002BF 12 01 7A         [24] 1027 	lcall	_oled_print_field
      0002C2 E5 82            [12] 1028 	mov	a, dpl
      0002C4 70 01            [24] 1029 	jnz	00104$
                                   1030 ;	main.c:149: return;
      0002C6 22               [24] 1031 	ret
      0002C7                       1032 00104$:
                                   1033 ;	main.c:151: oled_char('A');
      0002C7 75 82 41         [24] 1034 	mov	dpl, #0x41
      0002CA 12 0C 1A         [24] 1035 	lcall	_oled_char
                                   1036 ;	main.c:153: oled_clear_region(2, 0, 10);
      0002CD 75 31 00         [24] 1037 	mov	_oled_clear_region_PARM_2,#0x00
      0002D0 75 32 0A         [24] 1038 	mov	_oled_clear_region_PARM_3,#0x0a
      0002D3 75 82 02         [24] 1039 	mov	dpl, #0x02
      0002D6 12 01 46         [24] 1040 	lcall	_oled_clear_region
                                   1041 ;	main.c:154: oled_set_position(2, 0);
      0002D9 75 3C 00         [24] 1042 	mov	_oled_set_position_PARM_2,#0x00
      0002DC 75 82 02         [24] 1043 	mov	dpl, #0x02
      0002DF 12 0A DC         [24] 1044 	lcall	_oled_set_position
                                   1045 ;	main.c:155: oled_string("P:");
      0002E2 90 12 21         [24] 1046 	mov	dptr,#___str_11
      0002E5 75 F0 80         [24] 1047 	mov	b, #0x80
      0002E8 12 0E E7         [24] 1048 	lcall	_oled_string
                                   1049 ;	main.c:157: if (!oled_print_field(1))
      0002EB 75 82 01         [24] 1050 	mov	dpl, #0x01
      0002EE 12 01 7A         [24] 1051 	lcall	_oled_print_field
      0002F1 E5 82            [12] 1052 	mov	a, dpl
      0002F3 70 01            [24] 1053 	jnz	00106$
                                   1054 ;	main.c:158: return;
      0002F5 22               [24] 1055 	ret
      0002F6                       1056 00106$:
                                   1057 ;	main.c:160: oled_char('W');
      0002F6 75 82 57         [24] 1058 	mov	dpl, #0x57
      0002F9 12 0C 1A         [24] 1059 	lcall	_oled_char
                                   1060 ;	main.c:162: oled_clear_region(3, 0, 10);
      0002FC 75 31 00         [24] 1061 	mov	_oled_clear_region_PARM_2,#0x00
      0002FF 75 32 0A         [24] 1062 	mov	_oled_clear_region_PARM_3,#0x0a
      000302 75 82 03         [24] 1063 	mov	dpl, #0x03
      000305 12 01 46         [24] 1064 	lcall	_oled_clear_region
                                   1065 ;	main.c:163: oled_set_position(3, 0);
      000308 75 3C 00         [24] 1066 	mov	_oled_set_position_PARM_2,#0x00
      00030B 75 82 03         [24] 1067 	mov	dpl, #0x03
      00030E 12 0A DC         [24] 1068 	lcall	_oled_set_position
                                   1069 ;	main.c:164: oled_string("PF:");
      000311 90 12 24         [24] 1070 	mov	dptr,#___str_12
      000314 75 F0 80         [24] 1071 	mov	b, #0x80
      000317 12 0E E7         [24] 1072 	lcall	_oled_string
                                   1073 ;	main.c:166: oled_print_field(0);
      00031A 75 82 00         [24] 1074 	mov	dpl, #0x00
                                   1075 ;	main.c:167: }
      00031D 02 01 7A         [24] 1076 	ljmp	_oled_print_field
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'process_data2'
                                   1079 ;------------------------------------------------------------
                                   1080 ;	main.c:169: static void process_data2(void)
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function process_data2
                                   1083 ;	-----------------------------------------
      000320                       1084 _process_data2:
                                   1085 ;	main.c:171: parse_index = 6;
      000320 75 2F 06         [24] 1086 	mov	_parse_index,#0x06
                                   1087 ;	main.c:173: oled_clear_region(0, 66, 10);
      000323 75 31 42         [24] 1088 	mov	_oled_clear_region_PARM_2,#0x42
      000326 75 32 0A         [24] 1089 	mov	_oled_clear_region_PARM_3,#0x0a
      000329 75 82 00         [24] 1090 	mov	dpl, #0x00
      00032C 12 01 46         [24] 1091 	lcall	_oled_clear_region
                                   1092 ;	main.c:174: oled_set_position(0, 66);
      00032F 75 3C 42         [24] 1093 	mov	_oled_set_position_PARM_2,#0x42
      000332 75 82 00         [24] 1094 	mov	dpl, #0x00
      000335 12 0A DC         [24] 1095 	lcall	_oled_set_position
                                   1096 ;	main.c:175: oled_string("F:");
      000338 90 12 28         [24] 1097 	mov	dptr,#___str_13
      00033B 75 F0 80         [24] 1098 	mov	b, #0x80
      00033E 12 0E E7         [24] 1099 	lcall	_oled_string
                                   1100 ;	main.c:177: if (!oled_print_field(1))
      000341 75 82 01         [24] 1101 	mov	dpl, #0x01
      000344 12 01 7A         [24] 1102 	lcall	_oled_print_field
      000347 E5 82            [12] 1103 	mov	a, dpl
      000349 70 01            [24] 1104 	jnz	00102$
                                   1105 ;	main.c:178: return;
      00034B 22               [24] 1106 	ret
      00034C                       1107 00102$:
                                   1108 ;	main.c:180: oled_string("Hz");
      00034C 90 12 2B         [24] 1109 	mov	dptr,#___str_14
      00034F 75 F0 80         [24] 1110 	mov	b, #0x80
      000352 12 0E E7         [24] 1111 	lcall	_oled_string
                                   1112 ;	main.c:182: oled_clear_region(1, 66, 10);
      000355 75 31 42         [24] 1113 	mov	_oled_clear_region_PARM_2,#0x42
      000358 75 32 0A         [24] 1114 	mov	_oled_clear_region_PARM_3,#0x0a
      00035B 75 82 01         [24] 1115 	mov	dpl, #0x01
      00035E 12 01 46         [24] 1116 	lcall	_oled_clear_region
                                   1117 ;	main.c:183: oled_set_position(1, 66);
      000361 75 3C 42         [24] 1118 	mov	_oled_set_position_PARM_2,#0x42
      000364 75 82 01         [24] 1119 	mov	dpl, #0x01
      000367 12 0A DC         [24] 1120 	lcall	_oled_set_position
                                   1121 ;	main.c:184: oled_string("E:");
      00036A 90 12 2E         [24] 1122 	mov	dptr,#___str_15
      00036D 75 F0 80         [24] 1123 	mov	b, #0x80
      000370 12 0E E7         [24] 1124 	lcall	_oled_string
                                   1125 ;	main.c:186: if (!oled_print_field(1))
      000373 75 82 01         [24] 1126 	mov	dpl, #0x01
      000376 12 01 7A         [24] 1127 	lcall	_oled_print_field
      000379 E5 82            [12] 1128 	mov	a, dpl
      00037B 70 01            [24] 1129 	jnz	00104$
                                   1130 ;	main.c:187: return;
      00037D 22               [24] 1131 	ret
      00037E                       1132 00104$:
                                   1133 ;	main.c:189: oled_string("kWh");
      00037E 90 12 31         [24] 1134 	mov	dptr,#___str_16
      000381 75 F0 80         [24] 1135 	mov	b, #0x80
      000384 12 0E E7         [24] 1136 	lcall	_oled_string
                                   1137 ;	main.c:191: oled_clear_region(2, 66, 10);
      000387 75 31 42         [24] 1138 	mov	_oled_clear_region_PARM_2,#0x42
      00038A 75 32 0A         [24] 1139 	mov	_oled_clear_region_PARM_3,#0x0a
      00038D 75 82 02         [24] 1140 	mov	dpl, #0x02
      000390 12 01 46         [24] 1141 	lcall	_oled_clear_region
                                   1142 ;	main.c:192: oled_set_position(2, 66);
      000393 75 3C 42         [24] 1143 	mov	_oled_set_position_PARM_2,#0x42
      000396 75 82 02         [24] 1144 	mov	dpl, #0x02
      000399 12 0A DC         [24] 1145 	lcall	_oled_set_position
                                   1146 ;	main.c:193: oled_string("L:");
      00039C 90 12 35         [24] 1147 	mov	dptr,#___str_17
      00039F 75 F0 80         [24] 1148 	mov	b, #0x80
      0003A2 12 0E E7         [24] 1149 	lcall	_oled_string
                                   1150 ;	main.c:195: if (!oled_print_field(0))
      0003A5 75 82 00         [24] 1151 	mov	dpl, #0x00
      0003A8 12 01 7A         [24] 1152 	lcall	_oled_print_field
      0003AB E5 82            [12] 1153 	mov	a, dpl
      0003AD 70 01            [24] 1154 	jnz	00106$
                                   1155 ;	main.c:196: return;
      0003AF 22               [24] 1156 	ret
      0003B0                       1157 00106$:
                                   1158 ;	main.c:198: oled_char('A');
      0003B0 75 82 41         [24] 1159 	mov	dpl, #0x41
                                   1160 ;	main.c:199: }
      0003B3 02 0C 1A         [24] 1161 	ljmp	_oled_char
                                   1162 ;------------------------------------------------------------
                                   1163 ;Allocation info for local variables in function 'process_error'
                                   1164 ;------------------------------------------------------------
                                   1165 ;i             Allocated to registers r7 
                                   1166 ;------------------------------------------------------------
                                   1167 ;	main.c:201: static void process_error(void)
                                   1168 ;	-----------------------------------------
                                   1169 ;	 function process_error
                                   1170 ;	-----------------------------------------
      0003B6                       1171 _process_error:
                                   1172 ;	main.c:205: parse_index = 6;
      0003B6 75 2F 06         [24] 1173 	mov	_parse_index,#0x06
                                   1174 ;	main.c:207: oled_clear_error();
      0003B9 12 01 62         [24] 1175 	lcall	_oled_clear_error
                                   1176 ;	main.c:209: oled_set_position(5, 0);
      0003BC 75 3C 00         [24] 1177 	mov	_oled_set_position_PARM_2,#0x00
      0003BF 75 82 05         [24] 1178 	mov	dpl, #0x05
      0003C2 12 0A DC         [24] 1179 	lcall	_oled_set_position
                                   1180 ;	main.c:210: oled_string("ERROR:");
      0003C5 90 12 0B         [24] 1181 	mov	dptr,#___str_7
      0003C8 75 F0 80         [24] 1182 	mov	b, #0x80
      0003CB 12 0E E7         [24] 1183 	lcall	_oled_string
                                   1184 ;	main.c:212: oled_set_position(7, 0);
      0003CE 75 3C 00         [24] 1185 	mov	_oled_set_position_PARM_2,#0x00
      0003D1 75 82 07         [24] 1186 	mov	dpl, #0x07
      0003D4 12 0A DC         [24] 1187 	lcall	_oled_set_position
                                   1188 ;	main.c:214: if (rx_buffer[parse_index] == 'N' &&
      0003D7 E5 2F            [12] 1189 	mov	a,_parse_index
      0003D9 24 0C            [12] 1190 	add	a, #_rx_buffer
      0003DB F9               [12] 1191 	mov	r1,a
      0003DC 87 07            [24] 1192 	mov	ar7,@r1
      0003DE BF 4E 34         [24] 1193 	cjne	r7,#0x4e,00102$
                                   1194 ;	main.c:215: rx_buffer[parse_index + 1] == 'O' &&
      0003E1 E5 2F            [12] 1195 	mov	a,_parse_index
      0003E3 FE               [12] 1196 	mov	r6,a
      0003E4 04               [12] 1197 	inc	a
      0003E5 24 0C            [12] 1198 	add	a, #_rx_buffer
      0003E7 F9               [12] 1199 	mov	r1,a
      0003E8 87 05            [24] 1200 	mov	ar5,@r1
      0003EA BD 4F 28         [24] 1201 	cjne	r5,#0x4f,00102$
                                   1202 ;	main.c:216: rx_buffer[parse_index + 2] == 'N' &&
      0003ED 74 02            [12] 1203 	mov	a,#0x02
      0003EF 2E               [12] 1204 	add	a, r6
      0003F0 24 0C            [12] 1205 	add	a, #_rx_buffer
      0003F2 F9               [12] 1206 	mov	r1,a
      0003F3 87 05            [24] 1207 	mov	ar5,@r1
      0003F5 BD 4E 1D         [24] 1208 	cjne	r5,#0x4e,00102$
                                   1209 ;	main.c:217: rx_buffer[parse_index + 3] == 'E' &&
      0003F8 74 03            [12] 1210 	mov	a,#0x03
      0003FA 2E               [12] 1211 	add	a, r6
      0003FB 24 0C            [12] 1212 	add	a, #_rx_buffer
      0003FD F9               [12] 1213 	mov	r1,a
      0003FE 87 05            [24] 1214 	mov	ar5,@r1
      000400 BD 45 12         [24] 1215 	cjne	r5,#0x45,00102$
                                   1216 ;	main.c:218: rx_buffer[parse_index + 4] == '\0')
      000403 74 04            [12] 1217 	mov	a,#0x04
      000405 2E               [12] 1218 	add	a, r6
      000406 24 0C            [12] 1219 	add	a, #_rx_buffer
      000408 F9               [12] 1220 	mov	r1,a
      000409 E7               [12] 1221 	mov	a,@r1
      00040A 70 09            [24] 1222 	jnz	00102$
                                   1223 ;	main.c:220: oled_string("NO ERROR");
      00040C 90 12 12         [24] 1224 	mov	dptr,#___str_8
      00040F 75 F0 80         [24] 1225 	mov	b, #0x80
                                   1226 ;	main.c:221: return;
      000412 02 0E E7         [24] 1227 	ljmp	_oled_string
      000415                       1228 00102$:
                                   1229 ;	main.c:224: if (rx_buffer[parse_index] == '\0')
      000415 EF               [12] 1230 	mov	a,r7
      000416 70 09            [24] 1231 	jnz	00108$
                                   1232 ;	main.c:226: oled_string("UNKNOWN ERROR");
      000418 90 12 38         [24] 1233 	mov	dptr,#___str_18
      00041B 75 F0 80         [24] 1234 	mov	b, #0x80
                                   1235 ;	main.c:227: return;
      00041E 02 0E E7         [24] 1236 	ljmp	_oled_string
      000421                       1237 00108$:
                                   1238 ;	main.c:230: for (i = 0; i < 21; i++)
      000421 7F 00            [12] 1239 	mov	r7,#0x00
      000423                       1240 00112$:
                                   1241 ;	main.c:232: if (rx_buffer[parse_index] == '\0')
      000423 E5 2F            [12] 1242 	mov	a,_parse_index
      000425 24 0C            [12] 1243 	add	a, #_rx_buffer
      000427 F9               [12] 1244 	mov	r1,a
      000428 E7               [12] 1245 	mov	a,@r1
      000429 FE               [12] 1246 	mov	r6,a
      00042A 60 11            [24] 1247 	jz	00114$
                                   1248 ;	main.c:235: oled_char(rx_buffer[parse_index]);
      00042C 8E 82            [24] 1249 	mov	dpl, r6
      00042E C0 07            [24] 1250 	push	ar7
      000430 12 0C 1A         [24] 1251 	lcall	_oled_char
      000433 D0 07            [24] 1252 	pop	ar7
                                   1253 ;	main.c:236: parse_index++;
      000435 05 2F            [12] 1254 	inc	_parse_index
                                   1255 ;	main.c:230: for (i = 0; i < 21; i++)
      000437 0F               [12] 1256 	inc	r7
      000438 BF 15 00         [24] 1257 	cjne	r7,#0x15,00183$
      00043B                       1258 00183$:
      00043B 40 E6            [24] 1259 	jc	00112$
      00043D                       1260 00114$:
                                   1261 ;	main.c:238: }
      00043D 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'process_command'
                                   1265 ;------------------------------------------------------------
                                   1266 ;command       Allocated to registers r5 r6 r7 
                                   1267 ;------------------------------------------------------------
                                   1268 ;	main.c:240: static void process_command(char *command)
                                   1269 ;	-----------------------------------------
                                   1270 ;	 function process_command
                                   1271 ;	-----------------------------------------
      00043E                       1272 _process_command:
                                   1273 ;	main.c:242: if (command[0] == 'R' &&
      00043E AD 82            [24] 1274 	mov	r5,dpl
      000440 AE 83            [24] 1275 	mov	r6,dph
      000442 AF F0            [24] 1276 	mov	r7,b
      000444 12 11 C7         [24] 1277 	lcall	__gptrget
      000447 FC               [12] 1278 	mov	r4,a
      000448 BC 52 02         [24] 1279 	cjne	r4,#0x52,00547$
      00044B 80 03            [24] 1280 	sjmp	00548$
      00044D                       1281 00547$:
      00044D 02 05 7B         [24] 1282 	ljmp	00111$
      000450                       1283 00548$:
                                   1284 ;	main.c:243: command[1] == 'E' &&
      000450 74 01            [12] 1285 	mov	a,#0x01
      000452 2D               [12] 1286 	add	a, r5
      000453 F9               [12] 1287 	mov	r1,a
      000454 E4               [12] 1288 	clr	a
      000455 3E               [12] 1289 	addc	a, r6
      000456 FA               [12] 1290 	mov	r2,a
      000457 8F 03            [24] 1291 	mov	ar3,r7
      000459 89 82            [24] 1292 	mov	dpl,r1
      00045B 8A 83            [24] 1293 	mov	dph,r2
      00045D 8B F0            [24] 1294 	mov	b,r3
      00045F 12 11 C7         [24] 1295 	lcall	__gptrget
      000462 F9               [12] 1296 	mov	r1,a
      000463 B9 45 02         [24] 1297 	cjne	r1,#0x45,00549$
      000466 80 03            [24] 1298 	sjmp	00550$
      000468                       1299 00549$:
      000468 02 05 7B         [24] 1300 	ljmp	00111$
      00046B                       1301 00550$:
                                   1302 ;	main.c:244: command[2] == 'L' &&
      00046B 74 02            [12] 1303 	mov	a,#0x02
      00046D 2D               [12] 1304 	add	a, r5
      00046E F9               [12] 1305 	mov	r1,a
      00046F E4               [12] 1306 	clr	a
      000470 3E               [12] 1307 	addc	a, r6
      000471 FA               [12] 1308 	mov	r2,a
      000472 8F 03            [24] 1309 	mov	ar3,r7
      000474 89 82            [24] 1310 	mov	dpl,r1
      000476 8A 83            [24] 1311 	mov	dph,r2
      000478 8B F0            [24] 1312 	mov	b,r3
      00047A 12 11 C7         [24] 1313 	lcall	__gptrget
      00047D F9               [12] 1314 	mov	r1,a
      00047E B9 4C 02         [24] 1315 	cjne	r1,#0x4c,00551$
      000481 80 03            [24] 1316 	sjmp	00552$
      000483                       1317 00551$:
      000483 02 05 7B         [24] 1318 	ljmp	00111$
      000486                       1319 00552$:
                                   1320 ;	main.c:245: command[3] == 'A' &&
      000486 74 03            [12] 1321 	mov	a,#0x03
      000488 2D               [12] 1322 	add	a, r5
      000489 F9               [12] 1323 	mov	r1,a
      00048A E4               [12] 1324 	clr	a
      00048B 3E               [12] 1325 	addc	a, r6
      00048C FA               [12] 1326 	mov	r2,a
      00048D 8F 03            [24] 1327 	mov	ar3,r7
      00048F 89 82            [24] 1328 	mov	dpl,r1
      000491 8A 83            [24] 1329 	mov	dph,r2
      000493 8B F0            [24] 1330 	mov	b,r3
      000495 12 11 C7         [24] 1331 	lcall	__gptrget
      000498 F9               [12] 1332 	mov	r1,a
      000499 B9 41 02         [24] 1333 	cjne	r1,#0x41,00553$
      00049C 80 03            [24] 1334 	sjmp	00554$
      00049E                       1335 00553$:
      00049E 02 05 7B         [24] 1336 	ljmp	00111$
      0004A1                       1337 00554$:
                                   1338 ;	main.c:246: command[4] == 'Y' &&
      0004A1 74 04            [12] 1339 	mov	a,#0x04
      0004A3 2D               [12] 1340 	add	a, r5
      0004A4 F9               [12] 1341 	mov	r1,a
      0004A5 E4               [12] 1342 	clr	a
      0004A6 3E               [12] 1343 	addc	a, r6
      0004A7 FA               [12] 1344 	mov	r2,a
      0004A8 8F 03            [24] 1345 	mov	ar3,r7
      0004AA 89 82            [24] 1346 	mov	dpl,r1
      0004AC 8A 83            [24] 1347 	mov	dph,r2
      0004AE 8B F0            [24] 1348 	mov	b,r3
      0004B0 12 11 C7         [24] 1349 	lcall	__gptrget
      0004B3 F9               [12] 1350 	mov	r1,a
      0004B4 B9 59 02         [24] 1351 	cjne	r1,#0x59,00555$
      0004B7 80 03            [24] 1352 	sjmp	00556$
      0004B9                       1353 00555$:
      0004B9 02 05 7B         [24] 1354 	ljmp	00111$
      0004BC                       1355 00556$:
                                   1356 ;	main.c:247: command[5] == ',')
      0004BC 74 05            [12] 1357 	mov	a,#0x05
      0004BE 2D               [12] 1358 	add	a, r5
      0004BF F9               [12] 1359 	mov	r1,a
      0004C0 E4               [12] 1360 	clr	a
      0004C1 3E               [12] 1361 	addc	a, r6
      0004C2 FA               [12] 1362 	mov	r2,a
      0004C3 8F 03            [24] 1363 	mov	ar3,r7
      0004C5 89 82            [24] 1364 	mov	dpl,r1
      0004C7 8A 83            [24] 1365 	mov	dph,r2
      0004C9 8B F0            [24] 1366 	mov	b,r3
      0004CB 12 11 C7         [24] 1367 	lcall	__gptrget
      0004CE F9               [12] 1368 	mov	r1,a
      0004CF B9 2C 02         [24] 1369 	cjne	r1,#0x2c,00557$
      0004D2 80 03            [24] 1370 	sjmp	00558$
      0004D4                       1371 00557$:
      0004D4 02 05 7B         [24] 1372 	ljmp	00111$
      0004D7                       1373 00558$:
                                   1374 ;	main.c:249: if (command[6] == 'O' &&
      0004D7 74 06            [12] 1375 	mov	a,#0x06
      0004D9 2D               [12] 1376 	add	a, r5
      0004DA F9               [12] 1377 	mov	r1,a
      0004DB E4               [12] 1378 	clr	a
      0004DC 3E               [12] 1379 	addc	a, r6
      0004DD FA               [12] 1380 	mov	r2,a
      0004DE 8F 03            [24] 1381 	mov	ar3,r7
      0004E0 89 82            [24] 1382 	mov	dpl,r1
      0004E2 8A 83            [24] 1383 	mov	dph,r2
      0004E4 8B F0            [24] 1384 	mov	b,r3
      0004E6 12 11 C7         [24] 1385 	lcall	__gptrget
      0004E9 F9               [12] 1386 	mov	r1,a
      0004EA E4               [12] 1387 	clr	a
      0004EB B9 4F 01         [24] 1388 	cjne	r1,#0x4f,00559$
      0004EE 04               [12] 1389 	inc	a
      0004EF                       1390 00559$:
      0004EF FB               [12] 1391 	mov	r3,a
      0004F0 60 38            [24] 1392 	jz	00102$
                                   1393 ;	main.c:250: command[7] == 'N' &&
      0004F2 74 07            [12] 1394 	mov	a,#0x07
      0004F4 2D               [12] 1395 	add	a, r5
      0004F5 F8               [12] 1396 	mov	r0,a
      0004F6 E4               [12] 1397 	clr	a
      0004F7 3E               [12] 1398 	addc	a, r6
      0004F8 F9               [12] 1399 	mov	r1,a
      0004F9 8F 02            [24] 1400 	mov	ar2,r7
      0004FB 88 82            [24] 1401 	mov	dpl,r0
      0004FD 89 83            [24] 1402 	mov	dph,r1
      0004FF 8A F0            [24] 1403 	mov	b,r2
      000501 12 11 C7         [24] 1404 	lcall	__gptrget
      000504 F8               [12] 1405 	mov	r0,a
      000505 B8 4E 22         [24] 1406 	cjne	r0,#0x4e,00102$
                                   1407 ;	main.c:251: command[8] == '\0')
      000508 74 08            [12] 1408 	mov	a,#0x08
      00050A 2D               [12] 1409 	add	a, r5
      00050B F8               [12] 1410 	mov	r0,a
      00050C E4               [12] 1411 	clr	a
      00050D 3E               [12] 1412 	addc	a, r6
      00050E F9               [12] 1413 	mov	r1,a
      00050F 8F 02            [24] 1414 	mov	ar2,r7
      000511 88 82            [24] 1415 	mov	dpl,r0
      000513 89 83            [24] 1416 	mov	dph,r1
      000515 8A F0            [24] 1417 	mov	b,r2
      000517 12 11 C7         [24] 1418 	lcall	__gptrget
      00051A 70 0E            [24] 1419 	jnz	00102$
                                   1420 ;	main.c:253: RELAY_PIN = 0;
                                   1421 ;	assignBit
      00051C C2 A6            [12] 1422 	clr	_P2_6
                                   1423 ;	main.c:254: relay_state = 1;
      00051E 75 2D 01         [24] 1424 	mov	_relay_state,#0x01
                                   1425 ;	main.c:256: uart_write_string("RELAY,ON\r\n");
      000521 90 12 46         [24] 1426 	mov	dptr,#___str_19
      000524 75 F0 80         [24] 1427 	mov	b, #0x80
                                   1428 ;	main.c:257: return;
      000527 02 10 6A         [24] 1429 	ljmp	_uart_write_string
      00052A                       1430 00102$:
                                   1431 ;	main.c:260: if (command[6] == 'O' &&
      00052A EB               [12] 1432 	mov	a,r3
      00052B 60 4E            [24] 1433 	jz	00111$
                                   1434 ;	main.c:261: command[7] == 'F' &&
      00052D 74 07            [12] 1435 	mov	a,#0x07
      00052F 2D               [12] 1436 	add	a, r5
      000530 F9               [12] 1437 	mov	r1,a
      000531 E4               [12] 1438 	clr	a
      000532 3E               [12] 1439 	addc	a, r6
      000533 FA               [12] 1440 	mov	r2,a
      000534 8F 03            [24] 1441 	mov	ar3,r7
      000536 89 82            [24] 1442 	mov	dpl,r1
      000538 8A 83            [24] 1443 	mov	dph,r2
      00053A 8B F0            [24] 1444 	mov	b,r3
      00053C 12 11 C7         [24] 1445 	lcall	__gptrget
      00053F F9               [12] 1446 	mov	r1,a
      000540 B9 46 38         [24] 1447 	cjne	r1,#0x46,00111$
                                   1448 ;	main.c:262: command[8] == 'F' &&
      000543 74 08            [12] 1449 	mov	a,#0x08
      000545 2D               [12] 1450 	add	a, r5
      000546 F9               [12] 1451 	mov	r1,a
      000547 E4               [12] 1452 	clr	a
      000548 3E               [12] 1453 	addc	a, r6
      000549 FA               [12] 1454 	mov	r2,a
      00054A 8F 03            [24] 1455 	mov	ar3,r7
      00054C 89 82            [24] 1456 	mov	dpl,r1
      00054E 8A 83            [24] 1457 	mov	dph,r2
      000550 8B F0            [24] 1458 	mov	b,r3
      000552 12 11 C7         [24] 1459 	lcall	__gptrget
      000555 F9               [12] 1460 	mov	r1,a
      000556 B9 46 22         [24] 1461 	cjne	r1,#0x46,00111$
                                   1462 ;	main.c:263: command[9] == '\0')
      000559 74 09            [12] 1463 	mov	a,#0x09
      00055B 2D               [12] 1464 	add	a, r5
      00055C F9               [12] 1465 	mov	r1,a
      00055D E4               [12] 1466 	clr	a
      00055E 3E               [12] 1467 	addc	a, r6
      00055F FA               [12] 1468 	mov	r2,a
      000560 8F 03            [24] 1469 	mov	ar3,r7
      000562 89 82            [24] 1470 	mov	dpl,r1
      000564 8A 83            [24] 1471 	mov	dph,r2
      000566 8B F0            [24] 1472 	mov	b,r3
      000568 12 11 C7         [24] 1473 	lcall	__gptrget
      00056B 70 0E            [24] 1474 	jnz	00111$
                                   1475 ;	main.c:265: RELAY_PIN = 1;
                                   1476 ;	assignBit
      00056D D2 A6            [12] 1477 	setb	_P2_6
                                   1478 ;	main.c:266: relay_state = 0;
      00056F 75 2D 00         [24] 1479 	mov	_relay_state,#0x00
                                   1480 ;	main.c:268: uart_write_string("RELAY,OFF\r\n");
      000572 90 12 51         [24] 1481 	mov	dptr,#___str_20
      000575 75 F0 80         [24] 1482 	mov	b, #0x80
                                   1483 ;	main.c:269: return;
      000578 02 10 6A         [24] 1484 	ljmp	_uart_write_string
      00057B                       1485 00111$:
                                   1486 ;	main.c:273: if (command[0] == 'B' &&
      00057B BC 42 02         [24] 1487 	cjne	r4,#0x42,00571$
      00057E 80 03            [24] 1488 	sjmp	00572$
      000580                       1489 00571$:
      000580 02 06 D1         [24] 1490 	ljmp	00127$
      000583                       1491 00572$:
                                   1492 ;	main.c:274: command[1] == 'U' &&
      000583 74 01            [12] 1493 	mov	a,#0x01
      000585 2D               [12] 1494 	add	a, r5
      000586 F9               [12] 1495 	mov	r1,a
      000587 E4               [12] 1496 	clr	a
      000588 3E               [12] 1497 	addc	a, r6
      000589 FA               [12] 1498 	mov	r2,a
      00058A 8F 03            [24] 1499 	mov	ar3,r7
      00058C 89 82            [24] 1500 	mov	dpl,r1
      00058E 8A 83            [24] 1501 	mov	dph,r2
      000590 8B F0            [24] 1502 	mov	b,r3
      000592 12 11 C7         [24] 1503 	lcall	__gptrget
      000595 F9               [12] 1504 	mov	r1,a
      000596 B9 55 02         [24] 1505 	cjne	r1,#0x55,00573$
      000599 80 03            [24] 1506 	sjmp	00574$
      00059B                       1507 00573$:
      00059B 02 06 D1         [24] 1508 	ljmp	00127$
      00059E                       1509 00574$:
                                   1510 ;	main.c:275: command[2] == 'Z' &&
      00059E 74 02            [12] 1511 	mov	a,#0x02
      0005A0 2D               [12] 1512 	add	a, r5
      0005A1 F9               [12] 1513 	mov	r1,a
      0005A2 E4               [12] 1514 	clr	a
      0005A3 3E               [12] 1515 	addc	a, r6
      0005A4 FA               [12] 1516 	mov	r2,a
      0005A5 8F 03            [24] 1517 	mov	ar3,r7
      0005A7 89 82            [24] 1518 	mov	dpl,r1
      0005A9 8A 83            [24] 1519 	mov	dph,r2
      0005AB 8B F0            [24] 1520 	mov	b,r3
      0005AD 12 11 C7         [24] 1521 	lcall	__gptrget
      0005B0 F9               [12] 1522 	mov	r1,a
      0005B1 B9 5A 02         [24] 1523 	cjne	r1,#0x5a,00575$
      0005B4 80 03            [24] 1524 	sjmp	00576$
      0005B6                       1525 00575$:
      0005B6 02 06 D1         [24] 1526 	ljmp	00127$
      0005B9                       1527 00576$:
                                   1528 ;	main.c:276: command[3] == 'Z' &&
      0005B9 74 03            [12] 1529 	mov	a,#0x03
      0005BB 2D               [12] 1530 	add	a, r5
      0005BC F9               [12] 1531 	mov	r1,a
      0005BD E4               [12] 1532 	clr	a
      0005BE 3E               [12] 1533 	addc	a, r6
      0005BF FA               [12] 1534 	mov	r2,a
      0005C0 8F 03            [24] 1535 	mov	ar3,r7
      0005C2 89 82            [24] 1536 	mov	dpl,r1
      0005C4 8A 83            [24] 1537 	mov	dph,r2
      0005C6 8B F0            [24] 1538 	mov	b,r3
      0005C8 12 11 C7         [24] 1539 	lcall	__gptrget
      0005CB F9               [12] 1540 	mov	r1,a
      0005CC B9 5A 02         [24] 1541 	cjne	r1,#0x5a,00577$
      0005CF 80 03            [24] 1542 	sjmp	00578$
      0005D1                       1543 00577$:
      0005D1 02 06 D1         [24] 1544 	ljmp	00127$
      0005D4                       1545 00578$:
                                   1546 ;	main.c:277: command[4] == 'E' &&
      0005D4 74 04            [12] 1547 	mov	a,#0x04
      0005D6 2D               [12] 1548 	add	a, r5
      0005D7 F9               [12] 1549 	mov	r1,a
      0005D8 E4               [12] 1550 	clr	a
      0005D9 3E               [12] 1551 	addc	a, r6
      0005DA FA               [12] 1552 	mov	r2,a
      0005DB 8F 03            [24] 1553 	mov	ar3,r7
      0005DD 89 82            [24] 1554 	mov	dpl,r1
      0005DF 8A 83            [24] 1555 	mov	dph,r2
      0005E1 8B F0            [24] 1556 	mov	b,r3
      0005E3 12 11 C7         [24] 1557 	lcall	__gptrget
      0005E6 F9               [12] 1558 	mov	r1,a
      0005E7 B9 45 02         [24] 1559 	cjne	r1,#0x45,00579$
      0005EA 80 03            [24] 1560 	sjmp	00580$
      0005EC                       1561 00579$:
      0005EC 02 06 D1         [24] 1562 	ljmp	00127$
      0005EF                       1563 00580$:
                                   1564 ;	main.c:278: command[5] == 'R' &&
      0005EF 74 05            [12] 1565 	mov	a,#0x05
      0005F1 2D               [12] 1566 	add	a, r5
      0005F2 F9               [12] 1567 	mov	r1,a
      0005F3 E4               [12] 1568 	clr	a
      0005F4 3E               [12] 1569 	addc	a, r6
      0005F5 FA               [12] 1570 	mov	r2,a
      0005F6 8F 03            [24] 1571 	mov	ar3,r7
      0005F8 89 82            [24] 1572 	mov	dpl,r1
      0005FA 8A 83            [24] 1573 	mov	dph,r2
      0005FC 8B F0            [24] 1574 	mov	b,r3
      0005FE 12 11 C7         [24] 1575 	lcall	__gptrget
      000601 F9               [12] 1576 	mov	r1,a
      000602 B9 52 02         [24] 1577 	cjne	r1,#0x52,00581$
      000605 80 03            [24] 1578 	sjmp	00582$
      000607                       1579 00581$:
      000607 02 06 D1         [24] 1580 	ljmp	00127$
      00060A                       1581 00582$:
                                   1582 ;	main.c:279: command[6] == ',')
      00060A 74 06            [12] 1583 	mov	a,#0x06
      00060C 2D               [12] 1584 	add	a, r5
      00060D F9               [12] 1585 	mov	r1,a
      00060E E4               [12] 1586 	clr	a
      00060F 3E               [12] 1587 	addc	a, r6
      000610 FA               [12] 1588 	mov	r2,a
      000611 8F 03            [24] 1589 	mov	ar3,r7
      000613 89 82            [24] 1590 	mov	dpl,r1
      000615 8A 83            [24] 1591 	mov	dph,r2
      000617 8B F0            [24] 1592 	mov	b,r3
      000619 12 11 C7         [24] 1593 	lcall	__gptrget
      00061C F9               [12] 1594 	mov	r1,a
      00061D B9 2C 02         [24] 1595 	cjne	r1,#0x2c,00583$
      000620 80 03            [24] 1596 	sjmp	00584$
      000622                       1597 00583$:
      000622 02 06 D1         [24] 1598 	ljmp	00127$
      000625                       1599 00584$:
                                   1600 ;	main.c:281: if (command[7] == 'O' &&
      000625 74 07            [12] 1601 	mov	a,#0x07
      000627 2D               [12] 1602 	add	a, r5
      000628 F9               [12] 1603 	mov	r1,a
      000629 E4               [12] 1604 	clr	a
      00062A 3E               [12] 1605 	addc	a, r6
      00062B FA               [12] 1606 	mov	r2,a
      00062C 8F 03            [24] 1607 	mov	ar3,r7
      00062E 89 82            [24] 1608 	mov	dpl,r1
      000630 8A 83            [24] 1609 	mov	dph,r2
      000632 8B F0            [24] 1610 	mov	b,r3
      000634 12 11 C7         [24] 1611 	lcall	__gptrget
      000637 F9               [12] 1612 	mov	r1,a
      000638 E4               [12] 1613 	clr	a
      000639 B9 4F 01         [24] 1614 	cjne	r1,#0x4f,00585$
      00063C 04               [12] 1615 	inc	a
      00063D                       1616 00585$:
      00063D FB               [12] 1617 	mov	r3,a
      00063E 60 3C            [24] 1618 	jz	00118$
                                   1619 ;	main.c:282: command[8] == 'N' &&
      000640 74 08            [12] 1620 	mov	a,#0x08
      000642 2D               [12] 1621 	add	a, r5
      000643 F8               [12] 1622 	mov	r0,a
      000644 E4               [12] 1623 	clr	a
      000645 3E               [12] 1624 	addc	a, r6
      000646 F9               [12] 1625 	mov	r1,a
      000647 8F 02            [24] 1626 	mov	ar2,r7
      000649 88 82            [24] 1627 	mov	dpl,r0
      00064B 89 83            [24] 1628 	mov	dph,r1
      00064D 8A F0            [24] 1629 	mov	b,r2
      00064F 12 11 C7         [24] 1630 	lcall	__gptrget
      000652 F8               [12] 1631 	mov	r0,a
      000653 B8 4E 26         [24] 1632 	cjne	r0,#0x4e,00118$
                                   1633 ;	main.c:283: command[9] == '\0')
      000656 74 09            [12] 1634 	mov	a,#0x09
      000658 2D               [12] 1635 	add	a, r5
      000659 F8               [12] 1636 	mov	r0,a
      00065A E4               [12] 1637 	clr	a
      00065B 3E               [12] 1638 	addc	a, r6
      00065C F9               [12] 1639 	mov	r1,a
      00065D 8F 02            [24] 1640 	mov	ar2,r7
      00065F 88 82            [24] 1641 	mov	dpl,r0
      000661 89 83            [24] 1642 	mov	dph,r1
      000663 8A F0            [24] 1643 	mov	b,r2
      000665 12 11 C7         [24] 1644 	lcall	__gptrget
      000668 70 12            [24] 1645 	jnz	00118$
                                   1646 ;	main.c:285: GREEN_LED_PIN = 1;
                                   1647 ;	assignBit
      00066A D2 A0            [12] 1648 	setb	_P2_0
                                   1649 ;	main.c:286: RED_LED_PIN = 0;
                                   1650 ;	assignBit
      00066C C2 A1            [12] 1651 	clr	_P2_1
                                   1652 ;	main.c:287: BUZZER_PIN = 0;
                                   1653 ;	assignBit
      00066E C2 A7            [12] 1654 	clr	_P2_7
                                   1655 ;	main.c:288: buzzer_state = 1;
      000670 75 2E 01         [24] 1656 	mov	_buzzer_state,#0x01
                                   1657 ;	main.c:290: uart_write_string("BUZZER,ON\r\n");
      000673 90 12 5D         [24] 1658 	mov	dptr,#___str_21
      000676 75 F0 80         [24] 1659 	mov	b, #0x80
                                   1660 ;	main.c:291: return;
      000679 02 10 6A         [24] 1661 	ljmp	_uart_write_string
      00067C                       1662 00118$:
                                   1663 ;	main.c:294: if (command[7] == 'O' &&
      00067C EB               [12] 1664 	mov	a,r3
      00067D 60 52            [24] 1665 	jz	00127$
                                   1666 ;	main.c:295: command[8] == 'F' &&
      00067F 74 08            [12] 1667 	mov	a,#0x08
      000681 2D               [12] 1668 	add	a, r5
      000682 F9               [12] 1669 	mov	r1,a
      000683 E4               [12] 1670 	clr	a
      000684 3E               [12] 1671 	addc	a, r6
      000685 FA               [12] 1672 	mov	r2,a
      000686 8F 03            [24] 1673 	mov	ar3,r7
      000688 89 82            [24] 1674 	mov	dpl,r1
      00068A 8A 83            [24] 1675 	mov	dph,r2
      00068C 8B F0            [24] 1676 	mov	b,r3
      00068E 12 11 C7         [24] 1677 	lcall	__gptrget
      000691 F9               [12] 1678 	mov	r1,a
      000692 B9 46 3C         [24] 1679 	cjne	r1,#0x46,00127$
                                   1680 ;	main.c:296: command[9] == 'F' &&
      000695 74 09            [12] 1681 	mov	a,#0x09
      000697 2D               [12] 1682 	add	a, r5
      000698 F9               [12] 1683 	mov	r1,a
      000699 E4               [12] 1684 	clr	a
      00069A 3E               [12] 1685 	addc	a, r6
      00069B FA               [12] 1686 	mov	r2,a
      00069C 8F 03            [24] 1687 	mov	ar3,r7
      00069E 89 82            [24] 1688 	mov	dpl,r1
      0006A0 8A 83            [24] 1689 	mov	dph,r2
      0006A2 8B F0            [24] 1690 	mov	b,r3
      0006A4 12 11 C7         [24] 1691 	lcall	__gptrget
      0006A7 F9               [12] 1692 	mov	r1,a
      0006A8 B9 46 26         [24] 1693 	cjne	r1,#0x46,00127$
                                   1694 ;	main.c:297: command[10] == '\0')
      0006AB 74 0A            [12] 1695 	mov	a,#0x0a
      0006AD 2D               [12] 1696 	add	a, r5
      0006AE F9               [12] 1697 	mov	r1,a
      0006AF E4               [12] 1698 	clr	a
      0006B0 3E               [12] 1699 	addc	a, r6
      0006B1 FA               [12] 1700 	mov	r2,a
      0006B2 8F 03            [24] 1701 	mov	ar3,r7
      0006B4 89 82            [24] 1702 	mov	dpl,r1
      0006B6 8A 83            [24] 1703 	mov	dph,r2
      0006B8 8B F0            [24] 1704 	mov	b,r3
      0006BA 12 11 C7         [24] 1705 	lcall	__gptrget
      0006BD 70 12            [24] 1706 	jnz	00127$
                                   1707 ;	main.c:299: RED_LED_PIN = 1;
                                   1708 ;	assignBit
      0006BF D2 A1            [12] 1709 	setb	_P2_1
                                   1710 ;	main.c:300: GREEN_LED_PIN = 0;
                                   1711 ;	assignBit
      0006C1 C2 A0            [12] 1712 	clr	_P2_0
                                   1713 ;	main.c:301: BUZZER_PIN = 1;
                                   1714 ;	assignBit
      0006C3 D2 A7            [12] 1715 	setb	_P2_7
                                   1716 ;	main.c:302: buzzer_state = 0;
      0006C5 75 2E 00         [24] 1717 	mov	_buzzer_state,#0x00
                                   1718 ;	main.c:304: uart_write_string("BUZZER,OFF\r\n");
      0006C8 90 12 69         [24] 1719 	mov	dptr,#___str_22
      0006CB 75 F0 80         [24] 1720 	mov	b, #0x80
                                   1721 ;	main.c:305: return;
      0006CE 02 10 6A         [24] 1722 	ljmp	_uart_write_string
      0006D1                       1723 00127$:
                                   1724 ;	main.c:309: if (command[0] == 'S' &&
      0006D1 BC 53 02         [24] 1725 	cjne	r4,#0x53,00597$
      0006D4 80 03            [24] 1726 	sjmp	00598$
      0006D6                       1727 00597$:
      0006D6 02 07 BF         [24] 1728 	ljmp	00135$
      0006D9                       1729 00598$:
                                   1730 ;	main.c:310: command[1] == 'T' &&
      0006D9 74 01            [12] 1731 	mov	a,#0x01
      0006DB 2D               [12] 1732 	add	a, r5
      0006DC F9               [12] 1733 	mov	r1,a
      0006DD E4               [12] 1734 	clr	a
      0006DE 3E               [12] 1735 	addc	a, r6
      0006DF FA               [12] 1736 	mov	r2,a
      0006E0 8F 03            [24] 1737 	mov	ar3,r7
      0006E2 89 82            [24] 1738 	mov	dpl,r1
      0006E4 8A 83            [24] 1739 	mov	dph,r2
      0006E6 8B F0            [24] 1740 	mov	b,r3
      0006E8 12 11 C7         [24] 1741 	lcall	__gptrget
      0006EB F9               [12] 1742 	mov	r1,a
      0006EC B9 54 02         [24] 1743 	cjne	r1,#0x54,00599$
      0006EF 80 03            [24] 1744 	sjmp	00600$
      0006F1                       1745 00599$:
      0006F1 02 07 BF         [24] 1746 	ljmp	00135$
      0006F4                       1747 00600$:
                                   1748 ;	main.c:311: command[2] == 'A' &&
      0006F4 74 02            [12] 1749 	mov	a,#0x02
      0006F6 2D               [12] 1750 	add	a, r5
      0006F7 F9               [12] 1751 	mov	r1,a
      0006F8 E4               [12] 1752 	clr	a
      0006F9 3E               [12] 1753 	addc	a, r6
      0006FA FA               [12] 1754 	mov	r2,a
      0006FB 8F 03            [24] 1755 	mov	ar3,r7
      0006FD 89 82            [24] 1756 	mov	dpl,r1
      0006FF 8A 83            [24] 1757 	mov	dph,r2
      000701 8B F0            [24] 1758 	mov	b,r3
      000703 12 11 C7         [24] 1759 	lcall	__gptrget
      000706 F9               [12] 1760 	mov	r1,a
      000707 B9 41 02         [24] 1761 	cjne	r1,#0x41,00601$
      00070A 80 03            [24] 1762 	sjmp	00602$
      00070C                       1763 00601$:
      00070C 02 07 BF         [24] 1764 	ljmp	00135$
      00070F                       1765 00602$:
                                   1766 ;	main.c:312: command[3] == 'T' &&
      00070F 74 03            [12] 1767 	mov	a,#0x03
      000711 2D               [12] 1768 	add	a, r5
      000712 F9               [12] 1769 	mov	r1,a
      000713 E4               [12] 1770 	clr	a
      000714 3E               [12] 1771 	addc	a, r6
      000715 FA               [12] 1772 	mov	r2,a
      000716 8F 03            [24] 1773 	mov	ar3,r7
      000718 89 82            [24] 1774 	mov	dpl,r1
      00071A 8A 83            [24] 1775 	mov	dph,r2
      00071C 8B F0            [24] 1776 	mov	b,r3
      00071E 12 11 C7         [24] 1777 	lcall	__gptrget
      000721 F9               [12] 1778 	mov	r1,a
      000722 B9 54 02         [24] 1779 	cjne	r1,#0x54,00603$
      000725 80 03            [24] 1780 	sjmp	00604$
      000727                       1781 00603$:
      000727 02 07 BF         [24] 1782 	ljmp	00135$
      00072A                       1783 00604$:
                                   1784 ;	main.c:313: command[4] == 'U' &&
      00072A 74 04            [12] 1785 	mov	a,#0x04
      00072C 2D               [12] 1786 	add	a, r5
      00072D F9               [12] 1787 	mov	r1,a
      00072E E4               [12] 1788 	clr	a
      00072F 3E               [12] 1789 	addc	a, r6
      000730 FA               [12] 1790 	mov	r2,a
      000731 8F 03            [24] 1791 	mov	ar3,r7
      000733 89 82            [24] 1792 	mov	dpl,r1
      000735 8A 83            [24] 1793 	mov	dph,r2
      000737 8B F0            [24] 1794 	mov	b,r3
      000739 12 11 C7         [24] 1795 	lcall	__gptrget
      00073C F9               [12] 1796 	mov	r1,a
      00073D B9 55 02         [24] 1797 	cjne	r1,#0x55,00605$
      000740 80 02            [24] 1798 	sjmp	00606$
      000742                       1799 00605$:
      000742 80 7B            [24] 1800 	sjmp	00135$
      000744                       1801 00606$:
                                   1802 ;	main.c:314: command[5] == 'S' &&
      000744 74 05            [12] 1803 	mov	a,#0x05
      000746 2D               [12] 1804 	add	a, r5
      000747 F9               [12] 1805 	mov	r1,a
      000748 E4               [12] 1806 	clr	a
      000749 3E               [12] 1807 	addc	a, r6
      00074A FA               [12] 1808 	mov	r2,a
      00074B 8F 03            [24] 1809 	mov	ar3,r7
      00074D 89 82            [24] 1810 	mov	dpl,r1
      00074F 8A 83            [24] 1811 	mov	dph,r2
      000751 8B F0            [24] 1812 	mov	b,r3
      000753 12 11 C7         [24] 1813 	lcall	__gptrget
      000756 F9               [12] 1814 	mov	r1,a
      000757 B9 53 65         [24] 1815 	cjne	r1,#0x53,00135$
                                   1816 ;	main.c:315: command[6] == '\0')
      00075A 74 06            [12] 1817 	mov	a,#0x06
      00075C 2D               [12] 1818 	add	a, r5
      00075D F9               [12] 1819 	mov	r1,a
      00075E E4               [12] 1820 	clr	a
      00075F 3E               [12] 1821 	addc	a, r6
      000760 FA               [12] 1822 	mov	r2,a
      000761 8F 03            [24] 1823 	mov	ar3,r7
      000763 89 82            [24] 1824 	mov	dpl,r1
      000765 8A 83            [24] 1825 	mov	dph,r2
      000767 8B F0            [24] 1826 	mov	b,r3
      000769 12 11 C7         [24] 1827 	lcall	__gptrget
      00076C 70 51            [24] 1828 	jnz	00135$
                                   1829 ;	main.c:317: uart_write_string("STATUS,RELAY=");
      00076E 90 12 76         [24] 1830 	mov	dptr,#___str_23
      000771 75 F0 80         [24] 1831 	mov	b, #0x80
      000774 12 10 6A         [24] 1832 	lcall	_uart_write_string
                                   1833 ;	main.c:318: uart_write_string(relay_state ? "ON" : "OFF");
      000777 E5 2D            [12] 1834 	mov	a,_relay_state
      000779 60 06            [24] 1835 	jz	00165$
      00077B 7A 84            [12] 1836 	mov	r2,#___str_24
      00077D 7B 12            [12] 1837 	mov	r3,#(___str_24 >> 8)
      00077F 80 04            [24] 1838 	sjmp	00166$
      000781                       1839 00165$:
      000781 7A 87            [12] 1840 	mov	r2,#___str_25
      000783 7B 12            [12] 1841 	mov	r3,#(___str_25 >> 8)
      000785                       1842 00166$:
      000785 8B 01            [24] 1843 	mov	ar1,r3
      000787 7B 80            [12] 1844 	mov	r3,#0x80
      000789 8A 82            [24] 1845 	mov	dpl, r2
      00078B 89 83            [24] 1846 	mov	dph, r1
      00078D 8B F0            [24] 1847 	mov	b, r3
      00078F 12 10 6A         [24] 1848 	lcall	_uart_write_string
                                   1849 ;	main.c:319: uart_write_string(",BUZZER=");
      000792 90 12 8B         [24] 1850 	mov	dptr,#___str_26
      000795 75 F0 80         [24] 1851 	mov	b, #0x80
      000798 12 10 6A         [24] 1852 	lcall	_uart_write_string
                                   1853 ;	main.c:320: uart_write_string(buzzer_state ? "ON" : "OFF");
      00079B E5 2E            [12] 1854 	mov	a,_buzzer_state
      00079D 60 06            [24] 1855 	jz	00167$
      00079F 7A 84            [12] 1856 	mov	r2,#___str_24
      0007A1 7B 12            [12] 1857 	mov	r3,#(___str_24 >> 8)
      0007A3 80 04            [24] 1858 	sjmp	00168$
      0007A5                       1859 00167$:
      0007A5 7A 87            [12] 1860 	mov	r2,#___str_25
      0007A7 7B 12            [12] 1861 	mov	r3,#(___str_25 >> 8)
      0007A9                       1862 00168$:
      0007A9 8B 01            [24] 1863 	mov	ar1,r3
      0007AB 7B 80            [12] 1864 	mov	r3,#0x80
      0007AD 8A 82            [24] 1865 	mov	dpl, r2
      0007AF 89 83            [24] 1866 	mov	dph, r1
      0007B1 8B F0            [24] 1867 	mov	b, r3
      0007B3 12 10 6A         [24] 1868 	lcall	_uart_write_string
                                   1869 ;	main.c:321: uart_write_string("\r\n");
      0007B6 90 12 94         [24] 1870 	mov	dptr,#___str_27
      0007B9 75 F0 80         [24] 1871 	mov	b, #0x80
                                   1872 ;	main.c:323: return;
      0007BC 02 10 6A         [24] 1873 	ljmp	_uart_write_string
      0007BF                       1874 00135$:
                                   1875 ;	main.c:326: if (command[0] == 'D' &&
      0007BF E4               [12] 1876 	clr	a
      0007C0 BC 44 01         [24] 1877 	cjne	r4,#0x44,00612$
      0007C3 04               [12] 1878 	inc	a
      0007C4                       1879 00612$:
      0007C4 FB               [12] 1880 	mov	r3,a
      0007C5 60 71            [24] 1881 	jz	00143$
                                   1882 ;	main.c:327: command[1] == 'A' &&
      0007C7 74 01            [12] 1883 	mov	a,#0x01
      0007C9 2D               [12] 1884 	add	a, r5
      0007CA F8               [12] 1885 	mov	r0,a
      0007CB E4               [12] 1886 	clr	a
      0007CC 3E               [12] 1887 	addc	a, r6
      0007CD F9               [12] 1888 	mov	r1,a
      0007CE 8F 02            [24] 1889 	mov	ar2,r7
      0007D0 88 82            [24] 1890 	mov	dpl,r0
      0007D2 89 83            [24] 1891 	mov	dph,r1
      0007D4 8A F0            [24] 1892 	mov	b,r2
      0007D6 12 11 C7         [24] 1893 	lcall	__gptrget
      0007D9 F8               [12] 1894 	mov	r0,a
      0007DA B8 41 5B         [24] 1895 	cjne	r0,#0x41,00143$
                                   1896 ;	main.c:328: command[2] == 'T' &&
      0007DD 74 02            [12] 1897 	mov	a,#0x02
      0007DF 2D               [12] 1898 	add	a, r5
      0007E0 F8               [12] 1899 	mov	r0,a
      0007E1 E4               [12] 1900 	clr	a
      0007E2 3E               [12] 1901 	addc	a, r6
      0007E3 F9               [12] 1902 	mov	r1,a
      0007E4 8F 02            [24] 1903 	mov	ar2,r7
      0007E6 88 82            [24] 1904 	mov	dpl,r0
      0007E8 89 83            [24] 1905 	mov	dph,r1
      0007EA 8A F0            [24] 1906 	mov	b,r2
      0007EC 12 11 C7         [24] 1907 	lcall	__gptrget
      0007EF F8               [12] 1908 	mov	r0,a
      0007F0 B8 54 45         [24] 1909 	cjne	r0,#0x54,00143$
                                   1910 ;	main.c:329: command[3] == 'A' &&
      0007F3 74 03            [12] 1911 	mov	a,#0x03
      0007F5 2D               [12] 1912 	add	a, r5
      0007F6 F8               [12] 1913 	mov	r0,a
      0007F7 E4               [12] 1914 	clr	a
      0007F8 3E               [12] 1915 	addc	a, r6
      0007F9 F9               [12] 1916 	mov	r1,a
      0007FA 8F 02            [24] 1917 	mov	ar2,r7
      0007FC 88 82            [24] 1918 	mov	dpl,r0
      0007FE 89 83            [24] 1919 	mov	dph,r1
      000800 8A F0            [24] 1920 	mov	b,r2
      000802 12 11 C7         [24] 1921 	lcall	__gptrget
      000805 F8               [12] 1922 	mov	r0,a
      000806 B8 41 2F         [24] 1923 	cjne	r0,#0x41,00143$
                                   1924 ;	main.c:330: command[4] == '1' &&
      000809 74 04            [12] 1925 	mov	a,#0x04
      00080B 2D               [12] 1926 	add	a, r5
      00080C F8               [12] 1927 	mov	r0,a
      00080D E4               [12] 1928 	clr	a
      00080E 3E               [12] 1929 	addc	a, r6
      00080F F9               [12] 1930 	mov	r1,a
      000810 8F 02            [24] 1931 	mov	ar2,r7
      000812 88 82            [24] 1932 	mov	dpl,r0
      000814 89 83            [24] 1933 	mov	dph,r1
      000816 8A F0            [24] 1934 	mov	b,r2
      000818 12 11 C7         [24] 1935 	lcall	__gptrget
      00081B F8               [12] 1936 	mov	r0,a
      00081C B8 31 19         [24] 1937 	cjne	r0,#0x31,00143$
                                   1938 ;	main.c:331: command[5] == ',')
      00081F 74 05            [12] 1939 	mov	a,#0x05
      000821 2D               [12] 1940 	add	a, r5
      000822 F8               [12] 1941 	mov	r0,a
      000823 E4               [12] 1942 	clr	a
      000824 3E               [12] 1943 	addc	a, r6
      000825 F9               [12] 1944 	mov	r1,a
      000826 8F 02            [24] 1945 	mov	ar2,r7
      000828 88 82            [24] 1946 	mov	dpl,r0
      00082A 89 83            [24] 1947 	mov	dph,r1
      00082C 8A F0            [24] 1948 	mov	b,r2
      00082E 12 11 C7         [24] 1949 	lcall	__gptrget
      000831 F8               [12] 1950 	mov	r0,a
      000832 B8 2C 03         [24] 1951 	cjne	r0,#0x2c,00143$
                                   1952 ;	main.c:333: process_data1();
                                   1953 ;	main.c:334: return;
      000835 02 02 72         [24] 1954 	ljmp	_process_data1
      000838                       1955 00143$:
                                   1956 ;	main.c:337: if (command[0] == 'D' &&
      000838 EB               [12] 1957 	mov	a,r3
      000839 60 71            [24] 1958 	jz	00150$
                                   1959 ;	main.c:338: command[1] == 'A' &&
      00083B 74 01            [12] 1960 	mov	a,#0x01
      00083D 2D               [12] 1961 	add	a, r5
      00083E F9               [12] 1962 	mov	r1,a
      00083F E4               [12] 1963 	clr	a
      000840 3E               [12] 1964 	addc	a, r6
      000841 FA               [12] 1965 	mov	r2,a
      000842 8F 03            [24] 1966 	mov	ar3,r7
      000844 89 82            [24] 1967 	mov	dpl,r1
      000846 8A 83            [24] 1968 	mov	dph,r2
      000848 8B F0            [24] 1969 	mov	b,r3
      00084A 12 11 C7         [24] 1970 	lcall	__gptrget
      00084D F9               [12] 1971 	mov	r1,a
      00084E B9 41 5B         [24] 1972 	cjne	r1,#0x41,00150$
                                   1973 ;	main.c:339: command[2] == 'T' &&
      000851 74 02            [12] 1974 	mov	a,#0x02
      000853 2D               [12] 1975 	add	a, r5
      000854 F9               [12] 1976 	mov	r1,a
      000855 E4               [12] 1977 	clr	a
      000856 3E               [12] 1978 	addc	a, r6
      000857 FA               [12] 1979 	mov	r2,a
      000858 8F 03            [24] 1980 	mov	ar3,r7
      00085A 89 82            [24] 1981 	mov	dpl,r1
      00085C 8A 83            [24] 1982 	mov	dph,r2
      00085E 8B F0            [24] 1983 	mov	b,r3
      000860 12 11 C7         [24] 1984 	lcall	__gptrget
      000863 F9               [12] 1985 	mov	r1,a
      000864 B9 54 45         [24] 1986 	cjne	r1,#0x54,00150$
                                   1987 ;	main.c:340: command[3] == 'A' &&
      000867 74 03            [12] 1988 	mov	a,#0x03
      000869 2D               [12] 1989 	add	a, r5
      00086A F9               [12] 1990 	mov	r1,a
      00086B E4               [12] 1991 	clr	a
      00086C 3E               [12] 1992 	addc	a, r6
      00086D FA               [12] 1993 	mov	r2,a
      00086E 8F 03            [24] 1994 	mov	ar3,r7
      000870 89 82            [24] 1995 	mov	dpl,r1
      000872 8A 83            [24] 1996 	mov	dph,r2
      000874 8B F0            [24] 1997 	mov	b,r3
      000876 12 11 C7         [24] 1998 	lcall	__gptrget
      000879 F9               [12] 1999 	mov	r1,a
      00087A B9 41 2F         [24] 2000 	cjne	r1,#0x41,00150$
                                   2001 ;	main.c:341: command[4] == '2' &&
      00087D 74 04            [12] 2002 	mov	a,#0x04
      00087F 2D               [12] 2003 	add	a, r5
      000880 F9               [12] 2004 	mov	r1,a
      000881 E4               [12] 2005 	clr	a
      000882 3E               [12] 2006 	addc	a, r6
      000883 FA               [12] 2007 	mov	r2,a
      000884 8F 03            [24] 2008 	mov	ar3,r7
      000886 89 82            [24] 2009 	mov	dpl,r1
      000888 8A 83            [24] 2010 	mov	dph,r2
      00088A 8B F0            [24] 2011 	mov	b,r3
      00088C 12 11 C7         [24] 2012 	lcall	__gptrget
      00088F F9               [12] 2013 	mov	r1,a
      000890 B9 32 19         [24] 2014 	cjne	r1,#0x32,00150$
                                   2015 ;	main.c:342: command[5] == ',')
      000893 74 05            [12] 2016 	mov	a,#0x05
      000895 2D               [12] 2017 	add	a, r5
      000896 F9               [12] 2018 	mov	r1,a
      000897 E4               [12] 2019 	clr	a
      000898 3E               [12] 2020 	addc	a, r6
      000899 FA               [12] 2021 	mov	r2,a
      00089A 8F 03            [24] 2022 	mov	ar3,r7
      00089C 89 82            [24] 2023 	mov	dpl,r1
      00089E 8A 83            [24] 2024 	mov	dph,r2
      0008A0 8B F0            [24] 2025 	mov	b,r3
      0008A2 12 11 C7         [24] 2026 	lcall	__gptrget
      0008A5 F9               [12] 2027 	mov	r1,a
      0008A6 B9 2C 03         [24] 2028 	cjne	r1,#0x2c,00150$
                                   2029 ;	main.c:344: process_data2();
                                   2030 ;	main.c:345: return;
      0008A9 02 03 20         [24] 2031 	ljmp	_process_data2
      0008AC                       2032 00150$:
                                   2033 ;	main.c:348: if (command[0] == 'E' &&
      0008AC BC 45 02         [24] 2034 	cjne	r4,#0x45,00636$
      0008AF 80 01            [24] 2035 	sjmp	00637$
      0008B1                       2036 00636$:
      0008B1 22               [24] 2037 	ret
      0008B2                       2038 00637$:
                                   2039 ;	main.c:349: command[1] == 'R' &&
      0008B2 74 01            [12] 2040 	mov	a,#0x01
      0008B4 2D               [12] 2041 	add	a, r5
      0008B5 FA               [12] 2042 	mov	r2,a
      0008B6 E4               [12] 2043 	clr	a
      0008B7 3E               [12] 2044 	addc	a, r6
      0008B8 FB               [12] 2045 	mov	r3,a
      0008B9 8F 04            [24] 2046 	mov	ar4,r7
      0008BB 8A 82            [24] 2047 	mov	dpl,r2
      0008BD 8B 83            [24] 2048 	mov	dph,r3
      0008BF 8C F0            [24] 2049 	mov	b,r4
      0008C1 12 11 C7         [24] 2050 	lcall	__gptrget
      0008C4 FA               [12] 2051 	mov	r2,a
      0008C5 BA 52 59         [24] 2052 	cjne	r2,#0x52,00163$
                                   2053 ;	main.c:350: command[2] == 'R' &&
      0008C8 74 02            [12] 2054 	mov	a,#0x02
      0008CA 2D               [12] 2055 	add	a, r5
      0008CB FA               [12] 2056 	mov	r2,a
      0008CC E4               [12] 2057 	clr	a
      0008CD 3E               [12] 2058 	addc	a, r6
      0008CE FB               [12] 2059 	mov	r3,a
      0008CF 8F 04            [24] 2060 	mov	ar4,r7
      0008D1 8A 82            [24] 2061 	mov	dpl,r2
      0008D3 8B 83            [24] 2062 	mov	dph,r3
      0008D5 8C F0            [24] 2063 	mov	b,r4
      0008D7 12 11 C7         [24] 2064 	lcall	__gptrget
      0008DA FA               [12] 2065 	mov	r2,a
      0008DB BA 52 43         [24] 2066 	cjne	r2,#0x52,00163$
                                   2067 ;	main.c:351: command[3] == 'O' &&
      0008DE 74 03            [12] 2068 	mov	a,#0x03
      0008E0 2D               [12] 2069 	add	a, r5
      0008E1 FA               [12] 2070 	mov	r2,a
      0008E2 E4               [12] 2071 	clr	a
      0008E3 3E               [12] 2072 	addc	a, r6
      0008E4 FB               [12] 2073 	mov	r3,a
      0008E5 8F 04            [24] 2074 	mov	ar4,r7
      0008E7 8A 82            [24] 2075 	mov	dpl,r2
      0008E9 8B 83            [24] 2076 	mov	dph,r3
      0008EB 8C F0            [24] 2077 	mov	b,r4
      0008ED 12 11 C7         [24] 2078 	lcall	__gptrget
      0008F0 FA               [12] 2079 	mov	r2,a
      0008F1 BA 4F 2D         [24] 2080 	cjne	r2,#0x4f,00163$
                                   2081 ;	main.c:352: command[4] == 'R' &&
      0008F4 74 04            [12] 2082 	mov	a,#0x04
      0008F6 2D               [12] 2083 	add	a, r5
      0008F7 FA               [12] 2084 	mov	r2,a
      0008F8 E4               [12] 2085 	clr	a
      0008F9 3E               [12] 2086 	addc	a, r6
      0008FA FB               [12] 2087 	mov	r3,a
      0008FB 8F 04            [24] 2088 	mov	ar4,r7
      0008FD 8A 82            [24] 2089 	mov	dpl,r2
      0008FF 8B 83            [24] 2090 	mov	dph,r3
      000901 8C F0            [24] 2091 	mov	b,r4
      000903 12 11 C7         [24] 2092 	lcall	__gptrget
      000906 FA               [12] 2093 	mov	r2,a
      000907 BA 52 17         [24] 2094 	cjne	r2,#0x52,00163$
                                   2095 ;	main.c:353: command[5] == ',')
      00090A 74 05            [12] 2096 	mov	a,#0x05
      00090C 2D               [12] 2097 	add	a, r5
      00090D FD               [12] 2098 	mov	r5,a
      00090E E4               [12] 2099 	clr	a
      00090F 3E               [12] 2100 	addc	a, r6
      000910 FE               [12] 2101 	mov	r6,a
      000911 8D 82            [24] 2102 	mov	dpl,r5
      000913 8E 83            [24] 2103 	mov	dph,r6
      000915 8F F0            [24] 2104 	mov	b,r7
      000917 12 11 C7         [24] 2105 	lcall	__gptrget
      00091A FD               [12] 2106 	mov	r5,a
      00091B BD 2C 03         [24] 2107 	cjne	r5,#0x2c,00163$
                                   2108 ;	main.c:355: process_error();
                                   2109 ;	main.c:356: return;
                                   2110 ;	main.c:358: }
      00091E 02 03 B6         [24] 2111 	ljmp	_process_error
      000921                       2112 00163$:
      000921 22               [24] 2113 	ret
                                   2114 ;------------------------------------------------------------
                                   2115 ;Allocation info for local variables in function 'uart_receive_process'
                                   2116 ;------------------------------------------------------------
                                   2117 ;data          Allocated with name '_uart_receive_process_data_10000_89'
                                   2118 ;------------------------------------------------------------
                                   2119 ;	main.c:360: static void uart_receive_process(void)
                                   2120 ;	-----------------------------------------
                                   2121 ;	 function uart_receive_process
                                   2122 ;	-----------------------------------------
      000922                       2123 _uart_receive_process:
                                   2124 ;	main.c:364: if (!uart_read_byte(&data))
      000922 90 00 33         [24] 2125 	mov	dptr,#_uart_receive_process_data_10000_89
      000925 75 F0 40         [24] 2126 	mov	b, #0x40
      000928 12 10 A1         [24] 2127 	lcall	_uart_read_byte
      00092B E5 82            [12] 2128 	mov	a, dpl
      00092D 70 01            [24] 2129 	jnz	00102$
                                   2130 ;	main.c:365: return;
      00092F 22               [24] 2131 	ret
      000930                       2132 00102$:
                                   2133 ;	main.c:367: if (data == '\r' || data == '\n')
      000930 74 0D            [12] 2134 	mov	a,#0x0d
      000932 B5 33 02         [24] 2135 	cjne	a,_uart_receive_process_data_10000_89,00161$
      000935 80 05            [24] 2136 	sjmp	00105$
      000937                       2137 00161$:
      000937 74 0A            [12] 2138 	mov	a,#0x0a
      000939 B5 33 18         [24] 2139 	cjne	a,_uart_receive_process_data_10000_89,00106$
      00093C                       2140 00105$:
                                   2141 ;	main.c:369: if (rx_length > 0)
      00093C E5 2C            [12] 2142 	mov	a,_rx_length
      00093E 60 13            [24] 2143 	jz	00104$
                                   2144 ;	main.c:371: rx_buffer[rx_length] = '\0';
      000940 E5 2C            [12] 2145 	mov	a,_rx_length
      000942 24 0C            [12] 2146 	add	a, #_rx_buffer
      000944 F8               [12] 2147 	mov	r0,a
      000945 76 00            [12] 2148 	mov	@r0,#0x00
                                   2149 ;	main.c:373: process_command((char *)rx_buffer);
      000947 90 00 0C         [24] 2150 	mov	dptr,#_rx_buffer
      00094A 75 F0 40         [24] 2151 	mov	b, #0x40
      00094D 12 04 3E         [24] 2152 	lcall	_process_command
                                   2153 ;	main.c:375: rx_length = 0;
      000950 75 2C 00         [24] 2154 	mov	_rx_length,#0x00
      000953                       2155 00104$:
                                   2156 ;	main.c:378: return;
      000953 22               [24] 2157 	ret
      000954                       2158 00106$:
                                   2159 ;	main.c:381: if (data == 8 || data == 127)
      000954 74 08            [12] 2160 	mov	a,#0x08
      000956 B5 33 02         [24] 2161 	cjne	a,_uart_receive_process_data_10000_89,00165$
      000959 80 05            [24] 2162 	sjmp	00110$
      00095B                       2163 00165$:
      00095B 74 7F            [12] 2164 	mov	a,#0x7f
      00095D B5 33 07         [24] 2165 	cjne	a,_uart_receive_process_data_10000_89,00111$
      000960                       2166 00110$:
                                   2167 ;	main.c:383: if (rx_length > 0)
      000960 E5 2C            [12] 2168 	mov	a,_rx_length
      000962 60 02            [24] 2169 	jz	00109$
                                   2170 ;	main.c:384: rx_length--;
      000964 15 2C            [12] 2171 	dec	_rx_length
      000966                       2172 00109$:
                                   2173 ;	main.c:386: return;
      000966 22               [24] 2174 	ret
      000967                       2175 00111$:
                                   2176 ;	main.c:389: if (rx_length < RX_BUFFER_SIZE - 1)
      000967 74 E1            [12] 2177 	mov	a,#0x100 - 0x1f
      000969 25 2C            [12] 2178 	add	a,_rx_length
      00096B 40 0B            [24] 2179 	jc	00114$
                                   2180 ;	main.c:391: rx_buffer[rx_length++] = data;
      00096D AF 2C            [24] 2181 	mov	r7,_rx_length
      00096F 05 2C            [12] 2182 	inc	_rx_length
      000971 EF               [12] 2183 	mov	a,r7
      000972 24 0C            [12] 2184 	add	a, #_rx_buffer
      000974 F8               [12] 2185 	mov	r0,a
      000975 A6 33            [24] 2186 	mov	@r0,_uart_receive_process_data_10000_89
      000977 22               [24] 2187 	ret
      000978                       2188 00114$:
                                   2189 ;	main.c:395: rx_length = 0;
      000978 75 2C 00         [24] 2190 	mov	_rx_length,#0x00
                                   2191 ;	main.c:397: }
      00097B 22               [24] 2192 	ret
                                   2193 ;------------------------------------------------------------
                                   2194 ;Allocation info for local variables in function 'main'
                                   2195 ;------------------------------------------------------------
                                   2196 ;uart_status   Allocated to registers 
                                   2197 ;------------------------------------------------------------
                                   2198 ;	main.c:399: void main(void)
                                   2199 ;	-----------------------------------------
                                   2200 ;	 function main
                                   2201 ;	-----------------------------------------
      00097C                       2202 _main:
                                   2203 ;	main.c:403: EA = 0;
                                   2204 ;	assignBit
      00097C C2 AF            [12] 2205 	clr	_EA
                                   2206 ;	main.c:405: RELAY_PIN = 1;
                                   2207 ;	assignBit
      00097E D2 A6            [12] 2208 	setb	_P2_6
                                   2209 ;	main.c:406: BUZZER_PIN = 1;
                                   2210 ;	assignBit
      000980 D2 A7            [12] 2211 	setb	_P2_7
                                   2212 ;	main.c:407: GREEN_LED_PIN = 0;
                                   2213 ;	assignBit
      000982 C2 A0            [12] 2214 	clr	_P2_0
                                   2215 ;	main.c:409: relay_state = 0;
      000984 75 2D 00         [24] 2216 	mov	_relay_state,#0x00
                                   2217 ;	main.c:410: buzzer_state = 0;
      000987 75 2E 00         [24] 2218 	mov	_buzzer_state,#0x00
                                   2219 ;	main.c:412: timer0_init();
      00098A 12 09 CB         [24] 2220 	lcall	_timer0_init
                                   2221 ;	main.c:414: EA = 1;
                                   2222 ;	assignBit
      00098D D2 AF            [12] 2223 	setb	_EA
                                   2224 ;	main.c:416: oled_init();
      00098F 12 0B 6B         [24] 2225 	lcall	_oled_init
                                   2226 ;	main.c:417: oled_initial_screen();
      000992 12 01 CD         [24] 2227 	lcall	_oled_initial_screen
                                   2228 ;	main.c:419: uart_status = uart_init(9600);
      000995 90 25 80         [24] 2229 	mov	dptr,#0x2580
      000998 E4               [12] 2230 	clr	a
      000999 F5 F0            [12] 2231 	mov	b,a
      00099B 12 0F 61         [24] 2232 	lcall	_uart_init
      00099E E5 82            [12] 2233 	mov	a, dpl
                                   2234 ;	main.c:421: if (!uart_status)
      0009A0 70 1B            [24] 2235 	jnz	00105$
                                   2236 ;	main.c:423: oled_clear();
      0009A2 12 0B 19         [24] 2237 	lcall	_oled_clear
                                   2238 ;	main.c:424: oled_set_position(0, 0);
      0009A5 75 3C 00         [24] 2239 	mov	_oled_set_position_PARM_2,#0x00
      0009A8 75 82 00         [24] 2240 	mov	dpl, #0x00
      0009AB 12 0A DC         [24] 2241 	lcall	_oled_set_position
                                   2242 ;	main.c:425: oled_string("UART INIT FAILED");
      0009AE 90 12 97         [24] 2243 	mov	dptr,#___str_28
      0009B1 75 F0 80         [24] 2244 	mov	b, #0x80
      0009B4 12 0E E7         [24] 2245 	lcall	_oled_string
                                   2246 ;	main.c:427: RELAY_PIN = 1;
                                   2247 ;	assignBit
      0009B7 D2 A6            [12] 2248 	setb	_P2_6
                                   2249 ;	main.c:428: BUZZER_PIN = 1;
                                   2250 ;	assignBit
      0009B9 D2 A7            [12] 2251 	setb	_P2_7
                                   2252 ;	main.c:430: while (1);
      0009BB                       2253 00102$:
      0009BB 80 FE            [24] 2254 	sjmp	00102$
      0009BD                       2255 00105$:
                                   2256 ;	main.c:433: uart_write_string("UART READY\r\n");
      0009BD 90 12 A8         [24] 2257 	mov	dptr,#___str_29
      0009C0 75 F0 80         [24] 2258 	mov	b, #0x80
      0009C3 12 10 6A         [24] 2259 	lcall	_uart_write_string
                                   2260 ;	main.c:435: while (1)
      0009C6                       2261 00107$:
                                   2262 ;	main.c:437: uart_receive_process();
      0009C6 12 09 22         [24] 2263 	lcall	_uart_receive_process
                                   2264 ;	main.c:439: }
      0009C9 80 FB            [24] 2265 	sjmp	00107$
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
                                   2268 	.area CONST   (CODE)
      0011E7                       2269 ___str_0:
      0011E7 56 3A 2D 2D           2270 	.ascii "V:--"
      0011EB 00                    2271 	.db 0x00
                                   2272 	.area CSEG    (CODE)
                                   2273 	.area CONST   (CODE)
      0011EC                       2274 ___str_1:
      0011EC 46 3A 2D 2D           2275 	.ascii "F:--"
      0011F0 00                    2276 	.db 0x00
                                   2277 	.area CSEG    (CODE)
                                   2278 	.area CONST   (CODE)
      0011F1                       2279 ___str_2:
      0011F1 49 3A 2D 2D           2280 	.ascii "I:--"
      0011F5 00                    2281 	.db 0x00
                                   2282 	.area CSEG    (CODE)
                                   2283 	.area CONST   (CODE)
      0011F6                       2284 ___str_3:
      0011F6 45 3A 2D 2D           2285 	.ascii "E:--"
      0011FA 00                    2286 	.db 0x00
                                   2287 	.area CSEG    (CODE)
                                   2288 	.area CONST   (CODE)
      0011FB                       2289 ___str_4:
      0011FB 50 3A 2D 2D           2290 	.ascii "P:--"
      0011FF 00                    2291 	.db 0x00
                                   2292 	.area CSEG    (CODE)
                                   2293 	.area CONST   (CODE)
      001200                       2294 ___str_5:
      001200 4C 3A 2D 2D           2295 	.ascii "L:--"
      001204 00                    2296 	.db 0x00
                                   2297 	.area CSEG    (CODE)
                                   2298 	.area CONST   (CODE)
      001205                       2299 ___str_6:
      001205 50 46 3A 2D 2D        2300 	.ascii "PF:--"
      00120A 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
      00120B                       2304 ___str_7:
      00120B 45 52 52 4F 52 3A     2305 	.ascii "ERROR:"
      001211 00                    2306 	.db 0x00
                                   2307 	.area CSEG    (CODE)
                                   2308 	.area CONST   (CODE)
      001212                       2309 ___str_8:
      001212 4E 4F 20 45 52 52 4F  2310 	.ascii "NO ERROR"
             52
      00121A 00                    2311 	.db 0x00
                                   2312 	.area CSEG    (CODE)
                                   2313 	.area CONST   (CODE)
      00121B                       2314 ___str_9:
      00121B 56 3A                 2315 	.ascii "V:"
      00121D 00                    2316 	.db 0x00
                                   2317 	.area CSEG    (CODE)
                                   2318 	.area CONST   (CODE)
      00121E                       2319 ___str_10:
      00121E 49 3A                 2320 	.ascii "I:"
      001220 00                    2321 	.db 0x00
                                   2322 	.area CSEG    (CODE)
                                   2323 	.area CONST   (CODE)
      001221                       2324 ___str_11:
      001221 50 3A                 2325 	.ascii "P:"
      001223 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      001224                       2329 ___str_12:
      001224 50 46 3A              2330 	.ascii "PF:"
      001227 00                    2331 	.db 0x00
                                   2332 	.area CSEG    (CODE)
                                   2333 	.area CONST   (CODE)
      001228                       2334 ___str_13:
      001228 46 3A                 2335 	.ascii "F:"
      00122A 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      00122B                       2339 ___str_14:
      00122B 48 7A                 2340 	.ascii "Hz"
      00122D 00                    2341 	.db 0x00
                                   2342 	.area CSEG    (CODE)
                                   2343 	.area CONST   (CODE)
      00122E                       2344 ___str_15:
      00122E 45 3A                 2345 	.ascii "E:"
      001230 00                    2346 	.db 0x00
                                   2347 	.area CSEG    (CODE)
                                   2348 	.area CONST   (CODE)
      001231                       2349 ___str_16:
      001231 6B 57 68              2350 	.ascii "kWh"
      001234 00                    2351 	.db 0x00
                                   2352 	.area CSEG    (CODE)
                                   2353 	.area CONST   (CODE)
      001235                       2354 ___str_17:
      001235 4C 3A                 2355 	.ascii "L:"
      001237 00                    2356 	.db 0x00
                                   2357 	.area CSEG    (CODE)
                                   2358 	.area CONST   (CODE)
      001238                       2359 ___str_18:
      001238 55 4E 4B 4E 4F 57 4E  2360 	.ascii "UNKNOWN ERROR"
             20 45 52 52 4F 52
      001245 00                    2361 	.db 0x00
                                   2362 	.area CSEG    (CODE)
                                   2363 	.area CONST   (CODE)
      001246                       2364 ___str_19:
      001246 52 45 4C 41 59 2C 4F  2365 	.ascii "RELAY,ON"
             4E
      00124E 0D                    2366 	.db 0x0d
      00124F 0A                    2367 	.db 0x0a
      001250 00                    2368 	.db 0x00
                                   2369 	.area CSEG    (CODE)
                                   2370 	.area CONST   (CODE)
      001251                       2371 ___str_20:
      001251 52 45 4C 41 59 2C 4F  2372 	.ascii "RELAY,OFF"
             46 46
      00125A 0D                    2373 	.db 0x0d
      00125B 0A                    2374 	.db 0x0a
      00125C 00                    2375 	.db 0x00
                                   2376 	.area CSEG    (CODE)
                                   2377 	.area CONST   (CODE)
      00125D                       2378 ___str_21:
      00125D 42 55 5A 5A 45 52 2C  2379 	.ascii "BUZZER,ON"
             4F 4E
      001266 0D                    2380 	.db 0x0d
      001267 0A                    2381 	.db 0x0a
      001268 00                    2382 	.db 0x00
                                   2383 	.area CSEG    (CODE)
                                   2384 	.area CONST   (CODE)
      001269                       2385 ___str_22:
      001269 42 55 5A 5A 45 52 2C  2386 	.ascii "BUZZER,OFF"
             4F 46 46
      001273 0D                    2387 	.db 0x0d
      001274 0A                    2388 	.db 0x0a
      001275 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      001276                       2392 ___str_23:
      001276 53 54 41 54 55 53 2C  2393 	.ascii "STATUS,RELAY="
             52 45 4C 41 59 3D
      001283 00                    2394 	.db 0x00
                                   2395 	.area CSEG    (CODE)
                                   2396 	.area CONST   (CODE)
      001284                       2397 ___str_24:
      001284 4F 4E                 2398 	.ascii "ON"
      001286 00                    2399 	.db 0x00
                                   2400 	.area CSEG    (CODE)
                                   2401 	.area CONST   (CODE)
      001287                       2402 ___str_25:
      001287 4F 46 46              2403 	.ascii "OFF"
      00128A 00                    2404 	.db 0x00
                                   2405 	.area CSEG    (CODE)
                                   2406 	.area CONST   (CODE)
      00128B                       2407 ___str_26:
      00128B 2C 42 55 5A 5A 45 52  2408 	.ascii ",BUZZER="
             3D
      001293 00                    2409 	.db 0x00
                                   2410 	.area CSEG    (CODE)
                                   2411 	.area CONST   (CODE)
      001294                       2412 ___str_27:
      001294 0D                    2413 	.db 0x0d
      001295 0A                    2414 	.db 0x0a
      001296 00                    2415 	.db 0x00
                                   2416 	.area CSEG    (CODE)
                                   2417 	.area CONST   (CODE)
      001297                       2418 ___str_28:
      001297 55 41 52 54 20 49 4E  2419 	.ascii "UART INIT FAILED"
             49 54 20 46 41 49 4C
             45 44
      0012A7 00                    2420 	.db 0x00
                                   2421 	.area CSEG    (CODE)
                                   2422 	.area CONST   (CODE)
      0012A8                       2423 ___str_29:
      0012A8 55 41 52 54 20 52 45  2424 	.ascii "UART READY"
             41 44 59
      0012B2 0D                    2425 	.db 0x0d
      0012B3 0A                    2426 	.db 0x0a
      0012B4 00                    2427 	.db 0x00
                                   2428 	.area CSEG    (CODE)
                                   2429 	.area XINIT   (CODE)
                                   2430 	.area CABS    (ABS,CODE)
