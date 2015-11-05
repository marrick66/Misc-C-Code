
./ex15:     file format elf64-x86-64


Disassembly of section .init:

0000000000400418 <_init>:
  400418:	48 83 ec 08          	sub    rsp,0x8
  40041c:	48 8b 05 d5 0b 20 00 	mov    rax,QWORD PTR [rip+0x200bd5]        # 600ff8 <_DYNAMIC+0x1d0>
  400423:	48 85 c0             	test   rax,rax
  400426:	74 05                	je     40042d <_init+0x15>
  400428:	e8 53 00 00 00       	call   400480 <__gmon_start__@plt>
  40042d:	48 83 c4 08          	add    rsp,0x8
  400431:	c3                   	ret    

Disassembly of section .plt:

0000000000400440 <puts@plt-0x10>:
  400440:	ff 35 c2 0b 20 00    	push   QWORD PTR [rip+0x200bc2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 c4 0b 20 00    	jmp    QWORD PTR [rip+0x200bc4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400450 <puts@plt>:
  400450:	ff 25 c2 0b 20 00    	jmp    QWORD PTR [rip+0x200bc2]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400456:	68 00 00 00 00       	push   0x0
  40045b:	e9 e0 ff ff ff       	jmp    400440 <_init+0x28>

0000000000400460 <printf@plt>:
  400460:	ff 25 ba 0b 20 00    	jmp    QWORD PTR [rip+0x200bba]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400466:	68 01 00 00 00       	push   0x1
  40046b:	e9 d0 ff ff ff       	jmp    400440 <_init+0x28>

0000000000400470 <__libc_start_main@plt>:
  400470:	ff 25 b2 0b 20 00    	jmp    QWORD PTR [rip+0x200bb2]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400476:	68 02 00 00 00       	push   0x2
  40047b:	e9 c0 ff ff ff       	jmp    400440 <_init+0x28>

0000000000400480 <__gmon_start__@plt>:
  400480:	ff 25 aa 0b 20 00    	jmp    QWORD PTR [rip+0x200baa]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400486:	68 03 00 00 00       	push   0x3
  40048b:	e9 b0 ff ff ff       	jmp    400440 <_init+0x28>

Disassembly of section .text:

0000000000400490 <_start>:
  400490:	31 ed                	xor    ebp,ebp
  400492:	49 89 d1             	mov    r9,rdx
  400495:	5e                   	pop    rsi
  400496:	48 89 e2             	mov    rdx,rsp
  400499:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40049d:	50                   	push   rax
  40049e:	54                   	push   rsp
  40049f:	49 c7 c0 60 07 40 00 	mov    r8,0x400760
  4004a6:	48 c7 c1 f0 06 40 00 	mov    rcx,0x4006f0
  4004ad:	48 c7 c7 7d 05 40 00 	mov    rdi,0x40057d
  4004b4:	e8 b7 ff ff ff       	call   400470 <__libc_start_main@plt>
  4004b9:	f4                   	hlt    
  4004ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004004c0 <deregister_tm_clones>:
  4004c0:	b8 4f 10 60 00       	mov    eax,0x60104f
  4004c5:	55                   	push   rbp
  4004c6:	48 2d 48 10 60 00    	sub    rax,0x601048
  4004cc:	48 83 f8 0e          	cmp    rax,0xe
  4004d0:	48 89 e5             	mov    rbp,rsp
  4004d3:	77 02                	ja     4004d7 <deregister_tm_clones+0x17>
  4004d5:	5d                   	pop    rbp
  4004d6:	c3                   	ret    
  4004d7:	b8 00 00 00 00       	mov    eax,0x0
  4004dc:	48 85 c0             	test   rax,rax
  4004df:	74 f4                	je     4004d5 <deregister_tm_clones+0x15>
  4004e1:	5d                   	pop    rbp
  4004e2:	bf 48 10 60 00       	mov    edi,0x601048
  4004e7:	ff e0                	jmp    rax
  4004e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004004f0 <register_tm_clones>:
  4004f0:	b8 48 10 60 00       	mov    eax,0x601048
  4004f5:	55                   	push   rbp
  4004f6:	48 2d 48 10 60 00    	sub    rax,0x601048
  4004fc:	48 c1 f8 03          	sar    rax,0x3
  400500:	48 89 e5             	mov    rbp,rsp
  400503:	48 89 c2             	mov    rdx,rax
  400506:	48 c1 ea 3f          	shr    rdx,0x3f
  40050a:	48 01 d0             	add    rax,rdx
  40050d:	48 d1 f8             	sar    rax,1
  400510:	75 02                	jne    400514 <register_tm_clones+0x24>
  400512:	5d                   	pop    rbp
  400513:	c3                   	ret    
  400514:	ba 00 00 00 00       	mov    edx,0x0
  400519:	48 85 d2             	test   rdx,rdx
  40051c:	74 f4                	je     400512 <register_tm_clones+0x22>
  40051e:	5d                   	pop    rbp
  40051f:	48 89 c6             	mov    rsi,rax
  400522:	bf 48 10 60 00       	mov    edi,0x601048
  400527:	ff e2                	jmp    rdx
  400529:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400530 <__do_global_dtors_aux>:
  400530:	80 3d 11 0b 20 00 00 	cmp    BYTE PTR [rip+0x200b11],0x0        # 601048 <__TMC_END__>
  400537:	75 11                	jne    40054a <__do_global_dtors_aux+0x1a>
  400539:	55                   	push   rbp
  40053a:	48 89 e5             	mov    rbp,rsp
  40053d:	e8 7e ff ff ff       	call   4004c0 <deregister_tm_clones>
  400542:	5d                   	pop    rbp
  400543:	c6 05 fe 0a 20 00 01 	mov    BYTE PTR [rip+0x200afe],0x1        # 601048 <__TMC_END__>
  40054a:	f3 c3                	repz ret 
  40054c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400550 <frame_dummy>:
  400550:	48 83 3d c8 08 20 00 	cmp    QWORD PTR [rip+0x2008c8],0x0        # 600e20 <__JCR_END__>
  400557:	00 
  400558:	74 1e                	je     400578 <frame_dummy+0x28>
  40055a:	b8 00 00 00 00       	mov    eax,0x0
  40055f:	48 85 c0             	test   rax,rax
  400562:	74 14                	je     400578 <frame_dummy+0x28>
  400564:	55                   	push   rbp
  400565:	bf 20 0e 60 00       	mov    edi,0x600e20
  40056a:	48 89 e5             	mov    rbp,rsp
  40056d:	ff d0                	call   rax
  40056f:	5d                   	pop    rbp
  400570:	e9 7b ff ff ff       	jmp    4004f0 <register_tm_clones>
  400575:	0f 1f 00             	nop    DWORD PTR [rax]
  400578:	e9 73 ff ff ff       	jmp    4004f0 <register_tm_clones>

000000000040057d <main>:
  40057d:	55                   	push   rbp
  40057e:	48 89 e5             	mov    rbp,rsp
  400581:	48 83 c4 80          	add    rsp,0xffffffffffffff80
  400585:	89 7d 8c             	mov    DWORD PTR [rbp-0x74],edi
  400588:	48 89 75 80          	mov    QWORD PTR [rbp-0x80],rsi
  40058c:	c7 45 b0 17 00 00 00 	mov    DWORD PTR [rbp-0x50],0x17
  400593:	c7 45 b4 2b 00 00 00 	mov    DWORD PTR [rbp-0x4c],0x2b
  40059a:	c7 45 b8 0c 00 00 00 	mov    DWORD PTR [rbp-0x48],0xc
  4005a1:	c7 45 bc 59 00 00 00 	mov    DWORD PTR [rbp-0x44],0x59
  4005a8:	c7 45 c0 02 00 00 00 	mov    DWORD PTR [rbp-0x40],0x2
  4005af:	48 c7 45 d0 74 07 40 	mov    QWORD PTR [rbp-0x30],0x400774
  4005b6:	00 
  4005b7:	48 c7 45 d8 79 07 40 	mov    QWORD PTR [rbp-0x28],0x400779
  4005be:	00 
  4005bf:	48 c7 45 e0 7f 07 40 	mov    QWORD PTR [rbp-0x20],0x40077f
  4005c6:	00 
  4005c7:	48 c7 45 e8 84 07 40 	mov    QWORD PTR [rbp-0x18],0x400784
  4005ce:	00 
  4005cf:	48 c7 45 f0 89 07 40 	mov    QWORD PTR [rbp-0x10],0x400789
  4005d6:	00 
  4005d7:	c7 45 9c 05 00 00 00 	mov    DWORD PTR [rbp-0x64],0x5
  4005de:	c7 45 94 00 00 00 00 	mov    DWORD PTR [rbp-0x6c],0x0
  4005e5:	eb 29                	jmp    400610 <main+0x93>
  4005e7:	8b 45 94             	mov    eax,DWORD PTR [rbp-0x6c]
  4005ea:	48 98                	cdqe   
  4005ec:	8b 54 85 b0          	mov    edx,DWORD PTR [rbp+rax*4-0x50]
  4005f0:	8b 45 94             	mov    eax,DWORD PTR [rbp-0x6c]
  4005f3:	48 98                	cdqe   
  4005f5:	48 8b 44 c5 d0       	mov    rax,QWORD PTR [rbp+rax*8-0x30]
  4005fa:	48 89 c6             	mov    rsi,rax
  4005fd:	bf 8e 07 40 00       	mov    edi,0x40078e
  400602:	b8 00 00 00 00       	mov    eax,0x0
  400607:	e8 54 fe ff ff       	call   400460 <printf@plt>
  40060c:	83 45 94 01          	add    DWORD PTR [rbp-0x6c],0x1
  400610:	8b 45 94             	mov    eax,DWORD PTR [rbp-0x6c]
  400613:	3b 45 9c             	cmp    eax,DWORD PTR [rbp-0x64]
  400616:	7c cf                	jl     4005e7 <main+0x6a>
  400618:	bf a8 07 40 00       	mov    edi,0x4007a8
  40061d:	e8 2e fe ff ff       	call   400450 <puts@plt>
  400622:	c7 45 98 00 00 00 00 	mov    DWORD PTR [rbp-0x68],0x0
  400629:	eb 43                	jmp    40066e <main+0xf1>
  40062b:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
  40062e:	48 98                	cdqe   
  400630:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400637:	00 
  400638:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  40063c:	48 01 d0             	add    rax,rdx
  40063f:	8b 10                	mov    edx,DWORD PTR [rax]
  400641:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
  400644:	48 98                	cdqe   
  400646:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
  40064d:	00 
  40064e:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400652:	48 01 c8             	add    rax,rcx
  400655:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400658:	48 89 c6             	mov    rsi,rax
  40065b:	bf 8e 07 40 00       	mov    edi,0x40078e
  400660:	b8 00 00 00 00       	mov    eax,0x0
  400665:	e8 f6 fd ff ff       	call   400460 <printf@plt>
  40066a:	83 45 98 01          	add    DWORD PTR [rbp-0x68],0x1
  40066e:	8b 45 98             	mov    eax,DWORD PTR [rbp-0x68]
  400671:	3b 45 9c             	cmp    eax,DWORD PTR [rbp-0x64]
  400674:	7c b5                	jl     40062b <main+0xae>
  400676:	bf a8 07 40 00       	mov    edi,0x4007a8
  40067b:	e8 d0 fd ff ff       	call   400450 <puts@plt>
  400680:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  400684:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  400688:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  40068c:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
  400690:	eb 29                	jmp    4006bb <main+0x13e>
  400692:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  400696:	8b 10                	mov    edx,DWORD PTR [rax]
  400698:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  40069c:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40069f:	48 89 c6             	mov    rsi,rax
  4006a2:	bf 8e 07 40 00       	mov    edi,0x40078e
  4006a7:	b8 00 00 00 00       	mov    eax,0x0
  4006ac:	e8 af fd ff ff       	call   400460 <printf@plt>
  4006b1:	48 83 45 a0 04       	add    QWORD PTR [rbp-0x60],0x4
  4006b6:	48 83 45 a8 08       	add    QWORD PTR [rbp-0x58],0x8
  4006bb:	48 8b 55 a0          	mov    rdx,QWORD PTR [rbp-0x60]
  4006bf:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  4006c3:	48 29 c2             	sub    rdx,rax
  4006c6:	48 89 d0             	mov    rax,rdx
  4006c9:	48 c1 f8 02          	sar    rax,0x2
  4006cd:	48 89 c2             	mov    rdx,rax
  4006d0:	8b 45 9c             	mov    eax,DWORD PTR [rbp-0x64]
  4006d3:	48 98                	cdqe   
  4006d5:	48 39 c2             	cmp    rdx,rax
  4006d8:	7c b8                	jl     400692 <main+0x115>
  4006da:	b8 00 00 00 00       	mov    eax,0x0
  4006df:	c9                   	leave  
  4006e0:	c3                   	ret    
  4006e1:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4006e8:	00 00 00 
  4006eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004006f0 <__libc_csu_init>:
  4006f0:	41 57                	push   r15
  4006f2:	41 89 ff             	mov    r15d,edi
  4006f5:	41 56                	push   r14
  4006f7:	49 89 f6             	mov    r14,rsi
  4006fa:	41 55                	push   r13
  4006fc:	49 89 d5             	mov    r13,rdx
  4006ff:	41 54                	push   r12
  400701:	4c 8d 25 08 07 20 00 	lea    r12,[rip+0x200708]        # 600e10 <__frame_dummy_init_array_entry>
  400708:	55                   	push   rbp
  400709:	48 8d 2d 08 07 20 00 	lea    rbp,[rip+0x200708]        # 600e18 <__init_array_end>
  400710:	53                   	push   rbx
  400711:	4c 29 e5             	sub    rbp,r12
  400714:	31 db                	xor    ebx,ebx
  400716:	48 c1 fd 03          	sar    rbp,0x3
  40071a:	48 83 ec 08          	sub    rsp,0x8
  40071e:	e8 f5 fc ff ff       	call   400418 <_init>
  400723:	48 85 ed             	test   rbp,rbp
  400726:	74 1e                	je     400746 <__libc_csu_init+0x56>
  400728:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40072f:	00 
  400730:	4c 89 ea             	mov    rdx,r13
  400733:	4c 89 f6             	mov    rsi,r14
  400736:	44 89 ff             	mov    edi,r15d
  400739:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40073d:	48 83 c3 01          	add    rbx,0x1
  400741:	48 39 eb             	cmp    rbx,rbp
  400744:	75 ea                	jne    400730 <__libc_csu_init+0x40>
  400746:	48 83 c4 08          	add    rsp,0x8
  40074a:	5b                   	pop    rbx
  40074b:	5d                   	pop    rbp
  40074c:	41 5c                	pop    r12
  40074e:	41 5d                	pop    r13
  400750:	41 5e                	pop    r14
  400752:	41 5f                	pop    r15
  400754:	c3                   	ret    
  400755:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40075c:	00 00 00 00 

0000000000400760 <__libc_csu_fini>:
  400760:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400764 <_fini>:
  400764:	48 83 ec 08          	sub    rsp,0x8
  400768:	48 83 c4 08          	add    rsp,0x8
  40076c:	c3                   	ret    
