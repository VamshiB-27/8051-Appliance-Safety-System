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
	.globl _lcd_init
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
	.globl _delay
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
_delay_i_10000_10:
	.ds 2
_delay_j_10000_10:
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
; restartable atomic support routines
	.ds	5
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:5: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:7: lcd_init();
	lcall	_lcd_init
;	main.c:9: while(1){
00102$:
;	main.c:12: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i             Allocated with name '_delay_i_10000_10'
;j             Allocated with name '_delay_j_10000_10'
;------------------------------------------------------------
;	main.c:14: void delay(void){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	main.c:18: for(i=0;i<10;i++){
	clr	a
	mov	_delay_i_10000_10,a
	mov	(_delay_i_10000_10 + 1),a
00107$:
	clr	c
	mov	a,_delay_i_10000_10
	subb	a,#0x0a
	mov	a,(_delay_i_10000_10 + 1)
	subb	a,#0x00
	jnc	00109$
;	main.c:19: for(j = 0; j < 120; j++){
	clr	a
	mov	_delay_j_10000_10,a
	mov	(_delay_j_10000_10 + 1),a
00104$:
	clr	c
	mov	a,_delay_j_10000_10
	subb	a,#0x78
	mov	a,(_delay_j_10000_10 + 1)
	subb	a,#0x00
	jnc	00108$
	mov	r6,_delay_j_10000_10
	mov	r7,(_delay_j_10000_10 + 1)
	mov	a,#0x01
	add	a, r6
	mov	_delay_j_10000_10,a
	clr	a
	addc	a, r7
	mov	(_delay_j_10000_10 + 1),a
	sjmp	00104$
00108$:
;	main.c:18: for(i=0;i<10;i++){
	mov	r6,_delay_i_10000_10
	mov	r7,(_delay_i_10000_10 + 1)
	mov	a,#0x01
	add	a, r6
	mov	_delay_i_10000_10,a
	clr	a
	addc	a, r7
	mov	(_delay_i_10000_10 + 1),a
	sjmp	00107$
00109$:
;	main.c:23: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
