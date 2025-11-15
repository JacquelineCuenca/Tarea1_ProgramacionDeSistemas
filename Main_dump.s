
Main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	53                   	push   %rbx
   9:	48 81 ec 58 01 00 00 	sub    $0x158,%rsp
  10:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  17:	00 00 
  19:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  1d:	31 c0                	xor    %eax,%eax
  1f:	48 8d 85 c0 fe ff ff 	lea    -0x140(%rbp),%rax
  26:	48 89 c7             	mov    %rax,%rdi
  29:	e8 00 00 00 00       	call   2e <main+0x2e>
  2e:	89 85 b8 fe ff ff    	mov    %eax,-0x148(%rbp)
  34:	83 bd b8 fe ff ff 00 	cmpl   $0x0,-0x148(%rbp)
  3b:	75 0a                	jne    47 <main+0x47>
  3d:	b8 01 00 00 00       	mov    $0x1,%eax
  42:	e9 18 05 00 00       	jmp    55f <main+0x55f>
  47:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  4e:	8b 95 b8 fe ff ff    	mov    -0x148(%rbp),%edx
  54:	89 d6                	mov    %edx,%esi
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	call   5e <main+0x5e>
  5e:	85 c0                	test   %eax,%eax
  60:	75 19                	jne    7b <main+0x7b>
  62:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  69:	48 89 c7             	mov    %rax,%rdi
  6c:	e8 00 00 00 00       	call   71 <main+0x71>
  71:	b8 01 00 00 00       	mov    $0x1,%eax
  76:	e9 e4 04 00 00       	jmp    55f <main+0x55f>
  7b:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  82:	48 89 c7             	mov    %rax,%rdi
  85:	e8 00 00 00 00       	call   8a <main+0x8a>
  8a:	48 8d 85 c8 fe ff ff 	lea    -0x138(%rbp),%rax
  91:	48 89 c7             	mov    %rax,%rdi
  94:	e8 00 00 00 00       	call   99 <main+0x99>
  99:	89 85 bc fe ff ff    	mov    %eax,-0x144(%rbp)
  9f:	83 bd bc fe ff ff 00 	cmpl   $0x0,-0x144(%rbp)
  a6:	75 0a                	jne    b2 <main+0xb2>
  a8:	b8 01 00 00 00       	mov    $0x1,%eax
  ad:	e9 ad 04 00 00       	jmp    55f <main+0x55f>
  b2:	c6 85 a3 fe ff ff 73 	movb   $0x73,-0x15d(%rbp)
  b9:	c7 85 ac fe ff ff 00 	movl   $0x0,-0x154(%rbp)
  c0:	00 00 00 
  c3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # ca <main+0xca>
  ca:	48 89 c6             	mov    %rax,%rsi
  cd:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # d4 <main+0xd4>
  d4:	48 89 c7             	mov    %rax,%rdi
  d7:	e8 00 00 00 00       	call   dc <main+0xdc>
  dc:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
  e3:	48 83 bd d8 fe ff ff 	cmpq   $0x0,-0x128(%rbp)
  ea:	00 
  eb:	74 56                	je     143 <main+0x143>
  ed:	eb 25                	jmp    114 <main+0x114>
  ef:	48 8d 95 ac fe ff ff 	lea    -0x154(%rbp),%rdx
  f6:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
  fd:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 104 <main+0x104>
 104:	48 89 ce             	mov    %rcx,%rsi
 107:	48 89 c7             	mov    %rax,%rdi
 10a:	b8 00 00 00 00       	mov    $0x0,%eax
 10f:	e8 00 00 00 00       	call   114 <main+0x114>
 114:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
 11b:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 122:	be c8 00 00 00       	mov    $0xc8,%esi
 127:	48 89 c7             	mov    %rax,%rdi
 12a:	e8 00 00 00 00       	call   12f <main+0x12f>
 12f:	48 85 c0             	test   %rax,%rax
 132:	75 bb                	jne    ef <main+0xef>
 134:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 13b:	48 89 c7             	mov    %rax,%rdi
 13e:	e8 00 00 00 00       	call   143 <main+0x143>
 143:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
 149:	83 c0 01             	add    $0x1,%eax
 14c:	89 85 ac fe ff ff    	mov    %eax,-0x154(%rbp)
 152:	8b 85 ac fe ff ff    	mov    -0x154(%rbp),%eax
 158:	89 c6                	mov    %eax,%esi
 15a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 161 <main+0x161>
 161:	48 89 c7             	mov    %rax,%rdi
 164:	b8 00 00 00 00       	mov    $0x0,%eax
 169:	e8 00 00 00 00       	call   16e <main+0x16e>
 16e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 175 <main+0x175>
 175:	48 89 c6             	mov    %rax,%rsi
 178:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 17f <main+0x17f>
 17f:	48 89 c7             	mov    %rax,%rdi
 182:	e8 00 00 00 00       	call   187 <main+0x187>
 187:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
 18e:	48 83 bd d8 fe ff ff 	cmpq   $0x0,-0x128(%rbp)
 195:	00 
 196:	75 19                	jne    1b1 <main+0x1b1>
 198:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 19f <main+0x19f>
 19f:	48 89 c7             	mov    %rax,%rdi
 1a2:	e8 00 00 00 00       	call   1a7 <main+0x1a7>
 1a7:	b8 01 00 00 00       	mov    $0x1,%eax
 1ac:	e9 ae 03 00 00       	jmp    55f <main+0x55f>
 1b1:	bf 00 00 00 00       	mov    $0x0,%edi
 1b6:	e8 00 00 00 00       	call   1bb <main+0x1bb>
 1bb:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
 1c2:	48 8d 85 d0 fe ff ff 	lea    -0x130(%rbp),%rax
 1c9:	48 89 c7             	mov    %rax,%rdi
 1cc:	e8 00 00 00 00       	call   1d1 <main+0x1d1>
 1d1:	48 8b 08             	mov    (%rax),%rcx
 1d4:	48 8b 58 08          	mov    0x8(%rax),%rbx
 1d8:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
 1df:	48 89 9d e8 fe ff ff 	mov    %rbx,-0x118(%rbp)
 1e6:	48 8b 48 10          	mov    0x10(%rax),%rcx
 1ea:	48 8b 58 18          	mov    0x18(%rax),%rbx
 1ee:	48 89 8d f0 fe ff ff 	mov    %rcx,-0x110(%rbp)
 1f5:	48 89 9d f8 fe ff ff 	mov    %rbx,-0x108(%rbp)
 1fc:	48 8b 48 20          	mov    0x20(%rax),%rcx
 200:	48 8b 58 28          	mov    0x28(%rax),%rbx
 204:	48 89 8d 00 ff ff ff 	mov    %rcx,-0x100(%rbp)
 20b:	48 89 9d 08 ff ff ff 	mov    %rbx,-0xf8(%rbp)
 212:	48 8b 40 30          	mov    0x30(%rax),%rax
 216:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
 21d:	8b b5 ec fe ff ff    	mov    -0x114(%rbp),%esi
 223:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
 229:	8d 48 01             	lea    0x1(%rax),%ecx
 22c:	8b 85 f4 fe ff ff    	mov    -0x10c(%rbp),%eax
 232:	8d 90 6c 07 00 00    	lea    0x76c(%rax),%edx
 238:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
 23f:	41 89 f0             	mov    %esi,%r8d
 242:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 249 <main+0x249>
 249:	48 89 c7             	mov    %rax,%rdi
 24c:	b8 00 00 00 00       	mov    $0x0,%eax
 251:	e8 00 00 00 00       	call   256 <main+0x256>
 256:	e9 ac 02 00 00       	jmp    507 <main+0x507>
 25b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 262 <main+0x262>
 262:	48 89 c7             	mov    %rax,%rdi
 265:	b8 00 00 00 00       	mov    $0x0,%eax
 26a:	e8 00 00 00 00       	call   26f <main+0x26f>
 26f:	48 8d 85 a4 fe ff ff 	lea    -0x15c(%rbp),%rax
 276:	48 89 c6             	mov    %rax,%rsi
 279:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 280 <main+0x280>
 280:	48 89 c7             	mov    %rax,%rdi
 283:	b8 00 00 00 00       	mov    $0x0,%eax
 288:	e8 00 00 00 00       	call   28d <main+0x28d>
 28d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 294 <main+0x294>
 294:	48 89 c7             	mov    %rax,%rdi
 297:	b8 00 00 00 00       	mov    $0x0,%eax
 29c:	e8 00 00 00 00       	call   2a1 <main+0x2a1>
 2a1:	48 8d 85 a8 fe ff ff 	lea    -0x158(%rbp),%rax
 2a8:	48 89 c6             	mov    %rax,%rsi
 2ab:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2b2 <main+0x2b2>
 2b2:	48 89 c7             	mov    %rax,%rdi
 2b5:	b8 00 00 00 00       	mov    $0x0,%eax
 2ba:	e8 00 00 00 00       	call   2bf <main+0x2bf>
 2bf:	c7 85 b0 fe ff ff 00 	movl   $0x0,-0x150(%rbp)
 2c6:	00 00 00 
 2c9:	c7 85 b4 fe ff ff 00 	movl   $0x0,-0x14c(%rbp)
 2d0:	00 00 00 
 2d3:	e9 d3 01 00 00       	jmp    4ab <main+0x4ab>
 2d8:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 2df:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 2e5:	48 63 d0             	movslq %eax,%rdx
 2e8:	48 89 d0             	mov    %rdx,%rax
 2eb:	48 c1 e0 04          	shl    $0x4,%rax
 2ef:	48 01 d0             	add    %rdx,%rax
 2f2:	48 c1 e0 02          	shl    $0x2,%rax
 2f6:	48 01 c8             	add    %rcx,%rax
 2f9:	8b 10                	mov    (%rax),%edx
 2fb:	8b 85 a4 fe ff ff    	mov    -0x15c(%rbp),%eax
 301:	39 c2                	cmp    %eax,%edx
 303:	0f 85 9b 01 00 00    	jne    4a4 <main+0x4a4>
 309:	c7 85 b0 fe ff ff 01 	movl   $0x1,-0x150(%rbp)
 310:	00 00 00 
 313:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 31a:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 320:	48 63 d0             	movslq %eax,%rdx
 323:	48 89 d0             	mov    %rdx,%rax
 326:	48 c1 e0 04          	shl    $0x4,%rax
 32a:	48 01 d0             	add    %rdx,%rax
 32d:	48 c1 e0 02          	shl    $0x2,%rax
 331:	48 01 c8             	add    %rcx,%rax
 334:	8b 50 04             	mov    0x4(%rax),%edx
 337:	8b 85 a8 fe ff ff    	mov    -0x158(%rbp),%eax
 33d:	39 c2                	cmp    %eax,%edx
 33f:	7d 14                	jge    355 <main+0x355>
 341:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 348 <main+0x348>
 348:	48 89 c7             	mov    %rax,%rdi
 34b:	e8 00 00 00 00       	call   350 <main+0x350>
 350:	e9 68 01 00 00       	jmp    4bd <main+0x4bd>
 355:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 35c:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 362:	48 63 d0             	movslq %eax,%rdx
 365:	48 89 d0             	mov    %rdx,%rax
 368:	48 c1 e0 04          	shl    $0x4,%rax
 36c:	48 01 d0             	add    %rdx,%rax
 36f:	48 c1 e0 02          	shl    $0x2,%rax
 373:	48 01 c8             	add    %rcx,%rax
 376:	8b 70 04             	mov    0x4(%rax),%esi
 379:	8b 8d a8 fe ff ff    	mov    -0x158(%rbp),%ecx
 37f:	48 8b bd c8 fe ff ff 	mov    -0x138(%rbp),%rdi
 386:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 38c:	48 63 d0             	movslq %eax,%rdx
 38f:	48 89 d0             	mov    %rdx,%rax
 392:	48 c1 e0 04          	shl    $0x4,%rax
 396:	48 01 d0             	add    %rdx,%rax
 399:	48 c1 e0 02          	shl    $0x2,%rax
 39d:	48 01 f8             	add    %rdi,%rax
 3a0:	29 ce                	sub    %ecx,%esi
 3a2:	89 f2                	mov    %esi,%edx
 3a4:	89 50 04             	mov    %edx,0x4(%rax)
 3a7:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 3ae:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 3b4:	48 63 d0             	movslq %eax,%rdx
 3b7:	48 89 d0             	mov    %rdx,%rax
 3ba:	48 c1 e0 04          	shl    $0x4,%rax
 3be:	48 01 d0             	add    %rdx,%rax
 3c1:	48 c1 e0 02          	shl    $0x2,%rax
 3c5:	48 01 c8             	add    %rcx,%rax
 3c8:	f3 0f 10 40 0c       	movss  0xc(%rax),%xmm0
 3cd:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
 3d1:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 3d8:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 3de:	48 63 d0             	movslq %eax,%rdx
 3e1:	48 89 d0             	mov    %rdx,%rax
 3e4:	48 c1 e0 04          	shl    $0x4,%rax
 3e8:	48 01 d0             	add    %rdx,%rax
 3eb:	48 c1 e0 02          	shl    $0x2,%rax
 3ef:	48 01 c8             	add    %rcx,%rax
 3f2:	f3 0f 10 48 08       	movss  0x8(%rax),%xmm1
 3f7:	66 0f ef d2          	pxor   %xmm2,%xmm2
 3fb:	f3 0f 5a d1          	cvtss2sd %xmm1,%xmm2
 3ff:	66 48 0f 7e d6       	movq   %xmm2,%rsi
 404:	44 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%r8d
 40b:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 412:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 418:	48 63 d0             	movslq %eax,%rdx
 41b:	48 89 d0             	mov    %rdx,%rax
 41e:	48 c1 e0 04          	shl    $0x4,%rax
 422:	48 01 d0             	add    %rdx,%rax
 425:	48 c1 e0 02          	shl    $0x2,%rax
 429:	48 01 c8             	add    %rcx,%rax
 42c:	4c 8d 50 10          	lea    0x10(%rax),%r10
 430:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
 437:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 43d:	48 63 d0             	movslq %eax,%rdx
 440:	48 89 d0             	mov    %rdx,%rax
 443:	48 c1 e0 04          	shl    $0x4,%rax
 447:	48 01 d0             	add    %rdx,%rax
 44a:	48 c1 e0 02          	shl    $0x2,%rax
 44e:	48 01 c8             	add    %rcx,%rax
 451:	8b 08                	mov    (%rax),%ecx
 453:	8b 95 ac fe ff ff    	mov    -0x154(%rbp),%edx
 459:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 460:	48 83 ec 08          	sub    $0x8,%rsp
 464:	48 8d bd 20 ff ff ff 	lea    -0xe0(%rbp),%rdi
 46b:	57                   	push   %rdi
 46c:	66 0f 28 c8          	movapd %xmm0,%xmm1
 470:	66 48 0f 6e c6       	movq   %rsi,%xmm0
 475:	45 89 c1             	mov    %r8d,%r9d
 478:	4d 89 d0             	mov    %r10,%r8
 47b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 482 <main+0x482>
 482:	48 89 c7             	mov    %rax,%rdi
 485:	b8 02 00 00 00       	mov    $0x2,%eax
 48a:	e8 00 00 00 00       	call   48f <main+0x48f>
 48f:	48 83 c4 10          	add    $0x10,%rsp
 493:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 49a <main+0x49a>
 49a:	48 89 c7             	mov    %rax,%rdi
 49d:	e8 00 00 00 00       	call   4a2 <main+0x4a2>
 4a2:	eb 19                	jmp    4bd <main+0x4bd>
 4a4:	83 85 b4 fe ff ff 01 	addl   $0x1,-0x14c(%rbp)
 4ab:	8b 85 b4 fe ff ff    	mov    -0x14c(%rbp),%eax
 4b1:	3b 85 bc fe ff ff    	cmp    -0x144(%rbp),%eax
 4b7:	0f 8c 1b fe ff ff    	jl     2d8 <main+0x2d8>
 4bd:	83 bd b0 fe ff ff 00 	cmpl   $0x0,-0x150(%rbp)
 4c4:	75 0f                	jne    4d5 <main+0x4d5>
 4c6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4cd <main+0x4cd>
 4cd:	48 89 c7             	mov    %rax,%rdi
 4d0:	e8 00 00 00 00       	call   4d5 <main+0x4d5>
 4d5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4dc <main+0x4dc>
 4dc:	48 89 c7             	mov    %rax,%rdi
 4df:	b8 00 00 00 00       	mov    $0x0,%eax
 4e4:	e8 00 00 00 00       	call   4e9 <main+0x4e9>
 4e9:	48 8d 85 a3 fe ff ff 	lea    -0x15d(%rbp),%rax
 4f0:	48 89 c6             	mov    %rax,%rsi
 4f3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4fa <main+0x4fa>
 4fa:	48 89 c7             	mov    %rax,%rdi
 4fd:	b8 00 00 00 00       	mov    $0x0,%eax
 502:	e8 00 00 00 00       	call   507 <main+0x507>
 507:	0f b6 85 a3 fe ff ff 	movzbl -0x15d(%rbp),%eax
 50e:	3c 73                	cmp    $0x73,%al
 510:	0f 84 45 fd ff ff    	je     25b <main+0x25b>
 516:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
 51d:	48 89 c7             	mov    %rax,%rdi
 520:	e8 00 00 00 00       	call   525 <main+0x525>
 525:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
 52c:	8b 95 bc fe ff ff    	mov    -0x144(%rbp),%edx
 532:	89 d6                	mov    %edx,%esi
 534:	48 89 c7             	mov    %rax,%rdi
 537:	e8 00 00 00 00       	call   53c <main+0x53c>
 53c:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
 543:	48 89 c7             	mov    %rax,%rdi
 546:	e8 00 00 00 00       	call   54b <main+0x54b>
 54b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 552 <main+0x552>
 552:	48 89 c7             	mov    %rax,%rdi
 555:	e8 00 00 00 00       	call   55a <main+0x55a>
 55a:	b8 00 00 00 00       	mov    $0x0,%eax
 55f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
 563:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 56a:	00 00 
 56c:	74 05                	je     573 <main+0x573>
 56e:	e8 00 00 00 00       	call   573 <main+0x573>
 573:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
 577:	c9                   	leave
 578:	c3                   	ret
