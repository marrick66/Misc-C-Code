
ex25:     file format elf32-i386


Disassembly of section .init:

08048468 <_init>:
 8048468:	53                   	push   ebx
 8048469:	83 ec 08             	sub    esp,0x8
 804846c:	e8 3f 01 00 00       	call   80485b0 <__x86.get_pc_thunk.bx>
 8048471:	81 c3 8f 2b 00 00    	add    ebx,0x2b8f
 8048477:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 804847d:	85 c0                	test   eax,eax
 804847f:	74 05                	je     8048486 <_init+0x1e>
 8048481:	e8 7a 00 00 00       	call   8048500 <__gmon_start__@plt>
 8048486:	83 c4 08             	add    esp,0x8
 8048489:	5b                   	pop    ebx
 804848a:	c3                   	ret    

Disassembly of section .plt:

08048490 <printf@plt-0x10>:
 8048490:	ff 35 04 b0 04 08    	push   DWORD PTR ds:0x804b004
 8048496:	ff 25 08 b0 04 08    	jmp    DWORD PTR ds:0x804b008
 804849c:	00 00                	add    BYTE PTR [eax],al
	...

080484a0 <printf@plt>:
 80484a0:	ff 25 0c b0 04 08    	jmp    DWORD PTR ds:0x804b00c
 80484a6:	68 00 00 00 00       	push   0x0
 80484ab:	e9 e0 ff ff ff       	jmp    8048490 <_init+0x28>

080484b0 <free@plt>:
 80484b0:	ff 25 10 b0 04 08    	jmp    DWORD PTR ds:0x804b010
 80484b6:	68 08 00 00 00       	push   0x8
 80484bb:	e9 d0 ff ff ff       	jmp    8048490 <_init+0x28>

080484c0 <ferror@plt>:
 80484c0:	ff 25 14 b0 04 08    	jmp    DWORD PTR ds:0x804b014
 80484c6:	68 10 00 00 00       	push   0x10
 80484cb:	e9 c0 ff ff ff       	jmp    8048490 <_init+0x28>

080484d0 <fgets@plt>:
 80484d0:	ff 25 18 b0 04 08    	jmp    DWORD PTR ds:0x804b018
 80484d6:	68 18 00 00 00       	push   0x18
 80484db:	e9 b0 ff ff ff       	jmp    8048490 <_init+0x28>

080484e0 <puts@plt>:
 80484e0:	ff 25 1c b0 04 08    	jmp    DWORD PTR ds:0x804b01c
 80484e6:	68 20 00 00 00       	push   0x20
 80484eb:	e9 a0 ff ff ff       	jmp    8048490 <_init+0x28>

080484f0 <strerror@plt>:
 80484f0:	ff 25 20 b0 04 08    	jmp    DWORD PTR ds:0x804b020
 80484f6:	68 28 00 00 00       	push   0x28
 80484fb:	e9 90 ff ff ff       	jmp    8048490 <_init+0x28>

08048500 <__gmon_start__@plt>:
 8048500:	ff 25 24 b0 04 08    	jmp    DWORD PTR ds:0x804b024
 8048506:	68 30 00 00 00       	push   0x30
 804850b:	e9 80 ff ff ff       	jmp    8048490 <_init+0x28>

08048510 <feof@plt>:
 8048510:	ff 25 28 b0 04 08    	jmp    DWORD PTR ds:0x804b028
 8048516:	68 38 00 00 00       	push   0x38
 804851b:	e9 70 ff ff ff       	jmp    8048490 <_init+0x28>

08048520 <__libc_start_main@plt>:
 8048520:	ff 25 2c b0 04 08    	jmp    DWORD PTR ds:0x804b02c
 8048526:	68 40 00 00 00       	push   0x40
 804852b:	e9 60 ff ff ff       	jmp    8048490 <_init+0x28>

08048530 <fprintf@plt>:
 8048530:	ff 25 30 b0 04 08    	jmp    DWORD PTR ds:0x804b030
 8048536:	68 48 00 00 00       	push   0x48
 804853b:	e9 50 ff ff ff       	jmp    8048490 <_init+0x28>

08048540 <__errno_location@plt>:
 8048540:	ff 25 34 b0 04 08    	jmp    DWORD PTR ds:0x804b034
 8048546:	68 50 00 00 00       	push   0x50
 804854b:	e9 40 ff ff ff       	jmp    8048490 <_init+0x28>

08048550 <fgetc@plt>:
 8048550:	ff 25 38 b0 04 08    	jmp    DWORD PTR ds:0x804b038
 8048556:	68 58 00 00 00       	push   0x58
 804855b:	e9 30 ff ff ff       	jmp    8048490 <_init+0x28>

08048560 <atoi@plt>:
 8048560:	ff 25 3c b0 04 08    	jmp    DWORD PTR ds:0x804b03c
 8048566:	68 60 00 00 00       	push   0x60
 804856b:	e9 20 ff ff ff       	jmp    8048490 <_init+0x28>

08048570 <calloc@plt>:
 8048570:	ff 25 40 b0 04 08    	jmp    DWORD PTR ds:0x804b040
 8048576:	68 68 00 00 00       	push   0x68
 804857b:	e9 10 ff ff ff       	jmp    8048490 <_init+0x28>

Disassembly of section .text:

08048580 <_start>:
 8048580:	31 ed                	xor    ebp,ebp
 8048582:	5e                   	pop    esi
 8048583:	89 e1                	mov    ecx,esp
 8048585:	83 e4 f0             	and    esp,0xfffffff0
 8048588:	50                   	push   eax
 8048589:	54                   	push   esp
 804858a:	52                   	push   edx
 804858b:	68 e0 8e 04 08       	push   0x8048ee0
 8048590:	68 70 8e 04 08       	push   0x8048e70
 8048595:	51                   	push   ecx
 8048596:	56                   	push   esi
 8048597:	68 df 8b 04 08       	push   0x8048bdf
 804859c:	e8 7f ff ff ff       	call   8048520 <__libc_start_main@plt>
 80485a1:	f4                   	hlt    
 80485a2:	66 90                	xchg   ax,ax
 80485a4:	66 90                	xchg   ax,ax
 80485a6:	66 90                	xchg   ax,ax
 80485a8:	66 90                	xchg   ax,ax
 80485aa:	66 90                	xchg   ax,ax
 80485ac:	66 90                	xchg   ax,ax
 80485ae:	66 90                	xchg   ax,ax

080485b0 <__x86.get_pc_thunk.bx>:
 80485b0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80485b3:	c3                   	ret    
 80485b4:	66 90                	xchg   ax,ax
 80485b6:	66 90                	xchg   ax,ax
 80485b8:	66 90                	xchg   ax,ax
 80485ba:	66 90                	xchg   ax,ax
 80485bc:	66 90                	xchg   ax,ax
 80485be:	66 90                	xchg   ax,ax

080485c0 <deregister_tm_clones>:
 80485c0:	b8 4f b0 04 08       	mov    eax,0x804b04f
 80485c5:	2d 4c b0 04 08       	sub    eax,0x804b04c
 80485ca:	83 f8 06             	cmp    eax,0x6
 80485cd:	77 01                	ja     80485d0 <deregister_tm_clones+0x10>
 80485cf:	c3                   	ret    
 80485d0:	b8 00 00 00 00       	mov    eax,0x0
 80485d5:	85 c0                	test   eax,eax
 80485d7:	74 f6                	je     80485cf <deregister_tm_clones+0xf>
 80485d9:	55                   	push   ebp
 80485da:	89 e5                	mov    ebp,esp
 80485dc:	83 ec 18             	sub    esp,0x18
 80485df:	c7 04 24 4c b0 04 08 	mov    DWORD PTR [esp],0x804b04c
 80485e6:	ff d0                	call   eax
 80485e8:	c9                   	leave  
 80485e9:	c3                   	ret    
 80485ea:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

080485f0 <register_tm_clones>:
 80485f0:	b8 4c b0 04 08       	mov    eax,0x804b04c
 80485f5:	2d 4c b0 04 08       	sub    eax,0x804b04c
 80485fa:	c1 f8 02             	sar    eax,0x2
 80485fd:	89 c2                	mov    edx,eax
 80485ff:	c1 ea 1f             	shr    edx,0x1f
 8048602:	01 d0                	add    eax,edx
 8048604:	d1 f8                	sar    eax,1
 8048606:	75 01                	jne    8048609 <register_tm_clones+0x19>
 8048608:	c3                   	ret    
 8048609:	ba 00 00 00 00       	mov    edx,0x0
 804860e:	85 d2                	test   edx,edx
 8048610:	74 f6                	je     8048608 <register_tm_clones+0x18>
 8048612:	55                   	push   ebp
 8048613:	89 e5                	mov    ebp,esp
 8048615:	83 ec 18             	sub    esp,0x18
 8048618:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804861c:	c7 04 24 4c b0 04 08 	mov    DWORD PTR [esp],0x804b04c
 8048623:	ff d2                	call   edx
 8048625:	c9                   	leave  
 8048626:	c3                   	ret    
 8048627:	89 f6                	mov    esi,esi
 8048629:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048630 <__do_global_dtors_aux>:
 8048630:	80 3d 54 b0 04 08 00 	cmp    BYTE PTR ds:0x804b054,0x0
 8048637:	75 13                	jne    804864c <__do_global_dtors_aux+0x1c>
 8048639:	55                   	push   ebp
 804863a:	89 e5                	mov    ebp,esp
 804863c:	83 ec 08             	sub    esp,0x8
 804863f:	e8 7c ff ff ff       	call   80485c0 <deregister_tm_clones>
 8048644:	c6 05 54 b0 04 08 01 	mov    BYTE PTR ds:0x804b054,0x1
 804864b:	c9                   	leave  
 804864c:	f3 c3                	repz ret 
 804864e:	66 90                	xchg   ax,ax

08048650 <frame_dummy>:
 8048650:	a1 10 af 04 08       	mov    eax,ds:0x804af10
 8048655:	85 c0                	test   eax,eax
 8048657:	74 1f                	je     8048678 <frame_dummy+0x28>
 8048659:	b8 00 00 00 00       	mov    eax,0x0
 804865e:	85 c0                	test   eax,eax
 8048660:	74 16                	je     8048678 <frame_dummy+0x28>
 8048662:	55                   	push   ebp
 8048663:	89 e5                	mov    ebp,esp
 8048665:	83 ec 18             	sub    esp,0x18
 8048668:	c7 04 24 10 af 04 08 	mov    DWORD PTR [esp],0x804af10
 804866f:	ff d0                	call   eax
 8048671:	c9                   	leave  
 8048672:	e9 79 ff ff ff       	jmp    80485f0 <register_tm_clones>
 8048677:	90                   	nop
 8048678:	e9 73 ff ff ff       	jmp    80485f0 <register_tm_clones>

0804867d <read_string>:
 804867d:	55                   	push   ebp
 804867e:	89 e5                	mov    ebp,esp
 8048680:	83 ec 38             	sub    esp,0x38
 8048683:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048686:	83 c0 01             	add    eax,0x1
 8048689:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804868d:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 8048694:	e8 d7 fe ff ff       	call   8048570 <calloc@plt>
 8048699:	89 c2                	mov    edx,eax
 804869b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804869e:	89 10                	mov    DWORD PTR [eax],edx
 80486a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80486a3:	8b 00                	mov    eax,DWORD PTR [eax]
 80486a5:	85 c0                	test   eax,eax
 80486a7:	75 63                	jne    804870c <read_string+0x8f>
 80486a9:	e8 92 fe ff ff       	call   8048540 <__errno_location@plt>
 80486ae:	8b 00                	mov    eax,DWORD PTR [eax]
 80486b0:	85 c0                	test   eax,eax
 80486b2:	74 11                	je     80486c5 <read_string+0x48>
 80486b4:	e8 87 fe ff ff       	call   8048540 <__errno_location@plt>
 80486b9:	8b 00                	mov    eax,DWORD PTR [eax]
 80486bb:	89 04 24             	mov    DWORD PTR [esp],eax
 80486be:	e8 2d fe ff ff       	call   80484f0 <strerror@plt>
 80486c3:	eb 05                	jmp    80486ca <read_string+0x4d>
 80486c5:	b8 00 8f 04 08       	mov    eax,0x8048f00
 80486ca:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 80486d0:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 80486d4:	c7 44 24 10 bc 91 04 	mov    DWORD PTR [esp+0x10],0x80491bc
 80486db:	08 
 80486dc:	c7 44 24 0c 16 00 00 	mov    DWORD PTR [esp+0xc],0x16
 80486e3:	00 
 80486e4:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 80486eb:	08 
 80486ec:	c7 44 24 04 0c 8f 04 	mov    DWORD PTR [esp+0x4],0x8048f0c
 80486f3:	08 
 80486f4:	89 14 24             	mov    DWORD PTR [esp],edx
 80486f7:	e8 34 fe ff ff       	call   8048530 <fprintf@plt>
 80486fc:	e8 3f fe ff ff       	call   8048540 <__errno_location@plt>
 8048701:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048707:	e9 8e 00 00 00       	jmp    804879a <read_string+0x11d>
 804870c:	8b 15 50 b0 04 08    	mov    edx,DWORD PTR ds:0x804b050
 8048712:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048715:	8b 00                	mov    eax,DWORD PTR [eax]
 8048717:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 804871b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804871e:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 8048722:	89 04 24             	mov    DWORD PTR [esp],eax
 8048725:	e8 a6 fd ff ff       	call   80484d0 <fgets@plt>
 804872a:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 804872d:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 8048731:	75 60                	jne    8048793 <read_string+0x116>
 8048733:	e8 08 fe ff ff       	call   8048540 <__errno_location@plt>
 8048738:	8b 00                	mov    eax,DWORD PTR [eax]
 804873a:	85 c0                	test   eax,eax
 804873c:	74 11                	je     804874f <read_string+0xd2>
 804873e:	e8 fd fd ff ff       	call   8048540 <__errno_location@plt>
 8048743:	8b 00                	mov    eax,DWORD PTR [eax]
 8048745:	89 04 24             	mov    DWORD PTR [esp],eax
 8048748:	e8 a3 fd ff ff       	call   80484f0 <strerror@plt>
 804874d:	eb 05                	jmp    8048754 <read_string+0xd7>
 804874f:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048754:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 804875a:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 804875e:	c7 44 24 10 bc 91 04 	mov    DWORD PTR [esp+0x10],0x80491bc
 8048765:	08 
 8048766:	c7 44 24 0c 19 00 00 	mov    DWORD PTR [esp+0xc],0x19
 804876d:	00 
 804876e:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048775:	08 
 8048776:	c7 44 24 04 3c 8f 04 	mov    DWORD PTR [esp+0x4],0x8048f3c
 804877d:	08 
 804877e:	89 14 24             	mov    DWORD PTR [esp],edx
 8048781:	e8 aa fd ff ff       	call   8048530 <fprintf@plt>
 8048786:	e8 b5 fd ff ff       	call   8048540 <__errno_location@plt>
 804878b:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048791:	eb 07                	jmp    804879a <read_string+0x11d>
 8048793:	b8 00 00 00 00       	mov    eax,0x0
 8048798:	eb 24                	jmp    80487be <read_string+0x141>
 804879a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804879d:	8b 00                	mov    eax,DWORD PTR [eax]
 804879f:	85 c0                	test   eax,eax
 80487a1:	74 0d                	je     80487b0 <read_string+0x133>
 80487a3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80487a6:	8b 00                	mov    eax,DWORD PTR [eax]
 80487a8:	89 04 24             	mov    DWORD PTR [esp],eax
 80487ab:	e8 00 fd ff ff       	call   80484b0 <free@plt>
 80487b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80487b3:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 80487b9:	b8 ff ff ff ff       	mov    eax,0xffffffff
 80487be:	c9                   	leave  
 80487bf:	c3                   	ret    

080487c0 <read_int>:
 80487c0:	55                   	push   ebp
 80487c1:	89 e5                	mov    ebp,esp
 80487c3:	83 ec 38             	sub    esp,0x38
 80487c6:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 80487cd:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
 80487d4:	00 
 80487d5:	8d 45 f0             	lea    eax,[ebp-0x10]
 80487d8:	89 04 24             	mov    DWORD PTR [esp],eax
 80487db:	e8 9d fe ff ff       	call   804867d <read_string>
 80487e0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80487e3:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 80487e7:	74 68                	je     8048851 <read_int+0x91>
 80487e9:	e8 52 fd ff ff       	call   8048540 <__errno_location@plt>
 80487ee:	8b 00                	mov    eax,DWORD PTR [eax]
 80487f0:	85 c0                	test   eax,eax
 80487f2:	74 11                	je     8048805 <read_int+0x45>
 80487f4:	e8 47 fd ff ff       	call   8048540 <__errno_location@plt>
 80487f9:	8b 00                	mov    eax,DWORD PTR [eax]
 80487fb:	89 04 24             	mov    DWORD PTR [esp],eax
 80487fe:	e8 ed fc ff ff       	call   80484f0 <strerror@plt>
 8048803:	eb 05                	jmp    804880a <read_int+0x4a>
 8048805:	b8 00 8f 04 08       	mov    eax,0x8048f00
 804880a:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048810:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048814:	c7 44 24 10 c8 91 04 	mov    DWORD PTR [esp+0x10],0x80491c8
 804881b:	08 
 804881c:	c7 44 24 0c 27 00 00 	mov    DWORD PTR [esp+0xc],0x27
 8048823:	00 
 8048824:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 804882b:	08 
 804882c:	c7 44 24 04 68 8f 04 	mov    DWORD PTR [esp+0x4],0x8048f68
 8048833:	08 
 8048834:	89 14 24             	mov    DWORD PTR [esp],edx
 8048837:	e8 f4 fc ff ff       	call   8048530 <fprintf@plt>
 804883c:	e8 ff fc ff ff       	call   8048540 <__errno_location@plt>
 8048841:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048847:	90                   	nop
 8048848:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 804884b:	85 c0                	test   eax,eax
 804884d:	74 2f                	je     804887e <read_int+0xbe>
 804884f:	eb 22                	jmp    8048873 <read_int+0xb3>
 8048851:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048854:	89 04 24             	mov    DWORD PTR [esp],eax
 8048857:	e8 04 fd ff ff       	call   8048560 <atoi@plt>
 804885c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
 804885f:	89 02                	mov    DWORD PTR [edx],eax
 8048861:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048864:	89 04 24             	mov    DWORD PTR [esp],eax
 8048867:	e8 44 fc ff ff       	call   80484b0 <free@plt>
 804886c:	b8 00 00 00 00       	mov    eax,0x0
 8048871:	eb 10                	jmp    8048883 <read_int+0xc3>
 8048873:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048876:	89 04 24             	mov    DWORD PTR [esp],eax
 8048879:	e8 32 fc ff ff       	call   80484b0 <free@plt>
 804887e:	b8 ff ff ff ff       	mov    eax,0xffffffff
 8048883:	c9                   	leave  
 8048884:	c3                   	ret    

08048885 <read_scan>:
 8048885:	55                   	push   ebp
 8048886:	89 e5                	mov    ebp,esp
 8048888:	83 ec 48             	sub    esp,0x48
 804888b:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
 8048892:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
 8048899:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
 80488a0:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
 80488a7:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 80488ae:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80488b5:	8d 45 0c             	lea    eax,[ebp+0xc]
 80488b8:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
 80488bb:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
 80488c2:	e9 f7 02 00 00       	jmp    8048bbe <read_scan+0x339>
 80488c7:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
 80488ca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488cd:	01 d0                	add    eax,edx
 80488cf:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 80488d2:	3c 25                	cmp    al,0x25
 80488d4:	0f 85 51 02 00 00    	jne    8048b2b <read_scan+0x2a6>
 80488da:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
 80488de:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
 80488e1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80488e4:	01 d0                	add    eax,edx
 80488e6:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 80488e9:	0f be c0             	movsx  eax,al
 80488ec:	83 f8 63             	cmp    eax,0x63
 80488ef:	0f 84 0e 01 00 00    	je     8048a03 <read_scan+0x17e>
 80488f5:	83 f8 63             	cmp    eax,0x63
 80488f8:	7f 09                	jg     8048903 <read_scan+0x7e>
 80488fa:	85 c0                	test   eax,eax
 80488fc:	74 18                	je     8048916 <read_scan+0x91>
 80488fe:	e9 c3 01 00 00       	jmp    8048ac6 <read_scan+0x241>
 8048903:	83 f8 64             	cmp    eax,0x64
 8048906:	74 71                	je     8048979 <read_scan+0xf4>
 8048908:	83 f8 73             	cmp    eax,0x73
 804890b:	0f 84 19 01 00 00    	je     8048a2a <read_scan+0x1a5>
 8048911:	e9 b0 01 00 00       	jmp    8048ac6 <read_scan+0x241>
 8048916:	e8 25 fc ff ff       	call   8048540 <__errno_location@plt>
 804891b:	8b 00                	mov    eax,DWORD PTR [eax]
 804891d:	85 c0                	test   eax,eax
 804891f:	74 11                	je     8048932 <read_scan+0xad>
 8048921:	e8 1a fc ff ff       	call   8048540 <__errno_location@plt>
 8048926:	8b 00                	mov    eax,DWORD PTR [eax]
 8048928:	89 04 24             	mov    DWORD PTR [esp],eax
 804892b:	e8 c0 fb ff ff       	call   80484f0 <strerror@plt>
 8048930:	eb 05                	jmp    8048937 <read_scan+0xb2>
 8048932:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048937:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 804893d:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048941:	c7 44 24 10 d1 91 04 	mov    DWORD PTR [esp+0x10],0x80491d1
 8048948:	08 
 8048949:	c7 44 24 0c 47 00 00 	mov    DWORD PTR [esp+0xc],0x47
 8048950:	00 
 8048951:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048958:	08 
 8048959:	c7 44 24 04 a0 8f 04 	mov    DWORD PTR [esp+0x4],0x8048fa0
 8048960:	08 
 8048961:	89 14 24             	mov    DWORD PTR [esp],edx
 8048964:	e8 c7 fb ff ff       	call   8048530 <fprintf@plt>
 8048969:	e8 d2 fb ff ff       	call   8048540 <__errno_location@plt>
 804896e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048974:	e9 5f 02 00 00       	jmp    8048bd8 <read_scan+0x353>
 8048979:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 804897c:	8d 50 04             	lea    edx,[eax+0x4]
 804897f:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 8048982:	8b 00                	mov    eax,DWORD PTR [eax]
 8048984:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
 8048987:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
 804898a:	89 04 24             	mov    DWORD PTR [esp],eax
 804898d:	e8 2e fe ff ff       	call   80487c0 <read_int>
 8048992:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 8048995:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
 8048999:	74 63                	je     80489fe <read_scan+0x179>
 804899b:	e8 a0 fb ff ff       	call   8048540 <__errno_location@plt>
 80489a0:	8b 00                	mov    eax,DWORD PTR [eax]
 80489a2:	85 c0                	test   eax,eax
 80489a4:	74 11                	je     80489b7 <read_scan+0x132>
 80489a6:	e8 95 fb ff ff       	call   8048540 <__errno_location@plt>
 80489ab:	8b 00                	mov    eax,DWORD PTR [eax]
 80489ad:	89 04 24             	mov    DWORD PTR [esp],eax
 80489b0:	e8 3b fb ff ff       	call   80484f0 <strerror@plt>
 80489b5:	eb 05                	jmp    80489bc <read_scan+0x137>
 80489b7:	b8 00 8f 04 08       	mov    eax,0x8048f00
 80489bc:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 80489c2:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 80489c6:	c7 44 24 10 d1 91 04 	mov    DWORD PTR [esp+0x10],0x80491d1
 80489cd:	08 
 80489ce:	c7 44 24 0c 4c 00 00 	mov    DWORD PTR [esp+0xc],0x4c
 80489d5:	00 
 80489d6:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 80489dd:	08 
 80489de:	c7 44 24 04 e4 8f 04 	mov    DWORD PTR [esp+0x4],0x8048fe4
 80489e5:	08 
 80489e6:	89 14 24             	mov    DWORD PTR [esp],edx
 80489e9:	e8 42 fb ff ff       	call   8048530 <fprintf@plt>
 80489ee:	e8 4d fb ff ff       	call   8048540 <__errno_location@plt>
 80489f3:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 80489f9:	e9 da 01 00 00       	jmp    8048bd8 <read_scan+0x353>
 80489fe:	e9 26 01 00 00       	jmp    8048b29 <read_scan+0x2a4>
 8048a03:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 8048a06:	8d 50 04             	lea    edx,[eax+0x4]
 8048a09:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 8048a0c:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a0e:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
 8048a11:	a1 50 b0 04 08       	mov    eax,ds:0x804b050
 8048a16:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a19:	e8 32 fb ff ff       	call   8048550 <fgetc@plt>
 8048a1e:	89 c2                	mov    edx,eax
 8048a20:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048a23:	88 10                	mov    BYTE PTR [eax],dl
 8048a25:	e9 ff 00 00 00       	jmp    8048b29 <read_scan+0x2a4>
 8048a2a:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 8048a2d:	8d 50 04             	lea    edx,[eax+0x4]
 8048a30:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 8048a33:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a35:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048a38:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 8048a3b:	8d 50 04             	lea    edx,[eax+0x4]
 8048a3e:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 8048a41:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a43:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
 8048a46:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048a49:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048a4d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048a50:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a53:	e8 25 fc ff ff       	call   804867d <read_string>
 8048a58:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 8048a5b:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
 8048a5f:	74 63                	je     8048ac4 <read_scan+0x23f>
 8048a61:	e8 da fa ff ff       	call   8048540 <__errno_location@plt>
 8048a66:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a68:	85 c0                	test   eax,eax
 8048a6a:	74 11                	je     8048a7d <read_scan+0x1f8>
 8048a6c:	e8 cf fa ff ff       	call   8048540 <__errno_location@plt>
 8048a71:	8b 00                	mov    eax,DWORD PTR [eax]
 8048a73:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a76:	e8 75 fa ff ff       	call   80484f0 <strerror@plt>
 8048a7b:	eb 05                	jmp    8048a82 <read_scan+0x1fd>
 8048a7d:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048a82:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048a88:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048a8c:	c7 44 24 10 d1 91 04 	mov    DWORD PTR [esp+0x10],0x80491d1
 8048a93:	08 
 8048a94:	c7 44 24 0c 56 00 00 	mov    DWORD PTR [esp+0xc],0x56
 8048a9b:	00 
 8048a9c:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048aa3:	08 
 8048aa4:	c7 44 24 04 18 90 04 	mov    DWORD PTR [esp+0x4],0x8049018
 8048aab:	08 
 8048aac:	89 14 24             	mov    DWORD PTR [esp],edx
 8048aaf:	e8 7c fa ff ff       	call   8048530 <fprintf@plt>
 8048ab4:	e8 87 fa ff ff       	call   8048540 <__errno_location@plt>
 8048ab9:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048abf:	e9 14 01 00 00       	jmp    8048bd8 <read_scan+0x353>
 8048ac4:	eb 63                	jmp    8048b29 <read_scan+0x2a4>
 8048ac6:	e8 75 fa ff ff       	call   8048540 <__errno_location@plt>
 8048acb:	8b 00                	mov    eax,DWORD PTR [eax]
 8048acd:	85 c0                	test   eax,eax
 8048acf:	74 11                	je     8048ae2 <read_scan+0x25d>
 8048ad1:	e8 6a fa ff ff       	call   8048540 <__errno_location@plt>
 8048ad6:	8b 00                	mov    eax,DWORD PTR [eax]
 8048ad8:	89 04 24             	mov    DWORD PTR [esp],eax
 8048adb:	e8 10 fa ff ff       	call   80484f0 <strerror@plt>
 8048ae0:	eb 05                	jmp    8048ae7 <read_scan+0x262>
 8048ae2:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048ae7:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048aed:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048af1:	c7 44 24 10 d1 91 04 	mov    DWORD PTR [esp+0x10],0x80491d1
 8048af8:	08 
 8048af9:	c7 44 24 0c 59 00 00 	mov    DWORD PTR [esp+0xc],0x59
 8048b00:	00 
 8048b01:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048b08:	08 
 8048b09:	c7 44 24 04 50 90 04 	mov    DWORD PTR [esp+0x4],0x8049050
 8048b10:	08 
 8048b11:	89 14 24             	mov    DWORD PTR [esp],edx
 8048b14:	e8 17 fa ff ff       	call   8048530 <fprintf@plt>
 8048b19:	e8 22 fa ff ff       	call   8048540 <__errno_location@plt>
 8048b1e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048b24:	e9 af 00 00 00       	jmp    8048bd8 <read_scan+0x353>
 8048b29:	eb 0d                	jmp    8048b38 <read_scan+0x2b3>
 8048b2b:	a1 50 b0 04 08       	mov    eax,ds:0x804b050
 8048b30:	89 04 24             	mov    DWORD PTR [esp],eax
 8048b33:	e8 18 fa ff ff       	call   8048550 <fgetc@plt>
 8048b38:	a1 50 b0 04 08       	mov    eax,ds:0x804b050
 8048b3d:	89 04 24             	mov    DWORD PTR [esp],eax
 8048b40:	e8 cb f9 ff ff       	call   8048510 <feof@plt>
 8048b45:	85 c0                	test   eax,eax
 8048b47:	75 11                	jne    8048b5a <read_scan+0x2d5>
 8048b49:	a1 50 b0 04 08       	mov    eax,ds:0x804b050
 8048b4e:	89 04 24             	mov    DWORD PTR [esp],eax
 8048b51:	e8 6a f9 ff ff       	call   80484c0 <ferror@plt>
 8048b56:	85 c0                	test   eax,eax
 8048b58:	74 60                	je     8048bba <read_scan+0x335>
 8048b5a:	e8 e1 f9 ff ff       	call   8048540 <__errno_location@plt>
 8048b5f:	8b 00                	mov    eax,DWORD PTR [eax]
 8048b61:	85 c0                	test   eax,eax
 8048b63:	74 11                	je     8048b76 <read_scan+0x2f1>
 8048b65:	e8 d6 f9 ff ff       	call   8048540 <__errno_location@plt>
 8048b6a:	8b 00                	mov    eax,DWORD PTR [eax]
 8048b6c:	89 04 24             	mov    DWORD PTR [esp],eax
 8048b6f:	e8 7c f9 ff ff       	call   80484f0 <strerror@plt>
 8048b74:	eb 05                	jmp    8048b7b <read_scan+0x2f6>
 8048b76:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048b7b:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048b81:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048b85:	c7 44 24 10 d1 91 04 	mov    DWORD PTR [esp+0x10],0x80491d1
 8048b8c:	08 
 8048b8d:	c7 44 24 0c 61 00 00 	mov    DWORD PTR [esp+0xc],0x61
 8048b94:	00 
 8048b95:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048b9c:	08 
 8048b9d:	c7 44 24 04 3c 8f 04 	mov    DWORD PTR [esp+0x4],0x8048f3c
 8048ba4:	08 
 8048ba5:	89 14 24             	mov    DWORD PTR [esp],edx
 8048ba8:	e8 83 f9 ff ff       	call   8048530 <fprintf@plt>
 8048bad:	e8 8e f9 ff ff       	call   8048540 <__errno_location@plt>
 8048bb2:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048bb8:	eb 1e                	jmp    8048bd8 <read_scan+0x353>
 8048bba:	83 45 e0 01          	add    DWORD PTR [ebp-0x20],0x1
 8048bbe:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
 8048bc1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048bc4:	01 d0                	add    eax,edx
 8048bc6:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048bc9:	84 c0                	test   al,al
 8048bcb:	0f 85 f6 fc ff ff    	jne    80488c7 <read_scan+0x42>
 8048bd1:	b8 00 00 00 00       	mov    eax,0x0
 8048bd6:	eb 05                	jmp    8048bdd <read_scan+0x358>
 8048bd8:	b8 ff ff ff ff       	mov    eax,0xffffffff
 8048bdd:	c9                   	leave  
 8048bde:	c3                   	ret    

08048bdf <main>:
 8048bdf:	55                   	push   ebp
 8048be0:	89 e5                	mov    ebp,esp
 8048be2:	83 e4 f0             	and    esp,0xfffffff0
 8048be5:	83 ec 40             	sub    esp,0x40
 8048be8:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
 8048bef:	00 
 8048bf0:	c6 44 24 2f 20       	mov    BYTE PTR [esp+0x2f],0x20
 8048bf5:	c7 44 24 34 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
 8048bfc:	00 
 8048bfd:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
 8048c04:	00 
 8048c05:	c7 04 24 7d 90 04 08 	mov    DWORD PTR [esp],0x804907d
 8048c0c:	e8 8f f8 ff ff       	call   80484a0 <printf@plt>
 8048c11:	8d 44 24 30          	lea    eax,[esp+0x30]
 8048c15:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048c19:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
 8048c20:	00 
 8048c21:	c7 04 24 96 90 04 08 	mov    DWORD PTR [esp],0x8049096
 8048c28:	e8 58 fc ff ff       	call   8048885 <read_scan>
 8048c2d:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 8048c31:	83 7c 24 3c 00       	cmp    DWORD PTR [esp+0x3c],0x0
 8048c36:	74 63                	je     8048c9b <main+0xbc>
 8048c38:	e8 03 f9 ff ff       	call   8048540 <__errno_location@plt>
 8048c3d:	8b 00                	mov    eax,DWORD PTR [eax]
 8048c3f:	85 c0                	test   eax,eax
 8048c41:	74 11                	je     8048c54 <main+0x75>
 8048c43:	e8 f8 f8 ff ff       	call   8048540 <__errno_location@plt>
 8048c48:	8b 00                	mov    eax,DWORD PTR [eax]
 8048c4a:	89 04 24             	mov    DWORD PTR [esp],eax
 8048c4d:	e8 9e f8 ff ff       	call   80484f0 <strerror@plt>
 8048c52:	eb 05                	jmp    8048c59 <main+0x7a>
 8048c54:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048c59:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048c5f:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048c63:	c7 44 24 10 db 91 04 	mov    DWORD PTR [esp+0x10],0x80491db
 8048c6a:	08 
 8048c6b:	c7 44 24 0c 75 00 00 	mov    DWORD PTR [esp+0xc],0x75
 8048c72:	00 
 8048c73:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048c7a:	08 
 8048c7b:	c7 44 24 04 9c 90 04 	mov    DWORD PTR [esp+0x4],0x804909c
 8048c82:	08 
 8048c83:	89 14 24             	mov    DWORD PTR [esp],edx
 8048c86:	e8 a5 f8 ff ff       	call   8048530 <fprintf@plt>
 8048c8b:	e8 b0 f8 ff ff       	call   8048540 <__errno_location@plt>
 8048c90:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048c96:	e9 c7 01 00 00       	jmp    8048e62 <main+0x283>
 8048c9b:	c7 04 24 cd 90 04 08 	mov    DWORD PTR [esp],0x80490cd
 8048ca2:	e8 f9 f7 ff ff       	call   80484a0 <printf@plt>
 8048ca7:	8d 44 24 2f          	lea    eax,[esp+0x2f]
 8048cab:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048caf:	c7 04 24 e3 90 04 08 	mov    DWORD PTR [esp],0x80490e3
 8048cb6:	e8 ca fb ff ff       	call   8048885 <read_scan>
 8048cbb:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 8048cbf:	83 7c 24 3c 00       	cmp    DWORD PTR [esp+0x3c],0x0
 8048cc4:	74 63                	je     8048d29 <main+0x14a>
 8048cc6:	e8 75 f8 ff ff       	call   8048540 <__errno_location@plt>
 8048ccb:	8b 00                	mov    eax,DWORD PTR [eax]
 8048ccd:	85 c0                	test   eax,eax
 8048ccf:	74 11                	je     8048ce2 <main+0x103>
 8048cd1:	e8 6a f8 ff ff       	call   8048540 <__errno_location@plt>
 8048cd6:	8b 00                	mov    eax,DWORD PTR [eax]
 8048cd8:	89 04 24             	mov    DWORD PTR [esp],eax
 8048cdb:	e8 10 f8 ff ff       	call   80484f0 <strerror@plt>
 8048ce0:	eb 05                	jmp    8048ce7 <main+0x108>
 8048ce2:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048ce7:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048ced:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048cf1:	c7 44 24 10 db 91 04 	mov    DWORD PTR [esp+0x10],0x80491db
 8048cf8:	08 
 8048cf9:	c7 44 24 0c 79 00 00 	mov    DWORD PTR [esp+0xc],0x79
 8048d00:	00 
 8048d01:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048d08:	08 
 8048d09:	c7 44 24 04 e8 90 04 	mov    DWORD PTR [esp+0x4],0x80490e8
 8048d10:	08 
 8048d11:	89 14 24             	mov    DWORD PTR [esp],edx
 8048d14:	e8 17 f8 ff ff       	call   8048530 <fprintf@plt>
 8048d19:	e8 22 f8 ff ff       	call   8048540 <__errno_location@plt>
 8048d1e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048d24:	e9 39 01 00 00       	jmp    8048e62 <main+0x283>
 8048d29:	c7 04 24 16 91 04 08 	mov    DWORD PTR [esp],0x8049116
 8048d30:	e8 6b f7 ff ff       	call   80484a0 <printf@plt>
 8048d35:	8d 44 24 34          	lea    eax,[esp+0x34]
 8048d39:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048d3d:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
 8048d44:	00 
 8048d45:	c7 04 24 96 90 04 08 	mov    DWORD PTR [esp],0x8049096
 8048d4c:	e8 34 fb ff ff       	call   8048885 <read_scan>
 8048d51:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 8048d55:	83 7c 24 3c 00       	cmp    DWORD PTR [esp+0x3c],0x0
 8048d5a:	74 63                	je     8048dbf <main+0x1e0>
 8048d5c:	e8 df f7 ff ff       	call   8048540 <__errno_location@plt>
 8048d61:	8b 00                	mov    eax,DWORD PTR [eax]
 8048d63:	85 c0                	test   eax,eax
 8048d65:	74 11                	je     8048d78 <main+0x199>
 8048d67:	e8 d4 f7 ff ff       	call   8048540 <__errno_location@plt>
 8048d6c:	8b 00                	mov    eax,DWORD PTR [eax]
 8048d6e:	89 04 24             	mov    DWORD PTR [esp],eax
 8048d71:	e8 7a f7 ff ff       	call   80484f0 <strerror@plt>
 8048d76:	eb 05                	jmp    8048d7d <main+0x19e>
 8048d78:	b8 00 8f 04 08       	mov    eax,0x8048f00
 8048d7d:	8b 15 4c b0 04 08    	mov    edx,DWORD PTR ds:0x804b04c
 8048d83:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 8048d87:	c7 44 24 10 db 91 04 	mov    DWORD PTR [esp+0x10],0x80491db
 8048d8e:	08 
 8048d8f:	c7 44 24 0c 7d 00 00 	mov    DWORD PTR [esp+0xc],0x7d
 8048d96:	00 
 8048d97:	c7 44 24 08 05 8f 04 	mov    DWORD PTR [esp+0x8],0x8048f05
 8048d9e:	08 
 8048d9f:	c7 44 24 04 30 91 04 	mov    DWORD PTR [esp+0x4],0x8049130
 8048da6:	08 
 8048da7:	89 14 24             	mov    DWORD PTR [esp],edx
 8048daa:	e8 81 f7 ff ff       	call   8048530 <fprintf@plt>
 8048daf:	e8 8c f7 ff ff       	call   8048540 <__errno_location@plt>
 8048db4:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
 8048dba:	e9 a3 00 00 00       	jmp    8048e62 <main+0x283>
 8048dbf:	c7 04 24 60 91 04 08 	mov    DWORD PTR [esp],0x8049160
 8048dc6:	e8 d5 f6 ff ff       	call   80484a0 <printf@plt>
 8048dcb:	8d 44 24 38          	lea    eax,[esp+0x38]
 8048dcf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048dd3:	c7 04 24 72 91 04 08 	mov    DWORD PTR [esp],0x8049172
 8048dda:	e8 a6 fa ff ff       	call   8048885 <read_scan>
 8048ddf:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 8048de3:	c7 04 24 75 91 04 08 	mov    DWORD PTR [esp],0x8049175
 8048dea:	e8 f1 f6 ff ff       	call   80484e0 <puts@plt>
 8048def:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
 8048df3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048df7:	c7 04 24 87 91 04 08 	mov    DWORD PTR [esp],0x8049187
 8048dfe:	e8 9d f6 ff ff       	call   80484a0 <printf@plt>
 8048e03:	0f b6 44 24 2f       	movzx  eax,BYTE PTR [esp+0x2f]
 8048e08:	0f be c0             	movsx  eax,al
 8048e0b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048e0f:	c7 04 24 96 91 04 08 	mov    DWORD PTR [esp],0x8049196
 8048e16:	e8 85 f6 ff ff       	call   80484a0 <printf@plt>
 8048e1b:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048e1f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048e23:	c7 04 24 a5 91 04 08 	mov    DWORD PTR [esp],0x80491a5
 8048e2a:	e8 71 f6 ff ff       	call   80484a0 <printf@plt>
 8048e2f:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 8048e33:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048e37:	c7 04 24 b3 91 04 08 	mov    DWORD PTR [esp],0x80491b3
 8048e3e:	e8 5d f6 ff ff       	call   80484a0 <printf@plt>
 8048e43:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
 8048e47:	89 04 24             	mov    DWORD PTR [esp],eax
 8048e4a:	e8 61 f6 ff ff       	call   80484b0 <free@plt>
 8048e4f:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048e53:	89 04 24             	mov    DWORD PTR [esp],eax
 8048e56:	e8 55 f6 ff ff       	call   80484b0 <free@plt>
 8048e5b:	b8 00 00 00 00       	mov    eax,0x0
 8048e60:	eb 05                	jmp    8048e67 <main+0x288>
 8048e62:	b8 ff ff ff ff       	mov    eax,0xffffffff
 8048e67:	c9                   	leave  
 8048e68:	c3                   	ret    
 8048e69:	66 90                	xchg   ax,ax
 8048e6b:	66 90                	xchg   ax,ax
 8048e6d:	66 90                	xchg   ax,ax
 8048e6f:	90                   	nop

08048e70 <__libc_csu_init>:
 8048e70:	55                   	push   ebp
 8048e71:	57                   	push   edi
 8048e72:	31 ff                	xor    edi,edi
 8048e74:	56                   	push   esi
 8048e75:	53                   	push   ebx
 8048e76:	e8 35 f7 ff ff       	call   80485b0 <__x86.get_pc_thunk.bx>
 8048e7b:	81 c3 85 21 00 00    	add    ebx,0x2185
 8048e81:	83 ec 1c             	sub    esp,0x1c
 8048e84:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048e88:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 8048e8e:	e8 d5 f5 ff ff       	call   8048468 <_init>
 8048e93:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048e99:	29 c6                	sub    esi,eax
 8048e9b:	c1 fe 02             	sar    esi,0x2
 8048e9e:	85 f6                	test   esi,esi
 8048ea0:	74 27                	je     8048ec9 <__libc_csu_init+0x59>
 8048ea2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048ea8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 8048eac:	89 2c 24             	mov    DWORD PTR [esp],ebp
 8048eaf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048eb3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048eb7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048ebb:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048ec2:	83 c7 01             	add    edi,0x1
 8048ec5:	39 f7                	cmp    edi,esi
 8048ec7:	75 df                	jne    8048ea8 <__libc_csu_init+0x38>
 8048ec9:	83 c4 1c             	add    esp,0x1c
 8048ecc:	5b                   	pop    ebx
 8048ecd:	5e                   	pop    esi
 8048ece:	5f                   	pop    edi
 8048ecf:	5d                   	pop    ebp
 8048ed0:	c3                   	ret    
 8048ed1:	eb 0d                	jmp    8048ee0 <__libc_csu_fini>
 8048ed3:	90                   	nop
 8048ed4:	90                   	nop
 8048ed5:	90                   	nop
 8048ed6:	90                   	nop
 8048ed7:	90                   	nop
 8048ed8:	90                   	nop
 8048ed9:	90                   	nop
 8048eda:	90                   	nop
 8048edb:	90                   	nop
 8048edc:	90                   	nop
 8048edd:	90                   	nop
 8048ede:	90                   	nop
 8048edf:	90                   	nop

08048ee0 <__libc_csu_fini>:
 8048ee0:	f3 c3                	repz ret 

Disassembly of section .fini:

08048ee4 <_fini>:
 8048ee4:	53                   	push   ebx
 8048ee5:	83 ec 08             	sub    esp,0x8
 8048ee8:	e8 c3 f6 ff ff       	call   80485b0 <__x86.get_pc_thunk.bx>
 8048eed:	81 c3 13 21 00 00    	add    ebx,0x2113
 8048ef3:	83 c4 08             	add    esp,0x8
 8048ef6:	5b                   	pop    ebx
 8048ef7:	c3                   	ret    
