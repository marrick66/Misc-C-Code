
ex8:     file format elf64-x86-64


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
  40049f:	49 c7 c0 c0 06 40 00 	mov    r8,0x4006c0
  4004a6:	48 c7 c1 50 06 40 00 	mov    rcx,0x400650
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
																		#argc is located on the stack, and is compared to the immediate
																		#value 1.  The CMP instruction subtracts the second argument from the first
																		#argument. If they are equal values, the result should be zero, making the 
																		#zero flag set.  The JNE instruction will jump if this flag is NOT set.
  40058c:	83 7d ec 01          	cmp    DWORD PTR [rbp-0x14],0x1		
  400590:	75 0c                	jne    40059e <main+0x21>
  400592:	bf d8 06 40 00       	mov    edi,0x4006d8
  400597:	e8 b4 fe ff ff       	call   400450 <puts@plt>
  40059c:	eb 56                	jmp    4005f4 <main+0x77>
  40059e:	83 7d ec 01          	cmp    DWORD PTR [rbp-0x14],0x1
  4005a2:	7e 46                	jle    4005ea <main+0x6d>
  4005a4:	83 7d ec 03          	cmp    DWORD PTR [rbp-0x14],0x3
  4005a8:	7f 40                	jg     4005ea <main+0x6d>
  4005aa:	bf f4 06 40 00       	mov    edi,0x4006f4
  4005af:	e8 9c fe ff ff       	call   400450 <puts@plt>
  4005b4:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [rbp-0x10],0x1
  4005bb:	eb 23                	jmp    4005e0 <main+0x63>
  4005bd:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4005c0:	48 98                	cdqe   
  4005c2:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4005c9:	00 
  4005ca:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4005ce:	48 01 d0             	add    rax,rdx
  4005d1:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4005d4:	48 89 c7             	mov    rdi,rax
  4005d7:	e8 74 fe ff ff       	call   400450 <puts@plt>
  4005dc:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  4005e0:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4005e3:	3b 45 ec             	cmp    eax,DWORD PTR [rbp-0x14]
  4005e6:	7c d5                	jl     4005bd <main+0x40>
  4005e8:	eb 0a                	jmp    4005f4 <main+0x77>
  4005ea:	bf 08 07 40 00       	mov    edi,0x400708
  4005ef:	e8 5c fe ff ff       	call   400450 <puts@plt>
																			#This is where neg_val is used as a boolean expression.  For it to be
																			#false, the result will have to be zero.  A negative number won't set 
																			#the zero flag with the CMP instruction.
  4005f4:	c7 45 f4 ff ff ff ff 	mov    DWORD PTR [rbp-0xc],0xffffffff
  4005fb:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  4005ff:	74 14                	je     400615 <main+0x98>
  400601:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  400604:	89 c6                	mov    esi,eax
  400606:	bf 25 07 40 00       	mov    edi,0x400725
  40060b:	b8 00 00 00 00       	mov    eax,0x0
  400610:	e8 4b fe ff ff       	call   400460 <printf@plt>
  400615:	c7 45 f8 e8 03 00 00 	mov    DWORD PTR [rbp-0x8],0x3e8
  40061c:	c7 45 fc ff ff ff 7f 	mov    DWORD PTR [rbp-0x4],0x7fffffff
  400623:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400626:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  400629:	01 d0                	add    eax,edx
  40062b:	3d e7 03 00 00       	cmp    eax,0x3e7
  400630:	7f 0a                	jg     40063c <main+0xbf>
  400632:	bf 40 07 40 00       	mov    edi,0x400740
  400637:	e8 14 fe ff ff       	call   400450 <puts@plt>
  40063c:	b8 00 00 00 00       	mov    eax,0x0
  400641:	c9                   	leave  
  400642:	c3                   	ret    
  400643:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40064a:	00 00 00 
  40064d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000400650 <__libc_csu_init>:
  400650:	41 57                	push   r15
  400652:	41 89 ff             	mov    r15d,edi
  400655:	41 56                	push   r14
  400657:	49 89 f6             	mov    r14,rsi
  40065a:	41 55                	push   r13
  40065c:	49 89 d5             	mov    r13,rdx
  40065f:	41 54                	push   r12
  400661:	4c 8d 25 a8 07 20 00 	lea    r12,[rip+0x2007a8]        # 600e10 <__frame_dummy_init_array_entry>
  400668:	55                   	push   rbp
  400669:	48 8d 2d a8 07 20 00 	lea    rbp,[rip+0x2007a8]        # 600e18 <__init_array_end>
  400670:	53                   	push   rbx
  400671:	4c 29 e5             	sub    rbp,r12
  400674:	31 db                	xor    ebx,ebx
  400676:	48 c1 fd 03          	sar    rbp,0x3
  40067a:	48 83 ec 08          	sub    rsp,0x8
  40067e:	e8 95 fd ff ff       	call   400418 <_init>
  400683:	48 85 ed             	test   rbp,rbp
  400686:	74 1e                	je     4006a6 <__libc_csu_init+0x56>
  400688:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40068f:	00 
  400690:	4c 89 ea             	mov    rdx,r13
  400693:	4c 89 f6             	mov    rsi,r14
  400696:	44 89 ff             	mov    edi,r15d
  400699:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40069d:	48 83 c3 01          	add    rbx,0x1
  4006a1:	48 39 eb             	cmp    rbx,rbp
  4006a4:	75 ea                	jne    400690 <__libc_csu_init+0x40>
  4006a6:	48 83 c4 08          	add    rsp,0x8
  4006aa:	5b                   	pop    rbx
  4006ab:	5d                   	pop    rbp
  4006ac:	41 5c                	pop    r12
  4006ae:	41 5d                	pop    r13
  4006b0:	41 5e                	pop    r14
  4006b2:	41 5f                	pop    r15
  4006b4:	c3                   	ret    
  4006b5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4006bc:	00 00 00 00 

00000000004006c0 <__libc_csu_fini>:
  4006c0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004006c4 <_fini>:
  4006c4:	48 83 ec 08          	sub    rsp,0x8
  4006c8:	48 83 c4 08          	add    rsp,0x8
  4006cc:	c3                   	ret    
