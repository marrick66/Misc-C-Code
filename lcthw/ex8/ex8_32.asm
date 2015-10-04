
ex8:     file format elf32-i386


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
 804835b:	68 90 85 04 08       	push   0x8048590
 8048360:	68 20 85 04 08       	push   0x8048520
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
 8048456:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
 804845a:	75 0e                	jne    804846a <main+0x1d>
 804845c:	c7 04 24 b0 85 04 08 	mov    DWORD PTR [esp],0x80485b0
 8048463:	e8 b8 fe ff ff       	call   8048320 <puts@plt>
 8048468:	eb 58                	jmp    80484c2 <main+0x75>
 804846a:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
 804846e:	7e 46                	jle    80484b6 <main+0x69>
 8048470:	83 7d 08 03          	cmp    DWORD PTR [ebp+0x8],0x3
 8048474:	7f 40                	jg     80484b6 <main+0x69>
 8048476:	c7 04 24 cc 85 04 08 	mov    DWORD PTR [esp],0x80485cc
 804847d:	e8 9e fe ff ff       	call   8048320 <puts@plt>
 8048482:	c7 44 24 10 01 00 00 	mov    DWORD PTR [esp+0x10],0x1
 8048489:	00 
 804848a:	eb 1f                	jmp    80484ab <main+0x5e>
 804848c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 8048490:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 8048497:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804849a:	01 d0                	add    eax,edx
 804849c:	8b 00                	mov    eax,DWORD PTR [eax]
 804849e:	89 04 24             	mov    DWORD PTR [esp],eax
 80484a1:	e8 7a fe ff ff       	call   8048320 <puts@plt>
 80484a6:	83 44 24 10 01       	add    DWORD PTR [esp+0x10],0x1
 80484ab:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 80484af:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
 80484b2:	7c d8                	jl     804848c <main+0x3f>
 80484b4:	eb 0c                	jmp    80484c2 <main+0x75>
 80484b6:	c7 04 24 e0 85 04 08 	mov    DWORD PTR [esp],0x80485e0
 80484bd:	e8 5e fe ff ff       	call   8048320 <puts@plt>
 80484c2:	c7 44 24 14 ff ff ff 	mov    DWORD PTR [esp+0x14],0xffffffff
 80484c9:	ff 
 80484ca:	83 7c 24 14 00       	cmp    DWORD PTR [esp+0x14],0x0
 80484cf:	74 14                	je     80484e5 <main+0x98>
 80484d1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
 80484d5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484d9:	c7 04 24 fd 85 04 08 	mov    DWORD PTR [esp],0x80485fd
 80484e0:	e8 2b fe ff ff       	call   8048310 <printf@plt>
 80484e5:	c7 44 24 18 e8 03 00 	mov    DWORD PTR [esp+0x18],0x3e8
 80484ec:	00 
 80484ed:	c7 44 24 1c ff ff ff 	mov    DWORD PTR [esp+0x1c],0x7fffffff
 80484f4:	7f 
 80484f5:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484f9:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 80484fd:	01 d0                	add    eax,edx
 80484ff:	3d e7 03 00 00       	cmp    eax,0x3e7
 8048504:	7f 0c                	jg     8048512 <main+0xc5>
 8048506:	c7 04 24 14 86 04 08 	mov    DWORD PTR [esp],0x8048614
 804850d:	e8 0e fe ff ff       	call   8048320 <puts@plt>
 8048512:	b8 00 00 00 00       	mov    eax,0x0
 8048517:	c9                   	leave  
 8048518:	c3                   	ret    
 8048519:	66 90                	xchg   ax,ax
 804851b:	66 90                	xchg   ax,ax
 804851d:	66 90                	xchg   ax,ax
 804851f:	90                   	nop

08048520 <__libc_csu_init>:
 8048520:	55                   	push   ebp
 8048521:	57                   	push   edi
 8048522:	31 ff                	xor    edi,edi
 8048524:	56                   	push   esi
 8048525:	53                   	push   ebx
 8048526:	e8 55 fe ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 804852b:	81 c3 d5 1a 00 00    	add    ebx,0x1ad5
 8048531:	83 ec 1c             	sub    esp,0x1c
 8048534:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048538:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804853e:	e8 91 fd ff ff       	call   80482d4 <_init>
 8048543:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048549:	29 c6                	sub    esi,eax
 804854b:	c1 fe 02             	sar    esi,0x2
 804854e:	85 f6                	test   esi,esi
 8048550:	74 27                	je     8048579 <__libc_csu_init+0x59>
 8048552:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048558:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804855c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804855f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048563:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048567:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804856b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048572:	83 c7 01             	add    edi,0x1
 8048575:	39 f7                	cmp    edi,esi
 8048577:	75 df                	jne    8048558 <__libc_csu_init+0x38>
 8048579:	83 c4 1c             	add    esp,0x1c
 804857c:	5b                   	pop    ebx
 804857d:	5e                   	pop    esi
 804857e:	5f                   	pop    edi
 804857f:	5d                   	pop    ebp
 8048580:	c3                   	ret    
 8048581:	eb 0d                	jmp    8048590 <__libc_csu_fini>
 8048583:	90                   	nop
 8048584:	90                   	nop
 8048585:	90                   	nop
 8048586:	90                   	nop
 8048587:	90                   	nop
 8048588:	90                   	nop
 8048589:	90                   	nop
 804858a:	90                   	nop
 804858b:	90                   	nop
 804858c:	90                   	nop
 804858d:	90                   	nop
 804858e:	90                   	nop
 804858f:	90                   	nop

08048590 <__libc_csu_fini>:
 8048590:	f3 c3                	repz ret 

Disassembly of section .fini:

08048594 <_fini>:
 8048594:	53                   	push   ebx
 8048595:	83 ec 08             	sub    esp,0x8
 8048598:	e8 e3 fd ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 804859d:	81 c3 63 1a 00 00    	add    ebx,0x1a63
 80485a3:	83 c4 08             	add    esp,0x8
 80485a6:	5b                   	pop    ebx
 80485a7:	c3                   	ret    
