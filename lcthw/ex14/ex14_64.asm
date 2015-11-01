
ex14:     file format elf64-x86-64


Disassembly of section .init:

0000000000400478 <_init>:
  400478:	48 83 ec 08          	sub    rsp,0x8
  40047c:	48 8b 05 75 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b75]        # 600ff8 <_DYNAMIC+0x1d0>
  400483:	48 85 c0             	test   rax,rax
  400486:	74 05                	je     40048d <_init+0x15>
  400488:	e8 53 00 00 00       	call   4004e0 <__gmon_start__@plt>
  40048d:	48 83 c4 08          	add    rsp,0x8
  400491:	c3                   	ret    

Disassembly of section .plt:

00000000004004a0 <putchar@plt-0x10>:
  4004a0:	ff 35 62 0b 20 00    	push   QWORD PTR [rip+0x200b62]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004a6:	ff 25 64 0b 20 00    	jmp    QWORD PTR [rip+0x200b64]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004004b0 <putchar@plt>:
  4004b0:	ff 25 62 0b 20 00    	jmp    QWORD PTR [rip+0x200b62]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004b6:	68 00 00 00 00       	push   0x0
  4004bb:	e9 e0 ff ff ff       	jmp    4004a0 <_init+0x28>

00000000004004c0 <printf@plt>:
  4004c0:	ff 25 5a 0b 20 00    	jmp    QWORD PTR [rip+0x200b5a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004c6:	68 01 00 00 00       	push   0x1
  4004cb:	e9 d0 ff ff ff       	jmp    4004a0 <_init+0x28>

00000000004004d0 <__libc_start_main@plt>:
  4004d0:	ff 25 52 0b 20 00    	jmp    QWORD PTR [rip+0x200b52]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004d6:	68 02 00 00 00       	push   0x2
  4004db:	e9 c0 ff ff ff       	jmp    4004a0 <_init+0x28>

00000000004004e0 <__gmon_start__@plt>:
  4004e0:	ff 25 4a 0b 20 00    	jmp    QWORD PTR [rip+0x200b4a]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004e6:	68 03 00 00 00       	push   0x3
  4004eb:	e9 b0 ff ff ff       	jmp    4004a0 <_init+0x28>

00000000004004f0 <__ctype_b_loc@plt>:
  4004f0:	ff 25 42 0b 20 00    	jmp    QWORD PTR [rip+0x200b42]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004f6:	68 04 00 00 00       	push   0x4
  4004fb:	e9 a0 ff ff ff       	jmp    4004a0 <_init+0x28>

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	31 ed                	xor    ebp,ebp
  400502:	49 89 d1             	mov    r9,rdx
  400505:	5e                   	pop    rsi
  400506:	48 89 e2             	mov    rdx,rsp
  400509:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40050d:	50                   	push   rax
  40050e:	54                   	push   rsp
  40050f:	49 c7 c0 c0 07 40 00 	mov    r8,0x4007c0
  400516:	48 c7 c1 50 07 40 00 	mov    rcx,0x400750
  40051d:	48 c7 c7 1d 07 40 00 	mov    rdi,0x40071d
  400524:	e8 a7 ff ff ff       	call   4004d0 <__libc_start_main@plt>
  400529:	f4                   	hlt    
  40052a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400530 <deregister_tm_clones>:
  400530:	b8 57 10 60 00       	mov    eax,0x601057
  400535:	55                   	push   rbp
  400536:	48 2d 50 10 60 00    	sub    rax,0x601050
  40053c:	48 83 f8 0e          	cmp    rax,0xe
  400540:	48 89 e5             	mov    rbp,rsp
  400543:	77 02                	ja     400547 <deregister_tm_clones+0x17>
  400545:	5d                   	pop    rbp
  400546:	c3                   	ret    
  400547:	b8 00 00 00 00       	mov    eax,0x0
  40054c:	48 85 c0             	test   rax,rax
  40054f:	74 f4                	je     400545 <deregister_tm_clones+0x15>
  400551:	5d                   	pop    rbp
  400552:	bf 50 10 60 00       	mov    edi,0x601050
  400557:	ff e0                	jmp    rax
  400559:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400560 <register_tm_clones>:
  400560:	b8 50 10 60 00       	mov    eax,0x601050
  400565:	55                   	push   rbp
  400566:	48 2d 50 10 60 00    	sub    rax,0x601050
  40056c:	48 c1 f8 03          	sar    rax,0x3
  400570:	48 89 e5             	mov    rbp,rsp
  400573:	48 89 c2             	mov    rdx,rax
  400576:	48 c1 ea 3f          	shr    rdx,0x3f
  40057a:	48 01 d0             	add    rax,rdx
  40057d:	48 d1 f8             	sar    rax,1
  400580:	75 02                	jne    400584 <register_tm_clones+0x24>
  400582:	5d                   	pop    rbp
  400583:	c3                   	ret    
  400584:	ba 00 00 00 00       	mov    edx,0x0
  400589:	48 85 d2             	test   rdx,rdx
  40058c:	74 f4                	je     400582 <register_tm_clones+0x22>
  40058e:	5d                   	pop    rbp
  40058f:	48 89 c6             	mov    rsi,rax
  400592:	bf 50 10 60 00       	mov    edi,0x601050
  400597:	ff e2                	jmp    rdx
  400599:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004005a0 <__do_global_dtors_aux>:
  4005a0:	80 3d a9 0a 20 00 00 	cmp    BYTE PTR [rip+0x200aa9],0x0        # 601050 <__TMC_END__>
  4005a7:	75 11                	jne    4005ba <__do_global_dtors_aux+0x1a>
  4005a9:	55                   	push   rbp
  4005aa:	48 89 e5             	mov    rbp,rsp
  4005ad:	e8 7e ff ff ff       	call   400530 <deregister_tm_clones>
  4005b2:	5d                   	pop    rbp
  4005b3:	c6 05 96 0a 20 00 01 	mov    BYTE PTR [rip+0x200a96],0x1        # 601050 <__TMC_END__>
  4005ba:	f3 c3                	repz ret 
  4005bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005c0 <frame_dummy>:
  4005c0:	48 83 3d 58 08 20 00 	cmp    QWORD PTR [rip+0x200858],0x0        # 600e20 <__JCR_END__>
  4005c7:	00 
  4005c8:	74 1e                	je     4005e8 <frame_dummy+0x28>
  4005ca:	b8 00 00 00 00       	mov    eax,0x0
  4005cf:	48 85 c0             	test   rax,rax
  4005d2:	74 14                	je     4005e8 <frame_dummy+0x28>
  4005d4:	55                   	push   rbp
  4005d5:	bf 20 0e 60 00       	mov    edi,0x600e20
  4005da:	48 89 e5             	mov    rbp,rsp
  4005dd:	ff d0                	call   rax
  4005df:	5d                   	pop    rbp
  4005e0:	e9 7b ff ff ff       	jmp    400560 <register_tm_clones>
  4005e5:	0f 1f 00             	nop    DWORD PTR [rax]
  4005e8:	e9 73 ff ff ff       	jmp    400560 <register_tm_clones>

00000000004005ed <print_arguments>:
  4005ed:	55                   	push   rbp
  4005ee:	48 89 e5             	mov    rbp,rsp
  4005f1:	48 83 ec 20          	sub    rsp,0x20
  4005f5:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  4005f8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4005fc:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  400603:	eb 23                	jmp    400628 <print_arguments+0x3b>
  400605:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400608:	48 98                	cdqe   
  40060a:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  400611:	00 
  400612:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400616:	48 01 d0             	add    rax,rdx
  400619:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40061c:	48 89 c7             	mov    rdi,rax
  40061f:	e8 0e 00 00 00       	call   400632 <print_letters>
  400624:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  400628:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40062b:	3b 45 ec             	cmp    eax,DWORD PTR [rbp-0x14]
  40062e:	7c d5                	jl     400605 <print_arguments+0x18>
  400630:	c9                   	leave  
  400631:	c3                   	ret    

0000000000400632 <print_letters>:
  400632:	55                   	push   rbp
  400633:	48 89 e5             	mov    rbp,rsp
  400636:	48 83 ec 20          	sub    rsp,0x20
  40063a:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  40063e:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  400645:	eb 59                	jmp    4006a0 <print_letters+0x6e>
  400647:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40064a:	48 63 d0             	movsxd rdx,eax
  40064d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400651:	48 01 d0             	add    rax,rdx
  400654:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400657:	0f be c0             	movsx  eax,al
  40065a:	89 c7                	mov    edi,eax
  40065c:	e8 5f 00 00 00       	call   4006c0 <can_print_it>
  400661:	85 c0                	test   eax,eax
  400663:	74 37                	je     40069c <print_letters+0x6a>
  400665:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400668:	48 63 d0             	movsxd rdx,eax
  40066b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40066f:	48 01 d0             	add    rax,rdx
  400672:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400675:	0f be d0             	movsx  edx,al
  400678:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40067b:	48 63 c8             	movsxd rcx,eax
  40067e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400682:	48 01 c8             	add    rax,rcx
  400685:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400688:	0f be c0             	movsx  eax,al
  40068b:	89 c6                	mov    esi,eax
  40068d:	bf d4 07 40 00       	mov    edi,0x4007d4
  400692:	b8 00 00 00 00       	mov    eax,0x0
  400697:	e8 24 fe ff ff       	call   4004c0 <printf@plt>
  40069c:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  4006a0:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4006a3:	48 63 d0             	movsxd rdx,eax
  4006a6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4006aa:	48 01 d0             	add    rax,rdx
  4006ad:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006b0:	84 c0                	test   al,al
  4006b2:	75 93                	jne    400647 <print_letters+0x15>
  4006b4:	bf 0a 00 00 00       	mov    edi,0xa
  4006b9:	e8 f2 fd ff ff       	call   4004b0 <putchar@plt>
  4006be:	c9                   	leave  
  4006bf:	c3                   	ret    

00000000004006c0 <can_print_it>:
  4006c0:	55                   	push   rbp
  4006c1:	48 89 e5             	mov    rbp,rsp
  4006c4:	48 83 ec 10          	sub    rsp,0x10
  4006c8:	89 f8                	mov    eax,edi
  4006ca:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
  4006cd:	e8 1e fe ff ff       	call   4004f0 <__ctype_b_loc@plt>
  4006d2:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4006d5:	48 0f be 55 fc       	movsx  rdx,BYTE PTR [rbp-0x4]
  4006da:	48 01 d2             	add    rdx,rdx
  4006dd:	48 01 d0             	add    rax,rdx
  4006e0:	0f b7 00             	movzx  eax,WORD PTR [rax]
  4006e3:	0f b7 c0             	movzx  eax,ax
  4006e6:	25 00 04 00 00       	and    eax,0x400
  4006eb:	85 c0                	test   eax,eax
  4006ed:	75 20                	jne    40070f <can_print_it+0x4f>
  4006ef:	e8 fc fd ff ff       	call   4004f0 <__ctype_b_loc@plt>
  4006f4:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4006f7:	48 0f be 55 fc       	movsx  rdx,BYTE PTR [rbp-0x4]
  4006fc:	48 01 d2             	add    rdx,rdx
  4006ff:	48 01 d0             	add    rax,rdx
  400702:	0f b7 00             	movzx  eax,WORD PTR [rax]
  400705:	0f b7 c0             	movzx  eax,ax
  400708:	83 e0 01             	and    eax,0x1
  40070b:	85 c0                	test   eax,eax
  40070d:	74 07                	je     400716 <can_print_it+0x56>
  40070f:	b8 01 00 00 00       	mov    eax,0x1
  400714:	eb 05                	jmp    40071b <can_print_it+0x5b>
  400716:	b8 00 00 00 00       	mov    eax,0x0
  40071b:	c9                   	leave  
  40071c:	c3                   	ret    

000000000040071d <main>:
  40071d:	55                   	push   rbp
  40071e:	48 89 e5             	mov    rbp,rsp
  400721:	48 83 ec 10          	sub    rsp,0x10
  400725:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  400728:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  40072c:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  400730:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400733:	48 89 d6             	mov    rsi,rdx
  400736:	89 c7                	mov    edi,eax
  400738:	e8 b0 fe ff ff       	call   4005ed <print_arguments>
  40073d:	b8 00 00 00 00       	mov    eax,0x0
  400742:	c9                   	leave  
  400743:	c3                   	ret    
  400744:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40074b:	00 00 00 
  40074e:	66 90                	xchg   ax,ax

0000000000400750 <__libc_csu_init>:
  400750:	41 57                	push   r15
  400752:	41 89 ff             	mov    r15d,edi
  400755:	41 56                	push   r14
  400757:	49 89 f6             	mov    r14,rsi
  40075a:	41 55                	push   r13
  40075c:	49 89 d5             	mov    r13,rdx
  40075f:	41 54                	push   r12
  400761:	4c 8d 25 a8 06 20 00 	lea    r12,[rip+0x2006a8]        # 600e10 <__frame_dummy_init_array_entry>
  400768:	55                   	push   rbp
  400769:	48 8d 2d a8 06 20 00 	lea    rbp,[rip+0x2006a8]        # 600e18 <__init_array_end>
  400770:	53                   	push   rbx
  400771:	4c 29 e5             	sub    rbp,r12
  400774:	31 db                	xor    ebx,ebx
  400776:	48 c1 fd 03          	sar    rbp,0x3
  40077a:	48 83 ec 08          	sub    rsp,0x8
  40077e:	e8 f5 fc ff ff       	call   400478 <_init>
  400783:	48 85 ed             	test   rbp,rbp
  400786:	74 1e                	je     4007a6 <__libc_csu_init+0x56>
  400788:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40078f:	00 
  400790:	4c 89 ea             	mov    rdx,r13
  400793:	4c 89 f6             	mov    rsi,r14
  400796:	44 89 ff             	mov    edi,r15d
  400799:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40079d:	48 83 c3 01          	add    rbx,0x1
  4007a1:	48 39 eb             	cmp    rbx,rbp
  4007a4:	75 ea                	jne    400790 <__libc_csu_init+0x40>
  4007a6:	48 83 c4 08          	add    rsp,0x8
  4007aa:	5b                   	pop    rbx
  4007ab:	5d                   	pop    rbp
  4007ac:	41 5c                	pop    r12
  4007ae:	41 5d                	pop    r13
  4007b0:	41 5e                	pop    r14
  4007b2:	41 5f                	pop    r15
  4007b4:	c3                   	ret    
  4007b5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4007bc:	00 00 00 00 

00000000004007c0 <__libc_csu_fini>:
  4007c0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004007c4 <_fini>:
  4007c4:	48 83 ec 08          	sub    rsp,0x8
  4007c8:	48 83 c4 08          	add    rsp,0x8
  4007cc:	c3                   	ret    
