
ex12_64:     file format elf64-x86-64


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
  4004bf:	49 c7 c0 80 07 40 00 	mov    r8,0x400780
  4004c6:	48 c7 c1 10 07 40 00 	mov    rcx,0x400710
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
  4005a1:	48 83 ec 60          	sub    rsp,0x60
  4005a5:	89 7d ac             	mov    DWORD PTR [rbp-0x54],edi
  4005a8:	48 89 75 a0          	mov    QWORD PTR [rbp-0x60],rsi
  4005ac:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4005b3:	00 00 
  4005b5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4005b9:	31 c0                	xor    eax,eax
  4005bb:	c7 45 b0 0a 00 00 00 	mov    DWORD PTR [rbp-0x50],0xa
  4005c2:	c7 45 b4 0c 00 00 00 	mov    DWORD PTR [rbp-0x4c],0xc
  4005c9:	c7 45 b8 0d 00 00 00 	mov    DWORD PTR [rbp-0x48],0xd
  4005d0:	c7 45 bc 0e 00 00 00 	mov    DWORD PTR [rbp-0x44],0xe
  4005d7:	c7 45 c0 14 00 00 00 	mov    DWORD PTR [rbp-0x40],0x14
  4005de:	c7 45 d0 53 65 61 6e 	mov    DWORD PTR [rbp-0x30],0x6e616553
  4005e5:	c6 45 d4 00          	mov    BYTE PTR [rbp-0x2c],0x0
  4005e9:	c6 45 e0 53          	mov    BYTE PTR [rbp-0x20],0x53
  4005ed:	c6 45 e1 65          	mov    BYTE PTR [rbp-0x1f],0x65
  4005f1:	c6 45 e2 61          	mov    BYTE PTR [rbp-0x1e],0x61
  4005f5:	c6 45 e3 6e          	mov    BYTE PTR [rbp-0x1d],0x6e
  4005f9:	c6 45 e4 20          	mov    BYTE PTR [rbp-0x1c],0x20
  4005fd:	c6 45 e5 4d          	mov    BYTE PTR [rbp-0x1b],0x4d
  400601:	c6 45 e6 61          	mov    BYTE PTR [rbp-0x1a],0x61
  400605:	c6 45 e7 79          	mov    BYTE PTR [rbp-0x19],0x79
  400609:	c6 45 e8 66          	mov    BYTE PTR [rbp-0x18],0x66
  40060d:	c6 45 e9 69          	mov    BYTE PTR [rbp-0x17],0x69
  400611:	c6 45 ea 65          	mov    BYTE PTR [rbp-0x16],0x65
  400615:	c6 45 eb 6c          	mov    BYTE PTR [rbp-0x15],0x6c
  400619:	c6 45 ec 64          	mov    BYTE PTR [rbp-0x14],0x64
  40061d:	c6 45 ed 00          	mov    BYTE PTR [rbp-0x13],0x0
  400621:	be 04 00 00 00       	mov    esi,0x4
  400626:	bf 98 07 40 00       	mov    edi,0x400798
  40062b:	b8 00 00 00 00       	mov    eax,0x0
  400630:	e8 4b fe ff ff       	call   400480 <printf@plt>
  400635:	be 14 00 00 00       	mov    esi,0x14
  40063a:	bf b8 07 40 00       	mov    edi,0x4007b8
  40063f:	b8 00 00 00 00       	mov    eax,0x0
  400644:	e8 37 fe ff ff       	call   400480 <printf@plt>
  400649:	be 05 00 00 00       	mov    esi,0x5
  40064e:	bf d8 07 40 00       	mov    edi,0x4007d8
  400653:	b8 00 00 00 00       	mov    eax,0x0
  400658:	e8 23 fe ff ff       	call   400480 <printf@plt>
  40065d:	8b 55 b4             	mov    edx,DWORD PTR [rbp-0x4c]
  400660:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
  400663:	89 c6                	mov    esi,eax
  400665:	bf 00 08 40 00       	mov    edi,0x400800
  40066a:	b8 00 00 00 00       	mov    eax,0x0
  40066f:	e8 0c fe ff ff       	call   400480 <printf@plt>
  400674:	be 01 00 00 00       	mov    esi,0x1
  400679:	bf 22 08 40 00       	mov    edi,0x400822
  40067e:	b8 00 00 00 00       	mov    eax,0x0
  400683:	e8 f8 fd ff ff       	call   400480 <printf@plt>
  400688:	be 05 00 00 00       	mov    esi,0x5
  40068d:	bf 40 08 40 00       	mov    edi,0x400840
  400692:	b8 00 00 00 00       	mov    eax,0x0
  400697:	e8 e4 fd ff ff       	call   400480 <printf@plt>
  40069c:	be 05 00 00 00       	mov    esi,0x5
  4006a1:	bf 5f 08 40 00       	mov    edi,0x40085f
  4006a6:	b8 00 00 00 00       	mov    eax,0x0
  4006ab:	e8 d0 fd ff ff       	call   400480 <printf@plt>
  4006b0:	be 0e 00 00 00       	mov    esi,0xe
  4006b5:	bf 78 08 40 00       	mov    edi,0x400878
  4006ba:	b8 00 00 00 00       	mov    eax,0x0
  4006bf:	e8 bc fd ff ff       	call   400480 <printf@plt>
  4006c4:	be 0e 00 00 00       	mov    esi,0xe
  4006c9:	bf 9d 08 40 00       	mov    edi,0x40089d
  4006ce:	b8 00 00 00 00       	mov    eax,0x0
  4006d3:	e8 a8 fd ff ff       	call   400480 <printf@plt>
  4006d8:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
  4006dc:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4006e0:	48 89 c6             	mov    rsi,rax
  4006e3:	bf b7 08 40 00       	mov    edi,0x4008b7
  4006e8:	b8 00 00 00 00       	mov    eax,0x0
  4006ed:	e8 8e fd ff ff       	call   400480 <printf@plt>
  4006f2:	b8 00 00 00 00       	mov    eax,0x0
  4006f7:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  4006fb:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  400702:	00 00 
  400704:	74 05                	je     40070b <main+0x16e>
  400706:	e8 65 fd ff ff       	call   400470 <__stack_chk_fail@plt>
  40070b:	c9                   	leave  
  40070c:	c3                   	ret    
  40070d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000400710 <__libc_csu_init>:
  400710:	41 57                	push   r15
  400712:	41 89 ff             	mov    r15d,edi
  400715:	41 56                	push   r14
  400717:	49 89 f6             	mov    r14,rsi
  40071a:	41 55                	push   r13
  40071c:	49 89 d5             	mov    r13,rdx
  40071f:	41 54                	push   r12
  400721:	4c 8d 25 e8 06 20 00 	lea    r12,[rip+0x2006e8]        # 600e10 <__frame_dummy_init_array_entry>
  400728:	55                   	push   rbp
  400729:	48 8d 2d e8 06 20 00 	lea    rbp,[rip+0x2006e8]        # 600e18 <__init_array_end>
  400730:	53                   	push   rbx
  400731:	4c 29 e5             	sub    rbp,r12
  400734:	31 db                	xor    ebx,ebx
  400736:	48 c1 fd 03          	sar    rbp,0x3
  40073a:	48 83 ec 08          	sub    rsp,0x8
  40073e:	e8 fd fc ff ff       	call   400440 <_init>
  400743:	48 85 ed             	test   rbp,rbp
  400746:	74 1e                	je     400766 <__libc_csu_init+0x56>
  400748:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40074f:	00 
  400750:	4c 89 ea             	mov    rdx,r13
  400753:	4c 89 f6             	mov    rsi,r14
  400756:	44 89 ff             	mov    edi,r15d
  400759:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40075d:	48 83 c3 01          	add    rbx,0x1
  400761:	48 39 eb             	cmp    rbx,rbp
  400764:	75 ea                	jne    400750 <__libc_csu_init+0x40>
  400766:	48 83 c4 08          	add    rsp,0x8
  40076a:	5b                   	pop    rbx
  40076b:	5d                   	pop    rbp
  40076c:	41 5c                	pop    r12
  40076e:	41 5d                	pop    r13
  400770:	41 5e                	pop    r14
  400772:	41 5f                	pop    r15
  400774:	c3                   	ret    
  400775:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40077c:	00 00 00 00 

0000000000400780 <__libc_csu_fini>:
  400780:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400784 <_fini>:
  400784:	48 83 ec 08          	sub    rsp,0x8
  400788:	48 83 c4 08          	add    rsp,0x8
  40078c:	c3                   	ret    
