	.file	"qmc.c"
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
	.globl	_seedMap
	.data
	.align 32
_seedMap:
	.byte	74
	.byte	-42
	.byte	-54
	.byte	-112
	.byte	103
	.byte	-9
	.byte	82
	.byte	94
	.byte	-107
	.byte	35
	.byte	-97
	.byte	19
	.byte	17
	.byte	126
	.byte	71
	.byte	116
	.byte	61
	.byte	-112
	.byte	-86
	.byte	63
	.byte	81
	.byte	-58
	.byte	9
	.byte	-43
	.byte	-97
	.byte	-6
	.byte	102
	.byte	-7
	.byte	-13
	.byte	-42
	.byte	-95
	.byte	-112
	.byte	-96
	.byte	-9
	.byte	-16
	.byte	29
	.byte	-107
	.byte	-34
	.byte	-97
	.byte	-124
	.byte	17
	.byte	-12
	.byte	14
	.byte	116
	.byte	-69
	.byte	-112
	.byte	-68
	.byte	63
	.byte	-110
	.byte	0
	.byte	9
	.byte	91
	.byte	-97
	.byte	98
	.byte	102
	.byte	-95
	.globl	_x
	.align 4
_x:
	.long	-1
	.globl	_y
	.align 4
_y:
	.long	8
	.globl	_dx
	.align 4
_dx:
	.long	1
	.globl	_i
	.align 4
_i:
	.long	-1
	.text
	.globl	_nextMask_
	.def	_nextMask_;	.scl	2;	.type	32;	.endef
_nextMask_:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
L78:
	movl	_i, %eax
	addl	$1, %eax
	movl	%eax, _i
	movl	_x, %eax
	testl	%eax, %eax
	jns	L74
	movl	$1, _dx
	movl	_y, %eax
	movl	$8, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, _y
	movb	$-61, -1(%ebp)
	jmp	L75
L74:
	movl	_x, %eax
	cmpl	$6, %eax
	jle	L76
	movl	$-1, _dx
	movl	_y, %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, _y
	movb	$-40, -1(%ebp)
	jmp	L75
L76:
	movl	_y, %edx
	movl	_x, %ecx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	addl	$_seedMap, %eax
	movzbl	(%eax), %eax
	movb	%al, -1(%ebp)
L75:
	movl	_x, %edx
	movl	_dx, %eax
	addl	%edx, %eax
	movl	%eax, _x
	movl	_i, %eax
	cmpl	$32768, %eax
	jne	L77
	movl	_i, %eax
	cmpl	$32768, %eax
	jle	L77
	movl	_i, %eax
	addl	$1, %eax
	andl	$32767, %eax
	testl	%eax, %eax
	jne	L77
	jmp	L78
L77:
	movzbl	-1(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
LC6:
	.ascii "rb\0"
LC7:
	.ascii "wb\0"
	.text
	.globl	_decode
	.def	_decode;	.scl	2;	.type	32;	.endef
_decode:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$1120, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	$LC6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L81
	movl	$-1, %eax
	jmp	L91
L81:
	movl	$LC7, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -28(%ebp)
	cmpl	$0, -28(%ebp)
	jne	L83
	movl	$-1, %eax
	jmp	L91
L83:
	leal	-1076(%ebp), %ebx
	movl	$0, %eax
	movl	$256, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosl
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_getFileSize
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	cltd
	movl	%eax, %edi
	andl	$1023, %edi
	movl	%edi, -1088(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -1084(%ebp)
	movl	-1088(%ebp), %eax
	movl	-1084(%ebp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	shrdl	$10, %edx, %eax
	sarl	$10, %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	cltd
	movl	%ecx, %edi
	xorl	%eax, %edi
	movl	%edi, -1096(%ebp)
	movl	%ebx, %edi
	xorl	%edx, %edi
	movl	%edi, -1092(%ebp)
	movl	-1096(%ebp), %ecx
	movl	-1092(%ebp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %edi
	andl	$1023, %edi
	movl	%edi, -1104(%ebp)
	andl	$0, %ebx
	movl	%ebx, -1100(%ebp)
	movl	-1104(%ebp), %ecx
	movl	-1100(%ebp), %ebx
	movl	%ecx, %edi
	xorl	%eax, %edi
	movl	%edi, -1112(%ebp)
	xorl	%edx, %ebx
	movl	%ebx, -1108(%ebp)
	movl	-1112(%ebp), %ecx
	movl	-1108(%ebp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	movl	%eax, -52(%ebp)
	movl	$0, -12(%ebp)
	jmp	L84
L87:
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1024, 4(%esp)
	leal	-1076(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$0, -16(%ebp)
	jmp	L85
L86:
	call	_nextMask_
	movl	%eax, %ecx
	leal	-1076(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	xorl	%eax, %ecx
	leal	-1076(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, -16(%ebp)
L85:
	cmpl	$1023, -16(%ebp)
	jle	L86
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1024, 4(%esp)
	leal	-1076(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$1, -12(%ebp)
L84:
	movl	-12(%ebp), %eax
	cltd
	cmpl	-48(%ebp), %eax
	movl	%edx, %eax
	sbbl	-44(%ebp), %eax
	jl	L87
	cmpl	$0, -52(%ebp)
	jne	L88
	movl	-52(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-1076(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$0, -20(%ebp)
	jmp	L89
L90:
	call	_nextMask_
	movl	%eax, %ecx
	leal	-1076(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	xorl	%eax, %ecx
	leal	-1076(%ebp), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, -20(%ebp)
L89:
	movl	-20(%ebp), %eax
	cmpl	-52(%ebp), %eax
	jl	L90
	movl	-52(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-1076(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
L88:
	movl	$0, %eax
L91:
	addl	$1120, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	cmpl	$2, 8(%ebp)
	jle	L93
	movl	12(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_decode
L93:
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
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
