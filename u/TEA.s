	.file	"TEA.c"
	.text
	.globl	_ToUpperCase
	.def	_ToUpperCase;	.scl	2;	.type	32;	.endef
_ToUpperCase:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%esp, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	leal	-1(%eax), %edx
	movl	%edx, -24(%ebp)
	movl	%eax, %edx
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -12(%ebp)
L4:
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	movl	__imp__toupper, %eax
	call	*%eax
	movl	%eax, %ecx
	movl	-28(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L7
	addl	$1, -12(%ebp)
	jmp	L4
L7:
	nop
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	8(%ebp), %eax
	movl	%ebx, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
LC0:
	.ascii "%i%c\0"
LC1:
	.ascii "%i]___%u\0"
	.text
	.globl	_PrintArr
	.def	_PrintArr;	.scl	2;	.type	32;	.endef
_PrintArr:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	$91, (%esp)
	call	_putchar
	movl	$0, -12(%ebp)
	jmp	L9
L10:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	$44, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L9:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L10
	movl	-16(%ebp), %eax
	leal	1(%eax), %edx
	movl	-16(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_m_pow
	.def	_m_pow;	.scl	2;	.type	32;	.endef
_m_pow:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$1, -8(%ebp)
	movl	$0, -4(%ebp)
	movl	$0, -12(%ebp)
	jmp	L12
L13:
	movl	-4(%ebp), %eax
	imull	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	imull	-8(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-24(%ebp), %eax
	mull	-8(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -8(%ebp)
	movl	%edx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	%edx, -4(%ebp)
	addl	$1, -12(%ebp)
L12:
	movl	-12(%ebp), %eax
	cltd
	cmpl	-32(%ebp), %eax
	movl	%edx, %eax
	sbbl	-28(%ebp), %eax
	jl	L13
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_BinToDec
	.def	_BinToDec;	.scl	2;	.type	32;	.endef
_BinToDec:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	jmp	L16
L17:
	movl	-36(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %ebx
	movl	%eax, %esi
	sarl	$31, %esi
	movl	-32(%ebp), %eax
	cltd
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$2, (%esp)
	movl	$0, 4(%esp)
	call	_m_pow
	movl	%esi, %edi
	imull	%eax, %edi
	movl	%edx, %ecx
	imull	%ebx, %ecx
	addl	%edi, %ecx
	mull	%ebx
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%ebp)
	addl	$1, -32(%ebp)
	subl	$1, -36(%ebp)
L16:
	cmpl	$0, -36(%ebp)
	jns	L17
	movl	-28(%ebp), %eax
	addl	$44, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
LC2:
	.ascii "%i\0"
LC3:
	.ascii "]\0"
	.text
	.globl	_printArr
	.def	_printArr;	.scl	2;	.type	32;	.endef
_printArr:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	$91, (%esp)
	call	_putchar
	movl	$0, -12(%ebp)
	jmp	L20
L22:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	-16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%ebp)
	je	L21
	movl	$44, (%esp)
	call	_putchar
L21:
	addl	$1, -12(%ebp)
L20:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L22
	movl	$LC3, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_substring
	.def	_substring;	.scl	2;	.type	32;	.endef
_substring:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	subl	16(%ebp), %eax
	movl	%eax, %ecx
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_substr
	.def	_substr;	.scl	2;	.type	32;	.endef
_substr:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	20(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	12(%ebp), %eax
	addl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_strncpy
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.globl	_substr2
	.def	_substr2;	.scl	2;	.type	32;	.endef
_substr2:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	addl	%ecx, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
LC4:
	.ascii "Get file size error.\0"
	.text
	.globl	_getFileSize
	.def	_getFileSize;	.scl	2;	.type	32;	.endef
_getFileSize:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ftell
	cltd
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	-16(%ebp), %eax
	xorl	$-1, %eax
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	xorl	$-1, %eax
	movl	%eax, %esi
	movl	%esi, %eax
	orl	%ebx, %eax
	testl	%eax, %eax
	jne	L29
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ftelli64
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	$LC4, (%esp)
	call	_puts
L29:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	addl	$32, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.globl	_getIntegerLen
	.def	_getIntegerLen;	.scl	2;	.type	32;	.endef
_getIntegerLen:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	$0, -8(%ebp)
L34:
	movl	-4(%ebp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	addl	$1, -8(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -12(%ebp)
	je	L37
	jmp	L34
L37:
	nop
	movl	-8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
LC5:
	.ascii "%c\0"
	.text
	.globl	_Scanf
	.def	_Scanf;	.scl	2;	.type	32;	.endef
_Scanf:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$1, -12(%ebp)
L41:
	leal	-13(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_scanf
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movzbl	-13(%ebp), %eax
	cmpb	$10, %al
	jne	L39
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	movb	$0, (%eax)
	jmp	L42
L39:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	subl	$1, %edx
	addl	%eax, %edx
	movzbl	-13(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -12(%ebp)
	jmp	L41
L42:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_strcat_auto
	.def	_strcat_auto;	.scl	2;	.type	32;	.endef
_strcat_auto:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%esp, %eax
	movl	%eax, %ebx
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -16(%ebp)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -20(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -28(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcat
	movl	%ebx, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_charToCharPtr
	.def	_charToCharPtr;	.scl	2;	.type	32;	.endef
_charToCharPtr:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movb	%al, -12(%ebp)
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	$2, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	-12(%ebp), %edx
	movb	%dl, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_strInStrCount
	.def	_strInStrCount;	.scl	2;	.type	32;	.endef
_strInStrCount:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -32(%ebp)
	movl	-28(%ebp), %eax
	subl	-32(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-28(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jnb	L46
	movl	$0, %eax
	jmp	L47
L46:
	movl	$0, -16(%ebp)
	jmp	L48
L52:
	movl	$1, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	L49
L50:
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-24(%ebp), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	sete	%al
	movzbl	%al, %eax
	andl	%eax, -20(%ebp)
	addl	$1, -24(%ebp)
L49:
	movl	-24(%ebp), %eax
	cmpl	%eax, -32(%ebp)
	ja	L50
	cmpl	$0, -20(%ebp)
	je	L51
	addl	$1, -12(%ebp)
L51:
	addl	$1, -16(%ebp)
L48:
	movl	-16(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	ja	L52
	movl	-12(%ebp), %eax
L47:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_split
	.def	_split;	.scl	2;	.type	32;	.endef
_split:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$64, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	%esp, %eax
	movl	%eax, %esi
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %ebx
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %ebx
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	movl	$0, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -40(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -48(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ebx
	movl	$0, %edx
	divl	%ebx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -52(%ebp)
	movl	$0, -24(%ebp)
	jmp	L54
L55:
	movl	-24(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	-44(%ebp), %ecx
	movl	-24(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -24(%ebp)
L54:
	movl	-32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-24(%ebp), %eax
	cmpl	%eax, %edx
	ja	L55
	movl	-32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-44(%ebp), %eax
	movb	$0, (%eax,%edx)
	movl	$0, -20(%ebp)
	jmp	L56
L57:
	movl	-20(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	-52(%ebp), %ecx
	movl	-20(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -20(%ebp)
L56:
	movl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	ja	L57
	movl	-36(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-52(%ebp), %eax
	movb	$0, (%eax,%edx)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strInStrCount
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	L58
	subl	$1, -16(%ebp)
L58:
	movl	-32(%ebp), %eax
	leal	-2(%eax), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-36(%ebp), %eax
	leal	-2(%eax), %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	L59
	subl	$1, -16(%ebp)
L59:
	cmpl	$1, -16(%ebp)
	jne	L67
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movb	$0, (%eax)
	nop
	movl	%esi, %esp
	jmp	L53
L67:
	nop
L61:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %ebx
	movl	%edx, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strtok
	movl	%eax, -28(%ebp)
	movl	$0, -12(%ebp)
	jmp	L63
L64:
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	addl	$4, %edx
	movl	(%edx), %edx
	movl	-12(%ebp), %ecx
	sall	$2, %ecx
	leal	(%edx,%ecx), %ebx
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-52(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_strtok
	movl	%eax, -28(%ebp)
	addl	$1, -12(%ebp)
L63:
	cmpl	$0, -28(%ebp)
	jne	L64
	movl	%esi, %esp
L53:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.globl	_Str_Cmp_nMatchCase
	.def	_Str_Cmp_nMatchCase;	.scl	2;	.type	32;	.endef
_Str_Cmp_nMatchCase:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%esp, %eax
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -12(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -20(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ecx
	movl	$0, %edx
	divl	%ecx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	8(%esp), %eax
	addl	$0, %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ToUpperCase
	movl	-24(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ToUpperCase
	movl	-24(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%ebx, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.globl	_m_itoa
	.def	_m_itoa;	.scl	2;	.type	32;	.endef
_m_itoa:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_getIntegerLen
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	$0, -12(%ebp)
	movl	-20(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	L71
L72:
	movl	-16(%ebp), %eax
	cltd
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$10, (%esp)
	movl	$0, 4(%esp)
	call	_m_pow
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	leal	48(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
	subl	$1, -16(%ebp)
L71:
	cmpl	$0, -16(%ebp)
	jns	L72
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.globl	_y_
	.data
	.align 4
_y_:
	.byte	-91
	.byte	6
	.byte	-73
	.byte	-119
	.byte	-112
	.byte	103
	.byte	-9
	.byte	112
	.globl	_yes
	.align 4
_yes:
	.long	1
	.text
	.globl	_encrypt
	.def	_encrypt;	.scl	2;	.type	32;	.endef
_encrypt:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
	movl	$-1640531527, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -16(%ebp)
	jmp	L74
L75:
	movl	-20(%ebp), %eax
	addl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-8(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	addl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-4(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-36(%ebp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	addl	%eax, -8(%ebp)
	addl	$1, -16(%ebp)
L74:
	cmpl	$31, -16(%ebp)
	jbe	L75
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.globl	_decrypt
	.def	_decrypt;	.scl	2;	.type	32;	.endef
_decrypt:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	$-957401312, -12(%ebp)
	movl	$-1640531527, -20(%ebp)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -16(%ebp)
	jmp	L77
L78:
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-4(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-36(%ebp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	subl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-8(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	subl	%eax, -4(%ebp)
	movl	-20(%ebp), %eax
	subl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L77:
	cmpl	$31, -16(%ebp)
	jbe	L78
	movl	8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-8(%ebp), %eax
	movl	%eax, (%edx)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	_TEA_Enc
	.def	_TEA_Enc;	.scl	2;	.type	32;	.endef
_TEA_Enc:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	$-1640531527, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -4(%ebp)
	jmp	L80
L81:
	addl	$1, -4(%ebp)
L80:
	cmpl	$31, -4(%ebp)
	jle	L81
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.globl	_Hex2Dec
	.def	_Hex2Dec;	.scl	2;	.type	32;	.endef
_Hex2Dec:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$0, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	L83
L86:
	movl	-36(%ebp), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	-32(%ebp), %eax
	cltd
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$16, (%esp)
	movl	$0, 4(%esp)
	call	_m_pow
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	jg	L84
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jle	L84
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	jmp	L85
L84:
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
L85:
	cltd
	movl	%ebx, %edi
	imull	%eax, %edi
	movl	%edx, %esi
	imull	%ecx, %esi
	addl	%edi, %esi
	mull	%ecx
	leal	(%esi,%edx), %ecx
	movl	%ecx, %edx
	addl	%eax, -28(%ebp)
	subl	$1, -32(%ebp)
L83:
	cmpl	$0, -32(%ebp)
	jns	L86
	movl	-28(%ebp), %eax
	addl	$44, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC6:
	.ascii "%i %i %i %i\11\0"
LC7:
	.ascii "ok\12%i %i %i %i\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	andl	$-16, %esp
	subl	$160, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	call	___main
	movb	$102, 119(%esp)
	movb	$76, 120(%esp)
	movb	$97, 121(%esp)
	movb	$67, 122(%esp)
	movb	$0, 123(%esp)
	movb	$0, 124(%esp)
	movb	$0, 125(%esp)
	movb	$34, 126(%esp)
	movl	$0, 108(%esp)
	movl	$0, 112(%esp)
	movl	$0, 156(%esp)
	jmp	L89
L108:
	movl	$0, 152(%esp)
	jmp	L90
L107:
	movl	$0, 148(%esp)
	jmp	L91
L106:
	movl	$0, 144(%esp)
	jmp	L92
L105:
	movl	144(%esp), %eax
	movl	%eax, 16(%esp)
	movl	148(%esp), %eax
	movl	%eax, 12(%esp)
	movl	152(%esp), %eax
	movl	%eax, 8(%esp)
	movl	156(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$0, 92(%esp)
	movl	$0, 96(%esp)
	movl	$0, 100(%esp)
	movl	$0, 104(%esp)
	movl	156(%esp), %eax
	movl	%eax, 92(%esp)
	movl	152(%esp), %eax
	movl	%eax, 96(%esp)
	movl	148(%esp), %eax
	movl	%eax, 100(%esp)
	movl	144(%esp), %eax
	movl	%eax, 104(%esp)
	movl	$0, 75(%esp)
	movl	$0, 79(%esp)
	movl	$0, 83(%esp)
	movl	$0, 87(%esp)
	movb	$0, 91(%esp)
	movl	$0, 140(%esp)
	jmp	L93
L95:
	leal	119(%esp), %edx
	movl	140(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	$16, 8(%esp)
	leal	38(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_itoa
	leal	38(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jne	L94
	leal	75(%esp), %eax
	movl	$-1, %ecx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%edx, %edi
	repnz scasb
	movl	%ecx, %eax
	notl	%eax
	leal	-1(%eax), %edx
	leal	75(%esp), %eax
	addl	%edx, %eax
	movw	$48, (%eax)
L94:
	leal	38(%esp), %eax
	movl	%eax, 4(%esp)
	leal	75(%esp), %eax
	movl	%eax, (%esp)
	call	_strcat
	addl	$1, 140(%esp)
L93:
	cmpl	$7, 140(%esp)
	jle	L95
	movl	$0, 66(%esp)
	movl	$0, 70(%esp)
	movb	$0, 74(%esp)
	movl	$8, 8(%esp)
	leal	75(%esp), %eax
	movl	%eax, 4(%esp)
	leal	66(%esp), %eax
	movl	%eax, (%esp)
	call	_strncpy
	leal	75(%esp), %eax
	addl	$8, %eax
	movl	%eax, 132(%esp)
	leal	66(%esp), %eax
	movl	%eax, (%esp)
	call	_Hex2Dec
	movl	%eax, 108(%esp)
	movl	132(%esp), %eax
	movl	%eax, (%esp)
	call	_Hex2Dec
	movl	%eax, 112(%esp)
	leal	92(%esp), %eax
	movl	%eax, 4(%esp)
	leal	108(%esp), %eax
	movl	%eax, (%esp)
	call	_encrypt
	movl	$0, 49(%esp)
	movl	$0, 53(%esp)
	movl	$0, 57(%esp)
	movl	$0, 61(%esp)
	movb	$0, 65(%esp)
	movl	108(%esp), %eax
	movl	%eax, %edx
	movl	$16, 8(%esp)
	leal	49(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_itoa
	leal	49(%esp), %eax
	addl	$8, %eax
	movl	112(%esp), %edx
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_itoa
	leal	49(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, 128(%esp)
	movl	$0, 136(%esp)
	jmp	L96
L102:
	leal	49(%esp), %edx
	movl	136(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	jg	L97
	leal	49(%esp), %edx
	movl	136(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jle	L97
	leal	49(%esp), %edx
	movl	136(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	sall	$4, %eax
	movl	%eax, %edx
	jmp	L98
L97:
	leal	49(%esp), %edx
	movl	136(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	addl	$9, %eax
	sall	$4, %eax
	movl	%eax, %edx
L98:
	movl	136(%esp), %eax
	addl	$1, %eax
	movzbl	49(%esp,%eax), %eax
	cmpb	$57, %al
	jg	L99
	movl	136(%esp), %eax
	addl	$1, %eax
	movzbl	49(%esp,%eax), %eax
	cmpb	$47, %al
	jle	L99
	movl	136(%esp), %eax
	addl	$1, %eax
	movzbl	49(%esp,%eax), %eax
	subl	$48, %eax
	jmp	L100
L99:
	movl	136(%esp), %eax
	addl	$1, %eax
	movzbl	49(%esp,%eax), %eax
	subl	$87, %eax
L100:
	addl	%edx, %eax
	movb	%al, 127(%esp)
	leal	41(%esp), %edx
	movl	136(%esp), %eax
	addl	%eax, %edx
	movzbl	127(%esp), %eax
	movb	%al, (%edx)
	movsbl	127(%esp), %eax
	movl	%eax, (%esp)
	call	_putchar
	movl	136(%esp), %eax
	addl	$_y_, %eax
	movzbl	(%eax), %eax
	cmpb	%al, 127(%esp)
	je	L101
	movl	$0, _yes
L101:
	addl	$2, 136(%esp)
L96:
	movl	128(%esp), %eax
	subl	$1, %eax
	cmpl	%eax, 136(%esp)
	jl	L102
	movl	$10, (%esp)
	call	_putchar
	movl	_yes, %eax
	testl	%eax, %eax
	je	L103
	movl	104(%esp), %ebx
	movl	100(%esp), %ecx
	movl	96(%esp), %edx
	movl	92(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	$0, %eax
	jmp	L109
L103:
	movl	$1, _yes
	addl	$1, 144(%esp)
L92:
	cmpl	$-1, 144(%esp)
	jne	L105
	addl	$1, 148(%esp)
L91:
	cmpl	$-1, 148(%esp)
	jne	L106
	addl	$1, 152(%esp)
L90:
	cmpl	$-1, 152(%esp)
	jne	L107
	addl	$1, 156(%esp)
L89:
	cmpl	$-1, 156(%esp)
	jne	L108
	movl	$0, %eax
L109:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	__ftelli64;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_strtok;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_itoa;	.scl	2;	.type	32;	.endef
