	.file	"usuarios.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"vendedores.txt"
.LC2:
	.string	"Error."
.LC3:
	.string	"%[^,],%[^,],%[^\n]"
	.text
	.globl	cargarUsuarios
	.type	cargarUsuarios, @function
cargarUsuarios:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L8
.L2:
	movl	$0, -224(%rbp)
	jmp	.L4
.L5:
	addl	$1, -224(%rbp)
.L4:
	movq	-216(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L5
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	-224(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -220(%rbp)
	jmp	.L6
.L7:
	movq	-232(%rbp), %rax
	movq	(%rax), %rdx
	movl	-220(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	addq	%rdx, %rax
	leaq	60(%rax), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rdx
	movl	-220(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	addq	%rdx, %rax
	leaq	30(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rcx
	movl	-220(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	-208(%rbp), %rax
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	addl	$1, -220(%rbp)
.L6:
	movq	-216(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L7
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-224(%rbp), %eax
.L8:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cargarUsuarios, .-cargarUsuarios
	.section	.rodata
.LC4:
	.string	"Ingrese el usuario: "
.LC5:
	.string	"%s"
.LC6:
	.string	"Ingrese la clave: "
.LC7:
	.string	"Bienvenido %s\n"
.LC8:
	.string	"Usuario o clave incorrectos."
	.align 8
.LC9:
	.string	"Demasiados intentos fallidos. Saliendo del sistema ..."
	.text
	.globl	login
	.type	login, @function
login:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -88(%rbp)
	jmp	.L11
.L16:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -84(%rbp)
	jmp	.L12
.L15:
	movl	-84(%rbp), %eax
	cltq
	imulq	$110, %rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movl	-84(%rbp), %eax
	cltq
	imulq	$110, %rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	leaq	30(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
	movl	-84(%rbp), %eax
	cltq
	imulq	$110, %rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	addq	$60, %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %eax
	jmp	.L17
.L13:
	addl	$1, -84(%rbp)
.L12:
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L15
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -88(%rbp)
.L11:
	cmpl	$2, -88(%rbp)
	jle	.L16
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L17:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	login, .-login
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
