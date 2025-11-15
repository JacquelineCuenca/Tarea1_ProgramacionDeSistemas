
productos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cargarProductos>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
   f:	48 89 bd 18 ff ff ff 	mov    %rdi,-0xe8(%rbp)
  16:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1d:	00 00 
  1f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  23:	31 c0                	xor    %eax,%eax
  25:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2c <cargarProductos+0x2c>
  2c:	48 89 c6             	mov    %rax,%rsi
  2f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 36 <cargarProductos+0x36>
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	call   3e <cargarProductos+0x3e>
  3e:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  45:	48 83 bd 28 ff ff ff 	cmpq   $0x0,-0xd8(%rbp)
  4c:	00 
  4d:	75 19                	jne    68 <cargarProductos+0x68>
  4f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 56 <cargarProductos+0x56>
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	call   5e <cargarProductos+0x5e>
  5e:	b8 00 00 00 00       	mov    $0x0,%eax
  63:	e9 a8 01 00 00       	jmp    210 <cargarProductos+0x210>
  68:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%rbp)
  6f:	00 00 00 
  72:	eb 07                	jmp    7b <cargarProductos+0x7b>
  74:	83 85 20 ff ff ff 01 	addl   $0x1,-0xe0(%rbp)
  7b:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  82:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  89:	be c8 00 00 00       	mov    $0xc8,%esi
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	call   96 <cargarProductos+0x96>
  96:	48 85 c0             	test   %rax,%rax
  99:	75 d9                	jne    74 <cargarProductos+0x74>
  9b:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  a2:	48 89 c7             	mov    %rax,%rdi
  a5:	e8 00 00 00 00       	call   aa <cargarProductos+0xaa>
  aa:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
  b0:	48 63 d0             	movslq %eax,%rdx
  b3:	48 89 d0             	mov    %rdx,%rax
  b6:	48 c1 e0 04          	shl    $0x4,%rax
  ba:	48 01 d0             	add    %rdx,%rax
  bd:	48 c1 e0 02          	shl    $0x2,%rax
  c1:	48 89 c7             	mov    %rax,%rdi
  c4:	e8 00 00 00 00       	call   c9 <cargarProductos+0xc9>
  c9:	48 89 c2             	mov    %rax,%rdx
  cc:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  d3:	48 89 10             	mov    %rdx,(%rax)
  d6:	c7 85 24 ff ff ff 00 	movl   $0x0,-0xdc(%rbp)
  dd:	00 00 00 
  e0:	e9 f2 00 00 00       	jmp    1d7 <cargarProductos+0x1d7>
  e5:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  ec:	48 8b 08             	mov    (%rax),%rcx
  ef:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
  f5:	48 63 d0             	movslq %eax,%rdx
  f8:	48 89 d0             	mov    %rdx,%rax
  fb:	48 c1 e0 04          	shl    $0x4,%rax
  ff:	48 01 d0             	add    %rdx,%rax
 102:	48 c1 e0 02          	shl    $0x2,%rax
 106:	48 01 c8             	add    %rcx,%rax
 109:	48 8d 70 0c          	lea    0xc(%rax),%rsi
 10d:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 114:	48 8b 08             	mov    (%rax),%rcx
 117:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
 11d:	48 63 d0             	movslq %eax,%rdx
 120:	48 89 d0             	mov    %rdx,%rax
 123:	48 c1 e0 04          	shl    $0x4,%rax
 127:	48 01 d0             	add    %rdx,%rax
 12a:	48 c1 e0 02          	shl    $0x2,%rax
 12e:	48 01 c8             	add    %rcx,%rax
 131:	4c 8d 48 08          	lea    0x8(%rax),%r9
 135:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 13c:	48 8b 08             	mov    (%rax),%rcx
 13f:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
 145:	48 63 d0             	movslq %eax,%rdx
 148:	48 89 d0             	mov    %rdx,%rax
 14b:	48 c1 e0 04          	shl    $0x4,%rax
 14f:	48 01 d0             	add    %rdx,%rax
 152:	48 c1 e0 02          	shl    $0x2,%rax
 156:	48 01 c8             	add    %rcx,%rax
 159:	4c 8d 40 04          	lea    0x4(%rax),%r8
 15d:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 164:	48 8b 08             	mov    (%rax),%rcx
 167:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
 16d:	48 63 d0             	movslq %eax,%rdx
 170:	48 89 d0             	mov    %rdx,%rax
 173:	48 c1 e0 04          	shl    $0x4,%rax
 177:	48 01 d0             	add    %rdx,%rax
 17a:	48 c1 e0 02          	shl    $0x2,%rax
 17e:	48 01 c8             	add    %rcx,%rax
 181:	48 8d 48 10          	lea    0x10(%rax),%rcx
 185:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 18c:	48 8b 38             	mov    (%rax),%rdi
 18f:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
 195:	48 63 d0             	movslq %eax,%rdx
 198:	48 89 d0             	mov    %rdx,%rax
 19b:	48 c1 e0 04          	shl    $0x4,%rax
 19f:	48 01 d0             	add    %rdx,%rax
 1a2:	48 c1 e0 02          	shl    $0x2,%rax
 1a6:	48 01 f8             	add    %rdi,%rax
 1a9:	48 89 c2             	mov    %rax,%rdx
 1ac:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
 1b3:	48 83 ec 08          	sub    $0x8,%rsp
 1b7:	56                   	push   %rsi
 1b8:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1bf <cargarProductos+0x1bf>
 1bf:	48 89 c7             	mov    %rax,%rdi
 1c2:	b8 00 00 00 00       	mov    $0x0,%eax
 1c7:	e8 00 00 00 00       	call   1cc <cargarProductos+0x1cc>
 1cc:	48 83 c4 10          	add    $0x10,%rsp
 1d0:	83 85 24 ff ff ff 01 	addl   $0x1,-0xdc(%rbp)
 1d7:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
 1de:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
 1e5:	be c8 00 00 00       	mov    $0xc8,%esi
 1ea:	48 89 c7             	mov    %rax,%rdi
 1ed:	e8 00 00 00 00       	call   1f2 <cargarProductos+0x1f2>
 1f2:	48 85 c0             	test   %rax,%rax
 1f5:	0f 85 ea fe ff ff    	jne    e5 <cargarProductos+0xe5>
 1fb:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
 202:	48 89 c7             	mov    %rax,%rdi
 205:	e8 00 00 00 00       	call   20a <cargarProductos+0x20a>
 20a:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
 210:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 214:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 21b:	00 00 
 21d:	74 05                	je     224 <cargarProductos+0x224>
 21f:	e8 00 00 00 00       	call   224 <cargarProductos+0x224>
 224:	c9                   	leave
 225:	c3                   	ret

0000000000000226 <actualizarInventario>:
 226:	f3 0f 1e fa          	endbr64
 22a:	55                   	push   %rbp
 22b:	48 89 e5             	mov    %rsp,%rbp
 22e:	48 83 ec 20          	sub    $0x20,%rsp
 232:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 236:	89 75 e4             	mov    %esi,-0x1c(%rbp)
 239:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 240 <actualizarInventario+0x1a>
 240:	48 89 c6             	mov    %rax,%rsi
 243:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 24a <actualizarInventario+0x24>
 24a:	48 89 c7             	mov    %rax,%rdi
 24d:	e8 00 00 00 00       	call   252 <actualizarInventario+0x2c>
 252:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 256:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
 25b:	75 19                	jne    276 <actualizarInventario+0x50>
 25d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 264 <actualizarInventario+0x3e>
 264:	48 89 c7             	mov    %rax,%rdi
 267:	e8 00 00 00 00       	call   26c <actualizarInventario+0x46>
 26c:	b8 00 00 00 00       	mov    $0x0,%eax
 271:	e9 0e 01 00 00       	jmp    384 <actualizarInventario+0x15e>
 276:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
 27d:	e9 e5 00 00 00       	jmp    367 <actualizarInventario+0x141>
 282:	8b 45 f4             	mov    -0xc(%rbp),%eax
 285:	48 63 d0             	movslq %eax,%rdx
 288:	48 89 d0             	mov    %rdx,%rax
 28b:	48 c1 e0 04          	shl    $0x4,%rax
 28f:	48 01 d0             	add    %rdx,%rax
 292:	48 c1 e0 02          	shl    $0x2,%rax
 296:	48 89 c2             	mov    %rax,%rdx
 299:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 29d:	48 01 d0             	add    %rdx,%rax
 2a0:	f3 0f 10 40 0c       	movss  0xc(%rax),%xmm0
 2a5:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 2a9:	8b 45 f4             	mov    -0xc(%rbp),%eax
 2ac:	48 63 d0             	movslq %eax,%rdx
 2af:	48 89 d0             	mov    %rdx,%rax
 2b2:	48 c1 e0 04          	shl    $0x4,%rax
 2b6:	48 01 d0             	add    %rdx,%rax
 2b9:	48 c1 e0 02          	shl    $0x2,%rax
 2bd:	48 89 c2             	mov    %rax,%rdx
 2c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 2c4:	48 01 d0             	add    %rdx,%rax
 2c7:	f3 0f 10 48 08       	movss  0x8(%rax),%xmm1
 2cc:	66 0f ef d2          	pxor   %xmm2,%xmm2
 2d0:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 2d4:	66 48 0f 7e d1       	movq   %xmm2,%rcx
 2d9:	8b 45 f4             	mov    -0xc(%rbp),%eax
 2dc:	48 63 d0             	movslq %eax,%rdx
 2df:	48 89 d0             	mov    %rdx,%rax
 2e2:	48 c1 e0 04          	shl    $0x4,%rax
 2e6:	48 01 d0             	add    %rdx,%rax
 2e9:	48 c1 e0 02          	shl    $0x2,%rax
 2ed:	48 89 c2             	mov    %rax,%rdx
 2f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 2f4:	48 01 d0             	add    %rdx,%rax
 2f7:	8b 78 04             	mov    0x4(%rax),%edi
 2fa:	8b 45 f4             	mov    -0xc(%rbp),%eax
 2fd:	48 63 d0             	movslq %eax,%rdx
 300:	48 89 d0             	mov    %rdx,%rax
 303:	48 c1 e0 04          	shl    $0x4,%rax
 307:	48 01 d0             	add    %rdx,%rax
 30a:	48 c1 e0 02          	shl    $0x2,%rax
 30e:	48 89 c2             	mov    %rax,%rdx
 311:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 315:	48 01 d0             	add    %rdx,%rax
 318:	48 8d 70 10          	lea    0x10(%rax),%rsi
 31c:	8b 45 f4             	mov    -0xc(%rbp),%eax
 31f:	48 63 d0             	movslq %eax,%rdx
 322:	48 89 d0             	mov    %rdx,%rax
 325:	48 c1 e0 04          	shl    $0x4,%rax
 329:	48 01 d0             	add    %rdx,%rax
 32c:	48 c1 e0 02          	shl    $0x2,%rax
 330:	48 89 c2             	mov    %rax,%rdx
 333:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 337:	48 01 d0             	add    %rdx,%rax
 33a:	8b 10                	mov    (%rax),%edx
 33c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 340:	66 0f 28 c8          	movapd %xmm0,%xmm1
 344:	66 48 0f 6e c1       	movq   %rcx,%xmm0
 349:	41 89 f8             	mov    %edi,%r8d
 34c:	48 89 f1             	mov    %rsi,%rcx
 34f:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 356 <actualizarInventario+0x130>
 356:	48 89 c7             	mov    %rax,%rdi
 359:	b8 02 00 00 00       	mov    $0x2,%eax
 35e:	e8 00 00 00 00       	call   363 <actualizarInventario+0x13d>
 363:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
 367:	8b 45 f4             	mov    -0xc(%rbp),%eax
 36a:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
 36d:	0f 8c 0f ff ff ff    	jl     282 <actualizarInventario+0x5c>
 373:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 377:	48 89 c7             	mov    %rax,%rdi
 37a:	e8 00 00 00 00       	call   37f <actualizarInventario+0x159>
 37f:	b8 01 00 00 00       	mov    $0x1,%eax
 384:	c9                   	leave
 385:	c3                   	ret
