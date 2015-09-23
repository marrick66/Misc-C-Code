
ex1_64:     file format elf64-x86-64


Disassembly of section .init:

00000000004003a8 <_init>:
  4003a8:	48 83 ec 08          	sub    rsp,0x8
  4003ac:	48 8b 05 45 0c 20 00 	mov    rax,QWORD PTR [rip+0x200c45]        # 600ff8 <_DYNAMIC+0x1d0>
  4003b3:	48 85 c0             	test   rax,rax
  4003b6:	74 05                	je     4003bd <_init+0x15>
  4003b8:	e8 33 00 00 00       	call   4003f0 <__gmon_start__@plt>
  4003bd:	48 83 c4 08          	add    rsp,0x8
  4003c1:	c3                   	ret    

Disassembly of section .plt:

00000000004003d0 <__libc_start_main@plt-0x10>:
  4003d0:	ff 35 32 0c 20 00    	push   QWORD PTR [rip+0x200c32]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003d6:	ff 25 34 0c 20 00    	jmp    QWORD PTR [rip+0x200c34]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004003e0 <__libc_start_main@plt>:
  4003e0:	ff 25 32 0c 20 00    	jmp    QWORD PTR [rip+0x200c32]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003e6:	68 00 00 00 00       	push   0x0
  4003eb:	e9 e0 ff ff ff       	jmp    4003d0 <_init+0x28>

00000000004003f0 <__gmon_start__@plt>:
  4003f0:	ff 25 2a 0c 20 00    	jmp    QWORD PTR [rip+0x200c2a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4003f6:	68 01 00 00 00       	push   0x1
  4003fb:	e9 d0 ff ff ff       	jmp    4003d0 <_init+0x28>

Disassembly of section .text:

0000000000400400 <_start>:
  400400:	31 ed                	xor    ebp,ebp
  400402:	49 89 d1             	mov    r9,rdx
  400405:	5e                   	pop    rsi
  400406:	48 89 e2             	mov    rdx,rsp
  400409:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40040d:	50                   	push   rax
  40040e:	54                   	push   rsp
  40040f:	49 c7 c0 a0 05 40 00 	mov    r8,0x4005a0
  400416:	48 c7 c1 30 05 40 00 	mov    rcx,0x400530
  40041d:	48 c7 c7 01 05 40 00 	mov    rdi,0x400501
  400424:	e8 b7 ff ff ff       	call   4003e0 <__libc_start_main@plt>
  400429:	f4                   	hlt    
  40042a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400430 <deregister_tm_clones>:
  400430:	b8 3f 10 60 00       	mov    eax,0x60103f
  400435:	55                   	push   rbp
  400436:	48 2d 38 10 60 00    	sub    rax,0x601038
  40043c:	48 83 f8 0e          	cmp    rax,0xe
  400440:	48 89 e5             	mov    rbp,rsp
  400443:	77 02                	ja     400447 <deregister_tm_clones+0x17>
  400445:	5d                   	pop    rbp
  400446:	c3                   	ret    
  400447:	b8 00 00 00 00       	mov    eax,0x0
  40044c:	48 85 c0             	test   rax,rax
  40044f:	74 f4                	je     400445 <deregister_tm_clones+0x15>
  400451:	5d                   	pop    rbp
  400452:	bf 38 10 60 00       	mov    edi,0x601038
  400457:	ff e0                	jmp    rax
  400459:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400460 <register_tm_clones>:
  400460:	b8 38 10 60 00       	mov    eax,0x601038
  400465:	55                   	push   rbp
  400466:	48 2d 38 10 60 00    	sub    rax,0x601038
  40046c:	48 c1 f8 03          	sar    rax,0x3
  400470:	48 89 e5             	mov    rbp,rsp
  400473:	48 89 c2             	mov    rdx,rax
  400476:	48 c1 ea 3f          	shr    rdx,0x3f
  40047a:	48 01 d0             	add    rax,rdx
  40047d:	48 d1 f8             	sar    rax,1
  400480:	75 02                	jne    400484 <register_tm_clones+0x24>
  400482:	5d                   	pop    rbp
  400483:	c3                   	ret    
  400484:	ba 00 00 00 00       	mov    edx,0x0
  400489:	48 85 d2             	test   rdx,rdx
  40048c:	74 f4                	je     400482 <register_tm_clones+0x22>
  40048e:	5d                   	pop    rbp
  40048f:	48 89 c6             	mov    rsi,rax
  400492:	bf 38 10 60 00       	mov    edi,0x601038
  400497:	ff e2                	jmp    rdx
  400499:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004004a0 <__do_global_dtors_aux>:
  4004a0:	80 3d 91 0b 20 00 00 	cmp    BYTE PTR [rip+0x200b91],0x0        # 601038 <__TMC_END__>
  4004a7:	75 11                	jne    4004ba <__do_global_dtors_aux+0x1a>
  4004a9:	55                   	push   rbp
  4004aa:	48 89 e5             	mov    rbp,rsp
  4004ad:	e8 7e ff ff ff       	call   400430 <deregister_tm_clones>
  4004b2:	5d                   	pop    rbp
  4004b3:	c6 05 7e 0b 20 00 01 	mov    BYTE PTR [rip+0x200b7e],0x1        # 601038 <__TMC_END__>
  4004ba:	f3 c3                	repz ret 
  4004bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004004c0 <frame_dummy>:
  4004c0:	48 83 3d 58 09 20 00 	cmp    QWORD PTR [rip+0x200958],0x0        # 600e20 <__JCR_END__>
  4004c7:	00 
  4004c8:	74 1e                	je     4004e8 <frame_dummy+0x28>
  4004ca:	b8 00 00 00 00       	mov    eax,0x0
  4004cf:	48 85 c0             	test   rax,rax
  4004d2:	74 14                	je     4004e8 <frame_dummy+0x28>
  4004d4:	55                   	push   rbp
  4004d5:	bf 20 0e 60 00       	mov    edi,0x600e20
  4004da:	48 89 e5             	mov    rbp,rsp
  4004dd:	ff d0                	call   rax
  4004df:	5d                   	pop    rbp
  4004e0:	e9 7b ff ff ff       	jmp    400460 <register_tm_clones>
  4004e5:	0f 1f 00             	nop    DWORD PTR [rax]
  4004e8:	e9 73 ff ff ff       	jmp    400460 <register_tm_clones>

00000000004004ed <add>:
  4004ed:	55                   	push   rbp
  4004ee:	48 89 e5             	mov    rbp,rsp
  4004f1:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  4004f4:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  4004f7:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  4004fa:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  4004fd:	01 d0                	add    eax,edx
  4004ff:	5d                   	pop    rbp
  400500:	c3                   	ret    
//x64 still uses the stack for temporary space, but the calling convention
//uses rdi, rsi, rdx, rcx, r8, r9 to pass the first 6 parameters.  The rest are put onto the
//stack. The code below uses 32 bit registers because it's only handling smaller numbers.
//The higher order bits in the register are zeroes. In this case, the stack is only
//used for temporary space.
0000000000400501 <main>:
  400501:	55                   	push   rbp
  400502:	48 89 e5             	mov    rbp,rsp
  400505:	48 83 ec 20          	sub    rsp,0x20
  400509:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  40050c:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  400510:	c7 45 f8 01 00 00 00 	mov    DWORD PTR [rbp-0x8],0x1
  400517:	c7 45 fc 03 00 00 00 	mov    DWORD PTR [rbp-0x4],0x3
  40051e:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  400521:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400524:	89 d6                	mov    esi,edx
  400526:	89 c7                	mov    edi,eax
  400528:	e8 c0 ff ff ff       	call   4004ed <add>
  40052d:	c9                   	leave  
  40052e:	c3                   	ret    
  40052f:	90                   	nop

0000000000400530 <__libc_csu_init>:
  400530:	41 57                	push   r15
  400532:	41 89 ff             	mov    r15d,edi
  400535:	41 56                	push   r14
  400537:	49 89 f6             	mov    r14,rsi
  40053a:	41 55                	push   r13
  40053c:	49 89 d5             	mov    r13,rdx
  40053f:	41 54                	push   r12
  400541:	4c 8d 25 c8 08 20 00 	lea    r12,[rip+0x2008c8]        # 600e10 <__frame_dummy_init_array_entry>
  400548:	55                   	push   rbp
  400549:	48 8d 2d c8 08 20 00 	lea    rbp,[rip+0x2008c8]        # 600e18 <__init_array_end>
  400550:	53                   	push   rbx
  400551:	4c 29 e5             	sub    rbp,r12
  400554:	31 db                	xor    ebx,ebx
  400556:	48 c1 fd 03          	sar    rbp,0x3
  40055a:	48 83 ec 08          	sub    rsp,0x8
  40055e:	e8 45 fe ff ff       	call   4003a8 <_init>
  400563:	48 85 ed             	test   rbp,rbp
  400566:	74 1e                	je     400586 <__libc_csu_init+0x56>
  400568:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40056f:	00 
  400570:	4c 89 ea             	mov    rdx,r13
  400573:	4c 89 f6             	mov    rsi,r14
  400576:	44 89 ff             	mov    edi,r15d
  400579:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40057d:	48 83 c3 01          	add    rbx,0x1
  400581:	48 39 eb             	cmp    rbx,rbp
  400584:	75 ea                	jne    400570 <__libc_csu_init+0x40>
  400586:	48 83 c4 08          	add    rsp,0x8
  40058a:	5b                   	pop    rbx
  40058b:	5d                   	pop    rbp
  40058c:	41 5c                	pop    r12
  40058e:	41 5d                	pop    r13
  400590:	41 5e                	pop    r14
  400592:	41 5f                	pop    r15
  400594:	c3                   	ret    
  400595:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40059c:	00 00 00 00 

00000000004005a0 <__libc_csu_fini>:
  4005a0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004005a4 <_fini>:
  4005a4:	48 83 ec 08          	sub    rsp,0x8
  4005a8:	48 83 c4 08          	add    rsp,0x8
  4005ac:	c3                   	ret    
