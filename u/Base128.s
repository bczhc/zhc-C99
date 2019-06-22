	.file	"Base128.c"
	.text
	.globl	_ToUpperCase
	.def	_ToUpperCase;	.scl	2;	.type	32;	.endef
_ToUpperCase:
LFB20:
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
LFE20:
	.section .rdata,"dr"
LC0:
	.ascii "%i%c\0"
LC1:
	.ascii "%i]___%u\0"
	.text
	.globl	_PrintArr
	.def	_PrintArr;	.scl	2;	.type	32;	.endef
_PrintArr:
LFB21:
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
LFE21:
	.globl	_m_pow
	.def	_m_pow;	.scl	2;	.type	32;	.endef
_m_pow:
LFB22:
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
LFE22:
	.globl	_BinToDec
	.def	_BinToDec;	.scl	2;	.type	32;	.endef
_BinToDec:
LFB23:
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
LFE23:
	.section .rdata,"dr"
LC2:
	.ascii "%i\0"
LC3:
	.ascii "]\0"
	.text
	.globl	_printArr
	.def	_printArr;	.scl	2;	.type	32;	.endef
_printArr:
LFB24:
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
LFE24:
	.globl	_substring
	.def	_substring;	.scl	2;	.type	32;	.endef
_substring:
LFB25:
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
LFE25:
	.globl	_substr
	.def	_substr;	.scl	2;	.type	32;	.endef
_substr:
LFB26:
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
LFE26:
	.globl	_substr2
	.def	_substr2;	.scl	2;	.type	32;	.endef
_substr2:
LFB27:
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
LFE27:
	.section .rdata,"dr"
LC4:
	.ascii "Get file size error.\0"
	.text
	.globl	_getFileSize
	.def	_getFileSize;	.scl	2;	.type	32;	.endef
_getFileSize:
LFB28:
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
LFE28:
	.globl	_getIntegerLen
	.def	_getIntegerLen;	.scl	2;	.type	32;	.endef
_getIntegerLen:
LFB29:
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
LFE29:
	.section .rdata,"dr"
LC5:
	.ascii "%c\0"
	.text
	.globl	_Scanf
	.def	_Scanf;	.scl	2;	.type	32;	.endef
_Scanf:
LFB30:
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
LFE30:
	.globl	_strcat_auto
	.def	_strcat_auto;	.scl	2;	.type	32;	.endef
_strcat_auto:
LFB31:
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
LFE31:
	.globl	_charToCharPtr
	.def	_charToCharPtr;	.scl	2;	.type	32;	.endef
_charToCharPtr:
LFB32:
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
LFE32:
	.globl	_strInStrCount
	.def	_strInStrCount;	.scl	2;	.type	32;	.endef
_strInStrCount:
LFB33:
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
LFE33:
	.globl	_split
	.def	_split;	.scl	2;	.type	32;	.endef
_split:
LFB34:
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
LFE34:
	.globl	_Str_Cmp_nMatchCase
	.def	_Str_Cmp_nMatchCase;	.scl	2;	.type	32;	.endef
_Str_Cmp_nMatchCase:
LFB35:
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
LFE35:
	.globl	_m_itoa
	.def	_m_itoa;	.scl	2;	.type	32;	.endef
_m_itoa:
LFB36:
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
LFE36:
	.globl	_e_table_l
	.data
	.align 4
_e_table_l:
	.byte	1
	.byte	3
	.byte	7
	.byte	15
	.byte	31
	.byte	63
	.byte	127
	.text
	.globl	_e1
	.def	_e1;	.scl	2;	.type	32;	.endef
_e1:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	sarl	%eax
	andl	$127, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	movl	$1, -8(%ebp)
	jmp	L74
L75:
	movl	-8(%ebp), %eax
	leal	-1(%eax), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movzbl	_e_table_l(%eax), %eax
	andl	%edx, %eax
	movsbl	%al, %edx
	movl	$7, %eax
	subl	-8(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	orl	%ecx, %ebx
	movl	%ebx, %edx
	movb	%dl, (%eax)
	addl	$1, -8(%ebp)
L74:
	cmpl	$6, -8(%ebp)
	jle	L75
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	addl	$7, %eax
	andl	$127, %edx
	movb	%dl, (%eax)
	nop
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.globl	_d1
	.def	_d1;	.scl	2;	.type	32;	.endef
_d1:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movl	$0, -8(%ebp)
	jmp	L77
L78:
	movl	-8(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	%al, %edx
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movl	-8(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movzbl	%al, %edx
	movl	$6, %eax
	subl	-8(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movl	-8(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	orl	%ecx, %ebx
	movl	%ebx, %edx
	movb	%dl, (%eax)
	addl	$1, -8(%ebp)
L77:
	cmpl	$6, -8(%ebp)
	jle	L78
	nop
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.globl	_e_1029P
	.def	_e_1029P;	.scl	2;	.type	32;	.endef
_e_1029P:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L80
	movl	-8(%ebp), %eax
	addl	$1, %eax
	jmp	L81
L80:
	movl	-8(%ebp), %eax
L81:
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	sall	$3, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -4(%ebp)
	jmp	L82
L83:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_e1
	addl	$1, -4(%ebp)
L82:
	movl	-4(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L83
	movl	-20(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
	.globl	_d_1176P
	.def	_d_1176P;	.scl	2;	.type	32;	.endef
_d_1176P:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %eax
	leal	7(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%ebp)
	movl	16(%ebp), %eax
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L86
	movl	-8(%ebp), %eax
	addl	$1, %eax
	jmp	L87
L86:
	movl	-8(%ebp), %eax
L87:
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -4(%ebp)
	jmp	L88
L89:
	movl	-4(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_d1
	addl	$1, -4(%ebp)
L88:
	movl	-4(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L89
	movl	-20(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE40:
	.section .rdata,"dr"
LC6:
	.ascii "rb\0"
LC7:
	.ascii "fopen error. \0"
LC8:
	.ascii "wb\0"
	.def	___divdi3;	.scl	2;	.type	32;	.endef
LC9:
	.ascii "size: %lld\12\0"
	.def	___moddi3;	.scl	2;	.type	32;	.endef
LC11:
	.ascii "progress: %f%%\12\0"
	.align 4
LC14:
	.ascii "progress: 100.000000%%\12speed: %fMB/s\0"
	.text
	.globl	_eD
	.def	_eD;	.scl	2;	.type	32;	.endef
_eD:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$2304, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	$LC6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L92
	movl	$LC7, (%esp)
	call	_puts
	movl	$-1, %eax
	jmp	L99
L92:
	movl	$LC8, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	jne	L94
	movl	$LC7, (%esp)
	call	_puts
	movl	$-1, %eax
	jmp	L99
L94:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_getFileSize
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$1029, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC9, (%esp)
	call	_printf
	call	_clock
	movl	%eax, -44(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$1029, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movl	%eax, -48(%ebp)
	leal	-1085(%ebp), %eax
	movl	$1029, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	leal	-2261(%ebp), %eax
	movl	$1176, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	movb	$0, -2269(%ebp)
	movb	$0, -2268(%ebp)
	movb	$0, -2267(%ebp)
	movb	$0, -2266(%ebp)
	movb	$0, -2265(%ebp)
	movb	$122, -2264(%ebp)
	movb	$104, -2263(%ebp)
	movb	$99, -2262(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$7, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movb	%al, -2269(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$8, 4(%esp)
	leal	-2269(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	$0, -12(%ebp)
	jmp	L95
L97:
	movl	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1029, 4(%esp)
	leal	-1085(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$1029, 8(%esp)
	leal	-1085(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2261(%ebp), %eax
	movl	%eax, (%esp)
	call	_e_1029P
	movl	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1176, 4(%esp)
	leal	-2261(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	movl	-12(%ebp), %ecx
	movl	$1759218605, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$13, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$20000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L96
	fildl	-12(%ebp)
	fildq	-40(%ebp)
	fstpl	-2288(%ebp)
	fldl	-2288(%ebp)
	fdivrp	%st, %st(1)
	fldl	LC10
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC11, (%esp)
	call	_printf
L96:
	addl	$1, -12(%ebp)
L95:
	movl	-12(%ebp), %eax
	cltd
	cmpl	-40(%ebp), %eax
	movl	%edx, %eax
	sbbl	-36(%ebp), %eax
	jl	L97
	cmpl	$0, -48(%ebp)
	je	L98
	movl	$1029, 8(%esp)
	movl	$0, 4(%esp)
	leal	-1085(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-48(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-1085(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	-48(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-1085(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2261(%ebp), %eax
	movl	%eax, (%esp)
	call	_e_1029P
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-2261(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
L98:
	call	_clock
	movl	%eax, -56(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	fildq	-32(%ebp)
	fstpl	-2288(%ebp)
	fldl	-2288(%ebp)
	movl	-56(%ebp), %eax
	subl	-44(%ebp), %eax
	movl	%eax, -2292(%ebp)
	fildl	-2292(%ebp)
	fldl	LC12
	faddp	%st, %st(1)
	fdivrp	%st, %st(1)
	fldl	LC13
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC14, (%esp)
	call	_printf
	movl	$0, %eax
L99:
	addl	$2304, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE41:
	.section .rdata,"dr"
LC16:
	.ascii "not Base128 encoded\0"
	.text
	.globl	_dD
	.def	_dD;	.scl	2;	.type	32;	.endef
_dD:
LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$2304, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	$LC6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -24(%ebp)
	cmpl	$0, -24(%ebp)
	jne	L101
	movl	$LC7, (%esp)
	call	_puts
	movl	$-1, %eax
	jmp	L111
L101:
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_getFileSize
	addl	$-8, %eax
	adcl	$-1, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$1176, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$8, %eax
	adcl	$0, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	$1176, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movl	%eax, -44(%ebp)
	leal	-1240(%ebp), %edx
	movl	$0, %eax
	movl	$294, %ecx
	movl	%edx, %edi
	rep stosl
	leal	-2269(%ebp), %eax
	movl	$1029, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	movl	$0, -48(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$8, 4(%esp)
	leal	-1240(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movb	$0, -2277(%ebp)
	movb	$0, -2276(%ebp)
	movb	$0, -2275(%ebp)
	movb	$0, -2274(%ebp)
	movb	$0, -2273(%ebp)
	movb	$122, -2272(%ebp)
	movb	$104, -2271(%ebp)
	movb	$99, -2270(%ebp)
	movl	$0, -12(%ebp)
	movl	$1, -16(%ebp)
	jmp	L103
L104:
	leal	-1240(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	leal	-2277(%ebp), %ecx
	movl	-16(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movzbl	%al, %eax
	addl	%eax, -12(%ebp)
	addl	$1, -16(%ebp)
L103:
	cmpl	$7, -16(%ebp)
	jle	L104
	cmpl	$0, -12(%ebp)
	jle	L105
	movl	$LC16, (%esp)
	call	_puts
	movl	$-2, %eax
	jmp	L111
L105:
	movl	$LC8, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -52(%ebp)
	cmpl	$0, -52(%ebp)
	jne	L106
	movl	$LC7, (%esp)
	call	_puts
	movl	$-1, %eax
	jmp	L111
L106:
	call	_clock
	movl	%eax, -56(%ebp)
	movzbl	-1240(%ebp), %eax
	movsbl	%al, %eax
	andl	$255, %eax
	movl	%eax, -48(%ebp)
	movl	$0, -20(%ebp)
	jmp	L107
L109:
	movl	-20(%ebp), %ecx
	movl	$1759218605, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$13, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$20000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	L108
	fildl	-20(%ebp)
	fildq	-40(%ebp)
	fstpl	-2288(%ebp)
	fldl	-2288(%ebp)
	fdivrp	%st, %st(1)
	fldl	LC10
	fmulp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC11, (%esp)
	call	_printf
L108:
	movl	-24(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1176, 4(%esp)
	leal	-1240(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$1176, 8(%esp)
	leal	-1240(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2269(%ebp), %eax
	movl	%eax, (%esp)
	call	_d_1176P
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1029, 4(%esp)
	leal	-2269(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$1, -20(%ebp)
L107:
	movl	-20(%ebp), %eax
	cltd
	cmpl	-40(%ebp), %eax
	movl	%edx, %eax
	sbbl	-36(%ebp), %eax
	jl	L109
	cmpl	$0, -44(%ebp)
	je	L110
	movl	-44(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	leal	-1240(%ebp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-1240(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-2269(%ebp), %eax
	movl	%eax, (%esp)
	call	_d_1176P
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	-48(%ebp), %eax
	addl	%edx, %eax
	subl	$7, %eax
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	%edx, 4(%esp)
	leal	-2269(%ebp), %eax
	movl	%eax, (%esp)
	call	_fwrite
L110:
	call	_clock
	movl	%eax, -64(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	addl	$8, %eax
	adcl	$0, %edx
	movl	%eax, -2296(%ebp)
	movl	%edx, -2292(%ebp)
	fildq	-2296(%ebp)
	fstpl	-2288(%ebp)
	fldl	-2288(%ebp)
	movl	-64(%ebp), %eax
	subl	-56(%ebp), %eax
	movl	%eax, -2296(%ebp)
	fildl	-2296(%ebp)
	fldl	LC12
	faddp	%st, %st(1)
	fdivrp	%st, %st(1)
	fldl	LC13
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC14, (%esp)
	call	_printf
	movl	$0, %eax
L111:
	addl	$2304, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE42:
	.globl	_NewFileName
	.def	_NewFileName;	.scl	2;	.type	32;	.endef
_NewFileName:
LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%esp, %eax
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$5, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -36(%ebp)
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
	movl	%eax, -40(%ebp)
	movl	$2, -28(%ebp)
L115:
	movl	$0, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_m_itoa
	movl	-40(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-40(%ebp), %edx
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
	movw	$10272, (%eax)
	movb	$0, 2(%eax)
	movl	-44(%ebp), %edx
	movl	-40(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcat
	movl	-40(%ebp), %edx
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
	movw	$41, (%eax)
	movl	-40(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_access
	cmpl	$-1, %eax
	jne	L113
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	movl	8(%ebp), %eax
	movl	%esi, %esp
	jmp	L116
L113:
	addl	$1, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L115
L116:
	leal	-12(%ebp), %esp
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
LFE43:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC17:
	.ascii "Base128\12Command [-encode | -decode] [[filePath]] [[DestFilePath]] |\12Command [-encode | -decode] [[filePath]]\0"
LC18:
	.ascii "-DECODE\0"
LC19:
	.ascii "Encoding...\0"
LC20:
	.ascii "Decoding...\0"
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
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	subl	$76, %esp
	movl	%ecx, %ebx
	call	___main
	movl	%esp, %eax
	movl	%eax, %esi
	cmpl	$2, (%ebx)
	jg	L118
	movl	$LC17, (%esp)
	call	_puts
	movl	$80, %eax
	jmp	L119
L118:
	movl	4(%ebx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
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
	movl	4(%ebx), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-32(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ToUpperCase
	movl	-32(%ebp), %eax
	movl	$LC18, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
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
	cmpl	$3, (%ebx)
	jne	L120
	movl	$8, %edx
	jmp	L121
L120:
	movl	$12, %edx
L121:
	movl	4(%ebx), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$3, (%ebx)
	jne	L122
	movl	$4, %edx
	jmp	L123
L122:
	movl	$0, %edx
L123:
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -48(%ebp)
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
	movl	%eax, -52(%ebp)
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$3, (%ebx)
	jne	L124
	movl	$4, %edx
	jmp	L125
L124:
	movl	$0, %edx
L125:
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, -56(%ebp)
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
	movl	%eax, -60(%ebp)
	cmpl	$3, (%ebx)
	jne	L126
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_NewFileName
	movl	-60(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	jmp	L127
L126:
	cmpl	$4, (%ebx)
	jne	L127
	movl	4(%ebx), %eax
	addl	$12, %eax
	movl	(%eax), %edx
	movl	-52(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
L127:
	cmpl	$0, -36(%ebp)
	jne	L128
	movl	$LC19, (%esp)
	call	_puts
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_eD
	jmp	L129
L128:
	movl	$LC20, (%esp)
	call	_puts
	movl	-52(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_dD
L129:
	cmpl	$3, (%ebx)
	jne	L130
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_remove
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %edx
	movl	-60(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_rename
L130:
	movl	$0, %eax
L119:
	movl	%esi, %esp
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE44:
	.section .rdata,"dr"
	.align 8
LC10:
	.long	0
	.long	1079574528
	.align 8
LC12:
	.long	-1717986918
	.long	1069128089
	.align 8
LC13:
	.long	-755914244
	.long	1083204173
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
	.def	_clock;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_access;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_remove;	.scl	2;	.type	32;	.endef
	.def	_rename;	.scl	2;	.type	32;	.endef
