;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer0_isr
	.globl _main
	.globl _oled_show_message
	.globl _uart_read_byte
	.globl _uart_write_string
	.globl _uart_write_buffer
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
	.globl _oled_show_message_PARM_3
	.globl _oled_show_message_PARM_2
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
_oled_show_message_PARM_2:
	.ds 3
_oled_show_message_PARM_3:
	.ds 1
_main_rx_data_10000_26:
	.ds 1
_main_rx_buffer_10000_26:
	.ds 20
_main_tx_buffer_10000_26:
	.ds 13
_timer0_isr_value_10000_46:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;value         Allocated with name '_timer0_isr_value_10000_46'
;------------------------------------------------------------
;	main.c:117: static int value = 0;
	clr	a
	mov	_timer0_isr_value_10000_46,a
	mov	(_timer0_isr_value_10000_46 + 1),a
;	main.c:8: volatile unsigned long int delay_time_ms = 0;
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:9: volatile unsigned short int time_ms = 0;
	mov	_time_ms,a
	mov	(_time_ms + 1),a
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
;Allocation info for local variables in function 'oled_show_message'
;------------------------------------------------------------
;data          Allocated with name '_oled_show_message_PARM_2'
;length        Allocated with name '_oled_show_message_PARM_3'
;label         Allocated to registers r5 r6 r7 
;i             Allocated to registers r7 
;------------------------------------------------------------
;	main.c:13: void oled_show_message(char *label, unsigned char *data, unsigned char length)
;	-----------------------------------------
;	 function oled_show_message
;	-----------------------------------------
_oled_show_message:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	main.c:17: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_oled_set_position
;	main.c:18: oled_string("                    ");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_oled_string
;	main.c:19: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:20: oled_string(label);
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	lcall	_oled_string
;	main.c:22: oled_set_position(3, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:24: for (i = 0; i < DISPLAY_LENGTH; i++)
	mov	r7,#0x00
00103$:
;	main.c:25: oled_char(' ');
	mov	dpl, #0x20
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:24: for (i = 0; i < DISPLAY_LENGTH; i++)
	inc	r7
	cjne	r7,#0x14,00151$
00151$:
	jc	00103$
;	main.c:27: oled_set_position(3, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x03
	lcall	_oled_set_position
;	main.c:29: for (i = 0; i < length && i < DISPLAY_LENGTH; i++)
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	subb	a,_oled_show_message_PARM_3
	jnc	00109$
	cjne	r7,#0x14,00154$
00154$:
	jnc	00109$
;	main.c:30: oled_char(data[i]);
	mov	a,r7
	add	a, _oled_show_message_PARM_2
	mov	r4,a
	clr	a
	addc	a, (_oled_show_message_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_oled_show_message_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_oled_char
	pop	ar7
;	main.c:29: for (i = 0; i < length && i < DISPLAY_LENGTH; i++)
	inc	r7
	sjmp	00107$
00109$:
;	main.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;rx_data       Allocated with name '_main_rx_data_10000_26'
;uart_status   Allocated to registers 
;rx_buffer     Allocated with name '_main_rx_buffer_10000_26'
;rx_length     Allocated to registers r7 
;tx_buffer     Allocated with name '_main_tx_buffer_10000_26'
;------------------------------------------------------------
;	main.c:33: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:38: unsigned char rx_length = 0;
	mov	r7,#0x00
;	main.c:39: unsigned char tx_buffer[] = "UART TX TEST";
	mov	_main_tx_buffer_10000_26,#0x55
	mov	(_main_tx_buffer_10000_26 + 0x0001),#0x41
	mov	(_main_tx_buffer_10000_26 + 0x0002),#0x52
	mov	(_main_tx_buffer_10000_26 + 0x0003),#0x54
	mov	(_main_tx_buffer_10000_26 + 0x0004),#0x20
	mov	(_main_tx_buffer_10000_26 + 0x0005),#0x54
	mov	(_main_tx_buffer_10000_26 + 0x0006),#0x58
	mov	(_main_tx_buffer_10000_26 + 0x0007),#0x20
	mov	(_main_tx_buffer_10000_26 + 0x0008),#0x54
	mov	(_main_tx_buffer_10000_26 + 0x0009),#0x45
	mov	(_main_tx_buffer_10000_26 + 0x000a),#0x53
	mov	(_main_tx_buffer_10000_26 + 0x000b),#0x54
	mov	(_main_tx_buffer_10000_26 + 0x000c),r7
;	main.c:41: EA = 0;
;	assignBit
	clr	_EA
;	main.c:42: timer0_init();
	push	ar7
	lcall	_timer0_init
;	main.c:43: EA = 1;
;	assignBit
	setb	_EA
;	main.c:45: oled_init();
	lcall	_oled_init
;	main.c:46: oled_clear();
	lcall	_oled_clear
;	main.c:48: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:49: oled_string("UART RX TX TEST");
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_oled_string
;	main.c:51: uart_status = uart_init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_uart_init
	mov	a, dpl
	pop	ar7
;	main.c:53: if (!uart_status)
;	main.c:55: oled_set_position(2, 0);
	jnz	00105$
	mov	_oled_set_position_PARM_2,a
	mov	dpl, #0x02
	lcall	_oled_set_position
;	main.c:56: oled_string("UART INIT FAIL");
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_oled_string
;	main.c:58: while (1);
00102$:
	sjmp	00102$
00105$:
;	main.c:61: uart_write_string("UART TX TEST\r\n");
	mov	dptr,#___str_4
	mov	b, #0x80
	push	ar7
	lcall	_uart_write_string
;	main.c:63: oled_show_message("TX: SENT", tx_buffer, 12);
	mov	_oled_show_message_PARM_2,#_main_tx_buffer_10000_26
	mov	(_oled_show_message_PARM_2 + 1),#0x00
	mov	(_oled_show_message_PARM_2 + 2),#0x40
	mov	_oled_show_message_PARM_3,#0x0c
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_oled_show_message
;	main.c:64: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:66: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:67: oled_string("                    ");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_oled_string
;	main.c:68: oled_set_position(0, 0);
	mov	_oled_set_position_PARM_2,#0x00
	mov	dpl, #0x00
	lcall	_oled_set_position
;	main.c:69: oled_string("WAITING RX");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_oled_string
	pop	ar7
;	main.c:71: while (1)
00117$:
;	main.c:73: if (uart_read_byte(&rx_data))
	mov	dptr,#_main_rx_data_10000_26
	mov	b, #0x40
	push	ar7
	lcall	_uart_read_byte
	mov	a, dpl
	pop	ar7
	jz	00117$
;	main.c:75: if (rx_data == '\r' || rx_data == '\n')
	mov	a,#0x0d
	cjne	a,_main_rx_data_10000_26,00172$
	sjmp	00110$
00172$:
	mov	a,#0x0a
	cjne	a,_main_rx_data_10000_26,00111$
00110$:
;	main.c:77: if (rx_length > 0)
	mov	a,r7
	jz	00117$
;	main.c:79: uart_write_buffer(rx_buffer, rx_length);
	mov	_uart_write_buffer_PARM_2,r7
	mov	(_uart_write_buffer_PARM_2 + 1),#0x00
	mov	dptr,#_main_rx_buffer_10000_26
	mov	b, #0x40
	push	ar7
	lcall	_uart_write_buffer
;	main.c:80: uart_write_string("\r\n");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_uart_write_string
	pop	ar7
;	main.c:82: oled_show_message("RX: RECEIVED", rx_buffer, rx_length);
	mov	_oled_show_message_PARM_2,#_main_rx_buffer_10000_26
	mov	(_oled_show_message_PARM_2 + 1),#0x00
	mov	(_oled_show_message_PARM_2 + 2),#0x40
	mov	_oled_show_message_PARM_3,r7
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_oled_show_message
;	main.c:84: rx_length = 0;
	mov	r7,#0x00
	sjmp	00117$
00111$:
;	main.c:89: if (rx_length < DISPLAY_LENGTH)
	cjne	r7,#0x14,00176$
00176$:
	jnc	00117$
;	main.c:91: rx_buffer[rx_length++] = rx_data;
	mov	ar6,r7
	inc	r7
	mov	a,r6
	add	a, #_main_rx_buffer_10000_26
	mov	r0,a
	mov	@r0,_main_rx_data_10000_26
;	main.c:96: }
	sjmp	00117$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;value         Allocated to registers r6 r7 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	main.c:98: void delay_us(unsigned int value)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r6, dpl
	mov	r7, dph
;	main.c:102: while (value--)
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
;	main.c:104: for (i = 0; i < 4; i++);
	mov	r5,#0x04
00107$:
	djnz	r5,00107$
	sjmp	00102$
00108$:
;	main.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;value         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:108: void delay_ms(unsigned long int value)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:110: delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:112: while (delay_time_ms < value);
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
;	main.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;value         Allocated with name '_timer0_isr_value_10000_46'
;------------------------------------------------------------
;	main.c:115: void timer0_isr(void) __interrupt(1)
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
;	main.c:119: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:120: value++;
	inc	_timer0_isr_value_10000_46
	clr	a
	cjne	a,_timer0_isr_value_10000_46,00121$
	inc	(_timer0_isr_value_10000_46 + 1)
00121$:
;	main.c:122: if (value >= 10)
	clr	c
	mov	a,_timer0_isr_value_10000_46
	subb	a,#0x0a
	mov	a,(_timer0_isr_value_10000_46 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	main.c:124: value = 0;
	clr	a
	mov	_timer0_isr_value_10000_46,a
	mov	(_timer0_isr_value_10000_46 + 1),a
;	main.c:125: delay_time_ms++;
	mov	r4,_delay_time_ms
	mov	r5,(_delay_time_ms + 1)
	mov	r6,(_delay_time_ms + 2)
	mov	r7,(_delay_time_ms + 3)
	inc	a
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
;	main.c:126: time_ms++;
	mov	r6,_time_ms
	mov	r7,(_time_ms + 1)
	mov	a,#0x01
	add	a, r6
	mov	_time_ms,a
	clr	a
	addc	a, r7
	mov	(_time_ms + 1),a
;	main.c:128: if (time_ms >= 1000)
	mov	r6,_time_ms
	mov	r7,(_time_ms + 1)
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jc	00105$
;	main.c:129: time_ms = 0;
	clr	a
	mov	_time_ms,a
	mov	(_time_ms + 1),a
00105$:
;	main.c:131: }
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "                    "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "UART RX TX TEST"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "UART INIT FAIL"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "UART TX TEST"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "TX: SENT"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "WAITING RX"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "RX: RECEIVED"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
