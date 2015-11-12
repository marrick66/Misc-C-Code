
ex16:     file format elf32-i386


Disassembly of section .init:

0804833c <_init>:
 804833c:	53                   	push   ebx
 804833d:	83 ec 08             	sub    esp,0x8
 8048340:	e8 cb 00 00 00       	call   8048410 <__x86.get_pc_thunk.bx>
 8048345:	81 c3 bb 1c 00 00    	add    ebx,0x1cbb
 804834b:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048351:	85 c0                	test   eax,eax
 8048353:	74 05                	je     804835a <_init+0x1e>
 8048355:	e8 56 00 00 00       	call   80483b0 <__gmon_start__@plt>
 804835a:	83 c4 08             	add    esp,0x8
 804835d:	5b                   	pop    ebx
 804835e:	c3                   	ret    

Disassembly of section .plt:

08048360 <printf@plt-0x10>:
 8048360:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048366:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804836c:	00 00                	add    BYTE PTR [eax],al
	...

08048370 <printf@plt>:
 8048370:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048376:	68 00 00 00 00       	push   0x0
 804837b:	e9 e0 ff ff ff       	jmp    8048360 <_init+0x24>

08048380 <free@plt>:
 8048380:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048386:	68 08 00 00 00       	push   0x8
 804838b:	e9 d0 ff ff ff       	jmp    8048360 <_init+0x24>

08048390 <strdup@plt>:
 8048390:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048396:	68 10 00 00 00       	push   0x10
 804839b:	e9 c0 ff ff ff       	jmp    8048360 <_init+0x24>

080483a0 <malloc@plt>:
 80483a0:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 80483a6:	68 18 00 00 00       	push   0x18
 80483ab:	e9 b0 ff ff ff       	jmp    8048360 <_init+0x24>

080483b0 <__gmon_start__@plt>:
 80483b0:	ff 25 1c a0 04 08    	jmp    DWORD PTR ds:0x804a01c
 80483b6:	68 20 00 00 00       	push   0x20
 80483bb:	e9 a0 ff ff ff       	jmp    8048360 <_init+0x24>

080483c0 <__libc_start_main@plt>:
 80483c0:	ff 25 20 a0 04 08    	jmp    DWORD PTR ds:0x804a020
 80483c6:	68 28 00 00 00       	push   0x28
 80483cb:	e9 90 ff ff ff       	jmp    8048360 <_init+0x24>

080483d0 <__assert_fail@plt>:
 80483d0:	ff 25 24 a0 04 08    	jmp    DWORD PTR ds:0x804a024
 80483d6:	68 30 00 00 00       	push   0x30
 80483db:	e9 80 ff ff ff       	jmp    8048360 <_init+0x24>

Disassembly of section .text:

080483e0 <_start>:
 80483e0:	31 ed                	xor    ebp,ebp
 80483e2:	5e                   	pop    esi
 80483e3:	89 e1                	mov    ecx,esp
 80483e5:	83 e4 f0             	and    esp,0xfffffff0
 80483e8:	50                   	push   eax
 80483e9:	54                   	push   esp
 80483ea:	52                   	push   edx
 80483eb:	68 90 87 04 08       	push   0x8048790
 80483f0:	68 20 87 04 08       	push   0x8048720
 80483f5:	51                   	push   ecx
 80483f6:	56                   	push   esi
 80483f7:	68 f7 85 04 08       	push   0x80485f7
 80483fc:	e8 bf ff ff ff       	call   80483c0 <__libc_start_main@plt>
 8048401:	f4                   	hlt    
 8048402:	66 90                	xchg   ax,ax
 8048404:	66 90                	xchg   ax,ax
 8048406:	66 90                	xchg   ax,ax
 8048408:	66 90                	xchg   ax,ax
 804840a:	66 90                	xchg   ax,ax
 804840c:	66 90                	xchg   ax,ax
 804840e:	66 90                	xchg   ax,ax

08048410 <__x86.get_pc_thunk.bx>:
 8048410:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048413:	c3                   	ret    
 8048414:	66 90                	xchg   ax,ax
 8048416:	66 90                	xchg   ax,ax
 8048418:	66 90                	xchg   ax,ax
 804841a:	66 90                	xchg   ax,ax
 804841c:	66 90                	xchg   ax,ax
 804841e:	66 90                	xchg   ax,ax

08048420 <deregister_tm_clones>:
 8048420:	b8 33 a0 04 08       	mov    eax,0x804a033
 8048425:	2d 30 a0 04 08       	sub    eax,0x804a030
 804842a:	83 f8 06             	cmp    eax,0x6
 804842d:	77 01                	ja     8048430 <deregister_tm_clones+0x10>
 804842f:	c3                   	ret    
 8048430:	b8 00 00 00 00       	mov    eax,0x0
 8048435:	85 c0                	test   eax,eax
 8048437:	74 f6                	je     804842f <deregister_tm_clones+0xf>
 8048439:	55                   	push   ebp
 804843a:	89 e5                	mov    ebp,esp
 804843c:	83 ec 18             	sub    esp,0x18
 804843f:	c7 04 24 30 a0 04 08 	mov    DWORD PTR [esp],0x804a030
 8048446:	ff d0                	call   eax
 8048448:	c9                   	leave  
 8048449:	c3                   	ret    
 804844a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]

08048450 <register_tm_clones>:
 8048450:	b8 30 a0 04 08       	mov    eax,0x804a030
 8048455:	2d 30 a0 04 08       	sub    eax,0x804a030
 804845a:	c1 f8 02             	sar    eax,0x2
 804845d:	89 c2                	mov    edx,eax
 804845f:	c1 ea 1f             	shr    edx,0x1f
 8048462:	01 d0                	add    eax,edx
 8048464:	d1 f8                	sar    eax,1
 8048466:	75 01                	jne    8048469 <register_tm_clones+0x19>
 8048468:	c3                   	ret    
 8048469:	ba 00 00 00 00       	mov    edx,0x0
 804846e:	85 d2                	test   edx,edx
 8048470:	74 f6                	je     8048468 <register_tm_clones+0x18>
 8048472:	55                   	push   ebp
 8048473:	89 e5                	mov    ebp,esp
 8048475:	83 ec 18             	sub    esp,0x18
 8048478:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804847c:	c7 04 24 30 a0 04 08 	mov    DWORD PTR [esp],0x804a030
 8048483:	ff d2                	call   edx
 8048485:	c9                   	leave  
 8048486:	c3                   	ret    
 8048487:	89 f6                	mov    esi,esi
 8048489:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048490 <__do_global_dtors_aux>:
 8048490:	80 3d 30 a0 04 08 00 	cmp    BYTE PTR ds:0x804a030,0x0
 8048497:	75 13                	jne    80484ac <__do_global_dtors_aux+0x1c>
 8048499:	55                   	push   ebp
 804849a:	89 e5                	mov    ebp,esp
 804849c:	83 ec 08             	sub    esp,0x8
 804849f:	e8 7c ff ff ff       	call   8048420 <deregister_tm_clones>
 80484a4:	c6 05 30 a0 04 08 01 	mov    BYTE PTR ds:0x804a030,0x1
 80484ab:	c9                   	leave  
 80484ac:	f3 c3                	repz ret 
 80484ae:	66 90                	xchg   ax,ax

080484b0 <frame_dummy>:
 80484b0:	a1 10 9f 04 08       	mov    eax,ds:0x8049f10
 80484b5:	85 c0                	test   eax,eax
 80484b7:	74 1f                	je     80484d8 <frame_dummy+0x28>
 80484b9:	b8 00 00 00 00       	mov    eax,0x0
 80484be:	85 c0                	test   eax,eax
 80484c0:	74 16                	je     80484d8 <frame_dummy+0x28>
 80484c2:	55                   	push   ebp
 80484c3:	89 e5                	mov    ebp,esp
 80484c5:	83 ec 18             	sub    esp,0x18
 80484c8:	c7 04 24 10 9f 04 08 	mov    DWORD PTR [esp],0x8049f10
 80484cf:	ff d0                	call   eax
 80484d1:	c9                   	leave  
 80484d2:	e9 79 ff ff ff       	jmp    8048450 <register_tm_clones>
 80484d7:	90                   	nop
 80484d8:	e9 73 ff ff ff       	jmp    8048450 <register_tm_clones>

080484dd <PersonCreate>:
 80484dd:	55                   	push   ebp
 80484de:	89 e5                	mov    ebp,esp
 80484e0:	83 ec 28             	sub    esp,0x28
 80484e3:	c7 04 24 10 00 00 00 	mov    DWORD PTR [esp],0x10
 80484ea:	e8 b1 fe ff ff       	call   80483a0 <malloc@plt>
 80484ef:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80484f2:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
 80484f6:	75 24                	jne    804851c <PersonCreate+0x3f>
 80484f8:	c7 44 24 0c 3b 88 04 	mov    DWORD PTR [esp+0xc],0x804883b
 80484ff:	08 
 8048500:	c7 44 24 08 12 00 00 	mov    DWORD PTR [esp+0x8],0x12
 8048507:	00 
 8048508:	c7 44 24 04 b0 87 04 	mov    DWORD PTR [esp+0x4],0x80487b0
 804850f:	08 
 8048510:	c7 04 24 b7 87 04 08 	mov    DWORD PTR [esp],0x80487b7
 8048517:	e8 b4 fe ff ff       	call   80483d0 <__assert_fail@plt>
 804851c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804851f:	89 04 24             	mov    DWORD PTR [esp],eax
 8048522:	e8 69 fe ff ff       	call   8048390 <strdup@plt>
 8048527:	89 c2                	mov    edx,eax
 8048529:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804852c:	89 10                	mov    DWORD PTR [eax],edx
 804852e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048531:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8048534:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
 8048537:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804853a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
 804853d:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
 8048540:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 8048543:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
 8048546:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
 8048549:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
 804854c:	c9                   	leave  
 804854d:	c3                   	ret    

0804854e <PersonDestroy>:
 804854e:	55                   	push   ebp
 804854f:	89 e5                	mov    ebp,esp
 8048551:	83 ec 18             	sub    esp,0x18
 8048554:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
 8048558:	75 24                	jne    804857e <PersonDestroy+0x30>
 804855a:	c7 44 24 0c 48 88 04 	mov    DWORD PTR [esp+0xc],0x8048848
 8048561:	08 
 8048562:	c7 44 24 08 1e 00 00 	mov    DWORD PTR [esp+0x8],0x1e
 8048569:	00 
 804856a:	c7 44 24 04 b0 87 04 	mov    DWORD PTR [esp+0x4],0x80487b0
 8048571:	08 
 8048572:	c7 04 24 b7 87 04 08 	mov    DWORD PTR [esp],0x80487b7
 8048579:	e8 52 fe ff ff       	call   80483d0 <__assert_fail@plt>
 804857e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048581:	8b 00                	mov    eax,DWORD PTR [eax]
 8048583:	89 04 24             	mov    DWORD PTR [esp],eax
 8048586:	e8 f5 fd ff ff       	call   8048380 <free@plt>
 804858b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804858e:	89 04 24             	mov    DWORD PTR [esp],eax
 8048591:	e8 ea fd ff ff       	call   8048380 <free@plt>
 8048596:	c9                   	leave  
 8048597:	c3                   	ret    

08048598 <PersonPrint>:
 8048598:	55                   	push   ebp
 8048599:	89 e5                	mov    ebp,esp
 804859b:	83 ec 18             	sub    esp,0x18
 804859e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485a1:	8b 00                	mov    eax,DWORD PTR [eax]
 80485a3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485a7:	c7 04 24 ca 87 04 08 	mov    DWORD PTR [esp],0x80487ca
 80485ae:	e8 bd fd ff ff       	call   8048370 <printf@plt>
 80485b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485b6:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80485b9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485bd:	c7 04 24 d4 87 04 08 	mov    DWORD PTR [esp],0x80487d4
 80485c4:	e8 a7 fd ff ff       	call   8048370 <printf@plt>
 80485c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485cc:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 80485cf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485d3:	c7 04 24 de 87 04 08 	mov    DWORD PTR [esp],0x80487de
 80485da:	e8 91 fd ff ff       	call   8048370 <printf@plt>
 80485df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485e2:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
 80485e5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485e9:	c7 04 24 eb 87 04 08 	mov    DWORD PTR [esp],0x80487eb
 80485f0:	e8 7b fd ff ff       	call   8048370 <printf@plt>
 80485f5:	c9                   	leave  
 80485f6:	c3                   	ret    

080485f7 <main>:
 80485f7:	55                   	push   ebp
 80485f8:	89 e5                	mov    ebp,esp
 80485fa:	83 e4 f0             	and    esp,0xfffffff0
 80485fd:	83 ec 20             	sub    esp,0x20
 8048600:	c7 44 24 0c 8c 00 00 	mov    DWORD PTR [esp+0xc],0x8c
 8048607:	00 
 8048608:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
 804860f:	00 
 8048610:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
 8048617:	00 
 8048618:	c7 04 24 f8 87 04 08 	mov    DWORD PTR [esp],0x80487f8
 804861f:	e8 b9 fe ff ff       	call   80484dd <PersonCreate>
 8048624:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 8048628:	c7 44 24 0c b4 00 00 	mov    DWORD PTR [esp+0xc],0xb4
 804862f:	00 
 8048630:	c7 44 24 08 48 00 00 	mov    DWORD PTR [esp+0x8],0x48
 8048637:	00 
 8048638:	c7 44 24 04 14 00 00 	mov    DWORD PTR [esp+0x4],0x14
 804863f:	00 
 8048640:	c7 04 24 01 88 04 08 	mov    DWORD PTR [esp],0x8048801
 8048647:	e8 91 fe ff ff       	call   80484dd <PersonCreate>
 804864c:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 8048650:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048654:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048658:	c7 04 24 0d 88 04 08 	mov    DWORD PTR [esp],0x804880d
 804865f:	e8 0c fd ff ff       	call   8048370 <printf@plt>
 8048664:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048668:	89 04 24             	mov    DWORD PTR [esp],eax
 804866b:	e8 28 ff ff ff       	call   8048598 <PersonPrint>
 8048670:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048674:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048678:	c7 04 24 23 88 04 08 	mov    DWORD PTR [esp],0x8048823
 804867f:	e8 ec fc ff ff       	call   8048370 <printf@plt>
 8048684:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 8048688:	89 04 24             	mov    DWORD PTR [esp],eax
 804868b:	e8 08 ff ff ff       	call   8048598 <PersonPrint>
 8048690:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048694:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048697:	8d 50 14             	lea    edx,[eax+0x14]
 804869a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 804869e:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
 80486a1:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80486a5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 80486a8:	8d 50 fe             	lea    edx,[eax-0x2]
 80486ab:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80486af:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
 80486b2:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80486b6:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
 80486b9:	8d 50 28             	lea    edx,[eax+0x28]
 80486bc:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80486c0:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
 80486c3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80486c7:	89 04 24             	mov    DWORD PTR [esp],eax
 80486ca:	e8 c9 fe ff ff       	call   8048598 <PersonPrint>
 80486cf:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80486d3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 80486d6:	8d 50 14             	lea    edx,[eax+0x14]
 80486d9:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80486dd:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
 80486e0:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80486e4:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
 80486e7:	8d 50 14             	lea    edx,[eax+0x14]
 80486ea:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80486ee:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
 80486f1:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80486f5:	89 04 24             	mov    DWORD PTR [esp],eax
 80486f8:	e8 9b fe ff ff       	call   8048598 <PersonPrint>
 80486fd:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 8048701:	89 04 24             	mov    DWORD PTR [esp],eax
 8048704:	e8 45 fe ff ff       	call   804854e <PersonDestroy>
 8048709:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 804870d:	89 04 24             	mov    DWORD PTR [esp],eax
 8048710:	e8 39 fe ff ff       	call   804854e <PersonDestroy>
 8048715:	b8 00 00 00 00       	mov    eax,0x0
 804871a:	c9                   	leave  
 804871b:	c3                   	ret    
 804871c:	66 90                	xchg   ax,ax
 804871e:	66 90                	xchg   ax,ax

08048720 <__libc_csu_init>:
 8048720:	55                   	push   ebp
 8048721:	57                   	push   edi
 8048722:	31 ff                	xor    edi,edi
 8048724:	56                   	push   esi
 8048725:	53                   	push   ebx
 8048726:	e8 e5 fc ff ff       	call   8048410 <__x86.get_pc_thunk.bx>
 804872b:	81 c3 d5 18 00 00    	add    ebx,0x18d5
 8048731:	83 ec 1c             	sub    esp,0x1c
 8048734:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048738:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 804873e:	e8 f9 fb ff ff       	call   804833c <_init>
 8048743:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 8048749:	29 c6                	sub    esi,eax
 804874b:	c1 fe 02             	sar    esi,0x2
 804874e:	85 f6                	test   esi,esi
 8048750:	74 27                	je     8048779 <__libc_csu_init+0x59>
 8048752:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048758:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804875c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804875f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048763:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048767:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804876b:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048772:	83 c7 01             	add    edi,0x1
 8048775:	39 f7                	cmp    edi,esi
 8048777:	75 df                	jne    8048758 <__libc_csu_init+0x38>
 8048779:	83 c4 1c             	add    esp,0x1c
 804877c:	5b                   	pop    ebx
 804877d:	5e                   	pop    esi
 804877e:	5f                   	pop    edi
 804877f:	5d                   	pop    ebp
 8048780:	c3                   	ret    
 8048781:	eb 0d                	jmp    8048790 <__libc_csu_fini>
 8048783:	90                   	nop
 8048784:	90                   	nop
 8048785:	90                   	nop
 8048786:	90                   	nop
 8048787:	90                   	nop
 8048788:	90                   	nop
 8048789:	90                   	nop
 804878a:	90                   	nop
 804878b:	90                   	nop
 804878c:	90                   	nop
 804878d:	90                   	nop
 804878e:	90                   	nop
 804878f:	90                   	nop

08048790 <__libc_csu_fini>:
 8048790:	f3 c3                	repz ret 

Disassembly of section .fini:

08048794 <_fini>:
 8048794:	53                   	push   ebx
 8048795:	83 ec 08             	sub    esp,0x8
 8048798:	e8 73 fc ff ff       	call   8048410 <__x86.get_pc_thunk.bx>
 804879d:	81 c3 63 18 00 00    	add    ebx,0x1863
 80487a3:	83 c4 08             	add    esp,0x8
 80487a6:	5b                   	pop    ebx
 80487a7:	c3                   	ret    
