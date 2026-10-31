;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _timer0_isr
	.globl _uart_read_byte
	.globl _uart_write_string
	.globl _uart_init
	.globl _oled_string
	.globl _oled_char
	.globl _oled_set_position
	.globl _oled_clear
	.globl _oled_init
	.globl _timer0_init
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
	.globl _time_ms
	.globl _delay_time_ms
	.globl _delay_us
	.globl _delay_ms
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
_delay_time_ms::
	.ds 4
_time_ms::
	.ds 2
_rx_buffer:
	.ds 64
_rx_length:
	.ds 1
_relay_state:
	.ds 1
_buzzer_state:
	.ds 1
_timer0_isr_count_10000_28:
	.ds 1
_oled_show_data_data_10000_37:
	.ds 3
_uart_receive_process_data_10000_69:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_isr
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;count         Allocated with name '_timer0_isr_count_10000_28'
;------------------------------------------------------------
;	main.c:39: static unsigned char count = 0;
	mov	_timer0_isr_count_10000_28,#0x00
;	main.c:12: volatile unsigned long int delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:13: volatile unsigned short int time_ms = 0;
	mov	_time_ms,a
	mov	(_time_ms + 1),a
;	main.c:16: static unsigned char rx_length = 0;
	mov	_rx_length,a
;	main.c:17: static unsigned char relay_state = 0;
	mov	_relay_state,a
;	main.c:18: static unsigned char buzzer_state = 0;
	mov	_buzzer_state,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
__sdcc_program_exit:
	sjmp	.
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;value         Allocated to registers r6 r7 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	main.c:20: void delay_us(unsigned int value)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	main.c:24: while (value--)
00102$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00138$
	dec	r7
00138$:
	mov	a,r4
	orl	a,r5
	jz	00108$
;	main.c:26: for (i = 0; i < 4; i++);
	mov	r5,#0x04
00107$:
	djnz	r5,00107$
	sjmp	00102$
00108$:
;	main.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;value         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:30: void delay_ms(unsigned long int value)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:32: delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:34: while (delay_time_ms < value);
00101$:
	clr	c
	mov	a,_delay_time_ms
	subb	a,r4
	mov	a,(_delay_time_ms + 1)
	subb	a,r5
	mov	a,(_delay_time_ms + 2)
	subb	a,r6
	mov	a,(_delay_time_ms + 3)
	subb	a,r7
	jc	00101$
;	main.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;count         Allocated with name '_timer0_isr_count_10000_28'
;------------------------------------------------------------
;	main.c:37: void timer0_isr(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	push	acc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	psw
	mov	psw,#0x00
;	main.c:41: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:42: count++;
	inc	_timer0_isr_count_10000_28
;	main.c:44: if (count >= 10)
	mov	a,#0x100 - 0x0a
	add	a,_timer0_isr_count_10000_28
	jnc	00105$
;	main.c:46: count = 0;
	mov	_timer0_isr_count_10000_28,#0x00
;	main.c:47: delay_time_ms++;
	mov	r4,_delay_time_ms
	mov	r5,(_delay_time_ms + 1)
	mov	r6,(_delay_time_ms + 2)
	mov	r7,(_delay_time_ms + 3)
	mov	a,#0x01
	add	a, r4
	mov	_delay_time_ms,a
	clr	a
	addc	a, r5
	mov	(_delay_time_ms + 1),a
	clr	a
	addc	a, r6
	mov	(_delay_time_ms + 2),a
	clr	a
	addc	a, r7
	mov	(_delay_time_ms + 3),a
;	main.c:48: time_ms++;
	mov	r6,_time_ms
	mov	r7,(_time_ms + 1)
	mov	a,#0x01
	add	a, r6
	mov	_time_ms,a
	clr	a
	addc	a, r7
	mov	(_time_ms + 1),a
;	main.c:50: if (time_ms >= 1000)
	mov	r6,_time_ms
	mov	r7,(_time_ms + 1)
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jc	00105$
;	main.c:51: time_ms = 0;
	clr	a
	mov	_time_ms,a
	mov	(_time_ms + 1),a
00105$:
;	main.c:53: }
	pop	psw
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_clear_line'
;------------------------------------------------------------
;page          Allocated to registers r7 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:55: static void oled_clear_line(unsigned char page)
;	-----------------------------------------
;	 function oled_clear_line
;	-----------------------------------------
_oled_clear_line:
;	main.c:59: oled_set_position(page, 0);
	mov	_oled_set_position_PARM_2,#0x00
	lcall	_oled_set_position
;	main.c:61: for (i = 0; i < 20; i++)
	mov	r7,#0x00
00102$:
;	main.c:62: oled_char(' ');
	mov	dpl, #0x20
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:61: for (i = 0; i < 20; i++)
	inc	r7
	cjne	r7,#0x14,00113$
00113$:
	jc	00102$
;	main.c:63: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_show_status'
;------------------------------------------------------------
;	main.c:65: static void oled_show_status(void)
;	-----------------------------------------
;	 function oled_show_status
;	-----------------------------------------
_oled_show_status:
;	main.c:67: oled_clear_line(0);
	mov	dpl, #0x00
	lcall	_oled_clear_line
;	main.c:68: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:69: oled_string("APPLIANCE SAFETY");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_oled_string
;	main.c:71: oled_clear_line(2);
	mov	dpl, #0x02
	lcall	_oled_clear_line
;	main.c:72: oled_set_position(2, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:73: oled_string("RELAY: ");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_oled_string
;	main.c:75: oled_string(relay_state ? "ON" : "OFF");
	mov	a,_relay_state
	jz	00103$
	mov	r6,#___str_2
	mov	r7,#(___str_2 >> 8)
	sjmp	00104$
00103$:
	mov	r6,#___str_3
	mov	r7,#(___str_3 >> 8)
00104$:
	mov	r5,#0x80
	mov	dpl, r6
	mov	dph, r7
	mov	b, r5
	lcall	_oled_string
;	main.c:77: oled_clear_line(4);
	mov	dpl, #0x04
	lcall	_oled_clear_line
;	main.c:78: oled_set_position(4, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x04
	lcall	_oled_set_position
;	main.c:79: oled_string("BUZZER: ");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_oled_string
;	main.c:81: oled_string(buzzer_state ? "ON" : "OFF");
	mov	a,_buzzer_state
	jz	00105$
	mov	r6,#___str_2
	mov	r7,#(___str_2 >> 8)
	sjmp	00106$
00105$:
	mov	r6,#___str_3
	mov	r7,#(___str_3 >> 8)
00106$:
	mov	r5,#0x80
	mov	dpl, r6
	mov	dph, r7
	mov	b, r5
	lcall	_oled_string
;	main.c:83: oled_clear_line(6);
	mov	dpl, #0x06
	lcall	_oled_clear_line
;	main.c:84: oled_set_position(6, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x06
	lcall	_oled_set_position
;	main.c:85: oled_string("SYSTEM READY");
	mov	dptr,#___str_5
	mov	b, #0x80
;	main.c:86: }
	ljmp	_oled_string
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_show_data'
;------------------------------------------------------------
;data          Allocated with name '_oled_show_data_data_10000_37'
;i             Allocated to registers r2 
;row           Allocated to registers r4 
;column        Allocated to registers r3 
;------------------------------------------------------------
;	main.c:88: static void oled_show_data(char *data)
;	-----------------------------------------
;	 function oled_show_data
;	-----------------------------------------
_oled_show_data:
	mov	_oled_show_data_data_10000_37,dpl
	mov	(_oled_show_data_data_10000_37 + 1),dph
	mov	(_oled_show_data_data_10000_37 + 2),b
;	main.c:91: unsigned char row = 0;
	mov	r4,#0x00
;	main.c:92: unsigned char column = 0;
	mov	r3,#0x00
;	main.c:94: oled_clear();
	push	ar4
	push	ar3
	lcall	_oled_clear
;	main.c:96: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:97: oled_string("LIVE MEASUREMENTS");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_oled_string
	pop	ar3
	pop	ar4
;	main.c:99: for (i = 0; data[i] != '\0' && row < 3; i++)
	mov	r2,#0x00
00109$:
	mov	a,r2
	add	a, _oled_show_data_data_10000_37
	mov	r0,a
	clr	a
	addc	a, (_oled_show_data_data_10000_37 + 1)
	mov	r1,a
	mov	r7,(_oled_show_data_data_10000_37 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	jz	00111$
	cjne	r4,#0x03,00149$
00149$:
	jnc	00111$
;	main.c:101: if (data[i] == ',')
	cjne	r7,#0x2c,00104$
;	main.c:103: row++;
	inc	r4
;	main.c:104: column = 0;
	mov	r3,#0x00
;	main.c:106: oled_set_position(row * 2, 0);
	mov	a,r4
	add	a,r4
	mov	dpl,a
	mov	_oled_set_position_PARM_2,r3
	push	ar4
	push	ar3
	push	ar2
	lcall	_oled_set_position
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00110$
00104$:
;	main.c:110: if (column < 20)
	cjne	r3,#0x14,00153$
00153$:
	jnc	00110$
;	main.c:112: oled_char(data[i]);
	mov	dpl, r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_oled_char
	pop	ar2
	pop	ar3
	pop	ar4
;	main.c:113: column++;
	inc	r3
00110$:
;	main.c:99: for (i = 0; data[i] != '\0' && row < 3; i++)
	inc	r2
	sjmp	00109$
00111$:
;	main.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_command'
;------------------------------------------------------------
;command       Allocated to registers r5 r6 r7 
;page          Allocated to registers r4 
;------------------------------------------------------------
;	main.c:119: static void process_command(char *command)
;	-----------------------------------------
;	 function process_command
;	-----------------------------------------
_process_command:
;	main.c:121: if (command[0] == 'R' &&
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x52,00515$
	sjmp	00516$
00515$:
	ljmp	00111$
00516$:
;	main.c:122: command[1] == 'E' &&
	mov	a,#0x01
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x45,00517$
	sjmp	00518$
00517$:
	ljmp	00111$
00518$:
;	main.c:123: command[2] == 'L' &&
	mov	a,#0x02
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x4c,00519$
	sjmp	00520$
00519$:
	ljmp	00111$
00520$:
;	main.c:124: command[3] == 'A' &&
	mov	a,#0x03
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x41,00521$
	sjmp	00522$
00521$:
	ljmp	00111$
00522$:
;	main.c:125: command[4] == 'Y' &&
	mov	a,#0x04
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x59,00523$
	sjmp	00524$
00523$:
	ljmp	00111$
00524$:
;	main.c:126: command[5] == ',')
	mov	a,#0x05
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2c,00525$
	sjmp	00526$
00525$:
	ljmp	00111$
00526$:
;	main.c:128: if (command[6] == 'O' &&
	mov	a,#0x06
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	clr	a
	cjne	r1,#0x4f,00527$
	inc	a
00527$:
	mov	r3,a
	jz	00102$
;	main.c:129: command[7] == 'N' &&
	mov	a,#0x07
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x4e,00102$
;	main.c:130: command[8] == '\0')
	mov	a,#0x08
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jnz	00102$
;	main.c:132: RELAY_PIN = 0;
;	assignBit
	clr	_P2_6
;	main.c:133: relay_state = 1;
	mov	_relay_state,#0x01
;	main.c:135: uart_write_string("RELAY,ON\r\n");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:136: oled_show_status();
;	main.c:138: return;
	ljmp	_oled_show_status
00102$:
;	main.c:141: if (command[6] == 'O' &&
	mov	a,r3
	jz	00111$
;	main.c:142: command[7] == 'F' &&
	mov	a,#0x07
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x46,00111$
;	main.c:143: command[8] == 'F' &&
	mov	a,#0x08
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x46,00111$
;	main.c:144: command[9] == '\0')
	mov	a,#0x09
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00111$
;	main.c:146: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:147: relay_state = 0;
	mov	_relay_state,#0x00
;	main.c:149: uart_write_string("RELAY,OFF\r\n");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:150: oled_show_status();
;	main.c:152: return;
	ljmp	_oled_show_status
00111$:
;	main.c:156: if (command[0] == 'B' &&
	cjne	r4,#0x42,00539$
	sjmp	00540$
00539$:
	ljmp	00127$
00540$:
;	main.c:157: command[1] == 'U' &&
	mov	a,#0x01
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x55,00541$
	sjmp	00542$
00541$:
	ljmp	00127$
00542$:
;	main.c:158: command[2] == 'Z' &&
	mov	a,#0x02
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x5a,00543$
	sjmp	00544$
00543$:
	ljmp	00127$
00544$:
;	main.c:159: command[3] == 'Z' &&
	mov	a,#0x03
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x5a,00545$
	sjmp	00546$
00545$:
	ljmp	00127$
00546$:
;	main.c:160: command[4] == 'E' &&
	mov	a,#0x04
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x45,00547$
	sjmp	00548$
00547$:
	ljmp	00127$
00548$:
;	main.c:161: command[5] == 'R' &&
	mov	a,#0x05
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x52,00549$
	sjmp	00550$
00549$:
	ljmp	00127$
00550$:
;	main.c:162: command[6] == ',')
	mov	a,#0x06
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2c,00551$
	sjmp	00552$
00551$:
	ljmp	00127$
00552$:
;	main.c:164: if (command[7] == 'O' &&
	mov	a,#0x07
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	clr	a
	cjne	r1,#0x4f,00553$
	inc	a
00553$:
	mov	r3,a
	jz	00118$
;	main.c:165: command[8] == 'N' &&
	mov	a,#0x08
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x4e,00118$
;	main.c:166: command[9] == '\0')
	mov	a,#0x09
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jnz	00118$
;	main.c:168: BUZZER_PIN = 0;
;	assignBit
	clr	_P2_7
;	main.c:169: buzzer_state = 1;
	mov	_buzzer_state,#0x01
;	main.c:171: uart_write_string("BUZZER,ON\r\n");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:172: oled_show_status();
;	main.c:174: return;
	ljmp	_oled_show_status
00118$:
;	main.c:177: if (command[7] == 'O' &&
	mov	a,r3
	jz	00127$
;	main.c:178: command[8] == 'F' &&
	mov	a,#0x08
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x46,00127$
;	main.c:179: command[9] == 'F' &&
	mov	a,#0x09
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x46,00127$
;	main.c:180: command[10] == '\0')
	mov	a,#0x0a
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00127$
;	main.c:182: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:183: buzzer_state = 0;
	mov	_buzzer_state,#0x00
;	main.c:185: uart_write_string("BUZZER,OFF\r\n");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:186: oled_show_status();
;	main.c:188: return;
	ljmp	_oled_show_status
00127$:
;	main.c:192: if (command[0] == 'S' &&
	cjne	r4,#0x53,00565$
	sjmp	00566$
00565$:
	ljmp	00135$
00566$:
;	main.c:193: command[1] == 'T' &&
	mov	a,#0x01
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x54,00567$
	sjmp	00568$
00567$:
	ljmp	00135$
00568$:
;	main.c:194: command[2] == 'A' &&
	mov	a,#0x02
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x41,00569$
	sjmp	00570$
00569$:
	ljmp	00135$
00570$:
;	main.c:195: command[3] == 'T' &&
	mov	a,#0x03
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x54,00571$
	sjmp	00572$
00571$:
	ljmp	00135$
00572$:
;	main.c:196: command[4] == 'U' &&
	mov	a,#0x04
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x55,00573$
	sjmp	00574$
00573$:
	ljmp	00135$
00574$:
;	main.c:197: command[5] == 'S' &&
	mov	a,#0x05
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x53,00135$
;	main.c:198: command[6] == '\0')
	mov	a,#0x06
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00135$
;	main.c:200: uart_write_string("STATUS,RELAY=");
	mov	dptr,#___str_11
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:201: uart_write_string(relay_state ? "ON" : "OFF");
	mov	a,_relay_state
	jz	00161$
	mov	r2,#___str_2
	mov	r3,#(___str_2 >> 8)
	sjmp	00162$
00161$:
	mov	r2,#___str_3
	mov	r3,#(___str_3 >> 8)
00162$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl, r2
	mov	dph, r1
	mov	b, r3
	lcall	_uart_write_string
;	main.c:202: uart_write_string(",BUZZER=");
	mov	dptr,#___str_12
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:203: uart_write_string(buzzer_state ? "ON" : "OFF");
	mov	a,_buzzer_state
	jz	00163$
	mov	r2,#___str_2
	mov	r3,#(___str_2 >> 8)
	sjmp	00164$
00163$:
	mov	r2,#___str_3
	mov	r3,#(___str_3 >> 8)
00164$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl, r2
	mov	dph, r1
	mov	b, r3
	lcall	_uart_write_string
;	main.c:204: uart_write_string("\r\n");
	mov	dptr,#___str_13
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:206: oled_show_status();
;	main.c:208: return;
	ljmp	_oled_show_status
00135$:
;	main.c:211: if (command[0] == 'H' &&
	cjne	r4,#0x48,00580$
	sjmp	00581$
00580$:
	ljmp	00143$
00581$:
;	main.c:212: command[1] == 'E' &&
	mov	a,#0x01
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x45,00143$
;	main.c:213: command[2] == 'L' &&
	mov	a,#0x02
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x4c,00143$
;	main.c:214: command[3] == 'P' &&
	mov	a,#0x03
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x50,00143$
;	main.c:215: command[4] == '\0')
	mov	a,#0x04
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00143$
;	main.c:217: uart_write_string("RELAY,ON\r\n");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:218: uart_write_string("RELAY,OFF\r\n");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:219: uart_write_string("BUZZER,ON\r\n");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:220: uart_write_string("BUZZER,OFF\r\n");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:221: uart_write_string("STATUS\r\n");
	mov	dptr,#___str_14
	mov	b, #0x80
;	main.c:223: return;
	ljmp	_uart_write_string
00143$:
;	main.c:226: if (command[0] == 'D' &&
	cjne	r4,#0x44,00149$
;	main.c:227: command[1] == 'A' &&
	mov	a,#0x01
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x41,00149$
;	main.c:228: command[2] == 'T' &&
	mov	a,#0x02
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x54,00149$
;	main.c:229: command[3] == 'A' &&
	mov	a,#0x03
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x41,00149$
;	main.c:230: command[4] == ',')
	mov	a,#0x04
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2c,00149$
;	main.c:232: oled_show_data(command);
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	main.c:234: return;
	ljmp	_oled_show_data
00149$:
;	main.c:237: if (command[0] == 'L' &&
	cjne	r4,#0x4c,00599$
	sjmp	00600$
00599$:
	ret
00600$:
;	main.c:238: command[1] >= '0' &&
	mov	a,#0x01
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00601$
00601$:
	jc	00159$
;	main.c:239: command[1] <= '3' &&
	mov	a,r4
	add	a,#0xff - 0x33
	jc	00159$
;	free result
;	main.c:240: command[2] == ':')
	mov	a,#0x02
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x3a,00159$
;	main.c:242: unsigned char page = (command[1] - '0') * 2;
	mov	a,r4
	add	a,#0xd0
	add	a,acc
;	main.c:244: oled_clear_line(page);
	mov	r4,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_oled_clear_line
	pop	ar4
;	main.c:245: oled_set_position(page, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, r4
	lcall	_oled_set_position
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:246: oled_string(command + 3);
	mov	a,#0x03
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	main.c:248: return;
;	main.c:250: }
	ljmp	_oled_string
00159$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_receive_process'
;------------------------------------------------------------
;data          Allocated with name '_uart_receive_process_data_10000_69'
;------------------------------------------------------------
;	main.c:252: static void uart_receive_process(void)
;	-----------------------------------------
;	 function uart_receive_process
;	-----------------------------------------
_uart_receive_process:
;	main.c:256: if (!uart_read_byte(&data))
	mov	dptr,#_uart_receive_process_data_10000_69
	mov	b, #0x40
	lcall	_uart_read_byte
	mov	a, dpl
	jnz	00102$
;	main.c:257: return;
	ret
00102$:
;	main.c:259: if (data == '\r' || data == '\n')
	mov	a,#0x0d
	cjne	a,_uart_receive_process_data_10000_69,00161$
	sjmp	00105$
00161$:
	mov	a,#0x0a
	cjne	a,_uart_receive_process_data_10000_69,00106$
00105$:
;	main.c:261: if (rx_length > 0)
	mov	a,_rx_length
	jz	00104$
;	main.c:263: rx_buffer[rx_length] = '\0';
	mov	a,_rx_length
	add	a, #_rx_buffer
	mov	r0,a
	mov	@r0,#0x00
;	main.c:265: process_command((char *)rx_buffer);
	mov	dptr,#_rx_buffer
	mov	b, #0x40
	lcall	_process_command
;	main.c:267: rx_length = 0;
	mov	_rx_length,#0x00
00104$:
;	main.c:270: return;
	ret
00106$:
;	main.c:273: if (data == 8 || data == 127)
	mov	a,#0x08
	cjne	a,_uart_receive_process_data_10000_69,00165$
	sjmp	00110$
00165$:
	mov	a,#0x7f
	cjne	a,_uart_receive_process_data_10000_69,00111$
00110$:
;	main.c:275: if (rx_length > 0)
	mov	a,_rx_length
	jz	00109$
;	main.c:276: rx_length--;
	dec	_rx_length
00109$:
;	main.c:278: return;
	ret
00111$:
;	main.c:281: if (rx_length < RX_BUFFER_SIZE - 1)
	mov	a,#0x100 - 0x3f
	add	a,_rx_length
	jc	00114$
;	main.c:283: rx_buffer[rx_length++] = data;
	mov	r7,_rx_length
	inc	_rx_length
	mov	a,r7
	add	a, #_rx_buffer
	mov	r0,a
	mov	@r0,_uart_receive_process_data_10000_69
	ret
00114$:
;	main.c:287: rx_length = 0;
	mov	_rx_length,#0x00
;	main.c:289: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;uart_status   Allocated to registers 
;------------------------------------------------------------
;	main.c:291: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:295: EA = 0;
;	assignBit
	clr	_EA
;	main.c:297: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:298: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:300: relay_state = 0;
	mov	_relay_state,#0x00
;	main.c:301: buzzer_state = 0;
	mov	_buzzer_state,#0x00
;	main.c:303: timer0_init();
	lcall	_timer0_init
;	main.c:305: EA = 1;
;	assignBit
	setb	_EA
;	main.c:307: oled_init();
	lcall	_oled_init
;	main.c:308: oled_clear();
	lcall	_oled_clear
;	main.c:310: uart_status = uart_init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_uart_init
	mov	a, dpl
;	main.c:312: if (!uart_status)
;	main.c:314: oled_set_position(0, 0);
	jnz	00105$
	mov	_oled_set_position_PARM_2,a
	mov	dpl,a
	lcall	_oled_set_position
;	main.c:315: oled_string("UART INIT FAILED");
	mov	dptr,#___str_15
	mov	b, #0x80
	lcall	_oled_string
;	main.c:317: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:318: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:320: while (1);
00102$:
	sjmp	00102$
00105$:
;	main.c:323: oled_show_status();
	lcall	_oled_show_status
;	main.c:325: uart_write_string("APPLIANCE SAFETY V0.1\r\n");
	mov	dptr,#___str_16
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:326: uart_write_string("UART READY\r\n");
	mov	dptr,#___str_17
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:328: while (1)
00107$:
;	main.c:330: uart_receive_process();
	lcall	_uart_receive_process
;	main.c:332: }
	sjmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "APPLIANCE SAFETY"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "RELAY: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "ON"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "OFF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "BUZZER: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "SYSTEM READY"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "LIVE MEASUREMENTS"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "RELAY,ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "RELAY,OFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "BUZZER,ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "BUZZER,OFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "STATUS,RELAY="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii ",BUZZER="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "STATUS"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "UART INIT FAILED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "APPLIANCE SAFETY V0.1"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "UART READY"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
