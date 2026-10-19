;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module my_oled
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_write
	.globl _EP6INT
	.globl _EP5INT
	.globl _EP4INT
	.globl _EP3INT
	.globl _EP2INT
	.globl _EP1INT
	.globl _EP0INT
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _P4_1
	.globl _P4_0
	.globl _PPCL
	.globl _PT2L
	.globl _PSL
	.globl _PT1L
	.globl _PX1L
	.globl _PT0L
	.globl _PX0L
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _EC
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _FE
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _UEPINT
	.globl _LEDCON
	.globl _B
	.globl _CCAP4H
	.globl _CCAP4L
	.globl _CCAP4
	.globl _CCAP3H
	.globl _CCAP3L
	.globl _CCAP3
	.globl _CCAP2H
	.globl _CCAP2L
	.globl _CCAP2
	.globl _CCAP1H
	.globl _CCAP1L
	.globl _CCAP1
	.globl _CCAP0H
	.globl _CCAP0L
	.globl _CCAP0
	.globl _CH
	.globl _CL
	.globl _PCA
	.globl _UBYCTHX
	.globl _UBYCTLX
	.globl _UBYCTX
	.globl _ACC
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CMOD
	.globl _CCON
	.globl _UEPRST
	.globl _UEPCONX
	.globl _EECON
	.globl _FCON
	.globl _PSW
	.globl _UEPDATX
	.globl _UEPSTAX
	.globl _TH2
	.globl _TL2
	.globl _TMR2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _UEPNUM
	.globl _USBADDR
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _UEPIEN
	.globl _P4
	.globl _USBIEN
	.globl _USBINT
	.globl _USBCON
	.globl _UFNUMH
	.globl _UFNUML
	.globl _UFNUM
	.globl _SADEN
	.globl _IPL0
	.globl _IPH0
	.globl _IPH1
	.globl _IPL1
	.globl _IEN1
	.globl _P3
	.globl _CKCON1
	.globl _SADDR
	.globl _IEN0
	.globl _IE
	.globl _WDTPRG
	.globl _WDTRST
	.globl _PLLDIV
	.globl _PLLCON
	.globl _AUXR1
	.globl _P2
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BDRCON
	.globl _BRL
	.globl _SBUF
	.globl _SCON
	.globl _SSADR
	.globl _SSDAT
	.globl _SSCS
	.globl _SSCON
	.globl _P1
	.globl _CKCON0
	.globl _AUXR
	.globl _TH1
	.globl _TL1
	.globl _TMR1
	.globl _TH0
	.globl _TL0
	.globl _TMR0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _init_oled
	.globl _oled_command
	.globl _oled_write_char
	.globl _oled_write_string
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TMR0	=	0x8c8a
_TL0	=	0x008a
_TH0	=	0x008c
_TMR1	=	0x8d8b
_TL1	=	0x008b
_TH1	=	0x008d
_AUXR	=	0x008e
_CKCON0	=	0x008f
_P1	=	0x0090
_SSCON	=	0x0093
_SSCS	=	0x0094
_SSDAT	=	0x0095
_SSADR	=	0x0096
_SCON	=	0x0098
_SBUF	=	0x0099
_BRL	=	0x009a
_BDRCON	=	0x009b
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_P2	=	0x00a0
_AUXR1	=	0x00a2
_PLLCON	=	0x00a3
_PLLDIV	=	0x00a4
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_IE	=	0x00a8
_IEN0	=	0x00a8
_SADDR	=	0x00a9
_CKCON1	=	0x00af
_P3	=	0x00b0
_IEN1	=	0x00b1
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_IPH0	=	0x00b7
_IPL0	=	0x00b8
_SADEN	=	0x00b9
_UFNUM	=	0xbbba
_UFNUML	=	0x00ba
_UFNUMH	=	0x00bb
_USBCON	=	0x00bc
_USBINT	=	0x00bd
_USBIEN	=	0x00be
_P4	=	0x00c0
_UEPIEN	=	0x00c2
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_USBADDR	=	0x00c6
_UEPNUM	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TMR2	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_UEPSTAX	=	0x00ce
_UEPDATX	=	0x00cf
_PSW	=	0x00d0
_FCON	=	0x00d1
_EECON	=	0x00d2
_UEPCONX	=	0x00d4
_UEPRST	=	0x00d5
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_ACC	=	0x00e0
_UBYCTX	=	0xe3e2
_UBYCTLX	=	0x00e2
_UBYCTHX	=	0x00e3
_PCA	=	0xf9e9
_CL	=	0x00e9
_CH	=	0x00f9
_CCAP0	=	0xfaea
_CCAP0L	=	0x00ea
_CCAP0H	=	0x00fa
_CCAP1	=	0xfbeb
_CCAP1L	=	0x00eb
_CCAP1H	=	0x00fb
_CCAP2	=	0xfcec
_CCAP2L	=	0x00ec
_CCAP2H	=	0x00fc
_CCAP3	=	0xfded
_CCAP3L	=	0x00ed
_CCAP3H	=	0x00fd
_CCAP4	=	0xfeee
_CCAP4L	=	0x00ee
_CCAP4H	=	0x00fe
_B	=	0x00f0
_LEDCON	=	0x00f1
_UEPINT	=	0x00f8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_FE	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EC	=	0x00ae
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_PX0L	=	0x00b8
_PT0L	=	0x00b9
_PX1L	=	0x00ba
_PT1L	=	0x00bb
_PSL	=	0x00bc
_PT2L	=	0x00bd
_PPCL	=	0x00be
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_CCF0	=	0x00d8
_CCF1	=	0x00d9
_CCF2	=	0x00da
_CCF3	=	0x00db
_CCF4	=	0x00dc
_CR	=	0x00de
_CF	=	0x00df
_EP0INT	=	0x00f8
_EP1INT	=	0x00f9
_EP2INT	=	0x00fa
_EP3INT	=	0x00fb
_EP4INT	=	0x00fc
_EP5INT	=	0x00fd
_EP6INT	=	0x00fe
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_init_oled_data_10000_11:
	.ds 32
_oled_command_data_10000_47:
	.ds 2
_oled_write_char_data_10000_49:
	.ds 7
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'init_oled'
;------------------------------------------------------------
;page          Allocated to registers r7 
;column        Allocated to registers r6 
;count         Allocated to registers r5 
;i             Allocated to registers r7 
;data          Allocated with name '_init_oled_data_10000_11'
;------------------------------------------------------------
;	my_oled.c:36: unsigned char init_oled(void){
;	-----------------------------------------
;	 function init_oled
;	-----------------------------------------
_init_oled:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	my_oled.c:44: if(!oled_command(0xAE)) return 0;
	mov	dpl, #0xae
	lcall	_oled_command
	mov	a, dpl
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	my_oled.c:45: if(!oled_command(0xD5)) return 0;
	mov	dpl, #0xd5
	lcall	_oled_command
	mov	a, dpl
	jnz	00104$
	mov	dpl,a
	ret
00104$:
;	my_oled.c:46: if(!oled_command(0x80)) return 0;
	mov	dpl, #0x80
	lcall	_oled_command
	mov	a, dpl
	jnz	00106$
	mov	dpl,a
	ret
00106$:
;	my_oled.c:47: if(!oled_command(0xA8)) return 0;
	mov	dpl, #0xa8
	lcall	_oled_command
	mov	a, dpl
	jnz	00108$
	mov	dpl,a
	ret
00108$:
;	my_oled.c:48: if(!oled_command(0x3F)) return 0;
	mov	dpl, #0x3f
	lcall	_oled_command
	mov	a, dpl
	jnz	00110$
	mov	dpl,a
	ret
00110$:
;	my_oled.c:49: if(!oled_command(0xD3)) return 0;
	mov	dpl, #0xd3
	lcall	_oled_command
	mov	a, dpl
	jnz	00112$
	mov	dpl,a
	ret
00112$:
;	my_oled.c:50: if(!oled_command(0x00)) return 0;
	mov	dpl, #0x00
	lcall	_oled_command
	mov	a, dpl
	jnz	00114$
	mov	dpl,a
	ret
00114$:
;	my_oled.c:51: if(!oled_command(0x40)) return 0;
	mov	dpl, #0x40
	lcall	_oled_command
	mov	a, dpl
	jnz	00116$
	mov	dpl,a
	ret
00116$:
;	my_oled.c:52: if(!oled_command(0x8D)) return 0;
	mov	dpl, #0x8d
	lcall	_oled_command
	mov	a, dpl
	jnz	00118$
	mov	dpl,a
	ret
00118$:
;	my_oled.c:53: if(!oled_command(0x14)) return 0;
	mov	dpl, #0x14
	lcall	_oled_command
	mov	a, dpl
	jnz	00120$
	mov	dpl,a
	ret
00120$:
;	my_oled.c:54: if(!oled_command(0x20)) return 0;
	mov	dpl, #0x20
	lcall	_oled_command
	mov	a, dpl
	jnz	00122$
	mov	dpl,a
	ret
00122$:
;	my_oled.c:55: if(!oled_command(0x02)) return 0;
	mov	dpl, #0x02
	lcall	_oled_command
	mov	a, dpl
	jnz	00124$
	mov	dpl,a
	ret
00124$:
;	my_oled.c:56: if(!oled_command(0xA1)) return 0;
	mov	dpl, #0xa1
	lcall	_oled_command
	mov	a, dpl
	jnz	00126$
	mov	dpl,a
	ret
00126$:
;	my_oled.c:57: if(!oled_command(0xC8)) return 0;
	mov	dpl, #0xc8
	lcall	_oled_command
	mov	a, dpl
	jnz	00128$
	mov	dpl,a
	ret
00128$:
;	my_oled.c:58: if(!oled_command(0xDA)) return 0;
	mov	dpl, #0xda
	lcall	_oled_command
	mov	a, dpl
	jnz	00130$
	mov	dpl,a
	ret
00130$:
;	my_oled.c:59: if(!oled_command(0x12)) return 0;
	mov	dpl, #0x12
	lcall	_oled_command
	mov	a, dpl
	jnz	00132$
	mov	dpl,a
	ret
00132$:
;	my_oled.c:60: if(!oled_command(0x81)) return 0;
	mov	dpl, #0x81
	lcall	_oled_command
	mov	a, dpl
	jnz	00134$
	mov	dpl,a
	ret
00134$:
;	my_oled.c:61: if(!oled_command(0x7F)) return 0;
	mov	dpl, #0x7f
	lcall	_oled_command
	mov	a, dpl
	jnz	00136$
	mov	dpl,a
	ret
00136$:
;	my_oled.c:62: if(!oled_command(0xD9)) return 0;
	mov	dpl, #0xd9
	lcall	_oled_command
	mov	a, dpl
	jnz	00138$
	mov	dpl,a
	ret
00138$:
;	my_oled.c:63: if(!oled_command(0xF1)) return 0;
	mov	dpl, #0xf1
	lcall	_oled_command
	mov	a, dpl
	jnz	00140$
	mov	dpl,a
	ret
00140$:
;	my_oled.c:64: if(!oled_command(0xDB)) return 0;
	mov	dpl, #0xdb
	lcall	_oled_command
	mov	a, dpl
	jnz	00142$
	mov	dpl,a
	ret
00142$:
;	my_oled.c:65: if(!oled_command(0x40)) return 0;
	mov	dpl, #0x40
	lcall	_oled_command
	mov	a, dpl
	jnz	00144$
	mov	dpl,a
	ret
00144$:
;	my_oled.c:66: if(!oled_command(0xA4)) return 0;
	mov	dpl, #0xa4
	lcall	_oled_command
	mov	a, dpl
	jnz	00146$
	mov	dpl,a
	ret
00146$:
;	my_oled.c:67: if(!oled_command(0xA6)) return 0;
	mov	dpl, #0xa6
	lcall	_oled_command
	mov	a, dpl
	jnz	00148$
	mov	dpl,a
	ret
00148$:
;	my_oled.c:72: data[0] = 0x40;
	mov	_init_oled_data_10000_11,#0x40
;	my_oled.c:74: for(i = 1; i < 32; i++)
	mov	r7,#0x01
00166$:
;	my_oled.c:75: data[i] = 0x00;
	mov	a,r7
	add	a, #_init_oled_data_10000_11
	mov	r0,a
	mov	@r0,#0x00
;	my_oled.c:74: for(i = 1; i < 32; i++)
	inc	r7
	cjne	r7,#0x20,00448$
00448$:
	jc	00166$
;	my_oled.c:77: for(page = 0; page < 8; page++){
	mov	r7,#0x00
00168$:
;	my_oled.c:78: column = 0;
	mov	r6,#0x00
;	my_oled.c:80: while(column < 128){
00160$:
	cjne	r6,#0x80,00450$
00450$:
	jc	00451$
	ljmp	00169$
00451$:
;	my_oled.c:82: if(!oled_command(0xB0 + page)) return 0;
	mov	ar5,r7
	mov	a,#0xb0
	add	a, r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_oled_command
	mov	a, dpl
	pop	ar6
	pop	ar7
	jnz	00151$
	mov	dpl,a
	ret
00151$:
;	my_oled.c:83: if(!oled_command(column & 0x0F)) return 0;
	mov	a,#0x0f
	anl	a,r6
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_oled_command
	mov	a, dpl
	pop	ar6
	pop	ar7
	jnz	00153$
	mov	dpl,a
	ret
00153$:
;	my_oled.c:84: if(!oled_command(0x10 | (column >> 4))) return 0;
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r5,a
	mov	a,#0x10
	orl	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_oled_command
	mov	a, dpl
	pop	ar6
	pop	ar7
	jnz	00155$
	mov	dpl,a
	ret
00155$:
;	my_oled.c:86: count = 128 - column;
	mov	ar5,r6
	mov	a,#0x80
	clr	c
	subb	a,r5
;	my_oled.c:88: if(count > 31)
	mov  r5,a
	add	a,#0xff - 0x1f
	jnc	00157$
;	free result
;	my_oled.c:89: count = 31;
	mov	r5,#0x1f
00157$:
;	my_oled.c:91: if(!i2c_write(data, count + 1)) return 0;
	mov	ar4,r5
	mov	a,r4
	inc	a
	mov	_i2c_write_PARM_2,a
	mov	dptr,#_init_oled_data_10000_11
	mov	b, #0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write
	mov	a, dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00159$
	mov	dpl,a
	ret
00159$:
;	my_oled.c:93: column += count;
	mov	a,r5
	add	a, r6
	mov	r6,a
	ljmp	00160$
00169$:
;	my_oled.c:77: for(page = 0; page < 8; page++){
	inc	r7
	cjne	r7,#0x08,00457$
00457$:
	jnc	00458$
	ljmp	00168$
00458$:
;	my_oled.c:97: if(!oled_command(0xAF)) return 0;
	mov	dpl, #0xaf
	lcall	_oled_command
	mov	a, dpl
	jnz	00165$
	mov	dpl,a
	ret
00165$:
;	my_oled.c:99: return 1;
	mov	dpl, #0x01
;	my_oled.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_command'
;------------------------------------------------------------
;command       Allocated to registers r7 
;data          Allocated with name '_oled_command_data_10000_47'
;------------------------------------------------------------
;	my_oled.c:102: unsigned char oled_command(unsigned char command){
;	-----------------------------------------
;	 function oled_command
;	-----------------------------------------
_oled_command:
	mov	r7, dpl
;	my_oled.c:106: data[0] = 0x00;
	mov	_oled_command_data_10000_47,#0x00
;	my_oled.c:107: data[1] = command;
	mov	(_oled_command_data_10000_47 + 0x0001),r7
;	my_oled.c:109: return i2c_write(data, 2);
	mov	_i2c_write_PARM_2,#0x02
	mov	dptr,#_oled_command_data_10000_47
	mov	b, #0x40
;	my_oled.c:110: }
	ljmp	_i2c_write
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_write_char'
;------------------------------------------------------------
;character     Allocated to registers r7 
;data          Allocated with name '_oled_write_char_data_10000_49'
;i             Allocated to registers r6 
;index         Allocated to registers r7 
;------------------------------------------------------------
;	my_oled.c:112: void oled_write_char(unsigned char character){
;	-----------------------------------------
;	 function oled_write_char
;	-----------------------------------------
_oled_write_char:
	mov	r7, dpl
;	my_oled.c:118: if(character >= 'A' && character <= 'Z'){
	cjne	r7,#0x41,00161$
00161$:
	jc	00103$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00103$
;	free result
;	my_oled.c:119: index = character - 'A';
	mov	a,r7
	add	a,#0xbf
	mov	r7,a
	sjmp	00104$
00103$:
;	my_oled.c:121: data[0] = 0x40;
	mov	_oled_write_char_data_10000_49,#0x40
;	my_oled.c:122: for(i = 1; i < 7; i++)
	mov	r6,#0x01
00107$:
;	my_oled.c:123: data[i] = 0x00;
	mov	a,r6
	add	a, #_oled_write_char_data_10000_49
	mov	r0,a
	mov	@r0,#0x00
;	my_oled.c:122: for(i = 1; i < 7; i++)
	inc	r6
	cjne	r6,#0x07,00164$
00164$:
	jc	00107$
;	my_oled.c:125: i2c_write(data, 7);
	mov	_i2c_write_PARM_2,#0x07
	mov	dptr,#_oled_write_char_data_10000_49
	mov	b, #0x40
;	my_oled.c:126: return;
	ljmp	_i2c_write
00104$:
;	my_oled.c:129: data[0] = 0x40;
	mov	_oled_write_char_data_10000_49,#0x40
;	my_oled.c:131: for(i = 0; i < 5; i++)
	mov	r6,#0x00
	mov	a,r7
	mov	b,#0x05
	mul	ab
	add	a, #_font5x7
	mov	r5,a
	mov	a,#(_font5x7 >> 8)
	addc	a, b
	mov	r7,a
00109$:
;	my_oled.c:132: data[i + 1] = font5x7[index][i];
	mov	ar4,r6
	mov	a,r4
	inc	a
	add	a, #_oled_write_char_data_10000_49
	mov	r1,a
	mov	a,r6
	add	a, r5
	mov	dpl,a
	clr	a
	addc	a, r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	my_oled.c:131: for(i = 0; i < 5; i++)
	inc	r6
	cjne	r6,#0x05,00166$
00166$:
	jc	00109$
;	my_oled.c:134: data[6] = 0x00;
	mov	(_oled_write_char_data_10000_49 + 0x0006),#0x00
;	my_oled.c:136: i2c_write(data, 7);
	mov	_i2c_write_PARM_2,#0x07
	mov	dptr,#_oled_write_char_data_10000_49
	mov	b, #0x40
;	my_oled.c:137: }
	ljmp	_i2c_write
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_write_string'
;------------------------------------------------------------
;text          Allocated to registers r5 r6 r7 
;column        Allocated to registers r4 
;------------------------------------------------------------
;	my_oled.c:139: void oled_write_string(const char *text){
;	-----------------------------------------
;	 function oled_write_string
;	-----------------------------------------
_oled_write_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	my_oled.c:143: oled_command(0xB0);
	mov	dpl, #0xb0
	push	ar7
	push	ar6
	push	ar5
	lcall	_oled_command
;	my_oled.c:144: oled_command(0x00);
	mov	dpl, #0x00
	lcall	_oled_command
;	my_oled.c:145: oled_command(0x10);
	mov	dpl, #0x10
	lcall	_oled_command
	pop	ar5
	pop	ar6
	pop	ar7
;	my_oled.c:147: column = 0;
	mov	r4,#0x00
;	my_oled.c:149: while(*text && column <= 122){
00102$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	jz	00105$
	mov	a,r4
	add	a,#0xff - 0x7a
	jc	00105$
;	free result
;	my_oled.c:150: oled_write_char((unsigned char)*text++);
	mov	dpl,r3
	inc	r5
	cjne	r5,#0x00,00130$
	inc	r6
00130$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_oled_write_char
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	my_oled.c:151: column += 6;
	mov	ar3,r4
	mov	a,#0x06
	add	a, r3
	mov	r4,a
	sjmp	00102$
00105$:
;	my_oled.c:153: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_font5x7:
	.db #0x7e	; 126
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x26	; 38
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x32	; 50	'2'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
