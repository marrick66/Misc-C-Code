
ex12_32:     file format elf32-i386


Disassembly of section .init:

080482f8 <_init>:
 80482f8:	53                   	push   ebx
 80482f9:	83 ec 08             	sub    esp,0x8
 80482fc:	e8 9f 00 00 00       	call   80483a0 <__x86.get_pc_thunk.bx>
 8048301:	81 c3 ff 1c 00 00    	add    ebx,0x1cff
 8048307:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 804830d:	85 c0                	test   eax,eax
 804830f:	74 05                	je     8048316 <_init+0x1e>
 8048311:	e8 3a 00 00 00       	call   8048350 <__gmon_start__@plt>
 8048316:	83 c4 08             	add    esp,0x8
 8048319:	5b                   	pop    ebx
 804831a:	c3                   	ret    

Disassembly of section .plt:

08048320 <printf@plt-0x10>:
 8048320:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048326:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804832c:	00 00                	add    BYTE PTR [eax],al
	...

08048330 <printf@plt>:
 8048330:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048336:	68 00 00 00 00       	push   0x0
 804833b:	e9 e0 ff ff ff       	jmp    8048320 <_init+0x28>

08048340 <__stack_chk_fail@plt>:
 8048340:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048346:	68 08 00 00 00       	push   0x8
 804834b:	e9 d0 ff ff ff       	jmp    8048320 <_init+0x28>

08048350 <__gmon_start__@plt>:
 8048350:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048356:	68 10 00 00 00       	push   0x10
 804835b:	e9 c0 ff ff ff       	jmp    8048320 <_init+0x28>

08048360 <__libc_start_main@plt>:
 8048360:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048366:	68 18 00 00 00       	push   0x18
 804836b:	e9 b0 ff ff ff       	jmp    8048320 <_init+0x28>

Disassembly of section .text:

08048370 <_start>:
 8048370:	31 ed                	xor    ebp,ebp
 8048372:	5e                   	pop    esi
 8048373:	89 e1                	mov    ecx,esp
 8048375:	83 e4 f0             	and    esp,0xfffffff0
 8048378:	50                   	push   eax
 8048379:	54                   	push   esp
 804837a:	52                   	push   edx
 804837b:	68 70 86 04 08       	push   0x8048670
 8048380:	68 00 86 04 08       	push   0x8048600
 8048385:	51                   	push   ecx
 8048386:	56                   	push   esi
 8048387:	68 6d 84 04 08       	push   0x804846d
 804838c:	e8 cf ff ff ff       	call   8048360 <__libc_start_main@plt>
 8048391:	f4                   	hlt    
 8048392:	66 90                	xchg   ax,ax
 8048394:	66 90                	xchg   ax,ax
 8048396:	66 90                	xchg   ax,ax
 8048398:	66 90                	xchg   ax,ax
 804839a:	66 90                	xchg   ax,ax
 804839c:	66 90                	xchg   ax,ax
 804839e:	66 90                	xchg   ax,ax

080483a0 <__x86.get_pc_thunk.bx>:
 80483a0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80483a3:	c3                   	ret    
 80483a4:	66 90                	xchg   ax,ax
 80483a6:	66 90                	xchg   ax,ax
 80483a8:	66 90                	xchg   ax,ax
 80483aa:	66 90                	xchg   ax,ax
 80483ac:	66 90                	xchg   ax,ax
 80483ae:	66 90                	xchg   ax,ax

080483b0 <deregister_tm_clones>:
 80483b0:	b8 27 a0 04 08       	mov    eax,0x804a027
 80483b5:	2d 24 a0 04 08       	sub    eax,0x804a024
 80483ba:	83 f8 06             	cmp    eax,0x6
 80483bd:	77 01                	ja     80483c0 <deregister_tm_clones+0x10>
 80483bf:	c3                   	ret    
 80483c0:	b8 00 00 00 00       	mov    eax,0x0
 80483c5:	85 c0                	test   eax,eax
 80483c7:	74 f6                	je     80483bf <deregister_tm_clones+0xf>
 80483c9:	55                   	push   ebp
 80483ca:	89 e5                	mov    ebp,esp
 80483cc:	83 ec 18             	sub    esp,0x18
 80483cf:	c7 04 24 24 a0 04 08 	mov    DWORD PTR [esp],0x804a024
 80483d6:	ff d0                	call   eax
 80483d8:	c9                   	leave  
 80483d9:	c3                   	ret    
 80483da:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

080483e0 <register_tm_clones>:
 80483e0:	b8 24 a0 04 08       	mov    eax,0x804a024
 80483e5:	2d 24 a0 04 08       	sub    eax,0x804a024
 80483ea:	c1 f8 02             	sar    eax,0x2
 80483ed:	89 c2                	mov    edx,eax
 80483ef:	c1 ea 1f             	shr    edx,0x1f
 80483f2:	01 d0                	add    eax,edx
 80483f4:	d1 f8                	sar    eax,1
 80483f6:	75 01                	jne    80483f9 <register_tm_clones+0x19>
 80483f8:	c3                   	ret    
 80483f9:	ba 00 00 00 00       	mov    edx,0x0
 80483fe:	85 d2                	test   edx,edx
 8048400:	74 f6                	je     80483f8 <register_tm_clones+0x18>
 8048402:	55                   	push   ebp
 8048403:	89 e5                	mov    ebp,esp
 8048405:	83 ec 18             	sub    esp,0x18
 8048408:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804840c:	c7 04 24 24 a0 04 08 	mov    DWORD PTR [esp],0x804a024
 8048413:	ff d2                	call   edx
 8048415:	c9                   	leave  
 8048416:	c3                   	ret    
 8048417:	89 f6                	mov    esi,esi
 8048419:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048420 <__do_global_dtors_aux>:
 8048420:	80 3d 24 a0 04 08 00 	cmp    BYTE PTR ds:0x804a024,0x0
 8048427:	75 13                	jne    804843c <__do_global_dtors_aux+0x1c>
 8048429:	55                   	push   ebp
 804842a:	89 e5                	mov    ebp,esp
 804842c:	83 ec 08             	sub    esp,0x8
 804842f:	e8 7c ff ff ff       	call   80483b0 <deregister_tm_clones>
 8048434:	c6 05 24 a0 04 08 01 	mov    BYTE PTR ds:0x804a024,0x1
 804843b:	c9                   	leave  
 804843c:	f3 c3                	repz ret 
 804843e:	66 90                	xchg   ax,ax

08048440 <frame_dummy>:
 8048440:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048445:	85 c0                	test   eax,eax
 8048447:	74 1f                	je     8048468 <frame_dummy+0x28>
 8048449:	b8 00 00 00 00       	mov    eax,0x0
 804844e:	85 c0                	test   eax,eax
 8048450:	74 16                	je     8048468 <frame_dummy+0x28>
 8048452:	55                   	push   ebp
 8048453:	89 e5                	mov    ebp,esp
 8048455:	83 ec 18             	sub    esp,0x18
 8048458:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804845f:	ff d0                	call   eax
 8048461:	c9                   	leave  
 8048462:	e9 79 ff ff ff       	jmp    80483e0 <register_tm_clones>
 8048467:	90                   	nop
 8048468:	e9 73 ff ff ff       	jmp    80483e0 <register_tm_clones>

0804846d <main>:
 804846d:	55                   	push   ebp
 804846e:	89 e5                	mov    ebp,esp
 8048470:	83 e4 f0             	and    esp,0xfffffff0
 8048473:	83 ec 40             	sub    esp,0x40
 8048476:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048479:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 804847d:	65 a1 14 00 00 00    	mov    eax,gs:0x14
 8048483:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 8048487:	31 c0                	xor    eax,eax
 8048489:	c7 44 24 14 0a 00 00 	mov    DWORD PTR [esp+0x14],0xa
 8048490:	00 
 8048491:	c7 44 24 18 0c 00 00 	mov    DWORD PTR [esp+0x18],0xc
 8048498:	00 
 8048499:	c7 44 24 1c 0d 00 00 	mov    DWORD PTR [esp+0x1c],0xd
 80484a0:	00 
 80484a1:	c7 44 24 20 0e 00 00 	mov    DWORD PTR [esp+0x20],0xe
 80484a8:	00 
 80484a9:	c7 44 24 24 14 00 00 	mov    DWORD PTR [esp+0x24],0x14
 80484b0:	00 
 80484b1:	c7 44 24 29 53 65 61 	mov    DWORD PTR [esp+0x29],0x6e616553
 80484b8:	6e 
 80484b9:	c6 44 24 2d 00       	mov    BYTE PTR [esp+0x2d],0x0
 80484be:	c6 44 24 2e 53       	mov    BYTE PTR [esp+0x2e],0x53
 80484c3:	c6 44 24 2f 65       	mov    BYTE PTR [esp+0x2f],0x65
 80484c8:	c6 44 24 30 61       	mov    BYTE PTR [esp+0x30],0x61
 80484cd:	c6 44 24 31 6e       	mov    BYTE PTR [esp+0x31],0x6e
 80484d2:	c6 44 24 32 20       	mov    BYTE PTR [esp+0x32],0x20
 80484d7:	c6 44 24 33 4d       	mov    BYTE PTR [esp+0x33],0x4d
 80484dc:	c6 44 24 34 61       	mov    BYTE PTR [esp+0x34],0x61
 80484e1:	c6 44 24 35 79       	mov    BYTE PTR [esp+0x35],0x79
 80484e6:	c6 44 24 36 66       	mov    BYTE PTR [esp+0x36],0x66
 80484eb:	c6 44 24 37 69       	mov    BYTE PTR [esp+0x37],0x69
 80484f0:	c6 44 24 38 65       	mov    BYTE PTR [esp+0x38],0x65
 80484f5:	c6 44 24 39 6c       	mov    BYTE PTR [esp+0x39],0x6c
 80484fa:	c6 44 24 3a 64       	mov    BYTE PTR [esp+0x3a],0x64
 80484ff:	c6 44 24 3b 00       	mov    BYTE PTR [esp+0x3b],0x0
 8048504:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
 804850b:	00 
 804850c:	c7 04 24 90 86 04 08 	mov    DWORD PTR [esp],0x8048690
 8048513:	e8 18 fe ff ff       	call   8048330 <printf@plt>
 8048518:	c7 44 24 04 14 00 00 	mov    DWORD PTR [esp+0x4],0x14
 804851f:	00 
 8048520:	c7 04 24 a8 86 04 08 	mov    DWORD PTR [esp],0x80486a8
 8048527:	e8 04 fe ff ff       	call   8048330 <printf@plt>
 804852c:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
 8048533:	00 
 8048534:	c7 04 24 c8 86 04 08 	mov    DWORD PTR [esp],0x80486c8
 804853b:	e8 f0 fd ff ff       	call   8048330 <printf@plt>
 8048540:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
 8048544:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 8048548:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 804854c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048550:	c7 04 24 ec 86 04 08 	mov    DWORD PTR [esp],0x80486ec
 8048557:	e8 d4 fd ff ff       	call   8048330 <printf@plt>
 804855c:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
 8048563:	00 
 8048564:	c7 04 24 0e 87 04 08 	mov    DWORD PTR [esp],0x804870e
 804856b:	e8 c0 fd ff ff       	call   8048330 <printf@plt>
 8048570:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
 8048577:	00 
 8048578:	c7 04 24 26 87 04 08 	mov    DWORD PTR [esp],0x8048726
 804857f:	e8 ac fd ff ff       	call   8048330 <printf@plt>
 8048584:	c7 44 24 04 05 00 00 	mov    DWORD PTR [esp+0x4],0x5
 804858b:	00 
 804858c:	c7 04 24 44 87 04 08 	mov    DWORD PTR [esp],0x8048744
 8048593:	e8 98 fd ff ff       	call   8048330 <printf@plt>
 8048598:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
 804859f:	00 
 80485a0:	c7 04 24 5c 87 04 08 	mov    DWORD PTR [esp],0x804875c
 80485a7:	e8 84 fd ff ff       	call   8048330 <printf@plt>
 80485ac:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
 80485b3:	00 
 80485b4:	c7 04 24 80 87 04 08 	mov    DWORD PTR [esp],0x8048780
 80485bb:	e8 70 fd ff ff       	call   8048330 <printf@plt>
 80485c0:	8d 44 24 2e          	lea    eax,[esp+0x2e]
 80485c4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80485c8:	8d 44 24 29          	lea    eax,[esp+0x29]
 80485cc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485d0:	c7 04 24 99 87 04 08 	mov    DWORD PTR [esp],0x8048799
 80485d7:	e8 54 fd ff ff       	call   8048330 <printf@plt>
 80485dc:	b8 00 00 00 00       	mov    eax,0x0
 80485e1:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
 80485e5:	65 33 0d 14 00 00 00 	xor    ecx,DWORD PTR gs:0x14
 80485ec:	74 05                	je     80485f3 <main+0x186>
 80485ee:	e8 4d fd ff ff       	call   8048340 <__stack_chk_fail@plt>
 80485f3:	c9                   	leave  
 80485f4:	c3                   	ret    
 80485f5:	66 90                	xchg   ax,ax
 80485f7:	66 90                	xchg   ax,ax
 80485f9:	66 90                	xchg   ax,ax
 80485fb:	66 90                	xchg   ax,ax
 80485fd:	66 90                	xchg   ax,ax
 80485ff:	90                   	nop

08048600 <__libc_csu_init>:
 8048600:	55                   	push   ebp
 8048601:	57                   	push   edi
 8048602:	31 ff                	xor    edi,edi
 8048604:	56                   	push   esi
 8048605:	53                   	push   ebx
 8048606:	e8 95 fd ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804860b:	81 c3 f5 19 00 00    	add    ebx,0x19f5
 8048611:	83 ec 1c             	sub    esp,0x1c
 8048614:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048618:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804861e:	e8 d5 fc ff ff       	call   80482f8 <_init>
 8048623:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048629:	29 c6                	sub    esi,eax
 804862b:	c1 fe 02             	sar    esi,0x2
 804862e:	85 f6                	test   esi,esi
 8048630:	74 27                	je     8048659 <__libc_csu_init+0x59>
 8048632:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048638:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804863c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804863f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048643:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048647:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804864b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048652:	83 c7 01             	add    edi,0x1
 8048655:	39 f7                	cmp    edi,esi
 8048657:	75 df                	jne    8048638 <__libc_csu_init+0x38>
 8048659:	83 c4 1c             	add    esp,0x1c
 804865c:	5b                   	pop    ebx
 804865d:	5e                   	pop    esi
 804865e:	5f                   	pop    edi
 804865f:	5d                   	pop    ebp
 8048660:	c3                   	ret    
 8048661:	eb 0d                	jmp    8048670 <__libc_csu_fini>
 8048663:	90                   	nop
 8048664:	90                   	nop
 8048665:	90                   	nop
 8048666:	90                   	nop
 8048667:	90                   	nop
 8048668:	90                   	nop
 8048669:	90                   	nop
 804866a:	90                   	nop
 804866b:	90                   	nop
 804866c:	90                   	nop
 804866d:	90                   	nop
 804866e:	90                   	nop
 804866f:	90                   	nop

08048670 <__libc_csu_fini>:
 8048670:	f3 c3                	repz ret 

Disassembly of section .fini:

08048674 <_fini>:
 8048674:	53                   	push   ebx
 8048675:	83 ec 08             	sub    esp,0x8
 8048678:	e8 23 fd ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804867d:	81 c3 83 19 00 00    	add    ebx,0x1983
 8048683:	83 c4 08             	add    esp,0x8
 8048686:	5b                   	pop    ebx
 8048687:	c3                   	ret    
