
ex14:     file format elf32-i386


Disassembly of section .init:

08048318 <_init>:
 8048318:	53                   	push   ebx
 8048319:	83 ec 08             	sub    esp,0x8
 804831c:	e8 af 00 00 00       	call   80483d0 <__x86.get_pc_thunk.bx>
 8048321:	81 c3 df 1c 00 00    	add    ebx,0x1cdf
 8048327:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 804832d:	85 c0                	test   eax,eax
 804832f:	74 05                	je     8048336 <_init+0x1e>
 8048331:	e8 2a 00 00 00       	call   8048360 <__gmon_start__@plt>
 8048336:	83 c4 08             	add    esp,0x8
 8048339:	5b                   	pop    ebx
 804833a:	c3                   	ret    

Disassembly of section .plt:

08048340 <printf@plt-0x10>:
 8048340:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048346:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804834c:	00 00                	add    BYTE PTR [eax],al
	...

08048350 <printf@plt>:
 8048350:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048356:	68 00 00 00 00       	push   0x0
 804835b:	e9 e0 ff ff ff       	jmp    8048340 <_init+0x28>

08048360 <__gmon_start__@plt>:
 8048360:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048366:	68 08 00 00 00       	push   0x8
 804836b:	e9 d0 ff ff ff       	jmp    8048340 <_init+0x28>

08048370 <__libc_start_main@plt>:
 8048370:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048376:	68 10 00 00 00       	push   0x10
 804837b:	e9 c0 ff ff ff       	jmp    8048340 <_init+0x28>

08048380 <putchar@plt>:
 8048380:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048386:	68 18 00 00 00       	push   0x18
 804838b:	e9 b0 ff ff ff       	jmp    8048340 <_init+0x28>

08048390 <__ctype_b_loc@plt>:
 8048390:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 8048396:	68 20 00 00 00       	push   0x20
 804839b:	e9 a0 ff ff ff       	jmp    8048340 <_init+0x28>

Disassembly of section .text:

080483a0 <_start>:
 80483a0:	31 ed                	xor    ebp,ebp
 80483a2:	5e                   	pop    esi
 80483a3:	89 e1                	mov    ecx,esp
 80483a5:	83 e4 f0             	and    esp,0xfffffff0
 80483a8:	50                   	push   eax
 80483a9:	54                   	push   esp
 80483aa:	52                   	push   edx
 80483ab:	68 40 86 04 08       	push   0x8048640
 80483b0:	68 d0 85 04 08       	push   0x80485d0
 80483b5:	51                   	push   ecx
 80483b6:	56                   	push   esi
 80483b7:	68 a1 85 04 08       	push   0x80485a1
 80483bc:	e8 af ff ff ff       	call   8048370 <__libc_start_main@plt>
 80483c1:	f4                   	hlt    
 80483c2:	66 90                	xchg   ax,ax
 80483c4:	66 90                	xchg   ax,ax
 80483c6:	66 90                	xchg   ax,ax
 80483c8:	66 90                	xchg   ax,ax
 80483ca:	66 90                	xchg   ax,ax
 80483cc:	66 90                	xchg   ax,ax
 80483ce:	66 90                	xchg   ax,ax

080483d0 <__x86.get_pc_thunk.bx>:
 80483d0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80483d3:	c3                   	ret    
 80483d4:	66 90                	xchg   ax,ax
 80483d6:	66 90                	xchg   ax,ax
 80483d8:	66 90                	xchg   ax,ax
 80483da:	66 90                	xchg   ax,ax
 80483dc:	66 90                	xchg   ax,ax
 80483de:	66 90                	xchg   ax,ax

080483e0 <deregister_tm_clones>:
 80483e0:	b8 2b a0 04 08       	mov    eax,0x804a02b
 80483e5:	2d 28 a0 04 08       	sub    eax,0x804a028
 80483ea:	83 f8 06             	cmp    eax,0x6
 80483ed:	77 01                	ja     80483f0 <deregister_tm_clones+0x10>
 80483ef:	c3                   	ret    
 80483f0:	b8 00 00 00 00       	mov    eax,0x0
 80483f5:	85 c0                	test   eax,eax
 80483f7:	74 f6                	je     80483ef <deregister_tm_clones+0xf>
 80483f9:	55                   	push   ebp
 80483fa:	89 e5                	mov    ebp,esp
 80483fc:	83 ec 18             	sub    esp,0x18
 80483ff:	c7 04 24 28 a0 04 08 	mov    DWORD PTR [esp],0x804a028
 8048406:	ff d0                	call   eax
 8048408:	c9                   	leave  
 8048409:	c3                   	ret    
 804840a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

08048410 <register_tm_clones>:
 8048410:	b8 28 a0 04 08       	mov    eax,0x804a028
 8048415:	2d 28 a0 04 08       	sub    eax,0x804a028
 804841a:	c1 f8 02             	sar    eax,0x2
 804841d:	89 c2                	mov    edx,eax
 804841f:	c1 ea 1f             	shr    edx,0x1f
 8048422:	01 d0                	add    eax,edx
 8048424:	d1 f8                	sar    eax,1
 8048426:	75 01                	jne    8048429 <register_tm_clones+0x19>
 8048428:	c3                   	ret    
 8048429:	ba 00 00 00 00       	mov    edx,0x0
 804842e:	85 d2                	test   edx,edx
 8048430:	74 f6                	je     8048428 <register_tm_clones+0x18>
 8048432:	55                   	push   ebp
 8048433:	89 e5                	mov    ebp,esp
 8048435:	83 ec 18             	sub    esp,0x18
 8048438:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804843c:	c7 04 24 28 a0 04 08 	mov    DWORD PTR [esp],0x804a028
 8048443:	ff d2                	call   edx
 8048445:	c9                   	leave  
 8048446:	c3                   	ret    
 8048447:	89 f6                	mov    esi,esi
 8048449:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048450 <__do_global_dtors_aux>:
 8048450:	80 3d 28 a0 04 08 00 	cmp    BYTE PTR ds:0x804a028,0x0
 8048457:	75 13                	jne    804846c <__do_global_dtors_aux+0x1c>
 8048459:	55                   	push   ebp
 804845a:	89 e5                	mov    ebp,esp
 804845c:	83 ec 08             	sub    esp,0x8
 804845f:	e8 7c ff ff ff       	call   80483e0 <deregister_tm_clones>
 8048464:	c6 05 28 a0 04 08 01 	mov    BYTE PTR ds:0x804a028,0x1
 804846b:	c9                   	leave  
 804846c:	f3 c3                	repz ret 
 804846e:	66 90                	xchg   ax,ax

08048470 <frame_dummy>:
 8048470:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048475:	85 c0                	test   eax,eax
 8048477:	74 1f                	je     8048498 <frame_dummy+0x28>
 8048479:	b8 00 00 00 00       	mov    eax,0x0
 804847e:	85 c0                	test   eax,eax
 8048480:	74 16                	je     8048498 <frame_dummy+0x28>
 8048482:	55                   	push   ebp
 8048483:	89 e5                	mov    ebp,esp
 8048485:	83 ec 18             	sub    esp,0x18
 8048488:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804848f:	ff d0                	call   eax
 8048491:	c9                   	leave  
 8048492:	e9 79 ff ff ff       	jmp    8048410 <register_tm_clones>
 8048497:	90                   	nop
 8048498:	e9 73 ff ff ff       	jmp    8048410 <register_tm_clones>

0804849d <print_arguments>:
 804849d:	55                   	push   ebp
 804849e:	89 e5                	mov    ebp,esp
 80484a0:	83 ec 28             	sub    esp,0x28
 80484a3:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80484aa:	eb 1d                	jmp    80484c9 <print_arguments+0x2c>
 80484ac:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80484af:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 80484b6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80484b9:	01 d0                	add    eax,edx
 80484bb:	8b 00                	mov    eax,DWORD PTR [eax]
 80484bd:	89 04 24             	mov    DWORD PTR [esp],eax
 80484c0:	e8 0e 00 00 00       	call   80484d3 <print_letters>
 80484c5:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
 80484c9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 80484cc:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
 80484cf:	7c db                	jl     80484ac <print_arguments+0xf>
 80484d1:	c9                   	leave  
 80484d2:	c3                   	ret    

080484d3 <print_letters>:
 80484d3:	55                   	push   ebp
 80484d4:	89 e5                	mov    ebp,esp
 80484d6:	83 ec 28             	sub    esp,0x28
 80484d9:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80484e0:	eb 4e                	jmp    8048530 <print_letters+0x5d>
 80484e2:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
 80484e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80484e8:	01 d0                	add    eax,edx
 80484ea:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 80484ed:	0f be c0             	movsx  eax,al
 80484f0:	89 04 24             	mov    DWORD PTR [esp],eax
 80484f3:	e8 55 00 00 00       	call   804854d <can_print_it>
 80484f8:	85 c0                	test   eax,eax
 80484fa:	74 30                	je     804852c <print_letters+0x59>
 80484fc:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
 80484ff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048502:	01 d0                	add    eax,edx
 8048504:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048507:	0f be d0             	movsx  edx,al
 804850a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
 804850d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048510:	01 c8                	add    eax,ecx
 8048512:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048515:	0f be c0             	movsx  eax,al
 8048518:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 804851c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048520:	c7 04 24 60 86 04 08 	mov    DWORD PTR [esp],0x8048660
 8048527:	e8 24 fe ff ff       	call   8048350 <printf@plt>
 804852c:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
 8048530:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
 8048533:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048536:	01 d0                	add    eax,edx
 8048538:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 804853b:	84 c0                	test   al,al
 804853d:	75 a3                	jne    80484e2 <print_letters+0xf>
 804853f:	c7 04 24 0a 00 00 00 	mov    DWORD PTR [esp],0xa
 8048546:	e8 35 fe ff ff       	call   8048380 <putchar@plt>
 804854b:	c9                   	leave  
 804854c:	c3                   	ret    

0804854d <can_print_it>:
 804854d:	55                   	push   ebp
 804854e:	89 e5                	mov    ebp,esp
 8048550:	83 ec 18             	sub    esp,0x18
 8048553:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048556:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
 8048559:	e8 32 fe ff ff       	call   8048390 <__ctype_b_loc@plt>
 804855e:	8b 00                	mov    eax,DWORD PTR [eax]
 8048560:	0f be 55 f4          	movsx  edx,BYTE PTR [ebp-0xc]
 8048564:	01 d2                	add    edx,edx
 8048566:	01 d0                	add    eax,edx
 8048568:	0f b7 00             	movzx  eax,WORD PTR [eax]
 804856b:	0f b7 c0             	movzx  eax,ax
 804856e:	25 00 04 00 00       	and    eax,0x400
 8048573:	85 c0                	test   eax,eax
 8048575:	75 1c                	jne    8048593 <can_print_it+0x46>
 8048577:	e8 14 fe ff ff       	call   8048390 <__ctype_b_loc@plt>
 804857c:	8b 00                	mov    eax,DWORD PTR [eax]
 804857e:	0f be 55 f4          	movsx  edx,BYTE PTR [ebp-0xc]
 8048582:	01 d2                	add    edx,edx
 8048584:	01 d0                	add    eax,edx
 8048586:	0f b7 00             	movzx  eax,WORD PTR [eax]
 8048589:	0f b7 c0             	movzx  eax,ax
 804858c:	83 e0 01             	and    eax,0x1
 804858f:	85 c0                	test   eax,eax
 8048591:	74 07                	je     804859a <can_print_it+0x4d>
 8048593:	b8 01 00 00 00       	mov    eax,0x1
 8048598:	eb 05                	jmp    804859f <can_print_it+0x52>
 804859a:	b8 00 00 00 00       	mov    eax,0x0
 804859f:	c9                   	leave  
 80485a0:	c3                   	ret    

080485a1 <main>:
 80485a1:	55                   	push   ebp
 80485a2:	89 e5                	mov    ebp,esp
 80485a4:	83 e4 f0             	and    esp,0xfffffff0
 80485a7:	83 ec 10             	sub    esp,0x10
 80485aa:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80485ad:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485b1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485b4:	89 04 24             	mov    DWORD PTR [esp],eax
 80485b7:	e8 e1 fe ff ff       	call   804849d <print_arguments>
 80485bc:	b8 00 00 00 00       	mov    eax,0x0
 80485c1:	c9                   	leave  
 80485c2:	c3                   	ret    
 80485c3:	66 90                	xchg   ax,ax
 80485c5:	66 90                	xchg   ax,ax
 80485c7:	66 90                	xchg   ax,ax
 80485c9:	66 90                	xchg   ax,ax
 80485cb:	66 90                	xchg   ax,ax
 80485cd:	66 90                	xchg   ax,ax
 80485cf:	90                   	nop

080485d0 <__libc_csu_init>:
 80485d0:	55                   	push   ebp
 80485d1:	57                   	push   edi
 80485d2:	31 ff                	xor    edi,edi
 80485d4:	56                   	push   esi
 80485d5:	53                   	push   ebx
 80485d6:	e8 f5 fd ff ff       	call   80483d0 <__x86.get_pc_thunk.bx>
 80485db:	81 c3 25 1a 00 00    	add    ebx,0x1a25
 80485e1:	83 ec 1c             	sub    esp,0x1c
 80485e4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 80485e8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80485ee:	e8 25 fd ff ff       	call   8048318 <_init>
 80485f3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80485f9:	29 c6                	sub    esi,eax
 80485fb:	c1 fe 02             	sar    esi,0x2
 80485fe:	85 f6                	test   esi,esi
 8048600:	74 27                	je     8048629 <__libc_csu_init+0x59>
 8048602:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048608:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804860c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804860f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048613:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048617:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804861b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048622:	83 c7 01             	add    edi,0x1
 8048625:	39 f7                	cmp    edi,esi
 8048627:	75 df                	jne    8048608 <__libc_csu_init+0x38>
 8048629:	83 c4 1c             	add    esp,0x1c
 804862c:	5b                   	pop    ebx
 804862d:	5e                   	pop    esi
 804862e:	5f                   	pop    edi
 804862f:	5d                   	pop    ebp
 8048630:	c3                   	ret    
 8048631:	eb 0d                	jmp    8048640 <__libc_csu_fini>
 8048633:	90                   	nop
 8048634:	90                   	nop
 8048635:	90                   	nop
 8048636:	90                   	nop
 8048637:	90                   	nop
 8048638:	90                   	nop
 8048639:	90                   	nop
 804863a:	90                   	nop
 804863b:	90                   	nop
 804863c:	90                   	nop
 804863d:	90                   	nop
 804863e:	90                   	nop
 804863f:	90                   	nop

08048640 <__libc_csu_fini>:
 8048640:	f3 c3                	repz ret 

Disassembly of section .fini:

08048644 <_fini>:
 8048644:	53                   	push   ebx
 8048645:	83 ec 08             	sub    esp,0x8
 8048648:	e8 83 fd ff ff       	call   80483d0 <__x86.get_pc_thunk.bx>
 804864d:	81 c3 b3 19 00 00    	add    ebx,0x19b3
 8048653:	83 c4 08             	add    esp,0x8
 8048656:	5b                   	pop    ebx
 8048657:	c3                   	ret    
