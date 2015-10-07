
ex10:     file format elf32-i386


Disassembly of section .init:

080482d4 <_init>:
 80482d4:	53                   	push   ebx
 80482d5:	83 ec 08             	sub    esp,0x8
 80482d8:	e8 a3 00 00 00       	call   8048380 <__x86.get_pc_thunk.bx>
 80482dd:	81 c3 23 1d 00 00    	add    ebx,0x1d23
 80482e3:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80482e9:	85 c0                	test   eax,eax
 80482eb:	74 05                	je     80482f2 <_init+0x1e>
 80482ed:	e8 3e 00 00 00       	call   8048330 <__gmon_start__@plt>
 80482f2:	83 c4 08             	add    esp,0x8
 80482f5:	5b                   	pop    ebx
 80482f6:	c3                   	ret    

Disassembly of section .plt:

08048300 <printf@plt-0x10>:
 8048300:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048306:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804830c:	00 00                	add    BYTE PTR [eax],al
	...

08048310 <printf@plt>:
 8048310:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048316:	68 00 00 00 00       	push   0x0
 804831b:	e9 e0 ff ff ff       	jmp    8048300 <_init+0x2c>

08048320 <puts@plt>:
 8048320:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048326:	68 08 00 00 00       	push   0x8
 804832b:	e9 d0 ff ff ff       	jmp    8048300 <_init+0x2c>

08048330 <__gmon_start__@plt>:
 8048330:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048336:	68 10 00 00 00       	push   0x10
 804833b:	e9 c0 ff ff ff       	jmp    8048300 <_init+0x2c>

08048340 <__libc_start_main@plt>:
 8048340:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048346:	68 18 00 00 00       	push   0x18
 804834b:	e9 b0 ff ff ff       	jmp    8048300 <_init+0x2c>

Disassembly of section .text:

08048350 <_start>:
 8048350:	31 ed                	xor    ebp,ebp
 8048352:	5e                   	pop    esi
 8048353:	89 e1                	mov    ecx,esp
 8048355:	83 e4 f0             	and    esp,0xfffffff0
 8048358:	50                   	push   eax
 8048359:	54                   	push   esp
 804835a:	52                   	push   edx
 804835b:	68 f0 85 04 08       	push   0x80485f0
 8048360:	68 80 85 04 08       	push   0x8048580
 8048365:	51                   	push   ecx
 8048366:	56                   	push   esi
 8048367:	68 4d 84 04 08       	push   0x804844d
 804836c:	e8 cf ff ff ff       	call   8048340 <__libc_start_main@plt>
 8048371:	f4                   	hlt    
 8048372:	66 90                	xchg   ax,ax
 8048374:	66 90                	xchg   ax,ax
 8048376:	66 90                	xchg   ax,ax
 8048378:	66 90                	xchg   ax,ax
 804837a:	66 90                	xchg   ax,ax
 804837c:	66 90                	xchg   ax,ax
 804837e:	66 90                	xchg   ax,ax

08048380 <__x86.get_pc_thunk.bx>:
 8048380:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048383:	c3                   	ret    
 8048384:	66 90                	xchg   ax,ax
 8048386:	66 90                	xchg   ax,ax
 8048388:	66 90                	xchg   ax,ax
 804838a:	66 90                	xchg   ax,ax
 804838c:	66 90                	xchg   ax,ax
 804838e:	66 90                	xchg   ax,ax

08048390 <deregister_tm_clones>:
 8048390:	b8 27 a0 04 08       	mov    eax,0x804a027
 8048395:	2d 24 a0 04 08       	sub    eax,0x804a024
 804839a:	83 f8 06             	cmp    eax,0x6
 804839d:	77 01                	ja     80483a0 <deregister_tm_clones+0x10>
 804839f:	c3                   	ret    
 80483a0:	b8 00 00 00 00       	mov    eax,0x0
 80483a5:	85 c0                	test   eax,eax
 80483a7:	74 f6                	je     804839f <deregister_tm_clones+0xf>
 80483a9:	55                   	push   ebp
 80483aa:	89 e5                	mov    ebp,esp
 80483ac:	83 ec 18             	sub    esp,0x18
 80483af:	c7 04 24 24 a0 04 08 	mov    DWORD PTR [esp],0x804a024
 80483b6:	ff d0                	call   eax
 80483b8:	c9                   	leave  
 80483b9:	c3                   	ret    
 80483ba:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

080483c0 <register_tm_clones>:
 80483c0:	b8 24 a0 04 08       	mov    eax,0x804a024
 80483c5:	2d 24 a0 04 08       	sub    eax,0x804a024
 80483ca:	c1 f8 02             	sar    eax,0x2
 80483cd:	89 c2                	mov    edx,eax
 80483cf:	c1 ea 1f             	shr    edx,0x1f
 80483d2:	01 d0                	add    eax,edx
 80483d4:	d1 f8                	sar    eax,1
 80483d6:	75 01                	jne    80483d9 <register_tm_clones+0x19>
 80483d8:	c3                   	ret    
 80483d9:	ba 00 00 00 00       	mov    edx,0x0
 80483de:	85 d2                	test   edx,edx
 80483e0:	74 f6                	je     80483d8 <register_tm_clones+0x18>
 80483e2:	55                   	push   ebp
 80483e3:	89 e5                	mov    ebp,esp
 80483e5:	83 ec 18             	sub    esp,0x18
 80483e8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80483ec:	c7 04 24 24 a0 04 08 	mov    DWORD PTR [esp],0x804a024
 80483f3:	ff d2                	call   edx
 80483f5:	c9                   	leave  
 80483f6:	c3                   	ret    
 80483f7:	89 f6                	mov    esi,esi
 80483f9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048400 <__do_global_dtors_aux>:
 8048400:	80 3d 24 a0 04 08 00 	cmp    BYTE PTR ds:0x804a024,0x0
 8048407:	75 13                	jne    804841c <__do_global_dtors_aux+0x1c>
 8048409:	55                   	push   ebp
 804840a:	89 e5                	mov    ebp,esp
 804840c:	83 ec 08             	sub    esp,0x8
 804840f:	e8 7c ff ff ff       	call   8048390 <deregister_tm_clones>
 8048414:	c6 05 24 a0 04 08 01 	mov    BYTE PTR ds:0x804a024,0x1
 804841b:	c9                   	leave  
 804841c:	f3 c3                	repz ret 
 804841e:	66 90                	xchg   ax,ax

08048420 <frame_dummy>:
 8048420:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 8048425:	85 c0                	test   eax,eax
 8048427:	74 1f                	je     8048448 <frame_dummy+0x28>
 8048429:	b8 00 00 00 00       	mov    eax,0x0
 804842e:	85 c0                	test   eax,eax
 8048430:	74 16                	je     8048448 <frame_dummy+0x28>
 8048432:	55                   	push   ebp
 8048433:	89 e5                	mov    ebp,esp
 8048435:	83 ec 18             	sub    esp,0x18
 8048438:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804843f:	ff d0                	call   eax
 8048441:	c9                   	leave  
 8048442:	e9 79 ff ff ff       	jmp    80483c0 <register_tm_clones>
 8048447:	90                   	nop
 8048448:	e9 73 ff ff ff       	jmp    80483c0 <register_tm_clones>

0804844d <main>:
 804844d:	55                   	push   ebp
 804844e:	89 e5                	mov    ebp,esp
 8048450:	83 e4 f0             	and    esp,0xfffffff0
 8048453:	83 ec 20             	sub    esp,0x20
 8048456:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
 804845a:	74 16                	je     8048472 <main+0x25>
 804845c:	c7 04 24 10 86 04 08 	mov    DWORD PTR [esp],0x8048610
 8048463:	e8 b8 fe ff ff       	call   8048320 <puts@plt>
 8048468:	b8 01 00 00 00       	mov    eax,0x1
 804846d:	e9 0c 01 00 00       	jmp    804857e <main+0x131>
 8048472:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
 8048479:	00 
 804847a:	e9 e1 00 00 00       	jmp    8048560 <main+0x113>
 804847f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048482:	83 c0 04             	add    eax,0x4
 8048485:	8b 10                	mov    edx,DWORD PTR [eax]
 8048487:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804848b:	01 d0                	add    eax,edx
 804848d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048490:	88 44 24 1b          	mov    BYTE PTR [esp+0x1b],al
 8048494:	0f be 44 24 1b       	movsx  eax,BYTE PTR [esp+0x1b]		#At this point, the character at argv[1][i] is loaded into
																		#eax.
 8048499:	83 e8 41             	sub    eax,0x41
																		#It's then normalized to an index of an offset by subtracting the first letter
																		#'A' from it. It skips the character if it's not in the range of the cases.
 804849c:	83 f8 38             	cmp    eax,0x38
 804849f:	0f 87 99 00 00 00    	ja     804853e <main+0xf1>
 80484a5:	8b 04 85 78 86 04 08 	mov    eax,DWORD PTR [eax*4+0x8048678]	#The index from the found character is used to query the jump table
																			#at 0x8048678 to get the address to jump to. Debugging indicates that
																			#the jump table is the size of the range of characters A-Za-z, with 
																			#all consonants having the same entry pointing to the default case address. 
 80484ac:	ff e0                	jmp    eax
 80484ae:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484b2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484b6:	c7 04 24 30 86 04 08 	mov    DWORD PTR [esp],0x8048630
 80484bd:	e8 4e fe ff ff       	call   8048310 <printf@plt>
 80484c2:	e9 94 00 00 00       	jmp    804855b <main+0x10e>
 80484c7:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484cb:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484cf:	c7 04 24 36 86 04 08 	mov    DWORD PTR [esp],0x8048636
 80484d6:	e8 35 fe ff ff       	call   8048310 <printf@plt>
 80484db:	eb 7e                	jmp    804855b <main+0x10e>
 80484dd:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484e1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484e5:	c7 04 24 3c 86 04 08 	mov    DWORD PTR [esp],0x804863c
 80484ec:	e8 1f fe ff ff       	call   8048310 <printf@plt>
 80484f1:	eb 68                	jmp    804855b <main+0x10e>
 80484f3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484f7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484fb:	c7 04 24 42 86 04 08 	mov    DWORD PTR [esp],0x8048642
 8048502:	e8 09 fe ff ff       	call   8048310 <printf@plt>
 8048507:	eb 52                	jmp    804855b <main+0x10e>
 8048509:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804850d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048511:	c7 04 24 48 86 04 08 	mov    DWORD PTR [esp],0x8048648
 8048518:	e8 f3 fd ff ff       	call   8048310 <printf@plt>
 804851d:	eb 3c                	jmp    804855b <main+0x10e>
 804851f:	83 7c 24 1c 02       	cmp    DWORD PTR [esp+0x1c],0x2
 8048524:	7e 16                	jle    804853c <main+0xef>
 8048526:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804852a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804852e:	c7 04 24 4e 86 04 08 	mov    DWORD PTR [esp],0x804864e
 8048535:	e8 d6 fd ff ff       	call   8048310 <printf@plt>
 804853a:	eb 1f                	jmp    804855b <main+0x10e>
 804853c:	eb 1d                	jmp    804855b <main+0x10e>
 804853e:	0f be 44 24 1b       	movsx  eax,BYTE PTR [esp+0x1b]
 8048543:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048547:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804854b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804854f:	c7 04 24 5e 86 04 08 	mov    DWORD PTR [esp],0x804865e
 8048556:	e8 b5 fd ff ff       	call   8048310 <printf@plt>
 804855b:	83 44 24 1c 01       	add    DWORD PTR [esp+0x1c],0x1
 8048560:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048563:	83 c0 04             	add    eax,0x4
 8048566:	8b 10                	mov    edx,DWORD PTR [eax]
 8048568:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804856c:	01 d0                	add    eax,edx
 804856e:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048571:	84 c0                	test   al,al
 8048573:	0f 85 06 ff ff ff    	jne    804847f <main+0x32>
 8048579:	b8 00 00 00 00       	mov    eax,0x0
 804857e:	c9                   	leave  
 804857f:	c3                   	ret    

08048580 <__libc_csu_init>:
 8048580:	55                   	push   ebp
 8048581:	57                   	push   edi
 8048582:	31 ff                	xor    edi,edi
 8048584:	56                   	push   esi
 8048585:	53                   	push   ebx
 8048586:	e8 f5 fd ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 804858b:	81 c3 75 1a 00 00    	add    ebx,0x1a75
 8048591:	83 ec 1c             	sub    esp,0x1c
 8048594:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048598:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804859e:	e8 31 fd ff ff       	call   80482d4 <_init>
 80485a3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80485a9:	29 c6                	sub    esi,eax
 80485ab:	c1 fe 02             	sar    esi,0x2
 80485ae:	85 f6                	test   esi,esi
 80485b0:	74 27                	je     80485d9 <__libc_csu_init+0x59>
 80485b2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80485b8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 80485bc:	89 2c 24             	mov    DWORD PTR [esp],ebp
 80485bf:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80485c3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 80485c7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485cb:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 80485d2:	83 c7 01             	add    edi,0x1
 80485d5:	39 f7                	cmp    edi,esi
 80485d7:	75 df                	jne    80485b8 <__libc_csu_init+0x38>
 80485d9:	83 c4 1c             	add    esp,0x1c
 80485dc:	5b                   	pop    ebx
 80485dd:	5e                   	pop    esi
 80485de:	5f                   	pop    edi
 80485df:	5d                   	pop    ebp
 80485e0:	c3                   	ret    
 80485e1:	eb 0d                	jmp    80485f0 <__libc_csu_fini>
 80485e3:	90                   	nop
 80485e4:	90                   	nop
 80485e5:	90                   	nop
 80485e6:	90                   	nop
 80485e7:	90                   	nop
 80485e8:	90                   	nop
 80485e9:	90                   	nop
 80485ea:	90                   	nop
 80485eb:	90                   	nop
 80485ec:	90                   	nop
 80485ed:	90                   	nop
 80485ee:	90                   	nop
 80485ef:	90                   	nop

080485f0 <__libc_csu_fini>:
 80485f0:	f3 c3                	repz ret 

Disassembly of section .fini:

080485f4 <_fini>:
 80485f4:	53                   	push   ebx
 80485f5:	83 ec 08             	sub    esp,0x8
 80485f8:	e8 83 fd ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 80485fd:	81 c3 03 1a 00 00    	add    ebx,0x1a03
 8048603:	83 c4 08             	add    esp,0x8
 8048606:	5b                   	pop    ebx
 8048607:	c3                   	ret    
