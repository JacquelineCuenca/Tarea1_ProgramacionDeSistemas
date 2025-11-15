
usuarios.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cargarUsuarios>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
   f:	48 89 bd 18 ff ff ff 	mov    %rdi,-0xe8(%rbp)
  16:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  1d:	00 00 
  1f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  23:	31 c0                	xor    %eax,%eax
  25:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2c <cargarUsuarios+0x2c>
  2c:	48 89 c6             	mov    %rax,%rsi
  2f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 36 <cargarUsuarios+0x36>
  36:	48 89 c7             	mov    %rax,%rdi
  39:	e8 00 00 00 00       	call   3e <cargarUsuarios+0x3e>
  3e:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  45:	48 83 bd 28 ff ff ff 	cmpq   $0x0,-0xd8(%rbp)
  4c:	00 
  4d:	75 19                	jne    68 <cargarUsuarios+0x68>
  4f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 56 <cargarUsuarios+0x56>
  56:	48 89 c7             	mov    %rax,%rdi
  59:	e8 00 00 00 00       	call   5e <cargarUsuarios+0x5e>
  5e:	b8 00 00 00 00       	mov    $0x0,%eax
  63:	e9 2c 01 00 00       	jmp    194 <cargarUsuarios+0x194>
  68:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%rbp)
  6f:	00 00 00 
  72:	eb 07                	jmp    7b <cargarUsuarios+0x7b>
  74:	83 85 20 ff ff ff 01 	addl   $0x1,-0xe0(%rbp)
  7b:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  82:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  89:	be c8 00 00 00       	mov    $0xc8,%esi
  8e:	48 89 c7             	mov    %rax,%rdi
  91:	e8 00 00 00 00       	call   96 <cargarUsuarios+0x96>
  96:	48 85 c0             	test   %rax,%rax
  99:	75 d9                	jne    74 <cargarUsuarios+0x74>
  9b:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  a2:	48 89 c7             	mov    %rax,%rdi
  a5:	e8 00 00 00 00       	call   aa <cargarUsuarios+0xaa>
  aa:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
  b0:	48 98                	cltq
  b2:	48 6b c0 6e          	imul   $0x6e,%rax,%rax
  b6:	48 89 c7             	mov    %rax,%rdi
  b9:	e8 00 00 00 00       	call   be <cargarUsuarios+0xbe>
  be:	48 89 c2             	mov    %rax,%rdx
  c1:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  c8:	48 89 10             	mov    %rdx,(%rax)
  cb:	c7 85 24 ff ff ff 00 	movl   $0x0,-0xdc(%rbp)
  d2:	00 00 00 
  d5:	e9 81 00 00 00       	jmp    15b <cargarUsuarios+0x15b>
  da:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  e1:	48 8b 10             	mov    (%rax),%rdx
  e4:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
  ea:	48 98                	cltq
  ec:	48 6b c0 6e          	imul   $0x6e,%rax,%rax
  f0:	48 01 d0             	add    %rdx,%rax
  f3:	48 8d 70 3c          	lea    0x3c(%rax),%rsi
  f7:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  fe:	48 8b 10             	mov    (%rax),%rdx
 101:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
 107:	48 98                	cltq
 109:	48 6b c0 6e          	imul   $0x6e,%rax,%rax
 10d:	48 01 d0             	add    %rdx,%rax
 110:	48 8d 50 1e          	lea    0x1e(%rax),%rdx
 114:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
 11b:	48 8b 08             	mov    (%rax),%rcx
 11e:	8b 85 24 ff ff ff    	mov    -0xdc(%rbp),%eax
 124:	48 98                	cltq
 126:	48 6b c0 6e          	imul   $0x6e,%rax,%rax
 12a:	48 01 c8             	add    %rcx,%rax
 12d:	48 89 c7             	mov    %rax,%rdi
 130:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
 137:	49 89 f0             	mov    %rsi,%r8
 13a:	48 89 d1             	mov    %rdx,%rcx
 13d:	48 89 fa             	mov    %rdi,%rdx
 140:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 147 <cargarUsuarios+0x147>
 147:	48 89 c7             	mov    %rax,%rdi
 14a:	b8 00 00 00 00       	mov    $0x0,%eax
 14f:	e8 00 00 00 00       	call   154 <cargarUsuarios+0x154>
 154:	83 85 24 ff ff ff 01 	addl   $0x1,-0xdc(%rbp)
 15b:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
 162:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
 169:	be c8 00 00 00       	mov    $0xc8,%esi
 16e:	48 89 c7             	mov    %rax,%rdi
 171:	e8 00 00 00 00       	call   176 <cargarUsuarios+0x176>
 176:	48 85 c0             	test   %rax,%rax
 179:	0f 85 5b ff ff ff    	jne    da <cargarUsuarios+0xda>
 17f:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
 186:	48 89 c7             	mov    %rax,%rdi
 189:	e8 00 00 00 00       	call   18e <cargarUsuarios+0x18e>
 18e:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
 194:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 198:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 19f:	00 00 
 1a1:	74 05                	je     1a8 <cargarUsuarios+0x1a8>
 1a3:	e8 00 00 00 00       	call   1a8 <cargarUsuarios+0x1a8>
 1a8:	c9                   	leave
 1a9:	c3                   	ret

00000000000001aa <login>:
 1aa:	f3 0f 1e fa          	endbr64
 1ae:	55                   	push   %rbp
 1af:	48 89 e5             	mov    %rsp,%rbp
 1b2:	48 83 ec 70          	sub    $0x70,%rsp
 1b6:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
 1ba:	89 75 94             	mov    %esi,-0x6c(%rbp)
 1bd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 1c4:	00 00 
 1c6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 1ca:	31 c0                	xor    %eax,%eax
 1cc:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
 1d3:	e9 0c 01 00 00       	jmp    2e4 <login+0x13a>
 1d8:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1df <login+0x35>
 1df:	48 89 c7             	mov    %rax,%rdi
 1e2:	b8 00 00 00 00       	mov    $0x0,%eax
 1e7:	e8 00 00 00 00       	call   1ec <login+0x42>
 1ec:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 1f0:	48 89 c6             	mov    %rax,%rsi
 1f3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1fa <login+0x50>
 1fa:	48 89 c7             	mov    %rax,%rdi
 1fd:	b8 00 00 00 00       	mov    $0x0,%eax
 202:	e8 00 00 00 00       	call   207 <login+0x5d>
 207:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 20e <login+0x64>
 20e:	48 89 c7             	mov    %rax,%rdi
 211:	b8 00 00 00 00       	mov    $0x0,%eax
 216:	e8 00 00 00 00       	call   21b <login+0x71>
 21b:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 21f:	48 89 c6             	mov    %rax,%rsi
 222:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 229 <login+0x7f>
 229:	48 89 c7             	mov    %rax,%rdi
 22c:	b8 00 00 00 00       	mov    $0x0,%eax
 231:	e8 00 00 00 00       	call   236 <login+0x8c>
 236:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
 23d:	e9 83 00 00 00       	jmp    2c5 <login+0x11b>
 242:	8b 45 ac             	mov    -0x54(%rbp),%eax
 245:	48 98                	cltq
 247:	48 6b d0 6e          	imul   $0x6e,%rax,%rdx
 24b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 24f:	48 01 d0             	add    %rdx,%rax
 252:	48 89 c2             	mov    %rax,%rdx
 255:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 259:	48 89 d6             	mov    %rdx,%rsi
 25c:	48 89 c7             	mov    %rax,%rdi
 25f:	e8 00 00 00 00       	call   264 <login+0xba>
 264:	85 c0                	test   %eax,%eax
 266:	75 59                	jne    2c1 <login+0x117>
 268:	8b 45 ac             	mov    -0x54(%rbp),%eax
 26b:	48 98                	cltq
 26d:	48 6b d0 6e          	imul   $0x6e,%rax,%rdx
 271:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 275:	48 01 d0             	add    %rdx,%rax
 278:	48 8d 50 1e          	lea    0x1e(%rax),%rdx
 27c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 280:	48 89 d6             	mov    %rdx,%rsi
 283:	48 89 c7             	mov    %rax,%rdi
 286:	e8 00 00 00 00       	call   28b <login+0xe1>
 28b:	85 c0                	test   %eax,%eax
 28d:	75 32                	jne    2c1 <login+0x117>
 28f:	8b 45 ac             	mov    -0x54(%rbp),%eax
 292:	48 98                	cltq
 294:	48 6b d0 6e          	imul   $0x6e,%rax,%rdx
 298:	48 8b 45 98          	mov    -0x68(%rbp),%rax
 29c:	48 01 d0             	add    %rdx,%rax
 29f:	48 83 c0 3c          	add    $0x3c,%rax
 2a3:	48 89 c6             	mov    %rax,%rsi
 2a6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2ad <login+0x103>
 2ad:	48 89 c7             	mov    %rax,%rdi
 2b0:	b8 00 00 00 00       	mov    $0x0,%eax
 2b5:	e8 00 00 00 00       	call   2ba <login+0x110>
 2ba:	b8 01 00 00 00       	mov    $0x1,%eax
 2bf:	eb 41                	jmp    302 <login+0x158>
 2c1:	83 45 ac 01          	addl   $0x1,-0x54(%rbp)
 2c5:	8b 45 ac             	mov    -0x54(%rbp),%eax
 2c8:	3b 45 94             	cmp    -0x6c(%rbp),%eax
 2cb:	0f 8c 71 ff ff ff    	jl     242 <login+0x98>
 2d1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2d8 <login+0x12e>
 2d8:	48 89 c7             	mov    %rax,%rdi
 2db:	e8 00 00 00 00       	call   2e0 <login+0x136>
 2e0:	83 45 a8 01          	addl   $0x1,-0x58(%rbp)
 2e4:	83 7d a8 02          	cmpl   $0x2,-0x58(%rbp)
 2e8:	0f 8e ea fe ff ff    	jle    1d8 <login+0x2e>
 2ee:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2f5 <login+0x14b>
 2f5:	48 89 c7             	mov    %rax,%rdi
 2f8:	e8 00 00 00 00       	call   2fd <login+0x153>
 2fd:	b8 00 00 00 00       	mov    $0x0,%eax
 302:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 306:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 30d:	00 00 
 30f:	74 05                	je     316 <login+0x16c>
 311:	e8 00 00 00 00       	call   316 <login+0x16c>
 316:	c9                   	leave
 317:	c3                   	ret
