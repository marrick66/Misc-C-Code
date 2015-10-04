
ex7:     file format elf64-x86-64


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
  4004bf:	49 c7 c0 b0 08 40 00 	mov    r8,0x4008b0
  4004c6:	48 c7 c1 40 08 40 00 	mov    rcx,0x400840
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
  4005a2:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
  4005a9:	89 bd 6c ff ff ff    	mov    DWORD PTR [rbp-0x94],edi
  4005af:	48 89 b5 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rsi
  4005b6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4005bd:	00 00 
  4005bf:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4005c3:	31 c0                	xor    eax,eax
  4005c5:	c7 45 80 64 00 00 00 	mov    DWORD PTR [rbp-0x80],0x64
  4005cc:	8b 05 0e 05 00 00    	mov    eax,DWORD PTR [rip+0x50e]        # 400ae0 <_IO_stdin_used+0x220>
  4005d2:	89 45 84             	mov    DWORD PTR [rbp-0x7c],eax
  4005d5:	48 b8 52 49 9d 80 ae 	movabs rax,0x40ebbaae809d4952
  4005dc:	ba eb 40 
  4005df:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  4005e3:	c6 85 7e ff ff ff 44 	mov    BYTE PTR [rbp-0x82],0x44
  4005ea:	c7 45 c0 53 65 61 6e 	mov    DWORD PTR [rbp-0x40],0x6e616553
  4005f1:	c6 45 c4 00          	mov    BYTE PTR [rbp-0x3c],0x0
  4005f5:	48 b8 4d 61 79 66 69 	movabs rax,0x646c65696679614d
  4005fc:	65 6c 64 
  4005ff:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  400603:	c6 45 d8 00          	mov    BYTE PTR [rbp-0x28],0x0
  400607:	8b 45 80             	mov    eax,DWORD PTR [rbp-0x80]
  40060a:	89 c6                	mov    esi,eax
  40060c:	bf c8 08 40 00       	mov    edi,0x4008c8
  400611:	b8 00 00 00 00       	mov    eax,0x0
  400616:	e8 65 fe ff ff       	call   400480 <printf@plt>
  40061b:	f3 0f 10 45 84       	movss  xmm0,DWORD PTR [rbp-0x7c]
  400620:	0f 5a c0             	cvtps2pd xmm0,xmm0
  400623:	bf e0 08 40 00       	mov    edi,0x4008e0
  400628:	b8 01 00 00 00       	mov    eax,0x1
  40062d:	e8 4e fe ff ff       	call   400480 <printf@plt>
  400632:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  400636:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  40063d:	f2 0f 10 85 58 ff ff 	movsd  xmm0,QWORD PTR [rbp-0xa8]
  400644:	ff 
  400645:	bf fe 08 40 00       	mov    edi,0x4008fe
  40064a:	b8 01 00 00 00       	mov    eax,0x1
  40064f:	e8 2c fe ff ff       	call   400480 <printf@plt>
  400654:	0f be 85 7e ff ff ff 	movsx  eax,BYTE PTR [rbp-0x82]
  40065b:	89 c6                	mov    esi,eax
  40065d:	bf 19 09 40 00       	mov    edi,0x400919
  400662:	b8 00 00 00 00       	mov    eax,0x0
  400667:	e8 14 fe ff ff       	call   400480 <printf@plt>
  40066c:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  400670:	48 89 c6             	mov    rsi,rax
  400673:	bf 30 09 40 00       	mov    edi,0x400930
  400678:	b8 00 00 00 00       	mov    eax,0x0
  40067d:	e8 fe fd ff ff       	call   400480 <printf@plt>
  400682:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  400686:	48 89 c6             	mov    rsi,rax
  400689:	bf 48 09 40 00       	mov    edi,0x400948
  40068e:	b8 00 00 00 00       	mov    eax,0x0
  400693:	e8 e8 fd ff ff       	call   400480 <printf@plt>
  400698:	0f be 95 7e ff ff ff 	movsx  edx,BYTE PTR [rbp-0x82]
  40069f:	48 8d 4d d0          	lea    rcx,[rbp-0x30]
  4006a3:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4006a7:	48 89 c6             	mov    rsi,rax
  4006aa:	bf 5f 09 40 00       	mov    edi,0x40095f
  4006af:	b8 00 00 00 00       	mov    eax,0x0
  4006b4:	e8 c7 fd ff ff       	call   400480 <printf@plt>
  4006b9:	c7 45 88 64 00 00 00 	mov    DWORD PTR [rbp-0x78],0x64
  4006c0:	48 b8 33 33 33 33 33 	movabs rax,0x3ff3333333333333
  4006c7:	33 f3 3f 
  4006ca:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  4006ce:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  4006d2:	8b 55 88             	mov    edx,DWORD PTR [rbp-0x78]
  4006d5:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  4006dc:	f2 0f 10 85 58 ff ff 	movsd  xmm0,QWORD PTR [rbp-0xa8]
  4006e3:	ff 
  4006e4:	89 d6                	mov    esi,edx
  4006e6:	bf 80 09 40 00       	mov    edi,0x400980
  4006eb:	b8 01 00 00 00       	mov    eax,0x1
  4006f0:	e8 8b fd ff ff       	call   400480 <printf@plt>
  4006f5:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x40000000
  4006fc:	40 
  4006fd:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  400701:	48 89 c6             	mov    rsi,rax
  400704:	bf b0 09 40 00       	mov    edi,0x4009b0
  400709:	b8 00 00 00 00       	mov    eax,0x0
  40070e:	e8 6d fd ff ff       	call   400480 <printf@plt>
  400713:	f2 0f 2a 45 88       	cvtsi2sd xmm0,DWORD PTR [rbp-0x78]
  400718:	f2 0f 59 45 a0       	mulsd  xmm0,QWORD PTR [rbp-0x60]
  40071d:	f2 0f 11 45 b0       	movsd  QWORD PTR [rbp-0x50],xmm0
  400722:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  400726:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  40072d:	f2 0f 10 85 58 ff ff 	movsd  xmm0,QWORD PTR [rbp-0xa8]
  400734:	ff 
  400735:	bf d8 09 40 00       	mov    edi,0x4009d8
  40073a:	b8 01 00 00 00       	mov    eax,0x1
  40073f:	e8 3c fd ff ff       	call   400480 <printf@plt>
  400744:	f2 48 0f 2a 45 a8    	cvtsi2sd xmm0,QWORD PTR [rbp-0x58]
  40074a:	f2 0f 10 4d b0       	movsd  xmm1,QWORD PTR [rbp-0x50]
  40074f:	f2 0f 5e c8          	divsd  xmm1,xmm0
  400753:	66 0f 28 c1          	movapd xmm0,xmm1
  400757:	f2 0f 11 45 b8       	movsd  QWORD PTR [rbp-0x48],xmm0
  40075c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400760:	48 89 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rax
  400767:	f2 0f 10 85 58 ff ff 	movsd  xmm0,QWORD PTR [rbp-0xa8]
  40076e:	ff 
  40076f:	bf 00 0a 40 00       	mov    edi,0x400a00
  400774:	b8 01 00 00 00       	mov    eax,0x1
  400779:	e8 02 fd ff ff       	call   400480 <printf@plt>
  40077e:	c6 85 7f ff ff ff 00 	mov    BYTE PTR [rbp-0x81],0x0
  400785:	0f be 85 7f ff ff ff 	movsx  eax,BYTE PTR [rbp-0x81]
  40078c:	0f af 45 88          	imul   eax,DWORD PTR [rbp-0x78]
  400790:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
  400793:	8b 45 8c             	mov    eax,DWORD PTR [rbp-0x74]
  400796:	89 c6                	mov    esi,eax
  400798:	bf 30 0a 40 00       	mov    edi,0x400a30
  40079d:	b8 00 00 00 00       	mov    eax,0x0
  4007a2:	e8 d9 fc ff ff       	call   400480 <printf@plt>
  4007a7:	be ff ff ff 7f       	mov    esi,0x7fffffff
  4007ac:	bf 53 0a 40 00       	mov    edi,0x400a53
  4007b1:	b8 00 00 00 00       	mov    eax,0x0
  4007b6:	e8 c5 fc ff ff       	call   400480 <printf@plt>
  4007bb:	be 00 00 00 80       	mov    esi,0x80000000
  4007c0:	bf 6f 0a 40 00       	mov    edi,0x400a6f
  4007c5:	b8 00 00 00 00       	mov    eax,0x0
  4007ca:	e8 b1 fc ff ff       	call   400480 <printf@plt>
  4007cf:	be ff ff ff ff       	mov    esi,0xffffffff
  4007d4:	bf 90 0a 40 00       	mov    edi,0x400a90
  4007d9:	b8 00 00 00 00       	mov    eax,0x0
  4007de:	e8 9d fc ff ff       	call   400480 <printf@plt>
  4007e3:	c7 45 90 ff ff ff 7f 	mov    DWORD PTR [rbp-0x70],0x7fffffff
  4007ea:	c7 45 94 01 00 00 00 	mov    DWORD PTR [rbp-0x6c],0x1
  4007f1:	8b 45 94             	mov    eax,DWORD PTR [rbp-0x6c]
  4007f4:	8b 55 90             	mov    edx,DWORD PTR [rbp-0x70]
  4007f7:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  4007fa:	8b 55 94             	mov    edx,DWORD PTR [rbp-0x6c]
  4007fd:	8b 45 90             	mov    eax,DWORD PTR [rbp-0x70]
  400800:	89 c6                	mov    esi,eax
  400802:	bf b8 0a 40 00       	mov    edi,0x400ab8
  400807:	b8 00 00 00 00       	mov    eax,0x0
  40080c:	e8 6f fc ff ff       	call   400480 <printf@plt>
  400811:	b8 00 00 00 00       	mov    eax,0x0
  400816:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  40081a:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  400821:	00 00 
  400823:	74 05                	je     40082a <main+0x28d>
  400825:	e8 46 fc ff ff       	call   400470 <__stack_chk_fail@plt>
  40082a:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
  400831:	5b                   	pop    rbx
  400832:	5d                   	pop    rbp
  400833:	c3                   	ret    
  400834:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40083b:	00 00 00 
  40083e:	66 90                	xchg   ax,ax

0000000000400840 <__libc_csu_init>:
  400840:	41 57                	push   r15
  400842:	41 89 ff             	mov    r15d,edi
  400845:	41 56                	push   r14
  400847:	49 89 f6             	mov    r14,rsi
  40084a:	41 55                	push   r13
  40084c:	49 89 d5             	mov    r13,rdx
  40084f:	41 54                	push   r12
  400851:	4c 8d 25 b8 05 20 00 	lea    r12,[rip+0x2005b8]        # 600e10 <__frame_dummy_init_array_entry>
  400858:	55                   	push   rbp
  400859:	48 8d 2d b8 05 20 00 	lea    rbp,[rip+0x2005b8]        # 600e18 <__init_array_end>
  400860:	53                   	push   rbx
  400861:	4c 29 e5             	sub    rbp,r12
  400864:	31 db                	xor    ebx,ebx
  400866:	48 c1 fd 03          	sar    rbp,0x3
  40086a:	48 83 ec 08          	sub    rsp,0x8
  40086e:	e8 cd fb ff ff       	call   400440 <_init>
  400873:	48 85 ed             	test   rbp,rbp
  400876:	74 1e                	je     400896 <__libc_csu_init+0x56>
  400878:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40087f:	00 
  400880:	4c 89 ea             	mov    rdx,r13
  400883:	4c 89 f6             	mov    rsi,r14
  400886:	44 89 ff             	mov    edi,r15d
  400889:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40088d:	48 83 c3 01          	add    rbx,0x1
  400891:	48 39 eb             	cmp    rbx,rbp
  400894:	75 ea                	jne    400880 <__libc_csu_init+0x40>
  400896:	48 83 c4 08          	add    rsp,0x8
  40089a:	5b                   	pop    rbx
  40089b:	5d                   	pop    rbp
  40089c:	41 5c                	pop    r12
  40089e:	41 5d                	pop    r13
  4008a0:	41 5e                	pop    r14
  4008a2:	41 5f                	pop    r15
  4008a4:	c3                   	ret    
  4008a5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4008ac:	00 00 00 00 

00000000004008b0 <__libc_csu_fini>:
  4008b0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004008b4 <_fini>:
  4008b4:	48 83 ec 08          	sub    rsp,0x8
  4008b8:	48 83 c4 08          	add    rsp,0x8
  4008bc:	c3                   	ret    
