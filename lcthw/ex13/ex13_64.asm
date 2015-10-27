
ex13:     file format elf64-x86-64


Disassembly of section .init:

00000000004003e0 <_init>:
  4003e0:	48 83 ec 08          	sub    rsp,0x8
  4003e4:	48 8b 05 0d 0c 20 00 	mov    rax,QWORD PTR [rip+0x200c0d]        # 600ff8 <_DYNAMIC+0x1d0>
  4003eb:	48 85 c0             	test   rax,rax
  4003ee:	74 05                	je     4003f5 <_init+0x15>
  4003f0:	e8 3b 00 00 00       	call   400430 <__gmon_start__@plt>
  4003f5:	48 83 c4 08          	add    rsp,0x8
  4003f9:	c3                   	ret    

Disassembly of section .plt:

0000000000400400 <printf@plt-0x10>:
  400400:	ff 35 02 0c 20 00    	push   QWORD PTR [rip+0x200c02]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400406:	ff 25 04 0c 20 00    	jmp    QWORD PTR [rip+0x200c04]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40040c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400410 <printf@plt>:
  400410:	ff 25 02 0c 20 00    	jmp    QWORD PTR [rip+0x200c02]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400416:	68 00 00 00 00       	push   0x0
  40041b:	e9 e0 ff ff ff       	jmp    400400 <_init+0x20>

0000000000400420 <__libc_start_main@plt>:
  400420:	ff 25 fa 0b 20 00    	jmp    QWORD PTR [rip+0x200bfa]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400426:	68 01 00 00 00       	push   0x1
  40042b:	e9 d0 ff ff ff       	jmp    400400 <_init+0x20>

0000000000400430 <__gmon_start__@plt>:
  400430:	ff 25 f2 0b 20 00    	jmp    QWORD PTR [rip+0x200bf2]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400436:	68 02 00 00 00       	push   0x2
  40043b:	e9 c0 ff ff ff       	jmp    400400 <_init+0x20>

Disassembly of section .text:

0000000000400440 <_start>:
  400440:	31 ed                	xor    ebp,ebp
  400442:	49 89 d1             	mov    r9,rdx
  400445:	5e                   	pop    rsi
  400446:	48 89 e2             	mov    rdx,rsp
  400449:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40044d:	50                   	push   rax
  40044e:	54                   	push   rsp
  40044f:	49 c7 c0 60 06 40 00 	mov    r8,0x400660
  400456:	48 c7 c1 f0 05 40 00 	mov    rcx,0x4005f0
  40045d:	48 c7 c7 2d 05 40 00 	mov    rdi,0x40052d
  400464:	e8 b7 ff ff ff       	call   400420 <__libc_start_main@plt>
  400469:	f4                   	hlt    
  40046a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400470 <deregister_tm_clones>:
  400470:	b8 47 10 60 00       	mov    eax,0x601047
  400475:	55                   	push   rbp
  400476:	48 2d 40 10 60 00    	sub    rax,0x601040
  40047c:	48 83 f8 0e          	cmp    rax,0xe
  400480:	48 89 e5             	mov    rbp,rsp
  400483:	77 02                	ja     400487 <deregister_tm_clones+0x17>
  400485:	5d                   	pop    rbp
  400486:	c3                   	ret    
  400487:	b8 00 00 00 00       	mov    eax,0x0
  40048c:	48 85 c0             	test   rax,rax
  40048f:	74 f4                	je     400485 <deregister_tm_clones+0x15>
  400491:	5d                   	pop    rbp
  400492:	bf 40 10 60 00       	mov    edi,0x601040
  400497:	ff e0                	jmp    rax
  400499:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004004a0 <register_tm_clones>:
  4004a0:	b8 40 10 60 00       	mov    eax,0x601040
  4004a5:	55                   	push   rbp
  4004a6:	48 2d 40 10 60 00    	sub    rax,0x601040
  4004ac:	48 c1 f8 03          	sar    rax,0x3
  4004b0:	48 89 e5             	mov    rbp,rsp
  4004b3:	48 89 c2             	mov    rdx,rax
  4004b6:	48 c1 ea 3f          	shr    rdx,0x3f
  4004ba:	48 01 d0             	add    rax,rdx
  4004bd:	48 d1 f8             	sar    rax,1
  4004c0:	75 02                	jne    4004c4 <register_tm_clones+0x24>
  4004c2:	5d                   	pop    rbp
  4004c3:	c3                   	ret    
  4004c4:	ba 00 00 00 00       	mov    edx,0x0
  4004c9:	48 85 d2             	test   rdx,rdx
  4004cc:	74 f4                	je     4004c2 <register_tm_clones+0x22>
  4004ce:	5d                   	pop    rbp
  4004cf:	48 89 c6             	mov    rsi,rax
  4004d2:	bf 40 10 60 00       	mov    edi,0x601040
  4004d7:	ff e2                	jmp    rdx
  4004d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004004e0 <__do_global_dtors_aux>:
  4004e0:	80 3d 59 0b 20 00 00 	cmp    BYTE PTR [rip+0x200b59],0x0        # 601040 <__TMC_END__>
  4004e7:	75 11                	jne    4004fa <__do_global_dtors_aux+0x1a>
  4004e9:	55                   	push   rbp
  4004ea:	48 89 e5             	mov    rbp,rsp
  4004ed:	e8 7e ff ff ff       	call   400470 <deregister_tm_clones>
  4004f2:	5d                   	pop    rbp
  4004f3:	c6 05 46 0b 20 00 01 	mov    BYTE PTR [rip+0x200b46],0x1        # 601040 <__TMC_END__>
  4004fa:	f3 c3                	repz ret 
  4004fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400500 <frame_dummy>:
  400500:	48 83 3d 18 09 20 00 	cmp    QWORD PTR [rip+0x200918],0x0        # 600e20 <__JCR_END__>
  400507:	00 
  400508:	74 1e                	je     400528 <frame_dummy+0x28>
  40050a:	b8 00 00 00 00       	mov    eax,0x0
  40050f:	48 85 c0             	test   rax,rax
  400512:	74 14                	je     400528 <frame_dummy+0x28>
  400514:	55                   	push   rbp
  400515:	bf 20 0e 60 00       	mov    edi,0x600e20
  40051a:	48 89 e5             	mov    rbp,rsp
  40051d:	ff d0                	call   rax
  40051f:	5d                   	pop    rbp
  400520:	e9 7b ff ff ff       	jmp    4004a0 <register_tm_clones>
  400525:	0f 1f 00             	nop    DWORD PTR [rax]
  400528:	e9 73 ff ff ff       	jmp    4004a0 <register_tm_clones>

000000000040052d <main>:
  40052d:	55                   	push   rbp
  40052e:	48 89 e5             	mov    rbp,rsp
  400531:	48 83 ec 40          	sub    rsp,0x40
  400535:	89 7d cc             	mov    DWORD PTR [rbp-0x34],edi
  400538:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
  40053c:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
  400543:	c7 45 d8 01 00 00 00 	mov    DWORD PTR [rbp-0x28],0x1
  40054a:	eb 2f                	jmp    40057b <main+0x4e>
  40054c:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  40054f:	48 98                	cdqe   
  400551:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  400558:	00 
  400559:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  40055d:	48 01 d0             	add    rax,rdx
  400560:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  400563:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  400566:	89 c6                	mov    esi,eax
  400568:	bf 74 06 40 00       	mov    edi,0x400674
  40056d:	b8 00 00 00 00       	mov    eax,0x0
  400572:	e8 99 fe ff ff       	call   400410 <printf@plt>
  400577:	83 45 d8 01          	add    DWORD PTR [rbp-0x28],0x1
  40057b:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  40057e:	3b 45 cc             	cmp    eax,DWORD PTR [rbp-0x34]
  400581:	7c c9                	jl     40054c <main+0x1f>
  400583:	48 c7 45 e0 87 06 40 	mov    QWORD PTR [rbp-0x20],0x400687
  40058a:	00 
  40058b:	48 c7 45 e8 92 06 40 	mov    QWORD PTR [rbp-0x18],0x400692
  400592:	00 
  400593:	48 c7 45 f0 99 06 40 	mov    QWORD PTR [rbp-0x10],0x400699
  40059a:	00 
  40059b:	48 c7 45 f8 a4 06 40 	mov    QWORD PTR [rbp-0x8],0x4006a4
  4005a2:	00 
  4005a3:	c7 45 dc 04 00 00 00 	mov    DWORD PTR [rbp-0x24],0x4
  4005aa:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
  4005b1:	eb 22                	jmp    4005d5 <main+0xa8>
  4005b3:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  4005b6:	48 98                	cdqe   
  4005b8:	48 8b 54 c5 e0       	mov    rdx,QWORD PTR [rbp+rax*8-0x20]
  4005bd:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  4005c0:	89 c6                	mov    esi,eax
  4005c2:	bf aa 06 40 00       	mov    edi,0x4006aa
  4005c7:	b8 00 00 00 00       	mov    eax,0x0
  4005cc:	e8 3f fe ff ff       	call   400410 <printf@plt>
  4005d1:	83 45 d8 01          	add    DWORD PTR [rbp-0x28],0x1
  4005d5:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  4005d8:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
  4005db:	7c d6                	jl     4005b3 <main+0x86>
  4005dd:	b8 00 00 00 00       	mov    eax,0x0
  4005e2:	c9                   	leave  
  4005e3:	c3                   	ret    
  4005e4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4005eb:	00 00 00 
  4005ee:	66 90                	xchg   ax,ax

00000000004005f0 <__libc_csu_init>:
  4005f0:	41 57                	push   r15
  4005f2:	41 89 ff             	mov    r15d,edi
  4005f5:	41 56                	push   r14
  4005f7:	49 89 f6             	mov    r14,rsi
  4005fa:	41 55                	push   r13
  4005fc:	49 89 d5             	mov    r13,rdx
  4005ff:	41 54                	push   r12
  400601:	4c 8d 25 08 08 20 00 	lea    r12,[rip+0x200808]        # 600e10 <__frame_dummy_init_array_entry>
  400608:	55                   	push   rbp
  400609:	48 8d 2d 08 08 20 00 	lea    rbp,[rip+0x200808]        # 600e18 <__init_array_end>
  400610:	53                   	push   rbx
  400611:	4c 29 e5             	sub    rbp,r12
  400614:	31 db                	xor    ebx,ebx
  400616:	48 c1 fd 03          	sar    rbp,0x3
  40061a:	48 83 ec 08          	sub    rsp,0x8
  40061e:	e8 bd fd ff ff       	call   4003e0 <_init>
  400623:	48 85 ed             	test   rbp,rbp
  400626:	74 1e                	je     400646 <__libc_csu_init+0x56>
  400628:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40062f:	00 
  400630:	4c 89 ea             	mov    rdx,r13
  400633:	4c 89 f6             	mov    rsi,r14
  400636:	44 89 ff             	mov    edi,r15d
  400639:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40063d:	48 83 c3 01          	add    rbx,0x1
  400641:	48 39 eb             	cmp    rbx,rbp
  400644:	75 ea                	jne    400630 <__libc_csu_init+0x40>
  400646:	48 83 c4 08          	add    rsp,0x8
  40064a:	5b                   	pop    rbx
  40064b:	5d                   	pop    rbp
  40064c:	41 5c                	pop    r12
  40064e:	41 5d                	pop    r13
  400650:	41 5e                	pop    r14
  400652:	41 5f                	pop    r15
  400654:	c3                   	ret    
  400655:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40065c:	00 00 00 00 

0000000000400660 <__libc_csu_fini>:
  400660:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400664 <_fini>:
  400664:	48 83 ec 08          	sub    rsp,0x8
  400668:	48 83 c4 08          	add    rsp,0x8
  40066c:	c3                   	ret    
