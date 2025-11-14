	.file	"Main.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"ventas.txt"
.LC2:
	.string	"%d,"
.LC3:
	.string	"Numero de factura: %d\n"
.LC4:
	.string	"a"
.LC5:
	.string	"Error."
.LC6:
	.string	"%04d-%02d-%02d"
.LC7:
	.string	"Codigo de producto: "
.LC8:
	.string	"%d"
.LC9:
	.string	"Cantidad: "
.LC10:
	.string	"No hay suficiente inventario."
.LC11:
	.string	"%d,%d,%s,%d,%.2f,%.2f,%s\n"
.LC12:
	.string	"Producto agregado a la venta."
.LC13:
	.string	"Producto no encontrado."
	.align 8
.LC14:
	.string	"Registrar otro producto? (s/n): "
.LC15:
	.string	" %c"
	.align 8
.LC16:
	.string	"Venta registrada correctamente."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	cargarUsuarios@PLT
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	jne	.L2
	movl	$1, %eax
	jmp	.L19
.L2:
	movq	-320(%rbp), %rax
	movl	-328(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	login@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
	jmp	.L19
.L4:
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	cargarProductos@PLT
	movl	%eax, -324(%rbp)
	cmpl	$0, -324(%rbp)
	jne	.L5
	movl	$1, %eax
	jmp	.L19
.L5:
	movb	$115, -349(%rbp)
	movl	$0, -340(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	je	.L6
	jmp	.L7
.L8:
	leaq	-340(%rbp), %rdx
	leaq	-224(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
.L7:
	movq	-296(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L8
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L6:
	movl	-340(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	movl	-340(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -296(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.L9
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L19
.L9:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -288(%rbp)
	movq	%rbx, -280(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -272(%rbp)
	movq	%rbx, -264(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -256(%rbp)
	movq	%rbx, -248(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -240(%rbp)
	movl	-276(%rbp), %esi
	movl	-272(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-268(%rbp), %eax
	leal	1900(%rax), %edx
	leaq	-224(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L10
.L18:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-348(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-344(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -336(%rbp)
	movl	$0, -332(%rbp)
	jmp	.L11
.L16:
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %edx
	movl	-348(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L12
	movl	$1, -336(%rbp)
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	56(%rax), %edx
	movl	-344(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L13
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L13:
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	56(%rax), %esi
	movl	-344(%rbp), %ecx
	movq	-312(%rbp), %rdi
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdi, %rax
	subl	%ecx, %esi
	movl	%esi, %edx
	movl	%edx, 56(%rax)
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	64(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movss	60(%rax), %xmm1
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movq	%xmm2, %rsi
	movl	-344(%rbp), %r8d
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	leaq	4(%rax), %r10
	movq	-312(%rbp), %rcx
	movl	-332(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movl	-340(%rbp), %edx
	movq	-296(%rbp), %rax
	subq	$8, %rsp
	leaq	-224(%rbp), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rsi, %xmm0
	movl	%r8d, %r9d
	movq	%r10, %r8
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L12:
	addl	$1, -332(%rbp)
.L11:
	movl	-332(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L16
.L15:
	cmpl	$0, -336(%rbp)
	jne	.L17
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L17:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-349(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L10:
	movzbl	-349(%rbp), %eax
	cmpb	$115, %al
	je	.L18
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-312(%rbp), %rax
	movl	-324(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	actualizarInventario@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L19:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
