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
_rx_buffer:
	.ds 32
_rx_length:
	.ds 1
_relay_state:
	.ds 1
_buzzer_state:
	.ds 1
_parse_index:
	.ds 1
_timer0_isr_count_10000_28:
	.ds 1
_oled_clear_region_PARM_2:
	.ds 1
_oled_clear_region_PARM_3:
	.ds 1
_uart_receive_process_data_10000_89:
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
;	main.c:40: static unsigned char count = 0;
	mov	_timer0_isr_count_10000_28,#0x00
;	main.c:13: volatile unsigned long int delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:16: static unsigned char rx_length = 0;
	mov	_rx_length,a
;	main.c:17: static unsigned char relay_state = 0;
	mov	_relay_state,a
;	main.c:18: static unsigned char buzzer_state = 0;
	mov	_buzzer_state,a
;	main.c:19: static unsigned char parse_index = 0;
	mov	_parse_index,a
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
;	main.c:21: void delay_us(unsigned int value)
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
;	main.c:25: while (value--)
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
;	main.c:27: for (i = 0; i < 4; i++);
	mov	r5,#0x04
00107$:
	djnz	r5,00107$
	sjmp	00102$
00108$:
;	main.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;value         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:31: void delay_ms(unsigned long int value)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:33: delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:35: while (delay_time_ms < value);
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
;	main.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;count         Allocated with name '_timer0_isr_count_10000_28'
;------------------------------------------------------------
;	main.c:38: void timer0_isr(void) __interrupt(1)
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
;	main.c:42: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:43: count++;
	inc	_timer0_isr_count_10000_28
;	main.c:45: if (count >= 10)
	mov	a,#0x100 - 0x0a
	add	a,_timer0_isr_count_10000_28
	jnc	00103$
;	main.c:47: count = 0;
	mov	_timer0_isr_count_10000_28,#0x00
;	main.c:48: delay_time_ms++;
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
00103$:
;	main.c:50: }
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
;Allocation info for local variables in function 'oled_clear_region'
;------------------------------------------------------------
;column        Allocated with name '_oled_clear_region_PARM_2'
;characters    Allocated with name '_oled_clear_region_PARM_3'
;page          Allocated to registers r7 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:52: static void oled_clear_region(unsigned char page,
;	-----------------------------------------
;	 function oled_clear_region
;	-----------------------------------------
_oled_clear_region:
;	main.c:58: oled_set_position(page, column);
	mov	_oled_set_position_PARM_2,_oled_clear_region_PARM_2
	lcall	_oled_set_position
;	main.c:60: for (i = 0; i < characters; i++)
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r7
	subb	a,_oled_clear_region_PARM_3
	jnc	00105$
;	main.c:61: oled_char(' ');
	mov	dpl, #0x20
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:60: for (i = 0; i < characters; i++)
	inc	r7
	sjmp	00103$
00105$:
;	main.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_clear_error'
;------------------------------------------------------------
;	main.c:64: static void oled_clear_error(void)
;	-----------------------------------------
;	 function oled_clear_error
;	-----------------------------------------
_oled_clear_error:
;	main.c:66: oled_clear_region(5, 0, 21);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x15
	mov	dpl, #0x05
	lcall	_oled_clear_region
;	main.c:67: oled_clear_region(7, 0, 21);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x15
	mov	dpl, #0x07
;	main.c:68: }
	ljmp	_oled_clear_region
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_print_field'
;------------------------------------------------------------
;comma_expected Allocated to registers r7 
;count         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:70: static unsigned char oled_print_field(unsigned char comma_expected)
;	-----------------------------------------
;	 function oled_print_field
;	-----------------------------------------
_oled_print_field:
	mov	r7, dpl
;	main.c:72: unsigned char count = 0;
	mov	r6,#0x00
;	main.c:74: if (rx_buffer[parse_index] == '\0')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
;	main.c:75: return 0;
	jnz	00106$
	mov	dpl,a
;	main.c:77: while (rx_buffer[parse_index] != '\0' &&
	ret
00106$:
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jz	00108$
;	main.c:78: rx_buffer[parse_index] != ',')
	cjne	r5,#0x2c,00175$
	sjmp	00108$
00175$:
;	main.c:80: if (count < 20)
	cjne	r6,#0x14,00176$
00176$:
	jnc	00104$
;	main.c:81: oled_char(rx_buffer[parse_index]);
	mov	dpl, r5
	push	ar7
	push	ar6
	lcall	_oled_char
	pop	ar6
	pop	ar7
00104$:
;	main.c:83: count++;
	inc	r6
;	main.c:84: parse_index++;
	inc	_parse_index
	sjmp	00106$
00108$:
;	main.c:87: if (count == 0)
	mov	a,r6
;	main.c:88: return 0;
	jnz	00110$
	mov	dpl,a
	ret
00110$:
;	main.c:90: if (comma_expected)
	mov	a,r7
	jz	00114$
;	main.c:92: if (rx_buffer[parse_index] != ',')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x2c,00180$
	sjmp	00112$
00180$:
;	main.c:93: return 0;
	mov	dpl, #0x00
	ret
00112$:
;	main.c:95: parse_index++;
	inc	_parse_index
00114$:
;	main.c:98: return 1;
	mov	dpl, #0x01
;	main.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_initial_screen'
;------------------------------------------------------------
;	main.c:101: static void oled_initial_screen(void)
;	-----------------------------------------
;	 function oled_initial_screen
;	-----------------------------------------
_oled_initial_screen:
;	main.c:103: oled_clear();
	lcall	_oled_clear
;	main.c:105: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:106: oled_string("V:--");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_oled_string
;	main.c:108: oled_set_position(0, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:109: oled_string("F:--");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_oled_string
;	main.c:111: oled_set_position(1, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:112: oled_string("I:--");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_oled_string
;	main.c:114: oled_set_position(1, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:115: oled_string("E:--");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_oled_string
;	main.c:117: oled_set_position(2, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:118: oled_string("P:--");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_oled_string
;	main.c:120: oled_set_position(2, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:121: oled_string("L:--");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_oled_string
;	main.c:123: oled_set_position(3, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:124: oled_string("PF:--");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_oled_string
;	main.c:126: oled_set_position(5, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x05
	lcall	_oled_set_position
;	main.c:127: oled_string("ERROR:");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_oled_string
;	main.c:129: oled_set_position(7, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x07
	lcall	_oled_set_position
;	main.c:130: oled_string("NO ERROR");
	mov	dptr,#___str_8
	mov	b, #0x80
;	main.c:131: }
	ljmp	_oled_string
;------------------------------------------------------------
;Allocation info for local variables in function 'process_data1'
;------------------------------------------------------------
;	main.c:133: static void process_data1(void)
;	-----------------------------------------
;	 function process_data1
;	-----------------------------------------
_process_data1:
;	main.c:135: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:137: oled_clear_region(0, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x00
	lcall	_oled_clear_region
;	main.c:138: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:139: oled_string("V:");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_oled_string
;	main.c:141: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
	jnz	00102$
;	main.c:142: return;
	ret
00102$:
;	main.c:144: oled_clear_region(1, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x01
	lcall	_oled_clear_region
;	main.c:145: oled_set_position(1, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:146: oled_string("I:");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_oled_string
;	main.c:148: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
	jnz	00104$
;	main.c:149: return;
	ret
00104$:
;	main.c:151: oled_char('A');
	mov	dpl, #0x41
	lcall	_oled_char
;	main.c:153: oled_clear_region(2, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x02
	lcall	_oled_clear_region
;	main.c:154: oled_set_position(2, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:155: oled_string("P:");
	mov	dptr,#___str_11
	mov	b, #0x80
	lcall	_oled_string
;	main.c:157: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
	jnz	00106$
;	main.c:158: return;
	ret
00106$:
;	main.c:160: oled_char('W');
	mov	dpl, #0x57
	lcall	_oled_char
;	main.c:162: oled_clear_region(3, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x03
	lcall	_oled_clear_region
;	main.c:163: oled_set_position(3, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:164: oled_string("PF:");
	mov	dptr,#___str_12
	mov	b, #0x80
	lcall	_oled_string
;	main.c:166: oled_print_field(0);
	mov	dpl, #0x00
;	main.c:167: }
	ljmp	_oled_print_field
;------------------------------------------------------------
;Allocation info for local variables in function 'process_data2'
;------------------------------------------------------------
;	main.c:169: static void process_data2(void)
;	-----------------------------------------
;	 function process_data2
;	-----------------------------------------
_process_data2:
;	main.c:171: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:173: oled_clear_region(0, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x00
	lcall	_oled_clear_region
;	main.c:174: oled_set_position(0, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:175: oled_string("F:");
	mov	dptr,#___str_13
	mov	b, #0x80
	lcall	_oled_string
;	main.c:177: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
	jnz	00102$
;	main.c:178: return;
	ret
00102$:
;	main.c:180: oled_string("Hz");
	mov	dptr,#___str_14
	mov	b, #0x80
	lcall	_oled_string
;	main.c:182: oled_clear_region(1, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x01
	lcall	_oled_clear_region
;	main.c:183: oled_set_position(1, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:184: oled_string("E:");
	mov	dptr,#___str_15
	mov	b, #0x80
	lcall	_oled_string
;	main.c:186: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
	jnz	00104$
;	main.c:187: return;
	ret
00104$:
;	main.c:189: oled_string("kWh");
	mov	dptr,#___str_16
	mov	b, #0x80
	lcall	_oled_string
;	main.c:191: oled_clear_region(2, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x02
	lcall	_oled_clear_region
;	main.c:192: oled_set_position(2, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:193: oled_string("L:");
	mov	dptr,#___str_17
	mov	b, #0x80
	lcall	_oled_string
;	main.c:195: if (!oled_print_field(0))
	mov	dpl, #0x00
	lcall	_oled_print_field
	mov	a, dpl
	jnz	00106$
;	main.c:196: return;
	ret
00106$:
;	main.c:198: oled_char('A');
	mov	dpl, #0x41
;	main.c:199: }
	ljmp	_oled_char
;------------------------------------------------------------
;Allocation info for local variables in function 'process_error'
;------------------------------------------------------------
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:201: static void process_error(void)
;	-----------------------------------------
;	 function process_error
;	-----------------------------------------
_process_error:
;	main.c:205: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:207: oled_clear_error();
	lcall	_oled_clear_error
;	main.c:209: oled_set_position(5, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x05
	lcall	_oled_set_position
;	main.c:210: oled_string("ERROR:");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_oled_string
;	main.c:212: oled_set_position(7, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x07
	lcall	_oled_set_position
;	main.c:214: if (rx_buffer[parse_index] == 'N' &&
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x4e,00102$
;	main.c:215: rx_buffer[parse_index + 1] == 'O' &&
	mov	a,_parse_index
	mov	r6,a
	inc	a
	add	a, #_rx_buffer
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x4f,00102$
;	main.c:216: rx_buffer[parse_index + 2] == 'N' &&
	mov	a,#0x02
	add	a, r6
	add	a, #_rx_buffer
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x4e,00102$
;	main.c:217: rx_buffer[parse_index + 3] == 'E' &&
	mov	a,#0x03
	add	a, r6
	add	a, #_rx_buffer
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x45,00102$
;	main.c:218: rx_buffer[parse_index + 4] == '\0')
	mov	a,#0x04
	add	a, r6
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
	jnz	00102$
;	main.c:220: oled_string("NO ERROR");
	mov	dptr,#___str_8
	mov	b, #0x80
;	main.c:221: return;
	ljmp	_oled_string
00102$:
;	main.c:224: if (rx_buffer[parse_index] == '\0')
	mov	a,r7
	jnz	00108$
;	main.c:226: oled_string("UNKNOWN ERROR");
	mov	dptr,#___str_18
	mov	b, #0x80
;	main.c:227: return;
	ljmp	_oled_string
00108$:
;	main.c:230: for (i = 0; i < 21; i++)
	mov	r7,#0x00
00112$:
;	main.c:232: if (rx_buffer[parse_index] == '\0')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	jz	00114$
;	main.c:235: oled_char(rx_buffer[parse_index]);
	mov	dpl, r6
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:236: parse_index++;
	inc	_parse_index
;	main.c:230: for (i = 0; i < 21; i++)
	inc	r7
	cjne	r7,#0x15,00183$
00183$:
	jc	00112$
00114$:
;	main.c:238: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_command'
;------------------------------------------------------------
;command       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:240: static void process_command(char *command)
;	-----------------------------------------
;	 function process_command
;	-----------------------------------------
_process_command:
;	main.c:242: if (command[0] == 'R' &&
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x52,00547$
	sjmp	00548$
00547$:
	ljmp	00111$
00548$:
;	main.c:243: command[1] == 'E' &&
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
	cjne	r1,#0x45,00549$
	sjmp	00550$
00549$:
	ljmp	00111$
00550$:
;	main.c:244: command[2] == 'L' &&
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
	cjne	r1,#0x4c,00551$
	sjmp	00552$
00551$:
	ljmp	00111$
00552$:
;	main.c:245: command[3] == 'A' &&
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
	cjne	r1,#0x41,00553$
	sjmp	00554$
00553$:
	ljmp	00111$
00554$:
;	main.c:246: command[4] == 'Y' &&
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
	cjne	r1,#0x59,00555$
	sjmp	00556$
00555$:
	ljmp	00111$
00556$:
;	main.c:247: command[5] == ',')
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
	cjne	r1,#0x2c,00557$
	sjmp	00558$
00557$:
	ljmp	00111$
00558$:
;	main.c:249: if (command[6] == 'O' &&
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
	cjne	r1,#0x4f,00559$
	inc	a
00559$:
	mov	r3,a
	jz	00102$
;	main.c:250: command[7] == 'N' &&
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
;	main.c:251: command[8] == '\0')
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
;	main.c:253: RELAY_PIN = 0;
;	assignBit
	clr	_P2_6
;	main.c:254: relay_state = 1;
	mov	_relay_state,#0x01
;	main.c:256: uart_write_string("RELAY,ON\r\n");
	mov	dptr,#___str_19
	mov	b, #0x80
;	main.c:257: return;
	ljmp	_uart_write_string
00102$:
;	main.c:260: if (command[6] == 'O' &&
	mov	a,r3
	jz	00111$
;	main.c:261: command[7] == 'F' &&
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
;	main.c:262: command[8] == 'F' &&
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
;	main.c:263: command[9] == '\0')
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
;	main.c:265: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:266: relay_state = 0;
	mov	_relay_state,#0x00
;	main.c:268: uart_write_string("RELAY,OFF\r\n");
	mov	dptr,#___str_20
	mov	b, #0x80
;	main.c:269: return;
	ljmp	_uart_write_string
00111$:
;	main.c:273: if (command[0] == 'B' &&
	cjne	r4,#0x42,00571$
	sjmp	00572$
00571$:
	ljmp	00127$
00572$:
;	main.c:274: command[1] == 'U' &&
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
	cjne	r1,#0x55,00573$
	sjmp	00574$
00573$:
	ljmp	00127$
00574$:
;	main.c:275: command[2] == 'Z' &&
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
	cjne	r1,#0x5a,00575$
	sjmp	00576$
00575$:
	ljmp	00127$
00576$:
;	main.c:276: command[3] == 'Z' &&
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
	cjne	r1,#0x5a,00577$
	sjmp	00578$
00577$:
	ljmp	00127$
00578$:
;	main.c:277: command[4] == 'E' &&
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
	cjne	r1,#0x45,00579$
	sjmp	00580$
00579$:
	ljmp	00127$
00580$:
;	main.c:278: command[5] == 'R' &&
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
	cjne	r1,#0x52,00581$
	sjmp	00582$
00581$:
	ljmp	00127$
00582$:
;	main.c:279: command[6] == ',')
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
	cjne	r1,#0x2c,00583$
	sjmp	00584$
00583$:
	ljmp	00127$
00584$:
;	main.c:281: if (command[7] == 'O' &&
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
	cjne	r1,#0x4f,00585$
	inc	a
00585$:
	mov	r3,a
	jz	00118$
;	main.c:282: command[8] == 'N' &&
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
;	main.c:283: command[9] == '\0')
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
;	main.c:285: GREEN_LED_PIN = 1;
;	assignBit
	setb	_P2_0
;	main.c:286: RED_LED_PIN = 0;
;	assignBit
	clr	_P2_1
;	main.c:287: BUZZER_PIN = 0;
;	assignBit
	clr	_P2_7
;	main.c:288: buzzer_state = 1;
	mov	_buzzer_state,#0x01
;	main.c:290: uart_write_string("BUZZER,ON\r\n");
	mov	dptr,#___str_21
	mov	b, #0x80
;	main.c:291: return;
	ljmp	_uart_write_string
00118$:
;	main.c:294: if (command[7] == 'O' &&
	mov	a,r3
	jz	00127$
;	main.c:295: command[8] == 'F' &&
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
;	main.c:296: command[9] == 'F' &&
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
;	main.c:297: command[10] == '\0')
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
;	main.c:299: RED_LED_PIN = 1;
;	assignBit
	setb	_P2_1
;	main.c:300: GREEN_LED_PIN = 0;
;	assignBit
	clr	_P2_0
;	main.c:301: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:302: buzzer_state = 0;
	mov	_buzzer_state,#0x00
;	main.c:304: uart_write_string("BUZZER,OFF\r\n");
	mov	dptr,#___str_22
	mov	b, #0x80
;	main.c:305: return;
	ljmp	_uart_write_string
00127$:
;	main.c:309: if (command[0] == 'S' &&
	cjne	r4,#0x53,00597$
	sjmp	00598$
00597$:
	ljmp	00135$
00598$:
;	main.c:310: command[1] == 'T' &&
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
	cjne	r1,#0x54,00599$
	sjmp	00600$
00599$:
	ljmp	00135$
00600$:
;	main.c:311: command[2] == 'A' &&
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
	cjne	r1,#0x41,00601$
	sjmp	00602$
00601$:
	ljmp	00135$
00602$:
;	main.c:312: command[3] == 'T' &&
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
	cjne	r1,#0x54,00603$
	sjmp	00604$
00603$:
	ljmp	00135$
00604$:
;	main.c:313: command[4] == 'U' &&
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
	cjne	r1,#0x55,00605$
	sjmp	00606$
00605$:
	sjmp	00135$
00606$:
;	main.c:314: command[5] == 'S' &&
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
;	main.c:315: command[6] == '\0')
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
;	main.c:317: uart_write_string("STATUS,RELAY=");
	mov	dptr,#___str_23
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:318: uart_write_string(relay_state ? "ON" : "OFF");
	mov	a,_relay_state
	jz	00165$
	mov	r2,#___str_24
	mov	r3,#(___str_24 >> 8)
	sjmp	00166$
00165$:
	mov	r2,#___str_25
	mov	r3,#(___str_25 >> 8)
00166$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl, r2
	mov	dph, r1
	mov	b, r3
	lcall	_uart_write_string
;	main.c:319: uart_write_string(",BUZZER=");
	mov	dptr,#___str_26
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:320: uart_write_string(buzzer_state ? "ON" : "OFF");
	mov	a,_buzzer_state
	jz	00167$
	mov	r2,#___str_24
	mov	r3,#(___str_24 >> 8)
	sjmp	00168$
00167$:
	mov	r2,#___str_25
	mov	r3,#(___str_25 >> 8)
00168$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl, r2
	mov	dph, r1
	mov	b, r3
	lcall	_uart_write_string
;	main.c:321: uart_write_string("\r\n");
	mov	dptr,#___str_27
	mov	b, #0x80
;	main.c:323: return;
	ljmp	_uart_write_string
00135$:
;	main.c:326: if (command[0] == 'D' &&
	clr	a
	cjne	r4,#0x44,00612$
	inc	a
00612$:
	mov	r3,a
	jz	00143$
;	main.c:327: command[1] == 'A' &&
	mov	a,#0x01
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
	cjne	r0,#0x41,00143$
;	main.c:328: command[2] == 'T' &&
	mov	a,#0x02
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
	cjne	r0,#0x54,00143$
;	main.c:329: command[3] == 'A' &&
	mov	a,#0x03
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
	cjne	r0,#0x41,00143$
;	main.c:330: command[4] == '1' &&
	mov	a,#0x04
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
	cjne	r0,#0x31,00143$
;	main.c:331: command[5] == ',')
	mov	a,#0x05
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
	cjne	r0,#0x2c,00143$
;	main.c:333: process_data1();
;	main.c:334: return;
	ljmp	_process_data1
00143$:
;	main.c:337: if (command[0] == 'D' &&
	mov	a,r3
	jz	00150$
;	main.c:338: command[1] == 'A' &&
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
	cjne	r1,#0x41,00150$
;	main.c:339: command[2] == 'T' &&
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
	cjne	r1,#0x54,00150$
;	main.c:340: command[3] == 'A' &&
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
	cjne	r1,#0x41,00150$
;	main.c:341: command[4] == '2' &&
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
	cjne	r1,#0x32,00150$
;	main.c:342: command[5] == ',')
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
	cjne	r1,#0x2c,00150$
;	main.c:344: process_data2();
;	main.c:345: return;
	ljmp	_process_data2
00150$:
;	main.c:348: if (command[0] == 'E' &&
	cjne	r4,#0x45,00636$
	sjmp	00637$
00636$:
	ret
00637$:
;	main.c:349: command[1] == 'R' &&
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
	mov	r2,a
	cjne	r2,#0x52,00163$
;	main.c:350: command[2] == 'R' &&
	mov	a,#0x02
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
	mov	r2,a
	cjne	r2,#0x52,00163$
;	main.c:351: command[3] == 'O' &&
	mov	a,#0x03
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
	mov	r2,a
	cjne	r2,#0x4f,00163$
;	main.c:352: command[4] == 'R' &&
	mov	a,#0x04
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
	mov	r2,a
	cjne	r2,#0x52,00163$
;	main.c:353: command[5] == ',')
	mov	a,#0x05
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2c,00163$
;	main.c:355: process_error();
;	main.c:356: return;
;	main.c:358: }
	ljmp	_process_error
00163$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_receive_process'
;------------------------------------------------------------
;data          Allocated with name '_uart_receive_process_data_10000_89'
;------------------------------------------------------------
;	main.c:360: static void uart_receive_process(void)
;	-----------------------------------------
;	 function uart_receive_process
;	-----------------------------------------
_uart_receive_process:
;	main.c:364: if (!uart_read_byte(&data))
	mov	dptr,#_uart_receive_process_data_10000_89
	mov	b, #0x40
	lcall	_uart_read_byte
	mov	a, dpl
	jnz	00102$
;	main.c:365: return;
	ret
00102$:
;	main.c:367: if (data == '\r' || data == '\n')
	mov	a,#0x0d
	cjne	a,_uart_receive_process_data_10000_89,00161$
	sjmp	00105$
00161$:
	mov	a,#0x0a
	cjne	a,_uart_receive_process_data_10000_89,00106$
00105$:
;	main.c:369: if (rx_length > 0)
	mov	a,_rx_length
	jz	00104$
;	main.c:371: rx_buffer[rx_length] = '\0';
	mov	a,_rx_length
	add	a, #_rx_buffer
	mov	r0,a
	mov	@r0,#0x00
;	main.c:373: process_command((char *)rx_buffer);
	mov	dptr,#_rx_buffer
	mov	b, #0x40
	lcall	_process_command
;	main.c:375: rx_length = 0;
	mov	_rx_length,#0x00
00104$:
;	main.c:378: return;
	ret
00106$:
;	main.c:381: if (data == 8 || data == 127)
	mov	a,#0x08
	cjne	a,_uart_receive_process_data_10000_89,00165$
	sjmp	00110$
00165$:
	mov	a,#0x7f
	cjne	a,_uart_receive_process_data_10000_89,00111$
00110$:
;	main.c:383: if (rx_length > 0)
	mov	a,_rx_length
	jz	00109$
;	main.c:384: rx_length--;
	dec	_rx_length
00109$:
;	main.c:386: return;
	ret
00111$:
;	main.c:389: if (rx_length < RX_BUFFER_SIZE - 1)
	mov	a,#0x100 - 0x1f
	add	a,_rx_length
	jc	00114$
;	main.c:391: rx_buffer[rx_length++] = data;
	mov	r7,_rx_length
	inc	_rx_length
	mov	a,r7
	add	a, #_rx_buffer
	mov	r0,a
	mov	@r0,_uart_receive_process_data_10000_89
	ret
00114$:
;	main.c:395: rx_length = 0;
	mov	_rx_length,#0x00
;	main.c:397: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;uart_status   Allocated to registers 
;------------------------------------------------------------
;	main.c:399: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:403: EA = 0;
;	assignBit
	clr	_EA
;	main.c:405: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:406: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:407: GREEN_LED_PIN = 0;
;	assignBit
	clr	_P2_0
;	main.c:409: relay_state = 0;
	mov	_relay_state,#0x00
;	main.c:410: buzzer_state = 0;
	mov	_buzzer_state,#0x00
;	main.c:412: timer0_init();
	lcall	_timer0_init
;	main.c:414: EA = 1;
;	assignBit
	setb	_EA
;	main.c:416: oled_init();
	lcall	_oled_init
;	main.c:417: oled_initial_screen();
	lcall	_oled_initial_screen
;	main.c:419: uart_status = uart_init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_uart_init
	mov	a, dpl
;	main.c:421: if (!uart_status)
	jnz	00105$
;	main.c:423: oled_clear();
	lcall	_oled_clear
;	main.c:424: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:425: oled_string("UART INIT FAILED");
	mov	dptr,#___str_28
	mov	b, #0x80
	lcall	_oled_string
;	main.c:427: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:428: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:430: while (1);
00102$:
	sjmp	00102$
00105$:
;	main.c:433: uart_write_string("UART READY\r\n");
	mov	dptr,#___str_29
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:435: while (1)
00107$:
;	main.c:437: uart_receive_process();
	lcall	_uart_receive_process
;	main.c:439: }
	sjmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "V:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "F:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "I:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "E:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "P:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "L:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "PF:--"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "ERROR:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "NO ERROR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "V:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "I:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "P:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "PF:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "F:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Hz"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "E:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "kWh"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "L:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "UNKNOWN ERROR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "RELAY,ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "RELAY,OFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "BUZZER,ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "BUZZER,OFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "STATUS,RELAY="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "ON"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "OFF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii ",BUZZER="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "UART INIT FAILED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "UART READY"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
