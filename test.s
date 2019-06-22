	.file	"test.c"
	.text
	.globl	_mymain
	.def	_mymain;	.scl	2;	.type	32;	.endef
_mymain:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movw	$4386, -10(%ebp)
	movw	$13124, -12(%ebp)
	movswl	-12(%ebp), %edx
	movswl	-10(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_add
	movw	%ax, -14(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_add
	.def	_add;	.scl	2;	.type	32;	.endef
_add:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movw	%dx, -4(%ebp)
	movw	%ax, -8(%ebp)
	movzwl	-4(%ebp), %edx
	movzwl	-8(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.ident	"GCC: (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0"
