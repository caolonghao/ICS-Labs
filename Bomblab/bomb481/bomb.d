
./bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000f30 <_init>:
 f30:	48 83 ec 08          	sub    $0x8,%rsp
 f34:	48 8b 05 ad 30 20 00 	mov    0x2030ad(%rip),%rax        # 203fe8 <__gmon_start__>
 f3b:	48 85 c0             	test   %rax,%rax
 f3e:	74 02                	je     f42 <_init+0x12>
 f40:	ff d0                	callq  *%rax
 f42:	48 83 c4 08          	add    $0x8,%rsp
 f46:	c3                   	retq   

Disassembly of section .plt:

0000000000000f50 <.plt>:
     f50:	ff 35 92 2f 20 00    	pushq  0x202f92(%rip)        # 203ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
     f56:	ff 25 94 2f 20 00    	jmpq   *0x202f94(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
     f5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f60 <getenv@plt>:
     f60:	ff 25 92 2f 20 00    	jmpq   *0x202f92(%rip)        # 203ef8 <getenv@GLIBC_2.2.5>
     f66:	68 00 00 00 00       	pushq  $0x0
     f6b:	e9 e0 ff ff ff       	jmpq   f50 <.plt>

0000000000000f70 <strcasecmp@plt>:
     f70:	ff 25 8a 2f 20 00    	jmpq   *0x202f8a(%rip)        # 203f00 <strcasecmp@GLIBC_2.2.5>
     f76:	68 01 00 00 00       	pushq  $0x1
     f7b:	e9 d0 ff ff ff       	jmpq   f50 <.plt>

0000000000000f80 <__errno_location@plt>:
     f80:	ff 25 82 2f 20 00    	jmpq   *0x202f82(%rip)        # 203f08 <__errno_location@GLIBC_2.2.5>
     f86:	68 02 00 00 00       	pushq  $0x2
     f8b:	e9 c0 ff ff ff       	jmpq   f50 <.plt>

0000000000000f90 <strcpy@plt>:
     f90:	ff 25 7a 2f 20 00    	jmpq   *0x202f7a(%rip)        # 203f10 <strcpy@GLIBC_2.2.5>
     f96:	68 03 00 00 00       	pushq  $0x3
     f9b:	e9 b0 ff ff ff       	jmpq   f50 <.plt>

0000000000000fa0 <puts@plt>:
     fa0:	ff 25 72 2f 20 00    	jmpq   *0x202f72(%rip)        # 203f18 <puts@GLIBC_2.2.5>
     fa6:	68 04 00 00 00       	pushq  $0x4
     fab:	e9 a0 ff ff ff       	jmpq   f50 <.plt>

0000000000000fb0 <write@plt>:
     fb0:	ff 25 6a 2f 20 00    	jmpq   *0x202f6a(%rip)        # 203f20 <write@GLIBC_2.2.5>
     fb6:	68 05 00 00 00       	pushq  $0x5
     fbb:	e9 90 ff ff ff       	jmpq   f50 <.plt>

0000000000000fc0 <__stack_chk_fail@plt>:
     fc0:	ff 25 62 2f 20 00    	jmpq   *0x202f62(%rip)        # 203f28 <__stack_chk_fail@GLIBC_2.4>
     fc6:	68 06 00 00 00       	pushq  $0x6
     fcb:	e9 80 ff ff ff       	jmpq   f50 <.plt>

0000000000000fd0 <alarm@plt>:
     fd0:	ff 25 5a 2f 20 00    	jmpq   *0x202f5a(%rip)        # 203f30 <alarm@GLIBC_2.2.5>
     fd6:	68 07 00 00 00       	pushq  $0x7
     fdb:	e9 70 ff ff ff       	jmpq   f50 <.plt>

0000000000000fe0 <close@plt>:
     fe0:	ff 25 52 2f 20 00    	jmpq   *0x202f52(%rip)        # 203f38 <close@GLIBC_2.2.5>
     fe6:	68 08 00 00 00       	pushq  $0x8
     feb:	e9 60 ff ff ff       	jmpq   f50 <.plt>

0000000000000ff0 <read@plt>:
     ff0:	ff 25 4a 2f 20 00    	jmpq   *0x202f4a(%rip)        # 203f40 <read@GLIBC_2.2.5>
     ff6:	68 09 00 00 00       	pushq  $0x9
     ffb:	e9 50 ff ff ff       	jmpq   f50 <.plt>

0000000000001000 <fgets@plt>:
    1000:	ff 25 42 2f 20 00    	jmpq   *0x202f42(%rip)        # 203f48 <fgets@GLIBC_2.2.5>
    1006:	68 0a 00 00 00       	pushq  $0xa
    100b:	e9 40 ff ff ff       	jmpq   f50 <.plt>

0000000000001010 <signal@plt>:
    1010:	ff 25 3a 2f 20 00    	jmpq   *0x202f3a(%rip)        # 203f50 <signal@GLIBC_2.2.5>
    1016:	68 0b 00 00 00       	pushq  $0xb
    101b:	e9 30 ff ff ff       	jmpq   f50 <.plt>

0000000000001020 <gethostbyname@plt>:
    1020:	ff 25 32 2f 20 00    	jmpq   *0x202f32(%rip)        # 203f58 <gethostbyname@GLIBC_2.2.5>
    1026:	68 0c 00 00 00       	pushq  $0xc
    102b:	e9 20 ff ff ff       	jmpq   f50 <.plt>

0000000000001030 <__memmove_chk@plt>:
    1030:	ff 25 2a 2f 20 00    	jmpq   *0x202f2a(%rip)        # 203f60 <__memmove_chk@GLIBC_2.3.4>
    1036:	68 0d 00 00 00       	pushq  $0xd
    103b:	e9 10 ff ff ff       	jmpq   f50 <.plt>

0000000000001040 <strtol@plt>:
    1040:	ff 25 22 2f 20 00    	jmpq   *0x202f22(%rip)        # 203f68 <strtol@GLIBC_2.2.5>
    1046:	68 0e 00 00 00       	pushq  $0xe
    104b:	e9 00 ff ff ff       	jmpq   f50 <.plt>

0000000000001050 <memcpy@plt>:
    1050:	ff 25 1a 2f 20 00    	jmpq   *0x202f1a(%rip)        # 203f70 <memcpy@GLIBC_2.14>
    1056:	68 0f 00 00 00       	pushq  $0xf
    105b:	e9 f0 fe ff ff       	jmpq   f50 <.plt>

0000000000001060 <fflush@plt>:
    1060:	ff 25 12 2f 20 00    	jmpq   *0x202f12(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
    1066:	68 10 00 00 00       	pushq  $0x10
    106b:	e9 e0 fe ff ff       	jmpq   f50 <.plt>

0000000000001070 <__isoc99_sscanf@plt>:
    1070:	ff 25 0a 2f 20 00    	jmpq   *0x202f0a(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
    1076:	68 11 00 00 00       	pushq  $0x11
    107b:	e9 d0 fe ff ff       	jmpq   f50 <.plt>

0000000000001080 <__printf_chk@plt>:
    1080:	ff 25 02 2f 20 00    	jmpq   *0x202f02(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
    1086:	68 12 00 00 00       	pushq  $0x12
    108b:	e9 c0 fe ff ff       	jmpq   f50 <.plt>

0000000000001090 <fopen@plt>:
    1090:	ff 25 fa 2e 20 00    	jmpq   *0x202efa(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
    1096:	68 13 00 00 00       	pushq  $0x13
    109b:	e9 b0 fe ff ff       	jmpq   f50 <.plt>

00000000000010a0 <gethostname@plt>:
    10a0:	ff 25 f2 2e 20 00    	jmpq   *0x202ef2(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
    10a6:	68 14 00 00 00       	pushq  $0x14
    10ab:	e9 a0 fe ff ff       	jmpq   f50 <.plt>

00000000000010b0 <exit@plt>:
    10b0:	ff 25 ea 2e 20 00    	jmpq   *0x202eea(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
    10b6:	68 15 00 00 00       	pushq  $0x15
    10bb:	e9 90 fe ff ff       	jmpq   f50 <.plt>

00000000000010c0 <connect@plt>:
    10c0:	ff 25 e2 2e 20 00    	jmpq   *0x202ee2(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
    10c6:	68 16 00 00 00       	pushq  $0x16
    10cb:	e9 80 fe ff ff       	jmpq   f50 <.plt>

00000000000010d0 <__fprintf_chk@plt>:
    10d0:	ff 25 da 2e 20 00    	jmpq   *0x202eda(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
    10d6:	68 17 00 00 00       	pushq  $0x17
    10db:	e9 70 fe ff ff       	jmpq   f50 <.plt>

00000000000010e0 <sleep@plt>:
    10e0:	ff 25 d2 2e 20 00    	jmpq   *0x202ed2(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
    10e6:	68 18 00 00 00       	pushq  $0x18
    10eb:	e9 60 fe ff ff       	jmpq   f50 <.plt>

00000000000010f0 <__ctype_b_loc@plt>:
    10f0:	ff 25 ca 2e 20 00    	jmpq   *0x202eca(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
    10f6:	68 19 00 00 00       	pushq  $0x19
    10fb:	e9 50 fe ff ff       	jmpq   f50 <.plt>

0000000000001100 <__sprintf_chk@plt>:
    1100:	ff 25 c2 2e 20 00    	jmpq   *0x202ec2(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
    1106:	68 1a 00 00 00       	pushq  $0x1a
    110b:	e9 40 fe ff ff       	jmpq   f50 <.plt>

0000000000001110 <socket@plt>:
    1110:	ff 25 ba 2e 20 00    	jmpq   *0x202eba(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
    1116:	68 1b 00 00 00       	pushq  $0x1b
    111b:	e9 30 fe ff ff       	jmpq   f50 <.plt>

Disassembly of section .plt.got:

0000000000001120 <__cxa_finalize@plt>:
    1120:	ff 25 d2 2e 20 00    	jmpq   *0x202ed2(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1126:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001130 <_start>:
    1130:	31 ed                	xor    %ebp,%ebp
    1132:	49 89 d1             	mov    %rdx,%r9
    1135:	5e                   	pop    %rsi
    1136:	48 89 e2             	mov    %rsp,%rdx
    1139:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    113d:	50                   	push   %rax
    113e:	54                   	push   %rsp
    113f:	4c 8d 05 da 1a 00 00 	lea    0x1ada(%rip),%r8        # 2c20 <__libc_csu_fini>
    1146:	48 8d 0d 63 1a 00 00 	lea    0x1a63(%rip),%rcx        # 2bb0 <__libc_csu_init>
    114d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 123a <main>
    1154:	ff 15 86 2e 20 00    	callq  *0x202e86(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    115a:	f4                   	hlt    
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <deregister_tm_clones>:
    1160:	48 8d 3d 99 43 20 00 	lea    0x204399(%rip),%rdi        # 205500 <stdout@@GLIBC_2.2.5>
    1167:	55                   	push   %rbp
    1168:	48 8d 05 91 43 20 00 	lea    0x204391(%rip),%rax        # 205500 <stdout@@GLIBC_2.2.5>
    116f:	48 39 f8             	cmp    %rdi,%rax
    1172:	48 89 e5             	mov    %rsp,%rbp
    1175:	74 19                	je     1190 <deregister_tm_clones+0x30>
    1177:	48 8b 05 5a 2e 20 00 	mov    0x202e5a(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    117e:	48 85 c0             	test   %rax,%rax
    1181:	74 0d                	je     1190 <deregister_tm_clones+0x30>
    1183:	5d                   	pop    %rbp
    1184:	ff e0                	jmpq   *%rax
    1186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    118d:	00 00 00 
    1190:	5d                   	pop    %rbp
    1191:	c3                   	retq   
    1192:	0f 1f 40 00          	nopl   0x0(%rax)
    1196:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    119d:	00 00 00 

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 59 43 20 00 	lea    0x204359(%rip),%rdi        # 205500 <stdout@@GLIBC_2.2.5>
    11a7:	48 8d 35 52 43 20 00 	lea    0x204352(%rip),%rsi        # 205500 <stdout@@GLIBC_2.2.5>
    11ae:	55                   	push   %rbp
    11af:	48 29 fe             	sub    %rdi,%rsi
    11b2:	48 89 e5             	mov    %rsp,%rbp
    11b5:	48 c1 fe 03          	sar    $0x3,%rsi
    11b9:	48 89 f0             	mov    %rsi,%rax
    11bc:	48 c1 e8 3f          	shr    $0x3f,%rax
    11c0:	48 01 c6             	add    %rax,%rsi
    11c3:	48 d1 fe             	sar    %rsi
    11c6:	74 18                	je     11e0 <register_tm_clones+0x40>
    11c8:	48 8b 05 21 2e 20 00 	mov    0x202e21(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    11cf:	48 85 c0             	test   %rax,%rax
    11d2:	74 0c                	je     11e0 <register_tm_clones+0x40>
    11d4:	5d                   	pop    %rbp
    11d5:	ff e0                	jmpq   *%rax
    11d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11de:	00 00 
    11e0:	5d                   	pop    %rbp
    11e1:	c3                   	retq   
    11e2:	0f 1f 40 00          	nopl   0x0(%rax)
    11e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11ed:	00 00 00 

00000000000011f0 <__do_global_dtors_aux>:
    11f0:	80 3d 31 43 20 00 00 	cmpb   $0x0,0x204331(%rip)        # 205528 <completed.7698>
    11f7:	75 2f                	jne    1228 <__do_global_dtors_aux+0x38>
    11f9:	48 83 3d f7 2d 20 00 	cmpq   $0x0,0x202df7(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1200:	00 
    1201:	55                   	push   %rbp
    1202:	48 89 e5             	mov    %rsp,%rbp
    1205:	74 0c                	je     1213 <__do_global_dtors_aux+0x23>
    1207:	48 8b 3d fa 2d 20 00 	mov    0x202dfa(%rip),%rdi        # 204008 <__dso_handle>
    120e:	e8 0d ff ff ff       	callq  1120 <__cxa_finalize@plt>
    1213:	e8 48 ff ff ff       	callq  1160 <deregister_tm_clones>
    1218:	c6 05 09 43 20 00 01 	movb   $0x1,0x204309(%rip)        # 205528 <completed.7698>
    121f:	5d                   	pop    %rbp
    1220:	c3                   	retq   
    1221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1228:	f3 c3                	repz retq 
    122a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001230 <frame_dummy>:
    1230:	55                   	push   %rbp
    1231:	48 89 e5             	mov    %rsp,%rbp
    1234:	5d                   	pop    %rbp
    1235:	e9 66 ff ff ff       	jmpq   11a0 <register_tm_clones>

000000000000123a <main>:
    123a:	53                   	push   %rbx
    123b:	48 83 ec 10          	sub    $0x10,%rsp
    123f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1246:	00 00 
    1248:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    124d:	31 c0                	xor    %eax,%eax
    124f:	83 ff 01             	cmp    $0x1,%edi
    1252:	74 7a                	je     12ce <main+0x94>
    1254:	48 89 f3             	mov    %rsi,%rbx
    1257:	83 ff 02             	cmp    $0x2,%edi
    125a:	0f 85 a0 00 00 00    	jne    1300 <main+0xc6>
    1260:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1264:	48 8d 35 84 1f 00 00 	lea    0x1f84(%rip),%rsi        # 31ef <array.3419+0x38f>
    126b:	e8 20 fe ff ff       	callq  1090 <fopen@plt>
    1270:	48 89 05 b9 42 20 00 	mov    %rax,0x2042b9(%rip)        # 205530 <infile>
    1277:	48 85 c0             	test   %rax,%rax
    127a:	74 62                	je     12de <main+0xa4>
    127c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    1283:	00 
    1284:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1289:	e8 22 06 00 00       	callq  18b0 <initialize_bomb>
    128e:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1293:	0f 84 8a 00 00 00    	je     1323 <main+0xe9>
    1299:	48 8d 35 28 1a 00 00 	lea    0x1a28(%rip),%rsi        # 2cc8 <_IO_stdin_used+0x88>
    12a0:	bf 01 00 00 00       	mov    $0x1,%edi
    12a5:	b8 00 00 00 00       	mov    $0x0,%eax
    12aa:	e8 d1 fd ff ff       	callq  1080 <__printf_chk@plt>
    12af:	b8 00 00 00 00       	mov    $0x0,%eax
    12b4:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    12b9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    12c0:	00 00 
    12c2:	0f 85 20 01 00 00    	jne    13e8 <main+0x1ae>
    12c8:	48 83 c4 10          	add    $0x10,%rsp
    12cc:	5b                   	pop    %rbx
    12cd:	c3                   	retq   
    12ce:	48 8b 05 3b 42 20 00 	mov    0x20423b(%rip),%rax        # 205510 <stdin@@GLIBC_2.2.5>
    12d5:	48 89 05 54 42 20 00 	mov    %rax,0x204254(%rip)        # 205530 <infile>
    12dc:	eb 9e                	jmp    127c <main+0x42>
    12de:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    12e2:	48 8b 13             	mov    (%rbx),%rdx
    12e5:	48 8d 35 58 19 00 00 	lea    0x1958(%rip),%rsi        # 2c44 <_IO_stdin_used+0x4>
    12ec:	bf 01 00 00 00       	mov    $0x1,%edi
    12f1:	e8 8a fd ff ff       	callq  1080 <__printf_chk@plt>
    12f6:	bf 08 00 00 00       	mov    $0x8,%edi
    12fb:	e8 b0 fd ff ff       	callq  10b0 <exit@plt>
    1300:	48 8b 16             	mov    (%rsi),%rdx
    1303:	48 8d 35 57 19 00 00 	lea    0x1957(%rip),%rsi        # 2c61 <_IO_stdin_used+0x21>
    130a:	bf 01 00 00 00       	mov    $0x1,%edi
    130f:	b8 00 00 00 00       	mov    $0x0,%eax
    1314:	e8 67 fd ff ff       	callq  1080 <__printf_chk@plt>
    1319:	bf 08 00 00 00       	mov    $0x8,%edi
    131e:	e8 8d fd ff ff       	callq  10b0 <exit@plt>
    1323:	48 8d 3d de 19 00 00 	lea    0x19de(%rip),%rdi        # 2d08 <_IO_stdin_used+0xc8>
    132a:	e8 71 fc ff ff       	callq  fa0 <puts@plt>
    132f:	48 8d 3d 12 1a 00 00 	lea    0x1a12(%rip),%rdi        # 2d48 <_IO_stdin_used+0x108>
    1336:	e8 65 fc ff ff       	callq  fa0 <puts@plt>
    133b:	e8 01 09 00 00       	callq  1c41 <read_line>
    1340:	48 89 c7             	mov    %rax,%rdi
    1343:	e8 a5 00 00 00       	callq  13ed <phase_1>
    1348:	e8 3b 0a 00 00       	callq  1d88 <phase_defused>
    134d:	48 8d 3d 24 1a 00 00 	lea    0x1a24(%rip),%rdi        # 2d78 <_IO_stdin_used+0x138>
    1354:	e8 47 fc ff ff       	callq  fa0 <puts@plt>
    1359:	e8 e3 08 00 00       	callq  1c41 <read_line>
    135e:	48 89 c7             	mov    %rax,%rdi
    1361:	e8 a7 00 00 00       	callq  140d <phase_2>
    1366:	e8 1d 0a 00 00       	callq  1d88 <phase_defused>
    136b:	48 8d 3d 09 19 00 00 	lea    0x1909(%rip),%rdi        # 2c7b <_IO_stdin_used+0x3b>
    1372:	e8 29 fc ff ff       	callq  fa0 <puts@plt>
    1377:	e8 c5 08 00 00       	callq  1c41 <read_line>
    137c:	48 89 c7             	mov    %rax,%rdi
    137f:	e8 f6 00 00 00       	callq  147a <phase_3>
    1384:	e8 ff 09 00 00       	callq  1d88 <phase_defused>
    1389:	48 8d 3d 09 19 00 00 	lea    0x1909(%rip),%rdi        # 2c99 <_IO_stdin_used+0x59>
    1390:	e8 0b fc ff ff       	callq  fa0 <puts@plt>
    1395:	e8 a7 08 00 00       	callq  1c41 <read_line>
    139a:	48 89 c7             	mov    %rax,%rdi
    139d:	e8 c0 01 00 00       	callq  1562 <phase_4>
    13a2:	e8 e1 09 00 00       	callq  1d88 <phase_defused>
    13a7:	48 8d 3d fa 19 00 00 	lea    0x19fa(%rip),%rdi        # 2da8 <_IO_stdin_used+0x168>
    13ae:	e8 ed fb ff ff       	callq  fa0 <puts@plt>
    13b3:	e8 89 08 00 00       	callq  1c41 <read_line>
    13b8:	48 89 c7             	mov    %rax,%rdi
    13bb:	e8 1d 02 00 00       	callq  15dd <phase_5>
    13c0:	e8 c3 09 00 00       	callq  1d88 <phase_defused>
    13c5:	48 8d 3d dc 18 00 00 	lea    0x18dc(%rip),%rdi        # 2ca8 <_IO_stdin_used+0x68>
    13cc:	e8 cf fb ff ff       	callq  fa0 <puts@plt>
    13d1:	e8 6b 08 00 00       	callq  1c41 <read_line>
    13d6:	48 89 c7             	mov    %rax,%rdi
    13d9:	e8 4c 02 00 00       	callq  162a <phase_6>
    13de:	e8 a5 09 00 00       	callq  1d88 <phase_defused>
    13e3:	e9 c7 fe ff ff       	jmpq   12af <main+0x75>
    13e8:	e8 d3 fb ff ff       	callq  fc0 <__stack_chk_fail@plt>

00000000000013ed <phase_1>:
    13ed:	48 83 ec 08          	sub    $0x8,%rsp
    13f1:	48 8d 35 d8 19 00 00 	lea    0x19d8(%rip),%rsi        # 2dd0 <_IO_stdin_used+0x190>
    13f8:	e8 66 04 00 00       	callq  1863 <strings_not_equal>
    13fd:	85 c0                	test   %eax,%eax
    13ff:	75 05                	jne    1406 <phase_1+0x19>
    1401:	48 83 c4 08          	add    $0x8,%rsp
    1405:	c3                   	retq   
    1406:	e8 75 07 00 00       	callq  1b80 <explode_bomb>
    140b:	eb f4                	jmp    1401 <phase_1+0x14>

000000000000140d <phase_2>:
    140d:	53                   	push   %rbx
    140e:	48 83 ec 20          	sub    $0x20,%rsp
    1412:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1419:	00 00 
    141b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1420:	31 c0                	xor    %eax,%eax
    1422:	48 89 e6             	mov    %rsp,%rsi
    1425:	e8 d6 07 00 00       	callq  1c00 <read_six_numbers>
    142a:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    142e:	75 07                	jne    1437 <phase_2+0x2a>
    1430:	bb 01 00 00 00       	mov    $0x1,%ebx
    1435:	eb 0a                	jmp    1441 <phase_2+0x34>
    1437:	e8 44 07 00 00       	callq  1b80 <explode_bomb>
    143c:	eb f2                	jmp    1430 <phase_2+0x23>
    143e:	83 c3 01             	add    $0x1,%ebx
    1441:	83 fb 05             	cmp    $0x5,%ebx
    1444:	7f 19                	jg     145f <phase_2+0x52>
    1446:	48 63 d3             	movslq %ebx,%rdx
    1449:	8d 43 ff             	lea    -0x1(%rbx),%eax
    144c:	48 98                	cltq   
    144e:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1451:	01 c0                	add    %eax,%eax
    1453:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    1456:	74 e6                	je     143e <phase_2+0x31>
    1458:	e8 23 07 00 00       	callq  1b80 <explode_bomb>
    145d:	eb df                	jmp    143e <phase_2+0x31>
    145f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1464:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    146b:	00 00 
    146d:	75 06                	jne    1475 <phase_2+0x68>
    146f:	48 83 c4 20          	add    $0x20,%rsp
    1473:	5b                   	pop    %rbx
    1474:	c3                   	retq   
    1475:	e8 46 fb ff ff       	callq  fc0 <__stack_chk_fail@plt>

000000000000147a <phase_3>:
    147a:	48 83 ec 18          	sub    $0x18,%rsp
    147e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1485:	00 00 
    1487:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    148c:	31 c0                	xor    %eax,%eax
    148e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1493:	48 89 e2             	mov    %rsp,%rdx
    1496:	48 8d 35 ab 1c 00 00 	lea    0x1cab(%rip),%rsi        # 3148 <array.3419+0x2e8>
    149d:	e8 ce fb ff ff       	callq  1070 <__isoc99_sscanf@plt>
    14a2:	83 f8 01             	cmp    $0x1,%eax
    14a5:	7e 19                	jle    14c0 <phase_3+0x46>
    14a7:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    14ab:	77 4b                	ja     14f8 <phase_3+0x7e>
    14ad:	8b 04 24             	mov    (%rsp),%eax  #  %rip+...感觉像某个数组的地址
    14b0:	48 8d 15 89 19 00 00 	lea    0x1989(%rip),%rdx        # 2e40 <_IO_stdin_used+0x200>
    14b7:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    14bb:	48 01 d0             	add    %rdx,%rax
    14be:	ff e0                	jmpq   *%rax
    14c0:	e8 bb 06 00 00       	callq  1b80 <explode_bomb>
    14c5:	eb e0                	jmp    14a7 <phase_3+0x2d>
    14c7:	b8 35 00 00 00       	mov    $0x35,%eax
    14cc:	eb 3b                	jmp    1509 <phase_3+0x8f>
    14ce:	b8 cd 03 00 00       	mov    $0x3cd,%eax
    14d3:	eb 34                	jmp    1509 <phase_3+0x8f>
    14d5:	b8 95 03 00 00       	mov    $0x395,%eax
    14da:	eb 2d                	jmp    1509 <phase_3+0x8f>
    14dc:	b8 31 01 00 00       	mov    $0x131,%eax
    14e1:	eb 26                	jmp    1509 <phase_3+0x8f>
    14e3:	b8 c1 00 00 00       	mov    $0xc1,%eax
    14e8:	eb 1f                	jmp    1509 <phase_3+0x8f>
    14ea:	b8 ae 02 00 00       	mov    $0x2ae,%eax
    14ef:	eb 18                	jmp    1509 <phase_3+0x8f>
    14f1:	b8 b5 00 00 00       	mov    $0xb5,%eax
    14f6:	eb 11                	jmp    1509 <phase_3+0x8f>
    14f8:	e8 83 06 00 00       	callq  1b80 <explode_bomb>
    14fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1502:	eb 05                	jmp    1509 <phase_3+0x8f>
    1504:	b8 6c 01 00 00       	mov    $0x16c,%eax
    1509:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    150d:	74 05                	je     1514 <phase_3+0x9a>
    150f:	e8 6c 06 00 00       	callq  1b80 <explode_bomb>
    1514:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1519:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1520:	00 00 
    1522:	75 05                	jne    1529 <phase_3+0xaf>
    1524:	48 83 c4 18          	add    $0x18,%rsp
    1528:	c3                   	retq   
    1529:	e8 92 fa ff ff       	callq  fc0 <__stack_chk_fail@plt>

000000000000152e <func4>:
    152e:	53                   	push   %rbx
    152f:	89 d0                	mov    %edx,%eax
    1531:	29 f0                	sub    %esi,%eax
    1533:	89 c3                	mov    %eax,%ebx
    1535:	c1 eb 1f             	shr    $0x1f,%ebx
    1538:	01 c3                	add    %eax,%ebx
    153a:	d1 fb                	sar    %ebx
    153c:	01 f3                	add    %esi,%ebx
    153e:	39 fb                	cmp    %edi,%ebx
    1540:	7f 08                	jg     154a <func4+0x1c>
    1542:	39 fb                	cmp    %edi,%ebx
    1544:	7c 10                	jl     1556 <func4+0x28>
    1546:	89 d8                	mov    %ebx,%eax
    1548:	5b                   	pop    %rbx
    1549:	c3                   	retq   
    154a:	8d 53 ff             	lea    -0x1(%rbx),%edx
    154d:	e8 dc ff ff ff       	callq  152e <func4>
    1552:	01 c3                	add    %eax,%ebx
    1554:	eb f0                	jmp    1546 <func4+0x18>
    1556:	8d 73 01             	lea    0x1(%rbx),%esi
    1559:	e8 d0 ff ff ff       	callq  152e <func4>
    155e:	01 c3                	add    %eax,%ebx
    1560:	eb e4                	jmp    1546 <func4+0x18>

0000000000001562 <phase_4>:
    1562:	48 83 ec 18          	sub    $0x18,%rsp
    1566:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    156d:	00 00 
    156f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1574:	31 c0                	xor    %eax,%eax
    1576:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    157b:	48 89 e2             	mov    %rsp,%rdx
    157e:	48 8d 35 c3 1b 00 00 	lea    0x1bc3(%rip),%rsi        # 3148 <array.3419+0x2e8>
    1585:	e8 e6 fa ff ff       	callq  1070 <__isoc99_sscanf@plt>
    158a:	83 f8 02             	cmp    $0x2,%eax
    158d:	75 0c                	jne    159b <phase_4+0x39>
    158f:	8b 04 24             	mov    (%rsp),%eax
    1592:	85 c0                	test   %eax,%eax
    1594:	78 05                	js     159b <phase_4+0x39>
    1596:	83 f8 0e             	cmp    $0xe,%eax
    1599:	7e 05                	jle    15a0 <phase_4+0x3e>
    159b:	e8 e0 05 00 00       	callq  1b80 <explode_bomb>
    15a0:	ba 0e 00 00 00       	mov    $0xe,%edx
    15a5:	be 00 00 00 00       	mov    $0x0,%esi
    15aa:	8b 3c 24             	mov    (%rsp),%edi
    15ad:	e8 7c ff ff ff       	callq  152e <func4>
    15b2:	83 f8 07             	cmp    $0x7,%eax
    15b5:	75 07                	jne    15be <phase_4+0x5c>
    15b7:	83 7c 24 04 07       	cmpl   $0x7,0x4(%rsp)
    15bc:	74 05                	je     15c3 <phase_4+0x61>
    15be:	e8 bd 05 00 00       	callq  1b80 <explode_bomb>
    15c3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15c8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    15cf:	00 00 
    15d1:	75 05                	jne    15d8 <phase_4+0x76>
    15d3:	48 83 c4 18          	add    $0x18,%rsp
    15d7:	c3                   	retq   
    15d8:	e8 e3 f9 ff ff       	callq  fc0 <__stack_chk_fail@plt>

00000000000015dd <phase_5>:
    15dd:	53                   	push   %rbx
    15de:	48 89 fb             	mov    %rdi,%rbx
    15e1:	e8 68 02 00 00       	callq  184e <string_length>
    15e6:	83 f8 04             	cmp    $0x4,%eax
    15e9:	75 0c                	jne    15f7 <phase_5+0x1a>
    15eb:	b9 01 00 00 00       	mov    $0x1,%ecx
    15f0:	b8 00 00 00 00       	mov    $0x0,%eax
    15f5:	eb 1f                	jmp    1616 <phase_5+0x39>
    15f7:	e8 84 05 00 00       	callq  1b80 <explode_bomb>
    15fc:	eb ed                	jmp    15eb <phase_5+0xe>
    15fe:	48 63 d0             	movslq %eax,%rdx
    1601:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
    1605:	83 e2 07             	and    $0x7,%edx
    1608:	48 8d 35 51 18 00 00 	lea    0x1851(%rip),%rsi        # 2e60 <array.3419>
    160f:	0f af 0c 96          	imul   (%rsi,%rdx,4),%ecx
    1613:	83 c0 01             	add    $0x1,%eax
    1616:	83 f8 03             	cmp    $0x3,%eax
    1619:	7e e3                	jle    15fe <phase_5+0x21>
    161b:	81 f9 98 04 00 00    	cmp    $0x498,%ecx
    1621:	74 05                	je     1628 <phase_5+0x4b>
    1623:	e8 58 05 00 00       	callq  1b80 <explode_bomb>
    1628:	5b                   	pop    %rbx
    1629:	c3                   	retq   

000000000000162a <phase_6>:
    162a:	41 54                	push   %r12
    162c:	55                   	push   %rbp
    162d:	53                   	push   %rbx
    162e:	48 83 ec 60          	sub    $0x60,%rsp
    1632:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1639:	00 00 
    163b:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1640:	31 c0                	xor    %eax,%eax
    1642:	48 89 e6             	mov    %rsp,%rsi
    1645:	e8 b6 05 00 00       	callq  1c00 <read_six_numbers>
    164a:	bd 00 00 00 00       	mov    $0x0,%ebp
    164f:	eb 27                	jmp    1678 <phase_6+0x4e>
    1651:	e8 2a 05 00 00       	callq  1b80 <explode_bomb>
    1656:	eb 33                	jmp    168b <phase_6+0x61>
    1658:	83 c3 01             	add    $0x1,%ebx        //循环嵌套，比较a[i]和a[j]，满足a[i]!=a[j]
    165b:	83 fb 05             	cmp    $0x5,%ebx
    165e:	7f 15                	jg     1675 <phase_6+0x4b>
    1660:	48 63 c5             	movslq %ebp,%rax
    1663:	48 63 d3             	movslq %ebx,%rdx
    1666:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1669:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    166c:	75 ea                	jne    1658 <phase_6+0x2e>  //循环嵌套，比较a[i]和a[j]，满足a[i]!=a[j]
    166e:	e8 0d 05 00 00       	callq  1b80 <explode_bomb>
    1673:	eb e3                	jmp    1658 <phase_6+0x2e>
    1675:	44 89 e5             	mov    %r12d,%ebp
    1678:	83 fd 05             	cmp    $0x5,%ebp
    167b:	7f 17                	jg     1694 <phase_6+0x6a>  //跳出i，第一层循环
    167d:	48 63 c5             	movslq %ebp,%rax
    1680:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1683:	83 e8 01             	sub    $0x1,%eax
    1686:	83 f8 05             	cmp    $0x5,%eax        
    1689:	77 c6                	ja     1651 <phase_6+0x27>
    168b:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    168f:	44 89 e3             	mov    %r12d,%ebx
    1692:	eb c7                	jmp    165b <phase_6+0x31>//循环嵌套，比较a[i]和a[j]，满足a[i]!=a[j]
    1694:	be 00 00 00 00       	mov    $0x0,%esi
    1699:	eb 17                	jmp    16b2 <phase_6+0x88>
    169b:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    169f:	83 c0 01             	add    $0x1,%eax
    16a2:	48 63 ce             	movslq %esi,%rcx
    16a5:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    16a8:	7f f1                	jg     169b <phase_6+0x71>  //嵌套的while
    16aa:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    16af:	83 c6 01             	add    $0x1,%esi
    16b2:	83 fe 05             	cmp    $0x5,%esi
    16b5:	7f 0e                	jg     16c5 <phase_6+0x9b>
    16b7:	b8 01 00 00 00       	mov    $0x1,%eax
    16bc:	48 8d 15 6d 3b 20 00 	lea    0x203b6d(%rip),%rdx        # 205230 <node1>
    16c3:	eb dd                	jmp    16a2 <phase_6+0x78>  //外层for循环   总的效果相当于将对应一开始读的a[i],将node[a[i]]存起来
    16c5:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx  //刚才存储的node[a[i]]开始的位置
    16ca:	48 89 d9             	mov    %rbx,%rcx
    16cd:	b8 01 00 00 00       	mov    $0x1,%eax
    16d2:	eb 12                	jmp    16e6 <phase_6+0xbc>
    16d4:	48 63 d0             	movslq %eax,%rdx
    16d7:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    16dc:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    16e0:	83 c0 01             	add    $0x1,%eax
    16e3:	48 89 d1             	mov    %rdx,%rcx
    16e6:	83 f8 05             	cmp    $0x5,%eax
    16e9:	7e e9                	jle    16d4 <phase_6+0xaa>
    16eb:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    16f2:	00 
    16f3:	bd 00 00 00 00       	mov    $0x0,%ebp    //判断有序，需要单调递减
    16f8:	eb 07                	jmp    1701 <phase_6+0xd7>
    16fa:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    16fe:	83 c5 01             	add    $0x1,%ebp
    1701:	83 fd 04             	cmp    $0x4,%ebp
    1704:	7f 11                	jg     1717 <phase_6+0xed>
    1706:	48 8b 43 08          	mov    0x8(%rbx),%rax
    170a:	8b 00                	mov    (%rax),%eax
    170c:	39 03                	cmp    %eax,(%rbx)
    170e:	7d ea                	jge    16fa <phase_6+0xd0>
    1710:	e8 6b 04 00 00       	callq  1b80 <explode_bomb>
    1715:	eb e3                	jmp    16fa <phase_6+0xd0>
    1717:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    171c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1723:	00 00 
    1725:	75 09                	jne    1730 <phase_6+0x106>
    1727:	48 83 c4 60          	add    $0x60,%rsp
    172b:	5b                   	pop    %rbx
    172c:	5d                   	pop    %rbp
    172d:	41 5c                	pop    %r12
    172f:	c3                   	retq   
    1730:	e8 8b f8 ff ff       	callq  fc0 <__stack_chk_fail@plt>

0000000000001735 <fun7>:
    1735:	48 85 ff             	test   %rdi,%rdi
    1738:	74 34                	je     176e <fun7+0x39>
    173a:	48 83 ec 08          	sub    $0x8,%rsp
    173e:	8b 07                	mov    (%rdi),%eax
    1740:	39 f0                	cmp    %esi,%eax
    1742:	7f 0e                	jg     1752 <fun7+0x1d>
    1744:	39 f0                	cmp    %esi,%eax
    1746:	75 17                	jne    175f <fun7+0x2a>
    1748:	b8 00 00 00 00       	mov    $0x0,%eax
    174d:	48 83 c4 08          	add    $0x8,%rsp
    1751:	c3                   	retq   
    1752:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1756:	e8 da ff ff ff       	callq  1735 <fun7>
    175b:	01 c0                	add    %eax,%eax
    175d:	eb ee                	jmp    174d <fun7+0x18>
    175f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1763:	e8 cd ff ff ff       	callq  1735 <fun7>
    1768:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    176c:	eb df                	jmp    174d <fun7+0x18>
    176e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1773:	c3                   	retq   

0000000000001774 <secret_phase>:
    1774:	53                   	push   %rbx
    1775:	e8 c7 04 00 00       	callq  1c41 <read_line>
    177a:	ba 0a 00 00 00       	mov    $0xa,%edx
    177f:	be 00 00 00 00       	mov    $0x0,%esi
    1784:	48 89 c7             	mov    %rax,%rdi
    1787:	e8 b4 f8 ff ff       	callq  1040 <strtol@plt>
    178c:	48 89 c3             	mov    %rax,%rbx
    178f:	8d 40 ff             	lea    -0x1(%rax),%eax
    1792:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1797:	77 2b                	ja     17c4 <secret_phase+0x50>
    1799:	89 de                	mov    %ebx,%esi
    179b:	48 8d 3d ae 39 20 00 	lea    0x2039ae(%rip),%rdi        # 205150 <n1>
    17a2:	e8 8e ff ff ff       	callq  1735 <fun7>
    17a7:	83 f8 05             	cmp    $0x5,%eax
    17aa:	74 05                	je     17b1 <secret_phase+0x3d>
    17ac:	e8 cf 03 00 00       	callq  1b80 <explode_bomb>
    17b1:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 2e08 <_IO_stdin_used+0x1c8>
    17b8:	e8 e3 f7 ff ff       	callq  fa0 <puts@plt>
    17bd:	e8 c6 05 00 00       	callq  1d88 <phase_defused>
    17c2:	5b                   	pop    %rbx
    17c3:	c3                   	retq   
    17c4:	e8 b7 03 00 00       	callq  1b80 <explode_bomb>
    17c9:	eb ce                	jmp    1799 <secret_phase+0x25>

00000000000017cb <sig_handler>:
    17cb:	48 83 ec 08          	sub    $0x8,%rsp
    17cf:	48 8d 3d aa 16 00 00 	lea    0x16aa(%rip),%rdi        # 2e80 <array.3419+0x20>
    17d6:	e8 c5 f7 ff ff       	callq  fa0 <puts@plt>
    17db:	bf 03 00 00 00       	mov    $0x3,%edi
    17e0:	e8 fb f8 ff ff       	callq  10e0 <sleep@plt>
    17e5:	48 8d 35 d5 18 00 00 	lea    0x18d5(%rip),%rsi        # 30c1 <array.3419+0x261>
    17ec:	bf 01 00 00 00       	mov    $0x1,%edi
    17f1:	b8 00 00 00 00       	mov    $0x0,%eax
    17f6:	e8 85 f8 ff ff       	callq  1080 <__printf_chk@plt>
    17fb:	48 8b 3d fe 3c 20 00 	mov    0x203cfe(%rip),%rdi        # 205500 <stdout@@GLIBC_2.2.5>
    1802:	e8 59 f8 ff ff       	callq  1060 <fflush@plt>
    1807:	bf 01 00 00 00       	mov    $0x1,%edi
    180c:	e8 cf f8 ff ff       	callq  10e0 <sleep@plt>
    1811:	48 8d 3d b1 18 00 00 	lea    0x18b1(%rip),%rdi        # 30c9 <array.3419+0x269>
    1818:	e8 83 f7 ff ff       	callq  fa0 <puts@plt>
    181d:	bf 10 00 00 00       	mov    $0x10,%edi
    1822:	e8 89 f8 ff ff       	callq  10b0 <exit@plt>

0000000000001827 <invalid_phase>:
    1827:	48 83 ec 08          	sub    $0x8,%rsp
    182b:	48 89 fa             	mov    %rdi,%rdx
    182e:	48 8d 35 9c 18 00 00 	lea    0x189c(%rip),%rsi        # 30d1 <array.3419+0x271>
    1835:	bf 01 00 00 00       	mov    $0x1,%edi
    183a:	b8 00 00 00 00       	mov    $0x0,%eax
    183f:	e8 3c f8 ff ff       	callq  1080 <__printf_chk@plt>
    1844:	bf 08 00 00 00       	mov    $0x8,%edi
    1849:	e8 62 f8 ff ff       	callq  10b0 <exit@plt>

000000000000184e <string_length>:
    184e:	b8 00 00 00 00       	mov    $0x0,%eax
    1853:	eb 07                	jmp    185c <string_length+0xe>
    1855:	48 83 c7 01          	add    $0x1,%rdi
    1859:	83 c0 01             	add    $0x1,%eax
    185c:	80 3f 00             	cmpb   $0x0,(%rdi)
    185f:	75 f4                	jne    1855 <string_length+0x7>
    1861:	f3 c3                	repz retq 

0000000000001863 <strings_not_equal>:
    1863:	41 54                	push   %r12
    1865:	55                   	push   %rbp
    1866:	53                   	push   %rbx
    1867:	48 89 fb             	mov    %rdi,%rbx
    186a:	48 89 f5             	mov    %rsi,%rbp
    186d:	e8 dc ff ff ff       	callq  184e <string_length>
    1872:	41 89 c4             	mov    %eax,%r12d
    1875:	48 89 ef             	mov    %rbp,%rdi
    1878:	e8 d1 ff ff ff       	callq  184e <string_length>
    187d:	41 39 c4             	cmp    %eax,%r12d
    1880:	74 0a                	je     188c <strings_not_equal+0x29>
    1882:	b8 01 00 00 00       	mov    $0x1,%eax
    1887:	5b                   	pop    %rbx
    1888:	5d                   	pop    %rbp
    1889:	41 5c                	pop    %r12
    188b:	c3                   	retq   
    188c:	0f b6 03             	movzbl (%rbx),%eax
    188f:	84 c0                	test   %al,%al
    1891:	74 0f                	je     18a2 <strings_not_equal+0x3f>
    1893:	38 45 00             	cmp    %al,0x0(%rbp)
    1896:	75 11                	jne    18a9 <strings_not_equal+0x46>
    1898:	48 83 c3 01          	add    $0x1,%rbx
    189c:	48 83 c5 01          	add    $0x1,%rbp
    18a0:	eb ea                	jmp    188c <strings_not_equal+0x29>
    18a2:	b8 00 00 00 00       	mov    $0x0,%eax
    18a7:	eb de                	jmp    1887 <strings_not_equal+0x24>
    18a9:	b8 01 00 00 00       	mov    $0x1,%eax
    18ae:	eb d7                	jmp    1887 <strings_not_equal+0x24>

00000000000018b0 <initialize_bomb>:
    18b0:	41 54                	push   %r12
    18b2:	55                   	push   %rbp
    18b3:	53                   	push   %rbx
    18b4:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
    18bb:	49 89 fc             	mov    %rdi,%r12
    18be:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18c5:	00 00 
    18c7:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    18ce:	00 
    18cf:	31 c0                	xor    %eax,%eax
    18d1:	48 8d 35 f3 fe ff ff 	lea    -0x10d(%rip),%rsi        # 17cb <sig_handler>
    18d8:	bf 02 00 00 00       	mov    $0x2,%edi
    18dd:	e8 2e f7 ff ff       	callq  1010 <signal@plt>
    18e2:	48 89 e7             	mov    %rsp,%rdi
    18e5:	be 40 00 00 00       	mov    $0x40,%esi
    18ea:	e8 b1 f7 ff ff       	callq  10a0 <gethostname@plt>
    18ef:	85 c0                	test   %eax,%eax
    18f1:	75 28                	jne    191b <initialize_bomb+0x6b>
    18f3:	89 c5                	mov    %eax,%ebp
    18f5:	89 c3                	mov    %eax,%ebx
    18f7:	48 63 c3             	movslq %ebx,%rax
    18fa:	48 8d 15 7f 39 20 00 	lea    0x20397f(%rip),%rdx        # 205280 <host_table>
    1901:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    1905:	48 85 ff             	test   %rdi,%rdi
    1908:	74 2c                	je     1936 <initialize_bomb+0x86>
    190a:	48 89 e6             	mov    %rsp,%rsi
    190d:	e8 5e f6 ff ff       	callq  f70 <strcasecmp@plt>
    1912:	85 c0                	test   %eax,%eax
    1914:	74 1b                	je     1931 <initialize_bomb+0x81>
    1916:	83 c3 01             	add    $0x1,%ebx
    1919:	eb dc                	jmp    18f7 <initialize_bomb+0x47>
    191b:	48 8d 3d 96 15 00 00 	lea    0x1596(%rip),%rdi        # 2eb8 <array.3419+0x58>
    1922:	e8 79 f6 ff ff       	callq  fa0 <puts@plt>
    1927:	bf 08 00 00 00       	mov    $0x8,%edi
    192c:	e8 7f f7 ff ff       	callq  10b0 <exit@plt>
    1931:	bd 01 00 00 00       	mov    $0x1,%ebp
    1936:	85 ed                	test   %ebp,%ebp
    1938:	74 35                	je     196f <initialize_bomb+0xbf>
    193a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    193f:	e8 c3 0f 00 00       	callq  2907 <init_driver>
    1944:	85 c0                	test   %eax,%eax
    1946:	78 3d                	js     1985 <initialize_bomb+0xd5>
    1948:	41 c7 04 24 01 00 00 	movl   $0x1,(%r12)
    194f:	00 
    1950:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1957:	00 
    1958:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    195f:	00 00 
    1961:	75 47                	jne    19aa <initialize_bomb+0xfa>
    1963:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
    196a:	5b                   	pop    %rbx
    196b:	5d                   	pop    %rbp
    196c:	41 5c                	pop    %r12
    196e:	c3                   	retq   
    196f:	48 8d 3d 7a 15 00 00 	lea    0x157a(%rip),%rdi        # 2ef0 <array.3419+0x90>
    1976:	e8 25 f6 ff ff       	callq  fa0 <puts@plt>
    197b:	bf 08 00 00 00       	mov    $0x8,%edi
    1980:	e8 2b f7 ff ff       	callq  10b0 <exit@plt>
    1985:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    198a:	48 8d 35 51 17 00 00 	lea    0x1751(%rip),%rsi        # 30e2 <array.3419+0x282>
    1991:	bf 01 00 00 00       	mov    $0x1,%edi
    1996:	b8 00 00 00 00       	mov    $0x0,%eax
    199b:	e8 e0 f6 ff ff       	callq  1080 <__printf_chk@plt>
    19a0:	bf 08 00 00 00       	mov    $0x8,%edi
    19a5:	e8 06 f7 ff ff       	callq  10b0 <exit@plt>
    19aa:	e8 11 f6 ff ff       	callq  fc0 <__stack_chk_fail@plt>

00000000000019af <initialize_bomb_solve>:
    19af:	f3 c3                	repz retq 

00000000000019b1 <blank_line>:
    19b1:	55                   	push   %rbp
    19b2:	53                   	push   %rbx
    19b3:	48 83 ec 08          	sub    $0x8,%rsp
    19b7:	48 89 fd             	mov    %rdi,%rbp
    19ba:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    19be:	84 db                	test   %bl,%bl
    19c0:	74 1e                	je     19e0 <blank_line+0x2f>
    19c2:	e8 29 f7 ff ff       	callq  10f0 <__ctype_b_loc@plt>
    19c7:	48 8b 00             	mov    (%rax),%rax
    19ca:	48 83 c5 01          	add    $0x1,%rbp
    19ce:	48 0f be db          	movsbq %bl,%rbx
    19d2:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    19d7:	75 e1                	jne    19ba <blank_line+0x9>
    19d9:	b8 00 00 00 00       	mov    $0x0,%eax
    19de:	eb 05                	jmp    19e5 <blank_line+0x34>
    19e0:	b8 01 00 00 00       	mov    $0x1,%eax
    19e5:	48 83 c4 08          	add    $0x8,%rsp
    19e9:	5b                   	pop    %rbx
    19ea:	5d                   	pop    %rbp
    19eb:	c3                   	retq   

00000000000019ec <skip>:
    19ec:	53                   	push   %rbx
    19ed:	48 63 05 38 3b 20 00 	movslq 0x203b38(%rip),%rax        # 20552c <num_input_strings>
    19f4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    19f8:	48 c1 e0 04          	shl    $0x4,%rax
    19fc:	48 89 c7             	mov    %rax,%rdi
    19ff:	48 8d 05 3a 3b 20 00 	lea    0x203b3a(%rip),%rax        # 205540 <input_strings>
    1a06:	48 01 c7             	add    %rax,%rdi
    1a09:	48 8b 15 20 3b 20 00 	mov    0x203b20(%rip),%rdx        # 205530 <infile>
    1a10:	be 50 00 00 00       	mov    $0x50,%esi
    1a15:	e8 e6 f5 ff ff       	callq  1000 <fgets@plt>
    1a1a:	48 89 c3             	mov    %rax,%rbx
    1a1d:	48 85 c0             	test   %rax,%rax
    1a20:	74 0c                	je     1a2e <skip+0x42>
    1a22:	48 89 c7             	mov    %rax,%rdi
    1a25:	e8 87 ff ff ff       	callq  19b1 <blank_line>
    1a2a:	85 c0                	test   %eax,%eax
    1a2c:	75 bf                	jne    19ed <skip+0x1>
    1a2e:	48 89 d8             	mov    %rbx,%rax
    1a31:	5b                   	pop    %rbx
    1a32:	c3                   	retq   

0000000000001a33 <send_msg>:
    1a33:	55                   	push   %rbp
    1a34:	53                   	push   %rbx
    1a35:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
    1a3c:	41 89 f8             	mov    %edi,%r8d
    1a3f:	48 89 f3             	mov    %rsi,%rbx
    1a42:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a49:	00 00 
    1a4b:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1a52:	00 
    1a53:	31 c0                	xor    %eax,%eax
    1a55:	8b 35 d1 3a 20 00    	mov    0x203ad1(%rip),%esi        # 20552c <num_input_strings>
    1a5b:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1a5e:	48 98                	cltq   
    1a60:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1a64:	48 89 d0             	mov    %rdx,%rax
    1a67:	48 c1 e0 04          	shl    $0x4,%rax
    1a6b:	48 8d 15 ce 3a 20 00 	lea    0x203ace(%rip),%rdx        # 205540 <input_strings>
    1a72:	48 01 c2             	add    %rax,%rdx
    1a75:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1a7c:	b8 00 00 00 00       	mov    $0x0,%eax
    1a81:	48 89 d7             	mov    %rdx,%rdi
    1a84:	f2 ae                	repnz scas %es:(%rdi),%al
    1a86:	48 89 c8             	mov    %rcx,%rax
    1a89:	48 f7 d0             	not    %rax
    1a8c:	48 83 c0 63          	add    $0x63,%rax
    1a90:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1a96:	0f 87 9c 00 00 00    	ja     1b38 <send_msg+0x105>
    1a9c:	45 85 c0             	test   %r8d,%r8d
    1a9f:	0f 84 b3 00 00 00    	je     1b58 <send_msg+0x125>
    1aa5:	48 8d 05 50 16 00 00 	lea    0x1650(%rip),%rax        # 30fc <array.3419+0x29c>
    1aac:	48 89 e5             	mov    %rsp,%rbp
    1aaf:	48 83 ec 08          	sub    $0x8,%rsp
    1ab3:	52                   	push   %rdx
    1ab4:	56                   	push   %rsi
    1ab5:	50                   	push   %rax
    1ab6:	4c 8d 0d 83 2e 20 00 	lea    0x202e83(%rip),%r9        # 204940 <authkey>
    1abd:	44 8b 05 7c 36 20 00 	mov    0x20367c(%rip),%r8d        # 205140 <bomb_id>
    1ac4:	48 8d 0d 42 16 00 00 	lea    0x1642(%rip),%rcx        # 310d <array.3419+0x2ad>
    1acb:	ba 00 20 00 00       	mov    $0x2000,%edx
    1ad0:	be 01 00 00 00       	mov    $0x1,%esi
    1ad5:	48 89 ef             	mov    %rbp,%rdi
    1ad8:	b8 00 00 00 00       	mov    $0x0,%eax
    1add:	e8 1e f6 ff ff       	callq  1100 <__sprintf_chk@plt>
    1ae2:	48 83 c4 20          	add    $0x20,%rsp
    1ae6:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    1aed:	00 
    1aee:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    1af4:	48 89 e9             	mov    %rbp,%rcx
    1af7:	48 8d 15 42 26 20 00 	lea    0x202642(%rip),%rdx        # 204140 <lab>
    1afe:	48 8d 35 3b 2a 20 00 	lea    0x202a3b(%rip),%rsi        # 204540 <course>
    1b05:	48 8d 3d 34 32 20 00 	lea    0x203234(%rip),%rdi        # 204d40 <userid>
    1b0c:	e8 21 10 00 00       	callq  2b32 <driver_post>
    1b11:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    1b17:	85 c0                	test   %eax,%eax
    1b19:	78 49                	js     1b64 <send_msg+0x131>
    1b1b:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1b22:	00 
    1b23:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b2a:	00 00 
    1b2c:	75 4d                	jne    1b7b <send_msg+0x148>
    1b2e:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    1b35:	5b                   	pop    %rbx
    1b36:	5d                   	pop    %rbp
    1b37:	c3                   	retq   
    1b38:	48 8d 35 e9 13 00 00 	lea    0x13e9(%rip),%rsi        # 2f28 <array.3419+0xc8>
    1b3f:	bf 01 00 00 00       	mov    $0x1,%edi
    1b44:	b8 00 00 00 00       	mov    $0x0,%eax
    1b49:	e8 32 f5 ff ff       	callq  1080 <__printf_chk@plt>
    1b4e:	bf 08 00 00 00       	mov    $0x8,%edi
    1b53:	e8 58 f5 ff ff       	callq  10b0 <exit@plt>
    1b58:	48 8d 05 a5 15 00 00 	lea    0x15a5(%rip),%rax        # 3104 <array.3419+0x2a4>
    1b5f:	e9 48 ff ff ff       	jmpq   1aac <send_msg+0x79>
    1b64:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1b6b:	00 
    1b6c:	e8 2f f4 ff ff       	callq  fa0 <puts@plt>
    1b71:	bf 00 00 00 00       	mov    $0x0,%edi
    1b76:	e8 35 f5 ff ff       	callq  10b0 <exit@plt>
    1b7b:	e8 40 f4 ff ff       	callq  fc0 <__stack_chk_fail@plt>

0000000000001b80 <explode_bomb>:
    1b80:	48 83 ec 18          	sub    $0x18,%rsp
    1b84:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b8b:	00 00 
    1b8d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1b92:	31 c0                	xor    %eax,%eax
    1b94:	48 8d 3d 81 15 00 00 	lea    0x1581(%rip),%rdi        # 311c <array.3419+0x2bc>
    1b9b:	e8 00 f4 ff ff       	callq  fa0 <puts@plt>
    1ba0:	48 8d 3d 7e 15 00 00 	lea    0x157e(%rip),%rdi        # 3125 <array.3419+0x2c5>
    1ba7:	e8 f4 f3 ff ff       	callq  fa0 <puts@plt>
    1bac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    1bb3:	00 
    1bb4:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    1bb9:	bf 00 00 00 00       	mov    $0x0,%edi
    1bbe:	e8 70 fe ff ff       	callq  1a33 <send_msg>
    1bc3:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    1bc8:	74 20                	je     1bea <explode_bomb+0x6a>
    1bca:	48 8d 35 7f 13 00 00 	lea    0x137f(%rip),%rsi        # 2f50 <array.3419+0xf0>
    1bd1:	bf 01 00 00 00       	mov    $0x1,%edi
    1bd6:	b8 00 00 00 00       	mov    $0x0,%eax
    1bdb:	e8 a0 f4 ff ff       	callq  1080 <__printf_chk@plt>
    1be0:	bf 08 00 00 00       	mov    $0x8,%edi
    1be5:	e8 c6 f4 ff ff       	callq  10b0 <exit@plt>
    1bea:	48 8d 3d a7 13 00 00 	lea    0x13a7(%rip),%rdi        # 2f98 <array.3419+0x138>
    1bf1:	e8 aa f3 ff ff       	callq  fa0 <puts@plt>
    1bf6:	bf 08 00 00 00       	mov    $0x8,%edi
    1bfb:	e8 b0 f4 ff ff       	callq  10b0 <exit@plt>

0000000000001c00 <read_six_numbers>:
    1c00:	48 83 ec 08          	sub    $0x8,%rsp
    1c04:	48 89 f2             	mov    %rsi,%rdx
    1c07:	48 8d 76 14          	lea    0x14(%rsi),%rsi
    1c0b:	48 8d 42 10          	lea    0x10(%rdx),%rax
    1c0f:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
    1c13:	56                   	push   %rsi
    1c14:	50                   	push   %rax
    1c15:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
    1c19:	4c 8d 42 08          	lea    0x8(%rdx),%r8
    1c1d:	48 8d 35 18 15 00 00 	lea    0x1518(%rip),%rsi        # 313c <array.3419+0x2dc>
    1c24:	b8 00 00 00 00       	mov    $0x0,%eax
    1c29:	e8 42 f4 ff ff       	callq  1070 <__isoc99_sscanf@plt>
    1c2e:	48 83 c4 10          	add    $0x10,%rsp
    1c32:	83 f8 05             	cmp    $0x5,%eax
    1c35:	7e 05                	jle    1c3c <read_six_numbers+0x3c>
    1c37:	48 83 c4 08          	add    $0x8,%rsp
    1c3b:	c3                   	retq   
    1c3c:	e8 3f ff ff ff       	callq  1b80 <explode_bomb>

0000000000001c41 <read_line>:
    1c41:	48 83 ec 08          	sub    $0x8,%rsp
    1c45:	b8 00 00 00 00       	mov    $0x0,%eax
    1c4a:	e8 9d fd ff ff       	callq  19ec <skip>
    1c4f:	48 85 c0             	test   %rax,%rax
    1c52:	74 72                	je     1cc6 <read_line+0x85>
    1c54:	8b 35 d2 38 20 00    	mov    0x2038d2(%rip),%esi        # 20552c <num_input_strings>
    1c5a:	48 63 c6             	movslq %esi,%rax
    1c5d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c61:	48 c1 e0 04          	shl    $0x4,%rax
    1c65:	48 89 c2             	mov    %rax,%rdx
    1c68:	48 8d 05 d1 38 20 00 	lea    0x2038d1(%rip),%rax        # 205540 <input_strings>
    1c6f:	48 01 c2             	add    %rax,%rdx
    1c72:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1c79:	b8 00 00 00 00       	mov    $0x0,%eax
    1c7e:	48 89 d7             	mov    %rdx,%rdi
    1c81:	f2 ae                	repnz scas %es:(%rdi),%al
    1c83:	48 f7 d1             	not    %rcx
    1c86:	48 83 e9 01          	sub    $0x1,%rcx
    1c8a:	83 f9 4e             	cmp    $0x4e,%ecx
    1c8d:	0f 8f ab 00 00 00    	jg     1d3e <read_line+0xfd>
    1c93:	83 e9 01             	sub    $0x1,%ecx
    1c96:	48 63 c9             	movslq %ecx,%rcx
    1c99:	48 63 c6             	movslq %esi,%rax
    1c9c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1ca0:	48 c1 e0 04          	shl    $0x4,%rax
    1ca4:	48 89 c7             	mov    %rax,%rdi
    1ca7:	48 8d 05 92 38 20 00 	lea    0x203892(%rip),%rax        # 205540 <input_strings>
    1cae:	48 01 f8             	add    %rdi,%rax
    1cb1:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1cb5:	83 c6 01             	add    $0x1,%esi
    1cb8:	89 35 6e 38 20 00    	mov    %esi,0x20386e(%rip)        # 20552c <num_input_strings>
    1cbe:	48 89 d0             	mov    %rdx,%rax
    1cc1:	48 83 c4 08          	add    $0x8,%rsp
    1cc5:	c3                   	retq   
    1cc6:	48 8b 05 43 38 20 00 	mov    0x203843(%rip),%rax        # 205510 <stdin@@GLIBC_2.2.5>
    1ccd:	48 39 05 5c 38 20 00 	cmp    %rax,0x20385c(%rip)        # 205530 <infile>
    1cd4:	74 1b                	je     1cf1 <read_line+0xb0>
    1cd6:	48 8d 3d 8f 14 00 00 	lea    0x148f(%rip),%rdi        # 316c <array.3419+0x30c>
    1cdd:	e8 7e f2 ff ff       	callq  f60 <getenv@plt>
    1ce2:	48 85 c0             	test   %rax,%rax
    1ce5:	74 20                	je     1d07 <read_line+0xc6>
    1ce7:	bf 00 00 00 00       	mov    $0x0,%edi
    1cec:	e8 bf f3 ff ff       	callq  10b0 <exit@plt>
    1cf1:	48 8d 3d 56 14 00 00 	lea    0x1456(%rip),%rdi        # 314e <array.3419+0x2ee>
    1cf8:	e8 a3 f2 ff ff       	callq  fa0 <puts@plt>
    1cfd:	bf 08 00 00 00       	mov    $0x8,%edi
    1d02:	e8 a9 f3 ff ff       	callq  10b0 <exit@plt>
    1d07:	48 8b 05 02 38 20 00 	mov    0x203802(%rip),%rax        # 205510 <stdin@@GLIBC_2.2.5>
    1d0e:	48 89 05 1b 38 20 00 	mov    %rax,0x20381b(%rip)        # 205530 <infile>
    1d15:	b8 00 00 00 00       	mov    $0x0,%eax
    1d1a:	e8 cd fc ff ff       	callq  19ec <skip>
    1d1f:	48 85 c0             	test   %rax,%rax
    1d22:	0f 85 2c ff ff ff    	jne    1c54 <read_line+0x13>
    1d28:	48 8d 3d 1f 14 00 00 	lea    0x141f(%rip),%rdi        # 314e <array.3419+0x2ee>
    1d2f:	e8 6c f2 ff ff       	callq  fa0 <puts@plt>
    1d34:	bf 00 00 00 00       	mov    $0x0,%edi
    1d39:	e8 72 f3 ff ff       	callq  10b0 <exit@plt>
    1d3e:	48 8d 3d 32 14 00 00 	lea    0x1432(%rip),%rdi        # 3177 <array.3419+0x317>
    1d45:	e8 56 f2 ff ff       	callq  fa0 <puts@plt>
    1d4a:	8b 05 dc 37 20 00    	mov    0x2037dc(%rip),%eax        # 20552c <num_input_strings>
    1d50:	8d 50 01             	lea    0x1(%rax),%edx
    1d53:	89 15 d3 37 20 00    	mov    %edx,0x2037d3(%rip)        # 20552c <num_input_strings>
    1d59:	48 98                	cltq   
    1d5b:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d5f:	48 8d 15 da 37 20 00 	lea    0x2037da(%rip),%rdx        # 205540 <input_strings>
    1d66:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d6d:	75 6e 63 
    1d70:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d77:	2a 2a 00 
    1d7a:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1d7e:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d83:	e8 f8 fd ff ff       	callq  1b80 <explode_bomb>

0000000000001d88 <phase_defused>:
    1d88:	48 83 ec 78          	sub    $0x78,%rsp
    1d8c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d93:	00 00 
    1d95:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1d9a:	31 c0                	xor    %eax,%eax
    1d9c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    1da3:	00 
    1da4:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
    1da9:	bf 01 00 00 00       	mov    $0x1,%edi
    1dae:	e8 80 fc ff ff       	callq  1a33 <send_msg>
    1db3:	83 3d 72 37 20 00 06 	cmpl   $0x6,0x203772(%rip)        # 20552c <num_input_strings>
    1dba:	74 19                	je     1dd5 <phase_defused+0x4d>
    1dbc:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1dc1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1dc8:	00 00 
    1dca:	0f 85 84 00 00 00    	jne    1e54 <phase_defused+0xcc>
    1dd0:	48 83 c4 78          	add    $0x78,%rsp
    1dd4:	c3                   	retq   
    1dd5:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1dda:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    1ddf:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1de4:	48 8d 35 a7 13 00 00 	lea    0x13a7(%rip),%rsi        # 3192 <array.3419+0x332>
    1deb:	48 8d 3d 3e 38 20 00 	lea    0x20383e(%rip),%rdi        # 205630 <input_strings+0xf0>
    1df2:	b8 00 00 00 00       	mov    $0x0,%eax
    1df7:	e8 74 f2 ff ff       	callq  1070 <__isoc99_sscanf@plt>
    1dfc:	83 f8 03             	cmp    $0x3,%eax
    1dff:	74 1a                	je     1e1b <phase_defused+0x93>
    1e01:	48 8d 3d 48 12 00 00 	lea    0x1248(%rip),%rdi        # 3050 <array.3419+0x1f0>
    1e08:	e8 93 f1 ff ff       	callq  fa0 <puts@plt>
    1e0d:	48 8d 3d 6c 12 00 00 	lea    0x126c(%rip),%rdi        # 3080 <array.3419+0x220>
    1e14:	e8 87 f1 ff ff       	callq  fa0 <puts@plt>
    1e19:	eb a1                	jmp    1dbc <phase_defused+0x34>
    1e1b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e20:	48 8d 35 99 11 00 00 	lea    0x1199(%rip),%rsi        # 2fc0 <array.3419+0x160>
    1e27:	e8 37 fa ff ff       	callq  1863 <strings_not_equal>
    1e2c:	85 c0                	test   %eax,%eax
    1e2e:	75 d1                	jne    1e01 <phase_defused+0x79>
    1e30:	48 8d 3d b9 11 00 00 	lea    0x11b9(%rip),%rdi        # 2ff0 <array.3419+0x190>
    1e37:	e8 64 f1 ff ff       	callq  fa0 <puts@plt>
    1e3c:	48 8d 3d d5 11 00 00 	lea    0x11d5(%rip),%rdi        # 3018 <array.3419+0x1b8>
    1e43:	e8 58 f1 ff ff       	callq  fa0 <puts@plt>
    1e48:	b8 00 00 00 00       	mov    $0x0,%eax
    1e4d:	e8 22 f9 ff ff       	callq  1774 <secret_phase>
    1e52:	eb ad                	jmp    1e01 <phase_defused+0x79>
    1e54:	e8 67 f1 ff ff       	callq  fc0 <__stack_chk_fail@plt>

0000000000001e59 <rio_readinitb>:
    1e59:	89 37                	mov    %esi,(%rdi)
    1e5b:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    1e62:	48 8d 47 10          	lea    0x10(%rdi),%rax
    1e66:	48 89 47 08          	mov    %rax,0x8(%rdi)
    1e6a:	c3                   	retq   

0000000000001e6b <sigalrm_handler>:
    1e6b:	48 83 ec 08          	sub    $0x8,%rsp
    1e6f:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e74:	48 8d 15 7d 13 00 00 	lea    0x137d(%rip),%rdx        # 31f8 <array.3419+0x398>
    1e7b:	be 01 00 00 00       	mov    $0x1,%esi
    1e80:	48 8b 3d 99 36 20 00 	mov    0x203699(%rip),%rdi        # 205520 <stderr@@GLIBC_2.2.5>
    1e87:	b8 00 00 00 00       	mov    $0x0,%eax
    1e8c:	e8 3f f2 ff ff       	callq  10d0 <__fprintf_chk@plt>
    1e91:	bf 01 00 00 00       	mov    $0x1,%edi
    1e96:	e8 15 f2 ff ff       	callq  10b0 <exit@plt>

0000000000001e9b <rio_writen>:
    1e9b:	41 55                	push   %r13
    1e9d:	41 54                	push   %r12
    1e9f:	55                   	push   %rbp
    1ea0:	53                   	push   %rbx
    1ea1:	48 83 ec 08          	sub    $0x8,%rsp
    1ea5:	41 89 fc             	mov    %edi,%r12d
    1ea8:	48 89 f5             	mov    %rsi,%rbp
    1eab:	49 89 d5             	mov    %rdx,%r13
    1eae:	48 89 d3             	mov    %rdx,%rbx
    1eb1:	eb 06                	jmp    1eb9 <rio_writen+0x1e>
    1eb3:	48 29 c3             	sub    %rax,%rbx
    1eb6:	48 01 c5             	add    %rax,%rbp
    1eb9:	48 85 db             	test   %rbx,%rbx
    1ebc:	74 24                	je     1ee2 <rio_writen+0x47>
    1ebe:	48 89 da             	mov    %rbx,%rdx
    1ec1:	48 89 ee             	mov    %rbp,%rsi
    1ec4:	44 89 e7             	mov    %r12d,%edi
    1ec7:	e8 e4 f0 ff ff       	callq  fb0 <write@plt>
    1ecc:	48 85 c0             	test   %rax,%rax
    1ecf:	7f e2                	jg     1eb3 <rio_writen+0x18>
    1ed1:	e8 aa f0 ff ff       	callq  f80 <__errno_location@plt>
    1ed6:	83 38 04             	cmpl   $0x4,(%rax)
    1ed9:	75 15                	jne    1ef0 <rio_writen+0x55>
    1edb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee0:	eb d1                	jmp    1eb3 <rio_writen+0x18>
    1ee2:	4c 89 e8             	mov    %r13,%rax
    1ee5:	48 83 c4 08          	add    $0x8,%rsp
    1ee9:	5b                   	pop    %rbx
    1eea:	5d                   	pop    %rbp
    1eeb:	41 5c                	pop    %r12
    1eed:	41 5d                	pop    %r13
    1eef:	c3                   	retq   
    1ef0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1ef7:	eb ec                	jmp    1ee5 <rio_writen+0x4a>

0000000000001ef9 <rio_read>:
    1ef9:	41 55                	push   %r13
    1efb:	41 54                	push   %r12
    1efd:	55                   	push   %rbp
    1efe:	53                   	push   %rbx
    1eff:	48 83 ec 08          	sub    $0x8,%rsp
    1f03:	48 89 fb             	mov    %rdi,%rbx
    1f06:	49 89 f5             	mov    %rsi,%r13
    1f09:	49 89 d4             	mov    %rdx,%r12
    1f0c:	eb 0a                	jmp    1f18 <rio_read+0x1f>
    1f0e:	e8 6d f0 ff ff       	callq  f80 <__errno_location@plt>
    1f13:	83 38 04             	cmpl   $0x4,(%rax)
    1f16:	75 5c                	jne    1f74 <rio_read+0x7b>
    1f18:	8b 6b 04             	mov    0x4(%rbx),%ebp
    1f1b:	85 ed                	test   %ebp,%ebp
    1f1d:	7f 24                	jg     1f43 <rio_read+0x4a>
    1f1f:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    1f23:	8b 3b                	mov    (%rbx),%edi
    1f25:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f2a:	48 89 ee             	mov    %rbp,%rsi
    1f2d:	e8 be f0 ff ff       	callq  ff0 <read@plt>
    1f32:	89 43 04             	mov    %eax,0x4(%rbx)
    1f35:	85 c0                	test   %eax,%eax
    1f37:	78 d5                	js     1f0e <rio_read+0x15>
    1f39:	85 c0                	test   %eax,%eax
    1f3b:	74 40                	je     1f7d <rio_read+0x84>
    1f3d:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f41:	eb d5                	jmp    1f18 <rio_read+0x1f>
    1f43:	89 e8                	mov    %ebp,%eax
    1f45:	4c 39 e0             	cmp    %r12,%rax
    1f48:	72 03                	jb     1f4d <rio_read+0x54>
    1f4a:	44 89 e5             	mov    %r12d,%ebp
    1f4d:	4c 63 e5             	movslq %ebp,%r12
    1f50:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    1f54:	4c 89 e2             	mov    %r12,%rdx
    1f57:	4c 89 ef             	mov    %r13,%rdi
    1f5a:	e8 f1 f0 ff ff       	callq  1050 <memcpy@plt>
    1f5f:	4c 01 63 08          	add    %r12,0x8(%rbx)
    1f63:	29 6b 04             	sub    %ebp,0x4(%rbx)
    1f66:	4c 89 e0             	mov    %r12,%rax
    1f69:	48 83 c4 08          	add    $0x8,%rsp
    1f6d:	5b                   	pop    %rbx
    1f6e:	5d                   	pop    %rbp
    1f6f:	41 5c                	pop    %r12
    1f71:	41 5d                	pop    %r13
    1f73:	c3                   	retq   
    1f74:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f7b:	eb ec                	jmp    1f69 <rio_read+0x70>
    1f7d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f82:	eb e5                	jmp    1f69 <rio_read+0x70>

0000000000001f84 <rio_readlineb>:
    1f84:	41 55                	push   %r13
    1f86:	41 54                	push   %r12
    1f88:	55                   	push   %rbp
    1f89:	53                   	push   %rbx
    1f8a:	48 83 ec 18          	sub    $0x18,%rsp
    1f8e:	49 89 fd             	mov    %rdi,%r13
    1f91:	48 89 f5             	mov    %rsi,%rbp
    1f94:	49 89 d4             	mov    %rdx,%r12
    1f97:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f9e:	00 00 
    1fa0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1fa5:	31 c0                	xor    %eax,%eax
    1fa7:	bb 01 00 00 00       	mov    $0x1,%ebx
    1fac:	4c 39 e3             	cmp    %r12,%rbx
    1faf:	73 47                	jae    1ff8 <rio_readlineb+0x74>
    1fb1:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    1fb6:	ba 01 00 00 00       	mov    $0x1,%edx
    1fbb:	4c 89 ef             	mov    %r13,%rdi
    1fbe:	e8 36 ff ff ff       	callq  1ef9 <rio_read>
    1fc3:	83 f8 01             	cmp    $0x1,%eax
    1fc6:	75 1c                	jne    1fe4 <rio_readlineb+0x60>
    1fc8:	48 8d 45 01          	lea    0x1(%rbp),%rax
    1fcc:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
    1fd1:	88 55 00             	mov    %dl,0x0(%rbp)
    1fd4:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
    1fd9:	74 1a                	je     1ff5 <rio_readlineb+0x71>
    1fdb:	48 83 c3 01          	add    $0x1,%rbx
    1fdf:	48 89 c5             	mov    %rax,%rbp
    1fe2:	eb c8                	jmp    1fac <rio_readlineb+0x28>
    1fe4:	85 c0                	test   %eax,%eax
    1fe6:	75 32                	jne    201a <rio_readlineb+0x96>
    1fe8:	48 83 fb 01          	cmp    $0x1,%rbx
    1fec:	75 0a                	jne    1ff8 <rio_readlineb+0x74>
    1fee:	b8 00 00 00 00       	mov    $0x0,%eax
    1ff3:	eb 0a                	jmp    1fff <rio_readlineb+0x7b>
    1ff5:	48 89 c5             	mov    %rax,%rbp
    1ff8:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    1ffc:	48 89 d8             	mov    %rbx,%rax
    1fff:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2004:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    200b:	00 00 
    200d:	75 14                	jne    2023 <rio_readlineb+0x9f>
    200f:	48 83 c4 18          	add    $0x18,%rsp
    2013:	5b                   	pop    %rbx
    2014:	5d                   	pop    %rbp
    2015:	41 5c                	pop    %r12
    2017:	41 5d                	pop    %r13
    2019:	c3                   	retq   
    201a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2021:	eb dc                	jmp    1fff <rio_readlineb+0x7b>
    2023:	e8 98 ef ff ff       	callq  fc0 <__stack_chk_fail@plt>

0000000000002028 <urlencode>:
    2028:	41 54                	push   %r12
    202a:	55                   	push   %rbp
    202b:	53                   	push   %rbx
    202c:	48 83 ec 10          	sub    $0x10,%rsp
    2030:	48 89 fb             	mov    %rdi,%rbx
    2033:	48 89 f5             	mov    %rsi,%rbp
    2036:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    203d:	00 00 
    203f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2044:	31 c0                	xor    %eax,%eax
    2046:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    204d:	f2 ae                	repnz scas %es:(%rdi),%al
    204f:	48 89 ce             	mov    %rcx,%rsi
    2052:	48 f7 d6             	not    %rsi
    2055:	8d 46 ff             	lea    -0x1(%rsi),%eax
    2058:	eb 0f                	jmp    2069 <urlencode+0x41>
    205a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    205e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2062:	48 83 c3 01          	add    $0x1,%rbx
    2066:	44 89 e0             	mov    %r12d,%eax
    2069:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    206d:	85 c0                	test   %eax,%eax
    206f:	0f 84 a8 00 00 00    	je     211d <urlencode+0xf5>
    2075:	44 0f b6 03          	movzbl (%rbx),%r8d
    2079:	41 80 f8 2a          	cmp    $0x2a,%r8b
    207d:	0f 94 c2             	sete   %dl
    2080:	41 80 f8 2d          	cmp    $0x2d,%r8b
    2084:	0f 94 c0             	sete   %al
    2087:	08 c2                	or     %al,%dl
    2089:	75 cf                	jne    205a <urlencode+0x32>
    208b:	41 80 f8 2e          	cmp    $0x2e,%r8b
    208f:	74 c9                	je     205a <urlencode+0x32>
    2091:	41 80 f8 5f          	cmp    $0x5f,%r8b
    2095:	74 c3                	je     205a <urlencode+0x32>
    2097:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    209b:	3c 09                	cmp    $0x9,%al
    209d:	76 bb                	jbe    205a <urlencode+0x32>
    209f:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    20a3:	3c 19                	cmp    $0x19,%al
    20a5:	76 b3                	jbe    205a <urlencode+0x32>
    20a7:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    20ab:	3c 19                	cmp    $0x19,%al
    20ad:	76 ab                	jbe    205a <urlencode+0x32>
    20af:	41 80 f8 20          	cmp    $0x20,%r8b
    20b3:	74 56                	je     210b <urlencode+0xe3>
    20b5:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    20b9:	3c 5f                	cmp    $0x5f,%al
    20bb:	0f 96 c2             	setbe  %dl
    20be:	41 80 f8 09          	cmp    $0x9,%r8b
    20c2:	0f 94 c0             	sete   %al
    20c5:	08 c2                	or     %al,%dl
    20c7:	74 4f                	je     2118 <urlencode+0xf0>
    20c9:	48 89 e7             	mov    %rsp,%rdi
    20cc:	45 0f b6 c0          	movzbl %r8b,%r8d
    20d0:	48 8d 0d d9 11 00 00 	lea    0x11d9(%rip),%rcx        # 32b0 <array.3419+0x450>
    20d7:	ba 08 00 00 00       	mov    $0x8,%edx
    20dc:	be 01 00 00 00       	mov    $0x1,%esi
    20e1:	b8 00 00 00 00       	mov    $0x0,%eax
    20e6:	e8 15 f0 ff ff       	callq  1100 <__sprintf_chk@plt>
    20eb:	0f b6 04 24          	movzbl (%rsp),%eax
    20ef:	88 45 00             	mov    %al,0x0(%rbp)
    20f2:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    20f7:	88 45 01             	mov    %al,0x1(%rbp)
    20fa:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    20ff:	88 45 02             	mov    %al,0x2(%rbp)
    2102:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2106:	e9 57 ff ff ff       	jmpq   2062 <urlencode+0x3a>
    210b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    210f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2113:	e9 4a ff ff ff       	jmpq   2062 <urlencode+0x3a>
    2118:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    211d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    2122:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2129:	00 00 
    212b:	75 09                	jne    2136 <urlencode+0x10e>
    212d:	48 83 c4 10          	add    $0x10,%rsp
    2131:	5b                   	pop    %rbx
    2132:	5d                   	pop    %rbp
    2133:	41 5c                	pop    %r12
    2135:	c3                   	retq   
    2136:	e8 85 ee ff ff       	callq  fc0 <__stack_chk_fail@plt>

000000000000213b <submitr>:
    213b:	41 57                	push   %r15
    213d:	41 56                	push   %r14
    213f:	41 55                	push   %r13
    2141:	41 54                	push   %r12
    2143:	55                   	push   %rbp
    2144:	53                   	push   %rbx
    2145:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    214c:	49 89 fd             	mov    %rdi,%r13
    214f:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    2153:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    2158:	49 89 ce             	mov    %rcx,%r14
    215b:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2160:	4d 89 cf             	mov    %r9,%r15
    2163:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    216a:	00 
    216b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2172:	00 00 
    2174:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    217b:	00 
    217c:	31 c0                	xor    %eax,%eax
    217e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    2185:	00 
    2186:	ba 00 00 00 00       	mov    $0x0,%edx
    218b:	be 01 00 00 00       	mov    $0x1,%esi
    2190:	bf 02 00 00 00       	mov    $0x2,%edi
    2195:	e8 76 ef ff ff       	callq  1110 <socket@plt>
    219a:	85 c0                	test   %eax,%eax
    219c:	0f 88 ae 02 00 00    	js     2450 <submitr+0x315>
    21a2:	89 c3                	mov    %eax,%ebx
    21a4:	4c 89 ef             	mov    %r13,%rdi
    21a7:	e8 74 ee ff ff       	callq  1020 <gethostbyname@plt>
    21ac:	48 85 c0             	test   %rax,%rax
    21af:	0f 84 e7 02 00 00    	je     249c <submitr+0x361>
    21b5:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    21ba:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
    21c1:	00 00 
    21c3:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
    21ca:	00 
    21cb:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
    21d2:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    21d9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    21dd:	48 8b 40 18          	mov    0x18(%rax),%rax
    21e1:	48 8b 30             	mov    (%rax),%rsi
    21e4:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    21e9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    21ee:	e8 3d ee ff ff       	callq  1030 <__memmove_chk@plt>
    21f3:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
    21f8:	66 c1 c8 08          	ror    $0x8,%ax
    21fc:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    2201:	ba 10 00 00 00       	mov    $0x10,%edx
    2206:	4c 89 e6             	mov    %r12,%rsi
    2209:	89 df                	mov    %ebx,%edi
    220b:	e8 b0 ee ff ff       	callq  10c0 <connect@plt>
    2210:	85 c0                	test   %eax,%eax
    2212:	0f 88 fa 02 00 00    	js     2512 <submitr+0x3d7>
    2218:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    221f:	b8 00 00 00 00       	mov    $0x0,%eax
    2224:	48 89 f1             	mov    %rsi,%rcx
    2227:	4c 89 ff             	mov    %r15,%rdi
    222a:	f2 ae                	repnz scas %es:(%rdi),%al
    222c:	48 89 ca             	mov    %rcx,%rdx
    222f:	48 f7 d2             	not    %rdx
    2232:	48 89 f1             	mov    %rsi,%rcx
    2235:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    223a:	f2 ae                	repnz scas %es:(%rdi),%al
    223c:	48 f7 d1             	not    %rcx
    223f:	49 89 c8             	mov    %rcx,%r8
    2242:	48 89 f1             	mov    %rsi,%rcx
    2245:	4c 89 f7             	mov    %r14,%rdi
    2248:	f2 ae                	repnz scas %es:(%rdi),%al
    224a:	48 f7 d1             	not    %rcx
    224d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    2252:	48 89 f1             	mov    %rsi,%rcx
    2255:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    225a:	f2 ae                	repnz scas %es:(%rdi),%al
    225c:	48 89 c8             	mov    %rcx,%rax
    225f:	48 f7 d0             	not    %rax
    2262:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    2267:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    226c:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    2273:	00 
    2274:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    227a:	0f 87 fa 02 00 00    	ja     257a <submitr+0x43f>
    2280:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    2287:	00 
    2288:	b9 00 04 00 00       	mov    $0x400,%ecx
    228d:	b8 00 00 00 00       	mov    $0x0,%eax
    2292:	48 89 f7             	mov    %rsi,%rdi
    2295:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2298:	4c 89 ff             	mov    %r15,%rdi
    229b:	e8 88 fd ff ff       	callq  2028 <urlencode>
    22a0:	85 c0                	test   %eax,%eax
    22a2:	0f 88 45 03 00 00    	js     25ed <submitr+0x4b2>
    22a8:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
    22af:	00 
    22b0:	48 83 ec 08          	sub    $0x8,%rsp
    22b4:	41 55                	push   %r13
    22b6:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    22bd:	00 
    22be:	50                   	push   %rax
    22bf:	41 56                	push   %r14
    22c1:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    22c6:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    22cb:	48 8d 0d 4e 0f 00 00 	lea    0xf4e(%rip),%rcx        # 3220 <array.3419+0x3c0>
    22d2:	ba 00 20 00 00       	mov    $0x2000,%edx
    22d7:	be 01 00 00 00       	mov    $0x1,%esi
    22dc:	4c 89 e7             	mov    %r12,%rdi
    22df:	b8 00 00 00 00       	mov    $0x0,%eax
    22e4:	e8 17 ee ff ff       	callq  1100 <__sprintf_chk@plt>
    22e9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    22f0:	b8 00 00 00 00       	mov    $0x0,%eax
    22f5:	4c 89 e7             	mov    %r12,%rdi
    22f8:	f2 ae                	repnz scas %es:(%rdi),%al
    22fa:	48 89 ca             	mov    %rcx,%rdx
    22fd:	48 f7 d2             	not    %rdx
    2300:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
    2304:	48 83 c4 20          	add    $0x20,%rsp
    2308:	4c 89 e6             	mov    %r12,%rsi
    230b:	89 df                	mov    %ebx,%edi
    230d:	e8 89 fb ff ff       	callq  1e9b <rio_writen>
    2312:	48 85 c0             	test   %rax,%rax
    2315:	0f 88 5d 03 00 00    	js     2678 <submitr+0x53d>
    231b:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    2320:	89 de                	mov    %ebx,%esi
    2322:	4c 89 e7             	mov    %r12,%rdi
    2325:	e8 2f fb ff ff       	callq  1e59 <rio_readinitb>
    232a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2331:	00 
    2332:	ba 00 20 00 00       	mov    $0x2000,%edx
    2337:	4c 89 e7             	mov    %r12,%rdi
    233a:	e8 45 fc ff ff       	callq  1f84 <rio_readlineb>
    233f:	48 85 c0             	test   %rax,%rax
    2342:	0f 8e 9c 03 00 00    	jle    26e4 <submitr+0x5a9>
    2348:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    234d:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2354:	00 
    2355:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    235c:	00 
    235d:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2364:	00 
    2365:	48 8d 35 4b 0f 00 00 	lea    0xf4b(%rip),%rsi        # 32b7 <array.3419+0x457>
    236c:	b8 00 00 00 00       	mov    $0x0,%eax
    2371:	e8 fa ec ff ff       	callq  1070 <__isoc99_sscanf@plt>
    2376:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    237d:	00 
    237e:	b9 03 00 00 00       	mov    $0x3,%ecx
    2383:	48 8d 3d 44 0f 00 00 	lea    0xf44(%rip),%rdi        # 32ce <array.3419+0x46e>
    238a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    238c:	0f 97 c0             	seta   %al
    238f:	1c 00                	sbb    $0x0,%al
    2391:	84 c0                	test   %al,%al
    2393:	0f 84 cb 03 00 00    	je     2764 <submitr+0x629>
    2399:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    23a0:	00 
    23a1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    23a6:	ba 00 20 00 00       	mov    $0x2000,%edx
    23ab:	e8 d4 fb ff ff       	callq  1f84 <rio_readlineb>
    23b0:	48 85 c0             	test   %rax,%rax
    23b3:	7f c1                	jg     2376 <submitr+0x23b>
    23b5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23bc:	3a 20 43 
    23bf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23c6:	20 75 6e 
    23c9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    23cd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    23d1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23d8:	74 6f 20 
    23db:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    23e2:	68 65 61 
    23e5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    23e9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    23ed:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    23f4:	66 72 6f 
    23f7:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    23fe:	6f 6c 61 
    2401:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2405:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2409:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    2410:	76 65 72 
    2413:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2417:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    241b:	89 df                	mov    %ebx,%edi
    241d:	e8 be eb ff ff       	callq  fe0 <close@plt>
    2422:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2427:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    242e:	00 
    242f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2436:	00 00 
    2438:	0f 85 96 04 00 00    	jne    28d4 <submitr+0x799>
    243e:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2445:	5b                   	pop    %rbx
    2446:	5d                   	pop    %rbp
    2447:	41 5c                	pop    %r12
    2449:	41 5d                	pop    %r13
    244b:	41 5e                	pop    %r14
    244d:	41 5f                	pop    %r15
    244f:	c3                   	retq   
    2450:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2457:	3a 20 43 
    245a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2461:	20 75 6e 
    2464:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2468:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    246c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2473:	74 6f 20 
    2476:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    247d:	65 20 73 
    2480:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2484:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2488:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    248f:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2495:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    249a:	eb 8b                	jmp    2427 <submitr+0x2ec>
    249c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    24a3:	3a 20 44 
    24a6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    24ad:	20 75 6e 
    24b0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    24b4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    24b8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24bf:	74 6f 20 
    24c2:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    24c9:	76 65 20 
    24cc:	48 89 45 10          	mov    %rax,0x10(%rbp)
    24d0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    24d4:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    24db:	61 62 20 
    24de:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    24e5:	72 20 61 
    24e8:	48 89 45 20          	mov    %rax,0x20(%rbp)
    24ec:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    24f0:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    24f7:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    24fd:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    2501:	89 df                	mov    %ebx,%edi
    2503:	e8 d8 ea ff ff       	callq  fe0 <close@plt>
    2508:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    250d:	e9 15 ff ff ff       	jmpq   2427 <submitr+0x2ec>
    2512:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2519:	3a 20 55 
    251c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2523:	20 74 6f 
    2526:	48 89 45 00          	mov    %rax,0x0(%rbp)
    252a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    252e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2535:	65 63 74 
    2538:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    253f:	68 65 20 
    2542:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2546:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    254a:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2551:	61 62 20 
    2554:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2558:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    255f:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2565:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2569:	89 df                	mov    %ebx,%edi
    256b:	e8 70 ea ff ff       	callq  fe0 <close@plt>
    2570:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2575:	e9 ad fe ff ff       	jmpq   2427 <submitr+0x2ec>
    257a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2581:	3a 20 52 
    2584:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    258b:	20 73 74 
    258e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2592:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2596:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    259d:	74 6f 6f 
    25a0:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    25a7:	65 2e 20 
    25aa:	48 89 45 10          	mov    %rax,0x10(%rbp)
    25ae:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    25b2:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    25b9:	61 73 65 
    25bc:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    25c3:	49 54 52 
    25c6:	48 89 45 20          	mov    %rax,0x20(%rbp)
    25ca:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    25ce:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    25d5:	55 46 00 
    25d8:	48 89 45 30          	mov    %rax,0x30(%rbp)
    25dc:	89 df                	mov    %ebx,%edi
    25de:	e8 fd e9 ff ff       	callq  fe0 <close@plt>
    25e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25e8:	e9 3a fe ff ff       	jmpq   2427 <submitr+0x2ec>
    25ed:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25f4:	3a 20 52 
    25f7:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25fe:	20 73 74 
    2601:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2605:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2609:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2610:	63 6f 6e 
    2613:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    261a:	20 61 6e 
    261d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2621:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2625:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    262c:	67 61 6c 
    262f:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2636:	6e 70 72 
    2639:	48 89 45 20          	mov    %rax,0x20(%rbp)
    263d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2641:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2648:	6c 65 20 
    264b:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2652:	63 74 65 
    2655:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2659:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    265d:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2663:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2667:	89 df                	mov    %ebx,%edi
    2669:	e8 72 e9 ff ff       	callq  fe0 <close@plt>
    266e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2673:	e9 af fd ff ff       	jmpq   2427 <submitr+0x2ec>
    2678:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    267f:	3a 20 43 
    2682:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2689:	20 75 6e 
    268c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2690:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2694:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    269b:	74 6f 20 
    269e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    26a5:	20 74 6f 
    26a8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    26ac:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    26b0:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    26b7:	41 75 74 
    26ba:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    26c1:	73 65 72 
    26c4:	48 89 45 20          	mov    %rax,0x20(%rbp)
    26c8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    26cc:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    26d3:	89 df                	mov    %ebx,%edi
    26d5:	e8 06 e9 ff ff       	callq  fe0 <close@plt>
    26da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26df:	e9 43 fd ff ff       	jmpq   2427 <submitr+0x2ec>
    26e4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26eb:	3a 20 43 
    26ee:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26f5:	20 75 6e 
    26f8:	48 89 45 00          	mov    %rax,0x0(%rbp)
    26fc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2700:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2707:	74 6f 20 
    270a:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2711:	66 69 72 
    2714:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2718:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    271c:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2723:	61 64 65 
    2726:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    272d:	6d 20 41 
    2730:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2734:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2738:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    273f:	62 20 73 
    2742:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2746:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    274d:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2753:	89 df                	mov    %ebx,%edi
    2755:	e8 86 e8 ff ff       	callq  fe0 <close@plt>
    275a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    275f:	e9 c3 fc ff ff       	jmpq   2427 <submitr+0x2ec>
    2764:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    276b:	00 
    276c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2771:	ba 00 20 00 00       	mov    $0x2000,%edx
    2776:	e8 09 f8 ff ff       	callq  1f84 <rio_readlineb>
    277b:	48 85 c0             	test   %rax,%rax
    277e:	0f 8e 96 00 00 00    	jle    281a <submitr+0x6df>
    2784:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2789:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2790:	0f 85 05 01 00 00    	jne    289b <submitr+0x760>
    2796:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    279d:	00 
    279e:	48 89 ef             	mov    %rbp,%rdi
    27a1:	e8 ea e7 ff ff       	callq  f90 <strcpy@plt>
    27a6:	89 df                	mov    %ebx,%edi
    27a8:	e8 33 e8 ff ff       	callq  fe0 <close@plt>
    27ad:	b9 04 00 00 00       	mov    $0x4,%ecx
    27b2:	48 8d 3d 0f 0b 00 00 	lea    0xb0f(%rip),%rdi        # 32c8 <array.3419+0x468>
    27b9:	48 89 ee             	mov    %rbp,%rsi
    27bc:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    27be:	0f 97 c0             	seta   %al
    27c1:	1c 00                	sbb    $0x0,%al
    27c3:	0f be c0             	movsbl %al,%eax
    27c6:	85 c0                	test   %eax,%eax
    27c8:	0f 84 59 fc ff ff    	je     2427 <submitr+0x2ec>
    27ce:	b9 05 00 00 00       	mov    $0x5,%ecx
    27d3:	48 8d 3d f2 0a 00 00 	lea    0xaf2(%rip),%rdi        # 32cc <array.3419+0x46c>
    27da:	48 89 ee             	mov    %rbp,%rsi
    27dd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    27df:	0f 97 c0             	seta   %al
    27e2:	1c 00                	sbb    $0x0,%al
    27e4:	0f be c0             	movsbl %al,%eax
    27e7:	85 c0                	test   %eax,%eax
    27e9:	0f 84 38 fc ff ff    	je     2427 <submitr+0x2ec>
    27ef:	b9 03 00 00 00       	mov    $0x3,%ecx
    27f4:	48 8d 3d d6 0a 00 00 	lea    0xad6(%rip),%rdi        # 32d1 <array.3419+0x471>
    27fb:	48 89 ee             	mov    %rbp,%rsi
    27fe:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2800:	0f 97 c0             	seta   %al
    2803:	1c 00                	sbb    $0x0,%al
    2805:	0f be c0             	movsbl %al,%eax
    2808:	85 c0                	test   %eax,%eax
    280a:	0f 84 17 fc ff ff    	je     2427 <submitr+0x2ec>
    2810:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2815:	e9 0d fc ff ff       	jmpq   2427 <submitr+0x2ec>
    281a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2821:	3a 20 43 
    2824:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    282b:	20 75 6e 
    282e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2832:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2836:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    283d:	74 6f 20 
    2840:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2847:	73 74 61 
    284a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    284e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2852:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2859:	65 73 73 
    285c:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2863:	72 6f 6d 
    2866:	48 89 45 20          	mov    %rax,0x20(%rbp)
    286a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    286e:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2875:	6c 61 62 
    2878:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    287f:	65 72 00 
    2882:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2886:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    288a:	89 df                	mov    %ebx,%edi
    288c:	e8 4f e7 ff ff       	callq  fe0 <close@plt>
    2891:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2896:	e9 8c fb ff ff       	jmpq   2427 <submitr+0x2ec>
    289b:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    28a2:	00 
    28a3:	48 8d 0d d6 09 00 00 	lea    0x9d6(%rip),%rcx        # 3280 <array.3419+0x420>
    28aa:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    28b1:	be 01 00 00 00       	mov    $0x1,%esi
    28b6:	48 89 ef             	mov    %rbp,%rdi
    28b9:	b8 00 00 00 00       	mov    $0x0,%eax
    28be:	e8 3d e8 ff ff       	callq  1100 <__sprintf_chk@plt>
    28c3:	89 df                	mov    %ebx,%edi
    28c5:	e8 16 e7 ff ff       	callq  fe0 <close@plt>
    28ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28cf:	e9 53 fb ff ff       	jmpq   2427 <submitr+0x2ec>
    28d4:	e8 e7 e6 ff ff       	callq  fc0 <__stack_chk_fail@plt>

00000000000028d9 <init_timeout>:
    28d9:	85 ff                	test   %edi,%edi
    28db:	74 28                	je     2905 <init_timeout+0x2c>
    28dd:	53                   	push   %rbx
    28de:	89 fb                	mov    %edi,%ebx
    28e0:	85 ff                	test   %edi,%edi
    28e2:	78 1a                	js     28fe <init_timeout+0x25>
    28e4:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 1e6b <sigalrm_handler>
    28eb:	bf 0e 00 00 00       	mov    $0xe,%edi
    28f0:	e8 1b e7 ff ff       	callq  1010 <signal@plt>
    28f5:	89 df                	mov    %ebx,%edi
    28f7:	e8 d4 e6 ff ff       	callq  fd0 <alarm@plt>
    28fc:	5b                   	pop    %rbx
    28fd:	c3                   	retq   
    28fe:	bb 00 00 00 00       	mov    $0x0,%ebx
    2903:	eb df                	jmp    28e4 <init_timeout+0xb>
    2905:	f3 c3                	repz retq 

0000000000002907 <init_driver>:
    2907:	41 54                	push   %r12
    2909:	55                   	push   %rbp
    290a:	53                   	push   %rbx
    290b:	48 83 ec 20          	sub    $0x20,%rsp
    290f:	49 89 fc             	mov    %rdi,%r12
    2912:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2919:	00 00 
    291b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2920:	31 c0                	xor    %eax,%eax
    2922:	be 01 00 00 00       	mov    $0x1,%esi
    2927:	bf 0d 00 00 00       	mov    $0xd,%edi
    292c:	e8 df e6 ff ff       	callq  1010 <signal@plt>
    2931:	be 01 00 00 00       	mov    $0x1,%esi
    2936:	bf 1d 00 00 00       	mov    $0x1d,%edi
    293b:	e8 d0 e6 ff ff       	callq  1010 <signal@plt>
    2940:	be 01 00 00 00       	mov    $0x1,%esi
    2945:	bf 1d 00 00 00       	mov    $0x1d,%edi
    294a:	e8 c1 e6 ff ff       	callq  1010 <signal@plt>
    294f:	ba 00 00 00 00       	mov    $0x0,%edx
    2954:	be 01 00 00 00       	mov    $0x1,%esi
    2959:	bf 02 00 00 00       	mov    $0x2,%edi
    295e:	e8 ad e7 ff ff       	callq  1110 <socket@plt>
    2963:	85 c0                	test   %eax,%eax
    2965:	0f 88 a3 00 00 00    	js     2a0e <init_driver+0x107>
    296b:	89 c3                	mov    %eax,%ebx
    296d:	48 8d 3d 60 09 00 00 	lea    0x960(%rip),%rdi        # 32d4 <array.3419+0x474>
    2974:	e8 a7 e6 ff ff       	callq  1020 <gethostbyname@plt>
    2979:	48 85 c0             	test   %rax,%rax
    297c:	0f 84 df 00 00 00    	je     2a61 <init_driver+0x15a>
    2982:	48 89 e5             	mov    %rsp,%rbp
    2985:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    298c:	00 00 
    298e:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2995:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    299b:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    29a1:	48 63 50 14          	movslq 0x14(%rax),%rdx
    29a5:	48 8b 40 18          	mov    0x18(%rax),%rax
    29a9:	48 8b 30             	mov    (%rax),%rsi
    29ac:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    29b0:	b9 0c 00 00 00       	mov    $0xc,%ecx
    29b5:	e8 76 e6 ff ff       	callq  1030 <__memmove_chk@plt>
    29ba:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
    29c1:	ba 10 00 00 00       	mov    $0x10,%edx
    29c6:	48 89 ee             	mov    %rbp,%rsi
    29c9:	89 df                	mov    %ebx,%edi
    29cb:	e8 f0 e6 ff ff       	callq  10c0 <connect@plt>
    29d0:	85 c0                	test   %eax,%eax
    29d2:	0f 88 fb 00 00 00    	js     2ad3 <init_driver+0x1cc>
    29d8:	89 df                	mov    %ebx,%edi
    29da:	e8 01 e6 ff ff       	callq  fe0 <close@plt>
    29df:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    29e6:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    29ec:	b8 00 00 00 00       	mov    $0x0,%eax
    29f1:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    29f6:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    29fd:	00 00 
    29ff:	0f 85 28 01 00 00    	jne    2b2d <init_driver+0x226>
    2a05:	48 83 c4 20          	add    $0x20,%rsp
    2a09:	5b                   	pop    %rbx
    2a0a:	5d                   	pop    %rbp
    2a0b:	41 5c                	pop    %r12
    2a0d:	c3                   	retq   
    2a0e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a15:	3a 20 43 
    2a18:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a1f:	20 75 6e 
    2a22:	49 89 04 24          	mov    %rax,(%r12)
    2a26:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2a2b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a32:	74 6f 20 
    2a35:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2a3c:	65 20 73 
    2a3f:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2a44:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2a49:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2a50:	6b 65 
    2a52:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    2a59:	00 
    2a5a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a5f:	eb 90                	jmp    29f1 <init_driver+0xea>
    2a61:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2a68:	3a 20 44 
    2a6b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2a72:	20 75 6e 
    2a75:	49 89 04 24          	mov    %rax,(%r12)
    2a79:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2a7e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a85:	74 6f 20 
    2a88:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a8f:	76 65 20 
    2a92:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2a97:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2a9c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2aa3:	72 20 61 
    2aa6:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2aab:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2ab2:	72 65 
    2ab4:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2abb:	73 
    2abc:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2ac2:	89 df                	mov    %ebx,%edi
    2ac4:	e8 17 e5 ff ff       	callq  fe0 <close@plt>
    2ac9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ace:	e9 1e ff ff ff       	jmpq   29f1 <init_driver+0xea>
    2ad3:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2ada:	3a 20 55 
    2add:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2ae4:	20 74 6f 
    2ae7:	49 89 04 24          	mov    %rax,(%r12)
    2aeb:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2af0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2af7:	65 63 74 
    2afa:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    2b01:	65 72 76 
    2b04:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2b09:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2b0e:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
    2b15:	72 
    2b16:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
    2b1c:	89 df                	mov    %ebx,%edi
    2b1e:	e8 bd e4 ff ff       	callq  fe0 <close@plt>
    2b23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b28:	e9 c4 fe ff ff       	jmpq   29f1 <init_driver+0xea>
    2b2d:	e8 8e e4 ff ff       	callq  fc0 <__stack_chk_fail@plt>

0000000000002b32 <driver_post>:
    2b32:	53                   	push   %rbx
    2b33:	4c 89 cb             	mov    %r9,%rbx
    2b36:	45 85 c0             	test   %r8d,%r8d
    2b39:	75 18                	jne    2b53 <driver_post+0x21>
    2b3b:	48 85 ff             	test   %rdi,%rdi
    2b3e:	74 05                	je     2b45 <driver_post+0x13>
    2b40:	80 3f 00             	cmpb   $0x0,(%rdi)
    2b43:	75 37                	jne    2b7c <driver_post+0x4a>
    2b45:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2b4a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2b4e:	44 89 c0             	mov    %r8d,%eax
    2b51:	5b                   	pop    %rbx
    2b52:	c3                   	retq   
    2b53:	48 89 ca             	mov    %rcx,%rdx
    2b56:	48 8d 35 87 07 00 00 	lea    0x787(%rip),%rsi        # 32e4 <array.3419+0x484>
    2b5d:	bf 01 00 00 00       	mov    $0x1,%edi
    2b62:	b8 00 00 00 00       	mov    $0x0,%eax
    2b67:	e8 14 e5 ff ff       	callq  1080 <__printf_chk@plt>
    2b6c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2b71:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2b75:	b8 00 00 00 00       	mov    $0x0,%eax
    2b7a:	eb d5                	jmp    2b51 <driver_post+0x1f>
    2b7c:	48 83 ec 08          	sub    $0x8,%rsp
    2b80:	41 51                	push   %r9
    2b82:	49 89 c9             	mov    %rcx,%r9
    2b85:	49 89 d0             	mov    %rdx,%r8
    2b88:	48 89 f9             	mov    %rdi,%rcx
    2b8b:	48 89 f2             	mov    %rsi,%rdx
    2b8e:	be b8 0b 00 00       	mov    $0xbb8,%esi
    2b93:	48 8d 3d 3a 07 00 00 	lea    0x73a(%rip),%rdi        # 32d4 <array.3419+0x474>
    2b9a:	e8 9c f5 ff ff       	callq  213b <submitr>
    2b9f:	48 83 c4 10          	add    $0x10,%rsp
    2ba3:	eb ac                	jmp    2b51 <driver_post+0x1f>
    2ba5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2bac:	00 00 00 
    2baf:	90                   	nop

0000000000002bb0 <__libc_csu_init>:
    2bb0:	41 57                	push   %r15
    2bb2:	41 56                	push   %r14
    2bb4:	49 89 d7             	mov    %rdx,%r15
    2bb7:	41 55                	push   %r13
    2bb9:	41 54                	push   %r12
    2bbb:	4c 8d 25 0e 11 20 00 	lea    0x20110e(%rip),%r12        # 203cd0 <__frame_dummy_init_array_entry>
    2bc2:	55                   	push   %rbp
    2bc3:	48 8d 2d 0e 11 20 00 	lea    0x20110e(%rip),%rbp        # 203cd8 <__do_global_dtors_aux_fini_array_entry>
    2bca:	53                   	push   %rbx
    2bcb:	41 89 fd             	mov    %edi,%r13d
    2bce:	49 89 f6             	mov    %rsi,%r14
    2bd1:	4c 29 e5             	sub    %r12,%rbp
    2bd4:	48 83 ec 08          	sub    $0x8,%rsp
    2bd8:	48 c1 fd 03          	sar    $0x3,%rbp
    2bdc:	e8 4f e3 ff ff       	callq  f30 <_init>
    2be1:	48 85 ed             	test   %rbp,%rbp
    2be4:	74 20                	je     2c06 <__libc_csu_init+0x56>
    2be6:	31 db                	xor    %ebx,%ebx
    2be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2bef:	00 
    2bf0:	4c 89 fa             	mov    %r15,%rdx
    2bf3:	4c 89 f6             	mov    %r14,%rsi
    2bf6:	44 89 ef             	mov    %r13d,%edi
    2bf9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    2bfd:	48 83 c3 01          	add    $0x1,%rbx
    2c01:	48 39 dd             	cmp    %rbx,%rbp
    2c04:	75 ea                	jne    2bf0 <__libc_csu_init+0x40>
    2c06:	48 83 c4 08          	add    $0x8,%rsp
    2c0a:	5b                   	pop    %rbx
    2c0b:	5d                   	pop    %rbp
    2c0c:	41 5c                	pop    %r12
    2c0e:	41 5d                	pop    %r13
    2c10:	41 5e                	pop    %r14
    2c12:	41 5f                	pop    %r15
    2c14:	c3                   	retq   
    2c15:	90                   	nop
    2c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2c1d:	00 00 00 

0000000000002c20 <__libc_csu_fini>:
    2c20:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002c24 <_fini>:
    2c24:	48 83 ec 08          	sub    $0x8,%rsp
    2c28:	48 83 c4 08          	add    $0x8,%rsp
    2c2c:	c3                   	retq   
