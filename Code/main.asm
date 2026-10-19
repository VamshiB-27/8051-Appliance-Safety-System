;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module main
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_isr
	.globl _timer0_isr
	.globl _main
	.globl _lcd_write_hex
	.globl _letter_write
	.globl _cmd_write
	.globl _lcd_init
	.globl _i2c_init
	.globl _timer0_init
	.globl _oled_write_string
	.globl _init_oled
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
	.globl _oled_status
	.globl _i2c_done
	.globl _i2c_busy
	.globl _i2c_error
	.globl _i2c_tx_index
	.globl _i2c_tx_length
	.globl _i2c_tx_buffer
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
_i2c_tx_buffer::
	.ds 32
_i2c_tx_length::
	.ds 1
_i2c_tx_index::
	.ds 1
_i2c_error::
	.ds 1
_i2c_busy::
	.ds 1
_i2c_done::
	.ds 1
_oled_status::
	.ds 1
_timer0_isr_value_10000_31:
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
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_i2c_isr
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
;value         Allocated with name '_timer0_isr_value_10000_31'
;------------------------------------------------------------
;	main.c:115: static int value=0;
	clr	a
	mov	_timer0_isr_value_10000_31,a
	mov	(_timer0_isr_value_10000_31 + 1),a
;	main.c:7: volatile unsigned long int delay_time_ms = 0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:8: volatile unsigned short int time_ms = 0;
	mov	_time_ms,a
	mov	(_time_ms + 1),a
;	main.c:11: volatile unsigned char i2c_tx_length = 0;
	mov	_i2c_tx_length,a
;	main.c:12: volatile unsigned char i2c_tx_index = 0;
	mov	_i2c_tx_index,a
;	main.c:13: volatile unsigned char i2c_error = 0;
	mov	_i2c_error,a
;	main.c:14: volatile unsigned char i2c_busy = 0;
	mov	_i2c_busy,a
;	main.c:15: volatile unsigned char i2c_done = 0;
	mov	_i2c_done,a
;	main.c:17: volatile unsigned char oled_status = 0;
	mov	_oled_status,a
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
;Allocation info for local variables in function 'lcd_write_hex'
;------------------------------------------------------------
;value         Allocated to registers r7 
;digit         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:19: void lcd_write_hex(unsigned char value)
;	-----------------------------------------
;	 function lcd_write_hex
;	-----------------------------------------
_lcd_write_hex:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:23: digit = (value >> 4) & 0x0F;
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
	anl	ar6,#0x0f
;	main.c:24: if(digit < 10)
	cjne	r6,#0x0a,00125$
00125$:
	jnc	00102$
;	main.c:25: letter_write('0' + digit);
	mov	ar5,r6
	mov	a,#0x30
	add	a, r5
	mov	dpl,a
	push	ar7
	lcall	_letter_write
	pop	ar7
	sjmp	00103$
00102$:
;	main.c:27: letter_write('A' + digit - 10);
	mov	a,#0x37
	add	a, r6
	mov	dpl,a
	push	ar7
	lcall	_letter_write
	pop	ar7
00103$:
;	main.c:29: digit = value & 0x0F;
	anl	ar7,#0x0f
;	main.c:30: if(digit < 10)
	cjne	r7,#0x0a,00127$
00127$:
	jnc	00105$
;	main.c:31: letter_write('0' + digit);
	mov	ar6,r7
	mov	a,#0x30
	add	a, r6
	mov	dpl,a
	ljmp	_letter_write
00105$:
;	main.c:33: letter_write('A' + digit - 10);
	mov	a,#0x37
	add	a, r7
	mov	dpl,a
;	main.c:34: }
	ljmp	_letter_write
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:36: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:38: timer0_init();
	lcall	_timer0_init
;	main.c:39: i2c_init();
	lcall	_i2c_init
;	main.c:41: EA=1;         /* Enable global interrupt */
;	assignBit
	setb	_EA
;	main.c:43: delay_ms(100);
	mov	dptr,#0x0064
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:45: lcd_init();
	lcall	_lcd_init
;	main.c:47: oled_status = init_oled();
	lcall	_init_oled
	mov	_oled_status,dpl
;	main.c:49: cmd_write(0x80);
	mov	dpl, #0x80
	lcall	_cmd_write
;	main.c:50: letter_write('L');
	mov	dpl, #0x4c
	lcall	_letter_write
;	main.c:51: letter_write('C');
	mov	dpl, #0x43
	lcall	_letter_write
;	main.c:52: letter_write('D');
	mov	dpl, #0x44
	lcall	_letter_write
;	main.c:53: letter_write(' ');
	mov	dpl, #0x20
	lcall	_letter_write
;	main.c:54: letter_write('O');
	mov	dpl, #0x4f
	lcall	_letter_write
;	main.c:55: letter_write('K');
	mov	dpl, #0x4b
	lcall	_letter_write
;	main.c:57: if(oled_status){
	mov	a,_oled_status
	jz	00102$
;	main.c:58: oled_write_string("HELLO WORLD");
	mov	dptr,#___str_0
	mov	b, #0x80
	lcall	_oled_write_string
	ljmp	00105$
00102$:
;	main.c:61: P1_7=0;
;	assignBit
	clr	_P1_7
;	main.c:62: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:63: P1_7=1;
;	assignBit
	setb	_P1_7
;	main.c:64: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:65: P1_7=0;
;	assignBit
	clr	_P1_7
;	main.c:66: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:67: P1_7=1;
;	assignBit
	setb	_P1_7
;	main.c:68: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:69: P1_7=0;
;	assignBit
	clr	_P1_7
;	main.c:71: cmd_write(0x80);
	mov	dpl, #0x80
	lcall	_cmd_write
;	main.c:72: letter_write('E');
	mov	dpl, #0x45
	lcall	_letter_write
;	main.c:73: letter_write('R');
	mov	dpl, #0x52
	lcall	_letter_write
;	main.c:74: letter_write('R');
	mov	dpl, #0x52
	lcall	_letter_write
;	main.c:75: letter_write(':');
	mov	dpl, #0x3a
	lcall	_letter_write
;	main.c:76: lcd_write_hex(i2c_error);
	mov	dpl, _i2c_error
	lcall	_lcd_write_hex
;	main.c:78: cmd_write(0xC0);
	mov	dpl, #0xc0
	lcall	_cmd_write
;	main.c:79: letter_write('S');
	mov	dpl, #0x53
	lcall	_letter_write
;	main.c:80: letter_write(':');
	mov	dpl, #0x3a
	lcall	_letter_write
;	main.c:81: lcd_write_hex(SSCS);
	mov	dpl, _SSCS
	lcall	_lcd_write_hex
;	main.c:83: cmd_write(0x94);
	mov	dpl, #0x94
	lcall	_cmd_write
;	main.c:84: letter_write('C');
	mov	dpl, #0x43
	lcall	_letter_write
;	main.c:85: letter_write(':');
	mov	dpl, #0x3a
	lcall	_letter_write
;	main.c:86: lcd_write_hex(SSCON);
	mov	dpl, _SSCON
	lcall	_lcd_write_hex
;	main.c:89: while(1){
00105$:
;	main.c:92: }
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;value         Allocated to registers r6 r7 
;i             Allocated to registers r5 
;------------------------------------------------------------
;	main.c:95: void delay_us(unsigned int value){
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r6, dpl
	mov	r7, dph
;	main.c:99: while(value--){
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
;	main.c:100: for(i=0;i<4;i++);   /* This is around 1us */
	mov	r5,#0x04
00107$:
	djnz	r5,00107$
	sjmp	00102$
00108$:
;	main.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;value         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:104: void delay_ms(unsigned long int value){
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:106: delay_time_ms=0;
	clr	a
	mov	_delay_time_ms,a
	mov	(_delay_time_ms + 1),a
	mov	(_delay_time_ms + 2),a
	mov	(_delay_time_ms + 3),a
;	main.c:107: while(delay_time_ms<value);
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
;	main.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;value         Allocated with name '_timer0_isr_value_10000_31'
;------------------------------------------------------------
;	main.c:113: void timer0_isr(void) __interrupt(1){
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
;	main.c:116: TF0=0;
;	assignBit
	clr	_TF0
;	main.c:117: value++;
	inc	_timer0_isr_value_10000_31
	clr	a
	cjne	a,_timer0_isr_value_10000_31,00121$
	inc	(_timer0_isr_value_10000_31 + 1)
00121$:
;	main.c:118: if(value>=10){
	clr	c
	mov	a,_timer0_isr_value_10000_31
	subb	a,#0x0a
	mov	a,(_timer0_isr_value_10000_31 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	main.c:120: value=0;
	clr	a
	mov	_timer0_isr_value_10000_31,a
	mov	(_timer0_isr_value_10000_31 + 1),a
;	main.c:121: delay_time_ms++;
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
;	main.c:122: time_ms++;
	mov	r6,_time_ms
	mov	r7,(_time_ms + 1)
	mov	a,#0x01
	add	a, r6
	mov	_time_ms,a
	clr	a
	addc	a, r7
	mov	(_time_ms + 1),a
;	main.c:124: if(time_ms>=1000){
	mov	r6,_time_ms
	mov	r7,(_time_ms + 1)
	clr	c
	mov	a,r6
	subb	a,#0xe8
	mov	a,r7
	subb	a,#0x03
	jc	00105$
;	main.c:125: time_ms=0;
	clr	a
	mov	_time_ms,a
	mov	(_time_ms + 1),a
00105$:
;	main.c:128: }
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
;Allocation info for local variables in function 'i2c_isr'
;------------------------------------------------------------
;status        Allocated to registers r7 
;------------------------------------------------------------
;	main.c:130: void i2c_isr(void) __interrupt(9){
;	-----------------------------------------
;	 function i2c_isr
;	-----------------------------------------
_i2c_isr:
	push	acc
	push	ar7
	push	ar1
	push	psw
	mov	psw,#0x00
;	main.c:135: status=SSCS&0xf8;
	mov	a,_SSCS
	anl	a,#0xf8
;	main.c:137: switch(status){
	mov	r7,a
	jz	00115$
	cjne	r7,#0x08,00190$
	sjmp	00102$
00190$:
	cjne	r7,#0x10,00191$
	sjmp	00102$
00191$:
	cjne	r7,#0x18,00192$
	sjmp	00103$
00192$:
	cjne	r7,#0x20,00193$
	sjmp	00112$
00193$:
	cjne	r7,#0x28,00194$
	sjmp	00107$
00194$:
	cjne	r7,#0x30,00195$
	sjmp	00112$
00195$:
;	main.c:140: case 0x10: /* */
	cjne	r7,#0x38,00115$
	sjmp	00113$
00102$:
;	main.c:141: SSDAT=0x78;
	mov	_SSDAT,#0x78
;	main.c:142: break;
;	main.c:144: case 0x18: /* Address transmitted,ack received */
	sjmp	00116$
00103$:
;	main.c:145: if(i2c_tx_length>0){
	mov	a,_i2c_tx_length
	jz	00105$
;	main.c:146: SSDAT=i2c_tx_buffer[0];
	mov	_SSDAT,_i2c_tx_buffer
;	main.c:147: i2c_tx_index=1;
	mov	_i2c_tx_index,#0x01
	sjmp	00116$
00105$:
;	main.c:149: i2c_error=0xFD;
	mov	_i2c_error,#0xfd
;	main.c:150: SSCON |= 0x10; /* Request stop bit */
	orl	_SSCON,#0x10
;	main.c:151: i2c_done=1;
	mov	_i2c_done,#0x01
;	main.c:153: break;
;	main.c:155: case 0x28: /* Data transmitted,ACK received */
	sjmp	00116$
00107$:
;	main.c:156: if(i2c_tx_index<i2c_tx_length){
	clr	c
	mov	a,_i2c_tx_index
	subb	a,_i2c_tx_length
	jnc	00109$
;	main.c:157: SSDAT=i2c_tx_buffer[i2c_tx_index];
	mov	a,_i2c_tx_index
	add	a, #_i2c_tx_buffer
	mov	r1,a
	mov	_SSDAT,@r1
;	main.c:158: i2c_tx_index++;
	mov	a,_i2c_tx_index
	inc	a
	mov	_i2c_tx_index,a
	sjmp	00116$
00109$:
;	main.c:160: SSCON |= 0x10; /* Request stop bit */
	orl	_SSCON,#0x10
;	main.c:161: i2c_done=1;
	mov	_i2c_done,#0x01
;	main.c:163: break;
;	main.c:166: case 0x30: /* Data byte not acknowledged */
	sjmp	00116$
00112$:
;	main.c:167: i2c_error=status;
	mov	_i2c_error,r7
;	main.c:168: SSCON |= 0x10; /* Request stop bit */
	orl	_SSCON,#0x10
;	main.c:169: i2c_done = 1;
	mov	_i2c_done,#0x01
;	main.c:170: break;
;	main.c:172: case 0x38:
	sjmp	00116$
00113$:
;	main.c:173: i2c_error=status;
	mov	_i2c_error,r7
;	main.c:174: i2c_done = 1;
	mov	_i2c_done,#0x01
;	main.c:175: break;
;	main.c:178: default:
	sjmp	00116$
00115$:
;	main.c:179: i2c_error=status;
	mov	_i2c_error,r7
;	main.c:180: SSCON |= 0x10; /* Request stop bit */
	orl	_SSCON,#0x10
;	main.c:181: i2c_done = 1;
	mov	_i2c_done,#0x01
;	main.c:183: }
00116$:
;	main.c:185: SSCON &= ~0x08; /* Clear interrupt flag */
	anl	_SSCON,#0xf7
;	main.c:187: }
	pop	psw
	pop	ar1
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "HELLO WORLD"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
