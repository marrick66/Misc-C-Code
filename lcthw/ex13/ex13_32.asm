
ex13:     file format elf32-i386


Disassembly of section .init:

080482b4 <_init>:
 80482b4:	53                   	push   ebx
 80482b5:	83 ec 08             	sub    esp,0x8
 80482b8:	e8 93 00 00 00       	call   8048350 <__x86.get_pc_thunk.bx>
 80482bd:	81 c3 43 1d 00 00    	add    ebx,0x1d43
 80482c3:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80482c9:	85 c0                	test   eax,eax
 80482cb:	74 05                	je     80482d2 <_init+0x1e>
 80482cd:	e8 2e 00 00 00       	call   8048300 <__gmon_start__@plt>
 80482d2:	83 c4 08             	add    esp,0x8
 80482d5:	5b                   	pop    ebx
 80482d6:	c3                   	ret    

Disassembly of section .plt:

080482e0 <printf@plt-0x10>:
 80482e0:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 80482e6:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 80482ec:	00 00                	add    BYTE PTR [eax],al
	...

080482f0 <printf@plt>:
 80482f0:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 80482f6:	68 00 00 00 00       	push   0x0
 80482fb:	e9 e0 ff ff ff       	jmp    80482e0 <_init+0x2c>

08048300 <__gmon_start__@plt>:
 8048300:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048306:	68 08 00 00 00       	push   0x8
 804830b:	e9 d0 ff ff ff       	jmp    80482e0 <_init+0x2c>

08048310 <__libc_start_main@plt>:
 8048310:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048316:	68 10 00 00 00       	push   0x10
 804831b:	e9 c0 ff ff ff       	jmp    80482e0 <_init+0x2c>

Disassembly of section .text:

08048320 <_start>:
 8048320:	31 ed                	xor    ebp,ebp
 8048322:	5e                   	pop    esi
 8048323:	89 e1                	mov    ecx,esp
 8048325:	83 e4 f0             	and    esp,0xfffffff0
 8048328:	50                   	push   eax
 8048329:	54                   	push   esp
 804832a:	52                   	push   edx
 804832b:	68 50 85 04 08       	push   0x8048550
 8048330:	68 e0 84 04 08       	push   0x80484e0
 8048335:	51                   	push   ecx
 8048336:	56                   	push   esi
 8048337:	68 1d 84 04 08       	push   0x804841d
 804833c:	e8 cf ff ff ff       	call   8048310 <__libc_start_main@plt>
 8048341:	f4                   	hlt    
 8048342:	66 90                	xchg   ax,ax
 8048344:	66 90                	xchg   ax,ax
 8048346:	66 90                	xchg   ax,ax
 8048348:	66 90                	xchg   ax,ax
 804834a:	66 90                	xchg   ax,ax
 804834c:	66 90                	xchg   ax,ax
 804834e:	66 90                	xchg   ax,ax

08048350 <__x86.get_pc_thunk.bx>:
 8048350:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048353:	c3                   	ret    
 8048354:	66 90                	xchg   ax,ax
 8048356:	66 90                	xchg   ax,ax
 8048358:	66 90                	xchg   ax,ax
 804835a:	66 90                	xchg   ax,ax
 804835c:	66 90                	xchg   ax,ax
 804835e:	66 90                	xchg   ax,ax

08048360 <deregister_tm_clones>:
 8048360:	b8 23 a0 04 08       	mov    eax,0x804a023
 8048365:	2d 20 a0 04 08       	sub    eax,0x804a020
 804836a:	83 f8 06             	cmp    eax,0x6
 804836d:	77 01                	ja     8048370 <deregister_tm_clones+0x10>
 804836f:	c3                   	ret    
 8048370:	b8 00 00 00 00       	mov    eax,0x0
 8048375:	85 c0                	test   eax,eax
 8048377:	74 f6                	je     804836f <deregister_tm_clones+0xf>
 8048379:	55                   	push   ebp
 804837a:	89 e5                	mov    ebp,esp
 804837c:	83 ec 18             	sub    esp,0x18
 804837f:	c7 04 24 20 a0 04 08 	mov    DWORD PTR [esp],0x804a020
 8048386:	ff d0                	call   eax
 8048388:	c9                   	leave  
 8048389:	c3                   	ret    
 804838a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

08048390 <register_tm_clones>:
 8048390:	b8 20 a0 04 08       	mov    eax,0x804a020
 8048395:	2d 20 a0 04 08       	sub    eax,0x804a020
 804839a:	c1 f8 02             	sar    eax,0x2
 804839d:	89 c2                	mov    edx,eax
 804839f:	c1 ea 1f             	shr    edx,0x1f
 80483a2:	01 d0                	add    eax,edx
 80483a4:	d1 f8                	sar    eax,1
 80483a6:	75 01                	jne    80483a9 <register_tm_clones+0x19>
 80483a8:	c3                   	ret    
 80483a9:	ba 00 00 00 00       	mov    edx,0x0
 80483ae:	85 d2                	test   edx,edx
 80483b0:	74 f6                	je     80483a8 <register_tm_clones+0x18>
 80483b2:	55                   	push   ebp
 80483b3:	89 e5                	mov    ebp,esp
 80483b5:	83 ec 18             	sub    esp,0x18
 80483b8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80483bc:	c7 04 24 20 a0 04 08 	mov    DWORD PTR [esp],0x804a020
 80483c3:	ff d2                	call   edx
 80483c5:	c9                   	leave  
 80483c6:	c3                   	ret    
 80483c7:	89 f6                	mov    esi,esi
 80483c9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080483d0 <__do_global_dtors_aux>:
 80483d0:	80 3d 20 a0 04 08 00 	cmp    BYTE PTR ds:0x804a020,0x0
 80483d7:	75 13                	jne    80483ec <__do_global_dtors_aux+0x1c>
 80483d9:	55                   	push   ebp
 80483da:	89 e5                	mov    ebp,esp
 80483dc:	83 ec 08             	sub    esp,0x8
 80483df:	e8 7c ff ff ff       	call   8048360 <deregister_tm_clones>
 80483e4:	c6 05 20 a0 04 08 01 	mov    BYTE PTR ds:0x804a020,0x1
 80483eb:	c9                   	leave  
 80483ec:	f3 c3                	repz ret 
 80483ee:	66 90                	xchg   ax,ax

080483f0 <frame_dummy>:
 80483f0:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 80483f5:	85 c0                	test   eax,eax
 80483f7:	74 1f                	je     8048418 <frame_dummy+0x28>
 80483f9:	b8 00 00 00 00       	mov    eax,0x0
 80483fe:	85 c0                	test   eax,eax
 8048400:	74 16                	je     8048418 <frame_dummy+0x28>
 8048402:	55                   	push   ebp
 8048403:	89 e5                	mov    ebp,esp
 8048405:	83 ec 18             	sub    esp,0x18
 8048408:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 804840f:	ff d0                	call   eax
 8048411:	c9                   	leave  
 8048412:	e9 79 ff ff ff       	jmp    8048390 <register_tm_clones>
 8048417:	90                   	nop
 8048418:	e9 73 ff ff ff       	jmp    8048390 <register_tm_clones>

0804841d <main>:
 804841d:	55                   	push   ebp
 804841e:	89 e5                	mov    ebp,esp
 8048420:	83 e4 f0             	and    esp,0xfffffff0
 8048423:	83 ec 30             	sub    esp,0x30
 8048426:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
 804842d:	00 
 804842e:	c7 44 24 18 01 00 00 	mov    DWORD PTR [esp+0x18],0x1
 8048435:	00 
 8048436:	eb 2f                	jmp    8048467 <main+0x4a>
 8048438:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 804843c:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
 8048443:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048446:	01 d0                	add    eax,edx
 8048448:	8b 00                	mov    eax,DWORD PTR [eax]
 804844a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804844e:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048452:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048456:	c7 04 24 70 85 04 08 	mov    DWORD PTR [esp],0x8048570
 804845d:	e8 8e fe ff ff       	call   80482f0 <printf@plt>
 8048462:	83 44 24 18 01       	add    DWORD PTR [esp+0x18],0x1
 8048467:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 804846b:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
 804846e:	7c c8                	jl     8048438 <main+0x1b>
 8048470:	c7 44 24 20 83 85 04 	mov    DWORD PTR [esp+0x20],0x8048583
 8048477:	08 
 8048478:	c7 44 24 24 8e 85 04 	mov    DWORD PTR [esp+0x24],0x804858e
 804847f:	08 
 8048480:	c7 44 24 28 95 85 04 	mov    DWORD PTR [esp+0x28],0x8048595
 8048487:	08 
 8048488:	c7 44 24 2c a0 85 04 	mov    DWORD PTR [esp+0x2c],0x80485a0
 804848f:	08 
 8048490:	c7 44 24 1c 04 00 00 	mov    DWORD PTR [esp+0x1c],0x4
 8048497:	00 
 8048498:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
 804849f:	00 
 80484a0:	eb 25                	jmp    80484c7 <main+0xaa>
 80484a2:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484a6:	8b 44 84 20          	mov    eax,DWORD PTR [esp+eax*4+0x20]
 80484aa:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80484ae:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484b2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484b6:	c7 04 24 a6 85 04 08 	mov    DWORD PTR [esp],0x80485a6
 80484bd:	e8 2e fe ff ff       	call   80482f0 <printf@plt>
 80484c2:	83 44 24 18 01       	add    DWORD PTR [esp+0x18],0x1
 80484c7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484cb:	3b 44 24 1c          	cmp    eax,DWORD PTR [esp+0x1c]
 80484cf:	7c d1                	jl     80484a2 <main+0x85>
 80484d1:	b8 00 00 00 00       	mov    eax,0x0
 80484d6:	c9                   	leave  
 80484d7:	c3                   	ret    
 80484d8:	66 90                	xchg   ax,ax
 80484da:	66 90                	xchg   ax,ax
 80484dc:	66 90                	xchg   ax,ax
 80484de:	66 90                	xchg   ax,ax

080484e0 <__libc_csu_init>:
 80484e0:	55                   	push   ebp
 80484e1:	57                   	push   edi
 80484e2:	31 ff                	xor    edi,edi
 80484e4:	56                   	push   esi
 80484e5:	53                   	push   ebx
 80484e6:	e8 65 fe ff ff       	call   8048350 <__x86.get_pc_thunk.bx>
 80484eb:	81 c3 15 1b 00 00    	add    ebx,0x1b15
 80484f1:	83 ec 1c             	sub    esp,0x1c
 80484f4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 80484f8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80484fe:	e8 b1 fd ff ff       	call   80482b4 <_init>
 8048503:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048509:	29 c6                	sub    esi,eax
 804850b:	c1 fe 02             	sar    esi,0x2
 804850e:	85 f6                	test   esi,esi
 8048510:	74 27                	je     8048539 <__libc_csu_init+0x59>
 8048512:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048518:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804851c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804851f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048523:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048527:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804852b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048532:	83 c7 01             	add    edi,0x1
 8048535:	39 f7                	cmp    edi,esi
 8048537:	75 df                	jne    8048518 <__libc_csu_init+0x38>
 8048539:	83 c4 1c             	add    esp,0x1c
 804853c:	5b                   	pop    ebx
 804853d:	5e                   	pop    esi
 804853e:	5f                   	pop    edi
 804853f:	5d                   	pop    ebp
 8048540:	c3                   	ret    
 8048541:	eb 0d                	jmp    8048550 <__libc_csu_fini>
 8048543:	90                   	nop
 8048544:	90                   	nop
 8048545:	90                   	nop
 8048546:	90                   	nop
 8048547:	90                   	nop
 8048548:	90                   	nop
 8048549:	90                   	nop
 804854a:	90                   	nop
 804854b:	90                   	nop
 804854c:	90                   	nop
 804854d:	90                   	nop
 804854e:	90                   	nop
 804854f:	90                   	nop

08048550 <__libc_csu_fini>:
 8048550:	f3 c3                	repz ret 

Disassembly of section .fini:

08048554 <_fini>:
 8048554:	53                   	push   ebx
 8048555:	83 ec 08             	sub    esp,0x8
 8048558:	e8 f3 fd ff ff       	call   8048350 <__x86.get_pc_thunk.bx>
 804855d:	81 c3 a3 1a 00 00    	add    ebx,0x1aa3
 8048563:	83 c4 08             	add    esp,0x8
 8048566:	5b                   	pop    ebx
 8048567:	c3                   	ret    
