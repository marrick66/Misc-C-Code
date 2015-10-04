
ex7:     file format elf32-i386


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
 804837b:	68 20 87 04 08       	push   0x8048720
 8048380:	68 b0 86 04 08       	push   0x80486b0
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
 8048473:	83 c4 80             	add    esp,0xffffff80
 8048476:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048479:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 804847d:	65 a1 14 00 00 00    	mov    eax,gs:0x14
 8048483:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
 8048487:	31 c0                	xor    eax,eax
 8048489:	c7 44 24 2c 64 00 00 	mov    DWORD PTR [esp+0x2c],0x64
 8048490:	00 
 8048491:	a1 40 89 04 08       	mov    eax,ds:0x8048940
 8048496:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
 804849a:	dd 05 48 89 04 08    	fld    QWORD PTR ds:0x8048948
 80484a0:	dd 5c 24 48          	fstp   QWORD PTR [esp+0x48]
 80484a4:	c6 44 24 2a 44       	mov    BYTE PTR [esp+0x2a],0x44
 80484a9:	c7 44 24 6e 53 65 61 	mov    DWORD PTR [esp+0x6e],0x6e616553
 80484b0:	6e 
 80484b1:	c6 44 24 72 00       	mov    BYTE PTR [esp+0x72],0x0
 80484b6:	c7 44 24 73 4d 61 79 	mov    DWORD PTR [esp+0x73],0x6679614d
 80484bd:	66 
 80484be:	c7 44 24 77 69 65 6c 	mov    DWORD PTR [esp+0x77],0x646c6569
 80484c5:	64 
 80484c6:	c6 44 24 7b 00       	mov    BYTE PTR [esp+0x7b],0x0
 80484cb:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 80484cf:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484d3:	c7 04 24 40 87 04 08 	mov    DWORD PTR [esp],0x8048740
 80484da:	e8 51 fe ff ff       	call   8048330 <printf@plt>
 80484df:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
 80484e3:	dd 5c 24 04          	fstp   QWORD PTR [esp+0x4]
 80484e7:	c7 04 24 58 87 04 08 	mov    DWORD PTR [esp],0x8048758
 80484ee:	e8 3d fe ff ff       	call   8048330 <printf@plt>
 80484f3:	dd 44 24 48          	fld    QWORD PTR [esp+0x48]
 80484f7:	dd 5c 24 04          	fstp   QWORD PTR [esp+0x4]
 80484fb:	c7 04 24 76 87 04 08 	mov    DWORD PTR [esp],0x8048776
 8048502:	e8 29 fe ff ff       	call   8048330 <printf@plt>
 8048507:	0f be 44 24 2a       	movsx  eax,BYTE PTR [esp+0x2a]
 804850c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048510:	c7 04 24 91 87 04 08 	mov    DWORD PTR [esp],0x8048791
 8048517:	e8 14 fe ff ff       	call   8048330 <printf@plt>
 804851c:	8d 44 24 6e          	lea    eax,[esp+0x6e]
 8048520:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048524:	c7 04 24 a8 87 04 08 	mov    DWORD PTR [esp],0x80487a8
 804852b:	e8 00 fe ff ff       	call   8048330 <printf@plt>
 8048530:	8d 44 24 73          	lea    eax,[esp+0x73]
 8048534:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048538:	c7 04 24 c0 87 04 08 	mov    DWORD PTR [esp],0x80487c0
 804853f:	e8 ec fd ff ff       	call   8048330 <printf@plt>
 8048544:	0f be 44 24 2a       	movsx  eax,BYTE PTR [esp+0x2a]
 8048549:	8d 54 24 73          	lea    edx,[esp+0x73]
 804854d:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 8048551:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048555:	8d 44 24 6e          	lea    eax,[esp+0x6e]
 8048559:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804855d:	c7 04 24 d7 87 04 08 	mov    DWORD PTR [esp],0x80487d7
 8048564:	e8 c7 fd ff ff       	call   8048330 <printf@plt>
 8048569:	c7 44 24 34 64 00 00 	mov    DWORD PTR [esp+0x34],0x64
 8048570:	00 
 8048571:	dd 05 50 89 04 08    	fld    QWORD PTR ds:0x8048950
 8048577:	dd 5c 24 50          	fstp   QWORD PTR [esp+0x50]
 804857b:	dd 44 24 50          	fld    QWORD PTR [esp+0x50]
 804857f:	dd 5c 24 08          	fstp   QWORD PTR [esp+0x8]
 8048583:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048587:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804858b:	c7 04 24 f4 87 04 08 	mov    DWORD PTR [esp],0x80487f4
 8048592:	e8 99 fd ff ff       	call   8048330 <printf@plt>
 8048597:	c7 44 24 38 00 00 00 	mov    DWORD PTR [esp+0x38],0x40000000
 804859e:	40 
 804859f:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 80485a3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485a7:	c7 04 24 20 88 04 08 	mov    DWORD PTR [esp],0x8048820
 80485ae:	e8 7d fd ff ff       	call   8048330 <printf@plt>
 80485b3:	db 44 24 34          	fild   DWORD PTR [esp+0x34]
 80485b7:	dd 44 24 50          	fld    QWORD PTR [esp+0x50]
 80485bb:	de c9                	fmulp  st(1),st
 80485bd:	dd 5c 24 58          	fstp   QWORD PTR [esp+0x58]
 80485c1:	dd 44 24 58          	fld    QWORD PTR [esp+0x58]
 80485c5:	dd 5c 24 04          	fstp   QWORD PTR [esp+0x4]
 80485c9:	c7 04 24 44 88 04 08 	mov    DWORD PTR [esp],0x8048844
 80485d0:	e8 5b fd ff ff       	call   8048330 <printf@plt>
 80485d5:	dd 44 24 58          	fld    QWORD PTR [esp+0x58]
 80485d9:	db 44 24 38          	fild   DWORD PTR [esp+0x38]
 80485dd:	de f9                	fdivrp st(1),st
 80485df:	dd 5c 24 60          	fstp   QWORD PTR [esp+0x60]
 80485e3:	dd 44 24 60          	fld    QWORD PTR [esp+0x60]
 80485e7:	dd 5c 24 04          	fstp   QWORD PTR [esp+0x4]
 80485eb:	c7 04 24 68 88 04 08 	mov    DWORD PTR [esp],0x8048868
 80485f2:	e8 39 fd ff ff       	call   8048330 <printf@plt>
 80485f7:	c6 44 24 2b 00       	mov    BYTE PTR [esp+0x2b],0x0
 80485fc:	0f be 44 24 2b       	movsx  eax,BYTE PTR [esp+0x2b]
 8048601:	0f af 44 24 34       	imul   eax,DWORD PTR [esp+0x34]
 8048606:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
 804860a:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
 804860e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048612:	c7 04 24 94 88 04 08 	mov    DWORD PTR [esp],0x8048894
 8048619:	e8 12 fd ff ff       	call   8048330 <printf@plt>
 804861e:	c7 44 24 04 ff ff ff 	mov    DWORD PTR [esp+0x4],0x7fffffff
 8048625:	7f 
 8048626:	c7 04 24 b7 88 04 08 	mov    DWORD PTR [esp],0x80488b7
 804862d:	e8 fe fc ff ff       	call   8048330 <printf@plt>
 8048632:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x80000000
 8048639:	80 
 804863a:	c7 04 24 d3 88 04 08 	mov    DWORD PTR [esp],0x80488d3
 8048641:	e8 ea fc ff ff       	call   8048330 <printf@plt>
 8048646:	c7 44 24 04 ff ff ff 	mov    DWORD PTR [esp+0x4],0xffffffff
 804864d:	ff 
 804864e:	c7 04 24 f0 88 04 08 	mov    DWORD PTR [esp],0x80488f0
 8048655:	e8 d6 fc ff ff       	call   8048330 <printf@plt>
 804865a:	c7 44 24 40 ff ff ff 	mov    DWORD PTR [esp+0x40],0x7fffffff
 8048661:	7f 
 8048662:	c7 44 24 44 01 00 00 	mov    DWORD PTR [esp+0x44],0x1
 8048669:	00 
 804866a:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
 804866e:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
 8048672:	01 d0                	add    eax,edx
 8048674:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8048678:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
 804867c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048680:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
 8048684:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048688:	c7 04 24 18 89 04 08 	mov    DWORD PTR [esp],0x8048918
 804868f:	e8 9c fc ff ff       	call   8048330 <printf@plt>
 8048694:	b8 00 00 00 00       	mov    eax,0x0
 8048699:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
 804869d:	65 33 0d 14 00 00 00 	xor    ecx,DWORD PTR gs:0x14
 80486a4:	74 05                	je     80486ab <main+0x23e>
 80486a6:	e8 95 fc ff ff       	call   8048340 <__stack_chk_fail@plt>
 80486ab:	c9                   	leave  
 80486ac:	c3                   	ret    
 80486ad:	66 90                	xchg   ax,ax
 80486af:	90                   	nop

080486b0 <__libc_csu_init>:
 80486b0:	55                   	push   ebp
 80486b1:	57                   	push   edi
 80486b2:	31 ff                	xor    edi,edi
 80486b4:	56                   	push   esi
 80486b5:	53                   	push   ebx
 80486b6:	e8 e5 fc ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 80486bb:	81 c3 45 19 00 00    	add    ebx,0x1945
 80486c1:	83 ec 1c             	sub    esp,0x1c
 80486c4:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 80486c8:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80486ce:	e8 25 fc ff ff       	call   80482f8 <_init>
 80486d3:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80486d9:	29 c6                	sub    esi,eax
 80486db:	c1 fe 02             	sar    esi,0x2
 80486de:	85 f6                	test   esi,esi
 80486e0:	74 27                	je     8048709 <__libc_csu_init+0x59>
 80486e2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80486e8:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 80486ec:	89 2c 24             	mov    DWORD PTR [esp],ebp
 80486ef:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80486f3:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 80486f7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80486fb:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 8048702:	83 c7 01             	add    edi,0x1
 8048705:	39 f7                	cmp    edi,esi
 8048707:	75 df                	jne    80486e8 <__libc_csu_init+0x38>
 8048709:	83 c4 1c             	add    esp,0x1c
 804870c:	5b                   	pop    ebx
 804870d:	5e                   	pop    esi
 804870e:	5f                   	pop    edi
 804870f:	5d                   	pop    ebp
 8048710:	c3                   	ret    
 8048711:	eb 0d                	jmp    8048720 <__libc_csu_fini>
 8048713:	90                   	nop
 8048714:	90                   	nop
 8048715:	90                   	nop
 8048716:	90                   	nop
 8048717:	90                   	nop
 8048718:	90                   	nop
 8048719:	90                   	nop
 804871a:	90                   	nop
 804871b:	90                   	nop
 804871c:	90                   	nop
 804871d:	90                   	nop
 804871e:	90                   	nop
 804871f:	90                   	nop

08048720 <__libc_csu_fini>:
 8048720:	f3 c3                	repz ret 

Disassembly of section .fini:

08048724 <_fini>:
 8048724:	53                   	push   ebx
 8048725:	83 ec 08             	sub    esp,0x8
 8048728:	e8 73 fc ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 804872d:	81 c3 d3 18 00 00    	add    ebx,0x18d3
 8048733:	83 c4 08             	add    esp,0x8
 8048736:	5b                   	pop    ebx
 8048737:	c3                   	ret    
