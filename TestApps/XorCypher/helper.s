


	.global udivmodhi4
	.type udivmodhi4, @function
udivmodhi4:
	nop
	nop
	mov	r12,	r15	;

	mov.b	#17,	r12	;#0x0011

	mov.b	#1,	r11	;r3 As==01

.L2:
	cmp	r15,	r13	;
	jc	.L5     	;abs 0x45fc
	add	#-1,	r12	;r3 As==11

	cmp	#0,	r12	;r3 As==00
	jz	.L7     	;abs 0x4602

	cmp	#0,	r13	;r3 As==00
	jge	.L9     	;abs 0x460a

.L5:
	clr.b	r12		;

.L6:
	cmp	#0,	r11	;r3 As==00
	jnz	.L11     	;abs 0x4612

.L7:
	cmp	#0,	r14	;r3 As==00
	jz	.L8      	;abs 0x4608
	mov	r15,	r12	;

.L8:
	reta			;

.L9:
	rla	r13		;

	rla	r11		;
	jmp .L2	;mova	#17902,	r0	;0x045ee

.L11:
	cmp	r13,	r15	;
	jnc	.L14      	;abs 0x461a

	sub	r13,	r15	;

	bis	r11,	r12	;

.L14:
	rrum	#1,	r11	;

	rrum	#1,	r13	;
	jmp .L6	;mova	#17918,	r0	;0x045fe



	.global __mspabi_remi
	.type __mspabi_remi, @function
__mspabi_remi:
	nop
	nop
	pushm.a	#1,	r10	;20-bit words

	cmp	#0,	r12	;r3 As==00
	jge	.L25     	;abs 0x464e

	clr.b	r14		;
	sub	r12,	r14	;
	mov	r14,	r12	;

	mov.b	#1,	r10	;r3 As==01

.L19:
	cmp	#0,	r13	;r3 As==00
	jge	.L20      	;abs 0x463a
	clr.b	r14		;
	sub	r13,	r14	;
	mov	r14,	r13	;

.L20:
	mov.b	#1,	r14	;r3 As==01
	calla	#udivmodhi4		;0x045e6

	cmp	#0,	r10	;r3 As==00
	jz	.L23      	;abs 0x464a

	clr.b	r13		;
	sub	r12,	r13	;
	mov	r13,	r12	;

.L23:
	popm.a	#1,	r10	;20-bit words

	reta			;

.L25:
	clr.b	r10		;
	jmp .L19	;mova	#17968,	r0	;0x04630



	.global memcpy
	.type memcpy, @function
memcpy:
	nop
	nop
	pushm.a	#1,	r10	;20-bit words

	pushm.a	#1,	r8	;20-bit words

	mova	r12,	r8	;
	mova	r14,	r15	;

	clr.b	r12		;

.L29:
	cmpa	r12,	r15	;
	jnz	.L34     	;abs 0x466a

	mova	r8,	r12	;

	popm.a	#1,	r8	;20-bit words

	popm.a	#1,	r10	;20-bit words

	reta			;

.L34:
	mova	r8,	r14	;
	adda	r12,	r14	;

	mova	r13,	r10	;
	adda	r12,	r10	;

	mov.b	@r10,	0(r14)	;
	adda	#1,	r12	;

	jmp .L29	;mova	#18014,	r0	;0x0465e



	.global _exit
	.type _exit, @function
_exit:
	nop
	nop
	jmp _exit	;mova	#18046,	r0	;0x0467e



	.global memmove
	.type memmove, @function
memmove:
	nop
	nop
	pushm.a	#1,	r10	;20-bit words

	pushm.a	#1,	r8	;20-bit words

	mova	r12,	r15	;
	mova	r13,	r8	;
	mova	r14,	r13	;

	cmpa	r12,	r8	;
	jc	.L56     	;abs 0x46da

	mova	r8,	r11	;
	adda	r14,	r11	;

	cmpa	r11,	r12	;
	jc	.L56     	;abs 0x46da

	mova	r14,	r8	;

	xorx.a	#-1,	r8	;r3 As==11

	clr.b	r10		;

.L46:
	adda	#1048575,r10	;0xfffff

	cmpa	r10,	r8	;
	jnz	.L51     	;abs 0x46b0

.L48:
	mova	r15,	r12	;
	popm.a	#1,	r8	;20-bit words

	popm.a	#1,	r10	;20-bit words

	reta			;

.L51:
	mova	r13,	r12	;
	adda	r10,	r12	;
	adda	r15,	r12	;
	mova	r11,	r14	;
	adda	r10,	r14	;

	mov.b	@r14,	0(r12)	;
	jmp .L46	;mova	#18080,	r0	;0x046a0

.L53:
	mova	r8,	r10	;
	adda	r12,	r10	;

	mova	r15,	r14	;
	adda	r12,	r14	;
	mov.b	@r10,	0(r14)	;
	adda	#1,	r12	;

.L55:
	cmpa	r12,	r13	;
	jnz	.L53     	;abs 0x46c2
	jmp .L48	;mova	#18088,	r0	;0x046a8

.L56:
	clr.b	r12		;

	jmp .L55	;mova	#18130,	r0	;0x046d2
