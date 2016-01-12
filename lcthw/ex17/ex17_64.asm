
ex17:     file format elf64-x86-64


Disassembly of section .init:

0000000000400728 <_init>:
  400728:	48 83 ec 08          	sub    rsp,0x8
  40072c:	48 8b 05 c5 18 20 00 	mov    rax,QWORD PTR [rip+0x2018c5]        # 601ff8 <_DYNAMIC+0x1d0>
  400733:	48 85 c0             	test   rax,rax
  400736:	74 05                	je     40073d <_init+0x15>
  400738:	e8 b3 00 00 00       	call   4007f0 <__gmon_start__@plt>
  40073d:	48 83 c4 08          	add    rsp,0x8
  400741:	c3                   	ret    

Disassembly of section .plt:

0000000000400750 <free@plt-0x10>:
  400750:	ff 35 b2 18 20 00    	push   QWORD PTR [rip+0x2018b2]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400756:	ff 25 b4 18 20 00    	jmp    QWORD PTR [rip+0x2018b4]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40075c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400760 <free@plt>:
  400760:	ff 25 b2 18 20 00    	jmp    QWORD PTR [rip+0x2018b2]        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400766:	68 00 00 00 00       	push   0x0
  40076b:	e9 e0 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400770 <__errno_location@plt>:
  400770:	ff 25 aa 18 20 00    	jmp    QWORD PTR [rip+0x2018aa]        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400776:	68 01 00 00 00       	push   0x1
  40077b:	e9 d0 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400780 <strncpy@plt>:
  400780:	ff 25 a2 18 20 00    	jmp    QWORD PTR [rip+0x2018a2]        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400786:	68 02 00 00 00       	push   0x2
  40078b:	e9 c0 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400790 <fread@plt>:
  400790:	ff 25 9a 18 20 00    	jmp    QWORD PTR [rip+0x20189a]        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400796:	68 03 00 00 00       	push   0x3
  40079b:	e9 b0 ff ff ff       	jmp    400750 <_init+0x28>

00000000004007a0 <fclose@plt>:
  4007a0:	ff 25 92 18 20 00    	jmp    QWORD PTR [rip+0x201892]        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4007a6:	68 04 00 00 00       	push   0x4
  4007ab:	e9 a0 ff ff ff       	jmp    400750 <_init+0x28>

00000000004007b0 <__stack_chk_fail@plt>:
  4007b0:	ff 25 8a 18 20 00    	jmp    QWORD PTR [rip+0x20188a]        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4007b6:	68 05 00 00 00       	push   0x5
  4007bb:	e9 90 ff ff ff       	jmp    400750 <_init+0x28>

00000000004007c0 <printf@plt>:
  4007c0:	ff 25 82 18 20 00    	jmp    QWORD PTR [rip+0x201882]        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4007c6:	68 06 00 00 00       	push   0x6
  4007cb:	e9 80 ff ff ff       	jmp    400750 <_init+0x28>

00000000004007d0 <rewind@plt>:
  4007d0:	ff 25 7a 18 20 00    	jmp    QWORD PTR [rip+0x20187a]        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4007d6:	68 07 00 00 00       	push   0x7
  4007db:	e9 70 ff ff ff       	jmp    400750 <_init+0x28>

00000000004007e0 <__libc_start_main@plt>:
  4007e0:	ff 25 72 18 20 00    	jmp    QWORD PTR [rip+0x201872]        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4007e6:	68 08 00 00 00       	push   0x8
  4007eb:	e9 60 ff ff ff       	jmp    400750 <_init+0x28>

00000000004007f0 <__gmon_start__@plt>:
  4007f0:	ff 25 6a 18 20 00    	jmp    QWORD PTR [rip+0x20186a]        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  4007f6:	68 09 00 00 00       	push   0x9
  4007fb:	e9 50 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400800 <malloc@plt>:
  400800:	ff 25 62 18 20 00    	jmp    QWORD PTR [rip+0x201862]        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400806:	68 0a 00 00 00       	push   0xa
  40080b:	e9 40 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400810 <fflush@plt>:
  400810:	ff 25 5a 18 20 00    	jmp    QWORD PTR [rip+0x20185a]        # 602070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400816:	68 0b 00 00 00       	push   0xb
  40081b:	e9 30 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400820 <fopen@plt>:
  400820:	ff 25 52 18 20 00    	jmp    QWORD PTR [rip+0x201852]        # 602078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400826:	68 0c 00 00 00       	push   0xc
  40082b:	e9 20 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400830 <perror@plt>:
  400830:	ff 25 4a 18 20 00    	jmp    QWORD PTR [rip+0x20184a]        # 602080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400836:	68 0d 00 00 00       	push   0xd
  40083b:	e9 10 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400840 <atoi@plt>:
  400840:	ff 25 42 18 20 00    	jmp    QWORD PTR [rip+0x201842]        # 602088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400846:	68 0e 00 00 00       	push   0xe
  40084b:	e9 00 ff ff ff       	jmp    400750 <_init+0x28>

0000000000400850 <exit@plt>:
  400850:	ff 25 3a 18 20 00    	jmp    QWORD PTR [rip+0x20183a]        # 602090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400856:	68 0f 00 00 00       	push   0xf
  40085b:	e9 f0 fe ff ff       	jmp    400750 <_init+0x28>

0000000000400860 <fwrite@plt>:
  400860:	ff 25 32 18 20 00    	jmp    QWORD PTR [rip+0x201832]        # 602098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400866:	68 10 00 00 00       	push   0x10
  40086b:	e9 e0 fe ff ff       	jmp    400750 <_init+0x28>

Disassembly of section .text:

0000000000400870 <_start>:
  400870:	31 ed                	xor    ebp,ebp
  400872:	49 89 d1             	mov    r9,rdx
  400875:	5e                   	pop    rsi
  400876:	48 89 e2             	mov    rdx,rsp
  400879:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40087d:	50                   	push   rax
  40087e:	54                   	push   rsp
  40087f:	49 c7 c0 40 11 40 00 	mov    r8,0x401140
  400886:	48 c7 c1 d0 10 40 00 	mov    rcx,0x4010d0
  40088d:	48 c7 c7 4d 0f 40 00 	mov    rdi,0x400f4d
  400894:	e8 47 ff ff ff       	call   4007e0 <__libc_start_main@plt>
  400899:	f4                   	hlt    
  40089a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004008a0 <deregister_tm_clones>:
  4008a0:	b8 b7 20 60 00       	mov    eax,0x6020b7
  4008a5:	55                   	push   rbp
  4008a6:	48 2d b0 20 60 00    	sub    rax,0x6020b0
  4008ac:	48 83 f8 0e          	cmp    rax,0xe
  4008b0:	48 89 e5             	mov    rbp,rsp
  4008b3:	77 02                	ja     4008b7 <deregister_tm_clones+0x17>
  4008b5:	5d                   	pop    rbp
  4008b6:	c3                   	ret    
  4008b7:	b8 00 00 00 00       	mov    eax,0x0
  4008bc:	48 85 c0             	test   rax,rax
  4008bf:	74 f4                	je     4008b5 <deregister_tm_clones+0x15>
  4008c1:	5d                   	pop    rbp
  4008c2:	bf b0 20 60 00       	mov    edi,0x6020b0
  4008c7:	ff e0                	jmp    rax
  4008c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004008d0 <register_tm_clones>:
  4008d0:	b8 b0 20 60 00       	mov    eax,0x6020b0
  4008d5:	55                   	push   rbp
  4008d6:	48 2d b0 20 60 00    	sub    rax,0x6020b0
  4008dc:	48 c1 f8 03          	sar    rax,0x3
  4008e0:	48 89 e5             	mov    rbp,rsp
  4008e3:	48 89 c2             	mov    rdx,rax
  4008e6:	48 c1 ea 3f          	shr    rdx,0x3f
  4008ea:	48 01 d0             	add    rax,rdx
  4008ed:	48 d1 f8             	sar    rax,1
  4008f0:	75 02                	jne    4008f4 <register_tm_clones+0x24>
  4008f2:	5d                   	pop    rbp
  4008f3:	c3                   	ret    
  4008f4:	ba 00 00 00 00       	mov    edx,0x0
  4008f9:	48 85 d2             	test   rdx,rdx
  4008fc:	74 f4                	je     4008f2 <register_tm_clones+0x22>
  4008fe:	5d                   	pop    rbp
  4008ff:	48 89 c6             	mov    rsi,rax
  400902:	bf b0 20 60 00       	mov    edi,0x6020b0
  400907:	ff e2                	jmp    rdx
  400909:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400910 <__do_global_dtors_aux>:
  400910:	80 3d 99 17 20 00 00 	cmp    BYTE PTR [rip+0x201799],0x0        # 6020b0 <__TMC_END__>
  400917:	75 11                	jne    40092a <__do_global_dtors_aux+0x1a>
  400919:	55                   	push   rbp
  40091a:	48 89 e5             	mov    rbp,rsp
  40091d:	e8 7e ff ff ff       	call   4008a0 <deregister_tm_clones>
  400922:	5d                   	pop    rbp
  400923:	c6 05 86 17 20 00 01 	mov    BYTE PTR [rip+0x201786],0x1        # 6020b0 <__TMC_END__>
  40092a:	f3 c3                	repz ret 
  40092c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400930 <frame_dummy>:
  400930:	48 83 3d e8 14 20 00 	cmp    QWORD PTR [rip+0x2014e8],0x0        # 601e20 <__JCR_END__>
  400937:	00 
  400938:	74 1e                	je     400958 <frame_dummy+0x28>
  40093a:	b8 00 00 00 00       	mov    eax,0x0
  40093f:	48 85 c0             	test   rax,rax
  400942:	74 14                	je     400958 <frame_dummy+0x28>
  400944:	55                   	push   rbp
  400945:	bf 20 1e 60 00       	mov    edi,0x601e20
  40094a:	48 89 e5             	mov    rbp,rsp
  40094d:	ff d0                	call   rax
  40094f:	5d                   	pop    rbp
  400950:	e9 7b ff ff ff       	jmp    4008d0 <register_tm_clones>
  400955:	0f 1f 00             	nop    DWORD PTR [rax]
  400958:	e9 73 ff ff ff       	jmp    4008d0 <register_tm_clones>

000000000040095d <die>:
  40095d:	55                   	push   rbp
  40095e:	48 89 e5             	mov    rbp,rsp
  400961:	48 83 ec 10          	sub    rsp,0x10
  400965:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  400969:	e8 02 fe ff ff       	call   400770 <__errno_location@plt>
  40096e:	8b 00                	mov    eax,DWORD PTR [rax]
  400970:	85 c0                	test   eax,eax
  400972:	74 0e                	je     400982 <die+0x25>
  400974:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400978:	48 89 c7             	mov    rdi,rax
  40097b:	e8 b0 fe ff ff       	call   400830 <perror@plt>
  400980:	eb 16                	jmp    400998 <die+0x3b>
  400982:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400986:	48 89 c6             	mov    rsi,rax
  400989:	bf 58 11 40 00       	mov    edi,0x401158
  40098e:	b8 00 00 00 00       	mov    eax,0x0
  400993:	e8 28 fe ff ff       	call   4007c0 <printf@plt>
  400998:	bf 01 00 00 00       	mov    edi,0x1
  40099d:	e8 ae fe ff ff       	call   400850 <exit@plt>

00000000004009a2 <Address_print>:
  4009a2:	55                   	push   rbp
  4009a3:	48 89 e5             	mov    rbp,rsp
  4009a6:	48 83 ec 10          	sub    rsp,0x10
  4009aa:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4009ae:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4009b2:	48 8d 88 08 02 00 00 	lea    rcx,[rax+0x208]
  4009b9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4009bd:	48 8d 50 08          	lea    rdx,[rax+0x8]
  4009c1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4009c5:	8b 00                	mov    eax,DWORD PTR [rax]
  4009c7:	89 c6                	mov    esi,eax
  4009c9:	bf 63 11 40 00       	mov    edi,0x401163
  4009ce:	b8 00 00 00 00       	mov    eax,0x0
  4009d3:	e8 e8 fd ff ff       	call   4007c0 <printf@plt>
  4009d8:	c9                   	leave  
  4009d9:	c3                   	ret    

00000000004009da <Database_load>:
  4009da:	55                   	push   rbp
  4009db:	48 89 e5             	mov    rbp,rsp
  4009de:	48 83 ec 20          	sub    rsp,0x20
  4009e2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4009e6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4009ea:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4009ed:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4009f1:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  4009f5:	48 89 d1             	mov    rcx,rdx
  4009f8:	ba 01 00 00 00       	mov    edx,0x1
  4009fd:	be 20 93 01 00       	mov    esi,0x19320
  400a02:	48 89 c7             	mov    rdi,rax
  400a05:	e8 86 fd ff ff       	call   400790 <fread@plt>
  400a0a:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400a0d:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
  400a11:	74 0a                	je     400a1d <Database_load+0x43>
  400a13:	bf 6d 11 40 00       	mov    edi,0x40116d
  400a18:	e8 40 ff ff ff       	call   40095d <die>
  400a1d:	c9                   	leave  
  400a1e:	c3                   	ret    

0000000000400a1f <Database_open>:
  400a1f:	55                   	push   rbp
  400a20:	48 89 e5             	mov    rbp,rsp
  400a23:	48 83 ec 20          	sub    rsp,0x20
  400a27:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400a2b:	89 f0                	mov    eax,esi
  400a2d:	88 45 e4             	mov    BYTE PTR [rbp-0x1c],al
  400a30:	bf 10 00 00 00       	mov    edi,0x10
  400a35:	e8 c6 fd ff ff       	call   400800 <malloc@plt>
  400a3a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400a3e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400a43:	75 0a                	jne    400a4f <Database_open+0x30>
  400a45:	bf 86 11 40 00       	mov    edi,0x401186
  400a4a:	e8 0e ff ff ff       	call   40095d <die>
  400a4f:	bf 20 93 01 00       	mov    edi,0x19320
  400a54:	e8 a7 fd ff ff       	call   400800 <malloc@plt>
  400a59:	48 89 c2             	mov    rdx,rax
  400a5c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400a60:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  400a64:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400a68:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400a6c:	48 85 c0             	test   rax,rax
  400a6f:	75 0a                	jne    400a7b <Database_open+0x5c>
  400a71:	bf 86 11 40 00       	mov    edi,0x401186
  400a76:	e8 e2 fe ff ff       	call   40095d <die>
  400a7b:	80 7d e4 63          	cmp    BYTE PTR [rbp-0x1c],0x63
  400a7f:	75 1a                	jne    400a9b <Database_open+0x7c>
  400a81:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400a85:	be 94 11 40 00       	mov    esi,0x401194
  400a8a:	48 89 c7             	mov    rdi,rax
  400a8d:	e8 8e fd ff ff       	call   400820 <fopen@plt>
  400a92:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400a96:	48 89 02             	mov    QWORD PTR [rdx],rax
  400a99:	eb 30                	jmp    400acb <Database_open+0xac>
  400a9b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400a9f:	be 96 11 40 00       	mov    esi,0x401196
  400aa4:	48 89 c7             	mov    rdi,rax
  400aa7:	e8 74 fd ff ff       	call   400820 <fopen@plt>
  400aac:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400ab0:	48 89 02             	mov    QWORD PTR [rdx],rax
  400ab3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ab7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400aba:	48 85 c0             	test   rax,rax
  400abd:	74 0c                	je     400acb <Database_open+0xac>
  400abf:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ac3:	48 89 c7             	mov    rdi,rax
  400ac6:	e8 0f ff ff ff       	call   4009da <Database_load>
  400acb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400acf:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400ad2:	48 85 c0             	test   rax,rax
  400ad5:	75 0a                	jne    400ae1 <Database_open+0xc2>
  400ad7:	bf 99 11 40 00       	mov    edi,0x401199
  400adc:	e8 7c fe ff ff       	call   40095d <die>
  400ae1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ae5:	c9                   	leave  
  400ae6:	c3                   	ret    

0000000000400ae7 <Database_close>:
  400ae7:	55                   	push   rbp
  400ae8:	48 89 e5             	mov    rbp,rsp
  400aeb:	48 83 ec 10          	sub    rsp,0x10
  400aef:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  400af3:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400af8:	74 44                	je     400b3e <Database_close+0x57>
  400afa:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400afe:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400b01:	48 85 c0             	test   rax,rax
  400b04:	74 0f                	je     400b15 <Database_close+0x2e>
  400b06:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b0a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400b0d:	48 89 c7             	mov    rdi,rax
  400b10:	e8 8b fc ff ff       	call   4007a0 <fclose@plt>
  400b15:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b19:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400b1d:	48 85 c0             	test   rax,rax
  400b20:	74 10                	je     400b32 <Database_close+0x4b>
  400b22:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b26:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400b2a:	48 89 c7             	mov    rdi,rax
  400b2d:	e8 2e fc ff ff       	call   400760 <free@plt>
  400b32:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400b36:	48 89 c7             	mov    rdi,rax
  400b39:	e8 22 fc ff ff       	call   400760 <free@plt>
  400b3e:	c9                   	leave  
  400b3f:	c3                   	ret    

0000000000400b40 <Database_write>:
  400b40:	55                   	push   rbp
  400b41:	48 89 e5             	mov    rbp,rsp
  400b44:	48 83 ec 20          	sub    rsp,0x20
  400b48:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400b4c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b50:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400b53:	48 89 c7             	mov    rdi,rax
  400b56:	e8 75 fc ff ff       	call   4007d0 <rewind@plt>
  400b5b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b5f:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  400b62:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b66:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400b6a:	48 89 d1             	mov    rcx,rdx
  400b6d:	ba 01 00 00 00       	mov    edx,0x1
  400b72:	be 20 93 01 00       	mov    esi,0x19320
  400b77:	48 89 c7             	mov    rdi,rax
  400b7a:	e8 e1 fc ff ff       	call   400860 <fwrite@plt>
  400b7f:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400b82:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
  400b86:	74 0a                	je     400b92 <Database_write+0x52>
  400b88:	bf ae 11 40 00       	mov    edi,0x4011ae
  400b8d:	e8 cb fd ff ff       	call   40095d <die>
  400b92:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400b96:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400b99:	48 89 c7             	mov    rdi,rax
  400b9c:	e8 6f fc ff ff       	call   400810 <fflush@plt>
  400ba1:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  400ba4:	83 7d fc ff          	cmp    DWORD PTR [rbp-0x4],0xffffffff
  400ba8:	75 0a                	jne    400bb4 <Database_write+0x74>
  400baa:	bf c8 11 40 00       	mov    edi,0x4011c8
  400baf:	e8 a9 fd ff ff       	call   40095d <die>
  400bb4:	c9                   	leave  
  400bb5:	c3                   	ret    

0000000000400bb6 <Database_create>:
  400bb6:	55                   	push   rbp
  400bb7:	48 89 e5             	mov    rbp,rsp
  400bba:	48 81 ec 30 04 00 00 	sub    rsp,0x430
  400bc1:	48 89 bd d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],rdi
  400bc8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400bcf:	00 00 
  400bd1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400bd5:	31 c0                	xor    eax,eax
  400bd7:	c7 85 ec fb ff ff 00 	mov    DWORD PTR [rbp-0x414],0x0
  400bde:	00 00 00 
  400be1:	e9 cb 00 00 00       	jmp    400cb1 <Database_create+0xfb>
  400be6:	48 8d b5 f0 fb ff ff 	lea    rsi,[rbp-0x410]
  400bed:	b8 00 00 00 00       	mov    eax,0x0
  400bf2:	ba 81 00 00 00       	mov    edx,0x81
  400bf7:	48 89 f7             	mov    rdi,rsi
  400bfa:	48 89 d1             	mov    rcx,rdx
  400bfd:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400c00:	8b 85 ec fb ff ff    	mov    eax,DWORD PTR [rbp-0x414]
  400c06:	89 85 f0 fb ff ff    	mov    DWORD PTR [rbp-0x410],eax
  400c0c:	48 8b 85 d8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x428]
  400c13:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  400c17:	8b 85 ec fb ff ff    	mov    eax,DWORD PTR [rbp-0x414]
  400c1d:	48 98                	cdqe   
  400c1f:	48 c1 e0 03          	shl    rax,0x3
  400c23:	48 89 c1             	mov    rcx,rax
  400c26:	48 c1 e1 07          	shl    rcx,0x7
  400c2a:	48 01 c8             	add    rax,rcx
  400c2d:	48 01 d0             	add    rax,rdx
  400c30:	48 8d b5 f0 fb ff ff 	lea    rsi,[rbp-0x410]
  400c37:	41 b8 08 04 00 00    	mov    r8d,0x408
  400c3d:	48 89 c2             	mov    rdx,rax
  400c40:	83 e2 04             	and    edx,0x4
  400c43:	48 85 d2             	test   rdx,rdx
  400c46:	74 10                	je     400c58 <Database_create+0xa2>
  400c48:	8b 16                	mov    edx,DWORD PTR [rsi]
  400c4a:	89 10                	mov    DWORD PTR [rax],edx
  400c4c:	48 83 c0 04          	add    rax,0x4
  400c50:	48 83 c6 04          	add    rsi,0x4
  400c54:	41 83 e8 04          	sub    r8d,0x4
  400c58:	44 89 c2             	mov    edx,r8d
  400c5b:	c1 ea 03             	shr    edx,0x3
  400c5e:	89 d2                	mov    edx,edx
  400c60:	48 89 c7             	mov    rdi,rax
  400c63:	48 89 d1             	mov    rcx,rdx
  400c66:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  400c69:	48 89 f8             	mov    rax,rdi
  400c6c:	ba 00 00 00 00       	mov    edx,0x0
  400c71:	44 89 c1             	mov    ecx,r8d
  400c74:	83 e1 04             	and    ecx,0x4
  400c77:	85 c9                	test   ecx,ecx
  400c79:	74 08                	je     400c83 <Database_create+0xcd>
  400c7b:	8b 0e                	mov    ecx,DWORD PTR [rsi]
  400c7d:	89 08                	mov    DWORD PTR [rax],ecx
  400c7f:	48 83 c2 04          	add    rdx,0x4
  400c83:	44 89 c1             	mov    ecx,r8d
  400c86:	83 e1 02             	and    ecx,0x2
  400c89:	85 c9                	test   ecx,ecx
  400c8b:	74 0c                	je     400c99 <Database_create+0xe3>
  400c8d:	0f b7 0c 16          	movzx  ecx,WORD PTR [rsi+rdx*1]
  400c91:	66 89 0c 10          	mov    WORD PTR [rax+rdx*1],cx
  400c95:	48 83 c2 02          	add    rdx,0x2
  400c99:	44 89 c1             	mov    ecx,r8d
  400c9c:	83 e1 01             	and    ecx,0x1
  400c9f:	85 c9                	test   ecx,ecx
  400ca1:	74 07                	je     400caa <Database_create+0xf4>
  400ca3:	0f b6 0c 16          	movzx  ecx,BYTE PTR [rsi+rdx*1]
  400ca7:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
  400caa:	83 85 ec fb ff ff 01 	add    DWORD PTR [rbp-0x414],0x1
  400cb1:	83 bd ec fb ff ff 63 	cmp    DWORD PTR [rbp-0x414],0x63
  400cb8:	0f 8e 28 ff ff ff    	jle    400be6 <Database_create+0x30>
  400cbe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400cc2:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  400cc9:	00 00 
  400ccb:	74 05                	je     400cd2 <Database_create+0x11c>
  400ccd:	e8 de fa ff ff       	call   4007b0 <__stack_chk_fail@plt>
  400cd2:	c9                   	leave  
  400cd3:	c3                   	ret    

0000000000400cd4 <Database_set>:
  400cd4:	55                   	push   rbp
  400cd5:	48 89 e5             	mov    rbp,rsp
  400cd8:	48 83 ec 30          	sub    rsp,0x30
  400cdc:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400ce0:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  400ce3:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  400ce7:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
  400ceb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400cef:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  400cf3:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  400cf6:	48 98                	cdqe   
  400cf8:	48 c1 e0 03          	shl    rax,0x3
  400cfc:	48 89 c1             	mov    rcx,rax
  400cff:	48 c1 e1 07          	shl    rcx,0x7
  400d03:	48 01 c8             	add    rax,rcx
  400d06:	48 01 d0             	add    rax,rdx
  400d09:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400d0d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d11:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  400d14:	85 c0                	test   eax,eax
  400d16:	74 0a                	je     400d22 <Database_set+0x4e>
  400d18:	bf df 11 40 00       	mov    edi,0x4011df
  400d1d:	e8 3b fc ff ff       	call   40095d <die>
  400d22:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d26:	c7 40 04 01 00 00 00 	mov    DWORD PTR [rax+0x4],0x1
  400d2d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d31:	48 8d 48 08          	lea    rcx,[rax+0x8]
  400d35:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400d39:	ba 00 02 00 00       	mov    edx,0x200
  400d3e:	48 89 c6             	mov    rsi,rax
  400d41:	48 89 cf             	mov    rdi,rcx
  400d44:	e8 37 fa ff ff       	call   400780 <strncpy@plt>
  400d49:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400d4d:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400d52:	75 0a                	jne    400d5e <Database_set+0x8a>
  400d54:	bf fd 11 40 00       	mov    edi,0x4011fd
  400d59:	e8 ff fb ff ff       	call   40095d <die>
  400d5e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d62:	48 8d 88 08 02 00 00 	lea    rcx,[rax+0x208]
  400d69:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  400d6d:	ba 00 02 00 00       	mov    edx,0x200
  400d72:	48 89 c6             	mov    rsi,rax
  400d75:	48 89 cf             	mov    rdi,rcx
  400d78:	e8 03 fa ff ff       	call   400780 <strncpy@plt>
  400d7d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400d81:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400d86:	75 0a                	jne    400d92 <Database_set+0xbe>
  400d88:	bf 0f 12 40 00       	mov    edi,0x40120f
  400d8d:	e8 cb fb ff ff       	call   40095d <die>
  400d92:	c9                   	leave  
  400d93:	c3                   	ret    

0000000000400d94 <Database_get>:
  400d94:	55                   	push   rbp
  400d95:	48 89 e5             	mov    rbp,rsp
  400d98:	48 83 ec 20          	sub    rsp,0x20
  400d9c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400da0:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
  400da3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400da7:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  400dab:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  400dae:	48 98                	cdqe   
  400db0:	48 c1 e0 03          	shl    rax,0x3
  400db4:	48 89 c1             	mov    rcx,rax
  400db7:	48 c1 e1 07          	shl    rcx,0x7
  400dbb:	48 01 c8             	add    rax,rcx
  400dbe:	48 01 d0             	add    rax,rdx
  400dc1:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400dc5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400dc9:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  400dcc:	85 c0                	test   eax,eax
  400dce:	74 0e                	je     400dde <Database_get+0x4a>
  400dd0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400dd4:	48 89 c7             	mov    rdi,rax
  400dd7:	e8 c6 fb ff ff       	call   4009a2 <Address_print>
  400ddc:	eb 0a                	jmp    400de8 <Database_get+0x54>
  400dde:	bf 22 12 40 00       	mov    edi,0x401222
  400de3:	e8 75 fb ff ff       	call   40095d <die>
  400de8:	c9                   	leave  
  400de9:	c3                   	ret    

0000000000400dea <Database_delete>:
  400dea:	55                   	push   rbp
  400deb:	48 89 e5             	mov    rbp,rsp
  400dee:	48 81 ec 20 04 00 00 	sub    rsp,0x420
  400df5:	48 89 bd e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],rdi
  400dfc:	89 b5 e4 fb ff ff    	mov    DWORD PTR [rbp-0x41c],esi
  400e02:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400e09:	00 00 
  400e0b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400e0f:	31 c0                	xor    eax,eax
  400e11:	48 8d b5 f0 fb ff ff 	lea    rsi,[rbp-0x410]
  400e18:	b8 00 00 00 00       	mov    eax,0x0
  400e1d:	ba 81 00 00 00       	mov    edx,0x81
  400e22:	48 89 f7             	mov    rdi,rsi
  400e25:	48 89 d1             	mov    rcx,rdx
  400e28:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  400e2b:	8b 85 e4 fb ff ff    	mov    eax,DWORD PTR [rbp-0x41c]
  400e31:	89 85 f0 fb ff ff    	mov    DWORD PTR [rbp-0x410],eax
  400e37:	48 8b 85 e8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x418]
  400e3e:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  400e42:	8b 85 e4 fb ff ff    	mov    eax,DWORD PTR [rbp-0x41c]
  400e48:	48 98                	cdqe   
  400e4a:	48 c1 e0 03          	shl    rax,0x3
  400e4e:	48 89 c1             	mov    rcx,rax
  400e51:	48 c1 e1 07          	shl    rcx,0x7
  400e55:	48 01 c8             	add    rax,rcx
  400e58:	48 01 d0             	add    rax,rdx
  400e5b:	48 8d b5 f0 fb ff ff 	lea    rsi,[rbp-0x410]
  400e62:	41 b8 08 04 00 00    	mov    r8d,0x408
  400e68:	48 89 c2             	mov    rdx,rax
  400e6b:	83 e2 04             	and    edx,0x4
  400e6e:	48 85 d2             	test   rdx,rdx
  400e71:	74 10                	je     400e83 <Database_delete+0x99>
  400e73:	8b 16                	mov    edx,DWORD PTR [rsi]
  400e75:	89 10                	mov    DWORD PTR [rax],edx
  400e77:	48 83 c0 04          	add    rax,0x4
  400e7b:	48 83 c6 04          	add    rsi,0x4
  400e7f:	41 83 e8 04          	sub    r8d,0x4
  400e83:	44 89 c2             	mov    edx,r8d
  400e86:	c1 ea 03             	shr    edx,0x3
  400e89:	89 d2                	mov    edx,edx
  400e8b:	48 89 c7             	mov    rdi,rax
  400e8e:	48 89 d1             	mov    rcx,rdx
  400e91:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  400e94:	48 89 f8             	mov    rax,rdi
  400e97:	ba 00 00 00 00       	mov    edx,0x0
  400e9c:	44 89 c1             	mov    ecx,r8d
  400e9f:	83 e1 04             	and    ecx,0x4
  400ea2:	85 c9                	test   ecx,ecx
  400ea4:	74 08                	je     400eae <Database_delete+0xc4>
  400ea6:	8b 0e                	mov    ecx,DWORD PTR [rsi]
  400ea8:	89 08                	mov    DWORD PTR [rax],ecx
  400eaa:	48 83 c2 04          	add    rdx,0x4
  400eae:	44 89 c1             	mov    ecx,r8d
  400eb1:	83 e1 02             	and    ecx,0x2
  400eb4:	85 c9                	test   ecx,ecx
  400eb6:	74 0c                	je     400ec4 <Database_delete+0xda>
  400eb8:	0f b7 0c 16          	movzx  ecx,WORD PTR [rsi+rdx*1]
  400ebc:	66 89 0c 10          	mov    WORD PTR [rax+rdx*1],cx
  400ec0:	48 83 c2 02          	add    rdx,0x2
  400ec4:	44 89 c1             	mov    ecx,r8d
  400ec7:	83 e1 01             	and    ecx,0x1
  400eca:	85 c9                	test   ecx,ecx
  400ecc:	74 07                	je     400ed5 <Database_delete+0xeb>
  400ece:	0f b6 0c 16          	movzx  ecx,BYTE PTR [rsi+rdx*1]
  400ed2:	88 0c 10             	mov    BYTE PTR [rax+rdx*1],cl
  400ed5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ed9:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  400ee0:	00 00 
  400ee2:	74 05                	je     400ee9 <Database_delete+0xff>
  400ee4:	e8 c7 f8 ff ff       	call   4007b0 <__stack_chk_fail@plt>
  400ee9:	c9                   	leave  
  400eea:	c3                   	ret    

0000000000400eeb <Database_list>:
  400eeb:	55                   	push   rbp
  400eec:	48 89 e5             	mov    rbp,rsp
  400eef:	48 83 ec 30          	sub    rsp,0x30
  400ef3:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  400ef7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400efb:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400eff:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400f03:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400f0a:	eb 39                	jmp    400f45 <Database_list+0x5a>
  400f0c:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  400f0f:	48 98                	cdqe   
  400f11:	48 c1 e0 03          	shl    rax,0x3
  400f15:	48 89 c2             	mov    rdx,rax
  400f18:	48 c1 e2 07          	shl    rdx,0x7
  400f1c:	48 01 d0             	add    rax,rdx
  400f1f:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  400f23:	48 01 d0             	add    rax,rdx
  400f26:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400f2a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400f2e:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  400f31:	85 c0                	test   eax,eax
  400f33:	74 0c                	je     400f41 <Database_list+0x56>
  400f35:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400f39:	48 89 c7             	mov    rdi,rax
  400f3c:	e8 61 fa ff ff       	call   4009a2 <Address_print>
  400f41:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  400f45:	83 7d ec 63          	cmp    DWORD PTR [rbp-0x14],0x63
  400f49:	7e c1                	jle    400f0c <Database_list+0x21>
  400f4b:	c9                   	leave  
  400f4c:	c3                   	ret    

0000000000400f4d <main>:
  400f4d:	55                   	push   rbp
  400f4e:	48 89 e5             	mov    rbp,rsp
  400f51:	48 83 ec 30          	sub    rsp,0x30
  400f55:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
  400f58:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  400f5c:	83 7d dc 02          	cmp    DWORD PTR [rbp-0x24],0x2
  400f60:	7f 0a                	jg     400f6c <main+0x1f>
  400f62:	bf 30 12 40 00       	mov    edi,0x401230
  400f67:	e8 f1 f9 ff ff       	call   40095d <die>
  400f6c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  400f70:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400f74:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  400f78:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  400f7c:	48 83 c0 10          	add    rax,0x10
  400f80:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400f83:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  400f86:	88 45 eb             	mov    BYTE PTR [rbp-0x15],al
  400f89:	0f be 55 eb          	movsx  edx,BYTE PTR [rbp-0x15]
  400f8d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f91:	89 d6                	mov    esi,edx
  400f93:	48 89 c7             	mov    rdi,rax
  400f96:	e8 84 fa ff ff       	call   400a1f <Database_open>
  400f9b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400f9f:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  400fa6:	83 7d dc 03          	cmp    DWORD PTR [rbp-0x24],0x3
  400faa:	7e 16                	jle    400fc2 <main+0x75>
  400fac:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  400fb0:	48 83 c0 18          	add    rax,0x18
  400fb4:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400fb7:	48 89 c7             	mov    rdi,rax
  400fba:	e8 81 f8 ff ff       	call   400840 <atoi@plt>
  400fbf:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  400fc2:	83 7d ec 63          	cmp    DWORD PTR [rbp-0x14],0x63
  400fc6:	7e 0a                	jle    400fd2 <main+0x85>
  400fc8:	bf 68 12 40 00       	mov    edi,0x401268
  400fcd:	e8 8b f9 ff ff       	call   40095d <die>
  400fd2:	0f be 45 eb          	movsx  eax,BYTE PTR [rbp-0x15]
  400fd6:	83 e8 63             	sub    eax,0x63
  400fd9:	83 f8 10             	cmp    eax,0x10
  400fdc:	0f 87 cf 00 00 00    	ja     4010b1 <main+0x164>
  400fe2:	89 c0                	mov    eax,eax
  400fe4:	48 8b 04 c5 20 13 40 	mov    rax,QWORD PTR [rax*8+0x401320]
  400feb:	00 
  400fec:	ff e0                	jmp    rax
  400fee:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ff2:	48 89 c7             	mov    rdi,rax
  400ff5:	e8 bc fb ff ff       	call   400bb6 <Database_create>
  400ffa:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ffe:	48 89 c7             	mov    rdi,rax
  401001:	e8 3a fb ff ff       	call   400b40 <Database_write>
  401006:	e9 b0 00 00 00       	jmp    4010bb <main+0x16e>
  40100b:	83 7d dc 04          	cmp    DWORD PTR [rbp-0x24],0x4
  40100f:	74 0a                	je     40101b <main+0xce>
  401011:	bf 89 12 40 00       	mov    edi,0x401289
  401016:	e8 42 f9 ff ff       	call   40095d <die>
  40101b:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  40101e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401022:	89 d6                	mov    esi,edx
  401024:	48 89 c7             	mov    rdi,rax
  401027:	e8 68 fd ff ff       	call   400d94 <Database_get>
  40102c:	e9 8a 00 00 00       	jmp    4010bb <main+0x16e>
  401031:	83 7d dc 06          	cmp    DWORD PTR [rbp-0x24],0x6
  401035:	74 0a                	je     401041 <main+0xf4>
  401037:	bf a0 12 40 00       	mov    edi,0x4012a0
  40103c:	e8 1c f9 ff ff       	call   40095d <die>
  401041:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401045:	48 83 c0 28          	add    rax,0x28
  401049:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40104c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401050:	48 83 c0 20          	add    rax,0x20
  401054:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401057:	8b 75 ec             	mov    esi,DWORD PTR [rbp-0x14]
  40105a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40105e:	48 89 c7             	mov    rdi,rax
  401061:	e8 6e fc ff ff       	call   400cd4 <Database_set>
  401066:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40106a:	48 89 c7             	mov    rdi,rax
  40106d:	e8 ce fa ff ff       	call   400b40 <Database_write>
  401072:	eb 47                	jmp    4010bb <main+0x16e>
  401074:	83 7d dc 04          	cmp    DWORD PTR [rbp-0x24],0x4
  401078:	74 0a                	je     401084 <main+0x137>
  40107a:	bf c4 12 40 00       	mov    edi,0x4012c4
  40107f:	e8 d9 f8 ff ff       	call   40095d <die>
  401084:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  401087:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40108b:	89 d6                	mov    esi,edx
  40108d:	48 89 c7             	mov    rdi,rax
  401090:	e8 55 fd ff ff       	call   400dea <Database_delete>
  401095:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401099:	48 89 c7             	mov    rdi,rax
  40109c:	e8 9f fa ff ff       	call   400b40 <Database_write>
  4010a1:	eb 18                	jmp    4010bb <main+0x16e>
  4010a3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4010a7:	48 89 c7             	mov    rdi,rax
  4010aa:	e8 3c fe ff ff       	call   400eeb <Database_list>
  4010af:	eb 0a                	jmp    4010bb <main+0x16e>
  4010b1:	bf e0 12 40 00       	mov    edi,0x4012e0
  4010b6:	e8 a2 f8 ff ff       	call   40095d <die>
  4010bb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4010bf:	48 89 c7             	mov    rdi,rax
  4010c2:	e8 20 fa ff ff       	call   400ae7 <Database_close>
  4010c7:	b8 00 00 00 00       	mov    eax,0x0
  4010cc:	c9                   	leave  
  4010cd:	c3                   	ret    
  4010ce:	66 90                	xchg   ax,ax

00000000004010d0 <__libc_csu_init>:
  4010d0:	41 57                	push   r15
  4010d2:	41 89 ff             	mov    r15d,edi
  4010d5:	41 56                	push   r14
  4010d7:	49 89 f6             	mov    r14,rsi
  4010da:	41 55                	push   r13
  4010dc:	49 89 d5             	mov    r13,rdx
  4010df:	41 54                	push   r12
  4010e1:	4c 8d 25 28 0d 20 00 	lea    r12,[rip+0x200d28]        # 601e10 <__frame_dummy_init_array_entry>
  4010e8:	55                   	push   rbp
  4010e9:	48 8d 2d 28 0d 20 00 	lea    rbp,[rip+0x200d28]        # 601e18 <__init_array_end>
  4010f0:	53                   	push   rbx
  4010f1:	4c 29 e5             	sub    rbp,r12
  4010f4:	31 db                	xor    ebx,ebx
  4010f6:	48 c1 fd 03          	sar    rbp,0x3
  4010fa:	48 83 ec 08          	sub    rsp,0x8
  4010fe:	e8 25 f6 ff ff       	call   400728 <_init>
  401103:	48 85 ed             	test   rbp,rbp
  401106:	74 1e                	je     401126 <__libc_csu_init+0x56>
  401108:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40110f:	00 
  401110:	4c 89 ea             	mov    rdx,r13
  401113:	4c 89 f6             	mov    rsi,r14
  401116:	44 89 ff             	mov    edi,r15d
  401119:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40111d:	48 83 c3 01          	add    rbx,0x1
  401121:	48 39 eb             	cmp    rbx,rbp
  401124:	75 ea                	jne    401110 <__libc_csu_init+0x40>
  401126:	48 83 c4 08          	add    rsp,0x8
  40112a:	5b                   	pop    rbx
  40112b:	5d                   	pop    rbp
  40112c:	41 5c                	pop    r12
  40112e:	41 5d                	pop    r13
  401130:	41 5e                	pop    r14
  401132:	41 5f                	pop    r15
  401134:	c3                   	ret    
  401135:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40113c:	00 00 00 00 

0000000000401140 <__libc_csu_fini>:
  401140:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000401144 <_fini>:
  401144:	48 83 ec 08          	sub    rsp,0x8
  401148:	48 83 c4 08          	add    rsp,0x8
  40114c:	c3                   	ret    
