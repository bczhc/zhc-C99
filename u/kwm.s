	.file	"kwm.c"
	.text
	.section .rdata,"dr"
LC0:
	.ascii "[\0"
LC1:
	.ascii "%i%c\0"
LC2:
	.ascii "\12%i]___%u\0"
	.text
	.globl	_PrintArr
	.def	_PrintArr;	.scl	2;	.type	32;	.endef
_PrintArr:
LFB16:
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
	movl	$LC0, (%esp)
	call	_puts
	movl	$0, -12(%ebp)
	jmp	L2
L4:
	cmpl	$16, -12(%ebp)
	jne	L3
	movl	$10, (%esp)
	call	_putchar
L3:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	$44, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L2:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	L4
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
	movl	$LC2, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC3:
	.ascii "Get file size error.\0"
	.text
	.globl	_getFileSize
	.def	_getFileSize;	.scl	2;	.type	32;	.endef
_getFileSize:
LFB17:
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
	jne	L6
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ftelli64
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	$LC3, (%esp)
	call	_puts
L6:
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
LFE17:
	.globl	_cmpCharArray
	.def	_cmpCharArray;	.scl	2;	.type	32;	.endef
_cmpCharArray:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	12(%ebp), %eax
	cmpl	20(%ebp), %eax
	je	L9
	movl	$0, %eax
	jmp	L10
L9:
	movl	$0, -4(%ebp)
	jmp	L11
L13:
	movl	-4(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	je	L12
	movl	$0, %eax
	jmp	L10
L12:
	addl	$1, -4(%ebp)
L11:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L13
	movl	$1, %eax
L10:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "Command [filePath] [destFilePath]\0"
LC5:
	.ascii "rb\0"
LC6:
	.ascii "fopen error.\0"
LC7:
	.ascii "wb\0"
LC8:
	.ascii "key: \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$1216, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	___main
	cmpl	$3, 8(%ebp)
	je	L15
	movl	$LC4, (%esp)
	call	_puts
	movl	$1, %eax
	jmp	L16
L15:
	movl	$0, 1212(%esp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 1176(%esp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 1172(%esp)
	movl	$0, 1168(%esp)
	movl	$0, 1164(%esp)
	movl	$LC5, 4(%esp)
	movl	1176(%esp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 1168(%esp)
	cmpl	$0, 1168(%esp)
	jne	L17
	movl	$LC6, (%esp)
	call	_printf
	movl	$-1, %eax
	jmp	L16
L17:
	movl	$LC7, 4(%esp)
	movl	1172(%esp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, 1164(%esp)
	cmpl	$0, 1164(%esp)
	jne	L19
	movl	$LC6, (%esp)
	call	_printf
	movl	$-1, %eax
	jmp	L16
L19:
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L20:
	movl	%ecx, 44(%esp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L20
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L22:
	movl	%ecx, 76(%esp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L22
	movl	1168(%esp), %eax
	movl	%eax, (%esp)
	call	_getFileSize
	movl	%eax, 1152(%esp)
	movl	%edx, 1156(%esp)
	movl	1152(%esp), %eax
	movl	1156(%esp), %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%edx, %eax
	sarl	$31, %eax
	cltd
	movl	%eax, %ebx
	andl	$1023, %ebx
	movl	%ebx, %esi
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	addl	24(%esp), %eax
	adcl	28(%esp), %edx
	movl	%eax, %ebx
	movl	%edx, %esi
	movl	%ebx, %eax
	movl	%esi, %edx
	shrdl	$10, %edx, %eax
	sarl	$10, %edx
	movl	%eax, 1144(%esp)
	movl	%edx, 1148(%esp)
	movl	1152(%esp), %eax
	andl	$1023, %eax
	movl	%eax, 1140(%esp)
	movl	$0, 8(%esp)
	movl	$1024, 4(%esp)
	movl	1168(%esp), %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	$0, 1208(%esp)
	jmp	L24
L29:
	movl	1168(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$32, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$32, 12(%esp)
	leal	76(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$32, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_cmpCharArray
	movl	%eax, 1136(%esp)
	cmpl	$0, 1136(%esp)
	je	L25
	movl	$1, 1212(%esp)
	jmp	L26
L25:
	movl	$0, 1204(%esp)
	jmp	L27
L28:
	leal	44(%esp), %edx
	movl	1204(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	76(%esp), %ecx
	movl	1204(%esp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, 1204(%esp)
L27:
	cmpl	$31, 1204(%esp)
	jle	L28
	addl	$1, 1208(%esp)
L24:
	cmpl	$467, 1208(%esp)
	jle	L29
L26:
	cmpl	$0, 1212(%esp)
	jne	L30
	movl	$0, 1132(%esp)
	movl	$32, (%esp)
	call	_malloc
	movl	%eax, 1132(%esp)
	movl	$0, 1200(%esp)
	jmp	L31
L32:
	movl	1200(%esp), %eax
	addl	$16, %eax
	movl	1200(%esp), %ecx
	movl	1132(%esp), %edx
	addl	%ecx, %edx
	movzbl	44(%esp,%eax), %eax
	movb	%al, (%edx)
	addl	$1, 1200(%esp)
L31:
	cmpl	$15, 1200(%esp)
	jle	L32
	movl	$16, 1196(%esp)
	jmp	L33
L34:
	movl	1196(%esp), %eax
	subl	$16, %eax
	movl	1196(%esp), %ecx
	movl	1132(%esp), %edx
	addl	%ecx, %edx
	movzbl	44(%esp,%eax), %eax
	movb	%al, (%edx)
	addl	$1, 1196(%esp)
L33:
	cmpl	$31, 1196(%esp)
	jle	L34
	movl	$0, 1192(%esp)
	jmp	L35
L36:
	movl	1192(%esp), %edx
	movl	1132(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	leal	44(%esp), %ecx
	movl	1192(%esp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, 1192(%esp)
L35:
	cmpl	$31, 1192(%esp)
	jle	L36
	movl	1132(%esp), %eax
	movl	%eax, (%esp)
	call	_free
L30:
	movl	$0, 8(%esp)
	movl	$1024, 4(%esp)
	movl	1168(%esp), %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	$LC8, (%esp)
	call	_printf
	movl	$32, 4(%esp)
	leal	44(%esp), %eax
	movl	%eax, (%esp)
	call	_PrintArr
	movl	$10, (%esp)
	call	_putchar
	leal	108(%esp), %edx
	movl	$0, %eax
	movl	$256, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$1, 1188(%esp)
	jmp	L37
L40:
	movl	1168(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1024, 4(%esp)
	leal	108(%esp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$0, 1184(%esp)
	jmp	L38
L39:
	leal	108(%esp), %edx
	movl	1184(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	1184(%esp), %eax
	andl	$31, %eax
	movzbl	44(%esp,%eax), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	leal	108(%esp), %edx
	movl	1184(%esp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, 1184(%esp)
L38:
	cmpl	$1023, 1184(%esp)
	jle	L39
	movl	1164(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1024, 4(%esp)
	leal	108(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$1, 1188(%esp)
L37:
	movl	1188(%esp), %eax
	cltd
	cmpl	1144(%esp), %eax
	movl	%edx, %eax
	sbbl	1148(%esp), %eax
	jl	L40
	cmpl	$0, 1140(%esp)
	je	L41
	movl	1168(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	1140(%esp), %eax
	movl	%eax, 4(%esp)
	leal	108(%esp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	$0, 1180(%esp)
	jmp	L42
L43:
	leal	108(%esp), %edx
	movl	1180(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	1180(%esp), %eax
	andl	$31, %eax
	movzbl	44(%esp,%eax), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	leal	108(%esp), %edx
	movl	1180(%esp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, 1180(%esp)
L42:
	movl	1180(%esp), %eax
	cmpl	%eax, 1140(%esp)
	ja	L43
	movl	1164(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	1140(%esp), %eax
	movl	%eax, 4(%esp)
	leal	108(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
L41:
	movl	$0, %eax
L16:
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
LFE19:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	__ftelli64;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
