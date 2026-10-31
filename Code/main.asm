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
_fault_active:
	.ds 1
_parse_index:
	.ds 1
_button_last_sample:
	.ds 1
_button_stable_state:
	.ds 1
_button_last_change_time:
	.ds 4
_timer0_isr_count_10000_28:
	.ds 1
_oled_clear_region_PARM_2:
	.ds 1
_oled_clear_region_PARM_3:
	.ds 1
_uart_receive_process_data_10000_132:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;	main.c:48: static unsigned char count = 0;
	mov	_timer0_isr_count_10000_28,#0x00
;	main.c:16: volatile unsigned long int delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:19: static unsigned char rx_length = 0;
	mov	_rx_length,a
;	main.c:20: static unsigned char relay_state = 0;
	mov	_relay_state,a
;	main.c:21: static unsigned char buzzer_state = 0;
	mov	_buzzer_state,a
;	main.c:22: static unsigned char fault_active = 0;
	mov	_fault_active,a
;	main.c:23: static unsigned char parse_index = 0;
	mov	_parse_index,a
;	main.c:25: static unsigned char button_last_sample = 1;
	mov	_button_last_sample,#0x01
;	main.c:26: static unsigned char button_stable_state = 1;
	mov	_button_stable_state,#0x01
;	main.c:27: static unsigned long int button_last_change_time = 0;
	mov	_button_last_change_time,a
	mov	(_button_last_change_time + 1),a
	mov	(_button_last_change_time + 2),a
	mov	(_button_last_change_time + 3),a
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
;	main.c:29: void delay_us(unsigned int value)
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
;	main.c:33: while (value--)
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
;	main.c:35: for (i = 0; i < 4; i++);
	mov	r5,#0x04
00107$:
	djnz	r5,00107$
	sjmp	00102$
00108$:
;	main.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;value         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:39: void delay_ms(unsigned long int value)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:41: delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:43: while (delay_time_ms < value);
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
;	main.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;count         Allocated with name '_timer0_isr_count_10000_28'
;------------------------------------------------------------
;	main.c:46: void timer0_isr(void) __interrupt(1)
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
;	main.c:50: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:51: count++;
	inc	_timer0_isr_count_10000_28
;	main.c:53: if (count >= 10)
	mov	a,#0x100 - 0x0a
	add	a,_timer0_isr_count_10000_28
	jnc	00103$
;	main.c:55: count = 0;
	mov	_timer0_isr_count_10000_28,#0x00
;	main.c:56: delay_time_ms++;
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
;	main.c:58: }
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
;Allocation info for local variables in function 'get_millis'
;------------------------------------------------------------
;value         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:60: static unsigned long int get_millis(void)
;	-----------------------------------------
;	 function get_millis
;	-----------------------------------------
_get_millis:
;	main.c:64: EA = 0;
;	assignBit
	clr	_EA
;	main.c:65: value = delay_time_ms;
	mov	r4,_delay_time_ms
	mov	r5,(_delay_time_ms + 1)
	mov	r6,(_delay_time_ms + 2)
	mov	r7,(_delay_time_ms + 3)
;	main.c:66: EA = 1;
;	assignBit
	setb	_EA
;	main.c:68: return value;
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	main.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relay_set'
;------------------------------------------------------------
;state         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:71: static void relay_set(unsigned char state)
;	-----------------------------------------
;	 function relay_set
;	-----------------------------------------
_relay_set:
;	main.c:73: if (state)
	mov	a,dpl
	jz	00102$
;	main.c:75: RELAY_PIN = 0;
;	assignBit
	clr	_P2_6
;	main.c:76: relay_state = 1;
	mov	_relay_state,#0x01
	ret
00102$:
;	main.c:80: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:81: relay_state = 0;
	mov	_relay_state,#0x00
;	main.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buzzer_set'
;------------------------------------------------------------
;state         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:85: static void buzzer_set(unsigned char state)
;	-----------------------------------------
;	 function buzzer_set
;	-----------------------------------------
_buzzer_set:
;	main.c:87: if (state)
	mov	a,dpl
	jz	00102$
;	main.c:89: GREEN_LED_PIN = 1;
;	assignBit
	setb	_P2_0
;	main.c:90: RED_LED_PIN = 0;
;	assignBit
	clr	_P2_1
;	main.c:91: BUZZER_PIN = 0;
;	assignBit
	clr	_P2_7
;	main.c:92: buzzer_state = 1;
	mov	_buzzer_state,#0x01
	ret
00102$:
;	main.c:96: RED_LED_PIN = 1;
;	assignBit
	setb	_P2_1
;	main.c:97: GREEN_LED_PIN = 0;
;	assignBit
	clr	_P2_0
;	main.c:98: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:99: buzzer_state = 0;
	mov	_buzzer_state,#0x00
;	main.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'relay_button_process'
;------------------------------------------------------------
;sample        Allocated to registers r7 
;now           Allocated to registers r3 r4 r5 r6 
;------------------------------------------------------------
;	main.c:103: static void relay_button_process(void)
;	-----------------------------------------
;	 function relay_button_process
;	-----------------------------------------
_relay_button_process:
;	main.c:108: sample = RELAY_BUTTON_PIN;
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	r7,a
;	main.c:109: now = get_millis();
	push	ar7
	lcall	_get_millis
	mov	r3, dpl
	mov	r4, dph
	mov	r5, b
	mov	r6, a
	pop	ar7
;	main.c:111: if (sample != button_last_sample)
	mov	a,r7
	cjne	a,_button_last_sample,00158$
	sjmp	00102$
00158$:
;	main.c:113: button_last_sample = sample;
	mov	_button_last_sample,r7
;	main.c:114: button_last_change_time = now;
	mov	_button_last_change_time,r3
	mov	(_button_last_change_time + 1),r4
	mov	(_button_last_change_time + 2),r5
	mov	(_button_last_change_time + 3),r6
00102$:
;	main.c:117: if ((now - button_last_change_time) >= BUTTON_DEBOUNCE_MS)
	mov	a,r3
	clr	c
	subb	a,_button_last_change_time
	mov	r3,a
	mov	a,r4
	subb	a,(_button_last_change_time + 1)
	mov	r4,a
	mov	a,r5
	subb	a,(_button_last_change_time + 2)
	mov	r5,a
	mov	a,r6
	subb	a,(_button_last_change_time + 3)
	mov	r6,a
	clr	c
	mov	a,r3
	subb	a,#0x19
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	jc	00114$
;	main.c:119: if (button_stable_state != button_last_sample)
	mov	a,_button_last_sample
	cjne	a,_button_stable_state,00160$
	ret
00160$:
;	main.c:121: button_stable_state = button_last_sample;
;	main.c:123: if (button_stable_state == 0)
	mov	a,_button_last_sample
	mov	_button_stable_state,a
	jnz	00114$
;	main.c:125: if (relay_state)
	mov	a,_relay_state
	jz	00106$
;	main.c:127: relay_set(0);
	mov	dpl, #0x00
	ljmp	_relay_set
00106$:
;	main.c:131: if (!fault_active)
	mov	a,_fault_active
	jnz	00114$
;	main.c:133: relay_set(1);
	mov	dpl, #0x01
;	main.c:139: }
	ljmp	_relay_set
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_clear_region'
;------------------------------------------------------------
;column        Allocated with name '_oled_clear_region_PARM_2'
;characters    Allocated with name '_oled_clear_region_PARM_3'
;page          Allocated to registers r7 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:141: static void oled_clear_region(unsigned char page,
;	-----------------------------------------
;	 function oled_clear_region
;	-----------------------------------------
_oled_clear_region:
;	main.c:147: oled_set_position(page, column);
	mov	_oled_set_position_PARM_2,_oled_clear_region_PARM_2
	lcall	_oled_set_position
;	main.c:149: for (i = 0; i < characters; i++)
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r7
	subb	a,_oled_clear_region_PARM_3
	jnc	00105$
;	main.c:150: oled_char(' ');
	mov	dpl, #0x20
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:149: for (i = 0; i < characters; i++)
	inc	r7
	sjmp	00103$
00105$:
;	main.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_clear_error'
;------------------------------------------------------------
;	main.c:153: static void oled_clear_error(void)
;	-----------------------------------------
;	 function oled_clear_error
;	-----------------------------------------
_oled_clear_error:
;	main.c:155: oled_clear_region(5, 0, 21);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x15
	mov	dpl, #0x05
	lcall	_oled_clear_region
;	main.c:156: oled_clear_region(7, 0, 21);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x15
	mov	dpl, #0x07
;	main.c:157: }
	ljmp	_oled_clear_region
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_print_field'
;------------------------------------------------------------
;comma_expected Allocated to registers r7 
;count         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:159: static unsigned char oled_print_field(unsigned char comma_expected)
;	-----------------------------------------
;	 function oled_print_field
;	-----------------------------------------
_oled_print_field:
	mov	r7, dpl
;	main.c:161: unsigned char count = 0;
	mov	r6,#0x00
;	main.c:163: if (rx_buffer[parse_index] == '\0')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
;	main.c:164: return 0;
	jnz	00106$
	mov	dpl,a
;	main.c:166: while (rx_buffer[parse_index] != '\0' &&
	ret
00106$:
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jz	00108$
;	main.c:167: rx_buffer[parse_index] != ',')
	cjne	r5,#0x2c,00185$
	sjmp	00108$
00185$:
;	main.c:169: if (count < 20)
	cjne	r6,#0x14,00186$
00186$:
	jnc	00104$
;	main.c:170: oled_char(rx_buffer[parse_index]);
	mov	dpl, r5
	push	ar7
	push	ar6
	lcall	_oled_char
	pop	ar6
	pop	ar7
00104$:
;	main.c:172: count++;
	inc	r6
;	main.c:173: parse_index++;
	inc	_parse_index
	sjmp	00106$
00108$:
;	main.c:176: if (count == 0)
	mov	a,r6
;	main.c:177: return 0;
	jnz	00110$
	mov	dpl,a
	ret
00110$:
;	main.c:179: if (comma_expected)
	mov	a,r7
	jz	00116$
;	main.c:181: if (rx_buffer[parse_index] != ',')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x2c,00190$
	sjmp	00112$
00190$:
;	main.c:182: return 0;
	mov	dpl, #0x00
	ret
00112$:
;	main.c:184: parse_index++;
	inc	_parse_index
	sjmp	00117$
00116$:
;	main.c:188: if (rx_buffer[parse_index] != '\0')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
	jz	00117$
;	main.c:189: return 0;
	mov	dpl, #0x00
	ret
00117$:
;	main.c:192: return 1;
	mov	dpl, #0x01
;	main.c:193: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oled_initial_screen'
;------------------------------------------------------------
;	main.c:195: static void oled_initial_screen(void)
;	-----------------------------------------
;	 function oled_initial_screen
;	-----------------------------------------
_oled_initial_screen:
;	main.c:197: oled_clear();
	lcall	_oled_clear
;	main.c:199: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:200: oled_string("V:--");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_oled_string
;	main.c:202: oled_set_position(0, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:203: oled_string("F:--");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_oled_string
;	main.c:205: oled_set_position(1, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:206: oled_string("I:--");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_oled_string
;	main.c:208: oled_set_position(1, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:209: oled_string("E:--");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_oled_string
;	main.c:211: oled_set_position(2, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:212: oled_string("P:--");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_oled_string
;	main.c:214: oled_set_position(2, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:215: oled_string("L:--");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_oled_string
;	main.c:217: oled_set_position(3, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:218: oled_string("PF:--");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_oled_string
;	main.c:220: oled_set_position(3, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:221: oled_string("T:--C");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_oled_string
;	main.c:223: oled_set_position(5, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x05
	lcall	_oled_set_position
;	main.c:224: oled_string("ERROR:");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_oled_string
;	main.c:226: oled_set_position(7, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x07
	lcall	_oled_set_position
;	main.c:227: oled_string("NO ERROR");
	mov	dptr,#___str_9
	mov	b, #0x80
;	main.c:228: }
	ljmp	_oled_string
;------------------------------------------------------------
;Allocation info for local variables in function 'process_data1'
;------------------------------------------------------------
;	main.c:230: static unsigned char process_data1(void)
;	-----------------------------------------
;	 function process_data1
;	-----------------------------------------
_process_data1:
;	main.c:232: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:234: oled_clear_region(0, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x00
	lcall	_oled_clear_region
;	main.c:235: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:236: oled_string("V:");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_oled_string
;	main.c:238: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:239: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	main.c:241: oled_clear_region(1, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x01
	lcall	_oled_clear_region
;	main.c:242: oled_set_position(1, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:243: oled_string("I:");
	mov	dptr,#___str_11
	mov	b, #0x80
	lcall	_oled_string
;	main.c:245: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:246: return 0;
	jnz	00104$
	mov	dpl,a
	ret
00104$:
;	main.c:248: oled_char('A');
	mov	dpl, #0x41
	lcall	_oled_char
;	main.c:250: oled_clear_region(2, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x02
	lcall	_oled_clear_region
;	main.c:251: oled_set_position(2, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:252: oled_string("P:");
	mov	dptr,#___str_12
	mov	b, #0x80
	lcall	_oled_string
;	main.c:254: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:255: return 0;
	jnz	00106$
	mov	dpl,a
	ret
00106$:
;	main.c:257: oled_char('W');
	mov	dpl, #0x57
	lcall	_oled_char
;	main.c:259: oled_clear_region(3, 0, 10);
	mov	_oled_clear_region_PARM_2,#0x00
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x03
	lcall	_oled_clear_region
;	main.c:260: oled_set_position(3, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:261: oled_string("PF:");
	mov	dptr,#___str_13
	mov	b, #0x80
	lcall	_oled_string
;	main.c:263: if (!oled_print_field(0))
	mov	dpl, #0x00
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:264: return 0;
	jnz	00108$
	mov	dpl,a
	ret
00108$:
;	main.c:266: return 1;
	mov	dpl, #0x01
;	main.c:267: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_data2'
;------------------------------------------------------------
;	main.c:269: static unsigned char process_data2(void)
;	-----------------------------------------
;	 function process_data2
;	-----------------------------------------
_process_data2:
;	main.c:271: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:273: oled_clear_region(0, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x00
	lcall	_oled_clear_region
;	main.c:274: oled_set_position(0, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:275: oled_string("F:");
	mov	dptr,#___str_14
	mov	b, #0x80
	lcall	_oled_string
;	main.c:277: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:278: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	main.c:280: oled_string("Hz");
	mov	dptr,#___str_15
	mov	b, #0x80
	lcall	_oled_string
;	main.c:282: oled_clear_region(1, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x01
	lcall	_oled_clear_region
;	main.c:283: oled_set_position(1, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x01
	lcall	_oled_set_position
;	main.c:284: oled_string("E:");
	mov	dptr,#___str_16
	mov	b, #0x80
	lcall	_oled_string
;	main.c:286: if (!oled_print_field(1))
	mov	dpl, #0x01
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:287: return 0;
	jnz	00104$
	mov	dpl,a
	ret
00104$:
;	main.c:289: oled_string("kWh");
	mov	dptr,#___str_17
	mov	b, #0x80
	lcall	_oled_string
;	main.c:291: oled_clear_region(2, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x02
	lcall	_oled_clear_region
;	main.c:292: oled_set_position(2, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:293: oled_string("L:");
	mov	dptr,#___str_18
	mov	b, #0x80
	lcall	_oled_string
;	main.c:295: if (!oled_print_field(0))
	mov	dpl, #0x00
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:296: return 0;
	jnz	00106$
	mov	dpl,a
	ret
00106$:
;	main.c:298: oled_char('A');
	mov	dpl, #0x41
	lcall	_oled_char
;	main.c:300: return 1;
	mov	dpl, #0x01
;	main.c:301: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_data3'
;------------------------------------------------------------
;	main.c:303: static unsigned char process_data3(void)
;	-----------------------------------------
;	 function process_data3
;	-----------------------------------------
_process_data3:
;	main.c:305: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:307: oled_clear_region(3, 66, 10);
	mov	_oled_clear_region_PARM_2,#0x42
	mov	_oled_clear_region_PARM_3,#0x0a
	mov	dpl, #0x03
	lcall	_oled_clear_region
;	main.c:308: oled_set_position(3, 66);
	mov	_oled_set_position_PARM_2,#0x42
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:309: oled_string("T:");
	mov	dptr,#___str_19
	mov	b, #0x80
	lcall	_oled_string
;	main.c:311: if (!oled_print_field(0))
	mov	dpl, #0x00
	lcall	_oled_print_field
	mov	a, dpl
;	main.c:312: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	main.c:314: oled_char('C');
	mov	dpl, #0x43
	lcall	_oled_char
;	main.c:316: return 1;
	mov	dpl, #0x01
;	main.c:317: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_error'
;------------------------------------------------------------
;i             Allocated to registers r7 
;is_none       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:319: static unsigned char process_error(void)
;	-----------------------------------------
;	 function process_error
;	-----------------------------------------
_process_error:
;	main.c:322: unsigned char is_none = 0;
	mov	r7,#0x00
;	main.c:324: parse_index = 6;
	mov	_parse_index,#0x06
;	main.c:326: if (rx_buffer[parse_index] == '\0')
	mov	a,(_rx_buffer + 0x0006)
	mov	r6,a
;	main.c:327: return 0;
	jnz	00102$
	mov	dpl,a
	ret
00102$:
;	main.c:329: if (rx_buffer[parse_index] == 'N' &&
	cjne	r6,#0x4e,00104$
;	main.c:330: rx_buffer[parse_index + 1] == 'O' &&
	mov	a,#0x4f
	cjne	a,(_rx_buffer + 0x0007),00104$
;	main.c:331: rx_buffer[parse_index + 2] == 'N' &&
	mov	a,#0x4e
	cjne	a,(_rx_buffer + 0x0008),00104$
;	main.c:332: rx_buffer[parse_index + 3] == 'E' &&
	mov	a,#0x45
	cjne	a,(_rx_buffer + 0x0009),00104$
;	main.c:333: rx_buffer[parse_index + 4] == '\0')
	mov	a,(_rx_buffer + 0x000a)
	jnz	00104$
;	main.c:335: is_none = 1;
	mov	r7,#0x01
00104$:
;	main.c:338: if (is_none)
	mov	a,r7
	jz	00110$
;	main.c:340: fault_active = 0;
	mov	_fault_active,#0x00
;	main.c:341: oled_clear_error();
	lcall	_oled_clear_error
;	main.c:343: oled_set_position(5, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x05
	lcall	_oled_set_position
;	main.c:344: oled_string("ERROR:");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_oled_string
;	main.c:346: oled_set_position(7, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x07
	lcall	_oled_set_position
;	main.c:347: oled_string("NO ERROR");
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_oled_string
;	main.c:349: return 1;
	mov	dpl, #0x01
	ret
00110$:
;	main.c:352: fault_active = 1;
	mov	_fault_active,#0x01
;	main.c:353: relay_set(0);
	mov	dpl, #0x00
	lcall	_relay_set
;	main.c:355: oled_clear_error();
	lcall	_oled_clear_error
;	main.c:357: oled_set_position(5, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x05
	lcall	_oled_set_position
;	main.c:358: oled_string("ERROR:");
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_oled_string
;	main.c:360: oled_set_position(7, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x07
	lcall	_oled_set_position
;	main.c:362: for (i = 0; i < 21; i++)
	mov	r7,#0x00
00114$:
;	main.c:364: if (rx_buffer[parse_index] == '\0')
	mov	a,_parse_index
	add	a, #_rx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	jz	00113$
;	main.c:367: oled_char(rx_buffer[parse_index]);
	mov	dpl, r6
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:368: parse_index++;
	inc	_parse_index
;	main.c:362: for (i = 0; i < 21; i++)
	inc	r7
	cjne	r7,#0x15,00193$
00193$:
	jc	00114$
00113$:
;	main.c:371: return 1;
	mov	dpl, #0x01
;	main.c:372: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_command'
;------------------------------------------------------------
;command       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:374: static void process_command(char *command)
;	-----------------------------------------
;	 function process_command
;	-----------------------------------------
_process_command:
;	main.c:376: if (command[0] == 'R' &&
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x52,00651$
	sjmp	00652$
00651$:
	ljmp	00114$
00652$:
;	main.c:377: command[1] == 'E' &&
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
	cjne	r1,#0x45,00653$
	sjmp	00654$
00653$:
	ljmp	00114$
00654$:
;	main.c:378: command[2] == 'L' &&
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
	cjne	r1,#0x4c,00655$
	sjmp	00656$
00655$:
	ljmp	00114$
00656$:
;	main.c:379: command[3] == 'A' &&
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
	cjne	r1,#0x41,00657$
	sjmp	00658$
00657$:
	ljmp	00114$
00658$:
;	main.c:380: command[4] == 'Y' &&
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
	cjne	r1,#0x59,00659$
	sjmp	00660$
00659$:
	ljmp	00114$
00660$:
;	main.c:381: command[5] == ',')
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
	cjne	r1,#0x2c,00661$
	sjmp	00662$
00661$:
	ljmp	00114$
00662$:
;	main.c:383: if (command[6] == 'O' &&
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
	cjne	r1,#0x4f,00663$
	inc	a
00663$:
	mov	r3,a
	jz	00105$
;	main.c:384: command[7] == 'N' &&
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
	cjne	r0,#0x4e,00105$
;	main.c:385: command[8] == '\0')
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
	jnz	00105$
;	main.c:387: if (!fault_active)
	mov	a,_fault_active
	jnz	00102$
;	main.c:389: relay_set(1);
	mov	dpl, #0x01
	lcall	_relay_set
	sjmp	00103$
00102$:
;	main.c:393: relay_set(0);
	mov	dpl, #0x00
	lcall	_relay_set
00103$:
;	main.c:397: relay_state ? "RELAY,ON\r\n" : "RELAY,OFF\r\n"
	mov	a,_relay_state
	jz	00183$
	mov	r1,#___str_20
	mov	r2,#(___str_20 >> 8)
	sjmp	00184$
00183$:
;	main.c:398: );
	mov	r1,#___str_21
	mov	r2,#(___str_21 >> 8)
00184$:
	mov	ar0,r2
	mov	r2,#0x80
	mov	dpl, r1
	mov	dph, r0
	mov	b, r2
;	main.c:400: return;
	ljmp	_uart_write_string
00105$:
;	main.c:403: if (command[6] == 'O' &&
	mov	a,r3
	jz	00114$
;	main.c:404: command[7] == 'F' &&
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
	cjne	r1,#0x46,00114$
;	main.c:405: command[8] == 'F' &&
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
	cjne	r1,#0x46,00114$
;	main.c:406: command[9] == '\0')
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
;	main.c:408: relay_set(0);
	jnz	00114$
	mov	dpl,a
	lcall	_relay_set
;	main.c:410: uart_write_string("RELAY,OFF\r\n");
	mov	dptr,#___str_21
	mov	b, #0x80
;	main.c:411: return;
	ljmp	_uart_write_string
00114$:
;	main.c:415: if (command[0] == 'B' &&
	cjne	r4,#0x42,00677$
	sjmp	00678$
00677$:
	ljmp	00130$
00678$:
;	main.c:416: command[1] == 'U' &&
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
	cjne	r1,#0x55,00679$
	sjmp	00680$
00679$:
	ljmp	00130$
00680$:
;	main.c:417: command[2] == 'Z' &&
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
	cjne	r1,#0x5a,00681$
	sjmp	00682$
00681$:
	ljmp	00130$
00682$:
;	main.c:418: command[3] == 'Z' &&
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
	cjne	r1,#0x5a,00683$
	sjmp	00684$
00683$:
	ljmp	00130$
00684$:
;	main.c:419: command[4] == 'E' &&
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
	cjne	r1,#0x45,00685$
	sjmp	00686$
00685$:
	ljmp	00130$
00686$:
;	main.c:420: command[5] == 'R' &&
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
	cjne	r1,#0x52,00687$
	sjmp	00688$
00687$:
	ljmp	00130$
00688$:
;	main.c:421: command[6] == ',')
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
	cjne	r1,#0x2c,00689$
	sjmp	00690$
00689$:
	ljmp	00130$
00690$:
;	main.c:423: if (command[7] == 'O' &&
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
	cjne	r1,#0x4f,00691$
	inc	a
00691$:
	mov	r3,a
	jz	00121$
;	main.c:424: command[8] == 'N' &&
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
	cjne	r0,#0x4e,00121$
;	main.c:425: command[9] == '\0')
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
	jnz	00121$
;	main.c:427: buzzer_set(1);
	mov	dpl, #0x01
	lcall	_buzzer_set
;	main.c:429: uart_write_string("BUZZER,ON\r\n");
	mov	dptr,#___str_22
	mov	b, #0x80
;	main.c:430: return;
	ljmp	_uart_write_string
00121$:
;	main.c:433: if (command[7] == 'O' &&
	mov	a,r3
	jz	00130$
;	main.c:434: command[8] == 'F' &&
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
	cjne	r1,#0x46,00130$
;	main.c:435: command[9] == 'F' &&
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
	cjne	r1,#0x46,00130$
;	main.c:436: command[10] == '\0')
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
;	main.c:438: buzzer_set(0);
	jnz	00130$
	mov	dpl,a
	lcall	_buzzer_set
;	main.c:440: uart_write_string("BUZZER,OFF\r\n");
	mov	dptr,#___str_23
	mov	b, #0x80
;	main.c:441: return;
	ljmp	_uart_write_string
00130$:
;	main.c:445: if (command[0] == 'S' &&
	cjne	r4,#0x53,00703$
	sjmp	00704$
00703$:
	ljmp	00138$
00704$:
;	main.c:446: command[1] == 'T' &&
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
	cjne	r1,#0x54,00705$
	sjmp	00706$
00705$:
	ljmp	00138$
00706$:
;	main.c:447: command[2] == 'A' &&
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
	cjne	r1,#0x41,00707$
	sjmp	00708$
00707$:
	ljmp	00138$
00708$:
;	main.c:448: command[3] == 'T' &&
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
	cjne	r1,#0x54,00709$
	sjmp	00710$
00709$:
	ljmp	00138$
00710$:
;	main.c:449: command[4] == 'U' &&
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
	cjne	r1,#0x55,00711$
	sjmp	00712$
00711$:
	sjmp	00138$
00712$:
;	main.c:450: command[5] == 'S' &&
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
	cjne	r1,#0x53,00138$
;	main.c:451: command[6] == '\0')
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
	jnz	00138$
;	main.c:453: uart_write_string("STATUS,RELAY=");
	mov	dptr,#___str_24
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:454: uart_write_string(relay_state ? "ON" : "OFF");
	mov	a,_relay_state
	jz	00185$
	mov	r2,#___str_25
	mov	r3,#(___str_25 >> 8)
	sjmp	00186$
00185$:
	mov	r2,#___str_26
	mov	r3,#(___str_26 >> 8)
00186$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl, r2
	mov	dph, r1
	mov	b, r3
	lcall	_uart_write_string
;	main.c:455: uart_write_string(",BUZZER=");
	mov	dptr,#___str_27
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:456: uart_write_string(buzzer_state ? "ON" : "OFF");
	mov	a,_buzzer_state
	jz	00187$
	mov	r2,#___str_25
	mov	r3,#(___str_25 >> 8)
	sjmp	00188$
00187$:
	mov	r2,#___str_26
	mov	r3,#(___str_26 >> 8)
00188$:
	mov	ar1,r3
	mov	r3,#0x80
	mov	dpl, r2
	mov	dph, r1
	mov	b, r3
	lcall	_uart_write_string
;	main.c:457: uart_write_string("\r\n");
	mov	dptr,#___str_28
	mov	b, #0x80
;	main.c:459: return;
	ljmp	_uart_write_string
00138$:
;	main.c:462: if (command[0] == 'D' &&
	clr	a
	cjne	r4,#0x44,00718$
	inc	a
00718$:
	mov	r3,a
	jnz	00720$
	ljmp	00148$
00720$:
;	main.c:463: command[1] == 'A' &&
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
	cjne	r0,#0x41,00148$
;	main.c:464: command[2] == 'T' &&
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
	cjne	r0,#0x54,00148$
;	main.c:465: command[3] == 'A' &&
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
	cjne	r0,#0x41,00148$
;	main.c:466: command[4] == '1' &&
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
	cjne	r0,#0x31,00148$
;	main.c:467: command[5] == ',')
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
	cjne	r0,#0x2c,00148$
;	main.c:469: if (process_data1())
	lcall	_process_data1
	mov	a, dpl
	jz	00146$
;	main.c:470: uart_write_string("ACK,DATA1\r\n");
	mov	dptr,#___str_29
	mov	b, #0x80
;	main.c:472: return;
	ljmp	_uart_write_string
00146$:
	ret
00148$:
;	main.c:475: if (command[0] == 'D' &&
	mov	a,r3
	jnz	00732$
	ljmp	00157$
00732$:
;	main.c:476: command[1] == 'A' &&
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
	cjne	r0,#0x41,00157$
;	main.c:477: command[2] == 'T' &&
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
	cjne	r0,#0x54,00157$
;	main.c:478: command[3] == 'A' &&
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
	cjne	r0,#0x41,00157$
;	main.c:479: command[4] == '2' &&
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
	cjne	r0,#0x32,00157$
;	main.c:480: command[5] == ',')
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
	cjne	r0,#0x2c,00157$
;	main.c:482: if (process_data2())
	lcall	_process_data2
	mov	a, dpl
	jz	00155$
;	main.c:483: uart_write_string("ACK,DATA2\r\n");
	mov	dptr,#___str_30
	mov	b, #0x80
;	main.c:485: return;
	ljmp	_uart_write_string
00155$:
	ret
00157$:
;	main.c:488: if (command[0] == 'D' &&
	mov	a,r3
	jnz	00744$
	ljmp	00166$
00744$:
;	main.c:489: command[1] == 'A' &&
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
	cjne	r1,#0x41,00166$
;	main.c:490: command[2] == 'T' &&
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
	cjne	r1,#0x54,00166$
;	main.c:491: command[3] == 'A' &&
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
	cjne	r1,#0x41,00166$
;	main.c:492: command[4] == '3' &&
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
	cjne	r1,#0x33,00166$
;	main.c:493: command[5] == ',')
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
	cjne	r1,#0x2c,00166$
;	main.c:495: if (process_data3())
	lcall	_process_data3
	mov	a, dpl
	jz	00164$
;	main.c:496: uart_write_string("ACK,DATA3\r\n");
	mov	dptr,#___str_31
	mov	b, #0x80
;	main.c:498: return;
	ljmp	_uart_write_string
00164$:
	ret
00166$:
;	main.c:501: if (command[0] == 'E' &&
	cjne	r4,#0x45,00756$
	sjmp	00757$
00756$:
	ret
00757$:
;	main.c:502: command[1] == 'R' &&
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
	cjne	r2,#0x52,00758$
	sjmp	00759$
00758$:
	ret
00759$:
;	main.c:503: command[2] == 'R' &&
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
	cjne	r2,#0x52,00181$
;	main.c:504: command[3] == 'O' &&
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
	cjne	r2,#0x4f,00181$
;	main.c:505: command[4] == 'R' &&
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
	cjne	r2,#0x52,00181$
;	main.c:506: command[5] == ',')
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
	cjne	r5,#0x2c,00181$
;	main.c:508: if (process_error())
	lcall	_process_error
	mov	a, dpl
	jz	00173$
;	main.c:509: uart_write_string("ACK,ERROR\r\n");
	mov	dptr,#___str_32
	mov	b, #0x80
	lcall	_uart_write_string
00173$:
;	main.c:511: return;
00181$:
;	main.c:513: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_receive_process'
;------------------------------------------------------------
;data          Allocated with name '_uart_receive_process_data_10000_132'
;------------------------------------------------------------
;	main.c:515: static void uart_receive_process(void)
;	-----------------------------------------
;	 function uart_receive_process
;	-----------------------------------------
_uart_receive_process:
;	main.c:519: if (!uart_read_byte(&data))
	mov	dptr,#_uart_receive_process_data_10000_132
	mov	b, #0x40
	lcall	_uart_read_byte
	mov	a, dpl
	jnz	00102$
;	main.c:520: return;
	ret
00102$:
;	main.c:522: if (data == '\r' || data == '\n')
	mov	a,#0x0d
	cjne	a,_uart_receive_process_data_10000_132,00161$
	sjmp	00105$
00161$:
	mov	a,#0x0a
	cjne	a,_uart_receive_process_data_10000_132,00106$
00105$:
;	main.c:524: if (rx_length > 0)
	mov	a,_rx_length
	jz	00104$
;	main.c:526: rx_buffer[rx_length] = '\0';
	mov	a,_rx_length
	add	a, #_rx_buffer
	mov	r0,a
	mov	@r0,#0x00
;	main.c:528: process_command((char *)rx_buffer);
	mov	dptr,#_rx_buffer
	mov	b, #0x40
	lcall	_process_command
;	main.c:530: rx_length = 0;
	mov	_rx_length,#0x00
00104$:
;	main.c:533: return;
	ret
00106$:
;	main.c:536: if (data == 8 || data == 127)
	mov	a,#0x08
	cjne	a,_uart_receive_process_data_10000_132,00165$
	sjmp	00110$
00165$:
	mov	a,#0x7f
	cjne	a,_uart_receive_process_data_10000_132,00111$
00110$:
;	main.c:538: if (rx_length > 0)
	mov	a,_rx_length
	jz	00109$
;	main.c:539: rx_length--;
	dec	_rx_length
00109$:
;	main.c:541: return;
	ret
00111$:
;	main.c:544: if (rx_length < RX_BUFFER_SIZE - 1)
	mov	a,#0x100 - 0x1f
	add	a,_rx_length
	jc	00114$
;	main.c:546: rx_buffer[rx_length++] = data;
	mov	r7,_rx_length
	inc	_rx_length
	mov	a,r7
	add	a, #_rx_buffer
	mov	r0,a
	mov	@r0,_uart_receive_process_data_10000_132
	ret
00114$:
;	main.c:550: rx_length = 0;
	mov	_rx_length,#0x00
;	main.c:552: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;uart_status   Allocated to registers 
;------------------------------------------------------------
;	main.c:554: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:558: EA = 0;
;	assignBit
	clr	_EA
;	main.c:560: RELAY_PIN = 1;
;	assignBit
	setb	_P2_6
;	main.c:561: BUZZER_PIN = 1;
;	assignBit
	setb	_P2_7
;	main.c:562: RED_LED_PIN = 1;
;	assignBit
	setb	_P2_1
;	main.c:563: GREEN_LED_PIN = 0;
;	assignBit
	clr	_P2_0
;	main.c:565: RELAY_BUTTON_PIN = 1;
;	assignBit
	setb	_P2_2
;	main.c:567: relay_state = 0;
	mov	_relay_state,#0x00
;	main.c:568: buzzer_state = 0;
	mov	_buzzer_state,#0x00
;	main.c:569: fault_active = 0;
	mov	_fault_active,#0x00
;	main.c:571: button_last_sample = 1;
	mov	_button_last_sample,#0x01
;	main.c:572: button_stable_state = 1;
	mov	_button_stable_state,#0x01
;	main.c:574: timer0_init();
	lcall	_timer0_init
;	main.c:576: EA = 1;
;	assignBit
	setb	_EA
;	main.c:578: oled_init();
	lcall	_oled_init
;	main.c:579: oled_initial_screen();
	lcall	_oled_initial_screen
;	main.c:581: uart_status = uart_init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_uart_init
	mov	a, dpl
;	main.c:583: if (!uart_status)
	jnz	00105$
;	main.c:585: oled_clear();
	lcall	_oled_clear
;	main.c:586: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:587: oled_string("UART INIT FAILED");
	mov	dptr,#___str_33
	mov	b, #0x80
	lcall	_oled_string
;	main.c:589: relay_set(0);
	mov	dpl, #0x00
	lcall	_relay_set
;	main.c:590: buzzer_set(0);
	mov	dpl, #0x00
	lcall	_buzzer_set
;	main.c:592: while (1)
00102$:
;	main.c:594: relay_button_process();
	lcall	_relay_button_process
;	main.c:595: uart_receive_process();
	lcall	_uart_receive_process
	sjmp	00102$
00105$:
;	main.c:599: uart_write_string("UART READY\r\n");
	mov	dptr,#___str_34
	mov	b, #0x80
	lcall	_uart_write_string
;	main.c:601: while (1)
00107$:
;	main.c:603: relay_button_process();
	lcall	_relay_button_process
;	main.c:604: uart_receive_process();
	lcall	_uart_receive_process
;	main.c:606: }
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
	.ascii "T:--C"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "ERROR:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "NO ERROR"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "V:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "I:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "P:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "PF:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "F:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Hz"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "E:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "kWh"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "L:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "T:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "RELAY,ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "RELAY,OFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "BUZZER,ON"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "BUZZER,OFF"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "STATUS,RELAY="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "ON"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "OFF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii ",BUZZER="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "ACK,DATA1"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "ACK,DATA2"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "ACK,DATA3"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "ACK,ERROR"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "UART INIT FAILED"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "UART READY"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
