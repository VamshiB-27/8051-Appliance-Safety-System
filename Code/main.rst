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
                                    222 	.globl _time_ms
                                    223 	.globl _delay_time_ms
                                    224 	.globl _delay_us
                                    225 	.globl _delay_ms
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           000080   231 _P0	=	0x0080
                           000081   232 _SP	=	0x0081
                           000082   233 _DPL	=	0x0082
                           000083   234 _DPH	=	0x0083
                           000087   235 _PCON	=	0x0087
                           000088   236 _TCON	=	0x0088
                           000089   237 _TMOD	=	0x0089
                           008C8A   238 _TMR0	=	0x8c8a
                           00008A   239 _TL0	=	0x008a
                           00008C   240 _TH0	=	0x008c
                           008D8B   241 _TMR1	=	0x8d8b
                           00008B   242 _TL1	=	0x008b
                           00008D   243 _TH1	=	0x008d
                           00008E   244 _AUXR	=	0x008e
                           00008F   245 _CKCON0	=	0x008f
                           000090   246 _P1	=	0x0090
                           000093   247 _SSCON	=	0x0093
                           000094   248 _SSCS	=	0x0094
                           000095   249 _SSDAT	=	0x0095
                           000096   250 _SSADR	=	0x0096
                           000098   251 _SCON	=	0x0098
                           000099   252 _SBUF	=	0x0099
                           00009A   253 _BRL	=	0x009a
                           00009B   254 _BDRCON	=	0x009b
                           00009C   255 _KBLS	=	0x009c
                           00009D   256 _KBE	=	0x009d
                           00009E   257 _KBF	=	0x009e
                           0000A0   258 _P2	=	0x00a0
                           0000A2   259 _AUXR1	=	0x00a2
                           0000A3   260 _PLLCON	=	0x00a3
                           0000A4   261 _PLLDIV	=	0x00a4
                           0000A6   262 _WDTRST	=	0x00a6
                           0000A7   263 _WDTPRG	=	0x00a7
                           0000A8   264 _IE	=	0x00a8
                           0000A8   265 _IEN0	=	0x00a8
                           0000A9   266 _SADDR	=	0x00a9
                           0000AF   267 _CKCON1	=	0x00af
                           0000B0   268 _P3	=	0x00b0
                           0000B1   269 _IEN1	=	0x00b1
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000B7   272 _IPH0	=	0x00b7
                           0000B8   273 _IPL0	=	0x00b8
                           0000B9   274 _SADEN	=	0x00b9
                           00BBBA   275 _UFNUM	=	0xbbba
                           0000BA   276 _UFNUML	=	0x00ba
                           0000BB   277 _UFNUMH	=	0x00bb
                           0000BC   278 _USBCON	=	0x00bc
                           0000BD   279 _USBINT	=	0x00bd
                           0000BE   280 _USBIEN	=	0x00be
                           0000C0   281 _P4	=	0x00c0
                           0000C2   282 _UEPIEN	=	0x00c2
                           0000C3   283 _SPCON	=	0x00c3
                           0000C4   284 _SPSTA	=	0x00c4
                           0000C5   285 _SPDAT	=	0x00c5
                           0000C6   286 _USBADDR	=	0x00c6
                           0000C7   287 _UEPNUM	=	0x00c7
                           0000C8   288 _T2CON	=	0x00c8
                           0000C9   289 _T2MOD	=	0x00c9
                           00CBCA   290 _RCAP2	=	0xcbca
                           0000CA   291 _RCAP2L	=	0x00ca
                           0000CB   292 _RCAP2H	=	0x00cb
                           00CDCC   293 _TMR2	=	0xcdcc
                           0000CC   294 _TL2	=	0x00cc
                           0000CD   295 _TH2	=	0x00cd
                           0000CE   296 _UEPSTAX	=	0x00ce
                           0000CF   297 _UEPDATX	=	0x00cf
                           0000D0   298 _PSW	=	0x00d0
                           0000D1   299 _FCON	=	0x00d1
                           0000D2   300 _EECON	=	0x00d2
                           0000D4   301 _UEPCONX	=	0x00d4
                           0000D5   302 _UEPRST	=	0x00d5
                           0000D8   303 _CCON	=	0x00d8
                           0000D9   304 _CMOD	=	0x00d9
                           0000DA   305 _CCAPM0	=	0x00da
                           0000DB   306 _CCAPM1	=	0x00db
                           0000DC   307 _CCAPM2	=	0x00dc
                           0000DD   308 _CCAPM3	=	0x00dd
                           0000DE   309 _CCAPM4	=	0x00de
                           0000E0   310 _ACC	=	0x00e0
                           00E3E2   311 _UBYCTX	=	0xe3e2
                           0000E2   312 _UBYCTLX	=	0x00e2
                           0000E3   313 _UBYCTHX	=	0x00e3
                           00F9E9   314 _PCA	=	0xf9e9
                           0000E9   315 _CL	=	0x00e9
                           0000F9   316 _CH	=	0x00f9
                           00FAEA   317 _CCAP0	=	0xfaea
                           0000EA   318 _CCAP0L	=	0x00ea
                           0000FA   319 _CCAP0H	=	0x00fa
                           00FBEB   320 _CCAP1	=	0xfbeb
                           0000EB   321 _CCAP1L	=	0x00eb
                           0000FB   322 _CCAP1H	=	0x00fb
                           00FCEC   323 _CCAP2	=	0xfcec
                           0000EC   324 _CCAP2L	=	0x00ec
                           0000FC   325 _CCAP2H	=	0x00fc
                           00FDED   326 _CCAP3	=	0xfded
                           0000ED   327 _CCAP3L	=	0x00ed
                           0000FD   328 _CCAP3H	=	0x00fd
                           00FEEE   329 _CCAP4	=	0xfeee
                           0000EE   330 _CCAP4L	=	0x00ee
                           0000FE   331 _CCAP4H	=	0x00fe
                           0000F0   332 _B	=	0x00f0
                           0000F1   333 _LEDCON	=	0x00f1
                           0000F8   334 _UEPINT	=	0x00f8
                                    335 ;--------------------------------------------------------
                                    336 ; special function bits
                                    337 ;--------------------------------------------------------
                                    338 	.area RSEG    (ABS,DATA)
      000000                        339 	.org 0x0000
                           000080   340 _P0_0	=	0x0080
                           000081   341 _P0_1	=	0x0081
                           000082   342 _P0_2	=	0x0082
                           000083   343 _P0_3	=	0x0083
                           000084   344 _P0_4	=	0x0084
                           000085   345 _P0_5	=	0x0085
                           000086   346 _P0_6	=	0x0086
                           000087   347 _P0_7	=	0x0087
                           000088   348 _IT0	=	0x0088
                           000089   349 _IE0	=	0x0089
                           00008A   350 _IT1	=	0x008a
                           00008B   351 _IE1	=	0x008b
                           00008C   352 _TR0	=	0x008c
                           00008D   353 _TF0	=	0x008d
                           00008E   354 _TR1	=	0x008e
                           00008F   355 _TF1	=	0x008f
                           000090   356 _P1_0	=	0x0090
                           000091   357 _P1_1	=	0x0091
                           000092   358 _P1_2	=	0x0092
                           000093   359 _P1_3	=	0x0093
                           000094   360 _P1_4	=	0x0094
                           000095   361 _P1_5	=	0x0095
                           000096   362 _P1_6	=	0x0096
                           000097   363 _P1_7	=	0x0097
                           000098   364 _RI	=	0x0098
                           000099   365 _TI	=	0x0099
                           00009A   366 _RB8	=	0x009a
                           00009B   367 _TB8	=	0x009b
                           00009C   368 _REN	=	0x009c
                           00009D   369 _SM2	=	0x009d
                           00009E   370 _SM1	=	0x009e
                           00009F   371 _SM0	=	0x009f
                           00009F   372 _FE	=	0x009f
                           0000A0   373 _P2_0	=	0x00a0
                           0000A1   374 _P2_1	=	0x00a1
                           0000A2   375 _P2_2	=	0x00a2
                           0000A3   376 _P2_3	=	0x00a3
                           0000A4   377 _P2_4	=	0x00a4
                           0000A5   378 _P2_5	=	0x00a5
                           0000A6   379 _P2_6	=	0x00a6
                           0000A7   380 _P2_7	=	0x00a7
                           0000A8   381 _EX0	=	0x00a8
                           0000A9   382 _ET0	=	0x00a9
                           0000AA   383 _EX1	=	0x00aa
                           0000AB   384 _ET1	=	0x00ab
                           0000AC   385 _ES	=	0x00ac
                           0000AD   386 _ET2	=	0x00ad
                           0000AE   387 _EC	=	0x00ae
                           0000AF   388 _EA	=	0x00af
                           0000B0   389 _P3_0	=	0x00b0
                           0000B1   390 _P3_1	=	0x00b1
                           0000B2   391 _P3_2	=	0x00b2
                           0000B3   392 _P3_3	=	0x00b3
                           0000B4   393 _P3_4	=	0x00b4
                           0000B5   394 _P3_5	=	0x00b5
                           0000B6   395 _P3_6	=	0x00b6
                           0000B7   396 _P3_7	=	0x00b7
                           0000B8   397 _PX0L	=	0x00b8
                           0000B9   398 _PT0L	=	0x00b9
                           0000BA   399 _PX1L	=	0x00ba
                           0000BB   400 _PT1L	=	0x00bb
                           0000BC   401 _PSL	=	0x00bc
                           0000BD   402 _PT2L	=	0x00bd
                           0000BE   403 _PPCL	=	0x00be
                           0000C0   404 _P4_0	=	0x00c0
                           0000C1   405 _P4_1	=	0x00c1
                           0000C8   406 _CP_RL2	=	0x00c8
                           0000C9   407 _C_T2	=	0x00c9
                           0000CA   408 _TR2	=	0x00ca
                           0000CB   409 _EXEN2	=	0x00cb
                           0000CC   410 _TCLK	=	0x00cc
                           0000CD   411 _RCLK	=	0x00cd
                           0000CE   412 _EXF2	=	0x00ce
                           0000CF   413 _TF2	=	0x00cf
                           0000D0   414 _P	=	0x00d0
                           0000D1   415 _F1	=	0x00d1
                           0000D2   416 _OV	=	0x00d2
                           0000D3   417 _RS0	=	0x00d3
                           0000D4   418 _RS1	=	0x00d4
                           0000D5   419 _F0	=	0x00d5
                           0000D6   420 _AC	=	0x00d6
                           0000D7   421 _CY	=	0x00d7
                           0000D8   422 _CCF0	=	0x00d8
                           0000D9   423 _CCF1	=	0x00d9
                           0000DA   424 _CCF2	=	0x00da
                           0000DB   425 _CCF3	=	0x00db
                           0000DC   426 _CCF4	=	0x00dc
                           0000DE   427 _CR	=	0x00de
                           0000DF   428 _CF	=	0x00df
                           0000F8   429 _EP0INT	=	0x00f8
                           0000F9   430 _EP1INT	=	0x00f9
                           0000FA   431 _EP2INT	=	0x00fa
                           0000FB   432 _EP3INT	=	0x00fb
                           0000FC   433 _EP4INT	=	0x00fc
                           0000FD   434 _EP5INT	=	0x00fd
                           0000FE   435 _EP6INT	=	0x00fe
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable register banks
                                    438 ;--------------------------------------------------------
                                    439 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        440 	.ds 8
                                    441 ;--------------------------------------------------------
                                    442 ; internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area DSEG    (DATA)
      000008                        445 _delay_time_ms::
      000008                        446 	.ds 4
      00000C                        447 _time_ms::
      00000C                        448 	.ds 2
      00000E                        449 _rx_buffer:
      00000E                        450 	.ds 64
      00004E                        451 _rx_length:
      00004E                        452 	.ds 1
      00004F                        453 _relay_state:
      00004F                        454 	.ds 1
      000050                        455 _buzzer_state:
      000050                        456 	.ds 1
      000051                        457 _timer0_isr_count_10000_28:
      000051                        458 	.ds 1
      000052                        459 _oled_show_data_data_10000_37:
      000052                        460 	.ds 3
      000055                        461 _uart_receive_process_data_10000_69:
      000055                        462 	.ds 1
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable items in internal ram
                                    465 ;--------------------------------------------------------
                                    466 	.area	OSEG    (OVR,DATA)
                                    467 	.area	OSEG    (OVR,DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; Stack segment in internal ram
                                    470 ;--------------------------------------------------------
                                    471 	.area SSEG
      00007B                        472 __start__stack:
      00007B                        473 	.ds	1
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
      00000B 02 01 06         [24]  522 	ljmp	_timer0_isr
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
                                    597 ;count         Allocated with name '_timer0_isr_count_10000_28'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:39: static unsigned char count = 0;
      0000AF 75 51 00         [24]  600 	mov	_timer0_isr_count_10000_28,#0x00
                                    601 ;	main.c:12: volatile unsigned long int delay_time_ms = 0;
      0000B2 E4               [12]  602 	clr	a
      0000B3 F5 08            [12]  603 	mov	_delay_time_ms,a
      0000B5 F5 09            [12]  604 	mov	(_delay_time_ms + 1),a
      0000B7 F5 0A            [12]  605 	mov	(_delay_time_ms + 2),a
      0000B9 F5 0B            [12]  606 	mov	(_delay_time_ms + 3),a
                                    607 ;	main.c:13: volatile unsigned short int time_ms = 0;
      0000BB F5 0C            [12]  608 	mov	_time_ms,a
      0000BD F5 0D            [12]  609 	mov	(_time_ms + 1),a
                                    610 ;	main.c:16: static unsigned char rx_length = 0;
      0000BF F5 4E            [12]  611 	mov	_rx_length,a
                                    612 ;	main.c:17: static unsigned char relay_state = 0;
      0000C1 F5 4F            [12]  613 	mov	_relay_state,a
                                    614 ;	main.c:18: static unsigned char buzzer_state = 0;
      0000C3 F5 50            [12]  615 	mov	_buzzer_state,a
                                    616 	.area GSFINAL (CODE)
      0000CB 02 00 51         [24]  617 	ljmp	__sdcc_program_startup
                                    618 ;--------------------------------------------------------
                                    619 ; Home
                                    620 ;--------------------------------------------------------
                                    621 	.area HOME    (CODE)
                                    622 	.area HOME    (CODE)
      000051                        623 __sdcc_program_startup:
      000051 12 07 D0         [24]  624 	lcall	_main
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
                                    638 ;	main.c:20: void delay_us(unsigned int value)
                                    639 ;	-----------------------------------------
                                    640 ;	 function delay_us
                                    641 ;	-----------------------------------------
      0000CE                        642 _delay_us:
                           000007   643 	ar7 = 0x07
                           000006   644 	ar6 = 0x06
                           000005   645 	ar5 = 0x05
                           000004   646 	ar4 = 0x04
                           000003   647 	ar3 = 0x03
                           000002   648 	ar2 = 0x02
                           000001   649 	ar1 = 0x01
                           000000   650 	ar0 = 0x00
      0000CE AE 82            [24]  651 	mov	r6, dpl
      0000D0 AF 83            [24]  652 	mov	r7, dph
                                    653 ;	main.c:24: while (value--)
      0000D2                        654 00102$:
      0000D2 8E 04            [24]  655 	mov	ar4,r6
      0000D4 8F 05            [24]  656 	mov	ar5,r7
      0000D6 1E               [12]  657 	dec	r6
      0000D7 BE FF 01         [24]  658 	cjne	r6,#0xff,00138$
      0000DA 1F               [12]  659 	dec	r7
      0000DB                        660 00138$:
      0000DB EC               [12]  661 	mov	a,r4
      0000DC 4D               [12]  662 	orl	a,r5
      0000DD 60 06            [24]  663 	jz	00108$
                                    664 ;	main.c:26: for (i = 0; i < 4; i++);
      0000DF 7D 04            [12]  665 	mov	r5,#0x04
      0000E1                        666 00107$:
      0000E1 DD FE            [24]  667 	djnz	r5,00107$
      0000E3 80 ED            [24]  668 	sjmp	00102$
      0000E5                        669 00108$:
                                    670 ;	main.c:28: }
      0000E5 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'delay_ms'
                                    674 ;------------------------------------------------------------
                                    675 ;value         Allocated to registers r4 r5 r6 r7 
                                    676 ;------------------------------------------------------------
                                    677 ;	main.c:30: void delay_ms(unsigned long int value)
                                    678 ;	-----------------------------------------
                                    679 ;	 function delay_ms
                                    680 ;	-----------------------------------------
      0000E6                        681 _delay_ms:
      0000E6 AC 82            [24]  682 	mov	r4,dpl
      0000E8 AD 83            [24]  683 	mov	r5,dph
      0000EA AE F0            [24]  684 	mov	r6,b
      0000EC FF               [12]  685 	mov	r7,a
                                    686 ;	main.c:32: delay_time_ms = 0;
      0000ED E4               [12]  687 	clr	a
      0000EE F5 08            [12]  688 	mov	_delay_time_ms,a
      0000F0 F5 09            [12]  689 	mov	(_delay_time_ms + 1),a
      0000F2 F5 0A            [12]  690 	mov	(_delay_time_ms + 2),a
      0000F4 F5 0B            [12]  691 	mov	(_delay_time_ms + 3),a
                                    692 ;	main.c:34: while (delay_time_ms < value);
      0000F6                        693 00101$:
      0000F6 C3               [12]  694 	clr	c
      0000F7 E5 08            [12]  695 	mov	a,_delay_time_ms
      0000F9 9C               [12]  696 	subb	a,r4
      0000FA E5 09            [12]  697 	mov	a,(_delay_time_ms + 1)
      0000FC 9D               [12]  698 	subb	a,r5
      0000FD E5 0A            [12]  699 	mov	a,(_delay_time_ms + 2)
      0000FF 9E               [12]  700 	subb	a,r6
      000100 E5 0B            [12]  701 	mov	a,(_delay_time_ms + 3)
      000102 9F               [12]  702 	subb	a,r7
      000103 40 F1            [24]  703 	jc	00101$
                                    704 ;	main.c:35: }
      000105 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'timer0_isr'
                                    708 ;------------------------------------------------------------
                                    709 ;count         Allocated with name '_timer0_isr_count_10000_28'
                                    710 ;------------------------------------------------------------
                                    711 ;	main.c:37: void timer0_isr(void) __interrupt(1)
                                    712 ;	-----------------------------------------
                                    713 ;	 function timer0_isr
                                    714 ;	-----------------------------------------
      000106                        715 _timer0_isr:
      000106 C0 E0            [24]  716 	push	acc
      000108 C0 07            [24]  717 	push	ar7
      00010A C0 06            [24]  718 	push	ar6
      00010C C0 05            [24]  719 	push	ar5
      00010E C0 04            [24]  720 	push	ar4
      000110 C0 D0            [24]  721 	push	psw
      000112 75 D0 00         [24]  722 	mov	psw,#0x00
                                    723 ;	main.c:41: TF0 = 0;
                                    724 ;	assignBit
      000115 C2 8D            [12]  725 	clr	_TF0
                                    726 ;	main.c:42: count++;
      000117 05 51            [12]  727 	inc	_timer0_isr_count_10000_28
                                    728 ;	main.c:44: if (count >= 10)
      000119 74 F6            [12]  729 	mov	a,#0x100 - 0x0a
      00011B 25 51            [12]  730 	add	a,_timer0_isr_count_10000_28
      00011D 50 3B            [24]  731 	jnc	00105$
                                    732 ;	main.c:46: count = 0;
      00011F 75 51 00         [24]  733 	mov	_timer0_isr_count_10000_28,#0x00
                                    734 ;	main.c:47: delay_time_ms++;
      000122 AC 08            [24]  735 	mov	r4,_delay_time_ms
      000124 AD 09            [24]  736 	mov	r5,(_delay_time_ms + 1)
      000126 AE 0A            [24]  737 	mov	r6,(_delay_time_ms + 2)
      000128 AF 0B            [24]  738 	mov	r7,(_delay_time_ms + 3)
      00012A 74 01            [12]  739 	mov	a,#0x01
      00012C 2C               [12]  740 	add	a, r4
      00012D F5 08            [12]  741 	mov	_delay_time_ms,a
      00012F E4               [12]  742 	clr	a
      000130 3D               [12]  743 	addc	a, r5
      000131 F5 09            [12]  744 	mov	(_delay_time_ms + 1),a
      000133 E4               [12]  745 	clr	a
      000134 3E               [12]  746 	addc	a, r6
      000135 F5 0A            [12]  747 	mov	(_delay_time_ms + 2),a
      000137 E4               [12]  748 	clr	a
      000138 3F               [12]  749 	addc	a, r7
      000139 F5 0B            [12]  750 	mov	(_delay_time_ms + 3),a
                                    751 ;	main.c:48: time_ms++;
      00013B AE 0C            [24]  752 	mov	r6,_time_ms
      00013D AF 0D            [24]  753 	mov	r7,(_time_ms + 1)
      00013F 74 01            [12]  754 	mov	a,#0x01
      000141 2E               [12]  755 	add	a, r6
      000142 F5 0C            [12]  756 	mov	_time_ms,a
      000144 E4               [12]  757 	clr	a
      000145 3F               [12]  758 	addc	a, r7
      000146 F5 0D            [12]  759 	mov	(_time_ms + 1),a
                                    760 ;	main.c:50: if (time_ms >= 1000)
      000148 AE 0C            [24]  761 	mov	r6,_time_ms
      00014A AF 0D            [24]  762 	mov	r7,(_time_ms + 1)
      00014C C3               [12]  763 	clr	c
      00014D EE               [12]  764 	mov	a,r6
      00014E 94 E8            [12]  765 	subb	a,#0xe8
      000150 EF               [12]  766 	mov	a,r7
      000151 94 03            [12]  767 	subb	a,#0x03
      000153 40 05            [24]  768 	jc	00105$
                                    769 ;	main.c:51: time_ms = 0;
      000155 E4               [12]  770 	clr	a
      000156 F5 0C            [12]  771 	mov	_time_ms,a
      000158 F5 0D            [12]  772 	mov	(_time_ms + 1),a
      00015A                        773 00105$:
                                    774 ;	main.c:53: }
      00015A D0 D0            [24]  775 	pop	psw
      00015C D0 04            [24]  776 	pop	ar4
      00015E D0 05            [24]  777 	pop	ar5
      000160 D0 06            [24]  778 	pop	ar6
      000162 D0 07            [24]  779 	pop	ar7
      000164 D0 E0            [24]  780 	pop	acc
      000166 32               [24]  781 	reti
                                    782 ;	eliminated unneeded push/pop dpl
                                    783 ;	eliminated unneeded push/pop dph
                                    784 ;	eliminated unneeded push/pop b
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'oled_clear_line'
                                    787 ;------------------------------------------------------------
                                    788 ;page          Allocated to registers r7 
                                    789 ;i             Allocated to registers r7 
                                    790 ;------------------------------------------------------------
                                    791 ;	main.c:55: static void oled_clear_line(unsigned char page)
                                    792 ;	-----------------------------------------
                                    793 ;	 function oled_clear_line
                                    794 ;	-----------------------------------------
      000167                        795 _oled_clear_line:
                                    796 ;	main.c:59: oled_set_position(page, 0);
      000167 75 5E 00         [24]  797 	mov	_oled_set_position_PARM_2,#0x00
      00016A 12 09 35         [24]  798 	lcall	_oled_set_position
                                    799 ;	main.c:61: for (i = 0; i < 20; i++)
      00016D 7F 00            [12]  800 	mov	r7,#0x00
      00016F                        801 00102$:
                                    802 ;	main.c:62: oled_char(' ');
      00016F 75 82 20         [24]  803 	mov	dpl, #0x20
      000172 C0 07            [24]  804 	push	ar7
      000174 12 0A 73         [24]  805 	lcall	_oled_char
      000177 D0 07            [24]  806 	pop	ar7
                                    807 ;	main.c:61: for (i = 0; i < 20; i++)
      000179 0F               [12]  808 	inc	r7
      00017A BF 14 00         [24]  809 	cjne	r7,#0x14,00113$
      00017D                        810 00113$:
      00017D 40 F0            [24]  811 	jc	00102$
                                    812 ;	main.c:63: }
      00017F 22               [24]  813 	ret
                                    814 ;------------------------------------------------------------
                                    815 ;Allocation info for local variables in function 'oled_show_status'
                                    816 ;------------------------------------------------------------
                                    817 ;	main.c:65: static void oled_show_status(void)
                                    818 ;	-----------------------------------------
                                    819 ;	 function oled_show_status
                                    820 ;	-----------------------------------------
      000180                        821 _oled_show_status:
                                    822 ;	main.c:67: oled_clear_line(0);
      000180 75 82 00         [24]  823 	mov	dpl, #0x00
      000183 12 01 67         [24]  824 	lcall	_oled_clear_line
                                    825 ;	main.c:68: oled_set_position(0, 0);
      000186 75 5E 00         [24]  826 	mov	_oled_set_position_PARM_2,#0x00
      000189 75 82 00         [24]  827 	mov	dpl, #0x00
      00018C 12 09 35         [24]  828 	lcall	_oled_set_position
                                    829 ;	main.c:69: oled_string("APPLIANCE SAFETY");
      00018F 90 10 40         [24]  830 	mov	dptr,#___str_0
      000192 75 F0 80         [24]  831 	mov	b, #0x80
      000195 12 0D 40         [24]  832 	lcall	_oled_string
                                    833 ;	main.c:71: oled_clear_line(2);
      000198 75 82 02         [24]  834 	mov	dpl, #0x02
      00019B 12 01 67         [24]  835 	lcall	_oled_clear_line
                                    836 ;	main.c:72: oled_set_position(2, 0);
      00019E 75 5E 00         [24]  837 	mov	_oled_set_position_PARM_2,#0x00
      0001A1 75 82 02         [24]  838 	mov	dpl, #0x02
      0001A4 12 09 35         [24]  839 	lcall	_oled_set_position
                                    840 ;	main.c:73: oled_string("RELAY: ");
      0001A7 90 10 51         [24]  841 	mov	dptr,#___str_1
      0001AA 75 F0 80         [24]  842 	mov	b, #0x80
      0001AD 12 0D 40         [24]  843 	lcall	_oled_string
                                    844 ;	main.c:75: oled_string(relay_state ? "ON" : "OFF");
      0001B0 E5 4F            [12]  845 	mov	a,_relay_state
      0001B2 60 06            [24]  846 	jz	00103$
      0001B4 7E 59            [12]  847 	mov	r6,#___str_2
      0001B6 7F 10            [12]  848 	mov	r7,#(___str_2 >> 8)
      0001B8 80 04            [24]  849 	sjmp	00104$
      0001BA                        850 00103$:
      0001BA 7E 5C            [12]  851 	mov	r6,#___str_3
      0001BC 7F 10            [12]  852 	mov	r7,#(___str_3 >> 8)
      0001BE                        853 00104$:
      0001BE 7D 80            [12]  854 	mov	r5,#0x80
      0001C0 8E 82            [24]  855 	mov	dpl, r6
      0001C2 8F 83            [24]  856 	mov	dph, r7
      0001C4 8D F0            [24]  857 	mov	b, r5
      0001C6 12 0D 40         [24]  858 	lcall	_oled_string
                                    859 ;	main.c:77: oled_clear_line(4);
      0001C9 75 82 04         [24]  860 	mov	dpl, #0x04
      0001CC 12 01 67         [24]  861 	lcall	_oled_clear_line
                                    862 ;	main.c:78: oled_set_position(4, 0);
      0001CF 75 5E 00         [24]  863 	mov	_oled_set_position_PARM_2,#0x00
      0001D2 75 82 04         [24]  864 	mov	dpl, #0x04
      0001D5 12 09 35         [24]  865 	lcall	_oled_set_position
                                    866 ;	main.c:79: oled_string("BUZZER: ");
      0001D8 90 10 60         [24]  867 	mov	dptr,#___str_4
      0001DB 75 F0 80         [24]  868 	mov	b, #0x80
      0001DE 12 0D 40         [24]  869 	lcall	_oled_string
                                    870 ;	main.c:81: oled_string(buzzer_state ? "ON" : "OFF");
      0001E1 E5 50            [12]  871 	mov	a,_buzzer_state
      0001E3 60 06            [24]  872 	jz	00105$
      0001E5 7E 59            [12]  873 	mov	r6,#___str_2
      0001E7 7F 10            [12]  874 	mov	r7,#(___str_2 >> 8)
      0001E9 80 04            [24]  875 	sjmp	00106$
      0001EB                        876 00105$:
      0001EB 7E 5C            [12]  877 	mov	r6,#___str_3
      0001ED 7F 10            [12]  878 	mov	r7,#(___str_3 >> 8)
      0001EF                        879 00106$:
      0001EF 7D 80            [12]  880 	mov	r5,#0x80
      0001F1 8E 82            [24]  881 	mov	dpl, r6
      0001F3 8F 83            [24]  882 	mov	dph, r7
      0001F5 8D F0            [24]  883 	mov	b, r5
      0001F7 12 0D 40         [24]  884 	lcall	_oled_string
                                    885 ;	main.c:83: oled_clear_line(6);
      0001FA 75 82 06         [24]  886 	mov	dpl, #0x06
      0001FD 12 01 67         [24]  887 	lcall	_oled_clear_line
                                    888 ;	main.c:84: oled_set_position(6, 0);
      000200 75 5E 00         [24]  889 	mov	_oled_set_position_PARM_2,#0x00
      000203 75 82 06         [24]  890 	mov	dpl, #0x06
      000206 12 09 35         [24]  891 	lcall	_oled_set_position
                                    892 ;	main.c:85: oled_string("SYSTEM READY");
      000209 90 10 69         [24]  893 	mov	dptr,#___str_5
      00020C 75 F0 80         [24]  894 	mov	b, #0x80
                                    895 ;	main.c:86: }
      00020F 02 0D 40         [24]  896 	ljmp	_oled_string
                                    897 ;------------------------------------------------------------
                                    898 ;Allocation info for local variables in function 'oled_show_data'
                                    899 ;------------------------------------------------------------
                                    900 ;data          Allocated with name '_oled_show_data_data_10000_37'
                                    901 ;i             Allocated to registers r2 
                                    902 ;row           Allocated to registers r4 
                                    903 ;column        Allocated to registers r3 
                                    904 ;------------------------------------------------------------
                                    905 ;	main.c:88: static void oled_show_data(char *data)
                                    906 ;	-----------------------------------------
                                    907 ;	 function oled_show_data
                                    908 ;	-----------------------------------------
      000212                        909 _oled_show_data:
      000212 85 82 52         [24]  910 	mov	_oled_show_data_data_10000_37,dpl
      000215 85 83 53         [24]  911 	mov	(_oled_show_data_data_10000_37 + 1),dph
      000218 85 F0 54         [24]  912 	mov	(_oled_show_data_data_10000_37 + 2),b
                                    913 ;	main.c:91: unsigned char row = 0;
      00021B 7C 00            [12]  914 	mov	r4,#0x00
                                    915 ;	main.c:92: unsigned char column = 0;
      00021D 7B 00            [12]  916 	mov	r3,#0x00
                                    917 ;	main.c:94: oled_clear();
      00021F C0 04            [24]  918 	push	ar4
      000221 C0 03            [24]  919 	push	ar3
      000223 12 09 72         [24]  920 	lcall	_oled_clear
                                    921 ;	main.c:96: oled_set_position(0, 0);
      000226 75 5E 00         [24]  922 	mov	_oled_set_position_PARM_2,#0x00
      000229 75 82 00         [24]  923 	mov	dpl, #0x00
      00022C 12 09 35         [24]  924 	lcall	_oled_set_position
                                    925 ;	main.c:97: oled_string("LIVE MEASUREMENTS");
      00022F 90 10 76         [24]  926 	mov	dptr,#___str_6
      000232 75 F0 80         [24]  927 	mov	b, #0x80
      000235 12 0D 40         [24]  928 	lcall	_oled_string
      000238 D0 03            [24]  929 	pop	ar3
      00023A D0 04            [24]  930 	pop	ar4
                                    931 ;	main.c:99: for (i = 0; data[i] != '\0' && row < 3; i++)
      00023C 7A 00            [12]  932 	mov	r2,#0x00
      00023E                        933 00109$:
      00023E EA               [12]  934 	mov	a,r2
      00023F 25 52            [12]  935 	add	a, _oled_show_data_data_10000_37
      000241 F8               [12]  936 	mov	r0,a
      000242 E4               [12]  937 	clr	a
      000243 35 53            [12]  938 	addc	a, (_oled_show_data_data_10000_37 + 1)
      000245 F9               [12]  939 	mov	r1,a
      000246 AF 54            [24]  940 	mov	r7,(_oled_show_data_data_10000_37 + 2)
      000248 88 82            [24]  941 	mov	dpl,r0
      00024A 89 83            [24]  942 	mov	dph,r1
      00024C 8F F0            [24]  943 	mov	b,r7
      00024E 12 10 20         [24]  944 	lcall	__gptrget
      000251 FF               [12]  945 	mov	r7,a
      000252 60 3C            [24]  946 	jz	00111$
      000254 BC 03 00         [24]  947 	cjne	r4,#0x03,00149$
      000257                        948 00149$:
      000257 50 37            [24]  949 	jnc	00111$
                                    950 ;	main.c:101: if (data[i] == ',')
      000259 BF 2C 1A         [24]  951 	cjne	r7,#0x2c,00104$
                                    952 ;	main.c:103: row++;
      00025C 0C               [12]  953 	inc	r4
                                    954 ;	main.c:104: column = 0;
      00025D 7B 00            [12]  955 	mov	r3,#0x00
                                    956 ;	main.c:106: oled_set_position(row * 2, 0);
      00025F EC               [12]  957 	mov	a,r4
      000260 2C               [12]  958 	add	a,r4
      000261 F5 82            [12]  959 	mov	dpl,a
      000263 8B 5E            [24]  960 	mov	_oled_set_position_PARM_2,r3
      000265 C0 04            [24]  961 	push	ar4
      000267 C0 03            [24]  962 	push	ar3
      000269 C0 02            [24]  963 	push	ar2
      00026B 12 09 35         [24]  964 	lcall	_oled_set_position
      00026E D0 02            [24]  965 	pop	ar2
      000270 D0 03            [24]  966 	pop	ar3
      000272 D0 04            [24]  967 	pop	ar4
      000274 80 17            [24]  968 	sjmp	00110$
      000276                        969 00104$:
                                    970 ;	main.c:110: if (column < 20)
      000276 BB 14 00         [24]  971 	cjne	r3,#0x14,00153$
      000279                        972 00153$:
      000279 50 12            [24]  973 	jnc	00110$
                                    974 ;	main.c:112: oled_char(data[i]);
      00027B 8F 82            [24]  975 	mov	dpl, r7
      00027D C0 04            [24]  976 	push	ar4
      00027F C0 03            [24]  977 	push	ar3
      000281 C0 02            [24]  978 	push	ar2
      000283 12 0A 73         [24]  979 	lcall	_oled_char
      000286 D0 02            [24]  980 	pop	ar2
      000288 D0 03            [24]  981 	pop	ar3
      00028A D0 04            [24]  982 	pop	ar4
                                    983 ;	main.c:113: column++;
      00028C 0B               [12]  984 	inc	r3
      00028D                        985 00110$:
                                    986 ;	main.c:99: for (i = 0; data[i] != '\0' && row < 3; i++)
      00028D 0A               [12]  987 	inc	r2
      00028E 80 AE            [24]  988 	sjmp	00109$
      000290                        989 00111$:
                                    990 ;	main.c:117: }
      000290 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'process_command'
                                    994 ;------------------------------------------------------------
                                    995 ;command       Allocated to registers r5 r6 r7 
                                    996 ;page          Allocated to registers r4 
                                    997 ;------------------------------------------------------------
                                    998 ;	main.c:119: static void process_command(char *command)
                                    999 ;	-----------------------------------------
                                   1000 ;	 function process_command
                                   1001 ;	-----------------------------------------
      000291                       1002 _process_command:
                                   1003 ;	main.c:121: if (command[0] == 'R' &&
      000291 AD 82            [24] 1004 	mov	r5,dpl
      000293 AE 83            [24] 1005 	mov	r6,dph
      000295 AF F0            [24] 1006 	mov	r7,b
      000297 12 10 20         [24] 1007 	lcall	__gptrget
      00029A FC               [12] 1008 	mov	r4,a
      00029B BC 52 02         [24] 1009 	cjne	r4,#0x52,00515$
      00029E 80 03            [24] 1010 	sjmp	00516$
      0002A0                       1011 00515$:
      0002A0 02 03 D4         [24] 1012 	ljmp	00111$
      0002A3                       1013 00516$:
                                   1014 ;	main.c:122: command[1] == 'E' &&
      0002A3 74 01            [12] 1015 	mov	a,#0x01
      0002A5 2D               [12] 1016 	add	a, r5
      0002A6 F9               [12] 1017 	mov	r1,a
      0002A7 E4               [12] 1018 	clr	a
      0002A8 3E               [12] 1019 	addc	a, r6
      0002A9 FA               [12] 1020 	mov	r2,a
      0002AA 8F 03            [24] 1021 	mov	ar3,r7
      0002AC 89 82            [24] 1022 	mov	dpl,r1
      0002AE 8A 83            [24] 1023 	mov	dph,r2
      0002B0 8B F0            [24] 1024 	mov	b,r3
      0002B2 12 10 20         [24] 1025 	lcall	__gptrget
      0002B5 F9               [12] 1026 	mov	r1,a
      0002B6 B9 45 02         [24] 1027 	cjne	r1,#0x45,00517$
      0002B9 80 03            [24] 1028 	sjmp	00518$
      0002BB                       1029 00517$:
      0002BB 02 03 D4         [24] 1030 	ljmp	00111$
      0002BE                       1031 00518$:
                                   1032 ;	main.c:123: command[2] == 'L' &&
      0002BE 74 02            [12] 1033 	mov	a,#0x02
      0002C0 2D               [12] 1034 	add	a, r5
      0002C1 F9               [12] 1035 	mov	r1,a
      0002C2 E4               [12] 1036 	clr	a
      0002C3 3E               [12] 1037 	addc	a, r6
      0002C4 FA               [12] 1038 	mov	r2,a
      0002C5 8F 03            [24] 1039 	mov	ar3,r7
      0002C7 89 82            [24] 1040 	mov	dpl,r1
      0002C9 8A 83            [24] 1041 	mov	dph,r2
      0002CB 8B F0            [24] 1042 	mov	b,r3
      0002CD 12 10 20         [24] 1043 	lcall	__gptrget
      0002D0 F9               [12] 1044 	mov	r1,a
      0002D1 B9 4C 02         [24] 1045 	cjne	r1,#0x4c,00519$
      0002D4 80 03            [24] 1046 	sjmp	00520$
      0002D6                       1047 00519$:
      0002D6 02 03 D4         [24] 1048 	ljmp	00111$
      0002D9                       1049 00520$:
                                   1050 ;	main.c:124: command[3] == 'A' &&
      0002D9 74 03            [12] 1051 	mov	a,#0x03
      0002DB 2D               [12] 1052 	add	a, r5
      0002DC F9               [12] 1053 	mov	r1,a
      0002DD E4               [12] 1054 	clr	a
      0002DE 3E               [12] 1055 	addc	a, r6
      0002DF FA               [12] 1056 	mov	r2,a
      0002E0 8F 03            [24] 1057 	mov	ar3,r7
      0002E2 89 82            [24] 1058 	mov	dpl,r1
      0002E4 8A 83            [24] 1059 	mov	dph,r2
      0002E6 8B F0            [24] 1060 	mov	b,r3
      0002E8 12 10 20         [24] 1061 	lcall	__gptrget
      0002EB F9               [12] 1062 	mov	r1,a
      0002EC B9 41 02         [24] 1063 	cjne	r1,#0x41,00521$
      0002EF 80 03            [24] 1064 	sjmp	00522$
      0002F1                       1065 00521$:
      0002F1 02 03 D4         [24] 1066 	ljmp	00111$
      0002F4                       1067 00522$:
                                   1068 ;	main.c:125: command[4] == 'Y' &&
      0002F4 74 04            [12] 1069 	mov	a,#0x04
      0002F6 2D               [12] 1070 	add	a, r5
      0002F7 F9               [12] 1071 	mov	r1,a
      0002F8 E4               [12] 1072 	clr	a
      0002F9 3E               [12] 1073 	addc	a, r6
      0002FA FA               [12] 1074 	mov	r2,a
      0002FB 8F 03            [24] 1075 	mov	ar3,r7
      0002FD 89 82            [24] 1076 	mov	dpl,r1
      0002FF 8A 83            [24] 1077 	mov	dph,r2
      000301 8B F0            [24] 1078 	mov	b,r3
      000303 12 10 20         [24] 1079 	lcall	__gptrget
      000306 F9               [12] 1080 	mov	r1,a
      000307 B9 59 02         [24] 1081 	cjne	r1,#0x59,00523$
      00030A 80 03            [24] 1082 	sjmp	00524$
      00030C                       1083 00523$:
      00030C 02 03 D4         [24] 1084 	ljmp	00111$
      00030F                       1085 00524$:
                                   1086 ;	main.c:126: command[5] == ',')
      00030F 74 05            [12] 1087 	mov	a,#0x05
      000311 2D               [12] 1088 	add	a, r5
      000312 F9               [12] 1089 	mov	r1,a
      000313 E4               [12] 1090 	clr	a
      000314 3E               [12] 1091 	addc	a, r6
      000315 FA               [12] 1092 	mov	r2,a
      000316 8F 03            [24] 1093 	mov	ar3,r7
      000318 89 82            [24] 1094 	mov	dpl,r1
      00031A 8A 83            [24] 1095 	mov	dph,r2
      00031C 8B F0            [24] 1096 	mov	b,r3
      00031E 12 10 20         [24] 1097 	lcall	__gptrget
      000321 F9               [12] 1098 	mov	r1,a
      000322 B9 2C 02         [24] 1099 	cjne	r1,#0x2c,00525$
      000325 80 03            [24] 1100 	sjmp	00526$
      000327                       1101 00525$:
      000327 02 03 D4         [24] 1102 	ljmp	00111$
      00032A                       1103 00526$:
                                   1104 ;	main.c:128: if (command[6] == 'O' &&
      00032A 74 06            [12] 1105 	mov	a,#0x06
      00032C 2D               [12] 1106 	add	a, r5
      00032D F9               [12] 1107 	mov	r1,a
      00032E E4               [12] 1108 	clr	a
      00032F 3E               [12] 1109 	addc	a, r6
      000330 FA               [12] 1110 	mov	r2,a
      000331 8F 03            [24] 1111 	mov	ar3,r7
      000333 89 82            [24] 1112 	mov	dpl,r1
      000335 8A 83            [24] 1113 	mov	dph,r2
      000337 8B F0            [24] 1114 	mov	b,r3
      000339 12 10 20         [24] 1115 	lcall	__gptrget
      00033C F9               [12] 1116 	mov	r1,a
      00033D E4               [12] 1117 	clr	a
      00033E B9 4F 01         [24] 1118 	cjne	r1,#0x4f,00527$
      000341 04               [12] 1119 	inc	a
      000342                       1120 00527$:
      000342 FB               [12] 1121 	mov	r3,a
      000343 60 3B            [24] 1122 	jz	00102$
                                   1123 ;	main.c:129: command[7] == 'N' &&
      000345 74 07            [12] 1124 	mov	a,#0x07
      000347 2D               [12] 1125 	add	a, r5
      000348 F8               [12] 1126 	mov	r0,a
      000349 E4               [12] 1127 	clr	a
      00034A 3E               [12] 1128 	addc	a, r6
      00034B F9               [12] 1129 	mov	r1,a
      00034C 8F 02            [24] 1130 	mov	ar2,r7
      00034E 88 82            [24] 1131 	mov	dpl,r0
      000350 89 83            [24] 1132 	mov	dph,r1
      000352 8A F0            [24] 1133 	mov	b,r2
      000354 12 10 20         [24] 1134 	lcall	__gptrget
      000357 F8               [12] 1135 	mov	r0,a
      000358 B8 4E 25         [24] 1136 	cjne	r0,#0x4e,00102$
                                   1137 ;	main.c:130: command[8] == '\0')
      00035B 74 08            [12] 1138 	mov	a,#0x08
      00035D 2D               [12] 1139 	add	a, r5
      00035E F8               [12] 1140 	mov	r0,a
      00035F E4               [12] 1141 	clr	a
      000360 3E               [12] 1142 	addc	a, r6
      000361 F9               [12] 1143 	mov	r1,a
      000362 8F 02            [24] 1144 	mov	ar2,r7
      000364 88 82            [24] 1145 	mov	dpl,r0
      000366 89 83            [24] 1146 	mov	dph,r1
      000368 8A F0            [24] 1147 	mov	b,r2
      00036A 12 10 20         [24] 1148 	lcall	__gptrget
      00036D 70 11            [24] 1149 	jnz	00102$
                                   1150 ;	main.c:132: RELAY_PIN = 0;
                                   1151 ;	assignBit
      00036F C2 A6            [12] 1152 	clr	_P2_6
                                   1153 ;	main.c:133: relay_state = 1;
      000371 75 4F 01         [24] 1154 	mov	_relay_state,#0x01
                                   1155 ;	main.c:135: uart_write_string("RELAY,ON\r\n");
      000374 90 10 88         [24] 1156 	mov	dptr,#___str_7
      000377 75 F0 80         [24] 1157 	mov	b, #0x80
      00037A 12 0E C3         [24] 1158 	lcall	_uart_write_string
                                   1159 ;	main.c:136: oled_show_status();
                                   1160 ;	main.c:138: return;
      00037D 02 01 80         [24] 1161 	ljmp	_oled_show_status
      000380                       1162 00102$:
                                   1163 ;	main.c:141: if (command[6] == 'O' &&
      000380 EB               [12] 1164 	mov	a,r3
      000381 60 51            [24] 1165 	jz	00111$
                                   1166 ;	main.c:142: command[7] == 'F' &&
      000383 74 07            [12] 1167 	mov	a,#0x07
      000385 2D               [12] 1168 	add	a, r5
      000386 F9               [12] 1169 	mov	r1,a
      000387 E4               [12] 1170 	clr	a
      000388 3E               [12] 1171 	addc	a, r6
      000389 FA               [12] 1172 	mov	r2,a
      00038A 8F 03            [24] 1173 	mov	ar3,r7
      00038C 89 82            [24] 1174 	mov	dpl,r1
      00038E 8A 83            [24] 1175 	mov	dph,r2
      000390 8B F0            [24] 1176 	mov	b,r3
      000392 12 10 20         [24] 1177 	lcall	__gptrget
      000395 F9               [12] 1178 	mov	r1,a
      000396 B9 46 3B         [24] 1179 	cjne	r1,#0x46,00111$
                                   1180 ;	main.c:143: command[8] == 'F' &&
      000399 74 08            [12] 1181 	mov	a,#0x08
      00039B 2D               [12] 1182 	add	a, r5
      00039C F9               [12] 1183 	mov	r1,a
      00039D E4               [12] 1184 	clr	a
      00039E 3E               [12] 1185 	addc	a, r6
      00039F FA               [12] 1186 	mov	r2,a
      0003A0 8F 03            [24] 1187 	mov	ar3,r7
      0003A2 89 82            [24] 1188 	mov	dpl,r1
      0003A4 8A 83            [24] 1189 	mov	dph,r2
      0003A6 8B F0            [24] 1190 	mov	b,r3
      0003A8 12 10 20         [24] 1191 	lcall	__gptrget
      0003AB F9               [12] 1192 	mov	r1,a
      0003AC B9 46 25         [24] 1193 	cjne	r1,#0x46,00111$
                                   1194 ;	main.c:144: command[9] == '\0')
      0003AF 74 09            [12] 1195 	mov	a,#0x09
      0003B1 2D               [12] 1196 	add	a, r5
      0003B2 F9               [12] 1197 	mov	r1,a
      0003B3 E4               [12] 1198 	clr	a
      0003B4 3E               [12] 1199 	addc	a, r6
      0003B5 FA               [12] 1200 	mov	r2,a
      0003B6 8F 03            [24] 1201 	mov	ar3,r7
      0003B8 89 82            [24] 1202 	mov	dpl,r1
      0003BA 8A 83            [24] 1203 	mov	dph,r2
      0003BC 8B F0            [24] 1204 	mov	b,r3
      0003BE 12 10 20         [24] 1205 	lcall	__gptrget
      0003C1 70 11            [24] 1206 	jnz	00111$
                                   1207 ;	main.c:146: RELAY_PIN = 1;
                                   1208 ;	assignBit
      0003C3 D2 A6            [12] 1209 	setb	_P2_6
                                   1210 ;	main.c:147: relay_state = 0;
      0003C5 75 4F 00         [24] 1211 	mov	_relay_state,#0x00
                                   1212 ;	main.c:149: uart_write_string("RELAY,OFF\r\n");
      0003C8 90 10 93         [24] 1213 	mov	dptr,#___str_8
      0003CB 75 F0 80         [24] 1214 	mov	b, #0x80
      0003CE 12 0E C3         [24] 1215 	lcall	_uart_write_string
                                   1216 ;	main.c:150: oled_show_status();
                                   1217 ;	main.c:152: return;
      0003D1 02 01 80         [24] 1218 	ljmp	_oled_show_status
      0003D4                       1219 00111$:
                                   1220 ;	main.c:156: if (command[0] == 'B' &&
      0003D4 BC 42 02         [24] 1221 	cjne	r4,#0x42,00539$
      0003D7 80 03            [24] 1222 	sjmp	00540$
      0003D9                       1223 00539$:
      0003D9 02 05 28         [24] 1224 	ljmp	00127$
      0003DC                       1225 00540$:
                                   1226 ;	main.c:157: command[1] == 'U' &&
      0003DC 74 01            [12] 1227 	mov	a,#0x01
      0003DE 2D               [12] 1228 	add	a, r5
      0003DF F9               [12] 1229 	mov	r1,a
      0003E0 E4               [12] 1230 	clr	a
      0003E1 3E               [12] 1231 	addc	a, r6
      0003E2 FA               [12] 1232 	mov	r2,a
      0003E3 8F 03            [24] 1233 	mov	ar3,r7
      0003E5 89 82            [24] 1234 	mov	dpl,r1
      0003E7 8A 83            [24] 1235 	mov	dph,r2
      0003E9 8B F0            [24] 1236 	mov	b,r3
      0003EB 12 10 20         [24] 1237 	lcall	__gptrget
      0003EE F9               [12] 1238 	mov	r1,a
      0003EF B9 55 02         [24] 1239 	cjne	r1,#0x55,00541$
      0003F2 80 03            [24] 1240 	sjmp	00542$
      0003F4                       1241 00541$:
      0003F4 02 05 28         [24] 1242 	ljmp	00127$
      0003F7                       1243 00542$:
                                   1244 ;	main.c:158: command[2] == 'Z' &&
      0003F7 74 02            [12] 1245 	mov	a,#0x02
      0003F9 2D               [12] 1246 	add	a, r5
      0003FA F9               [12] 1247 	mov	r1,a
      0003FB E4               [12] 1248 	clr	a
      0003FC 3E               [12] 1249 	addc	a, r6
      0003FD FA               [12] 1250 	mov	r2,a
      0003FE 8F 03            [24] 1251 	mov	ar3,r7
      000400 89 82            [24] 1252 	mov	dpl,r1
      000402 8A 83            [24] 1253 	mov	dph,r2
      000404 8B F0            [24] 1254 	mov	b,r3
      000406 12 10 20         [24] 1255 	lcall	__gptrget
      000409 F9               [12] 1256 	mov	r1,a
      00040A B9 5A 02         [24] 1257 	cjne	r1,#0x5a,00543$
      00040D 80 03            [24] 1258 	sjmp	00544$
      00040F                       1259 00543$:
      00040F 02 05 28         [24] 1260 	ljmp	00127$
      000412                       1261 00544$:
                                   1262 ;	main.c:159: command[3] == 'Z' &&
      000412 74 03            [12] 1263 	mov	a,#0x03
      000414 2D               [12] 1264 	add	a, r5
      000415 F9               [12] 1265 	mov	r1,a
      000416 E4               [12] 1266 	clr	a
      000417 3E               [12] 1267 	addc	a, r6
      000418 FA               [12] 1268 	mov	r2,a
      000419 8F 03            [24] 1269 	mov	ar3,r7
      00041B 89 82            [24] 1270 	mov	dpl,r1
      00041D 8A 83            [24] 1271 	mov	dph,r2
      00041F 8B F0            [24] 1272 	mov	b,r3
      000421 12 10 20         [24] 1273 	lcall	__gptrget
      000424 F9               [12] 1274 	mov	r1,a
      000425 B9 5A 02         [24] 1275 	cjne	r1,#0x5a,00545$
      000428 80 03            [24] 1276 	sjmp	00546$
      00042A                       1277 00545$:
      00042A 02 05 28         [24] 1278 	ljmp	00127$
      00042D                       1279 00546$:
                                   1280 ;	main.c:160: command[4] == 'E' &&
      00042D 74 04            [12] 1281 	mov	a,#0x04
      00042F 2D               [12] 1282 	add	a, r5
      000430 F9               [12] 1283 	mov	r1,a
      000431 E4               [12] 1284 	clr	a
      000432 3E               [12] 1285 	addc	a, r6
      000433 FA               [12] 1286 	mov	r2,a
      000434 8F 03            [24] 1287 	mov	ar3,r7
      000436 89 82            [24] 1288 	mov	dpl,r1
      000438 8A 83            [24] 1289 	mov	dph,r2
      00043A 8B F0            [24] 1290 	mov	b,r3
      00043C 12 10 20         [24] 1291 	lcall	__gptrget
      00043F F9               [12] 1292 	mov	r1,a
      000440 B9 45 02         [24] 1293 	cjne	r1,#0x45,00547$
      000443 80 03            [24] 1294 	sjmp	00548$
      000445                       1295 00547$:
      000445 02 05 28         [24] 1296 	ljmp	00127$
      000448                       1297 00548$:
                                   1298 ;	main.c:161: command[5] == 'R' &&
      000448 74 05            [12] 1299 	mov	a,#0x05
      00044A 2D               [12] 1300 	add	a, r5
      00044B F9               [12] 1301 	mov	r1,a
      00044C E4               [12] 1302 	clr	a
      00044D 3E               [12] 1303 	addc	a, r6
      00044E FA               [12] 1304 	mov	r2,a
      00044F 8F 03            [24] 1305 	mov	ar3,r7
      000451 89 82            [24] 1306 	mov	dpl,r1
      000453 8A 83            [24] 1307 	mov	dph,r2
      000455 8B F0            [24] 1308 	mov	b,r3
      000457 12 10 20         [24] 1309 	lcall	__gptrget
      00045A F9               [12] 1310 	mov	r1,a
      00045B B9 52 02         [24] 1311 	cjne	r1,#0x52,00549$
      00045E 80 03            [24] 1312 	sjmp	00550$
      000460                       1313 00549$:
      000460 02 05 28         [24] 1314 	ljmp	00127$
      000463                       1315 00550$:
                                   1316 ;	main.c:162: command[6] == ',')
      000463 74 06            [12] 1317 	mov	a,#0x06
      000465 2D               [12] 1318 	add	a, r5
      000466 F9               [12] 1319 	mov	r1,a
      000467 E4               [12] 1320 	clr	a
      000468 3E               [12] 1321 	addc	a, r6
      000469 FA               [12] 1322 	mov	r2,a
      00046A 8F 03            [24] 1323 	mov	ar3,r7
      00046C 89 82            [24] 1324 	mov	dpl,r1
      00046E 8A 83            [24] 1325 	mov	dph,r2
      000470 8B F0            [24] 1326 	mov	b,r3
      000472 12 10 20         [24] 1327 	lcall	__gptrget
      000475 F9               [12] 1328 	mov	r1,a
      000476 B9 2C 02         [24] 1329 	cjne	r1,#0x2c,00551$
      000479 80 03            [24] 1330 	sjmp	00552$
      00047B                       1331 00551$:
      00047B 02 05 28         [24] 1332 	ljmp	00127$
      00047E                       1333 00552$:
                                   1334 ;	main.c:164: if (command[7] == 'O' &&
      00047E 74 07            [12] 1335 	mov	a,#0x07
      000480 2D               [12] 1336 	add	a, r5
      000481 F9               [12] 1337 	mov	r1,a
      000482 E4               [12] 1338 	clr	a
      000483 3E               [12] 1339 	addc	a, r6
      000484 FA               [12] 1340 	mov	r2,a
      000485 8F 03            [24] 1341 	mov	ar3,r7
      000487 89 82            [24] 1342 	mov	dpl,r1
      000489 8A 83            [24] 1343 	mov	dph,r2
      00048B 8B F0            [24] 1344 	mov	b,r3
      00048D 12 10 20         [24] 1345 	lcall	__gptrget
      000490 F9               [12] 1346 	mov	r1,a
      000491 E4               [12] 1347 	clr	a
      000492 B9 4F 01         [24] 1348 	cjne	r1,#0x4f,00553$
      000495 04               [12] 1349 	inc	a
      000496                       1350 00553$:
      000496 FB               [12] 1351 	mov	r3,a
      000497 60 3B            [24] 1352 	jz	00118$
                                   1353 ;	main.c:165: command[8] == 'N' &&
      000499 74 08            [12] 1354 	mov	a,#0x08
      00049B 2D               [12] 1355 	add	a, r5
      00049C F8               [12] 1356 	mov	r0,a
      00049D E4               [12] 1357 	clr	a
      00049E 3E               [12] 1358 	addc	a, r6
      00049F F9               [12] 1359 	mov	r1,a
      0004A0 8F 02            [24] 1360 	mov	ar2,r7
      0004A2 88 82            [24] 1361 	mov	dpl,r0
      0004A4 89 83            [24] 1362 	mov	dph,r1
      0004A6 8A F0            [24] 1363 	mov	b,r2
      0004A8 12 10 20         [24] 1364 	lcall	__gptrget
      0004AB F8               [12] 1365 	mov	r0,a
      0004AC B8 4E 25         [24] 1366 	cjne	r0,#0x4e,00118$
                                   1367 ;	main.c:166: command[9] == '\0')
      0004AF 74 09            [12] 1368 	mov	a,#0x09
      0004B1 2D               [12] 1369 	add	a, r5
      0004B2 F8               [12] 1370 	mov	r0,a
      0004B3 E4               [12] 1371 	clr	a
      0004B4 3E               [12] 1372 	addc	a, r6
      0004B5 F9               [12] 1373 	mov	r1,a
      0004B6 8F 02            [24] 1374 	mov	ar2,r7
      0004B8 88 82            [24] 1375 	mov	dpl,r0
      0004BA 89 83            [24] 1376 	mov	dph,r1
      0004BC 8A F0            [24] 1377 	mov	b,r2
      0004BE 12 10 20         [24] 1378 	lcall	__gptrget
      0004C1 70 11            [24] 1379 	jnz	00118$
                                   1380 ;	main.c:168: BUZZER_PIN = 0;
                                   1381 ;	assignBit
      0004C3 C2 A7            [12] 1382 	clr	_P2_7
                                   1383 ;	main.c:169: buzzer_state = 1;
      0004C5 75 50 01         [24] 1384 	mov	_buzzer_state,#0x01
                                   1385 ;	main.c:171: uart_write_string("BUZZER,ON\r\n");
      0004C8 90 10 9F         [24] 1386 	mov	dptr,#___str_9
      0004CB 75 F0 80         [24] 1387 	mov	b, #0x80
      0004CE 12 0E C3         [24] 1388 	lcall	_uart_write_string
                                   1389 ;	main.c:172: oled_show_status();
                                   1390 ;	main.c:174: return;
      0004D1 02 01 80         [24] 1391 	ljmp	_oled_show_status
      0004D4                       1392 00118$:
                                   1393 ;	main.c:177: if (command[7] == 'O' &&
      0004D4 EB               [12] 1394 	mov	a,r3
      0004D5 60 51            [24] 1395 	jz	00127$
                                   1396 ;	main.c:178: command[8] == 'F' &&
      0004D7 74 08            [12] 1397 	mov	a,#0x08
      0004D9 2D               [12] 1398 	add	a, r5
      0004DA F9               [12] 1399 	mov	r1,a
      0004DB E4               [12] 1400 	clr	a
      0004DC 3E               [12] 1401 	addc	a, r6
      0004DD FA               [12] 1402 	mov	r2,a
      0004DE 8F 03            [24] 1403 	mov	ar3,r7
      0004E0 89 82            [24] 1404 	mov	dpl,r1
      0004E2 8A 83            [24] 1405 	mov	dph,r2
      0004E4 8B F0            [24] 1406 	mov	b,r3
      0004E6 12 10 20         [24] 1407 	lcall	__gptrget
      0004E9 F9               [12] 1408 	mov	r1,a
      0004EA B9 46 3B         [24] 1409 	cjne	r1,#0x46,00127$
                                   1410 ;	main.c:179: command[9] == 'F' &&
      0004ED 74 09            [12] 1411 	mov	a,#0x09
      0004EF 2D               [12] 1412 	add	a, r5
      0004F0 F9               [12] 1413 	mov	r1,a
      0004F1 E4               [12] 1414 	clr	a
      0004F2 3E               [12] 1415 	addc	a, r6
      0004F3 FA               [12] 1416 	mov	r2,a
      0004F4 8F 03            [24] 1417 	mov	ar3,r7
      0004F6 89 82            [24] 1418 	mov	dpl,r1
      0004F8 8A 83            [24] 1419 	mov	dph,r2
      0004FA 8B F0            [24] 1420 	mov	b,r3
      0004FC 12 10 20         [24] 1421 	lcall	__gptrget
      0004FF F9               [12] 1422 	mov	r1,a
      000500 B9 46 25         [24] 1423 	cjne	r1,#0x46,00127$
                                   1424 ;	main.c:180: command[10] == '\0')
      000503 74 0A            [12] 1425 	mov	a,#0x0a
      000505 2D               [12] 1426 	add	a, r5
      000506 F9               [12] 1427 	mov	r1,a
      000507 E4               [12] 1428 	clr	a
      000508 3E               [12] 1429 	addc	a, r6
      000509 FA               [12] 1430 	mov	r2,a
      00050A 8F 03            [24] 1431 	mov	ar3,r7
      00050C 89 82            [24] 1432 	mov	dpl,r1
      00050E 8A 83            [24] 1433 	mov	dph,r2
      000510 8B F0            [24] 1434 	mov	b,r3
      000512 12 10 20         [24] 1435 	lcall	__gptrget
      000515 70 11            [24] 1436 	jnz	00127$
                                   1437 ;	main.c:182: BUZZER_PIN = 1;
                                   1438 ;	assignBit
      000517 D2 A7            [12] 1439 	setb	_P2_7
                                   1440 ;	main.c:183: buzzer_state = 0;
      000519 75 50 00         [24] 1441 	mov	_buzzer_state,#0x00
                                   1442 ;	main.c:185: uart_write_string("BUZZER,OFF\r\n");
      00051C 90 10 AB         [24] 1443 	mov	dptr,#___str_10
      00051F 75 F0 80         [24] 1444 	mov	b, #0x80
      000522 12 0E C3         [24] 1445 	lcall	_uart_write_string
                                   1446 ;	main.c:186: oled_show_status();
                                   1447 ;	main.c:188: return;
      000525 02 01 80         [24] 1448 	ljmp	_oled_show_status
      000528                       1449 00127$:
                                   1450 ;	main.c:192: if (command[0] == 'S' &&
      000528 BC 53 02         [24] 1451 	cjne	r4,#0x53,00565$
      00052B 80 03            [24] 1452 	sjmp	00566$
      00052D                       1453 00565$:
      00052D 02 06 1A         [24] 1454 	ljmp	00135$
      000530                       1455 00566$:
                                   1456 ;	main.c:193: command[1] == 'T' &&
      000530 74 01            [12] 1457 	mov	a,#0x01
      000532 2D               [12] 1458 	add	a, r5
      000533 F9               [12] 1459 	mov	r1,a
      000534 E4               [12] 1460 	clr	a
      000535 3E               [12] 1461 	addc	a, r6
      000536 FA               [12] 1462 	mov	r2,a
      000537 8F 03            [24] 1463 	mov	ar3,r7
      000539 89 82            [24] 1464 	mov	dpl,r1
      00053B 8A 83            [24] 1465 	mov	dph,r2
      00053D 8B F0            [24] 1466 	mov	b,r3
      00053F 12 10 20         [24] 1467 	lcall	__gptrget
      000542 F9               [12] 1468 	mov	r1,a
      000543 B9 54 02         [24] 1469 	cjne	r1,#0x54,00567$
      000546 80 03            [24] 1470 	sjmp	00568$
      000548                       1471 00567$:
      000548 02 06 1A         [24] 1472 	ljmp	00135$
      00054B                       1473 00568$:
                                   1474 ;	main.c:194: command[2] == 'A' &&
      00054B 74 02            [12] 1475 	mov	a,#0x02
      00054D 2D               [12] 1476 	add	a, r5
      00054E F9               [12] 1477 	mov	r1,a
      00054F E4               [12] 1478 	clr	a
      000550 3E               [12] 1479 	addc	a, r6
      000551 FA               [12] 1480 	mov	r2,a
      000552 8F 03            [24] 1481 	mov	ar3,r7
      000554 89 82            [24] 1482 	mov	dpl,r1
      000556 8A 83            [24] 1483 	mov	dph,r2
      000558 8B F0            [24] 1484 	mov	b,r3
      00055A 12 10 20         [24] 1485 	lcall	__gptrget
      00055D F9               [12] 1486 	mov	r1,a
      00055E B9 41 02         [24] 1487 	cjne	r1,#0x41,00569$
      000561 80 03            [24] 1488 	sjmp	00570$
      000563                       1489 00569$:
      000563 02 06 1A         [24] 1490 	ljmp	00135$
      000566                       1491 00570$:
                                   1492 ;	main.c:195: command[3] == 'T' &&
      000566 74 03            [12] 1493 	mov	a,#0x03
      000568 2D               [12] 1494 	add	a, r5
      000569 F9               [12] 1495 	mov	r1,a
      00056A E4               [12] 1496 	clr	a
      00056B 3E               [12] 1497 	addc	a, r6
      00056C FA               [12] 1498 	mov	r2,a
      00056D 8F 03            [24] 1499 	mov	ar3,r7
      00056F 89 82            [24] 1500 	mov	dpl,r1
      000571 8A 83            [24] 1501 	mov	dph,r2
      000573 8B F0            [24] 1502 	mov	b,r3
      000575 12 10 20         [24] 1503 	lcall	__gptrget
      000578 F9               [12] 1504 	mov	r1,a
      000579 B9 54 02         [24] 1505 	cjne	r1,#0x54,00571$
      00057C 80 03            [24] 1506 	sjmp	00572$
      00057E                       1507 00571$:
      00057E 02 06 1A         [24] 1508 	ljmp	00135$
      000581                       1509 00572$:
                                   1510 ;	main.c:196: command[4] == 'U' &&
      000581 74 04            [12] 1511 	mov	a,#0x04
      000583 2D               [12] 1512 	add	a, r5
      000584 F9               [12] 1513 	mov	r1,a
      000585 E4               [12] 1514 	clr	a
      000586 3E               [12] 1515 	addc	a, r6
      000587 FA               [12] 1516 	mov	r2,a
      000588 8F 03            [24] 1517 	mov	ar3,r7
      00058A 89 82            [24] 1518 	mov	dpl,r1
      00058C 8A 83            [24] 1519 	mov	dph,r2
      00058E 8B F0            [24] 1520 	mov	b,r3
      000590 12 10 20         [24] 1521 	lcall	__gptrget
      000593 F9               [12] 1522 	mov	r1,a
      000594 B9 55 02         [24] 1523 	cjne	r1,#0x55,00573$
      000597 80 03            [24] 1524 	sjmp	00574$
      000599                       1525 00573$:
      000599 02 06 1A         [24] 1526 	ljmp	00135$
      00059C                       1527 00574$:
                                   1528 ;	main.c:197: command[5] == 'S' &&
      00059C 74 05            [12] 1529 	mov	a,#0x05
      00059E 2D               [12] 1530 	add	a, r5
      00059F F9               [12] 1531 	mov	r1,a
      0005A0 E4               [12] 1532 	clr	a
      0005A1 3E               [12] 1533 	addc	a, r6
      0005A2 FA               [12] 1534 	mov	r2,a
      0005A3 8F 03            [24] 1535 	mov	ar3,r7
      0005A5 89 82            [24] 1536 	mov	dpl,r1
      0005A7 8A 83            [24] 1537 	mov	dph,r2
      0005A9 8B F0            [24] 1538 	mov	b,r3
      0005AB 12 10 20         [24] 1539 	lcall	__gptrget
      0005AE F9               [12] 1540 	mov	r1,a
      0005AF B9 53 68         [24] 1541 	cjne	r1,#0x53,00135$
                                   1542 ;	main.c:198: command[6] == '\0')
      0005B2 74 06            [12] 1543 	mov	a,#0x06
      0005B4 2D               [12] 1544 	add	a, r5
      0005B5 F9               [12] 1545 	mov	r1,a
      0005B6 E4               [12] 1546 	clr	a
      0005B7 3E               [12] 1547 	addc	a, r6
      0005B8 FA               [12] 1548 	mov	r2,a
      0005B9 8F 03            [24] 1549 	mov	ar3,r7
      0005BB 89 82            [24] 1550 	mov	dpl,r1
      0005BD 8A 83            [24] 1551 	mov	dph,r2
      0005BF 8B F0            [24] 1552 	mov	b,r3
      0005C1 12 10 20         [24] 1553 	lcall	__gptrget
      0005C4 70 54            [24] 1554 	jnz	00135$
                                   1555 ;	main.c:200: uart_write_string("STATUS,RELAY=");
      0005C6 90 10 B8         [24] 1556 	mov	dptr,#___str_11
      0005C9 75 F0 80         [24] 1557 	mov	b, #0x80
      0005CC 12 0E C3         [24] 1558 	lcall	_uart_write_string
                                   1559 ;	main.c:201: uart_write_string(relay_state ? "ON" : "OFF");
      0005CF E5 4F            [12] 1560 	mov	a,_relay_state
      0005D1 60 06            [24] 1561 	jz	00161$
      0005D3 7A 59            [12] 1562 	mov	r2,#___str_2
      0005D5 7B 10            [12] 1563 	mov	r3,#(___str_2 >> 8)
      0005D7 80 04            [24] 1564 	sjmp	00162$
      0005D9                       1565 00161$:
      0005D9 7A 5C            [12] 1566 	mov	r2,#___str_3
      0005DB 7B 10            [12] 1567 	mov	r3,#(___str_3 >> 8)
      0005DD                       1568 00162$:
      0005DD 8B 01            [24] 1569 	mov	ar1,r3
      0005DF 7B 80            [12] 1570 	mov	r3,#0x80
      0005E1 8A 82            [24] 1571 	mov	dpl, r2
      0005E3 89 83            [24] 1572 	mov	dph, r1
      0005E5 8B F0            [24] 1573 	mov	b, r3
      0005E7 12 0E C3         [24] 1574 	lcall	_uart_write_string
                                   1575 ;	main.c:202: uart_write_string(",BUZZER=");
      0005EA 90 10 C6         [24] 1576 	mov	dptr,#___str_12
      0005ED 75 F0 80         [24] 1577 	mov	b, #0x80
      0005F0 12 0E C3         [24] 1578 	lcall	_uart_write_string
                                   1579 ;	main.c:203: uart_write_string(buzzer_state ? "ON" : "OFF");
      0005F3 E5 50            [12] 1580 	mov	a,_buzzer_state
      0005F5 60 06            [24] 1581 	jz	00163$
      0005F7 7A 59            [12] 1582 	mov	r2,#___str_2
      0005F9 7B 10            [12] 1583 	mov	r3,#(___str_2 >> 8)
      0005FB 80 04            [24] 1584 	sjmp	00164$
      0005FD                       1585 00163$:
      0005FD 7A 5C            [12] 1586 	mov	r2,#___str_3
      0005FF 7B 10            [12] 1587 	mov	r3,#(___str_3 >> 8)
      000601                       1588 00164$:
      000601 8B 01            [24] 1589 	mov	ar1,r3
      000603 7B 80            [12] 1590 	mov	r3,#0x80
      000605 8A 82            [24] 1591 	mov	dpl, r2
      000607 89 83            [24] 1592 	mov	dph, r1
      000609 8B F0            [24] 1593 	mov	b, r3
      00060B 12 0E C3         [24] 1594 	lcall	_uart_write_string
                                   1595 ;	main.c:204: uart_write_string("\r\n");
      00060E 90 10 CF         [24] 1596 	mov	dptr,#___str_13
      000611 75 F0 80         [24] 1597 	mov	b, #0x80
      000614 12 0E C3         [24] 1598 	lcall	_uart_write_string
                                   1599 ;	main.c:206: oled_show_status();
                                   1600 ;	main.c:208: return;
      000617 02 01 80         [24] 1601 	ljmp	_oled_show_status
      00061A                       1602 00135$:
                                   1603 ;	main.c:211: if (command[0] == 'H' &&
      00061A BC 48 02         [24] 1604 	cjne	r4,#0x48,00580$
      00061D 80 03            [24] 1605 	sjmp	00581$
      00061F                       1606 00580$:
      00061F 02 06 A5         [24] 1607 	ljmp	00143$
      000622                       1608 00581$:
                                   1609 ;	main.c:212: command[1] == 'E' &&
      000622 74 01            [12] 1610 	mov	a,#0x01
      000624 2D               [12] 1611 	add	a, r5
      000625 F9               [12] 1612 	mov	r1,a
      000626 E4               [12] 1613 	clr	a
      000627 3E               [12] 1614 	addc	a, r6
      000628 FA               [12] 1615 	mov	r2,a
      000629 8F 03            [24] 1616 	mov	ar3,r7
      00062B 89 82            [24] 1617 	mov	dpl,r1
      00062D 8A 83            [24] 1618 	mov	dph,r2
      00062F 8B F0            [24] 1619 	mov	b,r3
      000631 12 10 20         [24] 1620 	lcall	__gptrget
      000634 F9               [12] 1621 	mov	r1,a
      000635 B9 45 6D         [24] 1622 	cjne	r1,#0x45,00143$
                                   1623 ;	main.c:213: command[2] == 'L' &&
      000638 74 02            [12] 1624 	mov	a,#0x02
      00063A 2D               [12] 1625 	add	a, r5
      00063B F9               [12] 1626 	mov	r1,a
      00063C E4               [12] 1627 	clr	a
      00063D 3E               [12] 1628 	addc	a, r6
      00063E FA               [12] 1629 	mov	r2,a
      00063F 8F 03            [24] 1630 	mov	ar3,r7
      000641 89 82            [24] 1631 	mov	dpl,r1
      000643 8A 83            [24] 1632 	mov	dph,r2
      000645 8B F0            [24] 1633 	mov	b,r3
      000647 12 10 20         [24] 1634 	lcall	__gptrget
      00064A F9               [12] 1635 	mov	r1,a
      00064B B9 4C 57         [24] 1636 	cjne	r1,#0x4c,00143$
                                   1637 ;	main.c:214: command[3] == 'P' &&
      00064E 74 03            [12] 1638 	mov	a,#0x03
      000650 2D               [12] 1639 	add	a, r5
      000651 F9               [12] 1640 	mov	r1,a
      000652 E4               [12] 1641 	clr	a
      000653 3E               [12] 1642 	addc	a, r6
      000654 FA               [12] 1643 	mov	r2,a
      000655 8F 03            [24] 1644 	mov	ar3,r7
      000657 89 82            [24] 1645 	mov	dpl,r1
      000659 8A 83            [24] 1646 	mov	dph,r2
      00065B 8B F0            [24] 1647 	mov	b,r3
      00065D 12 10 20         [24] 1648 	lcall	__gptrget
      000660 F9               [12] 1649 	mov	r1,a
      000661 B9 50 41         [24] 1650 	cjne	r1,#0x50,00143$
                                   1651 ;	main.c:215: command[4] == '\0')
      000664 74 04            [12] 1652 	mov	a,#0x04
      000666 2D               [12] 1653 	add	a, r5
      000667 F9               [12] 1654 	mov	r1,a
      000668 E4               [12] 1655 	clr	a
      000669 3E               [12] 1656 	addc	a, r6
      00066A FA               [12] 1657 	mov	r2,a
      00066B 8F 03            [24] 1658 	mov	ar3,r7
      00066D 89 82            [24] 1659 	mov	dpl,r1
      00066F 8A 83            [24] 1660 	mov	dph,r2
      000671 8B F0            [24] 1661 	mov	b,r3
      000673 12 10 20         [24] 1662 	lcall	__gptrget
      000676 70 2D            [24] 1663 	jnz	00143$
                                   1664 ;	main.c:217: uart_write_string("RELAY,ON\r\n");
      000678 90 10 88         [24] 1665 	mov	dptr,#___str_7
      00067B 75 F0 80         [24] 1666 	mov	b, #0x80
      00067E 12 0E C3         [24] 1667 	lcall	_uart_write_string
                                   1668 ;	main.c:218: uart_write_string("RELAY,OFF\r\n");
      000681 90 10 93         [24] 1669 	mov	dptr,#___str_8
      000684 75 F0 80         [24] 1670 	mov	b, #0x80
      000687 12 0E C3         [24] 1671 	lcall	_uart_write_string
                                   1672 ;	main.c:219: uart_write_string("BUZZER,ON\r\n");
      00068A 90 10 9F         [24] 1673 	mov	dptr,#___str_9
      00068D 75 F0 80         [24] 1674 	mov	b, #0x80
      000690 12 0E C3         [24] 1675 	lcall	_uart_write_string
                                   1676 ;	main.c:220: uart_write_string("BUZZER,OFF\r\n");
      000693 90 10 AB         [24] 1677 	mov	dptr,#___str_10
      000696 75 F0 80         [24] 1678 	mov	b, #0x80
      000699 12 0E C3         [24] 1679 	lcall	_uart_write_string
                                   1680 ;	main.c:221: uart_write_string("STATUS\r\n");
      00069C 90 10 D2         [24] 1681 	mov	dptr,#___str_14
      00069F 75 F0 80         [24] 1682 	mov	b, #0x80
                                   1683 ;	main.c:223: return;
      0006A2 02 0E C3         [24] 1684 	ljmp	_uart_write_string
      0006A5                       1685 00143$:
                                   1686 ;	main.c:226: if (command[0] == 'D' &&
      0006A5 BC 44 61         [24] 1687 	cjne	r4,#0x44,00149$
                                   1688 ;	main.c:227: command[1] == 'A' &&
      0006A8 74 01            [12] 1689 	mov	a,#0x01
      0006AA 2D               [12] 1690 	add	a, r5
      0006AB F9               [12] 1691 	mov	r1,a
      0006AC E4               [12] 1692 	clr	a
      0006AD 3E               [12] 1693 	addc	a, r6
      0006AE FA               [12] 1694 	mov	r2,a
      0006AF 8F 03            [24] 1695 	mov	ar3,r7
      0006B1 89 82            [24] 1696 	mov	dpl,r1
      0006B3 8A 83            [24] 1697 	mov	dph,r2
      0006B5 8B F0            [24] 1698 	mov	b,r3
      0006B7 12 10 20         [24] 1699 	lcall	__gptrget
      0006BA F9               [12] 1700 	mov	r1,a
      0006BB B9 41 4B         [24] 1701 	cjne	r1,#0x41,00149$
                                   1702 ;	main.c:228: command[2] == 'T' &&
      0006BE 74 02            [12] 1703 	mov	a,#0x02
      0006C0 2D               [12] 1704 	add	a, r5
      0006C1 F9               [12] 1705 	mov	r1,a
      0006C2 E4               [12] 1706 	clr	a
      0006C3 3E               [12] 1707 	addc	a, r6
      0006C4 FA               [12] 1708 	mov	r2,a
      0006C5 8F 03            [24] 1709 	mov	ar3,r7
      0006C7 89 82            [24] 1710 	mov	dpl,r1
      0006C9 8A 83            [24] 1711 	mov	dph,r2
      0006CB 8B F0            [24] 1712 	mov	b,r3
      0006CD 12 10 20         [24] 1713 	lcall	__gptrget
      0006D0 F9               [12] 1714 	mov	r1,a
      0006D1 B9 54 35         [24] 1715 	cjne	r1,#0x54,00149$
                                   1716 ;	main.c:229: command[3] == 'A' &&
      0006D4 74 03            [12] 1717 	mov	a,#0x03
      0006D6 2D               [12] 1718 	add	a, r5
      0006D7 F9               [12] 1719 	mov	r1,a
      0006D8 E4               [12] 1720 	clr	a
      0006D9 3E               [12] 1721 	addc	a, r6
      0006DA FA               [12] 1722 	mov	r2,a
      0006DB 8F 03            [24] 1723 	mov	ar3,r7
      0006DD 89 82            [24] 1724 	mov	dpl,r1
      0006DF 8A 83            [24] 1725 	mov	dph,r2
      0006E1 8B F0            [24] 1726 	mov	b,r3
      0006E3 12 10 20         [24] 1727 	lcall	__gptrget
      0006E6 F9               [12] 1728 	mov	r1,a
      0006E7 B9 41 1F         [24] 1729 	cjne	r1,#0x41,00149$
                                   1730 ;	main.c:230: command[4] == ',')
      0006EA 74 04            [12] 1731 	mov	a,#0x04
      0006EC 2D               [12] 1732 	add	a, r5
      0006ED F9               [12] 1733 	mov	r1,a
      0006EE E4               [12] 1734 	clr	a
      0006EF 3E               [12] 1735 	addc	a, r6
      0006F0 FA               [12] 1736 	mov	r2,a
      0006F1 8F 03            [24] 1737 	mov	ar3,r7
      0006F3 89 82            [24] 1738 	mov	dpl,r1
      0006F5 8A 83            [24] 1739 	mov	dph,r2
      0006F7 8B F0            [24] 1740 	mov	b,r3
      0006F9 12 10 20         [24] 1741 	lcall	__gptrget
      0006FC F9               [12] 1742 	mov	r1,a
      0006FD B9 2C 09         [24] 1743 	cjne	r1,#0x2c,00149$
                                   1744 ;	main.c:232: oled_show_data(command);
      000700 8D 82            [24] 1745 	mov	dpl, r5
      000702 8E 83            [24] 1746 	mov	dph, r6
      000704 8F F0            [24] 1747 	mov	b, r7
                                   1748 ;	main.c:234: return;
      000706 02 02 12         [24] 1749 	ljmp	_oled_show_data
      000709                       1750 00149$:
                                   1751 ;	main.c:237: if (command[0] == 'L' &&
      000709 BC 4C 02         [24] 1752 	cjne	r4,#0x4c,00599$
      00070C 80 01            [24] 1753 	sjmp	00600$
      00070E                       1754 00599$:
      00070E 22               [24] 1755 	ret
      00070F                       1756 00600$:
                                   1757 ;	main.c:238: command[1] >= '0' &&
      00070F 74 01            [12] 1758 	mov	a,#0x01
      000711 2D               [12] 1759 	add	a, r5
      000712 FA               [12] 1760 	mov	r2,a
      000713 E4               [12] 1761 	clr	a
      000714 3E               [12] 1762 	addc	a, r6
      000715 FB               [12] 1763 	mov	r3,a
      000716 8F 04            [24] 1764 	mov	ar4,r7
      000718 8A 82            [24] 1765 	mov	dpl,r2
      00071A 8B 83            [24] 1766 	mov	dph,r3
      00071C 8C F0            [24] 1767 	mov	b,r4
      00071E 12 10 20         [24] 1768 	lcall	__gptrget
      000721 FC               [12] 1769 	mov	r4,a
      000722 BC 30 00         [24] 1770 	cjne	r4,#0x30,00601$
      000725                       1771 00601$:
      000725 40 4E            [24] 1772 	jc	00159$
                                   1773 ;	main.c:239: command[1] <= '3' &&
      000727 EC               [12] 1774 	mov	a,r4
      000728 24 CC            [12] 1775 	add	a,#0xff - 0x33
      00072A 40 49            [24] 1776 	jc	00159$
                                   1777 ;	free result
                                   1778 ;	main.c:240: command[2] == ':')
      00072C 74 02            [12] 1779 	mov	a,#0x02
      00072E 2D               [12] 1780 	add	a, r5
      00072F F9               [12] 1781 	mov	r1,a
      000730 E4               [12] 1782 	clr	a
      000731 3E               [12] 1783 	addc	a, r6
      000732 FA               [12] 1784 	mov	r2,a
      000733 8F 03            [24] 1785 	mov	ar3,r7
      000735 89 82            [24] 1786 	mov	dpl,r1
      000737 8A 83            [24] 1787 	mov	dph,r2
      000739 8B F0            [24] 1788 	mov	b,r3
      00073B 12 10 20         [24] 1789 	lcall	__gptrget
      00073E F9               [12] 1790 	mov	r1,a
      00073F B9 3A 33         [24] 1791 	cjne	r1,#0x3a,00159$
                                   1792 ;	main.c:242: unsigned char page = (command[1] - '0') * 2;
      000742 EC               [12] 1793 	mov	a,r4
      000743 24 D0            [12] 1794 	add	a,#0xd0
      000745 25 E0            [12] 1795 	add	a,acc
                                   1796 ;	main.c:244: oled_clear_line(page);
      000747 FC               [12] 1797 	mov	r4,a
      000748 F5 82            [12] 1798 	mov	dpl,a
      00074A C0 07            [24] 1799 	push	ar7
      00074C C0 06            [24] 1800 	push	ar6
      00074E C0 05            [24] 1801 	push	ar5
      000750 C0 04            [24] 1802 	push	ar4
      000752 12 01 67         [24] 1803 	lcall	_oled_clear_line
      000755 D0 04            [24] 1804 	pop	ar4
                                   1805 ;	main.c:245: oled_set_position(page, 0);
      000757 75 5E 00         [24] 1806 	mov	_oled_set_position_PARM_2,#0x00
      00075A 8C 82            [24] 1807 	mov	dpl, r4
      00075C 12 09 35         [24] 1808 	lcall	_oled_set_position
      00075F D0 05            [24] 1809 	pop	ar5
      000761 D0 06            [24] 1810 	pop	ar6
      000763 D0 07            [24] 1811 	pop	ar7
                                   1812 ;	main.c:246: oled_string(command + 3);
      000765 74 03            [12] 1813 	mov	a,#0x03
      000767 2D               [12] 1814 	add	a, r5
      000768 FD               [12] 1815 	mov	r5,a
      000769 E4               [12] 1816 	clr	a
      00076A 3E               [12] 1817 	addc	a, r6
      00076B FE               [12] 1818 	mov	r6,a
      00076C 8D 82            [24] 1819 	mov	dpl, r5
      00076E 8E 83            [24] 1820 	mov	dph, r6
      000770 8F F0            [24] 1821 	mov	b, r7
                                   1822 ;	main.c:248: return;
                                   1823 ;	main.c:250: }
      000772 02 0D 40         [24] 1824 	ljmp	_oled_string
      000775                       1825 00159$:
      000775 22               [24] 1826 	ret
                                   1827 ;------------------------------------------------------------
                                   1828 ;Allocation info for local variables in function 'uart_receive_process'
                                   1829 ;------------------------------------------------------------
                                   1830 ;data          Allocated with name '_uart_receive_process_data_10000_69'
                                   1831 ;------------------------------------------------------------
                                   1832 ;	main.c:252: static void uart_receive_process(void)
                                   1833 ;	-----------------------------------------
                                   1834 ;	 function uart_receive_process
                                   1835 ;	-----------------------------------------
      000776                       1836 _uart_receive_process:
                                   1837 ;	main.c:256: if (!uart_read_byte(&data))
      000776 90 00 55         [24] 1838 	mov	dptr,#_uart_receive_process_data_10000_69
      000779 75 F0 40         [24] 1839 	mov	b, #0x40
      00077C 12 0E FA         [24] 1840 	lcall	_uart_read_byte
      00077F E5 82            [12] 1841 	mov	a, dpl
      000781 70 01            [24] 1842 	jnz	00102$
                                   1843 ;	main.c:257: return;
      000783 22               [24] 1844 	ret
      000784                       1845 00102$:
                                   1846 ;	main.c:259: if (data == '\r' || data == '\n')
      000784 74 0D            [12] 1847 	mov	a,#0x0d
      000786 B5 55 02         [24] 1848 	cjne	a,_uart_receive_process_data_10000_69,00161$
      000789 80 05            [24] 1849 	sjmp	00105$
      00078B                       1850 00161$:
      00078B 74 0A            [12] 1851 	mov	a,#0x0a
      00078D B5 55 18         [24] 1852 	cjne	a,_uart_receive_process_data_10000_69,00106$
      000790                       1853 00105$:
                                   1854 ;	main.c:261: if (rx_length > 0)
      000790 E5 4E            [12] 1855 	mov	a,_rx_length
      000792 60 13            [24] 1856 	jz	00104$
                                   1857 ;	main.c:263: rx_buffer[rx_length] = '\0';
      000794 E5 4E            [12] 1858 	mov	a,_rx_length
      000796 24 0E            [12] 1859 	add	a, #_rx_buffer
      000798 F8               [12] 1860 	mov	r0,a
      000799 76 00            [12] 1861 	mov	@r0,#0x00
                                   1862 ;	main.c:265: process_command((char *)rx_buffer);
      00079B 90 00 0E         [24] 1863 	mov	dptr,#_rx_buffer
      00079E 75 F0 40         [24] 1864 	mov	b, #0x40
      0007A1 12 02 91         [24] 1865 	lcall	_process_command
                                   1866 ;	main.c:267: rx_length = 0;
      0007A4 75 4E 00         [24] 1867 	mov	_rx_length,#0x00
      0007A7                       1868 00104$:
                                   1869 ;	main.c:270: return;
      0007A7 22               [24] 1870 	ret
      0007A8                       1871 00106$:
                                   1872 ;	main.c:273: if (data == 8 || data == 127)
      0007A8 74 08            [12] 1873 	mov	a,#0x08
      0007AA B5 55 02         [24] 1874 	cjne	a,_uart_receive_process_data_10000_69,00165$
      0007AD 80 05            [24] 1875 	sjmp	00110$
      0007AF                       1876 00165$:
      0007AF 74 7F            [12] 1877 	mov	a,#0x7f
      0007B1 B5 55 07         [24] 1878 	cjne	a,_uart_receive_process_data_10000_69,00111$
      0007B4                       1879 00110$:
                                   1880 ;	main.c:275: if (rx_length > 0)
      0007B4 E5 4E            [12] 1881 	mov	a,_rx_length
      0007B6 60 02            [24] 1882 	jz	00109$
                                   1883 ;	main.c:276: rx_length--;
      0007B8 15 4E            [12] 1884 	dec	_rx_length
      0007BA                       1885 00109$:
                                   1886 ;	main.c:278: return;
      0007BA 22               [24] 1887 	ret
      0007BB                       1888 00111$:
                                   1889 ;	main.c:281: if (rx_length < RX_BUFFER_SIZE - 1)
      0007BB 74 C1            [12] 1890 	mov	a,#0x100 - 0x3f
      0007BD 25 4E            [12] 1891 	add	a,_rx_length
      0007BF 40 0B            [24] 1892 	jc	00114$
                                   1893 ;	main.c:283: rx_buffer[rx_length++] = data;
      0007C1 AF 4E            [24] 1894 	mov	r7,_rx_length
      0007C3 05 4E            [12] 1895 	inc	_rx_length
      0007C5 EF               [12] 1896 	mov	a,r7
      0007C6 24 0E            [12] 1897 	add	a, #_rx_buffer
      0007C8 F8               [12] 1898 	mov	r0,a
      0007C9 A6 55            [24] 1899 	mov	@r0,_uart_receive_process_data_10000_69
      0007CB 22               [24] 1900 	ret
      0007CC                       1901 00114$:
                                   1902 ;	main.c:287: rx_length = 0;
      0007CC 75 4E 00         [24] 1903 	mov	_rx_length,#0x00
                                   1904 ;	main.c:289: }
      0007CF 22               [24] 1905 	ret
                                   1906 ;------------------------------------------------------------
                                   1907 ;Allocation info for local variables in function 'main'
                                   1908 ;------------------------------------------------------------
                                   1909 ;uart_status   Allocated to registers 
                                   1910 ;------------------------------------------------------------
                                   1911 ;	main.c:291: void main(void)
                                   1912 ;	-----------------------------------------
                                   1913 ;	 function main
                                   1914 ;	-----------------------------------------
      0007D0                       1915 _main:
                                   1916 ;	main.c:295: EA = 0;
                                   1917 ;	assignBit
      0007D0 C2 AF            [12] 1918 	clr	_EA
                                   1919 ;	main.c:297: RELAY_PIN = 1;
                                   1920 ;	assignBit
      0007D2 D2 A6            [12] 1921 	setb	_P2_6
                                   1922 ;	main.c:298: BUZZER_PIN = 1;
                                   1923 ;	assignBit
      0007D4 D2 A7            [12] 1924 	setb	_P2_7
                                   1925 ;	main.c:300: relay_state = 0;
      0007D6 75 4F 00         [24] 1926 	mov	_relay_state,#0x00
                                   1927 ;	main.c:301: buzzer_state = 0;
      0007D9 75 50 00         [24] 1928 	mov	_buzzer_state,#0x00
                                   1929 ;	main.c:303: timer0_init();
      0007DC 12 08 24         [24] 1930 	lcall	_timer0_init
                                   1931 ;	main.c:305: EA = 1;
                                   1932 ;	assignBit
      0007DF D2 AF            [12] 1933 	setb	_EA
                                   1934 ;	main.c:307: oled_init();
      0007E1 12 09 C4         [24] 1935 	lcall	_oled_init
                                   1936 ;	main.c:308: oled_clear();
      0007E4 12 09 72         [24] 1937 	lcall	_oled_clear
                                   1938 ;	main.c:310: uart_status = uart_init(9600);
      0007E7 90 25 80         [24] 1939 	mov	dptr,#0x2580
      0007EA E4               [12] 1940 	clr	a
      0007EB F5 F0            [12] 1941 	mov	b,a
      0007ED 12 0D BA         [24] 1942 	lcall	_uart_init
      0007F0 E5 82            [12] 1943 	mov	a, dpl
                                   1944 ;	main.c:312: if (!uart_status)
                                   1945 ;	main.c:314: oled_set_position(0, 0);
      0007F2 70 16            [24] 1946 	jnz	00105$
      0007F4 F5 5E            [12] 1947 	mov	_oled_set_position_PARM_2,a
      0007F6 F5 82            [12] 1948 	mov	dpl,a
      0007F8 12 09 35         [24] 1949 	lcall	_oled_set_position
                                   1950 ;	main.c:315: oled_string("UART INIT FAILED");
      0007FB 90 10 DB         [24] 1951 	mov	dptr,#___str_15
      0007FE 75 F0 80         [24] 1952 	mov	b, #0x80
      000801 12 0D 40         [24] 1953 	lcall	_oled_string
                                   1954 ;	main.c:317: RELAY_PIN = 1;
                                   1955 ;	assignBit
      000804 D2 A6            [12] 1956 	setb	_P2_6
                                   1957 ;	main.c:318: BUZZER_PIN = 1;
                                   1958 ;	assignBit
      000806 D2 A7            [12] 1959 	setb	_P2_7
                                   1960 ;	main.c:320: while (1);
      000808                       1961 00102$:
      000808 80 FE            [24] 1962 	sjmp	00102$
      00080A                       1963 00105$:
                                   1964 ;	main.c:323: oled_show_status();
      00080A 12 01 80         [24] 1965 	lcall	_oled_show_status
                                   1966 ;	main.c:325: uart_write_string("APPLIANCE SAFETY V0.1\r\n");
      00080D 90 10 EC         [24] 1967 	mov	dptr,#___str_16
      000810 75 F0 80         [24] 1968 	mov	b, #0x80
      000813 12 0E C3         [24] 1969 	lcall	_uart_write_string
                                   1970 ;	main.c:326: uart_write_string("UART READY\r\n");
      000816 90 11 04         [24] 1971 	mov	dptr,#___str_17
      000819 75 F0 80         [24] 1972 	mov	b, #0x80
      00081C 12 0E C3         [24] 1973 	lcall	_uart_write_string
                                   1974 ;	main.c:328: while (1)
      00081F                       1975 00107$:
                                   1976 ;	main.c:330: uart_receive_process();
      00081F 12 07 76         [24] 1977 	lcall	_uart_receive_process
                                   1978 ;	main.c:332: }
      000822 80 FB            [24] 1979 	sjmp	00107$
                                   1980 	.area CSEG    (CODE)
                                   1981 	.area CONST   (CODE)
                                   1982 	.area CONST   (CODE)
      001040                       1983 ___str_0:
      001040 41 50 50 4C 49 41 4E  1984 	.ascii "APPLIANCE SAFETY"
             43 45 20 53 41 46 45
             54 59
      001050 00                    1985 	.db 0x00
                                   1986 	.area CSEG    (CODE)
                                   1987 	.area CONST   (CODE)
      001051                       1988 ___str_1:
      001051 52 45 4C 41 59 3A 20  1989 	.ascii "RELAY: "
      001058 00                    1990 	.db 0x00
                                   1991 	.area CSEG    (CODE)
                                   1992 	.area CONST   (CODE)
      001059                       1993 ___str_2:
      001059 4F 4E                 1994 	.ascii "ON"
      00105B 00                    1995 	.db 0x00
                                   1996 	.area CSEG    (CODE)
                                   1997 	.area CONST   (CODE)
      00105C                       1998 ___str_3:
      00105C 4F 46 46              1999 	.ascii "OFF"
      00105F 00                    2000 	.db 0x00
                                   2001 	.area CSEG    (CODE)
                                   2002 	.area CONST   (CODE)
      001060                       2003 ___str_4:
      001060 42 55 5A 5A 45 52 3A  2004 	.ascii "BUZZER: "
             20
      001068 00                    2005 	.db 0x00
                                   2006 	.area CSEG    (CODE)
                                   2007 	.area CONST   (CODE)
      001069                       2008 ___str_5:
      001069 53 59 53 54 45 4D 20  2009 	.ascii "SYSTEM READY"
             52 45 41 44 59
      001075 00                    2010 	.db 0x00
                                   2011 	.area CSEG    (CODE)
                                   2012 	.area CONST   (CODE)
      001076                       2013 ___str_6:
      001076 4C 49 56 45 20 4D 45  2014 	.ascii "LIVE MEASUREMENTS"
             41 53 55 52 45 4D 45
             4E 54 53
      001087 00                    2015 	.db 0x00
                                   2016 	.area CSEG    (CODE)
                                   2017 	.area CONST   (CODE)
      001088                       2018 ___str_7:
      001088 52 45 4C 41 59 2C 4F  2019 	.ascii "RELAY,ON"
             4E
      001090 0D                    2020 	.db 0x0d
      001091 0A                    2021 	.db 0x0a
      001092 00                    2022 	.db 0x00
                                   2023 	.area CSEG    (CODE)
                                   2024 	.area CONST   (CODE)
      001093                       2025 ___str_8:
      001093 52 45 4C 41 59 2C 4F  2026 	.ascii "RELAY,OFF"
             46 46
      00109C 0D                    2027 	.db 0x0d
      00109D 0A                    2028 	.db 0x0a
      00109E 00                    2029 	.db 0x00
                                   2030 	.area CSEG    (CODE)
                                   2031 	.area CONST   (CODE)
      00109F                       2032 ___str_9:
      00109F 42 55 5A 5A 45 52 2C  2033 	.ascii "BUZZER,ON"
             4F 4E
      0010A8 0D                    2034 	.db 0x0d
      0010A9 0A                    2035 	.db 0x0a
      0010AA 00                    2036 	.db 0x00
                                   2037 	.area CSEG    (CODE)
                                   2038 	.area CONST   (CODE)
      0010AB                       2039 ___str_10:
      0010AB 42 55 5A 5A 45 52 2C  2040 	.ascii "BUZZER,OFF"
             4F 46 46
      0010B5 0D                    2041 	.db 0x0d
      0010B6 0A                    2042 	.db 0x0a
      0010B7 00                    2043 	.db 0x00
                                   2044 	.area CSEG    (CODE)
                                   2045 	.area CONST   (CODE)
      0010B8                       2046 ___str_11:
      0010B8 53 54 41 54 55 53 2C  2047 	.ascii "STATUS,RELAY="
             52 45 4C 41 59 3D
      0010C5 00                    2048 	.db 0x00
                                   2049 	.area CSEG    (CODE)
                                   2050 	.area CONST   (CODE)
      0010C6                       2051 ___str_12:
      0010C6 2C 42 55 5A 5A 45 52  2052 	.ascii ",BUZZER="
             3D
      0010CE 00                    2053 	.db 0x00
                                   2054 	.area CSEG    (CODE)
                                   2055 	.area CONST   (CODE)
      0010CF                       2056 ___str_13:
      0010CF 0D                    2057 	.db 0x0d
      0010D0 0A                    2058 	.db 0x0a
      0010D1 00                    2059 	.db 0x00
                                   2060 	.area CSEG    (CODE)
                                   2061 	.area CONST   (CODE)
      0010D2                       2062 ___str_14:
      0010D2 53 54 41 54 55 53     2063 	.ascii "STATUS"
      0010D8 0D                    2064 	.db 0x0d
      0010D9 0A                    2065 	.db 0x0a
      0010DA 00                    2066 	.db 0x00
                                   2067 	.area CSEG    (CODE)
                                   2068 	.area CONST   (CODE)
      0010DB                       2069 ___str_15:
      0010DB 55 41 52 54 20 49 4E  2070 	.ascii "UART INIT FAILED"
             49 54 20 46 41 49 4C
             45 44
      0010EB 00                    2071 	.db 0x00
                                   2072 	.area CSEG    (CODE)
                                   2073 	.area CONST   (CODE)
      0010EC                       2074 ___str_16:
      0010EC 41 50 50 4C 49 41 4E  2075 	.ascii "APPLIANCE SAFETY V0.1"
             43 45 20 53 41 46 45
             54 59 20 56 30 2E 31
      001101 0D                    2076 	.db 0x0d
      001102 0A                    2077 	.db 0x0a
      001103 00                    2078 	.db 0x00
                                   2079 	.area CSEG    (CODE)
                                   2080 	.area CONST   (CODE)
      001104                       2081 ___str_17:
      001104 55 41 52 54 20 52 45  2082 	.ascii "UART READY"
             41 44 59
      00110E 0D                    2083 	.db 0x0d
      00110F 0A                    2084 	.db 0x0a
      001110 00                    2085 	.db 0x00
                                   2086 	.area CSEG    (CODE)
                                   2087 	.area XINIT   (CODE)
                                   2088 	.area CABS    (ABS,CODE)
