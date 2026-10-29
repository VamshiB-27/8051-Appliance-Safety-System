;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module my_oled
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_us
	.globl _delay_ms
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
	.globl _oled_set_position_PARM_2
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_write
	.globl _oled_command
	.globl _oled_data
	.globl _oled_set_position
	.globl _oled_clear
	.globl _oled_init
	.globl _oled_char
	.globl _oled_string
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
_oled_page:
	.ds 1
_oled_column:
	.ds 1
_i2c_write_transaction_PARM_2:
	.ds 3
_i2c_write_transaction_PARM_3:
	.ds 1
_oled_command_cmd_10000_30:
	.ds 1
_oled_data_dat_10000_32:
	.ds 1
_oled_set_position_PARM_2:
	.ds 1
_oled_clear_zeros_10000_39:
	.ds 16
_oled_char_data_10000_47:
	.ds 6
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
;	my_oled.c:9: static unsigned char oled_page = 0;
	mov	_oled_page,#0x00
;	my_oled.c:10: static unsigned char oled_column = 0;
	mov	_oled_column,#0x00
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
;Allocation info for local variables in function 'i2c_delay'
;------------------------------------------------------------
;	my_oled.c:52: static void i2c_delay(void)
;	-----------------------------------------
;	 function i2c_delay
;	-----------------------------------------
_i2c_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	my_oled.c:54: delay_us(5);
	mov	dptr,#0x0005
;	my_oled.c:55: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	my_oled.c:57: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	my_oled.c:59: OLED_SDA = 1;
;	assignBit
	setb	_P4_1
;	my_oled.c:60: OLED_SCL = 1;
;	assignBit
	setb	_P4_0
;	my_oled.c:61: i2c_delay();
	lcall	_i2c_delay
;	my_oled.c:62: OLED_SDA = 0;
;	assignBit
	clr	_P4_1
;	my_oled.c:63: i2c_delay();
	lcall	_i2c_delay
;	my_oled.c:64: OLED_SCL = 0;
;	assignBit
	clr	_P4_0
;	my_oled.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	my_oled.c:67: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	my_oled.c:69: OLED_SDA = 0;
;	assignBit
	clr	_P4_1
;	my_oled.c:70: OLED_SCL = 1;
;	assignBit
	setb	_P4_0
;	my_oled.c:71: i2c_delay();
	lcall	_i2c_delay
;	my_oled.c:72: OLED_SDA = 1;
;	assignBit
	setb	_P4_1
;	my_oled.c:73: i2c_delay();
;	my_oled.c:74: }
	ljmp	_i2c_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;dat           Allocated to registers r7 
;i             Allocated to registers r6 
;ack           Allocated to registers r7 
;------------------------------------------------------------
;	my_oled.c:76: unsigned char i2c_write(unsigned char dat)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7, dpl
;	my_oled.c:81: for(i = 0; i < 8; i++)
	mov	r6,#0x00
00102$:
;	my_oled.c:83: OLED_SDA = (dat & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P4_1,c
;	my_oled.c:84: i2c_delay();
	push	ar7
	push	ar6
	lcall	_i2c_delay
;	my_oled.c:85: OLED_SCL = 1;
;	assignBit
	setb	_P4_0
;	my_oled.c:86: i2c_delay();
	lcall	_i2c_delay
	pop	ar6
	pop	ar7
;	my_oled.c:87: OLED_SCL = 0;
;	assignBit
	clr	_P4_0
;	my_oled.c:88: dat <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	my_oled.c:81: for(i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00120$
00120$:
	jc	00102$
;	my_oled.c:91: OLED_SDA = 1;
;	assignBit
	setb	_P4_1
;	my_oled.c:92: i2c_delay();
	lcall	_i2c_delay
;	my_oled.c:93: OLED_SCL = 1;
;	assignBit
	setb	_P4_0
;	my_oled.c:94: i2c_delay();
	lcall	_i2c_delay
;	my_oled.c:95: ack = OLED_SDA;
	mov	c,_P4_1
	clr	a
	rlc	a
	mov	r7,a
;	my_oled.c:96: OLED_SCL = 0;
;	assignBit
	clr	_P4_0
;	my_oled.c:97: i2c_delay();
	push	ar7
	lcall	_i2c_delay
	pop	ar7
;	my_oled.c:99: return (ack == 0);
	clr	a
	cjne	r7,#0x00,00122$
	inc	a
00122$:
	mov	dpl,a
;	my_oled.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_transaction'
;------------------------------------------------------------
;data          Allocated with name '_i2c_write_transaction_PARM_2'
;length        Allocated with name '_i2c_write_transaction_PARM_3'
;control       Allocated to registers r7 
;i             Allocated to registers r7 
;success       Allocated to registers r6 
;------------------------------------------------------------
;	my_oled.c:102: static unsigned char i2c_write_transaction(
;	-----------------------------------------
;	 function i2c_write_transaction
;	-----------------------------------------
_i2c_write_transaction:
	mov	r7, dpl
;	my_oled.c:108: unsigned char success = 1;
	mov	r6,#0x01
;	my_oled.c:110: i2c_start();
	push	ar7
	push	ar6
	lcall	_i2c_start
;	my_oled.c:112: if(!i2c_write(OLED_ADDR))
	mov	dpl, #0x78
	lcall	_i2c_write
	mov	a, dpl
	pop	ar6
	pop	ar7
;	my_oled.c:113: success = 0;
	jnz	00102$
	mov	r6,a
00102$:
;	my_oled.c:115: if(success && !i2c_write(control))
	mov	a,r6
	jz	00104$
	mov	dpl, r7
	push	ar6
	lcall	_i2c_write
	mov	a, dpl
	pop	ar6
;	my_oled.c:116: success = 0;
	jnz	00104$
	mov	r6,a
00104$:
;	my_oled.c:118: for(i = 0; i < length && success; i++)
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r7
	subb	a,_i2c_write_transaction_PARM_3
	jnc	00108$
	mov	a,r6
	jz	00108$
;	my_oled.c:120: if(!i2c_write(data[i]))
	mov	a,r7
	add	a, _i2c_write_transaction_PARM_2
	mov	r3,a
	clr	a
	addc	a, (_i2c_write_transaction_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_i2c_write_transaction_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_i2c_write
	mov	a, dpl
	pop	ar6
	pop	ar7
;	my_oled.c:121: success = 0;
	jnz	00112$
	mov	r6,a
00112$:
;	my_oled.c:118: for(i = 0; i < length && success; i++)
	inc	r7
	sjmp	00111$
00108$:
;	my_oled.c:124: i2c_stop();
	push	ar6
	lcall	_i2c_stop
	pop	ar6
;	my_oled.c:125: return success;
	mov	dpl, r6
;	my_oled.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_command'
;------------------------------------------------------------
;cmd           Allocated with name '_oled_command_cmd_10000_30'
;------------------------------------------------------------
;	my_oled.c:128: void oled_command(unsigned char cmd)
;	-----------------------------------------
;	 function oled_command
;	-----------------------------------------
_oled_command:
	mov	_oled_command_cmd_10000_30,dpl
;	my_oled.c:130: i2c_write_transaction(0x00, &cmd, 1);
	mov	_i2c_write_transaction_PARM_2,#_oled_command_cmd_10000_30
	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
	mov	_i2c_write_transaction_PARM_3,#0x01
	mov	dpl, #0x00
;	my_oled.c:131: }
	ljmp	_i2c_write_transaction
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_data'
;------------------------------------------------------------
;dat           Allocated with name '_oled_data_dat_10000_32'
;------------------------------------------------------------
;	my_oled.c:133: void oled_data(unsigned char dat)
;	-----------------------------------------
;	 function oled_data
;	-----------------------------------------
_oled_data:
	mov	_oled_data_dat_10000_32,dpl
;	my_oled.c:135: i2c_write_transaction(0x40, &dat, 1);
	mov	_i2c_write_transaction_PARM_2,#_oled_data_dat_10000_32
	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
	mov	_i2c_write_transaction_PARM_3,#0x01
	mov	dpl, #0x40
;	my_oled.c:136: }
	ljmp	_i2c_write_transaction
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_set_position'
;------------------------------------------------------------
;column        Allocated with name '_oled_set_position_PARM_2'
;page          Allocated to registers r7 
;------------------------------------------------------------
;	my_oled.c:138: void oled_set_position(unsigned char page, unsigned char column)
;	-----------------------------------------
;	 function oled_set_position
;	-----------------------------------------
_oled_set_position:
;	my_oled.c:140: if(page > 7)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00102$
;	free result
;	my_oled.c:141: page = 7;
	mov	r7,#0x07
00102$:
;	my_oled.c:143: if(column > 127)
	mov	a,_oled_set_position_PARM_2
	add	a,#0xff - 0x7f
	jnc	00104$
;	free result
;	my_oled.c:144: column = 127;
	mov	_oled_set_position_PARM_2,#0x7f
00104$:
;	my_oled.c:146: oled_page = page;
	mov	_oled_page,r7
;	my_oled.c:147: oled_column = column;
	mov	r6,_oled_set_position_PARM_2
	mov	_oled_column,r6
;	my_oled.c:149: oled_command(0xB0 | page);
	mov	a,#0xb0
	orl	a,r7
	mov	dpl,a
	push	ar6
	lcall	_oled_command
	pop	ar6
;	my_oled.c:150: oled_command(column & 0x0F);
	mov	a,#0x0f
	anl	a,r6
	mov	dpl,a
	push	ar6
	lcall	_oled_command
	pop	ar6
;	my_oled.c:151: oled_command(0x10 | (column >> 4));
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	mov	a,#0x10
	orl	a,r6
	mov	dpl,a
;	my_oled.c:152: }
	ljmp	_oled_command
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_clear'
;------------------------------------------------------------
;page          Allocated to registers r7 
;col           Allocated to registers r6 
;i             Allocated to registers r7 
;zeros         Allocated with name '_oled_clear_zeros_10000_39'
;------------------------------------------------------------
;	my_oled.c:154: void oled_clear(void)
;	-----------------------------------------
;	 function oled_clear
;	-----------------------------------------
_oled_clear:
;	my_oled.c:161: for(i = 0; i < 16; i++)
	mov	r7,#0x00
00104$:
;	my_oled.c:162: zeros[i] = 0x00;
	mov	a,r7
	add	a, #_oled_clear_zeros_10000_39
	mov	r0,a
	mov	@r0,#0x00
;	my_oled.c:161: for(i = 0; i < 16; i++)
	inc	r7
	cjne	r7,#0x10,00154$
00154$:
	jc	00104$
;	my_oled.c:164: for(page = 0; page < 8; page++)
	mov	r7,#0x00
00108$:
;	my_oled.c:166: oled_set_position(page, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, r7
	push	ar7
	lcall	_oled_set_position
	pop	ar7
;	my_oled.c:168: for(col = 0; col < 128; col += 16)
	mov	r6,#0x00
00106$:
;	my_oled.c:169: i2c_write_transaction(0x40, zeros, 16);
	mov	_i2c_write_transaction_PARM_2,#_oled_clear_zeros_10000_39
	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
	mov	_i2c_write_transaction_PARM_3,#0x10
	mov	dpl, #0x40
	push	ar7
	push	ar6
	lcall	_i2c_write_transaction
	pop	ar6
	pop	ar7
;	my_oled.c:168: for(col = 0; col < 128; col += 16)
	mov	ar5,r6
	mov	a,#0x10
	add	a, r5
	mov	r6,a
	cjne	r6,#0x80,00156$
00156$:
	jc	00106$
;	my_oled.c:164: for(page = 0; page < 8; page++)
	inc	r7
	cjne	r7,#0x08,00158$
00158$:
	jc	00108$
;	my_oled.c:172: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
;	my_oled.c:173: }
	ljmp	_oled_set_position
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_init'
;------------------------------------------------------------
;	my_oled.c:175: void oled_init(void)
;	-----------------------------------------
;	 function oled_init
;	-----------------------------------------
_oled_init:
;	my_oled.c:177: delay_ms(100);
	mov	dptr,#0x0064
	clr	a
	mov	b,a
	lcall	_delay_ms
;	my_oled.c:179: OLED_SCL = 1;
;	assignBit
	setb	_P4_0
;	my_oled.c:180: OLED_SDA = 1;
;	assignBit
	setb	_P4_1
;	my_oled.c:182: oled_command(0xAE);
	mov	dpl, #0xae
	lcall	_oled_command
;	my_oled.c:183: oled_command(0xD5);
	mov	dpl, #0xd5
	lcall	_oled_command
;	my_oled.c:184: oled_command(0x80);
	mov	dpl, #0x80
	lcall	_oled_command
;	my_oled.c:185: oled_command(0xA8);
	mov	dpl, #0xa8
	lcall	_oled_command
;	my_oled.c:186: oled_command(0x3F);
	mov	dpl, #0x3f
	lcall	_oled_command
;	my_oled.c:187: oled_command(0xD3);
	mov	dpl, #0xd3
	lcall	_oled_command
;	my_oled.c:188: oled_command(0x00);
	mov	dpl, #0x00
	lcall	_oled_command
;	my_oled.c:189: oled_command(0x40);
	mov	dpl, #0x40
	lcall	_oled_command
;	my_oled.c:190: oled_command(0x8D);
	mov	dpl, #0x8d
	lcall	_oled_command
;	my_oled.c:191: oled_command(0x14);
	mov	dpl, #0x14
	lcall	_oled_command
;	my_oled.c:192: oled_command(0x20);
	mov	dpl, #0x20
	lcall	_oled_command
;	my_oled.c:193: oled_command(0x02);
	mov	dpl, #0x02
	lcall	_oled_command
;	my_oled.c:194: oled_command(0xA1);
	mov	dpl, #0xa1
	lcall	_oled_command
;	my_oled.c:195: oled_command(0xC8);
	mov	dpl, #0xc8
	lcall	_oled_command
;	my_oled.c:196: oled_command(0xDA);
	mov	dpl, #0xda
	lcall	_oled_command
;	my_oled.c:197: oled_command(0x12);
	mov	dpl, #0x12
	lcall	_oled_command
;	my_oled.c:198: oled_command(0x81);
	mov	dpl, #0x81
	lcall	_oled_command
;	my_oled.c:199: oled_command(0x7F);
	mov	dpl, #0x7f
	lcall	_oled_command
;	my_oled.c:200: oled_command(0xD9);
	mov	dpl, #0xd9
	lcall	_oled_command
;	my_oled.c:201: oled_command(0xF1);
	mov	dpl, #0xf1
	lcall	_oled_command
;	my_oled.c:202: oled_command(0xDB);
	mov	dpl, #0xdb
	lcall	_oled_command
;	my_oled.c:203: oled_command(0x40);
	mov	dpl, #0x40
	lcall	_oled_command
;	my_oled.c:204: oled_command(0xA4);
	mov	dpl, #0xa4
	lcall	_oled_command
;	my_oled.c:205: oled_command(0xA6);
	mov	dpl, #0xa6
	lcall	_oled_command
;	my_oled.c:207: oled_clear();
	lcall	_oled_clear
;	my_oled.c:208: oled_command(0xAF);
	mov	dpl, #0xaf
	lcall	_oled_command
;	my_oled.c:209: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
;	my_oled.c:210: }
	ljmp	_oled_set_position
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_char'
;------------------------------------------------------------
;c             Allocated to registers r7 
;i             Allocated to registers r5 
;index         Allocated to registers r6 
;data          Allocated with name '_oled_char_data_10000_47'
;------------------------------------------------------------
;	my_oled.c:212: void oled_char(unsigned char c)
;	-----------------------------------------
;	 function oled_char
;	-----------------------------------------
_oled_char:
	mov	r7, dpl
;	my_oled.c:218: if(c >= 'a' && c <= 'z')
	cjne	r7,#0x61,00513$
00513$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x7a
	jc	00102$
;	free result
;	my_oled.c:219: c -= ('a' - 'A');
	mov	ar6,r7
	mov	a,r6
	add	a,#0xe0
	mov	r7,a
00102$:
;	my_oled.c:221: for(i = 0; i < 6; i++)
	mov	r6,#0x00
00153$:
;	my_oled.c:222: data[i] = 0x00;
	mov	a,r6
	add	a, #_oled_char_data_10000_47
	mov	r0,a
	mov	@r0,#0x00
;	my_oled.c:221: for(i = 0; i < 6; i++)
	inc	r6
	cjne	r6,#0x06,00516$
00516$:
	jc	00153$
;	my_oled.c:224: if(c >= 'A' && c <= 'Z')
	cjne	r7,#0x41,00518$
00518$:
	jc	00142$
	mov	a,r7
	add	a,#0xff - 0x5a
	jc	00142$
;	free result
;	my_oled.c:226: index = c - 'A';
	mov	ar6,r7
	mov	a,r6
	add	a,#0xbf
;	my_oled.c:228: for(i = 0; i < 5; i++)
	mov	r5,#0x00
	mov	b,#0x05
	mul	ab
	add	a, #_font5x7
	mov	r4,a
	mov	a,#(_font5x7 >> 8)
	addc	a, b
	mov	r6,a
00155$:
;	my_oled.c:229: data[i] = font5x7[index][i];
	mov	a,r5
	add	a, #_oled_char_data_10000_47
	mov	r1,a
	mov	a,r5
	add	a, r4
	mov	dpl,a
	clr	a
	addc	a, r6
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	my_oled.c:228: for(i = 0; i < 5; i++)
	inc	r5
	cjne	r5,#0x05,00521$
00521$:
	jc	00155$
	ljmp	00143$
00142$:
;	my_oled.c:231: else if(c >= '0' && c <= '9')
	cjne	r7,#0x30,00523$
00523$:
	jc	00138$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00138$
;	free result
;	my_oled.c:233: index = 26 + c - '0';
	mov	ar6,r7
	mov	a,#0xea
	add	a, r6
;	my_oled.c:235: for(i = 0; i < 5; i++)
	mov	r5,#0x00
	mov	b,#0x05
	mul	ab
	add	a, #_font5x7
	mov	r4,a
	mov	a,#(_font5x7 >> 8)
	addc	a, b
	mov	r6,a
00157$:
;	my_oled.c:236: data[i] = font5x7[index][i];
	mov	a,r5
	add	a, #_oled_char_data_10000_47
	mov	r1,a
	mov	a,r5
	add	a, r4
	mov	dpl,a
	clr	a
	addc	a, r6
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	my_oled.c:235: for(i = 0; i < 5; i++)
	inc	r5
	cjne	r5,#0x05,00526$
00526$:
	jc	00157$
	ljmp	00143$
00138$:
;	my_oled.c:240: switch(c)
	cjne	r7,#0x20,00528$
	ljmp	00143$
00528$:
	cjne	r7,#0x21,00529$
	ljmp	00113$
00529$:
	cjne	r7,#0x22,00530$
	ljmp	00123$
00530$:
	cjne	r7,#0x23,00531$
	ljmp	00125$
00531$:
	cjne	r7,#0x25,00532$
	ljmp	00121$
00532$:
	cjne	r7,#0x27,00533$
	ljmp	00122$
00533$:
	cjne	r7,#0x28,00534$
	ljmp	00119$
00534$:
	cjne	r7,#0x29,00535$
	ljmp	00120$
00535$:
	cjne	r7,#0x2a,00536$
	ljmp	00124$
00536$:
	cjne	r7,#0x2b,00537$
	ljmp	00117$
00537$:
	cjne	r7,#0x2c,00538$
	sjmp	00108$
00538$:
	cjne	r7,#0x2d,00539$
	sjmp	00111$
00539$:
	cjne	r7,#0x2e,00540$
	sjmp	00107$
00540$:
	cjne	r7,#0x2f,00541$
	ljmp	00115$
00541$:
	cjne	r7,#0x3a,00542$
	sjmp	00109$
00542$:
	cjne	r7,#0x3b,00543$
	sjmp	00110$
00543$:
	cjne	r7,#0x3c,00544$
	ljmp	00126$
00544$:
	cjne	r7,#0x3d,00545$
	ljmp	00118$
00545$:
	cjne	r7,#0x3e,00546$
	ljmp	00127$
00546$:
	cjne	r7,#0x3f,00547$
	sjmp	00114$
00547$:
	cjne	r7,#0x5b,00548$
	ljmp	00129$
00548$:
	cjne	r7,#0x5c,00549$
	ljmp	00116$
00549$:
	cjne	r7,#0x5d,00550$
	ljmp	00130$
00550$:
	cjne	r7,#0x5f,00551$
	sjmp	00112$
00551$:
	cjne	r7,#0x7b,00552$
	ljmp	00131$
00552$:
	cjne	r7,#0x7c,00553$
	ljmp	00128$
00553$:
	cjne	r7,#0x7d,00554$
	ljmp	00132$
00554$:
	cjne	r7,#0x7e,00555$
	ljmp	00133$
00555$:
	ljmp	00143$
;	my_oled.c:242: case '.':
00107$:
;	my_oled.c:243: data[2] = 0x60;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
;	my_oled.c:244: break;
	ljmp	00143$
;	my_oled.c:246: case ',':
00108$:
;	my_oled.c:247: data[2] = 0x60;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x60
;	my_oled.c:248: data[3] = 0x40;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
;	my_oled.c:249: break;
	ljmp	00143$
;	my_oled.c:251: case ':':
00109$:
;	my_oled.c:252: data[2] = 0x36;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
;	my_oled.c:253: break;
	ljmp	00143$
;	my_oled.c:255: case ';':
00110$:
;	my_oled.c:256: data[2] = 0x36;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
;	my_oled.c:257: data[3] = 0x40;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
;	my_oled.c:258: break;
	ljmp	00143$
;	my_oled.c:260: case '-':
00111$:
;	my_oled.c:261: data[0] = 0x08;
	mov	_oled_char_data_10000_47,#0x08
;	my_oled.c:262: data[1] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
;	my_oled.c:263: data[2] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
;	my_oled.c:264: data[3] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
;	my_oled.c:265: data[4] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
;	my_oled.c:266: break;
	ljmp	00143$
;	my_oled.c:268: case '_':
00112$:
;	my_oled.c:269: data[0] = 0x40;
	mov	_oled_char_data_10000_47,#0x40
;	my_oled.c:270: data[1] = 0x40;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x40
;	my_oled.c:271: data[2] = 0x40;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x40
;	my_oled.c:272: data[3] = 0x40;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x40
;	my_oled.c:273: data[4] = 0x40;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x40
;	my_oled.c:274: break;
	ljmp	00143$
;	my_oled.c:276: case '!':
00113$:
;	my_oled.c:277: data[2] = 0x5F;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x5f
;	my_oled.c:278: break;
	ljmp	00143$
;	my_oled.c:280: case '?':
00114$:
;	my_oled.c:281: data[0] = 0x02;
	mov	_oled_char_data_10000_47,#0x02
;	my_oled.c:282: data[1] = 0x01;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x01
;	my_oled.c:283: data[2] = 0x51;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x51
;	my_oled.c:284: data[3] = 0x09;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x09
;	my_oled.c:285: data[4] = 0x06;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x06
;	my_oled.c:286: break;
	ljmp	00143$
;	my_oled.c:288: case '/':
00115$:
;	my_oled.c:289: data[0] = 0x20;
	mov	_oled_char_data_10000_47,#0x20
;	my_oled.c:290: data[1] = 0x10;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x10
;	my_oled.c:291: data[2] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
;	my_oled.c:292: data[3] = 0x04;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x04
;	my_oled.c:293: data[4] = 0x02;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x02
;	my_oled.c:294: break;
	ljmp	00143$
;	my_oled.c:296: case '\\':
00116$:
;	my_oled.c:297: data[0] = 0x02;
	mov	_oled_char_data_10000_47,#0x02
;	my_oled.c:298: data[1] = 0x04;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
;	my_oled.c:299: data[2] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
;	my_oled.c:300: data[3] = 0x10;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
;	my_oled.c:301: data[4] = 0x20;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x20
;	my_oled.c:302: break;
	ljmp	00143$
;	my_oled.c:304: case '+':
00117$:
;	my_oled.c:305: data[1] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
;	my_oled.c:306: data[2] = 0x1C;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x1c
;	my_oled.c:307: data[3] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
;	my_oled.c:308: break;
	ljmp	00143$
;	my_oled.c:310: case '=':
00118$:
;	my_oled.c:311: data[1] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
;	my_oled.c:312: data[2] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
;	my_oled.c:313: data[3] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
;	my_oled.c:314: break;
	ljmp	00143$
;	my_oled.c:316: case '(':
00119$:
;	my_oled.c:317: data[1] = 0x1C;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x1c
;	my_oled.c:318: data[2] = 0x22;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
;	my_oled.c:319: data[3] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
;	my_oled.c:320: break;
	ljmp	00143$
;	my_oled.c:322: case ')':
00120$:
;	my_oled.c:323: data[1] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
;	my_oled.c:324: data[2] = 0x22;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
;	my_oled.c:325: data[3] = 0x1C;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x1c
;	my_oled.c:326: break;
	ljmp	00143$
;	my_oled.c:328: case '%':
00121$:
;	my_oled.c:329: data[0] = 0x23;
	mov	_oled_char_data_10000_47,#0x23
;	my_oled.c:330: data[1] = 0x13;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x13
;	my_oled.c:331: data[2] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
;	my_oled.c:332: data[3] = 0x64;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x64
;	my_oled.c:333: data[4] = 0x62;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x62
;	my_oled.c:334: break;
	ljmp	00143$
;	my_oled.c:336: case '\'':
00122$:
;	my_oled.c:337: data[2] = 0x07;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x07
;	my_oled.c:338: break;
;	my_oled.c:340: case 0x22:     /* for char ' " ' */
	sjmp	00143$
00123$:
;	my_oled.c:341: data[1] = 0x03;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x03
;	my_oled.c:342: data[3] = 0x03;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x03
;	my_oled.c:343: break;
;	my_oled.c:345: case '*':
	sjmp	00143$
00124$:
;	my_oled.c:346: data[1] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
;	my_oled.c:347: data[2] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
;	my_oled.c:348: data[3] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x14
;	my_oled.c:349: break;
;	my_oled.c:351: case '#':
	sjmp	00143$
00125$:
;	my_oled.c:352: data[0] = 0x14;
	mov	_oled_char_data_10000_47,#0x14
;	my_oled.c:353: data[1] = 0x7F;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
;	my_oled.c:354: data[2] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
;	my_oled.c:355: data[3] = 0x7F;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
;	my_oled.c:356: data[4] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x14
;	my_oled.c:357: break;
;	my_oled.c:359: case '<':
	sjmp	00143$
00126$:
;	my_oled.c:360: data[0] = 0x08;
	mov	_oled_char_data_10000_47,#0x08
;	my_oled.c:361: data[1] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x14
;	my_oled.c:362: data[2] = 0x22;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x22
;	my_oled.c:363: data[3] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
;	my_oled.c:364: break;
;	my_oled.c:366: case '>':
	sjmp	00143$
00127$:
;	my_oled.c:367: data[0] = 0x41;
	mov	_oled_char_data_10000_47,#0x41
;	my_oled.c:368: data[1] = 0x22;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x22
;	my_oled.c:369: data[2] = 0x14;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x14
;	my_oled.c:370: data[3] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
;	my_oled.c:371: break;
;	my_oled.c:373: case '|':
	sjmp	00143$
00128$:
;	my_oled.c:374: data[2] = 0x7F;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x7f
;	my_oled.c:375: break;
;	my_oled.c:377: case '[':
	sjmp	00143$
00129$:
;	my_oled.c:378: data[1] = 0x7F;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x7f
;	my_oled.c:379: data[2] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
;	my_oled.c:380: break;
;	my_oled.c:382: case ']':
	sjmp	00143$
00130$:
;	my_oled.c:383: data[2] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x41
;	my_oled.c:384: data[3] = 0x7F;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x7f
;	my_oled.c:385: break;
;	my_oled.c:387: case '{':
	sjmp	00143$
00131$:
;	my_oled.c:388: data[1] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x08
;	my_oled.c:389: data[2] = 0x36;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
;	my_oled.c:390: data[3] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x41
;	my_oled.c:391: break;
;	my_oled.c:393: case '}':
	sjmp	00143$
00132$:
;	my_oled.c:394: data[1] = 0x41;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x41
;	my_oled.c:395: data[2] = 0x36;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x36
;	my_oled.c:396: data[3] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x08
;	my_oled.c:397: break;
;	my_oled.c:399: case '~':
	sjmp	00143$
00133$:
;	my_oled.c:400: data[0] = 0x08;
	mov	_oled_char_data_10000_47,#0x08
;	my_oled.c:401: data[1] = 0x04;
	mov	(_oled_char_data_10000_47 + 0x0001),#0x04
;	my_oled.c:402: data[2] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0002),#0x08
;	my_oled.c:403: data[3] = 0x10;
	mov	(_oled_char_data_10000_47 + 0x0003),#0x10
;	my_oled.c:404: data[4] = 0x08;
	mov	(_oled_char_data_10000_47 + 0x0004),#0x08
;	my_oled.c:410: }
00143$:
;	my_oled.c:413: if((unsigned int)oled_column + 6 > 128)
	mov	r6,_oled_column
	mov	r7,#0x00
	mov	a,#0x06
	add	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	clr	c
	mov	a,#0x80
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00148$
;	free result
;	my_oled.c:415: oled_page++;
	inc	_oled_page
;	my_oled.c:416: oled_column = 0;
	mov	_oled_column,#0x00
;	my_oled.c:418: if(oled_page > 7)
	mov	a,_oled_page
	add	a,#0xff - 0x07
	jnc	00146$
;	free result
;	my_oled.c:419: oled_page = 0;
	mov	_oled_page,#0x00
00146$:
;	my_oled.c:421: oled_set_position(oled_page, oled_column);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, _oled_page
	lcall	_oled_set_position
00148$:
;	my_oled.c:424: i2c_write_transaction(0x40, data, 6);
	mov	_i2c_write_transaction_PARM_2,#_oled_char_data_10000_47
	mov	(_i2c_write_transaction_PARM_2 + 1),#0x00
	mov	(_i2c_write_transaction_PARM_2 + 2),#0x40
	mov	_i2c_write_transaction_PARM_3,#0x06
	mov	dpl, #0x40
	lcall	_i2c_write_transaction
;	my_oled.c:425: oled_column += 6;
	mov	r7,_oled_column
	mov	a,#0x06
	add	a, r7
;	my_oled.c:427: if(oled_column >= 128)
	mov	_oled_column,a
	clr	c
	subb	a,#0x80
	jc	00159$
;	my_oled.c:429: oled_column = 0;
	mov	_oled_column,#0x00
;	my_oled.c:430: oled_page++;
	inc	_oled_page
;	my_oled.c:432: if(oled_page > 7)
	mov	a,_oled_page
	add	a,#0xff - 0x07
	jnc	00150$
;	free result
;	my_oled.c:433: oled_page = 0;
	mov	_oled_page,#0x00
00150$:
;	my_oled.c:435: oled_set_position(oled_page, oled_column);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, _oled_page
;	my_oled.c:437: }
	ljmp	_oled_set_position
00159$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_string'
;------------------------------------------------------------
;str           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	my_oled.c:439: void oled_string(char *str)
;	-----------------------------------------
;	 function oled_string
;	-----------------------------------------
_oled_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	my_oled.c:441: while(*str)
00109$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00112$
;	my_oled.c:443: if(*str == '\n')
	cjne	r4,#0x0a,00107$
;	my_oled.c:445: oled_page++;
	inc	_oled_page
;	my_oled.c:447: if(oled_page > 7)
	mov	a,_oled_page
	add	a,#0xff - 0x07
	jnc	00102$
;	free result
;	my_oled.c:448: oled_page = 0;
	mov	_oled_page,#0x00
00102$:
;	my_oled.c:450: oled_column = 0;
	mov	_oled_column,#0x00
;	my_oled.c:451: oled_set_position(oled_page, oled_column);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, _oled_page
	push	ar7
	push	ar6
	push	ar5
	lcall	_oled_set_position
	pop	ar5
	pop	ar6
	pop	ar7
;	my_oled.c:452: str++;
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00107$:
;	my_oled.c:454: else if(*str == '\r')
	cjne	r4,#0x0d,00104$
;	my_oled.c:456: oled_column = 0;
	mov	_oled_column,#0x00
;	my_oled.c:457: oled_set_position(oled_page, oled_column);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, _oled_page
	push	ar7
	push	ar6
	push	ar5
	lcall	_oled_set_position
	pop	ar5
	pop	ar6
	pop	ar7
;	my_oled.c:458: str++;
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00104$:
;	my_oled.c:462: oled_char((unsigned char)*str++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00157$
	inc	r6
00157$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_oled_char
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00109$
00112$:
;	my_oled.c:465: }
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
	.db #0x3e	; 62
	.db #0x45	; 69	'E'
	.db #0x49	; 73	'I'
	.db #0x51	; 81	'Q'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
