
./ex15:     file format elf32-i386


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
 804835b:	68 20 86 04 08       	push   0x8048620
 8048360:	68 b0 85 04 08       	push   0x80485b0
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
 8048453:	83 ec 50             	sub    esp,0x50
 8048456:	c7 44 24 28 17 00 00 	mov    DWORD PTR [esp+0x28],0x17
 804845d:	00 
 804845e:	c7 44 24 2c 2b 00 00 	mov    DWORD PTR [esp+0x2c],0x2b
 8048465:	00 
 8048466:	c7 44 24 30 0c 00 00 	mov    DWORD PTR [esp+0x30],0xc
 804846d:	00 
 804846e:	c7 44 24 34 59 00 00 	mov    DWORD PTR [esp+0x34],0x59
 8048475:	00 
 8048476:	c7 44 24 38 02 00 00 	mov    DWORD PTR [esp+0x38],0x2
 804847d:	00 
 804847e:	c7 44 24 3c 40 86 04 	mov    DWORD PTR [esp+0x3c],0x8048640
 8048485:	08 
 8048486:	c7 44 24 40 45 86 04 	mov    DWORD PTR [esp+0x40],0x8048645
 804848d:	08 
 804848e:	c7 44 24 44 4b 86 04 	mov    DWORD PTR [esp+0x44],0x804864b
 8048495:	08 
 8048496:	c7 44 24 48 50 86 04 	mov    DWORD PTR [esp+0x48],0x8048650
 804849d:	08 
 804849e:	c7 44 24 4c 55 86 04 	mov    DWORD PTR [esp+0x4c],0x8048655
 80484a5:	08 
 80484a6:	c7 44 24 24 05 00 00 	mov    DWORD PTR [esp+0x24],0x5
 80484ad:	00 
 80484ae:	c7 44 24 14 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
 80484b5:	00 
 80484b6:	eb 29                	jmp    80484e1 <main+0x94>
 80484b8:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 80484bc:	8b 54 84 28          	mov    edx,DWORD PTR [esp+eax*4+0x28]
 80484c0:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 80484c4:	8b 44 84 3c          	mov    eax,DWORD PTR [esp+eax*4+0x3c]
 80484c8:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 80484cc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484d0:	c7 04 24 5a 86 04 08 	mov    DWORD PTR [esp],0x804865a
 80484d7:	e8 34 fe ff ff       	call   8048310 <printf@plt>
 80484dc:	83 44 24 14 01       	add    DWORD PTR [esp+0x14],0x1
 80484e1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 80484e5:	3b 44 24 24          	cmp    eax,DWORD PTR [esp+0x24]
 80484e9:	7c cd                	jl     80484b8 <main+0x6b>
 80484eb:	c7 04 24 74 86 04 08 	mov    DWORD PTR [esp],0x8048674
 80484f2:	e8 29 fe ff ff       	call   8048320 <puts@plt>
 80484f7:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
 80484fe:	00 
 80484ff:	eb 3f                	jmp    8048540 <main+0xf3>
 8048501:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048505:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 804850c:	8d 44 24 28          	lea    eax,[esp+0x28]
 8048510:	01 d0                	add    eax,edx
 8048512:	8b 10                	mov    edx,DWORD PTR [eax]
 8048514:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048518:	8d 0c 85 00 00 00 00 	lea    ecx,[eax*4+0x0]
 804851f:	8d 44 24 3c          	lea    eax,[esp+0x3c]
 8048523:	01 c8                	add    eax,ecx
 8048525:	8b 00                	mov    eax,DWORD PTR [eax]
 8048527:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 804852b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804852f:	c7 04 24 5a 86 04 08 	mov    DWORD PTR [esp],0x804865a
 8048536:	e8 d5 fd ff ff       	call   8048310 <printf@plt>
 804853b:	83 44 24 18 01       	add    DWORD PTR [esp+0x18],0x1
 8048540:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048544:	3b 44 24 24          	cmp    eax,DWORD PTR [esp+0x24]
 8048548:	7c b7                	jl     8048501 <main+0xb4>
 804854a:	c7 04 24 74 86 04 08 	mov    DWORD PTR [esp],0x8048674
 8048551:	e8 ca fd ff ff       	call   8048320 <puts@plt>
 8048556:	8d 44 24 28          	lea    eax,[esp+0x28]
 804855a:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 804855e:	8d 44 24 3c          	lea    eax,[esp+0x3c]
 8048562:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
 8048566:	eb 2a                	jmp    8048592 <main+0x145>
 8048568:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804856c:	8b 10                	mov    edx,DWORD PTR [eax]
 804856e:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
 8048572:	8b 00                	mov    eax,DWORD PTR [eax]
 8048574:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8048578:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804857c:	c7 04 24 5a 86 04 08 	mov    DWORD PTR [esp],0x804865a
 8048583:	e8 88 fd ff ff       	call   8048310 <printf@plt>
 8048588:	83 44 24 1c 04       	add    DWORD PTR [esp+0x1c],0x4
 804858d:	83 44 24 20 04       	add    DWORD PTR [esp+0x20],0x4
 8048592:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 8048596:	8d 44 24 28          	lea    eax,[esp+0x28]
 804859a:	29 c2                	sub    edx,eax
 804859c:	89 d0                	mov    eax,edx
 804859e:	c1 f8 02             	sar    eax,0x2
 80485a1:	3b 44 24 24          	cmp    eax,DWORD PTR [esp+0x24]
 80485a5:	7c c1                	jl     8048568 <main+0x11b>
 80485a7:	b8 00 00 00 00       	mov    eax,0x0
 80485ac:	c9                   	leave  
 80485ad:	c3                   	ret    
 80485ae:	66 90                	xchg   ax,ax

080485b0 <__libc_csu_init>:
 80485b0:	55                   	push   ebp
 80485b1:	57                   	push   edi
 80485b2:	31 ff                	xor    edi,edi
 80485b4:	56                   	push   esi
 80485b5:	53                   	push   ebx
 80485b6:	e8 c5 fd ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 80485bb:	81 c3 45 1a 00 00    	add    ebx,0x1a45
 80485c1:	83 ec 1c             	sub    esp,0x1c
 80485c4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 80485c8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80485ce:	e8 01 fd ff ff       	call   80482d4 <_init>
 80485d3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80485d9:	29 c6                	sub    esi,eax
 80485db:	c1 fe 02             	sar    esi,0x2
 80485de:	85 f6                	test   esi,esi
 80485e0:	74 27                	je     8048609 <__libc_csu_init+0x59>
 80485e2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80485e8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 80485ec:	89 2c 24             	mov    DWORD PTR [esp],ebp
 80485ef:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80485f3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 80485f7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485fb:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048602:	83 c7 01             	add    edi,0x1
 8048605:	39 f7                	cmp    edi,esi
 8048607:	75 df                	jne    80485e8 <__libc_csu_init+0x38>
 8048609:	83 c4 1c             	add    esp,0x1c
 804860c:	5b                   	pop    ebx
 804860d:	5e                   	pop    esi
 804860e:	5f                   	pop    edi
 804860f:	5d                   	pop    ebp
 8048610:	c3                   	ret    
 8048611:	eb 0d                	jmp    8048620 <__libc_csu_fini>
 8048613:	90                   	nop
 8048614:	90                   	nop
 8048615:	90                   	nop
 8048616:	90                   	nop
 8048617:	90                   	nop
 8048618:	90                   	nop
 8048619:	90                   	nop
 804861a:	90                   	nop
 804861b:	90                   	nop
 804861c:	90                   	nop
 804861d:	90                   	nop
 804861e:	90                   	nop
 804861f:	90                   	nop

08048620 <__libc_csu_fini>:
 8048620:	f3 c3                	repz ret 

Disassembly of section .fini:

08048624 <_fini>:
 8048624:	53                   	push   ebx
 8048625:	83 ec 08             	sub    esp,0x8
 8048628:	e8 53 fd ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 804862d:	81 c3 d3 19 00 00    	add    ebx,0x19d3
 8048633:	83 c4 08             	add    esp,0x8
 8048636:	5b                   	pop    ebx
 8048637:	c3                   	ret    
