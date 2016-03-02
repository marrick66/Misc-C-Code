
ex25:     file format elf64-x86-64


Disassembly of section .init:

00000000004006c8 <_init>:
  4006c8:	48 83 ec 08          	sub    rsp,0x8
  4006cc:	48 8b 05 25 19 20 00 	mov    rax,QWORD PTR [rip+0x201925]        # 601ff8 <_DYNAMIC+0x1d0>
  4006d3:	48 85 c0             	test   rax,rax
  4006d6:	74 05                	je     4006dd <_init+0x15>
  4006d8:	e8 d3 00 00 00       	call   4007b0 <__gmon_start__@plt>
  4006dd:	48 83 c4 08          	add    rsp,0x8
  4006e1:	c3                   	ret    

Disassembly of section .plt:

00000000004006f0 <free@plt-0x10>:
  4006f0:	ff 35 12 19 20 00    	push   QWORD PTR [rip+0x201912]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006f6:	ff 25 14 19 20 00    	jmp    QWORD PTR [rip+0x201914]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400700 <free@plt>:
  400700:	ff 25 12 19 20 00    	jmp    QWORD PTR [rip+0x201912]        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400706:	68 00 00 00 00       	push   0x0
  40070b:	e9 e0 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400710 <__errno_location@plt>:
  400710:	ff 25 0a 19 20 00    	jmp    QWORD PTR [rip+0x20190a]        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400716:	68 01 00 00 00       	push   0x1
  40071b:	e9 d0 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400720 <puts@plt>:
  400720:	ff 25 02 19 20 00    	jmp    QWORD PTR [rip+0x201902]        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400726:	68 02 00 00 00       	push   0x2
  40072b:	e9 c0 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400730 <ferror@plt>:
  400730:	ff 25 fa 18 20 00    	jmp    QWORD PTR [rip+0x2018fa]        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400736:	68 03 00 00 00       	push   0x3
  40073b:	e9 b0 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400740 <printf@plt>:
  400740:	ff 25 f2 18 20 00    	jmp    QWORD PTR [rip+0x2018f2]        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400746:	68 04 00 00 00       	push   0x4
  40074b:	e9 a0 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400750 <fgetc@plt>:
  400750:	ff 25 ea 18 20 00    	jmp    QWORD PTR [rip+0x2018ea]        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400756:	68 05 00 00 00       	push   0x5
  40075b:	e9 90 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400760 <__libc_start_main@plt>:
  400760:	ff 25 e2 18 20 00    	jmp    QWORD PTR [rip+0x2018e2]        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400766:	68 06 00 00 00       	push   0x6
  40076b:	e9 80 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400770 <fgets@plt>:
  400770:	ff 25 da 18 20 00    	jmp    QWORD PTR [rip+0x2018da]        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400776:	68 07 00 00 00       	push   0x7
  40077b:	e9 70 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400780 <calloc@plt>:
  400780:	ff 25 d2 18 20 00    	jmp    QWORD PTR [rip+0x2018d2]        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400786:	68 08 00 00 00       	push   0x8
  40078b:	e9 60 ff ff ff       	jmp    4006f0 <_init+0x28>

0000000000400790 <fprintf@plt>:
  400790:	ff 25 ca 18 20 00    	jmp    QWORD PTR [rip+0x2018ca]        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400796:	68 09 00 00 00       	push   0x9
  40079b:	e9 50 ff ff ff       	jmp    4006f0 <_init+0x28>

00000000004007a0 <feof@plt>:
  4007a0:	ff 25 c2 18 20 00    	jmp    QWORD PTR [rip+0x2018c2]        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4007a6:	68 0a 00 00 00       	push   0xa
  4007ab:	e9 40 ff ff ff       	jmp    4006f0 <_init+0x28>

00000000004007b0 <__gmon_start__@plt>:
  4007b0:	ff 25 ba 18 20 00    	jmp    QWORD PTR [rip+0x2018ba]        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  4007b6:	68 0b 00 00 00       	push   0xb
  4007bb:	e9 30 ff ff ff       	jmp    4006f0 <_init+0x28>

00000000004007c0 <atoi@plt>:
  4007c0:	ff 25 b2 18 20 00    	jmp    QWORD PTR [rip+0x2018b2]        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  4007c6:	68 0c 00 00 00       	push   0xc
  4007cb:	e9 20 ff ff ff       	jmp    4006f0 <_init+0x28>

00000000004007d0 <strerror@plt>:
  4007d0:	ff 25 aa 18 20 00    	jmp    QWORD PTR [rip+0x2018aa]        # 602080 <_GLOBAL_OFFSET_TABLE_+0x80>
  4007d6:	68 0d 00 00 00       	push   0xd
  4007db:	e9 10 ff ff ff       	jmp    4006f0 <_init+0x28>

Disassembly of section .text:

00000000004007e0 <_start>:
  4007e0:	31 ed                	xor    ebp,ebp
  4007e2:	49 89 d1             	mov    r9,rdx
  4007e5:	5e                   	pop    rsi
  4007e6:	48 89 e2             	mov    rdx,rsp
  4007e9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4007ed:	50                   	push   rax
  4007ee:	54                   	push   rsp
  4007ef:	49 c7 c0 c0 12 40 00 	mov    r8,0x4012c0
  4007f6:	48 c7 c1 50 12 40 00 	mov    rcx,0x401250
  4007fd:	48 c7 c7 d2 0f 40 00 	mov    rdi,0x400fd2
  400804:	e8 57 ff ff ff       	call   400760 <__libc_start_main@plt>
  400809:	f4                   	hlt    
  40080a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400810 <deregister_tm_clones>:
  400810:	b8 9f 20 60 00       	mov    eax,0x60209f
  400815:	55                   	push   rbp
  400816:	48 2d 98 20 60 00    	sub    rax,0x602098
  40081c:	48 83 f8 0e          	cmp    rax,0xe
  400820:	48 89 e5             	mov    rbp,rsp
  400823:	77 02                	ja     400827 <deregister_tm_clones+0x17>
  400825:	5d                   	pop    rbp
  400826:	c3                   	ret    
  400827:	b8 00 00 00 00       	mov    eax,0x0
  40082c:	48 85 c0             	test   rax,rax
  40082f:	74 f4                	je     400825 <deregister_tm_clones+0x15>
  400831:	5d                   	pop    rbp
  400832:	bf 98 20 60 00       	mov    edi,0x602098
  400837:	ff e0                	jmp    rax
  400839:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400840 <register_tm_clones>:
  400840:	b8 98 20 60 00       	mov    eax,0x602098
  400845:	55                   	push   rbp
  400846:	48 2d 98 20 60 00    	sub    rax,0x602098
  40084c:	48 c1 f8 03          	sar    rax,0x3
  400850:	48 89 e5             	mov    rbp,rsp
  400853:	48 89 c2             	mov    rdx,rax
  400856:	48 c1 ea 3f          	shr    rdx,0x3f
  40085a:	48 01 d0             	add    rax,rdx
  40085d:	48 d1 f8             	sar    rax,1
  400860:	75 02                	jne    400864 <register_tm_clones+0x24>
  400862:	5d                   	pop    rbp
  400863:	c3                   	ret    
  400864:	ba 00 00 00 00       	mov    edx,0x0
  400869:	48 85 d2             	test   rdx,rdx
  40086c:	74 f4                	je     400862 <register_tm_clones+0x22>
  40086e:	5d                   	pop    rbp
  40086f:	48 89 c6             	mov    rsi,rax
  400872:	bf 98 20 60 00       	mov    edi,0x602098
  400877:	ff e2                	jmp    rdx
  400879:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400880 <__do_global_dtors_aux>:
  400880:	80 3d 21 18 20 00 00 	cmp    BYTE PTR [rip+0x201821],0x0        # 6020a8 <completed.6973>
  400887:	75 11                	jne    40089a <__do_global_dtors_aux+0x1a>
  400889:	55                   	push   rbp
  40088a:	48 89 e5             	mov    rbp,rsp
  40088d:	e8 7e ff ff ff       	call   400810 <deregister_tm_clones>
  400892:	5d                   	pop    rbp
  400893:	c6 05 0e 18 20 00 01 	mov    BYTE PTR [rip+0x20180e],0x1        # 6020a8 <completed.6973>
  40089a:	f3 c3                	repz ret 
  40089c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004008a0 <frame_dummy>:
  4008a0:	48 83 3d 78 15 20 00 	cmp    QWORD PTR [rip+0x201578],0x0        # 601e20 <__JCR_END__>
  4008a7:	00 
  4008a8:	74 1e                	je     4008c8 <frame_dummy+0x28>
  4008aa:	b8 00 00 00 00       	mov    eax,0x0
  4008af:	48 85 c0             	test   rax,rax
  4008b2:	74 14                	je     4008c8 <frame_dummy+0x28>
  4008b4:	55                   	push   rbp
  4008b5:	bf 20 1e 60 00       	mov    edi,0x601e20
  4008ba:	48 89 e5             	mov    rbp,rsp
  4008bd:	ff d0                	call   rax
  4008bf:	5d                   	pop    rbp
  4008c0:	e9 7b ff ff ff       	jmp    400840 <register_tm_clones>
  4008c5:	0f 1f 00             	nop    DWORD PTR [rax]
  4008c8:	e9 73 ff ff ff       	jmp    400840 <register_tm_clones>

00000000004008cd <read_string>:
  4008cd:	55                   	push   rbp
  4008ce:	48 89 e5             	mov    rbp,rsp
  4008d1:	48 83 ec 20          	sub    rsp,0x20
  4008d5:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4008d9:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  4008dc:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  4008df:	83 c0 01             	add    eax,0x1
  4008e2:	48 98                	cdqe   
  4008e4:	48 89 c6             	mov    rsi,rax
  4008e7:	bf 01 00 00 00       	mov    edi,0x1
  4008ec:	e8 8f fe ff ff       	call   400780 <calloc@plt>
  4008f1:	48 89 c2             	mov    rdx,rax
  4008f4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4008f8:	48 89 10             	mov    QWORD PTR [rax],rdx
  4008fb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4008ff:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400902:	48 85 c0             	test   rax,rax
  400905:	75 59                	jne    400960 <read_string+0x93>
  400907:	e8 04 fe ff ff       	call   400710 <__errno_location@plt>
  40090c:	8b 00                	mov    eax,DWORD PTR [rax]
  40090e:	85 c0                	test   eax,eax
  400910:	74 10                	je     400922 <read_string+0x55>
  400912:	e8 f9 fd ff ff       	call   400710 <__errno_location@plt>
  400917:	8b 00                	mov    eax,DWORD PTR [rax]
  400919:	89 c7                	mov    edi,eax
  40091b:	e8 b0 fe ff ff       	call   4007d0 <strerror@plt>
  400920:	eb 05                	jmp    400927 <read_string+0x5a>
  400922:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400927:	48 8b 3d 72 17 20 00 	mov    rdi,QWORD PTR [rip+0x201772]        # 6020a0 <stderr@@GLIBC_2.2.5>
  40092e:	49 89 c1             	mov    r9,rax
  400931:	41 b8 ac 15 40 00    	mov    r8d,0x4015ac
  400937:	b9 16 00 00 00       	mov    ecx,0x16
  40093c:	ba dd 12 40 00       	mov    edx,0x4012dd
  400941:	be e8 12 40 00       	mov    esi,0x4012e8
  400946:	b8 00 00 00 00       	mov    eax,0x0
  40094b:	e8 40 fe ff ff       	call   400790 <fprintf@plt>
  400950:	e8 bb fd ff ff       	call   400710 <__errno_location@plt>
  400955:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  40095b:	e9 83 00 00 00       	jmp    4009e3 <read_string+0x116>
  400960:	48 8b 15 31 17 20 00 	mov    rdx,QWORD PTR [rip+0x201731]        # 602098 <__TMC_END__>
  400967:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40096b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40096e:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
  400971:	89 ce                	mov    esi,ecx
  400973:	48 89 c7             	mov    rdi,rax
  400976:	e8 f5 fd ff ff       	call   400770 <fgets@plt>
  40097b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40097f:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400984:	75 56                	jne    4009dc <read_string+0x10f>
  400986:	e8 85 fd ff ff       	call   400710 <__errno_location@plt>
  40098b:	8b 00                	mov    eax,DWORD PTR [rax]
  40098d:	85 c0                	test   eax,eax
  40098f:	74 10                	je     4009a1 <read_string+0xd4>
  400991:	e8 7a fd ff ff       	call   400710 <__errno_location@plt>
  400996:	8b 00                	mov    eax,DWORD PTR [rax]
  400998:	89 c7                	mov    edi,eax
  40099a:	e8 31 fe ff ff       	call   4007d0 <strerror@plt>
  40099f:	eb 05                	jmp    4009a6 <read_string+0xd9>
  4009a1:	b8 d8 12 40 00       	mov    eax,0x4012d8
  4009a6:	48 8b 3d f3 16 20 00 	mov    rdi,QWORD PTR [rip+0x2016f3]        # 6020a0 <stderr@@GLIBC_2.2.5>
  4009ad:	49 89 c1             	mov    r9,rax
  4009b0:	41 b8 ac 15 40 00    	mov    r8d,0x4015ac
  4009b6:	b9 19 00 00 00       	mov    ecx,0x19
  4009bb:	ba dd 12 40 00       	mov    edx,0x4012dd
  4009c0:	be 18 13 40 00       	mov    esi,0x401318
  4009c5:	b8 00 00 00 00       	mov    eax,0x0
  4009ca:	e8 c1 fd ff ff       	call   400790 <fprintf@plt>
  4009cf:	e8 3c fd ff ff       	call   400710 <__errno_location@plt>
  4009d4:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  4009da:	eb 07                	jmp    4009e3 <read_string+0x116>
  4009dc:	b8 00 00 00 00       	mov    eax,0x0
  4009e1:	eb 2b                	jmp    400a0e <read_string+0x141>
  4009e3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4009e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4009ea:	48 85 c0             	test   rax,rax
  4009ed:	74 0f                	je     4009fe <read_string+0x131>
  4009ef:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4009f3:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4009f6:	48 89 c7             	mov    rdi,rax
  4009f9:	e8 02 fd ff ff       	call   400700 <free@plt>
  4009fe:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400a02:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
  400a09:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400a0e:	c9                   	leave  
  400a0f:	c3                   	ret    

0000000000400a10 <read_int>:
  400a10:	55                   	push   rbp
  400a11:	48 89 e5             	mov    rbp,rsp
  400a14:	48 83 ec 20          	sub    rsp,0x20
  400a18:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400a1c:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  400a23:	00 
  400a24:	48 8d 45 f8          	lea    rax,[rbp-0x8]
  400a28:	be 64 00 00 00       	mov    esi,0x64
  400a2d:	48 89 c7             	mov    rdi,rax
  400a30:	e8 98 fe ff ff       	call   4008cd <read_string>
  400a35:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  400a38:	83 7d f4 00          	cmp    DWORD PTR [rbp-0xc],0x0
  400a3c:	74 60                	je     400a9e <read_int+0x8e>
  400a3e:	e8 cd fc ff ff       	call   400710 <__errno_location@plt>
  400a43:	8b 00                	mov    eax,DWORD PTR [rax]
  400a45:	85 c0                	test   eax,eax
  400a47:	74 10                	je     400a59 <read_int+0x49>
  400a49:	e8 c2 fc ff ff       	call   400710 <__errno_location@plt>
  400a4e:	8b 00                	mov    eax,DWORD PTR [rax]
  400a50:	89 c7                	mov    edi,eax
  400a52:	e8 79 fd ff ff       	call   4007d0 <strerror@plt>
  400a57:	eb 05                	jmp    400a5e <read_int+0x4e>
  400a59:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400a5e:	48 8b 3d 3b 16 20 00 	mov    rdi,QWORD PTR [rip+0x20163b]        # 6020a0 <stderr@@GLIBC_2.2.5>
  400a65:	49 89 c1             	mov    r9,rax
  400a68:	41 b8 b8 15 40 00    	mov    r8d,0x4015b8
  400a6e:	b9 27 00 00 00       	mov    ecx,0x27
  400a73:	ba dd 12 40 00       	mov    edx,0x4012dd
  400a78:	be 48 13 40 00       	mov    esi,0x401348
  400a7d:	b8 00 00 00 00       	mov    eax,0x0
  400a82:	e8 09 fd ff ff       	call   400790 <fprintf@plt>
  400a87:	e8 84 fc ff ff       	call   400710 <__errno_location@plt>
  400a8c:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  400a92:	90                   	nop
  400a93:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400a97:	48 85 c0             	test   rax,rax
  400a9a:	74 33                	je     400acf <read_int+0xbf>
  400a9c:	eb 25                	jmp    400ac3 <read_int+0xb3>
  400a9e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400aa2:	48 89 c7             	mov    rdi,rax
  400aa5:	e8 16 fd ff ff       	call   4007c0 <atoi@plt>
  400aaa:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  400aae:	89 02                	mov    DWORD PTR [rdx],eax
  400ab0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ab4:	48 89 c7             	mov    rdi,rax
  400ab7:	e8 44 fc ff ff       	call   400700 <free@plt>
  400abc:	b8 00 00 00 00       	mov    eax,0x0
  400ac1:	eb 11                	jmp    400ad4 <read_int+0xc4>
  400ac3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ac7:	48 89 c7             	mov    rdi,rax
  400aca:	e8 31 fc ff ff       	call   400700 <free@plt>
  400acf:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400ad4:	c9                   	leave  
  400ad5:	c3                   	ret    

0000000000400ad6 <read_scan>:
  400ad6:	55                   	push   rbp
  400ad7:	48 89 e5             	mov    rbp,rsp
  400ada:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  400ae1:	48 89 b5 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rsi
  400ae8:	48 89 95 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rdx
  400aef:	48 89 8d 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rcx
  400af6:	4c 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],r8
  400afd:	4c 89 8d 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],r9
  400b04:	84 c0                	test   al,al
  400b06:	74 20                	je     400b28 <read_scan+0x52>
  400b08:	0f 29 45 80          	movaps XMMWORD PTR [rbp-0x80],xmm0
  400b0c:	0f 29 4d 90          	movaps XMMWORD PTR [rbp-0x70],xmm1
  400b10:	0f 29 55 a0          	movaps XMMWORD PTR [rbp-0x60],xmm2
  400b14:	0f 29 5d b0          	movaps XMMWORD PTR [rbp-0x50],xmm3
  400b18:	0f 29 65 c0          	movaps XMMWORD PTR [rbp-0x40],xmm4
  400b1c:	0f 29 6d d0          	movaps XMMWORD PTR [rbp-0x30],xmm5
  400b20:	0f 29 75 e0          	movaps XMMWORD PTR [rbp-0x20],xmm6
  400b24:	0f 29 7d f0          	movaps XMMWORD PTR [rbp-0x10],xmm7
  400b28:	48 89 bd 08 ff ff ff 	mov    QWORD PTR [rbp-0xf8],rdi
  400b2f:	c7 85 14 ff ff ff 00 	mov    DWORD PTR [rbp-0xec],0x0
  400b36:	00 00 00 
  400b39:	c7 85 18 ff ff ff 00 	mov    DWORD PTR [rbp-0xe8],0x0
  400b40:	00 00 00 
  400b43:	48 c7 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],0x0
  400b4a:	00 00 00 00 
  400b4e:	48 c7 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],0x0
  400b55:	00 00 00 00 
  400b59:	48 c7 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],0x0
  400b60:	00 00 00 00 
  400b64:	c7 85 1c ff ff ff 00 	mov    DWORD PTR [rbp-0xe4],0x0
  400b6b:	00 00 00 
  400b6e:	c7 85 38 ff ff ff 08 	mov    DWORD PTR [rbp-0xc8],0x8
  400b75:	00 00 00 
  400b78:	c7 85 3c ff ff ff 30 	mov    DWORD PTR [rbp-0xc4],0x30
  400b7f:	00 00 00 
  400b82:	48 8d 45 10          	lea    rax,[rbp+0x10]
  400b86:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  400b8d:	48 8d 85 50 ff ff ff 	lea    rax,[rbp-0xb0]
  400b94:	48 89 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rax
  400b9b:	c7 85 14 ff ff ff 00 	mov    DWORD PTR [rbp-0xec],0x0
  400ba2:	00 00 00 
  400ba5:	e9 fc 03 00 00       	jmp    400fa6 <read_scan+0x4d0>
  400baa:	8b 85 14 ff ff ff    	mov    eax,DWORD PTR [rbp-0xec]
  400bb0:	48 63 d0             	movsxd rdx,eax
  400bb3:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  400bba:	48 01 d0             	add    rax,rdx
  400bbd:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400bc0:	3c 25                	cmp    al,0x25
  400bc2:	0f 85 4c 03 00 00    	jne    400f14 <read_scan+0x43e>
  400bc8:	83 85 14 ff ff ff 01 	add    DWORD PTR [rbp-0xec],0x1
  400bcf:	8b 85 14 ff ff ff    	mov    eax,DWORD PTR [rbp-0xec]
  400bd5:	48 63 d0             	movsxd rdx,eax
  400bd8:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  400bdf:	48 01 d0             	add    rax,rdx
  400be2:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400be5:	0f be c0             	movsx  eax,al
  400be8:	83 f8 63             	cmp    eax,0x63
  400beb:	0f 84 43 01 00 00    	je     400d34 <read_scan+0x25e>
  400bf1:	83 f8 63             	cmp    eax,0x63
  400bf4:	7f 09                	jg     400bff <read_scan+0x129>
  400bf6:	85 c0                	test   eax,eax
  400bf8:	74 18                	je     400c12 <read_scan+0x13c>
  400bfa:	e9 ba 02 00 00       	jmp    400eb9 <read_scan+0x3e3>
  400bff:	83 f8 64             	cmp    eax,0x64
  400c02:	74 67                	je     400c6b <read_scan+0x195>
  400c04:	83 f8 73             	cmp    eax,0x73
  400c07:	0f 84 93 01 00 00    	je     400da0 <read_scan+0x2ca>
  400c0d:	e9 a7 02 00 00       	jmp    400eb9 <read_scan+0x3e3>
  400c12:	e8 f9 fa ff ff       	call   400710 <__errno_location@plt>
  400c17:	8b 00                	mov    eax,DWORD PTR [rax]
  400c19:	85 c0                	test   eax,eax
  400c1b:	74 10                	je     400c2d <read_scan+0x157>
  400c1d:	e8 ee fa ff ff       	call   400710 <__errno_location@plt>
  400c22:	8b 00                	mov    eax,DWORD PTR [rax]
  400c24:	89 c7                	mov    edi,eax
  400c26:	e8 a5 fb ff ff       	call   4007d0 <strerror@plt>
  400c2b:	eb 05                	jmp    400c32 <read_scan+0x15c>
  400c2d:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400c32:	48 8b 3d 67 14 20 00 	mov    rdi,QWORD PTR [rip+0x201467]        # 6020a0 <stderr@@GLIBC_2.2.5>
  400c39:	49 89 c1             	mov    r9,rax
  400c3c:	41 b8 c1 15 40 00    	mov    r8d,0x4015c1
  400c42:	b9 47 00 00 00       	mov    ecx,0x47
  400c47:	ba dd 12 40 00       	mov    edx,0x4012dd
  400c4c:	be 80 13 40 00       	mov    esi,0x401380
  400c51:	b8 00 00 00 00       	mov    eax,0x0
  400c56:	e8 35 fb ff ff       	call   400790 <fprintf@plt>
  400c5b:	e8 b0 fa ff ff       	call   400710 <__errno_location@plt>
  400c60:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  400c66:	e9 60 03 00 00       	jmp    400fcb <read_scan+0x4f5>
  400c6b:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400c71:	83 f8 30             	cmp    eax,0x30
  400c74:	73 23                	jae    400c99 <read_scan+0x1c3>
  400c76:	48 8b 95 48 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xb8]
  400c7d:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400c83:	89 c0                	mov    eax,eax
  400c85:	48 01 d0             	add    rax,rdx
  400c88:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
  400c8e:	83 c2 08             	add    edx,0x8
  400c91:	89 95 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],edx
  400c97:	eb 15                	jmp    400cae <read_scan+0x1d8>
  400c99:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
  400ca0:	48 89 d0             	mov    rax,rdx
  400ca3:	48 83 c2 08          	add    rdx,0x8
  400ca7:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  400cae:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400cb1:	48 89 85 20 ff ff ff 	mov    QWORD PTR [rbp-0xe0],rax
  400cb8:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
  400cbf:	48 89 c7             	mov    rdi,rax
  400cc2:	e8 49 fd ff ff       	call   400a10 <read_int>
  400cc7:	89 85 18 ff ff ff    	mov    DWORD PTR [rbp-0xe8],eax
  400ccd:	83 bd 18 ff ff ff 00 	cmp    DWORD PTR [rbp-0xe8],0x0
  400cd4:	74 59                	je     400d2f <read_scan+0x259>
  400cd6:	e8 35 fa ff ff       	call   400710 <__errno_location@plt>
  400cdb:	8b 00                	mov    eax,DWORD PTR [rax]
  400cdd:	85 c0                	test   eax,eax
  400cdf:	74 10                	je     400cf1 <read_scan+0x21b>
  400ce1:	e8 2a fa ff ff       	call   400710 <__errno_location@plt>
  400ce6:	8b 00                	mov    eax,DWORD PTR [rax]
  400ce8:	89 c7                	mov    edi,eax
  400cea:	e8 e1 fa ff ff       	call   4007d0 <strerror@plt>
  400cef:	eb 05                	jmp    400cf6 <read_scan+0x220>
  400cf1:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400cf6:	48 8b 3d a3 13 20 00 	mov    rdi,QWORD PTR [rip+0x2013a3]        # 6020a0 <stderr@@GLIBC_2.2.5>
  400cfd:	49 89 c1             	mov    r9,rax
  400d00:	41 b8 c1 15 40 00    	mov    r8d,0x4015c1
  400d06:	b9 4c 00 00 00       	mov    ecx,0x4c
  400d0b:	ba dd 12 40 00       	mov    edx,0x4012dd
  400d10:	be c8 13 40 00       	mov    esi,0x4013c8
  400d15:	b8 00 00 00 00       	mov    eax,0x0
  400d1a:	e8 71 fa ff ff       	call   400790 <fprintf@plt>
  400d1f:	e8 ec f9 ff ff       	call   400710 <__errno_location@plt>
  400d24:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  400d2a:	e9 9c 02 00 00       	jmp    400fcb <read_scan+0x4f5>
  400d2f:	e9 de 01 00 00       	jmp    400f12 <read_scan+0x43c>
  400d34:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400d3a:	83 f8 30             	cmp    eax,0x30
  400d3d:	73 23                	jae    400d62 <read_scan+0x28c>
  400d3f:	48 8b 95 48 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xb8]
  400d46:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400d4c:	89 c0                	mov    eax,eax
  400d4e:	48 01 d0             	add    rax,rdx
  400d51:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
  400d57:	83 c2 08             	add    edx,0x8
  400d5a:	89 95 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],edx
  400d60:	eb 15                	jmp    400d77 <read_scan+0x2a1>
  400d62:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
  400d69:	48 89 d0             	mov    rax,rdx
  400d6c:	48 83 c2 08          	add    rdx,0x8
  400d70:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  400d77:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400d7a:	48 89 85 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],rax
  400d81:	48 8b 05 10 13 20 00 	mov    rax,QWORD PTR [rip+0x201310]        # 602098 <__TMC_END__>
  400d88:	48 89 c7             	mov    rdi,rax
  400d8b:	e8 c0 f9 ff ff       	call   400750 <fgetc@plt>
  400d90:	89 c2                	mov    edx,eax
  400d92:	48 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd8]
  400d99:	88 10                	mov    BYTE PTR [rax],dl
  400d9b:	e9 72 01 00 00       	jmp    400f12 <read_scan+0x43c>
  400da0:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400da6:	83 f8 30             	cmp    eax,0x30
  400da9:	73 23                	jae    400dce <read_scan+0x2f8>
  400dab:	48 8b 95 48 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xb8]
  400db2:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400db8:	89 c0                	mov    eax,eax
  400dba:	48 01 d0             	add    rax,rdx
  400dbd:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
  400dc3:	83 c2 08             	add    edx,0x8
  400dc6:	89 95 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],edx
  400dcc:	eb 15                	jmp    400de3 <read_scan+0x30d>
  400dce:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
  400dd5:	48 89 d0             	mov    rax,rdx
  400dd8:	48 83 c2 08          	add    rdx,0x8
  400ddc:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  400de3:	8b 00                	mov    eax,DWORD PTR [rax]
  400de5:	89 85 1c ff ff ff    	mov    DWORD PTR [rbp-0xe4],eax
  400deb:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400df1:	83 f8 30             	cmp    eax,0x30
  400df4:	73 23                	jae    400e19 <read_scan+0x343>
  400df6:	48 8b 95 48 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xb8]
  400dfd:	8b 85 38 ff ff ff    	mov    eax,DWORD PTR [rbp-0xc8]
  400e03:	89 c0                	mov    eax,eax
  400e05:	48 01 d0             	add    rax,rdx
  400e08:	8b 95 38 ff ff ff    	mov    edx,DWORD PTR [rbp-0xc8]
  400e0e:	83 c2 08             	add    edx,0x8
  400e11:	89 95 38 ff ff ff    	mov    DWORD PTR [rbp-0xc8],edx
  400e17:	eb 15                	jmp    400e2e <read_scan+0x358>
  400e19:	48 8b 95 40 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xc0]
  400e20:	48 89 d0             	mov    rax,rdx
  400e23:	48 83 c2 08          	add    rdx,0x8
  400e27:	48 89 95 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rdx
  400e2e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400e31:	48 89 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rax
  400e38:	8b 95 1c ff ff ff    	mov    edx,DWORD PTR [rbp-0xe4]
  400e3e:	48 8b 85 30 ff ff ff 	mov    rax,QWORD PTR [rbp-0xd0]
  400e45:	89 d6                	mov    esi,edx
  400e47:	48 89 c7             	mov    rdi,rax
  400e4a:	e8 7e fa ff ff       	call   4008cd <read_string>
  400e4f:	89 85 18 ff ff ff    	mov    DWORD PTR [rbp-0xe8],eax
  400e55:	83 bd 18 ff ff ff 00 	cmp    DWORD PTR [rbp-0xe8],0x0
  400e5c:	74 59                	je     400eb7 <read_scan+0x3e1>
  400e5e:	e8 ad f8 ff ff       	call   400710 <__errno_location@plt>
  400e63:	8b 00                	mov    eax,DWORD PTR [rax]
  400e65:	85 c0                	test   eax,eax
  400e67:	74 10                	je     400e79 <read_scan+0x3a3>
  400e69:	e8 a2 f8 ff ff       	call   400710 <__errno_location@plt>
  400e6e:	8b 00                	mov    eax,DWORD PTR [rax]
  400e70:	89 c7                	mov    edi,eax
  400e72:	e8 59 f9 ff ff       	call   4007d0 <strerror@plt>
  400e77:	eb 05                	jmp    400e7e <read_scan+0x3a8>
  400e79:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400e7e:	48 8b 3d 1b 12 20 00 	mov    rdi,QWORD PTR [rip+0x20121b]        # 6020a0 <stderr@@GLIBC_2.2.5>
  400e85:	49 89 c1             	mov    r9,rax
  400e88:	41 b8 c1 15 40 00    	mov    r8d,0x4015c1
  400e8e:	b9 56 00 00 00       	mov    ecx,0x56
  400e93:	ba dd 12 40 00       	mov    edx,0x4012dd
  400e98:	be 00 14 40 00       	mov    esi,0x401400
  400e9d:	b8 00 00 00 00       	mov    eax,0x0
  400ea2:	e8 e9 f8 ff ff       	call   400790 <fprintf@plt>
  400ea7:	e8 64 f8 ff ff       	call   400710 <__errno_location@plt>
  400eac:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  400eb2:	e9 14 01 00 00       	jmp    400fcb <read_scan+0x4f5>
  400eb7:	eb 59                	jmp    400f12 <read_scan+0x43c>
  400eb9:	e8 52 f8 ff ff       	call   400710 <__errno_location@plt>
  400ebe:	8b 00                	mov    eax,DWORD PTR [rax]
  400ec0:	85 c0                	test   eax,eax
  400ec2:	74 10                	je     400ed4 <read_scan+0x3fe>
  400ec4:	e8 47 f8 ff ff       	call   400710 <__errno_location@plt>
  400ec9:	8b 00                	mov    eax,DWORD PTR [rax]
  400ecb:	89 c7                	mov    edi,eax
  400ecd:	e8 fe f8 ff ff       	call   4007d0 <strerror@plt>
  400ed2:	eb 05                	jmp    400ed9 <read_scan+0x403>
  400ed4:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400ed9:	48 8b 3d c0 11 20 00 	mov    rdi,QWORD PTR [rip+0x2011c0]        # 6020a0 <stderr@@GLIBC_2.2.5>
  400ee0:	49 89 c1             	mov    r9,rax
  400ee3:	41 b8 c1 15 40 00    	mov    r8d,0x4015c1
  400ee9:	b9 59 00 00 00       	mov    ecx,0x59
  400eee:	ba dd 12 40 00       	mov    edx,0x4012dd
  400ef3:	be 38 14 40 00       	mov    esi,0x401438
  400ef8:	b8 00 00 00 00       	mov    eax,0x0
  400efd:	e8 8e f8 ff ff       	call   400790 <fprintf@plt>
  400f02:	e8 09 f8 ff ff       	call   400710 <__errno_location@plt>
  400f07:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  400f0d:	e9 b9 00 00 00       	jmp    400fcb <read_scan+0x4f5>
  400f12:	eb 0f                	jmp    400f23 <read_scan+0x44d>
  400f14:	48 8b 05 7d 11 20 00 	mov    rax,QWORD PTR [rip+0x20117d]        # 602098 <__TMC_END__>
  400f1b:	48 89 c7             	mov    rdi,rax
  400f1e:	e8 2d f8 ff ff       	call   400750 <fgetc@plt>
  400f23:	48 8b 05 6e 11 20 00 	mov    rax,QWORD PTR [rip+0x20116e]        # 602098 <__TMC_END__>
  400f2a:	48 89 c7             	mov    rdi,rax
  400f2d:	e8 6e f8 ff ff       	call   4007a0 <feof@plt>
  400f32:	85 c0                	test   eax,eax
  400f34:	75 13                	jne    400f49 <read_scan+0x473>
  400f36:	48 8b 05 5b 11 20 00 	mov    rax,QWORD PTR [rip+0x20115b]        # 602098 <__TMC_END__>
  400f3d:	48 89 c7             	mov    rdi,rax
  400f40:	e8 eb f7 ff ff       	call   400730 <ferror@plt>
  400f45:	85 c0                	test   eax,eax
  400f47:	74 56                	je     400f9f <read_scan+0x4c9>
  400f49:	e8 c2 f7 ff ff       	call   400710 <__errno_location@plt>
  400f4e:	8b 00                	mov    eax,DWORD PTR [rax]
  400f50:	85 c0                	test   eax,eax
  400f52:	74 10                	je     400f64 <read_scan+0x48e>
  400f54:	e8 b7 f7 ff ff       	call   400710 <__errno_location@plt>
  400f59:	8b 00                	mov    eax,DWORD PTR [rax]
  400f5b:	89 c7                	mov    edi,eax
  400f5d:	e8 6e f8 ff ff       	call   4007d0 <strerror@plt>
  400f62:	eb 05                	jmp    400f69 <read_scan+0x493>
  400f64:	b8 d8 12 40 00       	mov    eax,0x4012d8
  400f69:	48 8b 3d 30 11 20 00 	mov    rdi,QWORD PTR [rip+0x201130]        # 6020a0 <stderr@@GLIBC_2.2.5>
  400f70:	49 89 c1             	mov    r9,rax
  400f73:	41 b8 c1 15 40 00    	mov    r8d,0x4015c1
  400f79:	b9 61 00 00 00       	mov    ecx,0x61
  400f7e:	ba dd 12 40 00       	mov    edx,0x4012dd
  400f83:	be 18 13 40 00       	mov    esi,0x401318
  400f88:	b8 00 00 00 00       	mov    eax,0x0
  400f8d:	e8 fe f7 ff ff       	call   400790 <fprintf@plt>
  400f92:	e8 79 f7 ff ff       	call   400710 <__errno_location@plt>
  400f97:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  400f9d:	eb 2c                	jmp    400fcb <read_scan+0x4f5>
  400f9f:	83 85 14 ff ff ff 01 	add    DWORD PTR [rbp-0xec],0x1
  400fa6:	8b 85 14 ff ff ff    	mov    eax,DWORD PTR [rbp-0xec]
  400fac:	48 63 d0             	movsxd rdx,eax
  400faf:	48 8b 85 08 ff ff ff 	mov    rax,QWORD PTR [rbp-0xf8]
  400fb6:	48 01 d0             	add    rax,rdx
  400fb9:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400fbc:	84 c0                	test   al,al
  400fbe:	0f 85 e6 fb ff ff    	jne    400baa <read_scan+0xd4>
  400fc4:	b8 00 00 00 00       	mov    eax,0x0
  400fc9:	eb 05                	jmp    400fd0 <read_scan+0x4fa>
  400fcb:	b8 ff ff ff ff       	mov    eax,0xffffffff
  400fd0:	c9                   	leave  
  400fd1:	c3                   	ret    

0000000000400fd2 <main>:
  400fd2:	55                   	push   rbp
  400fd3:	48 89 e5             	mov    rbp,rsp
  400fd6:	48 83 ec 30          	sub    rsp,0x30
  400fda:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
  400fdd:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  400fe1:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  400fe8:	00 
  400fe9:	c6 45 e7 20          	mov    BYTE PTR [rbp-0x19],0x20
  400fed:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  400ff4:	00 
  400ff5:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  400ffc:	bf 65 14 40 00       	mov    edi,0x401465
  401001:	b8 00 00 00 00       	mov    eax,0x0
  401006:	e8 35 f7 ff ff       	call   400740 <printf@plt>
  40100b:	48 8d 45 f0          	lea    rax,[rbp-0x10]
  40100f:	48 89 c2             	mov    rdx,rax
  401012:	be 64 00 00 00       	mov    esi,0x64
  401017:	bf 7e 14 40 00       	mov    edi,0x40147e
  40101c:	b8 00 00 00 00       	mov    eax,0x0
  401021:	e8 b0 fa ff ff       	call   400ad6 <read_scan>
  401026:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401029:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  40102d:	74 59                	je     401088 <main+0xb6>
  40102f:	e8 dc f6 ff ff       	call   400710 <__errno_location@plt>
  401034:	8b 00                	mov    eax,DWORD PTR [rax]
  401036:	85 c0                	test   eax,eax
  401038:	74 10                	je     40104a <main+0x78>
  40103a:	e8 d1 f6 ff ff       	call   400710 <__errno_location@plt>
  40103f:	8b 00                	mov    eax,DWORD PTR [rax]
  401041:	89 c7                	mov    edi,eax
  401043:	e8 88 f7 ff ff       	call   4007d0 <strerror@plt>
  401048:	eb 05                	jmp    40104f <main+0x7d>
  40104a:	b8 d8 12 40 00       	mov    eax,0x4012d8
  40104f:	48 8b 3d 4a 10 20 00 	mov    rdi,QWORD PTR [rip+0x20104a]        # 6020a0 <stderr@@GLIBC_2.2.5>
  401056:	49 89 c1             	mov    r9,rax
  401059:	41 b8 cb 15 40 00    	mov    r8d,0x4015cb
  40105f:	b9 75 00 00 00       	mov    ecx,0x75
  401064:	ba dd 12 40 00       	mov    edx,0x4012dd
  401069:	be 88 14 40 00       	mov    esi,0x401488
  40106e:	b8 00 00 00 00       	mov    eax,0x0
  401073:	e8 18 f7 ff ff       	call   400790 <fprintf@plt>
  401078:	e8 93 f6 ff ff       	call   400710 <__errno_location@plt>
  40107d:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  401083:	e9 bc 01 00 00       	jmp    401244 <main+0x272>
  401088:	bf b9 14 40 00       	mov    edi,0x4014b9
  40108d:	b8 00 00 00 00       	mov    eax,0x0
  401092:	e8 a9 f6 ff ff       	call   400740 <printf@plt>
  401097:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  40109b:	48 89 c6             	mov    rsi,rax
  40109e:	bf cf 14 40 00       	mov    edi,0x4014cf
  4010a3:	b8 00 00 00 00       	mov    eax,0x0
  4010a8:	e8 29 fa ff ff       	call   400ad6 <read_scan>
  4010ad:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  4010b0:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  4010b4:	74 59                	je     40110f <main+0x13d>
  4010b6:	e8 55 f6 ff ff       	call   400710 <__errno_location@plt>
  4010bb:	8b 00                	mov    eax,DWORD PTR [rax]
  4010bd:	85 c0                	test   eax,eax
  4010bf:	74 10                	je     4010d1 <main+0xff>
  4010c1:	e8 4a f6 ff ff       	call   400710 <__errno_location@plt>
  4010c6:	8b 00                	mov    eax,DWORD PTR [rax]
  4010c8:	89 c7                	mov    edi,eax
  4010ca:	e8 01 f7 ff ff       	call   4007d0 <strerror@plt>
  4010cf:	eb 05                	jmp    4010d6 <main+0x104>
  4010d1:	b8 d8 12 40 00       	mov    eax,0x4012d8
  4010d6:	48 8b 3d c3 0f 20 00 	mov    rdi,QWORD PTR [rip+0x200fc3]        # 6020a0 <stderr@@GLIBC_2.2.5>
  4010dd:	49 89 c1             	mov    r9,rax
  4010e0:	41 b8 cb 15 40 00    	mov    r8d,0x4015cb
  4010e6:	b9 79 00 00 00       	mov    ecx,0x79
  4010eb:	ba dd 12 40 00       	mov    edx,0x4012dd
  4010f0:	be d8 14 40 00       	mov    esi,0x4014d8
  4010f5:	b8 00 00 00 00       	mov    eax,0x0
  4010fa:	e8 91 f6 ff ff       	call   400790 <fprintf@plt>
  4010ff:	e8 0c f6 ff ff       	call   400710 <__errno_location@plt>
  401104:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  40110a:	e9 35 01 00 00       	jmp    401244 <main+0x272>
  40110f:	bf 06 15 40 00       	mov    edi,0x401506
  401114:	b8 00 00 00 00       	mov    eax,0x0
  401119:	e8 22 f6 ff ff       	call   400740 <printf@plt>
  40111e:	48 8d 45 f8          	lea    rax,[rbp-0x8]
  401122:	48 89 c2             	mov    rdx,rax
  401125:	be 64 00 00 00       	mov    esi,0x64
  40112a:	bf 7e 14 40 00       	mov    edi,0x40147e
  40112f:	b8 00 00 00 00       	mov    eax,0x0
  401134:	e8 9d f9 ff ff       	call   400ad6 <read_scan>
  401139:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  40113c:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  401140:	74 59                	je     40119b <main+0x1c9>
  401142:	e8 c9 f5 ff ff       	call   400710 <__errno_location@plt>
  401147:	8b 00                	mov    eax,DWORD PTR [rax]
  401149:	85 c0                	test   eax,eax
  40114b:	74 10                	je     40115d <main+0x18b>
  40114d:	e8 be f5 ff ff       	call   400710 <__errno_location@plt>
  401152:	8b 00                	mov    eax,DWORD PTR [rax]
  401154:	89 c7                	mov    edi,eax
  401156:	e8 75 f6 ff ff       	call   4007d0 <strerror@plt>
  40115b:	eb 05                	jmp    401162 <main+0x190>
  40115d:	b8 d8 12 40 00       	mov    eax,0x4012d8
  401162:	48 8b 3d 37 0f 20 00 	mov    rdi,QWORD PTR [rip+0x200f37]        # 6020a0 <stderr@@GLIBC_2.2.5>
  401169:	49 89 c1             	mov    r9,rax
  40116c:	41 b8 cb 15 40 00    	mov    r8d,0x4015cb
  401172:	b9 7d 00 00 00       	mov    ecx,0x7d
  401177:	ba dd 12 40 00       	mov    edx,0x4012dd
  40117c:	be 20 15 40 00       	mov    esi,0x401520
  401181:	b8 00 00 00 00       	mov    eax,0x0
  401186:	e8 05 f6 ff ff       	call   400790 <fprintf@plt>
  40118b:	e8 80 f5 ff ff       	call   400710 <__errno_location@plt>
  401190:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  401196:	e9 a9 00 00 00       	jmp    401244 <main+0x272>
  40119b:	bf 50 15 40 00       	mov    edi,0x401550
  4011a0:	b8 00 00 00 00       	mov    eax,0x0
  4011a5:	e8 96 f5 ff ff       	call   400740 <printf@plt>
  4011aa:	48 8d 45 e8          	lea    rax,[rbp-0x18]
  4011ae:	48 89 c6             	mov    rsi,rax
  4011b1:	bf 62 15 40 00       	mov    edi,0x401562
  4011b6:	b8 00 00 00 00       	mov    eax,0x0
  4011bb:	e8 16 f9 ff ff       	call   400ad6 <read_scan>
  4011c0:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  4011c3:	bf 65 15 40 00       	mov    edi,0x401565
  4011c8:	e8 53 f5 ff ff       	call   400720 <puts@plt>
  4011cd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4011d1:	48 89 c6             	mov    rsi,rax
  4011d4:	bf 77 15 40 00       	mov    edi,0x401577
  4011d9:	b8 00 00 00 00       	mov    eax,0x0
  4011de:	e8 5d f5 ff ff       	call   400740 <printf@plt>
  4011e3:	0f b6 45 e7          	movzx  eax,BYTE PTR [rbp-0x19]
  4011e7:	0f be c0             	movsx  eax,al
  4011ea:	89 c6                	mov    esi,eax
  4011ec:	bf 86 15 40 00       	mov    edi,0x401586
  4011f1:	b8 00 00 00 00       	mov    eax,0x0
  4011f6:	e8 45 f5 ff ff       	call   400740 <printf@plt>
  4011fb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4011ff:	48 89 c6             	mov    rsi,rax
  401202:	bf 95 15 40 00       	mov    edi,0x401595
  401207:	b8 00 00 00 00       	mov    eax,0x0
  40120c:	e8 2f f5 ff ff       	call   400740 <printf@plt>
  401211:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  401214:	89 c6                	mov    esi,eax
  401216:	bf a3 15 40 00       	mov    edi,0x4015a3
  40121b:	b8 00 00 00 00       	mov    eax,0x0
  401220:	e8 1b f5 ff ff       	call   400740 <printf@plt>
  401225:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401229:	48 89 c7             	mov    rdi,rax
  40122c:	e8 cf f4 ff ff       	call   400700 <free@plt>
  401231:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401235:	48 89 c7             	mov    rdi,rax
  401238:	e8 c3 f4 ff ff       	call   400700 <free@plt>
  40123d:	b8 00 00 00 00       	mov    eax,0x0
  401242:	eb 05                	jmp    401249 <main+0x277>
  401244:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401249:	c9                   	leave  
  40124a:	c3                   	ret    
  40124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401250 <__libc_csu_init>:
  401250:	41 57                	push   r15
  401252:	41 89 ff             	mov    r15d,edi
  401255:	41 56                	push   r14
  401257:	49 89 f6             	mov    r14,rsi
  40125a:	41 55                	push   r13
  40125c:	49 89 d5             	mov    r13,rdx
  40125f:	41 54                	push   r12
  401261:	4c 8d 25 a8 0b 20 00 	lea    r12,[rip+0x200ba8]        # 601e10 <__frame_dummy_init_array_entry>
  401268:	55                   	push   rbp
  401269:	48 8d 2d a8 0b 20 00 	lea    rbp,[rip+0x200ba8]        # 601e18 <__init_array_end>
  401270:	53                   	push   rbx
  401271:	4c 29 e5             	sub    rbp,r12
  401274:	31 db                	xor    ebx,ebx
  401276:	48 c1 fd 03          	sar    rbp,0x3
  40127a:	48 83 ec 08          	sub    rsp,0x8
  40127e:	e8 45 f4 ff ff       	call   4006c8 <_init>
  401283:	48 85 ed             	test   rbp,rbp
  401286:	74 1e                	je     4012a6 <__libc_csu_init+0x56>
  401288:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40128f:	00 
  401290:	4c 89 ea             	mov    rdx,r13
  401293:	4c 89 f6             	mov    rsi,r14
  401296:	44 89 ff             	mov    edi,r15d
  401299:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40129d:	48 83 c3 01          	add    rbx,0x1
  4012a1:	48 39 eb             	cmp    rbx,rbp
  4012a4:	75 ea                	jne    401290 <__libc_csu_init+0x40>
  4012a6:	48 83 c4 08          	add    rsp,0x8
  4012aa:	5b                   	pop    rbx
  4012ab:	5d                   	pop    rbp
  4012ac:	41 5c                	pop    r12
  4012ae:	41 5d                	pop    r13
  4012b0:	41 5e                	pop    r14
  4012b2:	41 5f                	pop    r15
  4012b4:	c3                   	ret    
  4012b5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4012bc:	00 00 00 00 

00000000004012c0 <__libc_csu_fini>:
  4012c0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004012c4 <_fini>:
  4012c4:	48 83 ec 08          	sub    rsp,0x8
  4012c8:	48 83 c4 08          	add    rsp,0x8
  4012cc:	c3                   	ret    
