
ex16:     file format elf64-x86-64


Disassembly of section .init:

00000000004004c8 <_init>:
  4004c8:	48 83 ec 08          	sub    rsp,0x8
  4004cc:	48 8b 05 25 0b 20 00 	mov    rax,QWORD PTR [rip+0x200b25]        # 600ff8 <_DYNAMIC+0x1d0>
  4004d3:	48 85 c0             	test   rax,rax
  4004d6:	74 05                	je     4004dd <_init+0x15>
  4004d8:	e8 63 00 00 00       	call   400540 <__gmon_start__@plt>
  4004dd:	48 83 c4 08          	add    rsp,0x8
  4004e1:	c3                   	ret    

Disassembly of section .plt:

00000000004004f0 <free@plt-0x10>:
  4004f0:	ff 35 12 0b 20 00    	push   QWORD PTR [rip+0x200b12]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004f6:	ff 25 14 0b 20 00    	jmp    QWORD PTR [rip+0x200b14]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400500 <free@plt>:
  400500:	ff 25 12 0b 20 00    	jmp    QWORD PTR [rip+0x200b12]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400506:	68 00 00 00 00       	push   0x0
  40050b:	e9 e0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400510 <printf@plt>:
  400510:	ff 25 0a 0b 20 00    	jmp    QWORD PTR [rip+0x200b0a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400516:	68 01 00 00 00       	push   0x1
  40051b:	e9 d0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400520 <__assert_fail@plt>:
  400520:	ff 25 02 0b 20 00    	jmp    QWORD PTR [rip+0x200b02]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400526:	68 02 00 00 00       	push   0x2
  40052b:	e9 c0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400530 <__libc_start_main@plt>:
  400530:	ff 25 fa 0a 20 00    	jmp    QWORD PTR [rip+0x200afa]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400536:	68 03 00 00 00       	push   0x3
  40053b:	e9 b0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400540 <__gmon_start__@plt>:
  400540:	ff 25 f2 0a 20 00    	jmp    QWORD PTR [rip+0x200af2]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400546:	68 04 00 00 00       	push   0x4
  40054b:	e9 a0 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400550 <malloc@plt>:
  400550:	ff 25 ea 0a 20 00    	jmp    QWORD PTR [rip+0x200aea]        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400556:	68 05 00 00 00       	push   0x5
  40055b:	e9 90 ff ff ff       	jmp    4004f0 <_init+0x28>

0000000000400560 <strdup@plt>:
  400560:	ff 25 e2 0a 20 00    	jmp    QWORD PTR [rip+0x200ae2]        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400566:	68 06 00 00 00       	push   0x6
  40056b:	e9 80 ff ff ff       	jmp    4004f0 <_init+0x28>

Disassembly of section .text:

0000000000400570 <_start>:
  400570:	31 ed                	xor    ebp,ebp
  400572:	49 89 d1             	mov    r9,rdx
  400575:	5e                   	pop    rsi
  400576:	48 89 e2             	mov    rdx,rsp
  400579:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40057d:	50                   	push   rax
  40057e:	54                   	push   rsp
  40057f:	49 c7 c0 30 09 40 00 	mov    r8,0x400930
  400586:	48 c7 c1 c0 08 40 00 	mov    rcx,0x4008c0
  40058d:	48 c7 c7 99 07 40 00 	mov    rdi,0x400799
  400594:	e8 97 ff ff ff       	call   400530 <__libc_start_main@plt>
  400599:	f4                   	hlt    
  40059a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004005a0 <deregister_tm_clones>:
  4005a0:	b8 67 10 60 00       	mov    eax,0x601067
  4005a5:	55                   	push   rbp
  4005a6:	48 2d 60 10 60 00    	sub    rax,0x601060
  4005ac:	48 83 f8 0e          	cmp    rax,0xe
  4005b0:	48 89 e5             	mov    rbp,rsp
  4005b3:	77 02                	ja     4005b7 <deregister_tm_clones+0x17>
  4005b5:	5d                   	pop    rbp
  4005b6:	c3                   	ret    
  4005b7:	b8 00 00 00 00       	mov    eax,0x0
  4005bc:	48 85 c0             	test   rax,rax
  4005bf:	74 f4                	je     4005b5 <deregister_tm_clones+0x15>
  4005c1:	5d                   	pop    rbp
  4005c2:	bf 60 10 60 00       	mov    edi,0x601060
  4005c7:	ff e0                	jmp    rax
  4005c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004005d0 <register_tm_clones>:
  4005d0:	b8 60 10 60 00       	mov    eax,0x601060
  4005d5:	55                   	push   rbp
  4005d6:	48 2d 60 10 60 00    	sub    rax,0x601060
  4005dc:	48 c1 f8 03          	sar    rax,0x3
  4005e0:	48 89 e5             	mov    rbp,rsp
  4005e3:	48 89 c2             	mov    rdx,rax
  4005e6:	48 c1 ea 3f          	shr    rdx,0x3f
  4005ea:	48 01 d0             	add    rax,rdx
  4005ed:	48 d1 f8             	sar    rax,1
  4005f0:	75 02                	jne    4005f4 <register_tm_clones+0x24>
  4005f2:	5d                   	pop    rbp
  4005f3:	c3                   	ret    
  4005f4:	ba 00 00 00 00       	mov    edx,0x0
  4005f9:	48 85 d2             	test   rdx,rdx
  4005fc:	74 f4                	je     4005f2 <register_tm_clones+0x22>
  4005fe:	5d                   	pop    rbp
  4005ff:	48 89 c6             	mov    rsi,rax
  400602:	bf 60 10 60 00       	mov    edi,0x601060
  400607:	ff e2                	jmp    rdx
  400609:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400610 <__do_global_dtors_aux>:
  400610:	80 3d 49 0a 20 00 00 	cmp    BYTE PTR [rip+0x200a49],0x0        # 601060 <__TMC_END__>
  400617:	75 11                	jne    40062a <__do_global_dtors_aux+0x1a>
  400619:	55                   	push   rbp
  40061a:	48 89 e5             	mov    rbp,rsp
  40061d:	e8 7e ff ff ff       	call   4005a0 <deregister_tm_clones>
  400622:	5d                   	pop    rbp
  400623:	c6 05 36 0a 20 00 01 	mov    BYTE PTR [rip+0x200a36],0x1        # 601060 <__TMC_END__>
  40062a:	f3 c3                	repz ret 
  40062c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400630 <frame_dummy>:
  400630:	48 83 3d e8 07 20 00 	cmp    QWORD PTR [rip+0x2007e8],0x0        # 600e20 <__JCR_END__>
  400637:	00 
  400638:	74 1e                	je     400658 <frame_dummy+0x28>
  40063a:	b8 00 00 00 00       	mov    eax,0x0
  40063f:	48 85 c0             	test   rax,rax
  400642:	74 14                	je     400658 <frame_dummy+0x28>
  400644:	55                   	push   rbp
  400645:	bf 20 0e 60 00       	mov    edi,0x600e20
  40064a:	48 89 e5             	mov    rbp,rsp
  40064d:	ff d0                	call   rax
  40064f:	5d                   	pop    rbp
  400650:	e9 7b ff ff ff       	jmp    4005d0 <register_tm_clones>
  400655:	0f 1f 00             	nop    DWORD PTR [rax]
  400658:	e9 73 ff ff ff       	jmp    4005d0 <register_tm_clones>

000000000040065d <PersonCreate>:
  40065d:	55                   	push   rbp
  40065e:	48 89 e5             	mov    rbp,rsp
  400661:	48 83 ec 30          	sub    rsp,0x30
  400665:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400669:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  40066c:	89 55 e0             	mov    DWORD PTR [rbp-0x20],edx
  40066f:	89 4d dc             	mov    DWORD PTR [rbp-0x24],ecx
  400672:	bf 18 00 00 00       	mov    edi,0x18
  400677:	e8 d4 fe ff ff       	call   400550 <malloc@plt>
  40067c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400680:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400685:	75 19                	jne    4006a0 <PersonCreate+0x43>
  400687:	b9 cf 09 40 00       	mov    ecx,0x4009cf
  40068c:	ba 12 00 00 00       	mov    edx,0x12
  400691:	be 44 09 40 00       	mov    esi,0x400944
  400696:	bf 4b 09 40 00       	mov    edi,0x40094b
  40069b:	e8 80 fe ff ff       	call   400520 <__assert_fail@plt>
  4006a0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4006a4:	48 89 c7             	mov    rdi,rax
  4006a7:	b8 00 00 00 00       	mov    eax,0x0
  4006ac:	e8 af fe ff ff       	call   400560 <strdup@plt>
  4006b1:	48 98                	cdqe   
  4006b3:	48 89 c2             	mov    rdx,rax
  4006b6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4006ba:	48 89 10             	mov    QWORD PTR [rax],rdx
  4006bd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4006c1:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
  4006c4:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  4006c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4006cb:	8b 55 e0             	mov    edx,DWORD PTR [rbp-0x20]
  4006ce:	89 50 0c             	mov    DWORD PTR [rax+0xc],edx
  4006d1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4006d5:	8b 55 dc             	mov    edx,DWORD PTR [rbp-0x24]
  4006d8:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
  4006db:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4006df:	c9                   	leave  
  4006e0:	c3                   	ret    

00000000004006e1 <PersonDestroy>:
  4006e1:	55                   	push   rbp
  4006e2:	48 89 e5             	mov    rbp,rsp
  4006e5:	48 83 ec 10          	sub    rsp,0x10
  4006e9:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4006ed:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4006f2:	75 19                	jne    40070d <PersonDestroy+0x2c>
  4006f4:	b9 dc 09 40 00       	mov    ecx,0x4009dc
  4006f9:	ba 1e 00 00 00       	mov    edx,0x1e
  4006fe:	be 44 09 40 00       	mov    esi,0x400944
  400703:	bf 4b 09 40 00       	mov    edi,0x40094b
  400708:	e8 13 fe ff ff       	call   400520 <__assert_fail@plt>
  40070d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400711:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400714:	48 89 c7             	mov    rdi,rax
  400717:	e8 e4 fd ff ff       	call   400500 <free@plt>
  40071c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400720:	48 89 c7             	mov    rdi,rax
  400723:	e8 d8 fd ff ff       	call   400500 <free@plt>
  400728:	c9                   	leave  
  400729:	c3                   	ret    

000000000040072a <PersonPrint>:
  40072a:	55                   	push   rbp
  40072b:	48 89 e5             	mov    rbp,rsp
  40072e:	48 83 ec 10          	sub    rsp,0x10
  400732:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  400736:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40073a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40073d:	48 89 c6             	mov    rsi,rax
  400740:	bf 5e 09 40 00       	mov    edi,0x40095e
  400745:	b8 00 00 00 00       	mov    eax,0x0
  40074a:	e8 c1 fd ff ff       	call   400510 <printf@plt>
  40074f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400753:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  400756:	89 c6                	mov    esi,eax
  400758:	bf 68 09 40 00       	mov    edi,0x400968
  40075d:	b8 00 00 00 00       	mov    eax,0x0
  400762:	e8 a9 fd ff ff       	call   400510 <printf@plt>
  400767:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40076b:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
  40076e:	89 c6                	mov    esi,eax
  400770:	bf 72 09 40 00       	mov    edi,0x400972
  400775:	b8 00 00 00 00       	mov    eax,0x0
  40077a:	e8 91 fd ff ff       	call   400510 <printf@plt>
  40077f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400783:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  400786:	89 c6                	mov    esi,eax
  400788:	bf 7f 09 40 00       	mov    edi,0x40097f
  40078d:	b8 00 00 00 00       	mov    eax,0x0
  400792:	e8 79 fd ff ff       	call   400510 <printf@plt>
  400797:	c9                   	leave  
  400798:	c3                   	ret    

0000000000400799 <main>:
  400799:	55                   	push   rbp
  40079a:	48 89 e5             	mov    rbp,rsp
  40079d:	48 83 ec 20          	sub    rsp,0x20
  4007a1:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  4007a4:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4007a8:	b9 8c 00 00 00       	mov    ecx,0x8c
  4007ad:	ba 40 00 00 00       	mov    edx,0x40
  4007b2:	be 20 00 00 00       	mov    esi,0x20
  4007b7:	bf 8c 09 40 00       	mov    edi,0x40098c
  4007bc:	e8 9c fe ff ff       	call   40065d <PersonCreate>
  4007c1:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4007c5:	b9 b4 00 00 00       	mov    ecx,0xb4
  4007ca:	ba 48 00 00 00       	mov    edx,0x48
  4007cf:	be 14 00 00 00       	mov    esi,0x14
  4007d4:	bf 95 09 40 00       	mov    edi,0x400995
  4007d9:	e8 7f fe ff ff       	call   40065d <PersonCreate>
  4007de:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4007e2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4007e6:	48 89 c6             	mov    rsi,rax
  4007e9:	bf a1 09 40 00       	mov    edi,0x4009a1
  4007ee:	b8 00 00 00 00       	mov    eax,0x0
  4007f3:	e8 18 fd ff ff       	call   400510 <printf@plt>
  4007f8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4007fc:	48 89 c7             	mov    rdi,rax
  4007ff:	e8 26 ff ff ff       	call   40072a <PersonPrint>
  400804:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400808:	48 89 c6             	mov    rsi,rax
  40080b:	bf b7 09 40 00       	mov    edi,0x4009b7
  400810:	b8 00 00 00 00       	mov    eax,0x0
  400815:	e8 f6 fc ff ff       	call   400510 <printf@plt>
  40081a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40081e:	48 89 c7             	mov    rdi,rax
  400821:	e8 04 ff ff ff       	call   40072a <PersonPrint>
  400826:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40082a:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  40082d:	8d 50 14             	lea    edx,[rax+0x14]
  400830:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400834:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  400837:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40083b:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
  40083e:	8d 50 fe             	lea    edx,[rax-0x2]
  400841:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400845:	89 50 0c             	mov    DWORD PTR [rax+0xc],edx
  400848:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40084c:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  40084f:	8d 50 28             	lea    edx,[rax+0x28]
  400852:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400856:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
  400859:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40085d:	48 89 c7             	mov    rdi,rax
  400860:	e8 c5 fe ff ff       	call   40072a <PersonPrint>
  400865:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400869:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  40086c:	8d 50 14             	lea    edx,[rax+0x14]
  40086f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400873:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  400876:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40087a:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  40087d:	8d 50 14             	lea    edx,[rax+0x14]
  400880:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400884:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
  400887:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40088b:	48 89 c7             	mov    rdi,rax
  40088e:	e8 97 fe ff ff       	call   40072a <PersonPrint>
  400893:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400897:	48 89 c7             	mov    rdi,rax
  40089a:	e8 42 fe ff ff       	call   4006e1 <PersonDestroy>
  40089f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4008a3:	48 89 c7             	mov    rdi,rax
  4008a6:	e8 36 fe ff ff       	call   4006e1 <PersonDestroy>
  4008ab:	b8 00 00 00 00       	mov    eax,0x0
  4008b0:	c9                   	leave  
  4008b1:	c3                   	ret    
  4008b2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4008b9:	00 00 00 
  4008bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004008c0 <__libc_csu_init>:
  4008c0:	41 57                	push   r15
  4008c2:	41 89 ff             	mov    r15d,edi
  4008c5:	41 56                	push   r14
  4008c7:	49 89 f6             	mov    r14,rsi
  4008ca:	41 55                	push   r13
  4008cc:	49 89 d5             	mov    r13,rdx
  4008cf:	41 54                	push   r12
  4008d1:	4c 8d 25 38 05 20 00 	lea    r12,[rip+0x200538]        # 600e10 <__frame_dummy_init_array_entry>
  4008d8:	55                   	push   rbp
  4008d9:	48 8d 2d 38 05 20 00 	lea    rbp,[rip+0x200538]        # 600e18 <__init_array_end>
  4008e0:	53                   	push   rbx
  4008e1:	4c 29 e5             	sub    rbp,r12
  4008e4:	31 db                	xor    ebx,ebx
  4008e6:	48 c1 fd 03          	sar    rbp,0x3
  4008ea:	48 83 ec 08          	sub    rsp,0x8
  4008ee:	e8 d5 fb ff ff       	call   4004c8 <_init>
  4008f3:	48 85 ed             	test   rbp,rbp
  4008f6:	74 1e                	je     400916 <__libc_csu_init+0x56>
  4008f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4008ff:	00 
  400900:	4c 89 ea             	mov    rdx,r13
  400903:	4c 89 f6             	mov    rsi,r14
  400906:	44 89 ff             	mov    edi,r15d
  400909:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40090d:	48 83 c3 01          	add    rbx,0x1
  400911:	48 39 eb             	cmp    rbx,rbp
  400914:	75 ea                	jne    400900 <__libc_csu_init+0x40>
  400916:	48 83 c4 08          	add    rsp,0x8
  40091a:	5b                   	pop    rbx
  40091b:	5d                   	pop    rbp
  40091c:	41 5c                	pop    r12
  40091e:	41 5d                	pop    r13
  400920:	41 5e                	pop    r14
  400922:	41 5f                	pop    r15
  400924:	c3                   	ret    
  400925:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40092c:	00 00 00 00 

0000000000400930 <__libc_csu_fini>:
  400930:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400934 <_fini>:
  400934:	48 83 ec 08          	sub    rsp,0x8
  400938:	48 83 c4 08          	add    rsp,0x8
  40093c:	c3                   	ret    
