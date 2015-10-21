
ex11:     file format elf64-x86-64


Disassembly of section .init:

0000000000400440 <_init>:
  400440:	48 83 ec 08          	sub    rsp,0x8
  400444:	48 8b 05 ad 0b 20 00 	mov    rax,QWORD PTR [rip+0x200bad]        # 600ff8 <_DYNAMIC+0x1d0>
  40044b:	48 85 c0             	test   rax,rax
  40044e:	74 05                	je     400455 <_init+0x15>
  400450:	e8 4b 00 00 00       	call   4004a0 <__gmon_start__@plt>
  400455:	48 83 c4 08          	add    rsp,0x8
  400459:	c3                   	ret    

Disassembly of section .plt:

0000000000400460 <__stack_chk_fail@plt-0x10>:
  400460:	ff 35 a2 0b 20 00    	push   QWORD PTR [rip+0x200ba2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400466:	ff 25 a4 0b 20 00    	jmp    QWORD PTR [rip+0x200ba4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40046c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400470 <__stack_chk_fail@plt>:
  400470:	ff 25 a2 0b 20 00    	jmp    QWORD PTR [rip+0x200ba2]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400476:	68 00 00 00 00       	push   0x0
  40047b:	e9 e0 ff ff ff       	jmp    400460 <_init+0x20>

0000000000400480 <printf@plt>:
  400480:	ff 25 9a 0b 20 00    	jmp    QWORD PTR [rip+0x200b9a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400486:	68 01 00 00 00       	push   0x1
  40048b:	e9 d0 ff ff ff       	jmp    400460 <_init+0x20>

0000000000400490 <__libc_start_main@plt>:
  400490:	ff 25 92 0b 20 00    	jmp    QWORD PTR [rip+0x200b92]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400496:	68 02 00 00 00       	push   0x2
  40049b:	e9 c0 ff ff ff       	jmp    400460 <_init+0x20>

00000000004004a0 <__gmon_start__@plt>:
  4004a0:	ff 25 8a 0b 20 00    	jmp    QWORD PTR [rip+0x200b8a]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004a6:	68 03 00 00 00       	push   0x3
  4004ab:	e9 b0 ff ff ff       	jmp    400460 <_init+0x20>

Disassembly of section .text:

00000000004004b0 <_start>:
  4004b0:	31 ed                	xor    ebp,ebp
  4004b2:	49 89 d1             	mov    r9,rdx
  4004b5:	5e                   	pop    rsi
  4004b6:	48 89 e2             	mov    rdx,rsp
  4004b9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4004bd:	50                   	push   rax
  4004be:	54                   	push   rsp
  4004bf:	49 c7 c0 d0 07 40 00 	mov    r8,0x4007d0
  4004c6:	48 c7 c1 60 07 40 00 	mov    rcx,0x400760
  4004cd:	48 c7 c7 9d 05 40 00 	mov    rdi,0x40059d
  4004d4:	e8 b7 ff ff ff       	call   400490 <__libc_start_main@plt>
  4004d9:	f4                   	hlt    
  4004da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004004e0 <deregister_tm_clones>:
  4004e0:	b8 4f 10 60 00       	mov    eax,0x60104f
  4004e5:	55                   	push   rbp
  4004e6:	48 2d 48 10 60 00    	sub    rax,0x601048
  4004ec:	48 83 f8 0e          	cmp    rax,0xe
  4004f0:	48 89 e5             	mov    rbp,rsp
  4004f3:	77 02                	ja     4004f7 <deregister_tm_clones+0x17>
  4004f5:	5d                   	pop    rbp
  4004f6:	c3                   	ret    
  4004f7:	b8 00 00 00 00       	mov    eax,0x0
  4004fc:	48 85 c0             	test   rax,rax
  4004ff:	74 f4                	je     4004f5 <deregister_tm_clones+0x15>
  400501:	5d                   	pop    rbp
  400502:	bf 48 10 60 00       	mov    edi,0x601048
  400507:	ff e0                	jmp    rax
  400509:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400510 <register_tm_clones>:
  400510:	b8 48 10 60 00       	mov    eax,0x601048
  400515:	55                   	push   rbp
  400516:	48 2d 48 10 60 00    	sub    rax,0x601048
  40051c:	48 c1 f8 03          	sar    rax,0x3
  400520:	48 89 e5             	mov    rbp,rsp
  400523:	48 89 c2             	mov    rdx,rax
  400526:	48 c1 ea 3f          	shr    rdx,0x3f
  40052a:	48 01 d0             	add    rax,rdx
  40052d:	48 d1 f8             	sar    rax,1
  400530:	75 02                	jne    400534 <register_tm_clones+0x24>
  400532:	5d                   	pop    rbp
  400533:	c3                   	ret    
  400534:	ba 00 00 00 00       	mov    edx,0x0
  400539:	48 85 d2             	test   rdx,rdx
  40053c:	74 f4                	je     400532 <register_tm_clones+0x22>
  40053e:	5d                   	pop    rbp
  40053f:	48 89 c6             	mov    rsi,rax
  400542:	bf 48 10 60 00       	mov    edi,0x601048
  400547:	ff e2                	jmp    rdx
  400549:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400550 <__do_global_dtors_aux>:
  400550:	80 3d f1 0a 20 00 00 	cmp    BYTE PTR [rip+0x200af1],0x0        # 601048 <__TMC_END__>
  400557:	75 11                	jne    40056a <__do_global_dtors_aux+0x1a>
  400559:	55                   	push   rbp
  40055a:	48 89 e5             	mov    rbp,rsp
  40055d:	e8 7e ff ff ff       	call   4004e0 <deregister_tm_clones>
  400562:	5d                   	pop    rbp
  400563:	c6 05 de 0a 20 00 01 	mov    BYTE PTR [rip+0x200ade],0x1        # 601048 <__TMC_END__>
  40056a:	f3 c3                	repz ret 
  40056c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400570 <frame_dummy>:
  400570:	48 83 3d a8 08 20 00 	cmp    QWORD PTR [rip+0x2008a8],0x0        # 600e20 <__JCR_END__>
  400577:	00 
  400578:	74 1e                	je     400598 <frame_dummy+0x28>
  40057a:	b8 00 00 00 00       	mov    eax,0x0
  40057f:	48 85 c0             	test   rax,rax
  400582:	74 14                	je     400598 <frame_dummy+0x28>
  400584:	55                   	push   rbp
  400585:	bf 20 0e 60 00       	mov    edi,0x600e20
  40058a:	48 89 e5             	mov    rbp,rsp
  40058d:	ff d0                	call   rax
  40058f:	5d                   	pop    rbp
  400590:	e9 7b ff ff ff       	jmp    400510 <register_tm_clones>
  400595:	0f 1f 00             	nop    DWORD PTR [rax]
  400598:	e9 73 ff ff ff       	jmp    400510 <register_tm_clones>

000000000040059d <main>:
  40059d:	55                   	push   rbp
  40059e:	48 89 e5             	mov    rbp,rsp
  4005a1:	53                   	push   rbx
  4005a2:	48 83 ec 48          	sub    rsp,0x48
  4005a6:	89 7d bc             	mov    DWORD PTR [rbp-0x44],edi
  4005a9:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
  4005ad:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4005b4:	00 00 
  4005b6:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4005ba:	31 c0                	xor    eax,eax
  4005bc:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  4005c3:	00 
  4005c4:	48 c7 45 d8 00 00 00 	mov    QWORD PTR [rbp-0x28],0x0
  4005cb:	00 
  4005cc:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0
  4005d3:	c6 45 e0 61          	mov    BYTE PTR [rbp-0x20],0x61
  4005d7:	8b 75 dc             	mov    esi,DWORD PTR [rbp-0x24]
  4005da:	8b 4d d8             	mov    ecx,DWORD PTR [rbp-0x28]
  4005dd:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  4005e0:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  4005e3:	41 89 f0             	mov    r8d,esi
  4005e6:	89 c6                	mov    esi,eax
  4005e8:	bf e8 07 40 00       	mov    edi,0x4007e8
  4005ed:	b8 00 00 00 00       	mov    eax,0x0
  4005f2:	e8 89 fe ff ff       	call   400480 <printf@plt>
  4005f7:	0f b6 45 e3          	movzx  eax,BYTE PTR [rbp-0x1d]
  4005fb:	0f be f0             	movsx  esi,al
  4005fe:	0f b6 45 e2          	movzx  eax,BYTE PTR [rbp-0x1e]
  400602:	0f be c8             	movsx  ecx,al
  400605:	0f b6 45 e1          	movzx  eax,BYTE PTR [rbp-0x1f]
  400609:	0f be d0             	movsx  edx,al
  40060c:	0f b6 45 e0          	movzx  eax,BYTE PTR [rbp-0x20]
  400610:	0f be c0             	movsx  eax,al
  400613:	41 89 f0             	mov    r8d,esi
  400616:	89 c6                	mov    esi,eax
  400618:	bf fe 07 40 00       	mov    edi,0x4007fe
  40061d:	b8 00 00 00 00       	mov    eax,0x0
  400622:	e8 59 fe ff ff       	call   400480 <printf@plt>
  400627:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  40062b:	48 89 c6             	mov    rsi,rax
  40062e:	bf 16 08 40 00       	mov    edi,0x400816
  400633:	b8 00 00 00 00       	mov    eax,0x0
  400638:	e8 43 fe ff ff       	call   400480 <printf@plt>
  40063d:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [rbp-0x30],0x1
  400644:	c7 45 d4 02 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x2
  40064b:	c7 45 d8 03 00 00 00 	mov    DWORD PTR [rbp-0x28],0x3
  400652:	c7 45 dc 04 00 00 00 	mov    DWORD PTR [rbp-0x24],0x4
  400659:	c6 45 e0 5a          	mov    BYTE PTR [rbp-0x20],0x5a
  40065d:	c6 45 e1 65          	mov    BYTE PTR [rbp-0x1f],0x65
  400661:	c6 45 e2 64          	mov    BYTE PTR [rbp-0x1e],0x64
  400665:	c6 45 e3 00          	mov    BYTE PTR [rbp-0x1d],0x0
  400669:	8b 75 dc             	mov    esi,DWORD PTR [rbp-0x24]
  40066c:	8b 4d d8             	mov    ecx,DWORD PTR [rbp-0x28]
  40066f:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  400672:	8b 45 d0             	mov    eax,DWORD PTR [rbp-0x30]
  400675:	41 89 f0             	mov    r8d,esi
  400678:	89 c6                	mov    esi,eax
  40067a:	bf 20 08 40 00       	mov    edi,0x400820
  40067f:	b8 00 00 00 00       	mov    eax,0x0
  400684:	e8 f7 fd ff ff       	call   400480 <printf@plt>
  400689:	0f b6 45 e3          	movzx  eax,BYTE PTR [rbp-0x1d]
  40068d:	0f be f0             	movsx  esi,al
  400690:	0f b6 45 e2          	movzx  eax,BYTE PTR [rbp-0x1e]
  400694:	0f be c8             	movsx  ecx,al
  400697:	0f b6 45 e1          	movzx  eax,BYTE PTR [rbp-0x1f]
  40069b:	0f be d0             	movsx  edx,al
  40069e:	0f b6 45 e0          	movzx  eax,BYTE PTR [rbp-0x20]
  4006a2:	0f be c0             	movsx  eax,al
  4006a5:	41 89 f0             	mov    r8d,esi
  4006a8:	89 c6                	mov    esi,eax
  4006aa:	bf fe 07 40 00       	mov    edi,0x4007fe
  4006af:	b8 00 00 00 00       	mov    eax,0x0
  4006b4:	e8 c7 fd ff ff       	call   400480 <printf@plt>
  4006b9:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4006bd:	48 89 c6             	mov    rsi,rax
  4006c0:	bf 16 08 40 00       	mov    edi,0x400816
  4006c5:	b8 00 00 00 00       	mov    eax,0x0
  4006ca:	e8 b1 fd ff ff       	call   400480 <printf@plt>
  4006cf:	48 c7 45 c8 35 08 40 	mov    QWORD PTR [rbp-0x38],0x400835
  4006d6:	00 
  4006d7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4006db:	48 83 c0 03          	add    rax,0x3
  4006df:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006e2:	0f be f0             	movsx  esi,al
  4006e5:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4006e9:	48 83 c0 02          	add    rax,0x2
  4006ed:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006f0:	0f be c8             	movsx  ecx,al
  4006f3:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4006f7:	48 83 c0 01          	add    rax,0x1
  4006fb:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4006fe:	0f be d0             	movsx  edx,al
  400701:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400705:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400708:	0f be c0             	movsx  eax,al
  40070b:	41 89 f0             	mov    r8d,esi
  40070e:	89 c6                	mov    esi,eax
  400710:	bf 40 08 40 00       	mov    edi,0x400840
  400715:	b8 00 00 00 00       	mov    eax,0x0
  40071a:	e8 61 fd ff ff       	call   400480 <printf@plt>
  40071f:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  400723:	48 89 c6             	mov    rsi,rax
  400726:	bf 5f 08 40 00       	mov    edi,0x40085f
  40072b:	b8 00 00 00 00       	mov    eax,0x0
  400730:	e8 4b fd ff ff       	call   400480 <printf@plt>
  400735:	b8 00 00 00 00       	mov    eax,0x0
  40073a:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  40073e:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  400745:	00 00 
  400747:	74 05                	je     40074e <main+0x1b1>
  400749:	e8 22 fd ff ff       	call   400470 <__stack_chk_fail@plt>
  40074e:	48 83 c4 48          	add    rsp,0x48
  400752:	5b                   	pop    rbx
  400753:	5d                   	pop    rbp
  400754:	c3                   	ret    
  400755:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40075c:	00 00 00 
  40075f:	90                   	nop

0000000000400760 <__libc_csu_init>:
  400760:	41 57                	push   r15
  400762:	41 89 ff             	mov    r15d,edi
  400765:	41 56                	push   r14
  400767:	49 89 f6             	mov    r14,rsi
  40076a:	41 55                	push   r13
  40076c:	49 89 d5             	mov    r13,rdx
  40076f:	41 54                	push   r12
  400771:	4c 8d 25 98 06 20 00 	lea    r12,[rip+0x200698]        # 600e10 <__frame_dummy_init_array_entry>
  400778:	55                   	push   rbp
  400779:	48 8d 2d 98 06 20 00 	lea    rbp,[rip+0x200698]        # 600e18 <__init_array_end>
  400780:	53                   	push   rbx
  400781:	4c 29 e5             	sub    rbp,r12
  400784:	31 db                	xor    ebx,ebx
  400786:	48 c1 fd 03          	sar    rbp,0x3
  40078a:	48 83 ec 08          	sub    rsp,0x8
  40078e:	e8 ad fc ff ff       	call   400440 <_init>
  400793:	48 85 ed             	test   rbp,rbp
  400796:	74 1e                	je     4007b6 <__libc_csu_init+0x56>
  400798:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40079f:	00 
  4007a0:	4c 89 ea             	mov    rdx,r13
  4007a3:	4c 89 f6             	mov    rsi,r14
  4007a6:	44 89 ff             	mov    edi,r15d
  4007a9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4007ad:	48 83 c3 01          	add    rbx,0x1
  4007b1:	48 39 eb             	cmp    rbx,rbp
  4007b4:	75 ea                	jne    4007a0 <__libc_csu_init+0x40>
  4007b6:	48 83 c4 08          	add    rsp,0x8
  4007ba:	5b                   	pop    rbx
  4007bb:	5d                   	pop    rbp
  4007bc:	41 5c                	pop    r12
  4007be:	41 5d                	pop    r13
  4007c0:	41 5e                	pop    r14
  4007c2:	41 5f                	pop    r15
  4007c4:	c3                   	ret    
  4007c5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4007cc:	00 00 00 00 

00000000004007d0 <__libc_csu_fini>:
  4007d0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004007d4 <_fini>:
  4007d4:	48 83 ec 08          	sub    rsp,0x8
  4007d8:	48 83 c4 08          	add    rsp,0x8
  4007dc:	c3                   	ret    
