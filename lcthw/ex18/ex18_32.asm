
ex18:     file format elf32-i386


Disassembly of section .init:

080483c0 <_init>:
 80483c0:	53                   	push   ebx
 80483c1:	83 ec 08             	sub    esp,0x8
 80483c4:	e8 17 01 00 00       	call   80484e0 <__x86.get_pc_thunk.bx>
 80483c9:	81 c3 37 1c 00 00    	add    ebx,0x1c37
 80483cf:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80483d5:	85 c0                	test   eax,eax
 80483d7:	74 05                	je     80483de <_init+0x1e>
 80483d9:	e8 72 00 00 00       	call   8048450 <__gmon_start__@plt>
 80483de:	83 c4 08             	add    esp,0x8
 80483e1:	5b                   	pop    ebx
 80483e2:	c3                   	ret    

Disassembly of section .plt:

080483f0 <printf@plt-0x10>:
 80483f0:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 80483f6:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 80483fc:	00 00                	add    BYTE PTR [eax],al
	...

08048400 <printf@plt>:
 8048400:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048406:	68 00 00 00 00       	push   0x0
 804840b:	e9 e0 ff ff ff       	jmp    80483f0 <_init+0x30>

08048410 <free@plt>:
 8048410:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048416:	68 08 00 00 00       	push   0x8
 804841b:	e9 d0 ff ff ff       	jmp    80483f0 <_init+0x30>

08048420 <memcpy@plt>:
 8048420:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048426:	68 10 00 00 00       	push   0x10
 804842b:	e9 c0 ff ff ff       	jmp    80483f0 <_init+0x30>

08048430 <perror@plt>:
 8048430:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048436:	68 18 00 00 00       	push   0x18
 804843b:	e9 b0 ff ff ff       	jmp    80483f0 <_init+0x30>

08048440 <malloc@plt>:
 8048440:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 8048446:	68 20 00 00 00       	push   0x20
 804844b:	e9 a0 ff ff ff       	jmp    80483f0 <_init+0x30>

08048450 <__gmon_start__@plt>:
 8048450:	ff 25 20 a0 04 08    	jmp    DWORD PTR ds:0x804a020
 8048456:	68 28 00 00 00       	push   0x28
 804845b:	e9 90 ff ff ff       	jmp    80483f0 <_init+0x30>

08048460 <exit@plt>:
 8048460:	ff 25 24 a0 04 08    	jmp    DWORD PTR ds:0x804a024
 8048466:	68 30 00 00 00       	push   0x30
 804846b:	e9 80 ff ff ff       	jmp    80483f0 <_init+0x30>

08048470 <__libc_start_main@plt>:
 8048470:	ff 25 28 a0 04 08    	jmp    DWORD PTR ds:0x804a028
 8048476:	68 38 00 00 00       	push   0x38
 804847b:	e9 70 ff ff ff       	jmp    80483f0 <_init+0x30>

08048480 <putchar@plt>:
 8048480:	ff 25 2c a0 04 08    	jmp    DWORD PTR ds:0x804a02c
 8048486:	68 40 00 00 00       	push   0x40
 804848b:	e9 60 ff ff ff       	jmp    80483f0 <_init+0x30>

08048490 <__errno_location@plt>:
 8048490:	ff 25 30 a0 04 08    	jmp    DWORD PTR ds:0x804a030
 8048496:	68 48 00 00 00       	push   0x48
 804849b:	e9 50 ff ff ff       	jmp    80483f0 <_init+0x30>

080484a0 <atoi@plt>:
 80484a0:	ff 25 34 a0 04 08    	jmp    DWORD PTR ds:0x804a034
 80484a6:	68 50 00 00 00       	push   0x50
 80484ab:	e9 40 ff ff ff       	jmp    80483f0 <_init+0x30>

Disassembly of section .text:

080484b0 <_start>:
 80484b0:	31 ed                	xor    ebp,ebp
 80484b2:	5e                   	pop    esi
 80484b3:	89 e1                	mov    ecx,esp
 80484b5:	83 e4 f0             	and    esp,0xfffffff0
 80484b8:	50                   	push   eax
 80484b9:	54                   	push   esp
 80484ba:	52                   	push   edx
 80484bb:	68 40 89 04 08       	push   0x8048940
 80484c0:	68 d0 88 04 08       	push   0x80488d0
 80484c5:	51                   	push   ecx
 80484c6:	56                   	push   esi
 80484c7:	68 b2 87 04 08       	push   0x80487b2
 80484cc:	e8 9f ff ff ff       	call   8048470 <__libc_start_main@plt>
 80484d1:	f4                   	hlt    
 80484d2:	66 90                	xchg   ax,ax
 80484d4:	66 90                	xchg   ax,ax
 80484d6:	66 90                	xchg   ax,ax
 80484d8:	66 90                	xchg   ax,ax
 80484da:	66 90                	xchg   ax,ax
 80484dc:	66 90                	xchg   ax,ax
 80484de:	66 90                	xchg   ax,ax

080484e0 <__x86.get_pc_thunk.bx>:
 80484e0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80484e3:	c3                   	ret    
 80484e4:	66 90                	xchg   ax,ax
 80484e6:	66 90                	xchg   ax,ax
 80484e8:	66 90                	xchg   ax,ax
 80484ea:	66 90                	xchg   ax,ax
 80484ec:	66 90                	xchg   ax,ax
 80484ee:	66 90                	xchg   ax,ax

080484f0 <deregister_tm_clones>:
 80484f0:	b8 43 a0 04 08       	mov    eax,0x804a043
 80484f5:	2d 40 a0 04 08       	sub    eax,0x804a040
 80484fa:	83 f8 06             	cmp    eax,0x6
 80484fd:	77 01                	ja     8048500 <deregister_tm_clones+0x10>
 80484ff:	c3                   	ret    
 8048500:	b8 00 00 00 00       	mov    eax,0x0
 8048505:	85 c0                	test   eax,eax
 8048507:	74 f6                	je     80484ff <deregister_tm_clones+0xf>
 8048509:	55                   	push   ebp
 804850a:	89 e5                	mov    ebp,esp
 804850c:	83 ec 18             	sub    esp,0x18
 804850f:	c7 04 24 40 a0 04 08 	mov    DWORD PTR [esp],0x804a040
 8048516:	ff d0                	call   eax
 8048518:	c9                   	leave  
 8048519:	c3                   	ret    
 804851a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

08048520 <register_tm_clones>:
 8048520:	b8 40 a0 04 08       	mov    eax,0x804a040
 8048525:	2d 40 a0 04 08       	sub    eax,0x804a040
 804852a:	c1 f8 02             	sar    eax,0x2
 804852d:	89 c2                	mov    edx,eax
 804852f:	c1 ea 1f             	shr    edx,0x1f
 8048532:	01 d0                	add    eax,edx
 8048534:	d1 f8                	sar    eax,1
 8048536:	75 01                	jne    8048539 <register_tm_clones+0x19>
 8048538:	c3                   	ret    
 8048539:	ba 00 00 00 00       	mov    edx,0x0
 804853e:	85 d2                	test   edx,edx
 8048540:	74 f6                	je     8048538 <register_tm_clones+0x18>
 8048542:	55                   	push   ebp
 8048543:	89 e5                	mov    ebp,esp
 8048545:	83 ec 18             	sub    esp,0x18
 8048548:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804854c:	c7 04 24 40 a0 04 08 	mov    DWORD PTR [esp],0x804a040
 8048553:	ff d2                	call   edx
 8048555:	c9                   	leave  
 8048556:	c3                   	ret    
 8048557:	89 f6                	mov    esi,esi
 8048559:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048560 <__do_global_dtors_aux>:
 8048560:	80 3d 40 a0 04 08 00 	cmp    BYTE PTR ds:0x804a040,0x0
 8048567:	75 13                	jne    804857c <__do_global_dtors_aux+0x1c>
 8048569:	55                   	push   ebp
 804856a:	89 e5                	mov    ebp,esp
 804856c:	83 ec 08             	sub    esp,0x8
 804856f:	e8 7c ff ff ff       	call   80484f0 <deregister_tm_clones>
 8048574:	c6 05 40 a0 04 08 01 	mov    BYTE PTR ds:0x804a040,0x1
 804857b:	c9                   	leave  
 804857c:	f3 c3                	repz ret 
 804857e:	66 90                	xchg   ax,ax

08048580 <frame_dummy>:
 8048580:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048585:	85 c0                	test   eax,eax
 8048587:	74 1f                	je     80485a8 <frame_dummy+0x28>
 8048589:	b8 00 00 00 00       	mov    eax,0x0
 804858e:	85 c0                	test   eax,eax
 8048590:	74 16                	je     80485a8 <frame_dummy+0x28>
 8048592:	55                   	push   ebp
 8048593:	89 e5                	mov    ebp,esp
 8048595:	83 ec 18             	sub    esp,0x18
 8048598:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804859f:	ff d0                	call   eax
 80485a1:	c9                   	leave  
 80485a2:	e9 79 ff ff ff       	jmp    8048520 <register_tm_clones>
 80485a7:	90                   	nop
 80485a8:	e9 73 ff ff ff       	jmp    8048520 <register_tm_clones>

080485ad <die>:
 80485ad:	55                   	push   ebp
 80485ae:	89 e5                	mov    ebp,esp
 80485b0:	83 ec 18             	sub    esp,0x18
 80485b3:	e8 d8 fe ff ff       	call   8048490 <__errno_location@plt>
 80485b8:	8b 00                	mov    eax,DWORD PTR [eax]
 80485ba:	85 c0                	test   eax,eax
 80485bc:	74 0d                	je     80485cb <die+0x1e>
 80485be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485c1:	89 04 24             	mov    DWORD PTR [esp],eax
 80485c4:	e8 67 fe ff ff       	call   8048430 <perror@plt>
 80485c9:	eb 13                	jmp    80485de <die+0x31>
 80485cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485ce:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485d2:	c7 04 24 60 89 04 08 	mov    DWORD PTR [esp],0x8048960
 80485d9:	e8 22 fe ff ff       	call   8048400 <printf@plt>
 80485de:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80485e5:	e8 76 fe ff ff       	call   8048460 <exit@plt>

080485ea <bubble_sort>:
 80485ea:	55                   	push   ebp
 80485eb:	89 e5                	mov    ebp,esp
 80485ed:	83 ec 28             	sub    esp,0x28
 80485f0:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 80485f7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80485fa:	c1 e0 02             	shl    eax,0x2
 80485fd:	89 04 24             	mov    DWORD PTR [esp],eax
 8048600:	e8 3b fe ff ff       	call   8048440 <malloc@plt>
 8048605:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048608:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804860b:	c1 e0 02             	shl    eax,0x2
 804860e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048612:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048615:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048619:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804861c:	89 04 24             	mov    DWORD PTR [esp],eax
 804861f:	e8 fc fd ff ff       	call   8048420 <memcpy@plt>
 8048624:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
 804862b:	e9 a8 00 00 00       	jmp    80486d8 <bubble_sort+0xee>
 8048630:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
 8048637:	e9 89 00 00 00       	jmp    80486c5 <bubble_sort+0xdb>
 804863c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 804863f:	83 c0 01             	add    eax,0x1
 8048642:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 8048649:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804864c:	01 d0                	add    eax,edx
 804864e:	8b 10                	mov    edx,DWORD PTR [eax]
 8048650:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048653:	8d 0c 85 00 00 00 00 	lea    ecx,[eax*4+0x0]
 804865a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804865d:	01 c8                	add    eax,ecx
 804865f:	8b 00                	mov    eax,DWORD PTR [eax]
 8048661:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 8048665:	89 04 24             	mov    DWORD PTR [esp],eax
 8048668:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804866b:	ff d0                	call   eax
 804866d:	85 c0                	test   eax,eax
 804866f:	7e 50                	jle    80486c1 <bubble_sort+0xd7>
 8048671:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048674:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 804867b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804867e:	01 d0                	add    eax,edx
 8048680:	8b 00                	mov    eax,DWORD PTR [eax]
 8048682:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
 8048685:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048688:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 804868f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048692:	01 c2                	add    edx,eax
 8048694:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 8048697:	83 c0 01             	add    eax,0x1
 804869a:	8d 0c 85 00 00 00 00 	lea    ecx,[eax*4+0x0]
 80486a1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80486a4:	01 c8                	add    eax,ecx
 80486a6:	8b 00                	mov    eax,DWORD PTR [eax]
 80486a8:	89 02                	mov    DWORD PTR [edx],eax
 80486aa:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 80486ad:	83 c0 01             	add    eax,0x1
 80486b0:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 80486b7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80486ba:	01 c2                	add    edx,eax
 80486bc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 80486bf:	89 02                	mov    DWORD PTR [edx],eax
 80486c1:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
 80486c5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80486c8:	83 e8 01             	sub    eax,0x1
 80486cb:	3b 45 ec             	cmp    eax,DWORD PTR [ebp-0x14]
 80486ce:	0f 8f 68 ff ff ff    	jg     804863c <bubble_sort+0x52>
 80486d4:	83 45 e8 01          	add    DWORD PTR [ebp-0x18],0x1
 80486d8:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
 80486db:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
 80486de:	0f 8c 4c ff ff ff    	jl     8048630 <bubble_sort+0x46>
 80486e4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80486e7:	c9                   	leave  
 80486e8:	c3                   	ret    

080486e9 <sorted_order>:
 80486e9:	55                   	push   ebp
 80486ea:	89 e5                	mov    ebp,esp
 80486ec:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80486ef:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
 80486f2:	29 c2                	sub    edx,eax
 80486f4:	89 d0                	mov    eax,edx
 80486f6:	5d                   	pop    ebp
 80486f7:	c3                   	ret    

080486f8 <reverse_order>:
 80486f8:	55                   	push   ebp
 80486f9:	89 e5                	mov    ebp,esp
 80486fb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80486fe:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8048701:	29 c2                	sub    edx,eax
 8048703:	89 d0                	mov    eax,edx
 8048705:	5d                   	pop    ebp
 8048706:	c3                   	ret    

08048707 <strange_order>:
 8048707:	55                   	push   ebp
 8048708:	89 e5                	mov    ebp,esp
 804870a:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
 804870e:	74 06                	je     8048716 <strange_order+0xf>
 8048710:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
 8048714:	75 07                	jne    804871d <strange_order+0x16>
 8048716:	b8 00 00 00 00       	mov    eax,0x0
 804871b:	eb 09                	jmp    8048726 <strange_order+0x1f>
 804871d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048720:	99                   	cdq    
 8048721:	f7 7d 0c             	idiv   DWORD PTR [ebp+0xc]
 8048724:	89 d0                	mov    eax,edx
 8048726:	5d                   	pop    ebp
 8048727:	c3                   	ret    

08048728 <test_sorting>:
 8048728:	55                   	push   ebp
 8048729:	89 e5                	mov    ebp,esp
 804872b:	83 ec 28             	sub    esp,0x28
 804872e:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 8048735:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048738:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804873c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804873f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048743:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048746:	89 04 24             	mov    DWORD PTR [esp],eax
 8048749:	e8 9c fe ff ff       	call   80485ea <bubble_sort>
 804874e:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048751:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 8048755:	75 0c                	jne    8048763 <test_sorting+0x3b>
 8048757:	c7 04 24 6b 89 04 08 	mov    DWORD PTR [esp],0x804896b
 804875e:	e8 4a fe ff ff       	call   80485ad <die>
 8048763:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 804876a:	eb 25                	jmp    8048791 <test_sorting+0x69>
 804876c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 804876f:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 8048776:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048779:	01 d0                	add    eax,edx
 804877b:	8b 00                	mov    eax,DWORD PTR [eax]
 804877d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048781:	c7 04 24 7b 89 04 08 	mov    DWORD PTR [esp],0x804897b
 8048788:	e8 73 fc ff ff       	call   8048400 <printf@plt>
 804878d:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
 8048791:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 8048794:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
 8048797:	7c d3                	jl     804876c <test_sorting+0x44>
 8048799:	c7 04 24 0a 00 00 00 	mov    DWORD PTR [esp],0xa
 80487a0:	e8 db fc ff ff       	call   8048480 <putchar@plt>
 80487a5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80487a8:	89 04 24             	mov    DWORD PTR [esp],eax
 80487ab:	e8 60 fc ff ff       	call   8048410 <free@plt>
 80487b0:	c9                   	leave  
 80487b1:	c3                   	ret    

080487b2 <main>:
 80487b2:	55                   	push   ebp
 80487b3:	89 e5                	mov    ebp,esp
 80487b5:	53                   	push   ebx
 80487b6:	83 e4 f0             	and    esp,0xfffffff0
 80487b9:	83 ec 20             	sub    esp,0x20
 80487bc:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
 80487c0:	7f 0c                	jg     80487ce <main+0x1c>
 80487c2:	c7 04 24 7f 89 04 08 	mov    DWORD PTR [esp],0x804897f
 80487c9:	e8 df fd ff ff       	call   80485ad <die>
 80487ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80487d1:	83 e8 01             	sub    eax,0x1
 80487d4:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
 80487d8:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
 80487df:	00 
 80487e0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80487e3:	83 c0 04             	add    eax,0x4
 80487e6:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 80487ea:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 80487ee:	c1 e0 02             	shl    eax,0x2
 80487f1:	89 04 24             	mov    DWORD PTR [esp],eax
 80487f4:	e8 47 fc ff ff       	call   8048440 <malloc@plt>
 80487f9:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 80487fd:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
 8048802:	75 0c                	jne    8048810 <main+0x5e>
 8048804:	c7 04 24 95 89 04 08 	mov    DWORD PTR [esp],0x8048995
 804880b:	e8 9d fd ff ff       	call   80485ad <die>
 8048810:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
 8048817:	00 
 8048818:	eb 34                	jmp    804884e <main+0x9c>
 804881a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 804881e:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 8048825:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048829:	8d 1c 02             	lea    ebx,[edx+eax*1]
 804882c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 8048830:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 8048837:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 804883b:	01 d0                	add    eax,edx
 804883d:	8b 00                	mov    eax,DWORD PTR [eax]
 804883f:	89 04 24             	mov    DWORD PTR [esp],eax
 8048842:	e8 59 fc ff ff       	call   80484a0 <atoi@plt>
 8048847:	89 03                	mov    DWORD PTR [ebx],eax
 8048849:	83 44 24 10 01       	add    DWORD PTR [esp+0x10],0x1
 804884e:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 8048852:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
 8048856:	7c c2                	jl     804881a <main+0x68>
 8048858:	c7 44 24 08 e9 86 04 	mov    DWORD PTR [esp+0x8],0x80486e9
 804885f:	08 
 8048860:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 8048864:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048868:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804886c:	89 04 24             	mov    DWORD PTR [esp],eax
 804886f:	e8 b4 fe ff ff       	call   8048728 <test_sorting>
 8048874:	c7 44 24 08 f8 86 04 	mov    DWORD PTR [esp+0x8],0x80486f8
 804887b:	08 
 804887c:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 8048880:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048884:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048888:	89 04 24             	mov    DWORD PTR [esp],eax
 804888b:	e8 98 fe ff ff       	call   8048728 <test_sorting>
 8048890:	c7 44 24 08 07 87 04 	mov    DWORD PTR [esp+0x8],0x8048707
 8048897:	08 
 8048898:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 804889c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80488a0:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80488a4:	89 04 24             	mov    DWORD PTR [esp],eax
 80488a7:	e8 7c fe ff ff       	call   8048728 <test_sorting>
 80488ac:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80488b0:	89 04 24             	mov    DWORD PTR [esp],eax
 80488b3:	e8 58 fb ff ff       	call   8048410 <free@plt>
 80488b8:	b8 00 00 00 00       	mov    eax,0x0
 80488bd:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 80488c0:	c9                   	leave  
 80488c1:	c3                   	ret    
 80488c2:	66 90                	xchg   ax,ax
 80488c4:	66 90                	xchg   ax,ax
 80488c6:	66 90                	xchg   ax,ax
 80488c8:	66 90                	xchg   ax,ax
 80488ca:	66 90                	xchg   ax,ax
 80488cc:	66 90                	xchg   ax,ax
 80488ce:	66 90                	xchg   ax,ax

080488d0 <__libc_csu_init>:
 80488d0:	55                   	push   ebp
 80488d1:	57                   	push   edi
 80488d2:	31 ff                	xor    edi,edi
 80488d4:	56                   	push   esi
 80488d5:	53                   	push   ebx
 80488d6:	e8 05 fc ff ff       	call   80484e0 <__x86.get_pc_thunk.bx>
 80488db:	81 c3 25 17 00 00    	add    ebx,0x1725
 80488e1:	83 ec 1c             	sub    esp,0x1c
 80488e4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 80488e8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80488ee:	e8 cd fa ff ff       	call   80483c0 <_init>
 80488f3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80488f9:	29 c6                	sub    esi,eax
 80488fb:	c1 fe 02             	sar    esi,0x2
 80488fe:	85 f6                	test   esi,esi
 8048900:	74 27                	je     8048929 <__libc_csu_init+0x59>
 8048902:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048908:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804890c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804890f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048913:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048917:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804891b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048922:	83 c7 01             	add    edi,0x1
 8048925:	39 f7                	cmp    edi,esi
 8048927:	75 df                	jne    8048908 <__libc_csu_init+0x38>
 8048929:	83 c4 1c             	add    esp,0x1c
 804892c:	5b                   	pop    ebx
 804892d:	5e                   	pop    esi
 804892e:	5f                   	pop    edi
 804892f:	5d                   	pop    ebp
 8048930:	c3                   	ret    
 8048931:	eb 0d                	jmp    8048940 <__libc_csu_fini>
 8048933:	90                   	nop
 8048934:	90                   	nop
 8048935:	90                   	nop
 8048936:	90                   	nop
 8048937:	90                   	nop
 8048938:	90                   	nop
 8048939:	90                   	nop
 804893a:	90                   	nop
 804893b:	90                   	nop
 804893c:	90                   	nop
 804893d:	90                   	nop
 804893e:	90                   	nop
 804893f:	90                   	nop

08048940 <__libc_csu_fini>:
 8048940:	f3 c3                	repz ret 

Disassembly of section .fini:

08048944 <_fini>:
 8048944:	53                   	push   ebx
 8048945:	83 ec 08             	sub    esp,0x8
 8048948:	e8 93 fb ff ff       	call   80484e0 <__x86.get_pc_thunk.bx>
 804894d:	81 c3 b3 16 00 00    	add    ebx,0x16b3
 8048953:	83 c4 08             	add    esp,0x8
 8048956:	5b                   	pop    ebx
 8048957:	c3                   	ret    
