
ex17:     file format elf32-i386


Disassembly of section .init:

080484c4 <_init>:
 80484c4:	53                   	push   ebx
 80484c5:	83 ec 08             	sub    esp,0x8
 80484c8:	e8 73 01 00 00       	call   8048640 <__x86.get_pc_thunk.bx>
 80484cd:	81 c3 33 2b 00 00    	add    ebx,0x2b33
 80484d3:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80484d9:	85 c0                	test   eax,eax
 80484db:	74 05                	je     80484e2 <_init+0x1e>
 80484dd:	e8 be 00 00 00       	call   80485a0 <__gmon_start__@plt>
 80484e2:	83 c4 08             	add    esp,0x8
 80484e5:	5b                   	pop    ebx
 80484e6:	c3                   	ret    

Disassembly of section .plt:

080484f0 <printf@plt-0x10>:
 80484f0:	ff 35 04 b0 04 08    	push   DWORD PTR ds:0x804b004
 80484f6:	ff 25 08 b0 04 08    	jmp    DWORD PTR ds:0x804b008
 80484fc:	00 00                	add    BYTE PTR [eax],al
	...

08048500 <printf@plt>:
 8048500:	ff 25 0c b0 04 08    	jmp    DWORD PTR ds:0x804b00c
 8048506:	68 00 00 00 00       	push   0x0
 804850b:	e9 e0 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048510 <fflush@plt>:
 8048510:	ff 25 10 b0 04 08    	jmp    DWORD PTR ds:0x804b010
 8048516:	68 08 00 00 00       	push   0x8
 804851b:	e9 d0 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048520 <free@plt>:
 8048520:	ff 25 14 b0 04 08    	jmp    DWORD PTR ds:0x804b014
 8048526:	68 10 00 00 00       	push   0x10
 804852b:	e9 c0 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048530 <fclose@plt>:
 8048530:	ff 25 18 b0 04 08    	jmp    DWORD PTR ds:0x804b018
 8048536:	68 18 00 00 00       	push   0x18
 804853b:	e9 b0 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048540 <__stack_chk_fail@plt>:
 8048540:	ff 25 1c b0 04 08    	jmp    DWORD PTR ds:0x804b01c
 8048546:	68 20 00 00 00       	push   0x20
 804854b:	e9 a0 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048550 <rewind@plt>:
 8048550:	ff 25 20 b0 04 08    	jmp    DWORD PTR ds:0x804b020
 8048556:	68 28 00 00 00       	push   0x28
 804855b:	e9 90 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048560 <perror@plt>:
 8048560:	ff 25 24 b0 04 08    	jmp    DWORD PTR ds:0x804b024
 8048566:	68 30 00 00 00       	push   0x30
 804856b:	e9 80 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048570 <fwrite@plt>:
 8048570:	ff 25 28 b0 04 08    	jmp    DWORD PTR ds:0x804b028
 8048576:	68 38 00 00 00       	push   0x38
 804857b:	e9 70 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048580 <fread@plt>:
 8048580:	ff 25 2c b0 04 08    	jmp    DWORD PTR ds:0x804b02c
 8048586:	68 40 00 00 00       	push   0x40
 804858b:	e9 60 ff ff ff       	jmp    80484f0 <_init+0x2c>

08048590 <malloc@plt>:
 8048590:	ff 25 30 b0 04 08    	jmp    DWORD PTR ds:0x804b030
 8048596:	68 48 00 00 00       	push   0x48
 804859b:	e9 50 ff ff ff       	jmp    80484f0 <_init+0x2c>

080485a0 <__gmon_start__@plt>:
 80485a0:	ff 25 34 b0 04 08    	jmp    DWORD PTR ds:0x804b034
 80485a6:	68 50 00 00 00       	push   0x50
 80485ab:	e9 40 ff ff ff       	jmp    80484f0 <_init+0x2c>

080485b0 <exit@plt>:
 80485b0:	ff 25 38 b0 04 08    	jmp    DWORD PTR ds:0x804b038
 80485b6:	68 58 00 00 00       	push   0x58
 80485bb:	e9 30 ff ff ff       	jmp    80484f0 <_init+0x2c>

080485c0 <__libc_start_main@plt>:
 80485c0:	ff 25 3c b0 04 08    	jmp    DWORD PTR ds:0x804b03c
 80485c6:	68 60 00 00 00       	push   0x60
 80485cb:	e9 20 ff ff ff       	jmp    80484f0 <_init+0x2c>

080485d0 <fopen@plt>:
 80485d0:	ff 25 40 b0 04 08    	jmp    DWORD PTR ds:0x804b040
 80485d6:	68 68 00 00 00       	push   0x68
 80485db:	e9 10 ff ff ff       	jmp    80484f0 <_init+0x2c>

080485e0 <__errno_location@plt>:
 80485e0:	ff 25 44 b0 04 08    	jmp    DWORD PTR ds:0x804b044
 80485e6:	68 70 00 00 00       	push   0x70
 80485eb:	e9 00 ff ff ff       	jmp    80484f0 <_init+0x2c>

080485f0 <strncpy@plt>:
 80485f0:	ff 25 48 b0 04 08    	jmp    DWORD PTR ds:0x804b048
 80485f6:	68 78 00 00 00       	push   0x78
 80485fb:	e9 f0 fe ff ff       	jmp    80484f0 <_init+0x2c>

08048600 <atoi@plt>:
 8048600:	ff 25 4c b0 04 08    	jmp    DWORD PTR ds:0x804b04c
 8048606:	68 80 00 00 00       	push   0x80
 804860b:	e9 e0 fe ff ff       	jmp    80484f0 <_init+0x2c>

Disassembly of section .text:

08048610 <_start>:
 8048610:	31 ed                	xor    ebp,ebp
 8048612:	5e                   	pop    esi
 8048613:	89 e1                	mov    ecx,esp
 8048615:	83 e4 f0             	and    esp,0xfffffff0
 8048618:	50                   	push   eax
 8048619:	54                   	push   esp
 804861a:	52                   	push   edx
 804861b:	68 b0 8d 04 08       	push   0x8048db0
 8048620:	68 40 8d 04 08       	push   0x8048d40
 8048625:	51                   	push   ecx
 8048626:	56                   	push   esi
 8048627:	68 a3 8b 04 08       	push   0x8048ba3
 804862c:	e8 8f ff ff ff       	call   80485c0 <__libc_start_main@plt>
 8048631:	f4                   	hlt    
 8048632:	66 90                	xchg   ax,ax
 8048634:	66 90                	xchg   ax,ax
 8048636:	66 90                	xchg   ax,ax
 8048638:	66 90                	xchg   ax,ax
 804863a:	66 90                	xchg   ax,ax
 804863c:	66 90                	xchg   ax,ax
 804863e:	66 90                	xchg   ax,ax

08048640 <__x86.get_pc_thunk.bx>:
 8048640:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048643:	c3                   	ret    
 8048644:	66 90                	xchg   ax,ax
 8048646:	66 90                	xchg   ax,ax
 8048648:	66 90                	xchg   ax,ax
 804864a:	66 90                	xchg   ax,ax
 804864c:	66 90                	xchg   ax,ax
 804864e:	66 90                	xchg   ax,ax

08048650 <deregister_tm_clones>:
 8048650:	b8 5b b0 04 08       	mov    eax,0x804b05b
 8048655:	2d 58 b0 04 08       	sub    eax,0x804b058
 804865a:	83 f8 06             	cmp    eax,0x6
 804865d:	77 01                	ja     8048660 <deregister_tm_clones+0x10>
 804865f:	c3                   	ret    
 8048660:	b8 00 00 00 00       	mov    eax,0x0
 8048665:	85 c0                	test   eax,eax
 8048667:	74 f6                	je     804865f <deregister_tm_clones+0xf>
 8048669:	55                   	push   ebp
 804866a:	89 e5                	mov    ebp,esp
 804866c:	83 ec 18             	sub    esp,0x18
 804866f:	c7 04 24 58 b0 04 08 	mov    DWORD PTR [esp],0x804b058
 8048676:	ff d0                	call   eax
 8048678:	c9                   	leave  
 8048679:	c3                   	ret    
 804867a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

08048680 <register_tm_clones>:
 8048680:	b8 58 b0 04 08       	mov    eax,0x804b058
 8048685:	2d 58 b0 04 08       	sub    eax,0x804b058
 804868a:	c1 f8 02             	sar    eax,0x2
 804868d:	89 c2                	mov    edx,eax
 804868f:	c1 ea 1f             	shr    edx,0x1f
 8048692:	01 d0                	add    eax,edx
 8048694:	d1 f8                	sar    eax,1
 8048696:	75 01                	jne    8048699 <register_tm_clones+0x19>
 8048698:	c3                   	ret    
 8048699:	ba 00 00 00 00       	mov    edx,0x0
 804869e:	85 d2                	test   edx,edx
 80486a0:	74 f6                	je     8048698 <register_tm_clones+0x18>
 80486a2:	55                   	push   ebp
 80486a3:	89 e5                	mov    ebp,esp
 80486a5:	83 ec 18             	sub    esp,0x18
 80486a8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80486ac:	c7 04 24 58 b0 04 08 	mov    DWORD PTR [esp],0x804b058
 80486b3:	ff d2                	call   edx
 80486b5:	c9                   	leave  
 80486b6:	c3                   	ret    
 80486b7:	89 f6                	mov    esi,esi
 80486b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080486c0 <__do_global_dtors_aux>:
 80486c0:	80 3d 58 b0 04 08 00 	cmp    BYTE PTR ds:0x804b058,0x0
 80486c7:	75 13                	jne    80486dc <__do_global_dtors_aux+0x1c>
 80486c9:	55                   	push   ebp
 80486ca:	89 e5                	mov    ebp,esp
 80486cc:	83 ec 08             	sub    esp,0x8
 80486cf:	e8 7c ff ff ff       	call   8048650 <deregister_tm_clones>
 80486d4:	c6 05 58 b0 04 08 01 	mov    BYTE PTR ds:0x804b058,0x1
 80486db:	c9                   	leave  
 80486dc:	f3 c3                	repz ret 
 80486de:	66 90                	xchg   ax,ax

080486e0 <frame_dummy>:
 80486e0:	a1 10 af 04 08       	mov    eax,ds:0x804af10
 80486e5:	85 c0                	test   eax,eax
 80486e7:	74 1f                	je     8048708 <frame_dummy+0x28>
 80486e9:	b8 00 00 00 00       	mov    eax,0x0
 80486ee:	85 c0                	test   eax,eax
 80486f0:	74 16                	je     8048708 <frame_dummy+0x28>
 80486f2:	55                   	push   ebp
 80486f3:	89 e5                	mov    ebp,esp
 80486f5:	83 ec 18             	sub    esp,0x18
 80486f8:	c7 04 24 10 af 04 08 	mov    DWORD PTR [esp],0x804af10
 80486ff:	ff d0                	call   eax
 8048701:	c9                   	leave  
 8048702:	e9 79 ff ff ff       	jmp    8048680 <register_tm_clones>
 8048707:	90                   	nop
 8048708:	e9 73 ff ff ff       	jmp    8048680 <register_tm_clones>

0804870d <die>:
 804870d:	55                   	push   ebp
 804870e:	89 e5                	mov    ebp,esp
 8048710:	83 ec 18             	sub    esp,0x18
 8048713:	e8 c8 fe ff ff       	call   80485e0 <__errno_location@plt>
 8048718:	8b 00                	mov    eax,DWORD PTR [eax]
 804871a:	85 c0                	test   eax,eax
 804871c:	74 0d                	je     804872b <die+0x1e>
 804871e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048721:	89 04 24             	mov    DWORD PTR [esp],eax
 8048724:	e8 37 fe ff ff       	call   8048560 <perror@plt>
 8048729:	eb 13                	jmp    804873e <die+0x31>
 804872b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804872e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048732:	c7 04 24 d0 8d 04 08 	mov    DWORD PTR [esp],0x8048dd0
 8048739:	e8 c2 fd ff ff       	call   8048500 <printf@plt>
 804873e:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 8048745:	e8 66 fe ff ff       	call   80485b0 <exit@plt>

0804874a <Address_print>:
 804874a:	55                   	push   ebp
 804874b:	89 e5                	mov    ebp,esp
 804874d:	83 ec 18             	sub    esp,0x18
 8048750:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048753:	8d 88 08 02 00 00    	lea    ecx,[eax+0x208]
 8048759:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804875c:	8d 50 08             	lea    edx,[eax+0x8]
 804875f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048762:	8b 00                	mov    eax,DWORD PTR [eax]
 8048764:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 8048768:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 804876c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048770:	c7 04 24 db 8d 04 08 	mov    DWORD PTR [esp],0x8048ddb
 8048777:	e8 84 fd ff ff       	call   8048500 <printf@plt>
 804877c:	c9                   	leave  
 804877d:	c3                   	ret    

0804877e <Database_load>:
 804877e:	55                   	push   ebp
 804877f:	89 e5                	mov    ebp,esp
 8048781:	83 ec 28             	sub    esp,0x28
 8048784:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048787:	8b 10                	mov    edx,DWORD PTR [eax]
 8048789:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804878c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 804878f:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 8048793:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
 804879a:	00 
 804879b:	c7 44 24 04 20 93 01 	mov    DWORD PTR [esp+0x4],0x19320
 80487a2:	00 
 80487a3:	89 04 24             	mov    DWORD PTR [esp],eax
 80487a6:	e8 d5 fd ff ff       	call   8048580 <fread@plt>
 80487ab:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80487ae:	83 7d f4 01          	cmp    DWORD PTR [ebp-0xc],0x1
 80487b2:	74 0c                	je     80487c0 <Database_load+0x42>
 80487b4:	c7 04 24 e5 8d 04 08 	mov    DWORD PTR [esp],0x8048de5
 80487bb:	e8 4d ff ff ff       	call   804870d <die>
 80487c0:	c9                   	leave  
 80487c1:	c3                   	ret    

080487c2 <Database_open>:
 80487c2:	55                   	push   ebp
 80487c3:	89 e5                	mov    ebp,esp
 80487c5:	83 ec 28             	sub    esp,0x28
 80487c8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80487cb:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
 80487ce:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
 80487d5:	e8 b6 fd ff ff       	call   8048590 <malloc@plt>
 80487da:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80487dd:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 80487e1:	75 0c                	jne    80487ef <Database_open+0x2d>
 80487e3:	c7 04 24 fe 8d 04 08 	mov    DWORD PTR [esp],0x8048dfe
 80487ea:	e8 1e ff ff ff       	call   804870d <die>
 80487ef:	c7 04 24 20 93 01 00 	mov    DWORD PTR [esp],0x19320
 80487f6:	e8 95 fd ff ff       	call   8048590 <malloc@plt>
 80487fb:	89 c2                	mov    edx,eax
 80487fd:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048800:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
 8048803:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048806:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048809:	85 c0                	test   eax,eax
 804880b:	75 0c                	jne    8048819 <Database_open+0x57>
 804880d:	c7 04 24 fe 8d 04 08 	mov    DWORD PTR [esp],0x8048dfe
 8048814:	e8 f4 fe ff ff       	call   804870d <die>
 8048819:	80 7d e4 63          	cmp    BYTE PTR [ebp-0x1c],0x63
 804881d:	75 1a                	jne    8048839 <Database_open+0x77>
 804881f:	c7 44 24 04 0c 8e 04 	mov    DWORD PTR [esp+0x4],0x8048e0c
 8048826:	08 
 8048827:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804882a:	89 04 24             	mov    DWORD PTR [esp],eax
 804882d:	e8 9e fd ff ff       	call   80485d0 <fopen@plt>
 8048832:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
 8048835:	89 02                	mov    DWORD PTR [edx],eax
 8048837:	eb 2c                	jmp    8048865 <Database_open+0xa3>
 8048839:	c7 44 24 04 0e 8e 04 	mov    DWORD PTR [esp+0x4],0x8048e0e
 8048840:	08 
 8048841:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048844:	89 04 24             	mov    DWORD PTR [esp],eax
 8048847:	e8 84 fd ff ff       	call   80485d0 <fopen@plt>
 804884c:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
 804884f:	89 02                	mov    DWORD PTR [edx],eax
 8048851:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048854:	8b 00                	mov    eax,DWORD PTR [eax]
 8048856:	85 c0                	test   eax,eax
 8048858:	74 0b                	je     8048865 <Database_open+0xa3>
 804885a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804885d:	89 04 24             	mov    DWORD PTR [esp],eax
 8048860:	e8 19 ff ff ff       	call   804877e <Database_load>
 8048865:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048868:	8b 00                	mov    eax,DWORD PTR [eax]
 804886a:	85 c0                	test   eax,eax
 804886c:	75 0c                	jne    804887a <Database_open+0xb8>
 804886e:	c7 04 24 11 8e 04 08 	mov    DWORD PTR [esp],0x8048e11
 8048875:	e8 93 fe ff ff       	call   804870d <die>
 804887a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804887d:	c9                   	leave  
 804887e:	c3                   	ret    

0804887f <Database_close>:
 804887f:	55                   	push   ebp
 8048880:	89 e5                	mov    ebp,esp
 8048882:	83 ec 18             	sub    esp,0x18
 8048885:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
 8048889:	74 39                	je     80488c4 <Database_close+0x45>
 804888b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804888e:	8b 00                	mov    eax,DWORD PTR [eax]
 8048890:	85 c0                	test   eax,eax
 8048892:	74 0d                	je     80488a1 <Database_close+0x22>
 8048894:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048897:	8b 00                	mov    eax,DWORD PTR [eax]
 8048899:	89 04 24             	mov    DWORD PTR [esp],eax
 804889c:	e8 8f fc ff ff       	call   8048530 <fclose@plt>
 80488a1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488a4:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80488a7:	85 c0                	test   eax,eax
 80488a9:	74 0e                	je     80488b9 <Database_close+0x3a>
 80488ab:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488ae:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80488b1:	89 04 24             	mov    DWORD PTR [esp],eax
 80488b4:	e8 67 fc ff ff       	call   8048520 <free@plt>
 80488b9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488bc:	89 04 24             	mov    DWORD PTR [esp],eax
 80488bf:	e8 5c fc ff ff       	call   8048520 <free@plt>
 80488c4:	c9                   	leave  
 80488c5:	c3                   	ret    

080488c6 <Database_write>:
 80488c6:	55                   	push   ebp
 80488c7:	89 e5                	mov    ebp,esp
 80488c9:	83 ec 28             	sub    esp,0x28
 80488cc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488cf:	8b 00                	mov    eax,DWORD PTR [eax]
 80488d1:	89 04 24             	mov    DWORD PTR [esp],eax
 80488d4:	e8 77 fc ff ff       	call   8048550 <rewind@plt>
 80488d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488dc:	8b 10                	mov    edx,DWORD PTR [eax]
 80488de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488e1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80488e4:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 80488e8:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
 80488ef:	00 
 80488f0:	c7 44 24 04 20 93 01 	mov    DWORD PTR [esp+0x4],0x19320
 80488f7:	00 
 80488f8:	89 04 24             	mov    DWORD PTR [esp],eax
 80488fb:	e8 70 fc ff ff       	call   8048570 <fwrite@plt>
 8048900:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048903:	83 7d f4 01          	cmp    DWORD PTR [ebp-0xc],0x1
 8048907:	74 0c                	je     8048915 <Database_write+0x4f>
 8048909:	c7 04 24 26 8e 04 08 	mov    DWORD PTR [esp],0x8048e26
 8048910:	e8 f8 fd ff ff       	call   804870d <die>
 8048915:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048918:	8b 00                	mov    eax,DWORD PTR [eax]
 804891a:	89 04 24             	mov    DWORD PTR [esp],eax
 804891d:	e8 ee fb ff ff       	call   8048510 <fflush@plt>
 8048922:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048925:	83 7d f4 ff          	cmp    DWORD PTR [ebp-0xc],0xffffffff
 8048929:	75 0c                	jne    8048937 <Database_write+0x71>
 804892b:	c7 04 24 40 8e 04 08 	mov    DWORD PTR [esp],0x8048e40
 8048932:	e8 d6 fd ff ff       	call   804870d <die>
 8048937:	c9                   	leave  
 8048938:	c3                   	ret    

08048939 <Database_create>:
 8048939:	55                   	push   ebp
 804893a:	89 e5                	mov    ebp,esp
 804893c:	57                   	push   edi
 804893d:	56                   	push   esi
 804893e:	53                   	push   ebx
 804893f:	81 ec 2c 04 00 00    	sub    esp,0x42c
 8048945:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048948:	89 85 d4 fb ff ff    	mov    DWORD PTR [ebp-0x42c],eax
 804894e:	65 a1 14 00 00 00    	mov    eax,gs:0x14
 8048954:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 8048957:	31 c0                	xor    eax,eax
 8048959:	c7 85 d8 fb ff ff 00 	mov    DWORD PTR [ebp-0x428],0x0
 8048960:	00 00 00 
 8048963:	eb 59                	jmp    80489be <Database_create+0x85>
 8048965:	8d 9d dc fb ff ff    	lea    ebx,[ebp-0x424]
 804896b:	b8 00 00 00 00       	mov    eax,0x0
 8048970:	ba 02 01 00 00       	mov    edx,0x102
 8048975:	89 df                	mov    edi,ebx
 8048977:	89 d1                	mov    ecx,edx
 8048979:	f3 ab                	rep stos DWORD PTR es:[edi],eax
 804897b:	8b 85 d8 fb ff ff    	mov    eax,DWORD PTR [ebp-0x428]
 8048981:	89 85 dc fb ff ff    	mov    DWORD PTR [ebp-0x424],eax
 8048987:	8b 85 d4 fb ff ff    	mov    eax,DWORD PTR [ebp-0x42c]
 804898d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 8048990:	8b 85 d8 fb ff ff    	mov    eax,DWORD PTR [ebp-0x428]
 8048996:	c1 e0 03             	shl    eax,0x3
 8048999:	89 c1                	mov    ecx,eax
 804899b:	c1 e1 07             	shl    ecx,0x7
 804899e:	01 c8                	add    eax,ecx
 80489a0:	01 d0                	add    eax,edx
 80489a2:	89 c2                	mov    edx,eax
 80489a4:	8d 9d dc fb ff ff    	lea    ebx,[ebp-0x424]
 80489aa:	b8 02 01 00 00       	mov    eax,0x102
 80489af:	89 d7                	mov    edi,edx
 80489b1:	89 de                	mov    esi,ebx
 80489b3:	89 c1                	mov    ecx,eax
 80489b5:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
 80489b7:	83 85 d8 fb ff ff 01 	add    DWORD PTR [ebp-0x428],0x1
 80489be:	83 bd d8 fb ff ff 63 	cmp    DWORD PTR [ebp-0x428],0x63
 80489c5:	7e 9e                	jle    8048965 <Database_create+0x2c>
 80489c7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 80489ca:	65 33 05 14 00 00 00 	xor    eax,DWORD PTR gs:0x14
 80489d1:	74 05                	je     80489d8 <Database_create+0x9f>
 80489d3:	e8 68 fb ff ff       	call   8048540 <__stack_chk_fail@plt>
 80489d8:	81 c4 2c 04 00 00    	add    esp,0x42c
 80489de:	5b                   	pop    ebx
 80489df:	5e                   	pop    esi
 80489e0:	5f                   	pop    edi
 80489e1:	5d                   	pop    ebp
 80489e2:	c3                   	ret    

080489e3 <Database_set>:
 80489e3:	55                   	push   ebp
 80489e4:	89 e5                	mov    ebp,esp
 80489e6:	83 ec 28             	sub    esp,0x28
 80489e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80489ec:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 80489ef:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80489f2:	c1 e0 03             	shl    eax,0x3
 80489f5:	89 c1                	mov    ecx,eax
 80489f7:	c1 e1 07             	shl    ecx,0x7
 80489fa:	01 c8                	add    eax,ecx
 80489fc:	01 d0                	add    eax,edx
 80489fe:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
 8048a01:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048a04:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048a07:	85 c0                	test   eax,eax
 8048a09:	74 0c                	je     8048a17 <Database_set+0x34>
 8048a0b:	c7 04 24 57 8e 04 08 	mov    DWORD PTR [esp],0x8048e57
 8048a12:	e8 f6 fc ff ff       	call   804870d <die>
 8048a17:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048a1a:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
 8048a21:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048a24:	8d 50 08             	lea    edx,[eax+0x8]
 8048a27:	c7 44 24 08 00 02 00 	mov    DWORD PTR [esp+0x8],0x200
 8048a2e:	00 
 8048a2f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048a32:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048a36:	89 14 24             	mov    DWORD PTR [esp],edx
 8048a39:	e8 b2 fb ff ff       	call   80485f0 <strncpy@plt>
 8048a3e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048a41:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 8048a45:	75 0c                	jne    8048a53 <Database_set+0x70>
 8048a47:	c7 04 24 75 8e 04 08 	mov    DWORD PTR [esp],0x8048e75
 8048a4e:	e8 ba fc ff ff       	call   804870d <die>
 8048a53:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048a56:	8d 90 08 02 00 00    	lea    edx,[eax+0x208]
 8048a5c:	c7 44 24 08 00 02 00 	mov    DWORD PTR [esp+0x8],0x200
 8048a63:	00 
 8048a64:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
 8048a67:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048a6b:	89 14 24             	mov    DWORD PTR [esp],edx
 8048a6e:	e8 7d fb ff ff       	call   80485f0 <strncpy@plt>
 8048a73:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048a76:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 8048a7a:	75 0c                	jne    8048a88 <Database_set+0xa5>
 8048a7c:	c7 04 24 87 8e 04 08 	mov    DWORD PTR [esp],0x8048e87
 8048a83:	e8 85 fc ff ff       	call   804870d <die>
 8048a88:	c9                   	leave  
 8048a89:	c3                   	ret    

08048a8a <Database_get>:
 8048a8a:	55                   	push   ebp
 8048a8b:	89 e5                	mov    ebp,esp
 8048a8d:	83 ec 28             	sub    esp,0x28
 8048a90:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048a93:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 8048a96:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048a99:	c1 e0 03             	shl    eax,0x3
 8048a9c:	89 c1                	mov    ecx,eax
 8048a9e:	c1 e1 07             	shl    ecx,0x7
 8048aa1:	01 c8                	add    eax,ecx
 8048aa3:	01 d0                	add    eax,edx
 8048aa5:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048aa8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048aab:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048aae:	85 c0                	test   eax,eax
 8048ab0:	74 0d                	je     8048abf <Database_get+0x35>
 8048ab2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048ab5:	89 04 24             	mov    DWORD PTR [esp],eax
 8048ab8:	e8 8d fc ff ff       	call   804874a <Address_print>
 8048abd:	eb 0c                	jmp    8048acb <Database_get+0x41>
 8048abf:	c7 04 24 9a 8e 04 08 	mov    DWORD PTR [esp],0x8048e9a
 8048ac6:	e8 42 fc ff ff       	call   804870d <die>
 8048acb:	c9                   	leave  
 8048acc:	c3                   	ret    

08048acd <Database_delete>:
 8048acd:	55                   	push   ebp
 8048ace:	89 e5                	mov    ebp,esp
 8048ad0:	57                   	push   edi
 8048ad1:	56                   	push   esi
 8048ad2:	53                   	push   ebx
 8048ad3:	81 ec 2c 04 00 00    	sub    esp,0x42c
 8048ad9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048adc:	89 85 d4 fb ff ff    	mov    DWORD PTR [ebp-0x42c],eax
 8048ae2:	65 a1 14 00 00 00    	mov    eax,gs:0x14
 8048ae8:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 8048aeb:	31 c0                	xor    eax,eax
 8048aed:	8d 9d dc fb ff ff    	lea    ebx,[ebp-0x424]
 8048af3:	b8 00 00 00 00       	mov    eax,0x0
 8048af8:	ba 02 01 00 00       	mov    edx,0x102
 8048afd:	89 df                	mov    edi,ebx
 8048aff:	89 d1                	mov    ecx,edx
 8048b01:	f3 ab                	rep stos DWORD PTR es:[edi],eax
 8048b03:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048b06:	89 85 dc fb ff ff    	mov    DWORD PTR [ebp-0x424],eax
 8048b0c:	8b 85 d4 fb ff ff    	mov    eax,DWORD PTR [ebp-0x42c]
 8048b12:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 8048b15:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048b18:	c1 e0 03             	shl    eax,0x3
 8048b1b:	89 c1                	mov    ecx,eax
 8048b1d:	c1 e1 07             	shl    ecx,0x7
 8048b20:	01 c8                	add    eax,ecx
 8048b22:	01 d0                	add    eax,edx
 8048b24:	89 c2                	mov    edx,eax
 8048b26:	8d 9d dc fb ff ff    	lea    ebx,[ebp-0x424]
 8048b2c:	b8 02 01 00 00       	mov    eax,0x102
 8048b31:	89 d7                	mov    edi,edx
 8048b33:	89 de                	mov    esi,ebx
 8048b35:	89 c1                	mov    ecx,eax
 8048b37:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
 8048b39:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 8048b3c:	65 33 05 14 00 00 00 	xor    eax,DWORD PTR gs:0x14
 8048b43:	74 05                	je     8048b4a <Database_delete+0x7d>
 8048b45:	e8 f6 f9 ff ff       	call   8048540 <__stack_chk_fail@plt>
 8048b4a:	81 c4 2c 04 00 00    	add    esp,0x42c
 8048b50:	5b                   	pop    ebx
 8048b51:	5e                   	pop    esi
 8048b52:	5f                   	pop    edi
 8048b53:	5d                   	pop    ebp
 8048b54:	c3                   	ret    

08048b55 <Database_list>:
 8048b55:	55                   	push   ebp
 8048b56:	89 e5                	mov    ebp,esp
 8048b58:	83 ec 28             	sub    esp,0x28
 8048b5b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048b5e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048b61:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
 8048b64:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
 8048b6b:	eb 2e                	jmp    8048b9b <Database_list+0x46>
 8048b6d:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048b70:	c1 e0 03             	shl    eax,0x3
 8048b73:	89 c2                	mov    edx,eax
 8048b75:	c1 e2 07             	shl    edx,0x7
 8048b78:	01 d0                	add    eax,edx
 8048b7a:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
 8048b7d:	01 d0                	add    eax,edx
 8048b7f:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048b82:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048b85:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048b88:	85 c0                	test   eax,eax
 8048b8a:	74 0b                	je     8048b97 <Database_list+0x42>
 8048b8c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048b8f:	89 04 24             	mov    DWORD PTR [esp],eax
 8048b92:	e8 b3 fb ff ff       	call   804874a <Address_print>
 8048b97:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
 8048b9b:	83 7d ec 63          	cmp    DWORD PTR [ebp-0x14],0x63
 8048b9f:	7e cc                	jle    8048b6d <Database_list+0x18>
 8048ba1:	c9                   	leave  
 8048ba2:	c3                   	ret    

08048ba3 <main>:
 8048ba3:	55                   	push   ebp
 8048ba4:	89 e5                	mov    ebp,esp
 8048ba6:	83 e4 f0             	and    esp,0xfffffff0
 8048ba9:	83 ec 20             	sub    esp,0x20
 8048bac:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
 8048bb0:	7f 0c                	jg     8048bbe <main+0x1b>
 8048bb2:	c7 04 24 a8 8e 04 08 	mov    DWORD PTR [esp],0x8048ea8
 8048bb9:	e8 4f fb ff ff       	call   804870d <die>
 8048bbe:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048bc1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048bc4:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 8048bc8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048bcb:	83 c0 08             	add    eax,0x8
 8048bce:	8b 00                	mov    eax,DWORD PTR [eax]
 8048bd0:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048bd3:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
 8048bd7:	0f be 44 24 13       	movsx  eax,BYTE PTR [esp+0x13]
 8048bdc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048be0:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048be4:	89 04 24             	mov    DWORD PTR [esp],eax
 8048be7:	e8 d6 fb ff ff       	call   80487c2 <Database_open>
 8048bec:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 8048bf0:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
 8048bf7:	00 
 8048bf8:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
 8048bfc:	7e 14                	jle    8048c12 <main+0x6f>
 8048bfe:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048c01:	83 c0 0c             	add    eax,0xc
 8048c04:	8b 00                	mov    eax,DWORD PTR [eax]
 8048c06:	89 04 24             	mov    DWORD PTR [esp],eax
 8048c09:	e8 f2 f9 ff ff       	call   8048600 <atoi@plt>
 8048c0e:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048c12:	83 7c 24 14 63       	cmp    DWORD PTR [esp+0x14],0x63
 8048c17:	7e 0c                	jle    8048c25 <main+0x82>
 8048c19:	c7 04 24 dc 8e 04 08 	mov    DWORD PTR [esp],0x8048edc
 8048c20:	e8 e8 fa ff ff       	call   804870d <die>
 8048c25:	0f be 44 24 13       	movsx  eax,BYTE PTR [esp+0x13]
 8048c2a:	83 e8 63             	sub    eax,0x63
 8048c2d:	83 f8 10             	cmp    eax,0x10
 8048c30:	0f 87 df 00 00 00    	ja     8048d15 <main+0x172>
 8048c36:	8b 04 85 88 8f 04 08 	mov    eax,DWORD PTR [eax*4+0x8048f88]
 8048c3d:	ff e0                	jmp    eax
 8048c3f:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048c43:	89 04 24             	mov    DWORD PTR [esp],eax
 8048c46:	e8 ee fc ff ff       	call   8048939 <Database_create>
 8048c4b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048c4f:	89 04 24             	mov    DWORD PTR [esp],eax
 8048c52:	e8 6f fc ff ff       	call   80488c6 <Database_write>
 8048c57:	e9 c5 00 00 00       	jmp    8048d21 <main+0x17e>
 8048c5c:	83 7d 08 04          	cmp    DWORD PTR [ebp+0x8],0x4
 8048c60:	74 0c                	je     8048c6e <main+0xcb>
 8048c62:	c7 04 24 fd 8e 04 08 	mov    DWORD PTR [esp],0x8048efd
 8048c69:	e8 9f fa ff ff       	call   804870d <die>
 8048c6e:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 8048c72:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048c76:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048c7a:	89 04 24             	mov    DWORD PTR [esp],eax
 8048c7d:	e8 08 fe ff ff       	call   8048a8a <Database_get>
 8048c82:	e9 9a 00 00 00       	jmp    8048d21 <main+0x17e>
 8048c87:	83 7d 08 06          	cmp    DWORD PTR [ebp+0x8],0x6
 8048c8b:	74 0c                	je     8048c99 <main+0xf6>
 8048c8d:	c7 04 24 10 8f 04 08 	mov    DWORD PTR [esp],0x8048f10
 8048c94:	e8 74 fa ff ff       	call   804870d <die>
 8048c99:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048c9c:	83 c0 14             	add    eax,0x14
 8048c9f:	8b 10                	mov    edx,DWORD PTR [eax]
 8048ca1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048ca4:	83 c0 10             	add    eax,0x10
 8048ca7:	8b 00                	mov    eax,DWORD PTR [eax]
 8048ca9:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 8048cad:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048cb1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 8048cb5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048cb9:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048cbd:	89 04 24             	mov    DWORD PTR [esp],eax
 8048cc0:	e8 1e fd ff ff       	call   80489e3 <Database_set>
 8048cc5:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048cc9:	89 04 24             	mov    DWORD PTR [esp],eax
 8048ccc:	e8 f5 fb ff ff       	call   80488c6 <Database_write>
 8048cd1:	eb 4e                	jmp    8048d21 <main+0x17e>
 8048cd3:	83 7d 08 04          	cmp    DWORD PTR [ebp+0x8],0x4
 8048cd7:	74 0c                	je     8048ce5 <main+0x142>
 8048cd9:	c7 04 24 34 8f 04 08 	mov    DWORD PTR [esp],0x8048f34
 8048ce0:	e8 28 fa ff ff       	call   804870d <die>
 8048ce5:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 8048ce9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048ced:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048cf1:	89 04 24             	mov    DWORD PTR [esp],eax
 8048cf4:	e8 d4 fd ff ff       	call   8048acd <Database_delete>
 8048cf9:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048cfd:	89 04 24             	mov    DWORD PTR [esp],eax
 8048d00:	e8 c1 fb ff ff       	call   80488c6 <Database_write>
 8048d05:	eb 1a                	jmp    8048d21 <main+0x17e>
 8048d07:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048d0b:	89 04 24             	mov    DWORD PTR [esp],eax
 8048d0e:	e8 42 fe ff ff       	call   8048b55 <Database_list>
 8048d13:	eb 0c                	jmp    8048d21 <main+0x17e>
 8048d15:	c7 04 24 4c 8f 04 08 	mov    DWORD PTR [esp],0x8048f4c
 8048d1c:	e8 ec f9 ff ff       	call   804870d <die>
 8048d21:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048d25:	89 04 24             	mov    DWORD PTR [esp],eax
 8048d28:	e8 52 fb ff ff       	call   804887f <Database_close>
 8048d2d:	b8 00 00 00 00       	mov    eax,0x0
 8048d32:	c9                   	leave  
 8048d33:	c3                   	ret    
 8048d34:	66 90                	xchg   ax,ax
 8048d36:	66 90                	xchg   ax,ax
 8048d38:	66 90                	xchg   ax,ax
 8048d3a:	66 90                	xchg   ax,ax
 8048d3c:	66 90                	xchg   ax,ax
 8048d3e:	66 90                	xchg   ax,ax

08048d40 <__libc_csu_init>:
 8048d40:	55                   	push   ebp
 8048d41:	57                   	push   edi
 8048d42:	31 ff                	xor    edi,edi
 8048d44:	56                   	push   esi
 8048d45:	53                   	push   ebx
 8048d46:	e8 f5 f8 ff ff       	call   8048640 <__x86.get_pc_thunk.bx>
 8048d4b:	81 c3 b5 22 00 00    	add    ebx,0x22b5
 8048d51:	83 ec 1c             	sub    esp,0x1c
 8048d54:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048d58:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 8048d5e:	e8 61 f7 ff ff       	call   80484c4 <_init>
 8048d63:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048d69:	29 c6                	sub    esi,eax
 8048d6b:	c1 fe 02             	sar    esi,0x2
 8048d6e:	85 f6                	test   esi,esi
 8048d70:	74 27                	je     8048d99 <__libc_csu_init+0x59>
 8048d72:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048d78:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 8048d7c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 8048d7f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048d83:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048d87:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048d8b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048d92:	83 c7 01             	add    edi,0x1
 8048d95:	39 f7                	cmp    edi,esi
 8048d97:	75 df                	jne    8048d78 <__libc_csu_init+0x38>
 8048d99:	83 c4 1c             	add    esp,0x1c
 8048d9c:	5b                   	pop    ebx
 8048d9d:	5e                   	pop    esi
 8048d9e:	5f                   	pop    edi
 8048d9f:	5d                   	pop    ebp
 8048da0:	c3                   	ret    
 8048da1:	eb 0d                	jmp    8048db0 <__libc_csu_fini>
 8048da3:	90                   	nop
 8048da4:	90                   	nop
 8048da5:	90                   	nop
 8048da6:	90                   	nop
 8048da7:	90                   	nop
 8048da8:	90                   	nop
 8048da9:	90                   	nop
 8048daa:	90                   	nop
 8048dab:	90                   	nop
 8048dac:	90                   	nop
 8048dad:	90                   	nop
 8048dae:	90                   	nop
 8048daf:	90                   	nop

08048db0 <__libc_csu_fini>:
 8048db0:	f3 c3                	repz ret 

Disassembly of section .fini:

08048db4 <_fini>:
 8048db4:	53                   	push   ebx
 8048db5:	83 ec 08             	sub    esp,0x8
 8048db8:	e8 83 f8 ff ff       	call   8048640 <__x86.get_pc_thunk.bx>
 8048dbd:	81 c3 43 22 00 00    	add    ebx,0x2243
 8048dc3:	83 c4 08             	add    esp,0x8
 8048dc6:	5b                   	pop    ebx
 8048dc7:	c3                   	ret    
