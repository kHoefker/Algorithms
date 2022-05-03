	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_PopulateArray                  ## -- Begin function PopulateArray
	.p2align	4, 0x90
_PopulateArray:                         ## @PopulateArray
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_fopen
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	_feof
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB0_2
	jmp	LBB0_3
LBB0_2:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	cltq
	shlq	$2, %rax
	addq	%rax, %rdx
	leaq	L_.str.1(%rip), %rsi
	movb	$0, %al
	callq	_fscanf
	jmp	LBB0_1
LBB0_3:
	movq	-24(%rbp), %rdi
	callq	_fclose
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Copy                           ## -- Begin function Copy
	.p2align	4, 0x90
_Copy:                                  ## @Copy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB1_1
LBB1_4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_MergeSort                      ## -- Begin function MergeSort
	.p2align	4, 0x90
_MergeSort:                             ## @MergeSort
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%ecx, %eax
	addl	$1, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	movq	%rsp, %rcx
	movq	%rcx, -40(%rbp)
	shlq	$2, %rax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	-104(%rbp), %rax                ## 8-byte Reload
	movq	%rsp, %rcx
	movq	%rcx, -88(%rbp)                 ## 8-byte Spill
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%ecx, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	shlq	$2, %rax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	movq	%rsp, %rcx
	movq	%rcx, -80(%rbp)                 ## 8-byte Spill
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	_MergeSort
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	-24(%rbp), %edx
	callq	_MergeSort
	movq	-88(%rbp), %rcx                 ## 8-byte Reload
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	_Copy
	movq	-80(%rbp), %rcx                 ## 8-byte Reload
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	-24(%rbp), %edx
	callq	_Copy
	movl	$1, -60(%rbp)
	movl	$1, -64(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	LBB2_7
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rcx                 ## 8-byte Reload
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	movslq	-60(%rbp), %rdx
	movl	(%rax,%rdx,4), %eax
	movslq	-64(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB2_5
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %rax                 ## 8-byte Reload
	movl	-64(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -64(%rbp)
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_6
LBB2_6:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB2_1
LBB2_7:
	movq	-40(%rbp), %rax
	movq	%rax, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_9
## %bb.8:
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB2_9:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_WriteToDisk                    ## -- Begin function WriteToDisk
	.p2align	4, 0x90
_WriteToDisk:                           ## @WriteToDisk
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_fopen
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	leaq	L_.str.3(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB3_1
LBB3_3:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$40064, %eax                    ## imm = 0x9C80
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movl	%edi, %eax
	leaq	-40016(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	$0, -40020(%rbp)
	movl	%eax, -40024(%rbp)
	movq	%rsi, -40032(%rbp)
	movq	-40032(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40040(%rbp)
	movq	-40032(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40048(%rbp)
	movq	-40040(%rbp), %rsi
	callq	_PopulateArray
	xorl	%esi, %esi
	leaq	-40016(%rbp), %rdi
	movl	%eax, -40052(%rbp)
	movl	-40052(%rbp), %edx
	subl	$1, %edx
	callq	_MergeSort
	leaq	-40016(%rbp), %rdi
	movl	-40052(%rbp), %esi
	movq	-40048(%rbp), %rdx
	callq	_WriteToDisk
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_2
## %bb.1:
	xorl	%eax, %eax
	addq	$40064, %rsp                    ## imm = 0x9C80
	popq	%rbp
	retq
LBB4_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"r"

L_.str.1:                               ## @.str.1
	.asciz	"%i"

L_.str.2:                               ## @.str.2
	.asciz	"w"

L_.str.3:                               ## @.str.3
	.asciz	"%i\n"

.subsections_via_symbols
