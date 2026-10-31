;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module my_uart
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _uart_write_buffer_PARM_2
	.globl _uart_init
	.globl _uart_write_byte
	.globl _uart_write_buffer
	.globl _uart_write_string
	.globl _uart_available
	.globl _uart_read_byte
	.globl _uart_read_byte_blocking
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
_uart_write_buffer_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;baud          Allocated to registers r4 r5 r6 r7 
;divisor       Allocated to registers r4 r5 r6 r7 
;reload        Allocated to registers r4 
;------------------------------------------------------------
;	my_uart.c:5: uart_u8 uart_init(uart_u32 baud)
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	my_uart.c:10: if (baud == 0)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
;	my_uart.c:11: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	my_uart.c:13: divisor = (UART_FOSC_HZ + (96UL * baud))
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),r5
	mov	(__mullong_PARM_2 + 2),r6
	mov	(__mullong_PARM_2 + 3),r7
	mov	dptr,#0x0060
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mullong
	mov	r0, dpl
	mov	r1, dph
	mov	r2, b
	mov	r3, a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x36
	add	a, r1
	mov	r1,a
	mov	a,#0x6e
	addc	a, r2
	mov	r2,a
	mov	a,#0x01
	addc	a, r3
	mov	r3,a
;	my_uart.c:14: / (192UL * baud);
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),r5
	mov	(__mullong_PARM_2 + 2),r6
	mov	(__mullong_PARM_2 + 3),r7
	mov	dptr,#0x00c0
	clr	a
	mov	b,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	__mullong
	mov	__divulong_PARM_2,dpl
	mov	(__divulong_PARM_2 + 1),dph
	mov	(__divulong_PARM_2 + 2),b
	mov	(__divulong_PARM_2 + 3),a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	my_uart.c:16: if (divisor == 0 || divisor > 255UL)
	mov	dpl, r0
	mov	dph, r1
	mov	b, r2
	mov	a, r3
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00103$
	clr	c
	mov	a,#0xff
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00104$
;	free result
00103$:
;	my_uart.c:17: return 0;
	mov	dpl, #0x00
	ret
00104$:
;	my_uart.c:19: reload = (uart_u8)(256UL - divisor);
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
;	my_uart.c:21: ES = 0;
;	assignBit
	clr	_ES
;	my_uart.c:23: TR1 = 0;
;	assignBit
	clr	_TR1
;	my_uart.c:24: TMOD = (TMOD & 0x0F) | 0x20;
	mov	a,_TMOD
	anl	a,#0x0f
	orl	a,#0x20
	mov	_TMOD,a
;	my_uart.c:26: PCON |= 0x80;
	orl	_PCON,#0x80
;	my_uart.c:28: TH1 = reload;
	mov	_TH1,r4
;	my_uart.c:29: TL1 = reload;
	mov	_TL1,r4
;	my_uart.c:31: SCON = 0x50;
	mov	_SCON,#0x50
;	my_uart.c:33: TI = 0;
;	assignBit
	clr	_TI
;	my_uart.c:34: RI = 0;
;	assignBit
	clr	_RI
;	my_uart.c:36: TR1 = 1;
;	assignBit
	setb	_TR1
;	my_uart.c:38: return 1;
	mov	dpl, #0x01
;	my_uart.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_write_byte'
;------------------------------------------------------------
;data          Allocated to registers 
;------------------------------------------------------------
;	my_uart.c:41: void uart_write_byte(uart_u8 data)
;	-----------------------------------------
;	 function uart_write_byte
;	-----------------------------------------
_uart_write_byte:
	mov	_SBUF,dpl
;	my_uart.c:45: while (TI == 0);
00101$:
;	my_uart.c:47: TI = 0;
;	assignBit
	jbc	_TI,00120$
	sjmp	00101$
00120$:
;	my_uart.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_write_buffer'
;------------------------------------------------------------
;length        Allocated with name '_uart_write_buffer_PARM_2'
;data          Allocated to registers r5 r6 r7 
;i             Allocated to registers r3 r4 
;------------------------------------------------------------
;	my_uart.c:50: void uart_write_buffer(const uart_u8 *data, uart_u16 length)
;	-----------------------------------------
;	 function uart_write_buffer
;	-----------------------------------------
_uart_write_buffer:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	my_uart.c:54: for (i = 0; i < length; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,_uart_write_buffer_PARM_2
	mov	a,r4
	subb	a,(_uart_write_buffer_PARM_2 + 1)
	jnc	00105$
;	my_uart.c:55: uart_write_byte(data[i]);
	mov	a,r3
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart_write_byte
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	my_uart.c:54: for (i = 0; i < length; i++)
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00105$:
;	my_uart.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_write_string'
;------------------------------------------------------------
;str           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	my_uart.c:58: void uart_write_string(const char *str)
;	-----------------------------------------
;	 function uart_write_string
;	-----------------------------------------
_uart_write_string:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	my_uart.c:60: while (*str != '\0')
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	my_uart.c:62: uart_write_byte((uart_u8)*str);
	mov	dpl, r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart_write_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	my_uart.c:63: str++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
;	my_uart.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_available'
;------------------------------------------------------------
;	my_uart.c:67: uart_u8 uart_available(void)
;	-----------------------------------------
;	 function uart_available
;	-----------------------------------------
_uart_available:
;	my_uart.c:69: return RI ? 1 : 0;
	jnb	_RI,00103$
	mov	r7,#0x01
	sjmp	00104$
00103$:
	mov	r7,#0x00
00104$:
	mov	dpl,r7
;	my_uart.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_read_byte'
;------------------------------------------------------------
;data          Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	my_uart.c:72: uart_u8 uart_read_byte(uart_u8 *data)
;	-----------------------------------------
;	 function uart_read_byte
;	-----------------------------------------
_uart_read_byte:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	my_uart.c:74: if (RI == 0)
	jb	_RI,00102$
;	my_uart.c:75: return 0;
	mov	dpl, #0x00
	ret
00102$:
;	my_uart.c:77: *data = SBUF;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_SBUF
	lcall	__gptrput
;	my_uart.c:78: RI = 0;
;	assignBit
	clr	_RI
;	my_uart.c:80: return 1;
	mov	dpl, #0x01
;	my_uart.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_read_byte_blocking'
;------------------------------------------------------------
;data          Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	my_uart.c:83: uart_u8 uart_read_byte_blocking(uart_u8 *data)
;	-----------------------------------------
;	 function uart_read_byte_blocking
;	-----------------------------------------
_uart_read_byte_blocking:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	my_uart.c:85: while (RI == 0);
00101$:
	jnb	_RI,00101$
;	my_uart.c:87: *data = SBUF;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_SBUF
	lcall	__gptrput
;	my_uart.c:88: RI = 0;
;	assignBit
	clr	_RI
;	my_uart.c:90: return 1;
	mov	dpl, #0x01
;	my_uart.c:91: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
