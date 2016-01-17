
ex18:     file format elf64-x86-64


Disassembly of section .init:

00000000004005c8 <_init>:
  4005c8:	48 83 ec 08          	sub    rsp,0x8
  4005cc:	48 8b 05 25 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a25]        # 600ff8 <_DYNAMIC+0x1d0>
  4005d3:	48 85 c0             	test   rax,rax
  4005d6:	74 05                	je     4005dd <_init+0x15>
  4005d8:	e8 73 00 00 00       	call   400650 <__gmon_start__@plt>
  4005dd:	48 83 c4 08          	add    rsp,0x8
  4005e1:	c3                   	ret    

Disassembly of section .plt:

00000000004005f0 <free@plt-0x10>:
  4005f0:	ff 35 12 0a 20 00    	push   QWORD PTR [rip+0x200a12]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005f6:	ff 25 14 0a 20 00    	jmp    QWORD PTR [rip+0x200a14]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400600 <free@plt>:
  400600:	ff 25 12 0a 20 00    	jmp    QWORD PTR [rip+0x200a12]        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400606:	68 00 00 00 00       	push   0x0
  40060b:	e9 e0 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400610 <putchar@plt>:
  400610:	ff 25 0a 0a 20 00    	jmp    QWORD PTR [rip+0x200a0a]        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400616:	68 01 00 00 00       	push   0x1
  40061b:	e9 d0 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400620 <__errno_location@plt>:
  400620:	ff 25 02 0a 20 00    	jmp    QWORD PTR [rip+0x200a02]        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400626:	68 02 00 00 00       	push   0x2
  40062b:	e9 c0 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400630 <printf@plt>:
  400630:	ff 25 fa 09 20 00    	jmp    QWORD PTR [rip+0x2009fa]        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400636:	68 03 00 00 00       	push   0x3
  40063b:	e9 b0 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400640 <__libc_start_main@plt>:
  400640:	ff 25 f2 09 20 00    	jmp    QWORD PTR [rip+0x2009f2]        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400646:	68 04 00 00 00       	push   0x4
  40064b:	e9 a0 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400650 <__gmon_start__@plt>:
  400650:	ff 25 ea 09 20 00    	jmp    QWORD PTR [rip+0x2009ea]        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400656:	68 05 00 00 00       	push   0x5
  40065b:	e9 90 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400660 <memcpy@plt>:
  400660:	ff 25 e2 09 20 00    	jmp    QWORD PTR [rip+0x2009e2]        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400666:	68 06 00 00 00       	push   0x6
  40066b:	e9 80 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400670 <malloc@plt>:
  400670:	ff 25 da 09 20 00    	jmp    QWORD PTR [rip+0x2009da]        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400676:	68 07 00 00 00       	push   0x7
  40067b:	e9 70 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400680 <perror@plt>:
  400680:	ff 25 d2 09 20 00    	jmp    QWORD PTR [rip+0x2009d2]        # 601058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400686:	68 08 00 00 00       	push   0x8
  40068b:	e9 60 ff ff ff       	jmp    4005f0 <_init+0x28>

0000000000400690 <atoi@plt>:
  400690:	ff 25 ca 09 20 00    	jmp    QWORD PTR [rip+0x2009ca]        # 601060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400696:	68 09 00 00 00       	push   0x9
  40069b:	e9 50 ff ff ff       	jmp    4005f0 <_init+0x28>

00000000004006a0 <exit@plt>:
  4006a0:	ff 25 c2 09 20 00    	jmp    QWORD PTR [rip+0x2009c2]        # 601068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4006a6:	68 0a 00 00 00       	push   0xa
  4006ab:	e9 40 ff ff ff       	jmp    4005f0 <_init+0x28>

Disassembly of section .text:

00000000004006b0 <_start>:
  4006b0:	31 ed                	xor    ebp,ebp
  4006b2:	49 89 d1             	mov    r9,rdx
  4006b5:	5e                   	pop    rsi
  4006b6:	48 89 e2             	mov    rdx,rsp
  4006b9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4006bd:	50                   	push   rax
  4006be:	54                   	push   rsp
  4006bf:	49 c7 c0 80 0b 40 00 	mov    r8,0x400b80
  4006c6:	48 c7 c1 10 0b 40 00 	mov    rcx,0x400b10
  4006cd:	48 c7 c7 02 0a 40 00 	mov    rdi,0x400a02
  4006d4:	e8 67 ff ff ff       	call   400640 <__libc_start_main@plt>
  4006d9:	f4                   	hlt    
  4006da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006e0 <deregister_tm_clones>:
  4006e0:	b8 87 10 60 00       	mov    eax,0x601087
  4006e5:	55                   	push   rbp
  4006e6:	48 2d 80 10 60 00    	sub    rax,0x601080
  4006ec:	48 83 f8 0e          	cmp    rax,0xe
  4006f0:	48 89 e5             	mov    rbp,rsp
  4006f3:	77 02                	ja     4006f7 <deregister_tm_clones+0x17>
  4006f5:	5d                   	pop    rbp
  4006f6:	c3                   	ret    
  4006f7:	b8 00 00 00 00       	mov    eax,0x0
  4006fc:	48 85 c0             	test   rax,rax
  4006ff:	74 f4                	je     4006f5 <deregister_tm_clones+0x15>
  400701:	5d                   	pop    rbp
  400702:	bf 80 10 60 00       	mov    edi,0x601080
  400707:	ff e0                	jmp    rax
  400709:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400710 <register_tm_clones>:
  400710:	b8 80 10 60 00       	mov    eax,0x601080
  400715:	55                   	push   rbp
  400716:	48 2d 80 10 60 00    	sub    rax,0x601080
  40071c:	48 c1 f8 03          	sar    rax,0x3
  400720:	48 89 e5             	mov    rbp,rsp
  400723:	48 89 c2             	mov    rdx,rax
  400726:	48 c1 ea 3f          	shr    rdx,0x3f
  40072a:	48 01 d0             	add    rax,rdx
  40072d:	48 d1 f8             	sar    rax,1
  400730:	75 02                	jne    400734 <register_tm_clones+0x24>
  400732:	5d                   	pop    rbp
  400733:	c3                   	ret    
  400734:	ba 00 00 00 00       	mov    edx,0x0
  400739:	48 85 d2             	test   rdx,rdx
  40073c:	74 f4                	je     400732 <register_tm_clones+0x22>
  40073e:	5d                   	pop    rbp
  40073f:	48 89 c6             	mov    rsi,rax
  400742:	bf 80 10 60 00       	mov    edi,0x601080
  400747:	ff e2                	jmp    rdx
  400749:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400750 <__do_global_dtors_aux>:
  400750:	80 3d 29 09 20 00 00 	cmp    BYTE PTR [rip+0x200929],0x0        # 601080 <__TMC_END__>
  400757:	75 11                	jne    40076a <__do_global_dtors_aux+0x1a>
  400759:	55                   	push   rbp
  40075a:	48 89 e5             	mov    rbp,rsp
  40075d:	e8 7e ff ff ff       	call   4006e0 <deregister_tm_clones>
  400762:	5d                   	pop    rbp
  400763:	c6 05 16 09 20 00 01 	mov    BYTE PTR [rip+0x200916],0x1        # 601080 <__TMC_END__>
  40076a:	f3 c3                	repz ret 
  40076c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400770 <frame_dummy>:
  400770:	48 83 3d a8 06 20 00 	cmp    QWORD PTR [rip+0x2006a8],0x0        # 600e20 <__JCR_END__>
  400777:	00 
  400778:	74 1e                	je     400798 <frame_dummy+0x28>
  40077a:	b8 00 00 00 00       	mov    eax,0x0
  40077f:	48 85 c0             	test   rax,rax
  400782:	74 14                	je     400798 <frame_dummy+0x28>
  400784:	55                   	push   rbp
  400785:	bf 20 0e 60 00       	mov    edi,0x600e20
  40078a:	48 89 e5             	mov    rbp,rsp
  40078d:	ff d0                	call   rax
  40078f:	5d                   	pop    rbp
  400790:	e9 7b ff ff ff       	jmp    400710 <register_tm_clones>
  400795:	0f 1f 00             	nop    DWORD PTR [rax]
  400798:	e9 73 ff ff ff       	jmp    400710 <register_tm_clones>

000000000040079d <die>:
  40079d:	55                   	push   rbp
  40079e:	48 89 e5             	mov    rbp,rsp
  4007a1:	48 83 ec 10          	sub    rsp,0x10
  4007a5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4007a9:	e8 72 fe ff ff       	call   400620 <__errno_location@plt>
  4007ae:	8b 00                	mov    eax,DWORD PTR [rax]
  4007b0:	85 c0                	test   eax,eax
  4007b2:	74 0e                	je     4007c2 <die+0x25>
  4007b4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4007b8:	48 89 c7             	mov    rdi,rax
  4007bb:	e8 c0 fe ff ff       	call   400680 <perror@plt>
  4007c0:	eb 16                	jmp    4007d8 <die+0x3b>
  4007c2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4007c6:	48 89 c6             	mov    rsi,rax
  4007c9:	bf 94 0b 40 00       	mov    edi,0x400b94
  4007ce:	b8 00 00 00 00       	mov    eax,0x0
  4007d3:	e8 58 fe ff ff       	call   400630 <printf@plt>
  4007d8:	bf 01 00 00 00       	mov    edi,0x1
  4007dd:	e8 be fe ff ff       	call   4006a0 <exit@plt>

00000000004007e2 <bubble_sort>:
  4007e2:	55                   	push   rbp
  4007e3:	48 89 e5             	mov    rbp,rsp
  4007e6:	48 83 ec 40          	sub    rsp,0x40
  4007ea:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  4007ee:	89 75 d4             	mov    DWORD PTR [rbp-0x2c],esi
  4007f1:	48 89 55 c8          	mov    QWORD PTR [rbp-0x38],rdx
  4007f5:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  4007fc:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  4007ff:	48 98                	cdqe   
  400801:	48 c1 e0 02          	shl    rax,0x2
  400805:	48 89 c7             	mov    rdi,rax
  400808:	e8 63 fe ff ff       	call   400670 <malloc@plt>
  40080d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400811:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  400814:	48 98                	cdqe   
  400816:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40081d:	00 
  40081e:	48 8b 4d d8          	mov    rcx,QWORD PTR [rbp-0x28]
  400822:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400826:	48 89 ce             	mov    rsi,rcx
  400829:	48 89 c7             	mov    rdi,rax
  40082c:	e8 2f fe ff ff       	call   400660 <memcpy@plt>
  400831:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400838:	e9 c7 00 00 00       	jmp    400904 <bubble_sort+0x122>
  40083d:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  400844:	e9 a8 00 00 00       	jmp    4008f1 <bubble_sort+0x10f>
  400849:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  40084c:	48 98                	cdqe   
  40084e:	48 83 c0 01          	add    rax,0x1
  400852:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400859:	00 
  40085a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40085e:	48 01 d0             	add    rax,rdx
  400861:	8b 08                	mov    ecx,DWORD PTR [rax]
  400863:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  400866:	48 98                	cdqe   
  400868:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40086f:	00 
  400870:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400874:	48 01 d0             	add    rax,rdx
  400877:	8b 10                	mov    edx,DWORD PTR [rax]
  400879:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  40087d:	89 ce                	mov    esi,ecx
  40087f:	89 d7                	mov    edi,edx
  400881:	ff d0                	call   rax
  400883:	85 c0                	test   eax,eax
  400885:	7e 66                	jle    4008ed <bubble_sort+0x10b>
  400887:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  40088a:	48 98                	cdqe   
  40088c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400893:	00 
  400894:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400898:	48 01 d0             	add    rax,rdx
  40089b:	8b 00                	mov    eax,DWORD PTR [rax]
  40089d:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  4008a0:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4008a3:	48 98                	cdqe   
  4008a5:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4008ac:	00 
  4008ad:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4008b1:	48 01 c2             	add    rdx,rax
  4008b4:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4008b7:	48 98                	cdqe   
  4008b9:	48 83 c0 01          	add    rax,0x1
  4008bd:	48 8d 0c 85 00 00 00 	lea    rcx,[rax*4+0x0]
  4008c4:	00 
  4008c5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4008c9:	48 01 c8             	add    rax,rcx
  4008cc:	8b 00                	mov    eax,DWORD PTR [rax]
  4008ce:	89 02                	mov    DWORD PTR [rdx],eax
  4008d0:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  4008d3:	48 98                	cdqe   
  4008d5:	48 83 c0 01          	add    rax,0x1
  4008d9:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4008e0:	00 
  4008e1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4008e5:	48 01 c2             	add    rdx,rax
  4008e8:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4008eb:	89 02                	mov    DWORD PTR [rdx],eax
  4008ed:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  4008f1:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  4008f4:	83 e8 01             	sub    eax,0x1
  4008f7:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
  4008fa:	0f 8f 49 ff ff ff    	jg     400849 <bubble_sort+0x67>
  400900:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  400904:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400907:	3b 45 d4             	cmp    eax,DWORD PTR [rbp-0x2c]
  40090a:	0f 8c 2d ff ff ff    	jl     40083d <bubble_sort+0x5b>
  400910:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400914:	c9                   	leave  
  400915:	c3                   	ret    

0000000000400916 <sorted_order>:
  400916:	55                   	push   rbp
  400917:	48 89 e5             	mov    rbp,rsp
  40091a:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  40091d:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  400920:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  400923:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  400926:	29 c2                	sub    edx,eax
  400928:	89 d0                	mov    eax,edx
  40092a:	5d                   	pop    rbp
  40092b:	c3                   	ret    

000000000040092c <reverse_order>:
  40092c:	55                   	push   rbp
  40092d:	48 89 e5             	mov    rbp,rsp
  400930:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  400933:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  400936:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400939:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
  40093c:	29 c2                	sub    edx,eax
  40093e:	89 d0                	mov    eax,edx
  400940:	5d                   	pop    rbp
  400941:	c3                   	ret    

0000000000400942 <strange_order>:
  400942:	55                   	push   rbp
  400943:	48 89 e5             	mov    rbp,rsp
  400946:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  400949:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  40094c:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
  400950:	74 06                	je     400958 <strange_order+0x16>
  400952:	83 7d f8 00          	cmp    DWORD PTR [rbp-0x8],0x0
  400956:	75 07                	jne    40095f <strange_order+0x1d>
  400958:	b8 00 00 00 00       	mov    eax,0x0
  40095d:	eb 09                	jmp    400968 <strange_order+0x26>
  40095f:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400962:	99                   	cdq    
  400963:	f7 7d f8             	idiv   DWORD PTR [rbp-0x8]
  400966:	89 d0                	mov    eax,edx
  400968:	5d                   	pop    rbp
  400969:	c3                   	ret    

000000000040096a <test_sorting>:
  40096a:	55                   	push   rbp
  40096b:	48 89 e5             	mov    rbp,rsp
  40096e:	48 83 ec 30          	sub    rsp,0x30
  400972:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400976:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  400979:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  40097d:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  400984:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  400988:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  40098b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40098f:	89 ce                	mov    esi,ecx
  400991:	48 89 c7             	mov    rdi,rax
  400994:	e8 49 fe ff ff       	call   4007e2 <bubble_sort>
  400999:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40099d:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  4009a2:	75 0a                	jne    4009ae <test_sorting+0x44>
  4009a4:	bf 9f 0b 40 00       	mov    edi,0x400b9f
  4009a9:	e8 ef fd ff ff       	call   40079d <die>
  4009ae:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  4009b5:	eb 2b                	jmp    4009e2 <test_sorting+0x78>
  4009b7:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4009ba:	48 98                	cdqe   
  4009bc:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  4009c3:	00 
  4009c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4009c8:	48 01 d0             	add    rax,rdx
  4009cb:	8b 00                	mov    eax,DWORD PTR [rax]
  4009cd:	89 c6                	mov    esi,eax
  4009cf:	bf af 0b 40 00       	mov    edi,0x400baf
  4009d4:	b8 00 00 00 00       	mov    eax,0x0
  4009d9:	e8 52 fc ff ff       	call   400630 <printf@plt>
  4009de:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
  4009e2:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4009e5:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
  4009e8:	7c cd                	jl     4009b7 <test_sorting+0x4d>
  4009ea:	bf 0a 00 00 00       	mov    edi,0xa
  4009ef:	e8 1c fc ff ff       	call   400610 <putchar@plt>
  4009f4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4009f8:	48 89 c7             	mov    rdi,rax
  4009fb:	e8 00 fc ff ff       	call   400600 <free@plt>
  400a00:	c9                   	leave  
  400a01:	c3                   	ret    

0000000000400a02 <main>:
  400a02:	55                   	push   rbp
  400a03:	48 89 e5             	mov    rbp,rsp
  400a06:	53                   	push   rbx
  400a07:	48 83 ec 38          	sub    rsp,0x38
  400a0b:	89 7d cc             	mov    DWORD PTR [rbp-0x34],edi
  400a0e:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
  400a12:	83 7d cc 01          	cmp    DWORD PTR [rbp-0x34],0x1
  400a16:	7f 0a                	jg     400a22 <main+0x20>
  400a18:	bf b3 0b 40 00       	mov    edi,0x400bb3
  400a1d:	e8 7b fd ff ff       	call   40079d <die>
  400a22:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  400a25:	83 e8 01             	sub    eax,0x1
  400a28:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  400a2b:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
  400a32:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  400a36:	48 83 c0 08          	add    rax,0x8
  400a3a:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  400a3e:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400a41:	48 98                	cdqe   
  400a43:	48 c1 e0 02          	shl    rax,0x2
  400a47:	48 89 c7             	mov    rdi,rax
  400a4a:	e8 21 fc ff ff       	call   400670 <malloc@plt>
  400a4f:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  400a53:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  400a58:	75 0a                	jne    400a64 <main+0x62>
  400a5a:	bf c9 0b 40 00       	mov    edi,0x400bc9
  400a5f:	e8 39 fd ff ff       	call   40079d <die>
  400a64:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [rbp-0x28],0x0
  400a6b:	eb 3a                	jmp    400aa7 <main+0xa5>
  400a6d:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  400a70:	48 98                	cdqe   
  400a72:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  400a79:	00 
  400a7a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400a7e:	48 8d 1c 02          	lea    rbx,[rdx+rax*1]
  400a82:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  400a85:	48 98                	cdqe   
  400a87:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  400a8e:	00 
  400a8f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400a93:	48 01 d0             	add    rax,rdx
  400a96:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400a99:	48 89 c7             	mov    rdi,rax
  400a9c:	e8 ef fb ff ff       	call   400690 <atoi@plt>
  400aa1:	89 03                	mov    DWORD PTR [rbx],eax
  400aa3:	83 45 d8 01          	add    DWORD PTR [rbp-0x28],0x1
  400aa7:	8b 45 d8             	mov    eax,DWORD PTR [rbp-0x28]
  400aaa:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
  400aad:	7c be                	jl     400a6d <main+0x6b>
  400aaf:	8b 4d dc             	mov    ecx,DWORD PTR [rbp-0x24]
  400ab2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400ab6:	ba 16 09 40 00       	mov    edx,0x400916
  400abb:	89 ce                	mov    esi,ecx
  400abd:	48 89 c7             	mov    rdi,rax
  400ac0:	e8 a5 fe ff ff       	call   40096a <test_sorting>
  400ac5:	8b 4d dc             	mov    ecx,DWORD PTR [rbp-0x24]
  400ac8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400acc:	ba 2c 09 40 00       	mov    edx,0x40092c
  400ad1:	89 ce                	mov    esi,ecx
  400ad3:	48 89 c7             	mov    rdi,rax
  400ad6:	e8 8f fe ff ff       	call   40096a <test_sorting>
  400adb:	8b 4d dc             	mov    ecx,DWORD PTR [rbp-0x24]
  400ade:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400ae2:	ba 42 09 40 00       	mov    edx,0x400942
  400ae7:	89 ce                	mov    esi,ecx
  400ae9:	48 89 c7             	mov    rdi,rax
  400aec:	e8 79 fe ff ff       	call   40096a <test_sorting>
  400af1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400af5:	48 89 c7             	mov    rdi,rax
  400af8:	e8 03 fb ff ff       	call   400600 <free@plt>
  400afd:	b8 00 00 00 00       	mov    eax,0x0
  400b02:	48 83 c4 38          	add    rsp,0x38
  400b06:	5b                   	pop    rbx
  400b07:	5d                   	pop    rbp
  400b08:	c3                   	ret    
  400b09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400b10 <__libc_csu_init>:
  400b10:	41 57                	push   r15
  400b12:	41 89 ff             	mov    r15d,edi
  400b15:	41 56                	push   r14
  400b17:	49 89 f6             	mov    r14,rsi
  400b1a:	41 55                	push   r13
  400b1c:	49 89 d5             	mov    r13,rdx
  400b1f:	41 54                	push   r12
  400b21:	4c 8d 25 e8 02 20 00 	lea    r12,[rip+0x2002e8]        # 600e10 <__frame_dummy_init_array_entry>
  400b28:	55                   	push   rbp
  400b29:	48 8d 2d e8 02 20 00 	lea    rbp,[rip+0x2002e8]        # 600e18 <__init_array_end>
  400b30:	53                   	push   rbx
  400b31:	4c 29 e5             	sub    rbp,r12
  400b34:	31 db                	xor    ebx,ebx
  400b36:	48 c1 fd 03          	sar    rbp,0x3
  400b3a:	48 83 ec 08          	sub    rsp,0x8
  400b3e:	e8 85 fa ff ff       	call   4005c8 <_init>
  400b43:	48 85 ed             	test   rbp,rbp
  400b46:	74 1e                	je     400b66 <__libc_csu_init+0x56>
  400b48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400b4f:	00 
  400b50:	4c 89 ea             	mov    rdx,r13
  400b53:	4c 89 f6             	mov    rsi,r14
  400b56:	44 89 ff             	mov    edi,r15d
  400b59:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400b5d:	48 83 c3 01          	add    rbx,0x1
  400b61:	48 39 eb             	cmp    rbx,rbp
  400b64:	75 ea                	jne    400b50 <__libc_csu_init+0x40>
  400b66:	48 83 c4 08          	add    rsp,0x8
  400b6a:	5b                   	pop    rbx
  400b6b:	5d                   	pop    rbp
  400b6c:	41 5c                	pop    r12
  400b6e:	41 5d                	pop    r13
  400b70:	41 5e                	pop    r14
  400b72:	41 5f                	pop    r15
  400b74:	c3                   	ret    
  400b75:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  400b7c:	00 00 00 00 

0000000000400b80 <__libc_csu_fini>:
  400b80:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400b84 <_fini>:
  400b84:	48 83 ec 08          	sub    rsp,0x8
  400b88:	48 83 c4 08          	add    rsp,0x8
  400b8c:	c3                   	ret    
