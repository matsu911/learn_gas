.file	"summation.s"
.data
	.comm num,8
array:	.quad	4096,-8,-6091,-2,1,7,8192,9,1,5050

	.align 8
.text
	.globl	_main
_main:
	movq	$0, %rax
	movq	$0, %rdx
	movl	$10, num
	movq	num, %rcx
	/*
	movq	array, %rsi
looptop:
	movswl	(%esi), %eax
	addl	%eax, %edx
	incl	%esi
	incl	%esi
	decw	%cx
	jnz	looptop
loopend:
	*/
	ret