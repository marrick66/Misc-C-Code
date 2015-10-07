
ex10:     file format elf64-x86-64


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
  40049f:	49 c7 c0 30 07 40 00 	mov    r8,0x400730
  4004a6:	48 c7 c1 c0 06 40 00 	mov    rcx,0x4006c0
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
  400581:	48 83 ec 20          	sub    rsp,0x20
  400585:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  400588:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  40058c:	83 7d ec 02          	cmp    DWORD PTR [rbp-0x14],0x2
  400590:	74 14                	je     4005a6 <main+0x29>
  400592:	bf 48 07 40 00       	mov    edi,0x400748
  400597:	e8 b4 fe ff ff       	call   400450 <puts@plt>
  40059c:	b8 01 00 00 00       	mov    eax,0x1
  4005a1:	e9 0f 01 00 00       	jmp    4006b5 <main+0x138>
  4005a6:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  4005ad:	e9 e0 00 00 00       	jmp    400692 <main+0x115>
  4005b2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4005b6:	48 83 c0 08          	add    rax,0x8
  4005ba:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4005bd:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4005c0:	48 98                	cdqe   
  4005c2:	48 01 d0             	add    rax,rdx
  4005c5:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4005c8:	88 45 fb             	mov    BYTE PTR [rbp-0x5],al
  4005cb:	0f be 45 fb          	movsx  eax,BYTE PTR [rbp-0x5]
  4005cf:	83 e8 41             	sub    eax,0x41
  4005d2:	83 f8 38             	cmp    eax,0x38
  4005d5:	0f 87 9b 00 00 00    	ja     400676 <main+0xf9>
  4005db:	89 c0                	mov    eax,eax
  4005dd:	48 8b 04 c5 b0 07 40 	mov    rax,QWORD PTR [rax*8+0x4007b0]
  4005e4:	00 
  4005e5:	ff e0                	jmp    rax
  4005e7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4005ea:	89 c6                	mov    esi,eax
  4005ec:	bf 68 07 40 00       	mov    edi,0x400768
  4005f1:	b8 00 00 00 00       	mov    eax,0x0
  4005f6:	e8 65 fe ff ff       	call   400460 <printf@plt>
  4005fb:	e9 8e 00 00 00       	jmp    40068e <main+0x111>
  400600:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400603:	89 c6                	mov    esi,eax
  400605:	bf 6e 07 40 00       	mov    edi,0x40076e
  40060a:	b8 00 00 00 00       	mov    eax,0x0
  40060f:	e8 4c fe ff ff       	call   400460 <printf@plt>
  400614:	eb 78                	jmp    40068e <main+0x111>
  400616:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400619:	89 c6                	mov    esi,eax
  40061b:	bf 74 07 40 00       	mov    edi,0x400774
  400620:	b8 00 00 00 00       	mov    eax,0x0
  400625:	e8 36 fe ff ff       	call   400460 <printf@plt>
  40062a:	eb 62                	jmp    40068e <main+0x111>
  40062c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40062f:	89 c6                	mov    esi,eax
  400631:	bf 7a 07 40 00       	mov    edi,0x40077a
  400636:	b8 00 00 00 00       	mov    eax,0x0
  40063b:	e8 20 fe ff ff       	call   400460 <printf@plt>
  400640:	eb 4c                	jmp    40068e <main+0x111>
  400642:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400645:	89 c6                	mov    esi,eax
  400647:	bf 80 07 40 00       	mov    edi,0x400780
  40064c:	b8 00 00 00 00       	mov    eax,0x0
  400651:	e8 0a fe ff ff       	call   400460 <printf@plt>
  400656:	eb 36                	jmp    40068e <main+0x111>
  400658:	83 7d fc 02          	cmp    DWORD PTR [rbp-0x4],0x2
  40065c:	7e 16                	jle    400674 <main+0xf7>
  40065e:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400661:	89 c6                	mov    esi,eax
  400663:	bf 86 07 40 00       	mov    edi,0x400786
  400668:	b8 00 00 00 00       	mov    eax,0x0
  40066d:	e8 ee fd ff ff       	call   400460 <printf@plt>
  400672:	eb 1a                	jmp    40068e <main+0x111>
  400674:	eb 18                	jmp    40068e <main+0x111>
  400676:	0f be 55 fb          	movsx  edx,BYTE PTR [rbp-0x5]
  40067a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40067d:	89 c6                	mov    esi,eax
  40067f:	bf 96 07 40 00       	mov    edi,0x400796
  400684:	b8 00 00 00 00       	mov    eax,0x0
  400689:	e8 d2 fd ff ff       	call   400460 <printf@plt>
  40068e:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  400692:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400696:	48 83 c0 08          	add    rax,0x8
  40069a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  40069d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4006a0:	48 98                	cdqe   
  4006a2:	48 01 d0             	add    rax,rdx
  4006a5:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006a8:	84 c0                	test   al,al
  4006aa:	0f 85 02 ff ff ff    	jne    4005b2 <main+0x35>
  4006b0:	b8 00 00 00 00       	mov    eax,0x0
  4006b5:	c9                   	leave  
  4006b6:	c3                   	ret    
  4006b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4006be:	00 00 

00000000004006c0 <__libc_csu_init>:
  4006c0:	41 57                	push   r15
  4006c2:	41 89 ff             	mov    r15d,edi
  4006c5:	41 56                	push   r14
  4006c7:	49 89 f6             	mov    r14,rsi
  4006ca:	41 55                	push   r13
  4006cc:	49 89 d5             	mov    r13,rdx
  4006cf:	41 54                	push   r12
  4006d1:	4c 8d 25 38 07 20 00 	lea    r12,[rip+0x200738]        # 600e10 <__frame_dummy_init_array_entry>
  4006d8:	55                   	push   rbp
  4006d9:	48 8d 2d 38 07 20 00 	lea    rbp,[rip+0x200738]        # 600e18 <__init_array_end>
  4006e0:	53                   	push   rbx
  4006e1:	4c 29 e5             	sub    rbp,r12
  4006e4:	31 db                	xor    ebx,ebx
  4006e6:	48 c1 fd 03          	sar    rbp,0x3
  4006ea:	48 83 ec 08          	sub    rsp,0x8
  4006ee:	e8 25 fd ff ff       	call   400418 <_init>
  4006f3:	48 85 ed             	test   rbp,rbp
  4006f6:	74 1e                	je     400716 <__libc_csu_init+0x56>
  4006f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4006ff:	00 
  400700:	4c 89 ea             	mov    rdx,r13
  400703:	4c 89 f6             	mov    rsi,r14
  400706:	44 89 ff             	mov    edi,r15d
  400709:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40070d:	48 83 c3 01          	add    rbx,0x1
  400711:	48 39 eb             	cmp    rbx,rbp
  400714:	75 ea                	jne    400700 <__libc_csu_init+0x40>
  400716:	48 83 c4 08          	add    rsp,0x8
  40071a:	5b                   	pop    rbx
  40071b:	5d                   	pop    rbp
  40071c:	41 5c                	pop    r12
  40071e:	41 5d                	pop    r13
  400720:	41 5e                	pop    r14
  400722:	41 5f                	pop    r15
  400724:	c3                   	ret    
  400725:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40072c:	00 00 00 00 

0000000000400730 <__libc_csu_fini>:
  400730:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400734 <_fini>:
  400734:	48 83 ec 08          	sub    rsp,0x8
  400738:	48 83 c4 08          	add    rsp,0x8
  40073c:	c3                   	ret    
