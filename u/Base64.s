	.file	"Base64.c"
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
	.globl	_encodeTable
	.data
	.align 32
_encodeTable:
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\0"
	.globl	_decodeTable
	.bss
	.align 32
_decodeTable:
	.space 128
	.text
	.globl	_e1
	.def	_e1;	.scl	2;	.type	32;	.endef
_e1:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	sarl	$2, %eax
	andl	$63, %eax
	movzbl	_encodeTable(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	sarl	$4, %eax
	andl	$15, %eax
	orl	%edx, %eax
	movl	-4(%ebp), %edx
	addl	$1, %edx
	movzbl	_encodeTable(%eax), %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	sarl	$6, %eax
	andl	$3, %eax
	orl	%edx, %eax
	movl	-4(%ebp), %edx
	addl	$2, %edx
	movzbl	_encodeTable(%eax), %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	andl	$63, %eax
	movl	-4(%ebp), %edx
	addl	$3, %edx
	movzbl	_encodeTable(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.globl	_d1
	.def	_d1;	.scl	2;	.type	32;	.endef
_d1:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	movsbl	%al, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	sarb	$4, %al
	orl	%eax, %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	movsbl	%al, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	sarb	$2, %al
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	addl	$1, %eax
	orl	%ecx, %edx
	movb	%dl, (%eax)
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	movsbl	%al, %eax
	sall	$6, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %edx
	movl	-4(%ebp), %eax
	addl	$2, %eax
	orl	%ecx, %edx
	movb	%dl, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	_d1_EQ_M
	.def	_d1_EQ_M;	.scl	2;	.type	32;	.endef
_d1_EQ_M:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	cmpl	$2, 16(%ebp)
	jne	L77
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	movsbl	%al, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	sarb	$4, %al
	orl	%eax, %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-4(%ebp), %eax
	jmp	L78
L77:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	movsbl	%al, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	sarb	$4, %al
	orl	%eax, %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	movsbl	%al, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	_decodeTable(%eax), %eax
	sarb	$2, %al
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	addl	$1, %eax
	orl	%ecx, %edx
	movb	%dl, (%eax)
	movl	-4(%ebp), %eax
L78:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.globl	_eD
	.def	_eD;	.scl	2;	.type	32;	.endef
_eD:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -12(%ebp)
	jmp	L80
L83:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_e1
	movl	$0, -16(%ebp)
	jmp	L81
L82:
	leal	-44(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_putchar
	addl	$1, -16(%ebp)
L81:
	cmpl	$3, -16(%ebp)
	jle	L82
	addl	$1, -12(%ebp)
L80:
	movl	-12(%ebp), %eax
	cmpl	-40(%ebp), %eax
	jl	L83
	cmpl	$0, -36(%ebp)
	je	L91
	movw	$0, -47(%ebp)
	movb	$0, -45(%ebp)
	movl	$0, -20(%ebp)
	jmp	L85
L86:
	movl	-40(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	-47(%ebp), %ecx
	movl	-20(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -20(%ebp)
L85:
	movl	-20(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	L86
	leal	-47(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_e1
	movl	$0, -24(%ebp)
	jmp	L87
L88:
	leal	-44(%ebp), %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_putchar
	addl	$1, -24(%ebp)
L87:
	movl	-36(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jge	L88
	movl	$0, -28(%ebp)
	jmp	L89
L90:
	movl	$61, (%esp)
	call	_putchar
	addl	$1, -28(%ebp)
L89:
	movl	$3, %eax
	subl	-36(%ebp), %eax
	cmpl	%eax, -28(%ebp)
	jl	L90
L91:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.globl	_dD
	.def	_dD;	.scl	2;	.type	32;	.endef
_dD:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -36(%ebp)
	movl	-32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	sete	%al
	movzbl	%al, %edx
	movl	-32(%ebp), %eax
	leal	-2(%eax), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	sete	%al
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -40(%ebp)
	movl	-32(%ebp), %eax
	subl	-40(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -48(%ebp)
	movw	$0, -51(%ebp)
	movb	$0, -49(%ebp)
	cmpl	$0, -40(%ebp)
	je	L93
	movl	$0, -12(%ebp)
	jmp	L94
L97:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	leal	-51(%ebp), %eax
	movl	%eax, (%esp)
	call	_d1
	movl	$0, -16(%ebp)
	jmp	L95
L96:
	leal	-51(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_putchar
	addl	$1, -16(%ebp)
L95:
	cmpl	$2, -16(%ebp)
	jle	L96
	addl	$1, -12(%ebp)
L94:
	movl	-12(%ebp), %eax
	cmpl	-48(%ebp), %eax
	jl	L97
	movl	-48(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-51(%ebp), %eax
	movl	%eax, (%esp)
	call	_d1_EQ_M
	movl	$0, -20(%ebp)
	jmp	L98
L99:
	leal	-51(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_putchar
	addl	$1, -20(%ebp)
L98:
	movl	$3, %eax
	subl	-40(%ebp), %eax
	cmpl	%eax, -20(%ebp)
	jl	L99
	jmp	L105
L93:
	movl	$0, -24(%ebp)
	jmp	L101
L104:
	movl	-24(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	leal	-51(%ebp), %eax
	movl	%eax, (%esp)
	call	_d1
	movl	$0, -28(%ebp)
	jmp	L102
L103:
	leal	-51(%ebp), %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_putchar
	addl	$1, -28(%ebp)
L102:
	cmpl	$2, -28(%ebp)
	jle	L103
	addl	$1, -24(%ebp)
L101:
	movl	-24(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jl	L104
L105:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.globl	_sDT
	.def	_sDT;	.scl	2;	.type	32;	.endef
_sDT:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$65, -4(%ebp)
	jmp	L107
L108:
	movl	-4(%ebp), %eax
	subl	$65, %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	addl	$_decodeTable, %eax
	movb	%dl, (%eax)
	addl	$1, -4(%ebp)
L107:
	cmpl	$90, -4(%ebp)
	jle	L108
	movl	$97, -8(%ebp)
	jmp	L109
L110:
	movl	-8(%ebp), %eax
	subl	$71, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	$_decodeTable, %eax
	movb	%dl, (%eax)
	addl	$1, -8(%ebp)
L109:
	cmpl	$122, -8(%ebp)
	jle	L110
	movl	$48, -12(%ebp)
	jmp	L111
L112:
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	$_decodeTable, %eax
	movb	%dl, (%eax)
	addl	$1, -12(%ebp)
L111:
	cmpl	$58, -12(%ebp)
	jle	L112
	movb	$62, _decodeTable+43
	movb	$63, _decodeTable+47
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
	.globl	_eT_D
	.def	_eT_D;	.scl	2;	.type	32;	.endef
_eT_D:
LFB40:
	.cfi_startproc
	nop
	ret
	.cfi_endproc
LFE40:
	.globl	_e_1023P
	.def	_e_1023P;	.scl	2;	.type	32;	.endef
_e_1023P:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	je	L115
	movl	-12(%ebp), %eax
	addl	$1, %eax
	jmp	L116
L115:
	movl	-12(%ebp), %eax
L116:
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -4(%ebp)
	jmp	L117
L118:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_e1
	addl	$1, -4(%ebp)
L117:
	movl	-4(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	L118
	cmpl	$0, -16(%ebp)
	je	L119
	movl	-24(%ebp), %eax
	leal	-3(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	jmp	L120
L121:
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movb	$61, (%eax)
	addl	$1, -8(%ebp)
L120:
	movl	-8(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jl	L121
L119:
	movl	-24(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE41:
	.globl	_d_1024P
	.def	_d_1024P;	.scl	2;	.type	32;	.endef
_d_1024P:
LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %eax
	leal	3(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L124
	movl	-8(%ebp), %eax
	addl	$1, %eax
	jmp	L125
L124:
	movl	-8(%ebp), %eax
L125:
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -4(%ebp)
	jmp	L126
L127:
	movl	-4(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_d1
	addl	$1, -4(%ebp)
L126:
	movl	-4(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L127
	movl	-20(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE42:
	.globl	_d_1024P_eqM
	.def	_d_1024P_eqM;	.scl	2;	.type	32;	.endef
_d_1024P_eqM:
LFB43:
	.cfi_startproc
	movl	$0, %eax
	ret
	.cfi_endproc
LFE43:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC6:
	.ascii "-f\0"
LC7:
	.ascii "-decode\0"
LC8:
	.ascii "rb\0"
LC9:
	.ascii "wb\0"
LC10:
	.ascii "Decoding...\0"
LC12:
	.ascii "%f\12\0"
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.def	___moddi3;	.scl	2;	.type	32;	.endef
LC13:
	.ascii "Encoding...\0"
LC14:
	.ascii "Done!\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB44:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$2568, %esp
	movl	%ecx, %ebx
	call	___main
	cmpl	$1, (%ebx)
	jg	L132
	movl	$0, %eax
	jmp	L133
L132:
	cmpl	$2, (%ebx)
	jne	L134
	movl	4(%ebx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_eD
	movl	$0, %eax
	jmp	L133
L134:
	cmpl	$2, (%ebx)
	jle	L135
	movl	(%ebx), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %edx
	movl	4(%ebx), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	$LC6, 4(%esp)
	movl	%eax, (%esp)
	call	_Str_Cmp_nMatchCase
	movl	%eax, -36(%ebp)
	movl	4(%ebx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_Str_Cmp_nMatchCase
	testl	%eax, %eax
	je	L136
	call	_sDT
	movl	4(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -40(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L137
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_dD
	jmp	L135
L137:
	movl	%esp, %eax
	movl	%eax, %esi
	movl	$LC8, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -44(%ebp)
	cmpl	$0, -44(%ebp)
	jne	L139
	movl	$-1, %eax
	jmp	L140
L139:
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	14(%eax), %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -48(%ebp)
	movl	$16, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$16, %edi
	movl	$0, %edx
	divl	%edi
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	16(%esp), %eax
	addl	$0, %eax
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcpy
	movl	-52(%ebp), %ebx
	movl	%ebx, %eax
	movl	$-1, %ecx
	movl	%eax, %edx
	movl	$0, %eax
	movl	%edx, %edi
	repnz scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%ebx, %eax
	movl	$1935753774, (%eax)
	movl	$1681143397, 4(%eax)
	movl	$2020879951, 8(%eax)
	movw	$116, 12(%eax)
	movl	-52(%ebp), %eax
	movl	$LC9, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -56(%ebp)
	cmpl	$0, -56(%ebp)
	jne	L141
	movl	$-1, %eax
	jmp	L140
L141:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_getFileSize
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	cltd
	movl	%eax, %edi
	andl	$1023, %edi
	movl	%edi, -2536(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -2532(%ebp)
	movl	-2536(%ebp), %eax
	movl	-2532(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	shrdl	$10, %edx, %eax
	sarl	$10, %edx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-64(%ebp), %ecx
	movl	-60(%ebp), %ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	cltd
	movl	%ecx, %edi
	xorl	%eax, %edi
	movl	%edi, -2544(%ebp)
	movl	%ebx, %edi
	xorl	%edx, %edi
	movl	%edi, -2540(%ebp)
	movl	-2544(%ebp), %ecx
	movl	-2540(%ebp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %edi
	andl	$1023, %edi
	movl	%edi, -2552(%ebp)
	movl	%ebx, %edi
	andl	$0, %edi
	movl	%edi, -2548(%ebp)
	movl	-2552(%ebp), %ecx
	movl	-2548(%ebp), %ebx
	movl	%ecx, %edi
	xorl	%eax, %edi
	movl	%edi, -2560(%ebp)
	movl	%ebx, %edi
	xorl	%edx, %edi
	movl	%edi, -2556(%ebp)
	movl	-2560(%ebp), %ecx
	movl	-2556(%ebp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	movl	%eax, -76(%ebp)
	movl	$LC10, (%esp)
	call	_puts
	movl	$0, -32(%ebp)
	jmp	L142
L144:
	movl	-32(%ebp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$2000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L143
	fildl	-32(%ebp)
	fildq	-72(%ebp)
	fstpl	-2528(%ebp)
	fldl	-2528(%ebp)
	fdivrp	%st, %st(1)
	fldl	LC11
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC12, (%esp)
	call	_printf
L143:
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1024, 4(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$1024, 8(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2511(%ebp), %eax
	movl	%eax, (%esp)
	call	_d_1024P
	addl	$1, -32(%ebp)
L142:
	movl	-32(%ebp), %eax
	cltd
	movl	-72(%ebp), %ecx
	movl	-68(%ebp), %ebx
	addl	$-1, %ecx
	adcl	$-1, %ebx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jl	L144
	movl	-44(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	-76(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2511(%ebp), %eax
	movl	%eax, (%esp)
	call	_d_1024P
	movl	%esi, %esp
	jmp	L135
L140:
	movl	%esi, %esp
	jmp	L133
L136:
	movl	4(%ebx), %eax
	movl	8(%eax), %eax
	movl	%eax, -80(%ebp)
	cmpl	$0, -36(%ebp)
	jne	L145
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_eD
	jmp	L135
L145:
	movl	%esp, %eax
	movl	%eax, %esi
	movl	$LC8, 4(%esp)
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -84(%ebp)
	cmpl	$0, -84(%ebp)
	jne	L146
	movl	$-1, %eax
	jmp	L147
L146:
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$14, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -88(%ebp)
	movl	$16, %edx
	subl	$1, %edx
	addl	%edx, %eax
	movl	$16, %ebx
	movl	$0, %edx
	divl	%ebx
	imull	$16, %eax, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	16(%esp), %eax
	addl	$0, %eax
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-92(%ebp), %edx
	movl	%edx, %eax
	movl	$-1, %ecx
	movl	%eax, %ebx
	movl	$0, %eax
	movl	%ebx, %edi
	repnz scasb
	movl	%ecx, %eax
	notl	%eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$1935753774, (%eax)
	movl	$1697920613, 4(%eax)
	movl	$2020879951, 8(%eax)
	movw	$116, 12(%eax)
	movl	-92(%ebp), %eax
	movl	$LC9, 4(%esp)
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -96(%ebp)
	cmpl	$0, -96(%ebp)
	jne	L148
	movl	$-1, %eax
	jmp	L147
L148:
	movl	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_getFileSize
	movl	%eax, -104(%ebp)
	movl	%edx, -100(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	$1023, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	movl	$1023, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movl	%eax, -116(%ebp)
	movl	$LC13, (%esp)
	call	_puts
	movl	$0, -28(%ebp)
	jmp	L149
L151:
	movl	-28(%ebp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$2000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L150
	fildl	-28(%ebp)
	fildq	-112(%ebp)
	fstpl	-2528(%ebp)
	fldl	-2528(%ebp)
	fdivrp	%st, %st(1)
	fldl	LC11
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC12, (%esp)
	call	_printf
L150:
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1023, 4(%esp)
	leal	-2511(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$1023, 8(%esp)
	leal	-2511(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, (%esp)
	call	_e_1023P
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$1, -28(%ebp)
L149:
	movl	-28(%ebp), %eax
	cltd
	movl	-112(%ebp), %ecx
	movl	-108(%ebp), %ebx
	addl	$-1, %ecx
	adcl	$-1, %ebx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jl	L151
	cmpl	$0, -116(%ebp)
	je	L152
	movl	-84(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2511(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-2511(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, (%esp)
	call	_e_1023P
	movl	%eax, -124(%ebp)
	movl	-124(%ebp), %eax
	movl	-96(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-1488(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
L152:
	movl	$LC14, (%esp)
	call	_puts
	movl	%esi, %esp
	jmp	L135
L147:
	movl	%esi, %esp
	jmp	L133
L135:
	movl	$0, %eax
L133:
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE44:
	.section .rdata,"dr"
	.align 8
LC11:
	.long	0
	.long	1079574528
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
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
