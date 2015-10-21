
ex11:     file format elf32-i386


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
 804837b:	68 e0 86 04 08       	push   0x80486e0
 8048380:	68 70 86 04 08       	push   0x8048670
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
 8048470:	56                   	push   esi
 8048471:	53                   	push   ebx
 8048472:	83 e4 f0             	and    esp,0xfffffff0
 8048475:	83 ec 40             	sub    esp,0x40
 8048478:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804847b:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 804847f:	65 a1 14 00 00 00    	mov    eax,gs:0x14
 8048485:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 8048489:	31 c0                	xor    eax,eax
 804848b:	c7 44 24 28 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
 8048492:	00 
 8048493:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
 804849a:	00 
 804849b:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
 80484a2:	00 
 80484a3:	c7 44 24 34 00 00 00 	mov    DWORD PTR [esp+0x34],0x0
 80484aa:	00 
 80484ab:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
 80484b2:	00 
 80484b3:	c6 44 24 38 61       	mov    BYTE PTR [esp+0x38],0x61
 80484b8:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
 80484bc:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
 80484c0:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
 80484c4:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 80484c8:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 80484cc:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 80484d0:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 80484d4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484d8:	c7 04 24 00 87 04 08 	mov    DWORD PTR [esp],0x8048700
 80484df:	e8 4c fe ff ff       	call   8048330 <printf@plt>
 80484e4:	0f b6 44 24 3b       	movzx  eax,BYTE PTR [esp+0x3b]
 80484e9:	0f be d8             	movsx  ebx,al
 80484ec:	0f b6 44 24 3a       	movzx  eax,BYTE PTR [esp+0x3a]
 80484f1:	0f be c8             	movsx  ecx,al
 80484f4:	0f b6 44 24 39       	movzx  eax,BYTE PTR [esp+0x39]
 80484f9:	0f be d0             	movsx  edx,al
 80484fc:	0f b6 44 24 38       	movzx  eax,BYTE PTR [esp+0x38]
 8048501:	0f be c0             	movsx  eax,al
 8048504:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 8048508:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 804850c:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8048510:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048514:	c7 04 24 16 87 04 08 	mov    DWORD PTR [esp],0x8048716
 804851b:	e8 10 fe ff ff       	call   8048330 <printf@plt>
 8048520:	8d 44 24 38          	lea    eax,[esp+0x38]
 8048524:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048528:	c7 04 24 2e 87 04 08 	mov    DWORD PTR [esp],0x804872e
 804852f:	e8 fc fd ff ff       	call   8048330 <printf@plt>
 8048534:	c7 44 24 28 01 00 00 	mov    DWORD PTR [esp+0x28],0x1
 804853b:	00 
 804853c:	c7 44 24 2c 02 00 00 	mov    DWORD PTR [esp+0x2c],0x2
 8048543:	00 
 8048544:	c7 44 24 30 03 00 00 	mov    DWORD PTR [esp+0x30],0x3
 804854b:	00 
 804854c:	c7 44 24 34 04 00 00 	mov    DWORD PTR [esp+0x34],0x4
 8048553:	00 
 8048554:	c6 44 24 38 5a       	mov    BYTE PTR [esp+0x38],0x5a
 8048559:	c6 44 24 39 65       	mov    BYTE PTR [esp+0x39],0x65
 804855e:	c6 44 24 3a 64       	mov    BYTE PTR [esp+0x3a],0x64
 8048563:	c6 44 24 3b 00       	mov    BYTE PTR [esp+0x3b],0x0
 8048568:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
 804856c:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
 8048570:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
 8048574:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 8048578:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 804857c:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 8048580:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8048584:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048588:	c7 04 24 38 87 04 08 	mov    DWORD PTR [esp],0x8048738
 804858f:	e8 9c fd ff ff       	call   8048330 <printf@plt>
 8048594:	0f b6 44 24 3b       	movzx  eax,BYTE PTR [esp+0x3b]
 8048599:	0f be d8             	movsx  ebx,al
 804859c:	0f b6 44 24 3a       	movzx  eax,BYTE PTR [esp+0x3a]
 80485a1:	0f be c8             	movsx  ecx,al
 80485a4:	0f b6 44 24 39       	movzx  eax,BYTE PTR [esp+0x39]
 80485a9:	0f be d0             	movsx  edx,al
 80485ac:	0f b6 44 24 38       	movzx  eax,BYTE PTR [esp+0x38]
 80485b1:	0f be c0             	movsx  eax,al
 80485b4:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 80485b8:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 80485bc:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 80485c0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485c4:	c7 04 24 16 87 04 08 	mov    DWORD PTR [esp],0x8048716
 80485cb:	e8 60 fd ff ff       	call   8048330 <printf@plt>
 80485d0:	8d 44 24 38          	lea    eax,[esp+0x38]
 80485d4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485d8:	c7 04 24 2e 87 04 08 	mov    DWORD PTR [esp],0x804872e
 80485df:	e8 4c fd ff ff       	call   8048330 <printf@plt>
 80485e4:	c7 44 24 24 4d 87 04 	mov    DWORD PTR [esp+0x24],0x804874d
 80485eb:	08 
 80485ec:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 80485f0:	83 c0 03             	add    eax,0x3
 80485f3:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 80485f6:	0f be d8             	movsx  ebx,al
 80485f9:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 80485fd:	83 c0 02             	add    eax,0x2
 8048600:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048603:	0f be c8             	movsx  ecx,al
 8048606:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 804860a:	83 c0 01             	add    eax,0x1
 804860d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 8048610:	0f be d0             	movsx  edx,al
 8048613:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 8048617:	0f b6 00             	movzx  eax,BYTE PTR [eax]
 804861a:	0f be c0             	movsx  eax,al
 804861d:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 8048621:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 8048625:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8048629:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804862d:	c7 04 24 54 87 04 08 	mov    DWORD PTR [esp],0x8048754
 8048634:	e8 f7 fc ff ff       	call   8048330 <printf@plt>
 8048639:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
 804863d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048641:	c7 04 24 73 87 04 08 	mov    DWORD PTR [esp],0x8048773
 8048648:	e8 e3 fc ff ff       	call   8048330 <printf@plt>
 804864d:	b8 00 00 00 00       	mov    eax,0x0
 8048652:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
 8048656:	65 33 35 14 00 00 00 	xor    esi,DWORD PTR gs:0x14
 804865d:	74 05                	je     8048664 <main+0x1f7>
 804865f:	e8 dc fc ff ff       	call   8048340 <__stack_chk_fail@plt>
 8048664:	8d 65 f8             	lea    esp,[ebp-0x8]
 8048667:	5b                   	pop    ebx
 8048668:	5e                   	pop    esi
 8048669:	5d                   	pop    ebp
 804866a:	c3                   	ret    
 804866b:	66 90                	xchg   ax,ax
 804866d:	66 90                	xchg   ax,ax
 804866f:	90                   	nop

08048670 <__libc_csu_init>:
 8048670:	55                   	push   ebp
 8048671:	57                   	push   edi
 8048672:	31 ff                	xor    edi,edi
 8048674:	56                   	push   esi
 8048675:	53                   	push   ebx
 8048676:	e8 25 fd ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804867b:	81 c3 85 19 00 00    	add    ebx,0x1985
 8048681:	83 ec 1c             	sub    esp,0x1c
 8048684:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048688:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804868e:	e8 65 fc ff ff       	call   80482f8 <_init>
 8048693:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048699:	29 c6                	sub    esi,eax
 804869b:	c1 fe 02             	sar    esi,0x2
 804869e:	85 f6                	test   esi,esi
 80486a0:	74 27                	je     80486c9 <__libc_csu_init+0x59>
 80486a2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80486a8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 80486ac:	89 2c 24             	mov    DWORD PTR [esp],ebp
 80486af:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80486b3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 80486b7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80486bb:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 80486c2:	83 c7 01             	add    edi,0x1
 80486c5:	39 f7                	cmp    edi,esi
 80486c7:	75 df                	jne    80486a8 <__libc_csu_init+0x38>
 80486c9:	83 c4 1c             	add    esp,0x1c
 80486cc:	5b                   	pop    ebx
 80486cd:	5e                   	pop    esi
 80486ce:	5f                   	pop    edi
 80486cf:	5d                   	pop    ebp
 80486d0:	c3                   	ret    
 80486d1:	eb 0d                	jmp    80486e0 <__libc_csu_fini>
 80486d3:	90                   	nop
 80486d4:	90                   	nop
 80486d5:	90                   	nop
 80486d6:	90                   	nop
 80486d7:	90                   	nop
 80486d8:	90                   	nop
 80486d9:	90                   	nop
 80486da:	90                   	nop
 80486db:	90                   	nop
 80486dc:	90                   	nop
 80486dd:	90                   	nop
 80486de:	90                   	nop
 80486df:	90                   	nop

080486e0 <__libc_csu_fini>:
 80486e0:	f3 c3                	repz ret 

Disassembly of section .fini:

080486e4 <_fini>:
 80486e4:	53                   	push   ebx
 80486e5:	83 ec 08             	sub    esp,0x8
 80486e8:	e8 b3 fc ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 80486ed:	81 c3 13 19 00 00    	add    ebx,0x1913
 80486f3:	83 c4 08             	add    esp,0x8
 80486f6:	5b                   	pop    ebx
 80486f7:	c3                   	ret    
