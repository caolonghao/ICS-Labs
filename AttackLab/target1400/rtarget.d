
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400cb0 <_init>:
  400cb0:	48 83 ec 08          	sub    $0x8,%rsp
  400cb4:	48 8b 05 3d 43 20 00 	mov    0x20433d(%rip),%rax        # 604ff8 <__gmon_start__>
  400cbb:	48 85 c0             	test   %rax,%rax
  400cbe:	74 02                	je     400cc2 <_init+0x12>
  400cc0:	ff d0                	callq  *%rax
  400cc2:	48 83 c4 08          	add    $0x8,%rsp
  400cc6:	c3                   	retq   

Disassembly of section .plt:

0000000000400cd0 <.plt>:
  400cd0:	ff 35 32 43 20 00    	pushq  0x204332(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400cd6:	ff 25 34 43 20 00    	jmpq   *0x204334(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ce0 <strcasecmp@plt>:
  400ce0:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400ce6:	68 00 00 00 00       	pushq  $0x0
  400ceb:	e9 e0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400cf0 <__errno_location@plt>:
  400cf0:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400cf6:	68 01 00 00 00       	pushq  $0x1
  400cfb:	e9 d0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d00 <srandom@plt>:
  400d00:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400d06:	68 02 00 00 00       	pushq  $0x2
  400d0b:	e9 c0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d10 <strncpy@plt>:
  400d10:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605030 <strncpy@GLIBC_2.2.5>
  400d16:	68 03 00 00 00       	pushq  $0x3
  400d1b:	e9 b0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d20 <strncmp@plt>:
  400d20:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605038 <strncmp@GLIBC_2.2.5>
  400d26:	68 04 00 00 00       	pushq  $0x4
  400d2b:	e9 a0 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d30 <strcpy@plt>:
  400d30:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605040 <strcpy@GLIBC_2.2.5>
  400d36:	68 05 00 00 00       	pushq  $0x5
  400d3b:	e9 90 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d40 <puts@plt>:
  400d40:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605048 <puts@GLIBC_2.2.5>
  400d46:	68 06 00 00 00       	pushq  $0x6
  400d4b:	e9 80 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d50 <write@plt>:
  400d50:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605050 <write@GLIBC_2.2.5>
  400d56:	68 07 00 00 00       	pushq  $0x7
  400d5b:	e9 70 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d60 <mmap@plt>:
  400d60:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400d66:	68 08 00 00 00       	pushq  $0x8
  400d6b:	e9 60 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d70 <memset@plt>:
  400d70:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d76:	68 09 00 00 00       	pushq  $0x9
  400d7b:	e9 50 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d80 <alarm@plt>:
  400d80:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d86:	68 0a 00 00 00       	pushq  $0xa
  400d8b:	e9 40 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400d90 <close@plt>:
  400d90:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d96:	68 0b 00 00 00       	pushq  $0xb
  400d9b:	e9 30 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400da0 <read@plt>:
  400da0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400da6:	68 0c 00 00 00       	pushq  $0xc
  400dab:	e9 20 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400db0 <strcmp@plt>:
  400db0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 605080 <strcmp@GLIBC_2.2.5>
  400db6:	68 0d 00 00 00       	pushq  $0xd
  400dbb:	e9 10 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400dc0 <signal@plt>:
  400dc0:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400dc6:	68 0e 00 00 00       	pushq  $0xe
  400dcb:	e9 00 ff ff ff       	jmpq   400cd0 <.plt>

0000000000400dd0 <gethostbyname@plt>:
  400dd0:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605090 <gethostbyname@GLIBC_2.2.5>
  400dd6:	68 0f 00 00 00       	pushq  $0xf
  400ddb:	e9 f0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400de0 <__memmove_chk@plt>:
  400de0:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605098 <__memmove_chk@GLIBC_2.3.4>
  400de6:	68 10 00 00 00       	pushq  $0x10
  400deb:	e9 e0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400df0 <strtol@plt>:
  400df0:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050a0 <strtol@GLIBC_2.2.5>
  400df6:	68 11 00 00 00       	pushq  $0x11
  400dfb:	e9 d0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e00 <memcpy@plt>:
  400e00:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050a8 <memcpy@GLIBC_2.14>
  400e06:	68 12 00 00 00       	pushq  $0x12
  400e0b:	e9 c0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e10 <time@plt>:
  400e10:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050b0 <time@GLIBC_2.2.5>
  400e16:	68 13 00 00 00       	pushq  $0x13
  400e1b:	e9 b0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e20 <random@plt>:
  400e20:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050b8 <random@GLIBC_2.2.5>
  400e26:	68 14 00 00 00       	pushq  $0x14
  400e2b:	e9 a0 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e30 <_IO_getc@plt>:
  400e30:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 6050c0 <_IO_getc@GLIBC_2.2.5>
  400e36:	68 15 00 00 00       	pushq  $0x15
  400e3b:	e9 90 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e40 <__isoc99_sscanf@plt>:
  400e40:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 6050c8 <__isoc99_sscanf@GLIBC_2.7>
  400e46:	68 16 00 00 00       	pushq  $0x16
  400e4b:	e9 80 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e50 <munmap@plt>:
  400e50:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 6050d0 <munmap@GLIBC_2.2.5>
  400e56:	68 17 00 00 00       	pushq  $0x17
  400e5b:	e9 70 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e60 <__printf_chk@plt>:
  400e60:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 6050d8 <__printf_chk@GLIBC_2.3.4>
  400e66:	68 18 00 00 00       	pushq  $0x18
  400e6b:	e9 60 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e70 <fopen@plt>:
  400e70:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 6050e0 <fopen@GLIBC_2.2.5>
  400e76:	68 19 00 00 00       	pushq  $0x19
  400e7b:	e9 50 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e80 <getopt@plt>:
  400e80:	ff 25 62 42 20 00    	jmpq   *0x204262(%rip)        # 6050e8 <getopt@GLIBC_2.2.5>
  400e86:	68 1a 00 00 00       	pushq  $0x1a
  400e8b:	e9 40 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400e90 <strtoul@plt>:
  400e90:	ff 25 5a 42 20 00    	jmpq   *0x20425a(%rip)        # 6050f0 <strtoul@GLIBC_2.2.5>
  400e96:	68 1b 00 00 00       	pushq  $0x1b
  400e9b:	e9 30 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ea0 <gethostname@plt>:
  400ea0:	ff 25 52 42 20 00    	jmpq   *0x204252(%rip)        # 6050f8 <gethostname@GLIBC_2.2.5>
  400ea6:	68 1c 00 00 00       	pushq  $0x1c
  400eab:	e9 20 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400eb0 <exit@plt>:
  400eb0:	ff 25 4a 42 20 00    	jmpq   *0x20424a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400eb6:	68 1d 00 00 00       	pushq  $0x1d
  400ebb:	e9 10 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ec0 <connect@plt>:
  400ec0:	ff 25 42 42 20 00    	jmpq   *0x204242(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400ec6:	68 1e 00 00 00       	pushq  $0x1e
  400ecb:	e9 00 fe ff ff       	jmpq   400cd0 <.plt>

0000000000400ed0 <__fprintf_chk@plt>:
  400ed0:	ff 25 3a 42 20 00    	jmpq   *0x20423a(%rip)        # 605110 <__fprintf_chk@GLIBC_2.3.4>
  400ed6:	68 1f 00 00 00       	pushq  $0x1f
  400edb:	e9 f0 fd ff ff       	jmpq   400cd0 <.plt>

0000000000400ee0 <__sprintf_chk@plt>:
  400ee0:	ff 25 32 42 20 00    	jmpq   *0x204232(%rip)        # 605118 <__sprintf_chk@GLIBC_2.3.4>
  400ee6:	68 20 00 00 00       	pushq  $0x20
  400eeb:	e9 e0 fd ff ff       	jmpq   400cd0 <.plt>

0000000000400ef0 <socket@plt>:
  400ef0:	ff 25 2a 42 20 00    	jmpq   *0x20422a(%rip)        # 605120 <socket@GLIBC_2.2.5>
  400ef6:	68 21 00 00 00       	pushq  $0x21
  400efb:	e9 d0 fd ff ff       	jmpq   400cd0 <.plt>

Disassembly of section .text:

0000000000400f00 <_start>:
  400f00:	31 ed                	xor    %ebp,%ebp
  400f02:	49 89 d1             	mov    %rdx,%r9
  400f05:	5e                   	pop    %rsi
  400f06:	48 89 e2             	mov    %rsp,%rdx
  400f09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f0d:	50                   	push   %rax
  400f0e:	54                   	push   %rsp
  400f0f:	49 c7 c0 b0 32 40 00 	mov    $0x4032b0,%r8
  400f16:	48 c7 c1 40 32 40 00 	mov    $0x403240,%rcx
  400f1d:	48 c7 c7 0e 12 40 00 	mov    $0x40120e,%rdi
  400f24:	ff 15 c6 40 20 00    	callq  *0x2040c6(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400f2a:	f4                   	hlt    
  400f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f30 <_dl_relocate_static_pie>:
  400f30:	f3 c3                	repz retq 
  400f32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f39:	00 00 00 
  400f3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f40 <deregister_tm_clones>:
  400f40:	55                   	push   %rbp
  400f41:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f46:	48 3d b0 54 60 00    	cmp    $0x6054b0,%rax
  400f4c:	48 89 e5             	mov    %rsp,%rbp
  400f4f:	74 17                	je     400f68 <deregister_tm_clones+0x28>
  400f51:	b8 00 00 00 00       	mov    $0x0,%eax
  400f56:	48 85 c0             	test   %rax,%rax
  400f59:	74 0d                	je     400f68 <deregister_tm_clones+0x28>
  400f5b:	5d                   	pop    %rbp
  400f5c:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f61:	ff e0                	jmpq   *%rax
  400f63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f68:	5d                   	pop    %rbp
  400f69:	c3                   	retq   
  400f6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f70 <register_tm_clones>:
  400f70:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f75:	55                   	push   %rbp
  400f76:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f7d:	48 89 e5             	mov    %rsp,%rbp
  400f80:	48 c1 fe 03          	sar    $0x3,%rsi
  400f84:	48 89 f0             	mov    %rsi,%rax
  400f87:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f8b:	48 01 c6             	add    %rax,%rsi
  400f8e:	48 d1 fe             	sar    %rsi
  400f91:	74 15                	je     400fa8 <register_tm_clones+0x38>
  400f93:	b8 00 00 00 00       	mov    $0x0,%eax
  400f98:	48 85 c0             	test   %rax,%rax
  400f9b:	74 0b                	je     400fa8 <register_tm_clones+0x38>
  400f9d:	5d                   	pop    %rbp
  400f9e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400fa3:	ff e0                	jmpq   *%rax
  400fa5:	0f 1f 00             	nopl   (%rax)
  400fa8:	5d                   	pop    %rbp
  400fa9:	c3                   	retq   
  400faa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400fb0 <__do_global_dtors_aux>:
  400fb0:	80 3d 31 45 20 00 00 	cmpb   $0x0,0x204531(%rip)        # 6054e8 <completed.7698>
  400fb7:	75 17                	jne    400fd0 <__do_global_dtors_aux+0x20>
  400fb9:	55                   	push   %rbp
  400fba:	48 89 e5             	mov    %rsp,%rbp
  400fbd:	e8 7e ff ff ff       	callq  400f40 <deregister_tm_clones>
  400fc2:	c6 05 1f 45 20 00 01 	movb   $0x1,0x20451f(%rip)        # 6054e8 <completed.7698>
  400fc9:	5d                   	pop    %rbp
  400fca:	c3                   	retq   
  400fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400fd0:	f3 c3                	repz retq 
  400fd2:	0f 1f 40 00          	nopl   0x0(%rax)
  400fd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fdd:	00 00 00 

0000000000400fe0 <frame_dummy>:
  400fe0:	55                   	push   %rbp
  400fe1:	48 89 e5             	mov    %rsp,%rbp
  400fe4:	5d                   	pop    %rbp
  400fe5:	eb 89                	jmp    400f70 <register_tm_clones>

0000000000400fe7 <usage>:
  400fe7:	48 83 ec 08          	sub    $0x8,%rsp
  400feb:	48 89 fa             	mov    %rdi,%rdx
  400fee:	83 3d 33 45 20 00 00 	cmpl   $0x0,0x204533(%rip)        # 605528 <is_checker>
  400ff5:	74 50                	je     401047 <usage+0x60>
  400ff7:	48 8d 35 ca 22 00 00 	lea    0x22ca(%rip),%rsi        # 4032c8 <_IO_stdin_used+0x8>
  400ffe:	bf 01 00 00 00       	mov    $0x1,%edi
  401003:	b8 00 00 00 00       	mov    $0x0,%eax
  401008:	e8 53 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40100d:	48 8d 3d ec 22 00 00 	lea    0x22ec(%rip),%rdi        # 403300 <_IO_stdin_used+0x40>
  401014:	e8 27 fd ff ff       	callq  400d40 <puts@plt>
  401019:	48 8d 3d 70 24 00 00 	lea    0x2470(%rip),%rdi        # 403490 <_IO_stdin_used+0x1d0>
  401020:	e8 1b fd ff ff       	callq  400d40 <puts@plt>
  401025:	48 8d 3d fc 22 00 00 	lea    0x22fc(%rip),%rdi        # 403328 <_IO_stdin_used+0x68>
  40102c:	e8 0f fd ff ff       	callq  400d40 <puts@plt>
  401031:	48 8d 3d 72 24 00 00 	lea    0x2472(%rip),%rdi        # 4034aa <_IO_stdin_used+0x1ea>
  401038:	e8 03 fd ff ff       	callq  400d40 <puts@plt>
  40103d:	bf 00 00 00 00       	mov    $0x0,%edi
  401042:	e8 69 fe ff ff       	callq  400eb0 <exit@plt>
  401047:	48 8d 35 78 24 00 00 	lea    0x2478(%rip),%rsi        # 4034c6 <_IO_stdin_used+0x206>
  40104e:	bf 01 00 00 00       	mov    $0x1,%edi
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	e8 03 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40105d:	48 8d 3d ec 22 00 00 	lea    0x22ec(%rip),%rdi        # 403350 <_IO_stdin_used+0x90>
  401064:	e8 d7 fc ff ff       	callq  400d40 <puts@plt>
  401069:	48 8d 3d 08 23 00 00 	lea    0x2308(%rip),%rdi        # 403378 <_IO_stdin_used+0xb8>
  401070:	e8 cb fc ff ff       	callq  400d40 <puts@plt>
  401075:	48 8d 3d 68 24 00 00 	lea    0x2468(%rip),%rdi        # 4034e4 <_IO_stdin_used+0x224>
  40107c:	e8 bf fc ff ff       	callq  400d40 <puts@plt>
  401081:	eb ba                	jmp    40103d <usage+0x56>

0000000000401083 <initialize_target>:
  401083:	55                   	push   %rbp
  401084:	53                   	push   %rbx
  401085:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40108c:	89 f5                	mov    %esi,%ebp
  40108e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401095:	00 00 
  401097:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40109e:	00 
  40109f:	31 c0                	xor    %eax,%eax
  4010a1:	89 3d 71 44 20 00    	mov    %edi,0x204471(%rip)        # 605518 <check_level>
  4010a7:	8b 3d a3 40 20 00    	mov    0x2040a3(%rip),%edi        # 605150 <target_id>
  4010ad:	e8 61 21 00 00       	callq  403213 <gencookie>
  4010b2:	89 05 6c 44 20 00    	mov    %eax,0x20446c(%rip)        # 605524 <cookie>
  4010b8:	89 c7                	mov    %eax,%edi
  4010ba:	e8 54 21 00 00       	callq  403213 <gencookie>
  4010bf:	89 05 5b 44 20 00    	mov    %eax,0x20445b(%rip)        # 605520 <authkey>
  4010c5:	8b 05 85 40 20 00    	mov    0x204085(%rip),%eax        # 605150 <target_id>
  4010cb:	8d 78 01             	lea    0x1(%rax),%edi
  4010ce:	e8 2d fc ff ff       	callq  400d00 <srandom@plt>
  4010d3:	e8 48 fd ff ff       	callq  400e20 <random@plt>
  4010d8:	89 c7                	mov    %eax,%edi
  4010da:	e8 93 03 00 00       	callq  401472 <scramble>
  4010df:	89 c3                	mov    %eax,%ebx
  4010e1:	85 ed                	test   %ebp,%ebp
  4010e3:	75 54                	jne    401139 <initialize_target+0xb6>
  4010e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4010ea:	01 d8                	add    %ebx,%eax
  4010ec:	0f b7 c0             	movzwl %ax,%eax
  4010ef:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  4010f6:	89 c0                	mov    %eax,%eax
  4010f8:	48 89 05 a1 43 20 00 	mov    %rax,0x2043a1(%rip)        # 6054a0 <buf_offset>
  4010ff:	c6 05 42 50 20 00 72 	movb   $0x72,0x205042(%rip)        # 606148 <target_prefix>
  401106:	83 3d 9b 43 20 00 00 	cmpl   $0x0,0x20439b(%rip)        # 6054a8 <notify>
  40110d:	74 09                	je     401118 <initialize_target+0x95>
  40110f:	83 3d 12 44 20 00 00 	cmpl   $0x0,0x204412(%rip)        # 605528 <is_checker>
  401116:	74 39                	je     401151 <initialize_target+0xce>
  401118:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40111f:	00 
  401120:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401127:	00 00 
  401129:	0f 85 da 00 00 00    	jne    401209 <initialize_target+0x186>
  40112f:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  401136:	5b                   	pop    %rbx
  401137:	5d                   	pop    %rbp
  401138:	c3                   	retq   
  401139:	bf 00 00 00 00       	mov    $0x0,%edi
  40113e:	e8 cd fc ff ff       	callq  400e10 <time@plt>
  401143:	89 c7                	mov    %eax,%edi
  401145:	e8 b6 fb ff ff       	callq  400d00 <srandom@plt>
  40114a:	e8 d1 fc ff ff       	callq  400e20 <random@plt>
  40114f:	eb 99                	jmp    4010ea <initialize_target+0x67>
  401151:	48 89 e7             	mov    %rsp,%rdi
  401154:	be 00 01 00 00       	mov    $0x100,%esi
  401159:	e8 42 fd ff ff       	callq  400ea0 <gethostname@plt>
  40115e:	89 c5                	mov    %eax,%ebp
  401160:	85 c0                	test   %eax,%eax
  401162:	75 26                	jne    40118a <initialize_target+0x107>
  401164:	89 c3                	mov    %eax,%ebx
  401166:	48 63 c3             	movslq %ebx,%rax
  401169:	48 8d 15 10 40 20 00 	lea    0x204010(%rip),%rdx        # 605180 <host_table>
  401170:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401174:	48 85 ff             	test   %rdi,%rdi
  401177:	74 2c                	je     4011a5 <initialize_target+0x122>
  401179:	48 89 e6             	mov    %rsp,%rsi
  40117c:	e8 5f fb ff ff       	callq  400ce0 <strcasecmp@plt>
  401181:	85 c0                	test   %eax,%eax
  401183:	74 1b                	je     4011a0 <initialize_target+0x11d>
  401185:	83 c3 01             	add    $0x1,%ebx
  401188:	eb dc                	jmp    401166 <initialize_target+0xe3>
  40118a:	48 8d 3d 17 22 00 00 	lea    0x2217(%rip),%rdi        # 4033a8 <_IO_stdin_used+0xe8>
  401191:	e8 aa fb ff ff       	callq  400d40 <puts@plt>
  401196:	bf 08 00 00 00       	mov    $0x8,%edi
  40119b:	e8 10 fd ff ff       	callq  400eb0 <exit@plt>
  4011a0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011a5:	85 ed                	test   %ebp,%ebp
  4011a7:	74 3d                	je     4011e6 <initialize_target+0x163>
  4011a9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011b0:	00 
  4011b1:	e8 8d 1d 00 00       	callq  402f43 <init_driver>
  4011b6:	85 c0                	test   %eax,%eax
  4011b8:	0f 89 5a ff ff ff    	jns    401118 <initialize_target+0x95>
  4011be:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011c5:	00 
  4011c6:	48 8d 35 53 22 00 00 	lea    0x2253(%rip),%rsi        # 403420 <_IO_stdin_used+0x160>
  4011cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4011d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d7:	e8 84 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011dc:	bf 08 00 00 00       	mov    $0x8,%edi
  4011e1:	e8 ca fc ff ff       	callq  400eb0 <exit@plt>
  4011e6:	48 89 e2             	mov    %rsp,%rdx
  4011e9:	48 8d 35 f0 21 00 00 	lea    0x21f0(%rip),%rsi        # 4033e0 <_IO_stdin_used+0x120>
  4011f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fa:	e8 61 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401204:	e8 a7 fc ff ff       	callq  400eb0 <exit@plt>
  401209:	e8 a5 10 00 00       	callq  4022b3 <__stack_chk_fail>

000000000040120e <main>:
  40120e:	41 56                	push   %r14
  401210:	41 55                	push   %r13
  401212:	41 54                	push   %r12
  401214:	55                   	push   %rbp
  401215:	53                   	push   %rbx
  401216:	48 83 ec 60          	sub    $0x60,%rsp
  40121a:	89 fd                	mov    %edi,%ebp
  40121c:	48 89 f3             	mov    %rsi,%rbx
  40121f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401226:	00 00 
  401228:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40122d:	31 c0                	xor    %eax,%eax
  40122f:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  401236:	74 65 64 
  401239:	48 89 04 24          	mov    %rax,(%rsp)
  40123d:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  401244:	79 
  401245:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  40124c:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  401251:	48 c7 c6 b4 21 40 00 	mov    $0x4021b4,%rsi
  401258:	bf 0b 00 00 00       	mov    $0xb,%edi
  40125d:	e8 5e fb ff ff       	callq  400dc0 <signal@plt>
  401262:	48 c7 c6 60 21 40 00 	mov    $0x402160,%rsi
  401269:	bf 07 00 00 00       	mov    $0x7,%edi
  40126e:	e8 4d fb ff ff       	callq  400dc0 <signal@plt>
  401273:	48 c7 c6 08 22 40 00 	mov    $0x402208,%rsi
  40127a:	bf 04 00 00 00       	mov    $0x4,%edi
  40127f:	e8 3c fb ff ff       	callq  400dc0 <signal@plt>
  401284:	83 3d 9d 42 20 00 00 	cmpl   $0x0,0x20429d(%rip)        # 605528 <is_checker>
  40128b:	75 26                	jne    4012b3 <main+0xa5>
  40128d:	4c 8d 25 69 22 00 00 	lea    0x2269(%rip),%r12        # 4034fd <_IO_stdin_used+0x23d>
  401294:	48 8b 05 25 42 20 00 	mov    0x204225(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40129b:	48 89 05 6e 42 20 00 	mov    %rax,0x20426e(%rip)        # 605510 <infile>
  4012a2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012ae:	e9 8d 00 00 00       	jmpq   401340 <main+0x132>
  4012b3:	48 c7 c6 5c 22 40 00 	mov    $0x40225c,%rsi
  4012ba:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012bf:	e8 fc fa ff ff       	callq  400dc0 <signal@plt>
  4012c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4012c9:	e8 b2 fa ff ff       	callq  400d80 <alarm@plt>
  4012ce:	4c 8d 25 2d 22 00 00 	lea    0x222d(%rip),%r12        # 403502 <_IO_stdin_used+0x242>
  4012d5:	eb bd                	jmp    401294 <main+0x86>
  4012d7:	48 8b 3b             	mov    (%rbx),%rdi
  4012da:	e8 08 fd ff ff       	callq  400fe7 <usage>
  4012df:	48 8d 35 ea 22 00 00 	lea    0x22ea(%rip),%rsi        # 4035d0 <_IO_stdin_used+0x310>
  4012e6:	48 8b 3d db 41 20 00 	mov    0x2041db(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ed:	e8 7e fb ff ff       	callq  400e70 <fopen@plt>
  4012f2:	48 89 05 17 42 20 00 	mov    %rax,0x204217(%rip)        # 605510 <infile>
  4012f9:	48 85 c0             	test   %rax,%rax
  4012fc:	75 42                	jne    401340 <main+0x132>
  4012fe:	48 8b 0d c3 41 20 00 	mov    0x2041c3(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401305:	48 8d 15 00 22 00 00 	lea    0x2200(%rip),%rdx        # 40350c <_IO_stdin_used+0x24c>
  40130c:	be 01 00 00 00       	mov    $0x1,%esi
  401311:	48 8b 3d c8 41 20 00 	mov    0x2041c8(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401318:	e8 b3 fb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40131d:	b8 01 00 00 00       	mov    $0x1,%eax
  401322:	e9 29 01 00 00       	jmpq   401450 <main+0x242>
  401327:	ba 10 00 00 00       	mov    $0x10,%edx
  40132c:	be 00 00 00 00       	mov    $0x0,%esi
  401331:	48 8b 3d 90 41 20 00 	mov    0x204190(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401338:	e8 53 fb ff ff       	callq  400e90 <strtoul@plt>
  40133d:	41 89 c6             	mov    %eax,%r14d
  401340:	4c 89 e2             	mov    %r12,%rdx
  401343:	48 89 de             	mov    %rbx,%rsi
  401346:	89 ef                	mov    %ebp,%edi
  401348:	e8 33 fb ff ff       	callq  400e80 <getopt@plt>
  40134d:	3c ff                	cmp    $0xff,%al
  40134f:	74 78                	je     4013c9 <main+0x1bb>
  401351:	0f be d0             	movsbl %al,%edx
  401354:	83 e8 61             	sub    $0x61,%eax
  401357:	3c 14                	cmp    $0x14,%al
  401359:	77 50                	ja     4013ab <main+0x19d>
  40135b:	0f b6 c0             	movzbl %al,%eax
  40135e:	48 8d 0d e7 21 00 00 	lea    0x21e7(%rip),%rcx        # 40354c <_IO_stdin_used+0x28c>
  401365:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  401369:	48 01 c8             	add    %rcx,%rax
  40136c:	ff e0                	jmpq   *%rax
  40136e:	ba 0a 00 00 00       	mov    $0xa,%edx
  401373:	be 00 00 00 00       	mov    $0x0,%esi
  401378:	48 8b 3d 49 41 20 00 	mov    0x204149(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  40137f:	e8 6c fa ff ff       	callq  400df0 <strtol@plt>
  401384:	41 89 c5             	mov    %eax,%r13d
  401387:	eb b7                	jmp    401340 <main+0x132>
  401389:	c7 05 15 41 20 00 00 	movl   $0x0,0x204115(%rip)        # 6054a8 <notify>
  401390:	00 00 00 
  401393:	eb ab                	jmp    401340 <main+0x132>
  401395:	48 89 e7             	mov    %rsp,%rdi
  401398:	ba 50 00 00 00       	mov    $0x50,%edx
  40139d:	48 8b 35 24 41 20 00 	mov    0x204124(%rip),%rsi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4013a4:	e8 67 f9 ff ff       	callq  400d10 <strncpy@plt>
  4013a9:	eb 95                	jmp    401340 <main+0x132>
  4013ab:	48 8d 35 77 21 00 00 	lea    0x2177(%rip),%rsi        # 403529 <_IO_stdin_used+0x269>
  4013b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 9f fa ff ff       	callq  400e60 <__printf_chk@plt>
  4013c1:	48 8b 3b             	mov    (%rbx),%rdi
  4013c4:	e8 1e fc ff ff       	callq  400fe7 <usage>
  4013c9:	be 01 00 00 00       	mov    $0x1,%esi
  4013ce:	44 89 ef             	mov    %r13d,%edi
  4013d1:	e8 ad fc ff ff       	callq  401083 <initialize_target>
  4013d6:	83 3d 4b 41 20 00 00 	cmpl   $0x0,0x20414b(%rip)        # 605528 <is_checker>
  4013dd:	74 3f                	je     40141e <main+0x210>
  4013df:	44 39 35 3a 41 20 00 	cmp    %r14d,0x20413a(%rip)        # 605520 <authkey>
  4013e6:	75 13                	jne    4013fb <main+0x1ed>
  4013e8:	48 89 e7             	mov    %rsp,%rdi
  4013eb:	48 8b 35 6e 3d 20 00 	mov    0x203d6e(%rip),%rsi        # 605160 <user_id>
  4013f2:	e8 b9 f9 ff ff       	callq  400db0 <strcmp@plt>
  4013f7:	85 c0                	test   %eax,%eax
  4013f9:	74 23                	je     40141e <main+0x210>
  4013fb:	44 89 f2             	mov    %r14d,%edx
  4013fe:	48 8d 35 43 20 00 00 	lea    0x2043(%rip),%rsi        # 403448 <_IO_stdin_used+0x188>
  401405:	bf 01 00 00 00       	mov    $0x1,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 4c fa ff ff       	callq  400e60 <__printf_chk@plt>
  401414:	b8 00 00 00 00       	mov    $0x0,%eax
  401419:	e8 aa 09 00 00       	callq  401dc8 <check_fail>
  40141e:	8b 15 00 41 20 00    	mov    0x204100(%rip),%edx        # 605524 <cookie>
  401424:	48 8d 35 11 21 00 00 	lea    0x2111(%rip),%rsi        # 40353c <_IO_stdin_used+0x27c>
  40142b:	bf 01 00 00 00       	mov    $0x1,%edi
  401430:	b8 00 00 00 00       	mov    $0x0,%eax
  401435:	e8 26 fa ff ff       	callq  400e60 <__printf_chk@plt>
  40143a:	be 00 00 00 00       	mov    $0x0,%esi
  40143f:	48 8b 3d 5a 40 20 00 	mov    0x20405a(%rip),%rdi        # 6054a0 <buf_offset>
  401446:	e8 bc 0e 00 00       	callq  402307 <launch>
  40144b:	b8 00 00 00 00       	mov    $0x0,%eax
  401450:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
  401455:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40145c:	00 00 
  40145e:	75 0d                	jne    40146d <main+0x25f>
  401460:	48 83 c4 60          	add    $0x60,%rsp
  401464:	5b                   	pop    %rbx
  401465:	5d                   	pop    %rbp
  401466:	41 5c                	pop    %r12
  401468:	41 5d                	pop    %r13
  40146a:	41 5e                	pop    %r14
  40146c:	c3                   	retq   
  40146d:	e8 41 0e 00 00       	callq  4022b3 <__stack_chk_fail>

0000000000401472 <scramble>:
  401472:	48 83 ec 38          	sub    $0x38,%rsp
  401476:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40147d:	00 00 
  40147f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401484:	31 c0                	xor    %eax,%eax
  401486:	eb 10                	jmp    401498 <scramble+0x26>
  401488:	69 d0 ab 75 00 00    	imul   $0x75ab,%eax,%edx
  40148e:	01 fa                	add    %edi,%edx
  401490:	89 c1                	mov    %eax,%ecx
  401492:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401495:	83 c0 01             	add    $0x1,%eax
  401498:	83 f8 09             	cmp    $0x9,%eax
  40149b:	76 eb                	jbe    401488 <scramble+0x16>
  40149d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014a1:	69 c0 3b ba 00 00    	imul   $0xba3b,%eax,%eax
  4014a7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014ab:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014af:	69 c0 b5 e1 00 00    	imul   $0xe1b5,%eax,%eax
  4014b5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014b9:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014bd:	69 c0 32 1b 00 00    	imul   $0x1b32,%eax,%eax
  4014c3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014c7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014cb:	69 c0 91 68 00 00    	imul   $0x6891,%eax,%eax
  4014d1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014d5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014d9:	69 c0 c1 8a 00 00    	imul   $0x8ac1,%eax,%eax
  4014df:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014e3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014e7:	69 c0 52 85 00 00    	imul   $0x8552,%eax,%eax
  4014ed:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014f1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014f5:	69 c0 2b 6a 00 00    	imul   $0x6a2b,%eax,%eax
  4014fb:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014ff:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401503:	69 c0 ce fe 00 00    	imul   $0xfece,%eax,%eax
  401509:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40150d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401511:	69 c0 6e 82 00 00    	imul   $0x826e,%eax,%eax
  401517:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40151b:	8b 04 24             	mov    (%rsp),%eax
  40151e:	69 c0 07 ef 00 00    	imul   $0xef07,%eax,%eax
  401524:	89 04 24             	mov    %eax,(%rsp)
  401527:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40152b:	69 c0 3c 58 00 00    	imul   $0x583c,%eax,%eax
  401531:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401535:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401539:	69 c0 16 7a 00 00    	imul   $0x7a16,%eax,%eax
  40153f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401543:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401547:	69 c0 e0 62 00 00    	imul   $0x62e0,%eax,%eax
  40154d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401551:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401555:	69 c0 e0 f0 00 00    	imul   $0xf0e0,%eax,%eax
  40155b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40155f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401563:	69 c0 c1 67 00 00    	imul   $0x67c1,%eax,%eax
  401569:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40156d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401571:	69 c0 e5 59 00 00    	imul   $0x59e5,%eax,%eax
  401577:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40157b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40157f:	69 c0 54 9c 00 00    	imul   $0x9c54,%eax,%eax
  401585:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401589:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40158d:	69 c0 52 ed 00 00    	imul   $0xed52,%eax,%eax
  401593:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401597:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40159b:	69 c0 fd d0 00 00    	imul   $0xd0fd,%eax,%eax
  4015a1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015a5:	8b 04 24             	mov    (%rsp),%eax
  4015a8:	69 c0 09 ab 00 00    	imul   $0xab09,%eax,%eax
  4015ae:	89 04 24             	mov    %eax,(%rsp)
  4015b1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015b5:	69 c0 37 cb 00 00    	imul   $0xcb37,%eax,%eax
  4015bb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015bf:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015c3:	69 c0 c9 8d 00 00    	imul   $0x8dc9,%eax,%eax
  4015c9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015cd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015d1:	69 c0 8c e4 00 00    	imul   $0xe48c,%eax,%eax
  4015d7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015db:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4015df:	69 c0 d1 0d 00 00    	imul   $0xdd1,%eax,%eax
  4015e5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4015e9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4015ed:	69 c0 75 9e 00 00    	imul   $0x9e75,%eax,%eax
  4015f3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4015f7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015fb:	69 c0 87 23 00 00    	imul   $0x2387,%eax,%eax
  401601:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401605:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401609:	69 c0 d5 df 00 00    	imul   $0xdfd5,%eax,%eax
  40160f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401613:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401617:	69 c0 6b 33 00 00    	imul   $0x336b,%eax,%eax
  40161d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401621:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401625:	69 c0 15 5e 00 00    	imul   $0x5e15,%eax,%eax
  40162b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40162f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401633:	69 c0 f0 26 00 00    	imul   $0x26f0,%eax,%eax
  401639:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40163d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401641:	69 c0 7f d2 00 00    	imul   $0xd27f,%eax,%eax
  401647:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40164b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40164f:	69 c0 d2 e7 00 00    	imul   $0xe7d2,%eax,%eax
  401655:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401659:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40165d:	69 c0 6f bc 00 00    	imul   $0xbc6f,%eax,%eax
  401663:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401667:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40166b:	69 c0 59 26 00 00    	imul   $0x2659,%eax,%eax
  401671:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401675:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401679:	69 c0 08 2b 00 00    	imul   $0x2b08,%eax,%eax
  40167f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401683:	8b 04 24             	mov    (%rsp),%eax
  401686:	69 c0 2b e9 00 00    	imul   $0xe92b,%eax,%eax
  40168c:	89 04 24             	mov    %eax,(%rsp)
  40168f:	8b 04 24             	mov    (%rsp),%eax
  401692:	69 c0 be 01 00 00    	imul   $0x1be,%eax,%eax
  401698:	89 04 24             	mov    %eax,(%rsp)
  40169b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40169f:	69 c0 a3 2b 00 00    	imul   $0x2ba3,%eax,%eax
  4016a5:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016a9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016ad:	69 c0 8c 03 00 00    	imul   $0x38c,%eax,%eax
  4016b3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016b7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016bb:	69 c0 44 4d 00 00    	imul   $0x4d44,%eax,%eax
  4016c1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016c5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4016c9:	69 c0 4d 36 00 00    	imul   $0x364d,%eax,%eax
  4016cf:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4016d3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016d7:	69 c0 b2 98 00 00    	imul   $0x98b2,%eax,%eax
  4016dd:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016e1:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4016e5:	69 c0 69 0e 00 00    	imul   $0xe69,%eax,%eax
  4016eb:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4016ef:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016f3:	69 c0 d8 58 00 00    	imul   $0x58d8,%eax,%eax
  4016f9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016fd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401701:	69 c0 6a f0 00 00    	imul   $0xf06a,%eax,%eax
  401707:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40170b:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40170f:	69 c0 54 32 00 00    	imul   $0x3254,%eax,%eax
  401715:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401719:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40171d:	69 c0 9d 00 00 00    	imul   $0x9d,%eax,%eax
  401723:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401727:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40172b:	69 c0 bc 31 00 00    	imul   $0x31bc,%eax,%eax
  401731:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401735:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401739:	69 c0 4b ef 00 00    	imul   $0xef4b,%eax,%eax
  40173f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401743:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401747:	69 c0 79 4a 00 00    	imul   $0x4a79,%eax,%eax
  40174d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401751:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401755:	69 c0 77 29 00 00    	imul   $0x2977,%eax,%eax
  40175b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40175f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401763:	69 c0 94 10 00 00    	imul   $0x1094,%eax,%eax
  401769:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40176d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401771:	69 c0 98 aa 00 00    	imul   $0xaa98,%eax,%eax
  401777:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40177b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40177f:	69 c0 7f 11 00 00    	imul   $0x117f,%eax,%eax
  401785:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401789:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40178d:	69 c0 ab 75 00 00    	imul   $0x75ab,%eax,%eax
  401793:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401797:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40179b:	69 c0 25 50 00 00    	imul   $0x5025,%eax,%eax
  4017a1:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017a5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017a9:	69 c0 8f cf 00 00    	imul   $0xcf8f,%eax,%eax
  4017af:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017b3:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017b7:	69 c0 1b c2 00 00    	imul   $0xc21b,%eax,%eax
  4017bd:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017c1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017c5:	69 c0 f6 b4 00 00    	imul   $0xb4f6,%eax,%eax
  4017cb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017cf:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017d3:	69 c0 76 4a 00 00    	imul   $0x4a76,%eax,%eax
  4017d9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017dd:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017e1:	69 c0 bc 9a 00 00    	imul   $0x9abc,%eax,%eax
  4017e7:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017eb:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017ef:	69 c0 49 68 00 00    	imul   $0x6849,%eax,%eax
  4017f5:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017f9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4017fd:	69 c0 f1 96 00 00    	imul   $0x96f1,%eax,%eax
  401803:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401807:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40180b:	69 c0 66 58 00 00    	imul   $0x5866,%eax,%eax
  401811:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401815:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401819:	69 c0 1a f2 00 00    	imul   $0xf21a,%eax,%eax
  40181f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401823:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401827:	69 c0 90 a0 00 00    	imul   $0xa090,%eax,%eax
  40182d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401831:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401835:	69 c0 83 d6 00 00    	imul   $0xd683,%eax,%eax
  40183b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40183f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401843:	69 c0 c7 46 00 00    	imul   $0x46c7,%eax,%eax
  401849:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40184d:	8b 04 24             	mov    (%rsp),%eax
  401850:	69 c0 5b ed 00 00    	imul   $0xed5b,%eax,%eax
  401856:	89 04 24             	mov    %eax,(%rsp)
  401859:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40185d:	69 c0 40 2f 00 00    	imul   $0x2f40,%eax,%eax
  401863:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401867:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40186b:	69 c0 0a b7 00 00    	imul   $0xb70a,%eax,%eax
  401871:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401875:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401879:	69 c0 ff 0e 00 00    	imul   $0xeff,%eax,%eax
  40187f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401883:	8b 04 24             	mov    (%rsp),%eax
  401886:	69 c0 3d 68 00 00    	imul   $0x683d,%eax,%eax
  40188c:	89 04 24             	mov    %eax,(%rsp)
  40188f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401893:	69 c0 92 64 00 00    	imul   $0x6492,%eax,%eax
  401899:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40189d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018a1:	69 c0 0e ec 00 00    	imul   $0xec0e,%eax,%eax
  4018a7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018ab:	8b 04 24             	mov    (%rsp),%eax
  4018ae:	69 c0 93 c2 00 00    	imul   $0xc293,%eax,%eax
  4018b4:	89 04 24             	mov    %eax,(%rsp)
  4018b7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018bb:	69 c0 d3 2b 00 00    	imul   $0x2bd3,%eax,%eax
  4018c1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018c5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018c9:	69 c0 23 22 00 00    	imul   $0x2223,%eax,%eax
  4018cf:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018d3:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018d7:	69 c0 e1 c4 00 00    	imul   $0xc4e1,%eax,%eax
  4018dd:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018e1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018e5:	69 c0 01 49 00 00    	imul   $0x4901,%eax,%eax
  4018eb:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018ef:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018f3:	69 c0 68 1d 00 00    	imul   $0x1d68,%eax,%eax
  4018f9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018fd:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401901:	69 c0 8d d2 00 00    	imul   $0xd28d,%eax,%eax
  401907:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40190b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40190f:	69 c0 b6 9a 00 00    	imul   $0x9ab6,%eax,%eax
  401915:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401919:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40191d:	69 c0 07 75 00 00    	imul   $0x7507,%eax,%eax
  401923:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401927:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40192b:	69 c0 9a 71 00 00    	imul   $0x719a,%eax,%eax
  401931:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401935:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401939:	69 c0 18 eb 00 00    	imul   $0xeb18,%eax,%eax
  40193f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401943:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401947:	69 c0 ac 23 00 00    	imul   $0x23ac,%eax,%eax
  40194d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401951:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401955:	69 c0 3f af 00 00    	imul   $0xaf3f,%eax,%eax
  40195b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40195f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401963:	69 c0 32 cb 00 00    	imul   $0xcb32,%eax,%eax
  401969:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40196d:	ba 00 00 00 00       	mov    $0x0,%edx
  401972:	b8 00 00 00 00       	mov    $0x0,%eax
  401977:	eb 0a                	jmp    401983 <scramble+0x511>
  401979:	89 d1                	mov    %edx,%ecx
  40197b:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40197e:	01 c8                	add    %ecx,%eax
  401980:	83 c2 01             	add    $0x1,%edx
  401983:	83 fa 09             	cmp    $0x9,%edx
  401986:	76 f1                	jbe    401979 <scramble+0x507>
  401988:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40198d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401994:	00 00 
  401996:	75 05                	jne    40199d <scramble+0x52b>
  401998:	48 83 c4 38          	add    $0x38,%rsp
  40199c:	c3                   	retq   
  40199d:	e8 11 09 00 00       	callq  4022b3 <__stack_chk_fail>

00000000004019a2 <getbuf>:
  4019a2:	48 83 ec 38          	sub    $0x38,%rsp
  4019a6:	48 89 e7             	mov    %rsp,%rdi
  4019a9:	e8 52 04 00 00       	callq  401e00 <Gets>
  4019ae:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b3:	48 83 c4 38          	add    $0x38,%rsp
  4019b7:	c3                   	retq   

00000000004019b8 <touch1>:
  4019b8:	48 83 ec 08          	sub    $0x8,%rsp
  4019bc:	c7 05 56 3b 20 00 01 	movl   $0x1,0x203b56(%rip)        # 60551c <vlevel>
  4019c3:	00 00 00 
  4019c6:	48 8d 3d 05 1c 00 00 	lea    0x1c05(%rip),%rdi        # 4035d2 <_IO_stdin_used+0x312>
  4019cd:	e8 6e f3 ff ff       	callq  400d40 <puts@plt>
  4019d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d7:	e8 8c 06 00 00       	callq  402068 <validate>
  4019dc:	bf 00 00 00 00       	mov    $0x0,%edi
  4019e1:	e8 ca f4 ff ff       	callq  400eb0 <exit@plt>

00000000004019e6 <touch2>:
  4019e6:	48 83 ec 08          	sub    $0x8,%rsp
  4019ea:	89 fa                	mov    %edi,%edx
  4019ec:	c7 05 26 3b 20 00 02 	movl   $0x2,0x203b26(%rip)        # 60551c <vlevel>
  4019f3:	00 00 00 
  4019f6:	39 3d 28 3b 20 00    	cmp    %edi,0x203b28(%rip)        # 605524 <cookie>
  4019fc:	74 2a                	je     401a28 <touch2+0x42>
  4019fe:	48 8d 35 1b 1c 00 00 	lea    0x1c1b(%rip),%rsi        # 403620 <_IO_stdin_used+0x360>
  401a05:	bf 01 00 00 00       	mov    $0x1,%edi
  401a0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a0f:	e8 4c f4 ff ff       	callq  400e60 <__printf_chk@plt>
  401a14:	bf 02 00 00 00       	mov    $0x2,%edi
  401a19:	e8 1a 07 00 00       	callq  402138 <fail>
  401a1e:	bf 00 00 00 00       	mov    $0x0,%edi
  401a23:	e8 88 f4 ff ff       	callq  400eb0 <exit@plt>
  401a28:	48 8d 35 c9 1b 00 00 	lea    0x1bc9(%rip),%rsi        # 4035f8 <_IO_stdin_used+0x338>
  401a2f:	bf 01 00 00 00       	mov    $0x1,%edi
  401a34:	b8 00 00 00 00       	mov    $0x0,%eax
  401a39:	e8 22 f4 ff ff       	callq  400e60 <__printf_chk@plt>
  401a3e:	bf 02 00 00 00       	mov    $0x2,%edi
  401a43:	e8 20 06 00 00       	callq  402068 <validate>
  401a48:	eb d4                	jmp    401a1e <touch2+0x38>

0000000000401a4a <hexmatch>:
  401a4a:	41 54                	push   %r12
  401a4c:	55                   	push   %rbp
  401a4d:	53                   	push   %rbx
  401a4e:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401a52:	89 fd                	mov    %edi,%ebp
  401a54:	48 89 f3             	mov    %rsi,%rbx
  401a57:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a5e:	00 00 
  401a60:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a65:	31 c0                	xor    %eax,%eax
  401a67:	e8 b4 f3 ff ff       	callq  400e20 <random@plt>
  401a6c:	48 89 c1             	mov    %rax,%rcx
  401a6f:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401a76:	0a d7 a3 
  401a79:	48 f7 ea             	imul   %rdx
  401a7c:	48 01 ca             	add    %rcx,%rdx
  401a7f:	48 c1 fa 06          	sar    $0x6,%rdx
  401a83:	48 89 c8             	mov    %rcx,%rax
  401a86:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a8a:	48 29 c2             	sub    %rax,%rdx
  401a8d:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a91:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a95:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a9c:	00 
  401a9d:	48 29 c1             	sub    %rax,%rcx
  401aa0:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401aa4:	41 89 e8             	mov    %ebp,%r8d
  401aa7:	48 8d 0d 41 1b 00 00 	lea    0x1b41(%rip),%rcx        # 4035ef <_IO_stdin_used+0x32f>
  401aae:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401ab5:	be 01 00 00 00       	mov    $0x1,%esi
  401aba:	4c 89 e7             	mov    %r12,%rdi
  401abd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac2:	e8 19 f4 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401ac7:	ba 09 00 00 00       	mov    $0x9,%edx
  401acc:	4c 89 e6             	mov    %r12,%rsi
  401acf:	48 89 df             	mov    %rbx,%rdi
  401ad2:	e8 49 f2 ff ff       	callq  400d20 <strncmp@plt>
  401ad7:	85 c0                	test   %eax,%eax
  401ad9:	0f 94 c0             	sete   %al
  401adc:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401ae1:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401ae8:	00 00 
  401aea:	75 0c                	jne    401af8 <hexmatch+0xae>
  401aec:	0f b6 c0             	movzbl %al,%eax
  401aef:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401af3:	5b                   	pop    %rbx
  401af4:	5d                   	pop    %rbp
  401af5:	41 5c                	pop    %r12
  401af7:	c3                   	retq   
  401af8:	e8 b6 07 00 00       	callq  4022b3 <__stack_chk_fail>

0000000000401afd <touch3>:
  401afd:	53                   	push   %rbx
  401afe:	48 89 fb             	mov    %rdi,%rbx
  401b01:	c7 05 11 3a 20 00 03 	movl   $0x3,0x203a11(%rip)        # 60551c <vlevel>
  401b08:	00 00 00 
  401b0b:	48 89 fe             	mov    %rdi,%rsi
  401b0e:	8b 3d 10 3a 20 00    	mov    0x203a10(%rip),%edi        # 605524 <cookie>
  401b14:	e8 31 ff ff ff       	callq  401a4a <hexmatch>
  401b19:	85 c0                	test   %eax,%eax
  401b1b:	74 2d                	je     401b4a <touch3+0x4d>
  401b1d:	48 89 da             	mov    %rbx,%rdx
  401b20:	48 8d 35 21 1b 00 00 	lea    0x1b21(%rip),%rsi        # 403648 <_IO_stdin_used+0x388>
  401b27:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b31:	e8 2a f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401b36:	bf 03 00 00 00       	mov    $0x3,%edi
  401b3b:	e8 28 05 00 00       	callq  402068 <validate>
  401b40:	bf 00 00 00 00       	mov    $0x0,%edi
  401b45:	e8 66 f3 ff ff       	callq  400eb0 <exit@plt>
  401b4a:	48 89 da             	mov    %rbx,%rdx
  401b4d:	48 8d 35 1c 1b 00 00 	lea    0x1b1c(%rip),%rsi        # 403670 <_IO_stdin_used+0x3b0>
  401b54:	bf 01 00 00 00       	mov    $0x1,%edi
  401b59:	b8 00 00 00 00       	mov    $0x0,%eax
  401b5e:	e8 fd f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401b63:	bf 03 00 00 00       	mov    $0x3,%edi
  401b68:	e8 cb 05 00 00       	callq  402138 <fail>
  401b6d:	eb d1                	jmp    401b40 <touch3+0x43>

0000000000401b6f <test>:
  401b6f:	48 83 ec 08          	sub    $0x8,%rsp
  401b73:	b8 00 00 00 00       	mov    $0x0,%eax
  401b78:	e8 25 fe ff ff       	callq  4019a2 <getbuf>
  401b7d:	89 c2                	mov    %eax,%edx
  401b7f:	48 8d 35 12 1b 00 00 	lea    0x1b12(%rip),%rsi        # 403698 <_IO_stdin_used+0x3d8>
  401b86:	bf 01 00 00 00       	mov    $0x1,%edi
  401b8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b90:	e8 cb f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401b95:	48 83 c4 08          	add    $0x8,%rsp
  401b99:	c3                   	retq   

0000000000401b9a <test2>:
  401b9a:	48 83 ec 08          	sub    $0x8,%rsp
  401b9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba3:	e8 1d 00 00 00       	callq  401bc5 <getbuf_withcanary>
  401ba8:	89 c2                	mov    %eax,%edx
  401baa:	48 8d 35 0f 1b 00 00 	lea    0x1b0f(%rip),%rsi        # 4036c0 <_IO_stdin_used+0x400>
  401bb1:	bf 01 00 00 00       	mov    $0x1,%edi
  401bb6:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbb:	e8 a0 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401bc0:	48 83 c4 08          	add    $0x8,%rsp
  401bc4:	c3                   	retq   

0000000000401bc5 <getbuf_withcanary>:
  401bc5:	55                   	push   %rbp
  401bc6:	48 89 e5             	mov    %rsp,%rbp
  401bc9:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  401bd0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401bd7:	00 00 
  401bd9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401bdd:	31 c0                	xor    %eax,%eax
  401bdf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  401be6:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401bed:	48 89 c7             	mov    %rax,%rdi
  401bf0:	e8 0b 02 00 00       	callq  401e00 <Gets>
  401bf5:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401bf8:	48 98                	cltq   
  401bfa:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  401c01:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  401c05:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  401c0c:	ba 80 00 00 00       	mov    $0x80,%edx
  401c11:	48 89 c6             	mov    %rax,%rsi
  401c14:	48 89 cf             	mov    %rcx,%rdi
  401c17:	e8 e4 f1 ff ff       	callq  400e00 <memcpy@plt>
  401c1c:	b8 01 00 00 00       	mov    $0x1,%eax
  401c21:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401c25:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401c2c:	00 00 
  401c2e:	74 05                	je     401c35 <getbuf_withcanary+0x70>
  401c30:	e8 7e 06 00 00       	callq  4022b3 <__stack_chk_fail>
  401c35:	c9                   	leaveq 
  401c36:	c3                   	retq   

0000000000401c37 <start_farm>:
  401c37:	b8 01 00 00 00       	mov    $0x1,%eax
  401c3c:	c3                   	retq   

0000000000401c3d <addval_172>:
  401c3d:	8d 87 58 90 90 c7    	lea    -0x386f6fa8(%rdi),%eax
  401c43:	c3                   	retq   

0000000000401c44 <setval_131>:
  401c44:	c7 07 7f 30 49 58    	movl   $0x5849307f,(%rdi)
  401c4a:	c3                   	retq   

0000000000401c4b <setval_358>:
  401c4b:	c7 07 fc 48 89 c7    	movl   $0xc78948fc,(%rdi)
  401c51:	c3                   	retq   

0000000000401c52 <getval_428>:
  401c52:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  401c57:	c3                   	retq   

0000000000401c58 <setval_148>:
  401c58:	c7 07 08 37 76 18    	movl   $0x18763708,(%rdi)
  401c5e:	c3                   	retq   

0000000000401c5f <setval_439>:
  401c5f:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  401c65:	c3                   	retq   

0000000000401c66 <addval_490>:
  401c66:	8d 87 48 89 c7 c2    	lea    -0x3d3876b8(%rdi),%eax
  401c6c:	c3                   	retq   

0000000000401c6d <getval_441>:
  401c6d:	b8 48 09 c7 90       	mov    $0x90c70948,%eax
  401c72:	c3                   	retq   

0000000000401c73 <mid_farm>:
  401c73:	b8 01 00 00 00       	mov    $0x1,%eax
  401c78:	c3                   	retq   

0000000000401c79 <add_xy>:
  401c79:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401c7d:	c3                   	retq   

0000000000401c7e <addval_214>:
  401c7e:	8d 87 89 c1 28 c0    	lea    -0x3fd73e77(%rdi),%eax
  401c84:	c3                   	retq   

0000000000401c85 <setval_451>:
  401c85:	c7 07 8d c1 38 c0    	movl   $0xc038c18d,(%rdi)
  401c8b:	c3                   	retq   

0000000000401c8c <addval_265>:
  401c8c:	8d 87 09 d6 08 c9    	lea    -0x36f729f7(%rdi),%eax
  401c92:	c3                   	retq   

0000000000401c93 <setval_449>:
  401c93:	c7 07 48 89 e0 c2    	movl   $0xc2e08948,(%rdi)
  401c99:	c3                   	retq   

0000000000401c9a <getval_250>:
  401c9a:	b8 7c 48 81 e0       	mov    $0xe081487c,%eax
  401c9f:	c3                   	retq   

0000000000401ca0 <getval_414>:
  401ca0:	b8 96 1f 88 d6       	mov    $0xd6881f96,%eax
  401ca5:	c3                   	retq   

0000000000401ca6 <getval_336>:
  401ca6:	b8 89 ca 48 d2       	mov    $0xd248ca89,%eax
  401cab:	c3                   	retq   

0000000000401cac <addval_351>:
  401cac:	8d 87 89 c1 28 d2    	lea    -0x2dd73e77(%rdi),%eax
  401cb2:	c3                   	retq   

0000000000401cb3 <setval_244>:
  401cb3:	c7 07 89 c1 84 d2    	movl   $0xd284c189,(%rdi)
  401cb9:	c3                   	retq   

0000000000401cba <getval_231>:
  401cba:	b8 89 ca 20 c9       	mov    $0xc920ca89,%eax
  401cbf:	c3                   	retq   

0000000000401cc0 <addval_339>:
  401cc0:	8d 87 89 d6 92 90    	lea    -0x6f6d2977(%rdi),%eax
  401cc6:	c3                   	retq   

0000000000401cc7 <getval_430>:
  401cc7:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401ccc:	c3                   	retq   

0000000000401ccd <getval_312>:
  401ccd:	b8 89 c1 84 d2       	mov    $0xd284c189,%eax
  401cd2:	c3                   	retq   

0000000000401cd3 <setval_198>:
  401cd3:	c7 07 88 ca 20 db    	movl   $0xdb20ca88,(%rdi)
  401cd9:	c3                   	retq   

0000000000401cda <setval_320>:
  401cda:	c7 07 89 ca 92 90    	movl   $0x9092ca89,(%rdi)
  401ce0:	c3                   	retq   

0000000000401ce1 <setval_435>:
  401ce1:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
  401ce7:	c3                   	retq   

0000000000401ce8 <addval_499>:
  401ce8:	8d 87 88 c1 38 db    	lea    -0x24c73e78(%rdi),%eax
  401cee:	c3                   	retq   

0000000000401cef <setval_225>:
  401cef:	c7 07 c3 89 ca 94    	movl   $0x94ca89c3,(%rdi)
  401cf5:	c3                   	retq   

0000000000401cf6 <setval_181>:
  401cf6:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401cfc:	c3                   	retq   

0000000000401cfd <getval_104>:
  401cfd:	b8 88 c1 08 d2       	mov    $0xd208c188,%eax
  401d02:	c3                   	retq   

0000000000401d03 <addval_149>:
  401d03:	8d 87 89 ca a4 c0    	lea    -0x3f5b3577(%rdi),%eax
  401d09:	c3                   	retq   

0000000000401d0a <setval_353>:
  401d0a:	c7 07 89 d6 38 db    	movl   $0xdb38d689,(%rdi)
  401d10:	c3                   	retq   

0000000000401d11 <addval_227>:
  401d11:	8d 87 89 d6 60 db    	lea    -0x249f2977(%rdi),%eax
  401d17:	c3                   	retq   

0000000000401d18 <getval_139>:
  401d18:	b8 8b d6 08 c9       	mov    $0xc908d68b,%eax
  401d1d:	c3                   	retq   

0000000000401d1e <getval_431>:
  401d1e:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  401d23:	c3                   	retq   

0000000000401d24 <addval_232>:
  401d24:	8d 87 89 d6 90 c3    	lea    -0x3c6f2977(%rdi),%eax
  401d2a:	c3                   	retq   

0000000000401d2b <addval_204>:
  401d2b:	8d 87 89 c1 30 db    	lea    -0x24cf3e77(%rdi),%eax
  401d31:	c3                   	retq   

0000000000401d32 <addval_168>:
  401d32:	8d 87 08 89 e0 c3    	lea    -0x3c1f76f8(%rdi),%eax
  401d38:	c3                   	retq   

0000000000401d39 <getval_281>:
  401d39:	b8 88 d6 38 db       	mov    $0xdb38d688,%eax
  401d3e:	c3                   	retq   

0000000000401d3f <addval_444>:
  401d3f:	8d 87 89 ca 00 d2    	lea    -0x2dff3577(%rdi),%eax
  401d45:	c3                   	retq   

0000000000401d46 <getval_276>:
  401d46:	b8 89 ca 08 db       	mov    $0xdb08ca89,%eax
  401d4b:	c3                   	retq   

0000000000401d4c <getval_246>:
  401d4c:	b8 48 89 e0 92       	mov    $0x92e08948,%eax
  401d51:	c3                   	retq   

0000000000401d52 <end_farm>:
  401d52:	b8 01 00 00 00       	mov    $0x1,%eax
  401d57:	c3                   	retq   

0000000000401d58 <save_char>:
  401d58:	8b 05 e6 43 20 00    	mov    0x2043e6(%rip),%eax        # 606144 <gets_cnt>
  401d5e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401d63:	7f 4a                	jg     401daf <save_char+0x57>
  401d65:	89 f9                	mov    %edi,%ecx
  401d67:	c0 e9 04             	shr    $0x4,%cl
  401d6a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401d6d:	4c 8d 05 ac 1c 00 00 	lea    0x1cac(%rip),%r8        # 403a20 <trans_char>
  401d74:	83 e1 0f             	and    $0xf,%ecx
  401d77:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401d7c:	48 8d 0d bd 37 20 00 	lea    0x2037bd(%rip),%rcx        # 605540 <gets_buf>
  401d83:	48 63 f2             	movslq %edx,%rsi
  401d86:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401d8a:	8d 72 01             	lea    0x1(%rdx),%esi
  401d8d:	83 e7 0f             	and    $0xf,%edi
  401d90:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401d95:	48 63 f6             	movslq %esi,%rsi
  401d98:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401d9c:	83 c2 02             	add    $0x2,%edx
  401d9f:	48 63 d2             	movslq %edx,%rdx
  401da2:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401da6:	83 c0 01             	add    $0x1,%eax
  401da9:	89 05 95 43 20 00    	mov    %eax,0x204395(%rip)        # 606144 <gets_cnt>
  401daf:	f3 c3                	repz retq 

0000000000401db1 <save_term>:
  401db1:	8b 05 8d 43 20 00    	mov    0x20438d(%rip),%eax        # 606144 <gets_cnt>
  401db7:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401dba:	48 98                	cltq   
  401dbc:	48 8d 15 7d 37 20 00 	lea    0x20377d(%rip),%rdx        # 605540 <gets_buf>
  401dc3:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401dc7:	c3                   	retq   

0000000000401dc8 <check_fail>:
  401dc8:	48 83 ec 08          	sub    $0x8,%rsp
  401dcc:	0f be 15 75 43 20 00 	movsbl 0x204375(%rip),%edx        # 606148 <target_prefix>
  401dd3:	4c 8d 05 66 37 20 00 	lea    0x203766(%rip),%r8        # 605540 <gets_buf>
  401dda:	8b 0d 38 37 20 00    	mov    0x203738(%rip),%ecx        # 605518 <check_level>
  401de0:	48 8d 35 07 19 00 00 	lea    0x1907(%rip),%rsi        # 4036ee <_IO_stdin_used+0x42e>
  401de7:	bf 01 00 00 00       	mov    $0x1,%edi
  401dec:	b8 00 00 00 00       	mov    $0x0,%eax
  401df1:	e8 6a f0 ff ff       	callq  400e60 <__printf_chk@plt>
  401df6:	bf 01 00 00 00       	mov    $0x1,%edi
  401dfb:	e8 b0 f0 ff ff       	callq  400eb0 <exit@plt>

0000000000401e00 <Gets>:
  401e00:	41 54                	push   %r12
  401e02:	55                   	push   %rbp
  401e03:	53                   	push   %rbx
  401e04:	49 89 fc             	mov    %rdi,%r12
  401e07:	c7 05 33 43 20 00 00 	movl   $0x0,0x204333(%rip)        # 606144 <gets_cnt>
  401e0e:	00 00 00 
  401e11:	48 89 fb             	mov    %rdi,%rbx
  401e14:	eb 11                	jmp    401e27 <Gets+0x27>
  401e16:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e1a:	88 03                	mov    %al,(%rbx)
  401e1c:	0f b6 f8             	movzbl %al,%edi
  401e1f:	e8 34 ff ff ff       	callq  401d58 <save_char>
  401e24:	48 89 eb             	mov    %rbp,%rbx
  401e27:	48 8b 3d e2 36 20 00 	mov    0x2036e2(%rip),%rdi        # 605510 <infile>
  401e2e:	e8 fd ef ff ff       	callq  400e30 <_IO_getc@plt>
  401e33:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e36:	74 05                	je     401e3d <Gets+0x3d>
  401e38:	83 f8 0a             	cmp    $0xa,%eax
  401e3b:	75 d9                	jne    401e16 <Gets+0x16>
  401e3d:	c6 03 00             	movb   $0x0,(%rbx)
  401e40:	b8 00 00 00 00       	mov    $0x0,%eax
  401e45:	e8 67 ff ff ff       	callq  401db1 <save_term>
  401e4a:	4c 89 e0             	mov    %r12,%rax
  401e4d:	5b                   	pop    %rbx
  401e4e:	5d                   	pop    %rbp
  401e4f:	41 5c                	pop    %r12
  401e51:	c3                   	retq   

0000000000401e52 <notify_server>:
  401e52:	55                   	push   %rbp
  401e53:	53                   	push   %rbx
  401e54:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401e5b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e62:	00 00 
  401e64:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401e6b:	00 
  401e6c:	31 c0                	xor    %eax,%eax
  401e6e:	83 3d b3 36 20 00 00 	cmpl   $0x0,0x2036b3(%rip)        # 605528 <is_checker>
  401e75:	0f 85 cb 01 00 00    	jne    402046 <notify_server+0x1f4>
  401e7b:	89 fb                	mov    %edi,%ebx
  401e7d:	8b 05 c1 42 20 00    	mov    0x2042c1(%rip),%eax        # 606144 <gets_cnt>
  401e83:	83 c0 64             	add    $0x64,%eax
  401e86:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401e8b:	0f 8f bd 00 00 00    	jg     401f4e <notify_server+0xfc>
  401e91:	0f be 05 b0 42 20 00 	movsbl 0x2042b0(%rip),%eax        # 606148 <target_prefix>
  401e98:	83 3d 09 36 20 00 00 	cmpl   $0x0,0x203609(%rip)        # 6054a8 <notify>
  401e9f:	0f 84 c9 00 00 00    	je     401f6e <notify_server+0x11c>
  401ea5:	8b 15 75 36 20 00    	mov    0x203675(%rip),%edx        # 605520 <authkey>
  401eab:	85 db                	test   %ebx,%ebx
  401ead:	0f 84 c5 00 00 00    	je     401f78 <notify_server+0x126>
  401eb3:	48 8d 2d 4a 18 00 00 	lea    0x184a(%rip),%rbp        # 403704 <_IO_stdin_used+0x444>
  401eba:	48 89 e7             	mov    %rsp,%rdi
  401ebd:	48 8d 0d 7c 36 20 00 	lea    0x20367c(%rip),%rcx        # 605540 <gets_buf>
  401ec4:	51                   	push   %rcx
  401ec5:	56                   	push   %rsi
  401ec6:	50                   	push   %rax
  401ec7:	52                   	push   %rdx
  401ec8:	49 89 e9             	mov    %rbp,%r9
  401ecb:	44 8b 05 7e 32 20 00 	mov    0x20327e(%rip),%r8d        # 605150 <target_id>
  401ed2:	48 8d 0d 35 18 00 00 	lea    0x1835(%rip),%rcx        # 40370e <_IO_stdin_used+0x44e>
  401ed9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ede:	be 01 00 00 00       	mov    $0x1,%esi
  401ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee8:	e8 f3 ef ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401eed:	48 83 c4 20          	add    $0x20,%rsp
  401ef1:	83 3d b0 35 20 00 00 	cmpl   $0x0,0x2035b0(%rip)        # 6054a8 <notify>
  401ef8:	0f 84 bf 00 00 00    	je     401fbd <notify_server+0x16b>
  401efe:	48 89 e1             	mov    %rsp,%rcx
  401f01:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401f08:	00 
  401f09:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f0f:	48 8b 15 52 32 20 00 	mov    0x203252(%rip),%rdx        # 605168 <lab>
  401f16:	48 8b 35 53 32 20 00 	mov    0x203253(%rip),%rsi        # 605170 <course>
  401f1d:	48 8b 3d 3c 32 20 00 	mov    0x20323c(%rip),%rdi        # 605160 <user_id>
  401f24:	e8 45 12 00 00       	callq  40316e <driver_post>
  401f29:	85 c0                	test   %eax,%eax
  401f2b:	78 57                	js     401f84 <notify_server+0x132>
  401f2d:	85 db                	test   %ebx,%ebx
  401f2f:	74 7b                	je     401fac <notify_server+0x15a>
  401f31:	48 8d 3d 28 19 00 00 	lea    0x1928(%rip),%rdi        # 403860 <_IO_stdin_used+0x5a0>
  401f38:	e8 03 ee ff ff       	callq  400d40 <puts@plt>
  401f3d:	48 8d 3d f2 17 00 00 	lea    0x17f2(%rip),%rdi        # 403736 <_IO_stdin_used+0x476>
  401f44:	e8 f7 ed ff ff       	callq  400d40 <puts@plt>
  401f49:	e9 f8 00 00 00       	jmpq   402046 <notify_server+0x1f4>
  401f4e:	48 8d 35 db 18 00 00 	lea    0x18db(%rip),%rsi        # 403830 <_IO_stdin_used+0x570>
  401f55:	bf 01 00 00 00       	mov    $0x1,%edi
  401f5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5f:	e8 fc ee ff ff       	callq  400e60 <__printf_chk@plt>
  401f64:	bf 01 00 00 00       	mov    $0x1,%edi
  401f69:	e8 42 ef ff ff       	callq  400eb0 <exit@plt>
  401f6e:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401f73:	e9 33 ff ff ff       	jmpq   401eab <notify_server+0x59>
  401f78:	48 8d 2d 8a 17 00 00 	lea    0x178a(%rip),%rbp        # 403709 <_IO_stdin_used+0x449>
  401f7f:	e9 36 ff ff ff       	jmpq   401eba <notify_server+0x68>
  401f84:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401f8b:	00 
  401f8c:	48 8d 35 97 17 00 00 	lea    0x1797(%rip),%rsi        # 40372a <_IO_stdin_used+0x46a>
  401f93:	bf 01 00 00 00       	mov    $0x1,%edi
  401f98:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9d:	e8 be ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fa2:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa7:	e8 04 ef ff ff       	callq  400eb0 <exit@plt>
  401fac:	48 8d 3d 8d 17 00 00 	lea    0x178d(%rip),%rdi        # 403740 <_IO_stdin_used+0x480>
  401fb3:	e8 88 ed ff ff       	callq  400d40 <puts@plt>
  401fb8:	e9 89 00 00 00       	jmpq   402046 <notify_server+0x1f4>
  401fbd:	48 89 ea             	mov    %rbp,%rdx
  401fc0:	48 8d 35 d1 18 00 00 	lea    0x18d1(%rip),%rsi        # 403898 <_IO_stdin_used+0x5d8>
  401fc7:	bf 01 00 00 00       	mov    $0x1,%edi
  401fcc:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd1:	e8 8a ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fd6:	48 8b 15 83 31 20 00 	mov    0x203183(%rip),%rdx        # 605160 <user_id>
  401fdd:	48 8d 35 63 17 00 00 	lea    0x1763(%rip),%rsi        # 403747 <_IO_stdin_used+0x487>
  401fe4:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fee:	e8 6d ee ff ff       	callq  400e60 <__printf_chk@plt>
  401ff3:	48 8b 15 76 31 20 00 	mov    0x203176(%rip),%rdx        # 605170 <course>
  401ffa:	48 8d 35 53 17 00 00 	lea    0x1753(%rip),%rsi        # 403754 <_IO_stdin_used+0x494>
  402001:	bf 01 00 00 00       	mov    $0x1,%edi
  402006:	b8 00 00 00 00       	mov    $0x0,%eax
  40200b:	e8 50 ee ff ff       	callq  400e60 <__printf_chk@plt>
  402010:	48 8b 15 51 31 20 00 	mov    0x203151(%rip),%rdx        # 605168 <lab>
  402017:	48 8d 35 42 17 00 00 	lea    0x1742(%rip),%rsi        # 403760 <_IO_stdin_used+0x4a0>
  40201e:	bf 01 00 00 00       	mov    $0x1,%edi
  402023:	b8 00 00 00 00       	mov    $0x0,%eax
  402028:	e8 33 ee ff ff       	callq  400e60 <__printf_chk@plt>
  40202d:	48 89 e2             	mov    %rsp,%rdx
  402030:	48 8d 35 32 17 00 00 	lea    0x1732(%rip),%rsi        # 403769 <_IO_stdin_used+0x4a9>
  402037:	bf 01 00 00 00       	mov    $0x1,%edi
  40203c:	b8 00 00 00 00       	mov    $0x0,%eax
  402041:	e8 1a ee ff ff       	callq  400e60 <__printf_chk@plt>
  402046:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40204d:	00 
  40204e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402055:	00 00 
  402057:	75 0a                	jne    402063 <notify_server+0x211>
  402059:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402060:	5b                   	pop    %rbx
  402061:	5d                   	pop    %rbp
  402062:	c3                   	retq   
  402063:	e8 4b 02 00 00       	callq  4022b3 <__stack_chk_fail>

0000000000402068 <validate>:
  402068:	53                   	push   %rbx
  402069:	89 fb                	mov    %edi,%ebx
  40206b:	83 3d b6 34 20 00 00 	cmpl   $0x0,0x2034b6(%rip)        # 605528 <is_checker>
  402072:	74 72                	je     4020e6 <validate+0x7e>
  402074:	39 3d a2 34 20 00    	cmp    %edi,0x2034a2(%rip)        # 60551c <vlevel>
  40207a:	75 32                	jne    4020ae <validate+0x46>
  40207c:	8b 15 96 34 20 00    	mov    0x203496(%rip),%edx        # 605518 <check_level>
  402082:	39 fa                	cmp    %edi,%edx
  402084:	75 3e                	jne    4020c4 <validate+0x5c>
  402086:	0f be 15 bb 40 20 00 	movsbl 0x2040bb(%rip),%edx        # 606148 <target_prefix>
  40208d:	4c 8d 05 ac 34 20 00 	lea    0x2034ac(%rip),%r8        # 605540 <gets_buf>
  402094:	89 f9                	mov    %edi,%ecx
  402096:	48 8d 35 f6 16 00 00 	lea    0x16f6(%rip),%rsi        # 403793 <_IO_stdin_used+0x4d3>
  40209d:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a7:	e8 b4 ed ff ff       	callq  400e60 <__printf_chk@plt>
  4020ac:	5b                   	pop    %rbx
  4020ad:	c3                   	retq   
  4020ae:	48 8d 3d c0 16 00 00 	lea    0x16c0(%rip),%rdi        # 403775 <_IO_stdin_used+0x4b5>
  4020b5:	e8 86 ec ff ff       	callq  400d40 <puts@plt>
  4020ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4020bf:	e8 04 fd ff ff       	callq  401dc8 <check_fail>
  4020c4:	89 f9                	mov    %edi,%ecx
  4020c6:	48 8d 35 f3 17 00 00 	lea    0x17f3(%rip),%rsi        # 4038c0 <_IO_stdin_used+0x600>
  4020cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d7:	e8 84 ed ff ff       	callq  400e60 <__printf_chk@plt>
  4020dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e1:	e8 e2 fc ff ff       	callq  401dc8 <check_fail>
  4020e6:	39 3d 30 34 20 00    	cmp    %edi,0x203430(%rip)        # 60551c <vlevel>
  4020ec:	74 1a                	je     402108 <validate+0xa0>
  4020ee:	48 8d 3d 80 16 00 00 	lea    0x1680(%rip),%rdi        # 403775 <_IO_stdin_used+0x4b5>
  4020f5:	e8 46 ec ff ff       	callq  400d40 <puts@plt>
  4020fa:	89 de                	mov    %ebx,%esi
  4020fc:	bf 00 00 00 00       	mov    $0x0,%edi
  402101:	e8 4c fd ff ff       	callq  401e52 <notify_server>
  402106:	eb a4                	jmp    4020ac <validate+0x44>
  402108:	0f be 0d 39 40 20 00 	movsbl 0x204039(%rip),%ecx        # 606148 <target_prefix>
  40210f:	89 fa                	mov    %edi,%edx
  402111:	48 8d 35 d0 17 00 00 	lea    0x17d0(%rip),%rsi        # 4038e8 <_IO_stdin_used+0x628>
  402118:	bf 01 00 00 00       	mov    $0x1,%edi
  40211d:	b8 00 00 00 00       	mov    $0x0,%eax
  402122:	e8 39 ed ff ff       	callq  400e60 <__printf_chk@plt>
  402127:	89 de                	mov    %ebx,%esi
  402129:	bf 01 00 00 00       	mov    $0x1,%edi
  40212e:	e8 1f fd ff ff       	callq  401e52 <notify_server>
  402133:	e9 74 ff ff ff       	jmpq   4020ac <validate+0x44>

0000000000402138 <fail>:
  402138:	48 83 ec 08          	sub    $0x8,%rsp
  40213c:	83 3d e5 33 20 00 00 	cmpl   $0x0,0x2033e5(%rip)        # 605528 <is_checker>
  402143:	75 11                	jne    402156 <fail+0x1e>
  402145:	89 fe                	mov    %edi,%esi
  402147:	bf 00 00 00 00       	mov    $0x0,%edi
  40214c:	e8 01 fd ff ff       	callq  401e52 <notify_server>
  402151:	48 83 c4 08          	add    $0x8,%rsp
  402155:	c3                   	retq   
  402156:	b8 00 00 00 00       	mov    $0x0,%eax
  40215b:	e8 68 fc ff ff       	callq  401dc8 <check_fail>

0000000000402160 <bushandler>:
  402160:	48 83 ec 08          	sub    $0x8,%rsp
  402164:	83 3d bd 33 20 00 00 	cmpl   $0x0,0x2033bd(%rip)        # 605528 <is_checker>
  40216b:	74 16                	je     402183 <bushandler+0x23>
  40216d:	48 8d 3d 34 16 00 00 	lea    0x1634(%rip),%rdi        # 4037a8 <_IO_stdin_used+0x4e8>
  402174:	e8 c7 eb ff ff       	callq  400d40 <puts@plt>
  402179:	b8 00 00 00 00       	mov    $0x0,%eax
  40217e:	e8 45 fc ff ff       	callq  401dc8 <check_fail>
  402183:	48 8d 3d 96 17 00 00 	lea    0x1796(%rip),%rdi        # 403920 <_IO_stdin_used+0x660>
  40218a:	e8 b1 eb ff ff       	callq  400d40 <puts@plt>
  40218f:	48 8d 3d 1c 16 00 00 	lea    0x161c(%rip),%rdi        # 4037b2 <_IO_stdin_used+0x4f2>
  402196:	e8 a5 eb ff ff       	callq  400d40 <puts@plt>
  40219b:	be 00 00 00 00       	mov    $0x0,%esi
  4021a0:	bf 00 00 00 00       	mov    $0x0,%edi
  4021a5:	e8 a8 fc ff ff       	callq  401e52 <notify_server>
  4021aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4021af:	e8 fc ec ff ff       	callq  400eb0 <exit@plt>

00000000004021b4 <seghandler>:
  4021b4:	48 83 ec 08          	sub    $0x8,%rsp
  4021b8:	83 3d 69 33 20 00 00 	cmpl   $0x0,0x203369(%rip)        # 605528 <is_checker>
  4021bf:	74 16                	je     4021d7 <seghandler+0x23>
  4021c1:	48 8d 3d 00 16 00 00 	lea    0x1600(%rip),%rdi        # 4037c8 <_IO_stdin_used+0x508>
  4021c8:	e8 73 eb ff ff       	callq  400d40 <puts@plt>
  4021cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d2:	e8 f1 fb ff ff       	callq  401dc8 <check_fail>
  4021d7:	48 8d 3d 62 17 00 00 	lea    0x1762(%rip),%rdi        # 403940 <_IO_stdin_used+0x680>
  4021de:	e8 5d eb ff ff       	callq  400d40 <puts@plt>
  4021e3:	48 8d 3d c8 15 00 00 	lea    0x15c8(%rip),%rdi        # 4037b2 <_IO_stdin_used+0x4f2>
  4021ea:	e8 51 eb ff ff       	callq  400d40 <puts@plt>
  4021ef:	be 00 00 00 00       	mov    $0x0,%esi
  4021f4:	bf 00 00 00 00       	mov    $0x0,%edi
  4021f9:	e8 54 fc ff ff       	callq  401e52 <notify_server>
  4021fe:	bf 01 00 00 00       	mov    $0x1,%edi
  402203:	e8 a8 ec ff ff       	callq  400eb0 <exit@plt>

0000000000402208 <illegalhandler>:
  402208:	48 83 ec 08          	sub    $0x8,%rsp
  40220c:	83 3d 15 33 20 00 00 	cmpl   $0x0,0x203315(%rip)        # 605528 <is_checker>
  402213:	74 16                	je     40222b <illegalhandler+0x23>
  402215:	48 8d 3d bf 15 00 00 	lea    0x15bf(%rip),%rdi        # 4037db <_IO_stdin_used+0x51b>
  40221c:	e8 1f eb ff ff       	callq  400d40 <puts@plt>
  402221:	b8 00 00 00 00       	mov    $0x0,%eax
  402226:	e8 9d fb ff ff       	callq  401dc8 <check_fail>
  40222b:	48 8d 3d 36 17 00 00 	lea    0x1736(%rip),%rdi        # 403968 <_IO_stdin_used+0x6a8>
  402232:	e8 09 eb ff ff       	callq  400d40 <puts@plt>
  402237:	48 8d 3d 74 15 00 00 	lea    0x1574(%rip),%rdi        # 4037b2 <_IO_stdin_used+0x4f2>
  40223e:	e8 fd ea ff ff       	callq  400d40 <puts@plt>
  402243:	be 00 00 00 00       	mov    $0x0,%esi
  402248:	bf 00 00 00 00       	mov    $0x0,%edi
  40224d:	e8 00 fc ff ff       	callq  401e52 <notify_server>
  402252:	bf 01 00 00 00       	mov    $0x1,%edi
  402257:	e8 54 ec ff ff       	callq  400eb0 <exit@plt>

000000000040225c <sigalrmhandler>:
  40225c:	48 83 ec 08          	sub    $0x8,%rsp
  402260:	83 3d c1 32 20 00 00 	cmpl   $0x0,0x2032c1(%rip)        # 605528 <is_checker>
  402267:	74 16                	je     40227f <sigalrmhandler+0x23>
  402269:	48 8d 3d 7f 15 00 00 	lea    0x157f(%rip),%rdi        # 4037ef <_IO_stdin_used+0x52f>
  402270:	e8 cb ea ff ff       	callq  400d40 <puts@plt>
  402275:	b8 00 00 00 00       	mov    $0x0,%eax
  40227a:	e8 49 fb ff ff       	callq  401dc8 <check_fail>
  40227f:	ba 02 00 00 00       	mov    $0x2,%edx
  402284:	48 8d 35 0d 17 00 00 	lea    0x170d(%rip),%rsi        # 403998 <_IO_stdin_used+0x6d8>
  40228b:	bf 01 00 00 00       	mov    $0x1,%edi
  402290:	b8 00 00 00 00       	mov    $0x0,%eax
  402295:	e8 c6 eb ff ff       	callq  400e60 <__printf_chk@plt>
  40229a:	be 00 00 00 00       	mov    $0x0,%esi
  40229f:	bf 00 00 00 00       	mov    $0x0,%edi
  4022a4:	e8 a9 fb ff ff       	callq  401e52 <notify_server>
  4022a9:	bf 01 00 00 00       	mov    $0x1,%edi
  4022ae:	e8 fd eb ff ff       	callq  400eb0 <exit@plt>

00000000004022b3 <__stack_chk_fail>:
  4022b3:	48 83 ec 08          	sub    $0x8,%rsp
  4022b7:	83 3d 6a 32 20 00 00 	cmpl   $0x0,0x20326a(%rip)        # 605528 <is_checker>
  4022be:	74 16                	je     4022d6 <__stack_chk_fail+0x23>
  4022c0:	48 8d 3d 30 15 00 00 	lea    0x1530(%rip),%rdi        # 4037f7 <_IO_stdin_used+0x537>
  4022c7:	e8 74 ea ff ff       	callq  400d40 <puts@plt>
  4022cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d1:	e8 f2 fa ff ff       	callq  401dc8 <check_fail>
  4022d6:	48 8d 3d f3 16 00 00 	lea    0x16f3(%rip),%rdi        # 4039d0 <_IO_stdin_used+0x710>
  4022dd:	e8 5e ea ff ff       	callq  400d40 <puts@plt>
  4022e2:	48 8d 3d c9 14 00 00 	lea    0x14c9(%rip),%rdi        # 4037b2 <_IO_stdin_used+0x4f2>
  4022e9:	e8 52 ea ff ff       	callq  400d40 <puts@plt>
  4022ee:	be 00 00 00 00       	mov    $0x0,%esi
  4022f3:	bf 00 00 00 00       	mov    $0x0,%edi
  4022f8:	e8 55 fb ff ff       	callq  401e52 <notify_server>
  4022fd:	bf 01 00 00 00       	mov    $0x1,%edi
  402302:	e8 a9 eb ff ff       	callq  400eb0 <exit@plt>

0000000000402307 <launch>:
  402307:	55                   	push   %rbp
  402308:	48 89 e5             	mov    %rsp,%rbp
  40230b:	53                   	push   %rbx
  40230c:	48 83 ec 18          	sub    $0x18,%rsp
  402310:	48 89 fa             	mov    %rdi,%rdx
  402313:	89 f3                	mov    %esi,%ebx
  402315:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40231c:	00 00 
  40231e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402322:	31 c0                	xor    %eax,%eax
  402324:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402328:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40232c:	48 29 c4             	sub    %rax,%rsp
  40232f:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402334:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402338:	be f4 00 00 00       	mov    $0xf4,%esi
  40233d:	e8 2e ea ff ff       	callq  400d70 <memset@plt>
  402342:	48 8b 05 77 31 20 00 	mov    0x203177(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402349:	48 39 05 c0 31 20 00 	cmp    %rax,0x2031c0(%rip)        # 605510 <infile>
  402350:	74 42                	je     402394 <launch+0x8d>
  402352:	c7 05 c0 31 20 00 00 	movl   $0x0,0x2031c0(%rip)        # 60551c <vlevel>
  402359:	00 00 00 
  40235c:	85 db                	test   %ebx,%ebx
  40235e:	75 4c                	jne    4023ac <launch+0xa5>
  402360:	b8 00 00 00 00       	mov    $0x0,%eax
  402365:	e8 05 f8 ff ff       	callq  401b6f <test>
  40236a:	83 3d b7 31 20 00 00 	cmpl   $0x0,0x2031b7(%rip)        # 605528 <is_checker>
  402371:	75 45                	jne    4023b8 <launch+0xb1>
  402373:	48 8d 3d a4 14 00 00 	lea    0x14a4(%rip),%rdi        # 40381e <_IO_stdin_used+0x55e>
  40237a:	e8 c1 e9 ff ff       	callq  400d40 <puts@plt>
  40237f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402383:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40238a:	00 00 
  40238c:	75 40                	jne    4023ce <launch+0xc7>
  40238e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402392:	c9                   	leaveq 
  402393:	c3                   	retq   
  402394:	48 8d 35 6b 14 00 00 	lea    0x146b(%rip),%rsi        # 403806 <_IO_stdin_used+0x546>
  40239b:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a5:	e8 b6 ea ff ff       	callq  400e60 <__printf_chk@plt>
  4023aa:	eb a6                	jmp    402352 <launch+0x4b>
  4023ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b1:	e8 e4 f7 ff ff       	callq  401b9a <test2>
  4023b6:	eb b2                	jmp    40236a <launch+0x63>
  4023b8:	48 8d 3d 54 14 00 00 	lea    0x1454(%rip),%rdi        # 403813 <_IO_stdin_used+0x553>
  4023bf:	e8 7c e9 ff ff       	callq  400d40 <puts@plt>
  4023c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023c9:	e8 fa f9 ff ff       	callq  401dc8 <check_fail>
  4023ce:	e8 e0 fe ff ff       	callq  4022b3 <__stack_chk_fail>

00000000004023d3 <stable_launch>:
  4023d3:	55                   	push   %rbp
  4023d4:	53                   	push   %rbx
  4023d5:	48 83 ec 08          	sub    $0x8,%rsp
  4023d9:	89 f5                	mov    %esi,%ebp
  4023db:	48 89 3d 26 31 20 00 	mov    %rdi,0x203126(%rip)        # 605508 <global_offset>
  4023e2:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4023e8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023ee:	b9 32 01 00 00       	mov    $0x132,%ecx
  4023f3:	ba 07 00 00 00       	mov    $0x7,%edx
  4023f8:	be 00 00 10 00       	mov    $0x100000,%esi
  4023fd:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402402:	e8 59 e9 ff ff       	callq  400d60 <mmap@plt>
  402407:	48 89 c3             	mov    %rax,%rbx
  40240a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402410:	75 4a                	jne    40245c <stable_launch+0x89>
  402412:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402419:	48 89 15 30 3d 20 00 	mov    %rdx,0x203d30(%rip)        # 606150 <stack_top>
  402420:	48 89 e0             	mov    %rsp,%rax
  402423:	48 89 d4             	mov    %rdx,%rsp
  402426:	48 89 c2             	mov    %rax,%rdx
  402429:	48 89 15 d0 30 20 00 	mov    %rdx,0x2030d0(%rip)        # 605500 <global_save_stack>
  402430:	89 ee                	mov    %ebp,%esi
  402432:	48 8b 3d cf 30 20 00 	mov    0x2030cf(%rip),%rdi        # 605508 <global_offset>
  402439:	e8 c9 fe ff ff       	callq  402307 <launch>
  40243e:	48 8b 05 bb 30 20 00 	mov    0x2030bb(%rip),%rax        # 605500 <global_save_stack>
  402445:	48 89 c4             	mov    %rax,%rsp
  402448:	be 00 00 10 00       	mov    $0x100000,%esi
  40244d:	48 89 df             	mov    %rbx,%rdi
  402450:	e8 fb e9 ff ff       	callq  400e50 <munmap@plt>
  402455:	48 83 c4 08          	add    $0x8,%rsp
  402459:	5b                   	pop    %rbx
  40245a:	5d                   	pop    %rbp
  40245b:	c3                   	retq   
  40245c:	be 00 00 10 00       	mov    $0x100000,%esi
  402461:	48 89 c7             	mov    %rax,%rdi
  402464:	e8 e7 e9 ff ff       	callq  400e50 <munmap@plt>
  402469:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40246e:	48 8d 15 83 15 00 00 	lea    0x1583(%rip),%rdx        # 4039f8 <_IO_stdin_used+0x738>
  402475:	be 01 00 00 00       	mov    $0x1,%esi
  40247a:	48 8b 3d 5f 30 20 00 	mov    0x20305f(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402481:	b8 00 00 00 00       	mov    $0x0,%eax
  402486:	e8 45 ea ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40248b:	bf 01 00 00 00       	mov    $0x1,%edi
  402490:	e8 1b ea ff ff       	callq  400eb0 <exit@plt>

0000000000402495 <rio_readinitb>:
  402495:	89 37                	mov    %esi,(%rdi)
  402497:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40249e:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4024a2:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4024a6:	c3                   	retq   

00000000004024a7 <sigalrm_handler>:
  4024a7:	48 83 ec 08          	sub    $0x8,%rsp
  4024ab:	b9 00 00 00 00       	mov    $0x0,%ecx
  4024b0:	48 8d 15 79 15 00 00 	lea    0x1579(%rip),%rdx        # 403a30 <trans_char+0x10>
  4024b7:	be 01 00 00 00       	mov    $0x1,%esi
  4024bc:	48 8b 3d 1d 30 20 00 	mov    0x20301d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4024c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c8:	e8 03 ea ff ff       	callq  400ed0 <__fprintf_chk@plt>
  4024cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4024d2:	e8 d9 e9 ff ff       	callq  400eb0 <exit@plt>

00000000004024d7 <rio_writen>:
  4024d7:	41 55                	push   %r13
  4024d9:	41 54                	push   %r12
  4024db:	55                   	push   %rbp
  4024dc:	53                   	push   %rbx
  4024dd:	48 83 ec 08          	sub    $0x8,%rsp
  4024e1:	41 89 fc             	mov    %edi,%r12d
  4024e4:	48 89 f5             	mov    %rsi,%rbp
  4024e7:	49 89 d5             	mov    %rdx,%r13
  4024ea:	48 89 d3             	mov    %rdx,%rbx
  4024ed:	eb 06                	jmp    4024f5 <rio_writen+0x1e>
  4024ef:	48 29 c3             	sub    %rax,%rbx
  4024f2:	48 01 c5             	add    %rax,%rbp
  4024f5:	48 85 db             	test   %rbx,%rbx
  4024f8:	74 24                	je     40251e <rio_writen+0x47>
  4024fa:	48 89 da             	mov    %rbx,%rdx
  4024fd:	48 89 ee             	mov    %rbp,%rsi
  402500:	44 89 e7             	mov    %r12d,%edi
  402503:	e8 48 e8 ff ff       	callq  400d50 <write@plt>
  402508:	48 85 c0             	test   %rax,%rax
  40250b:	7f e2                	jg     4024ef <rio_writen+0x18>
  40250d:	e8 de e7 ff ff       	callq  400cf0 <__errno_location@plt>
  402512:	83 38 04             	cmpl   $0x4,(%rax)
  402515:	75 15                	jne    40252c <rio_writen+0x55>
  402517:	b8 00 00 00 00       	mov    $0x0,%eax
  40251c:	eb d1                	jmp    4024ef <rio_writen+0x18>
  40251e:	4c 89 e8             	mov    %r13,%rax
  402521:	48 83 c4 08          	add    $0x8,%rsp
  402525:	5b                   	pop    %rbx
  402526:	5d                   	pop    %rbp
  402527:	41 5c                	pop    %r12
  402529:	41 5d                	pop    %r13
  40252b:	c3                   	retq   
  40252c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402533:	eb ec                	jmp    402521 <rio_writen+0x4a>

0000000000402535 <rio_read>:
  402535:	41 55                	push   %r13
  402537:	41 54                	push   %r12
  402539:	55                   	push   %rbp
  40253a:	53                   	push   %rbx
  40253b:	48 83 ec 08          	sub    $0x8,%rsp
  40253f:	48 89 fb             	mov    %rdi,%rbx
  402542:	49 89 f5             	mov    %rsi,%r13
  402545:	49 89 d4             	mov    %rdx,%r12
  402548:	eb 0a                	jmp    402554 <rio_read+0x1f>
  40254a:	e8 a1 e7 ff ff       	callq  400cf0 <__errno_location@plt>
  40254f:	83 38 04             	cmpl   $0x4,(%rax)
  402552:	75 5c                	jne    4025b0 <rio_read+0x7b>
  402554:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402557:	85 ed                	test   %ebp,%ebp
  402559:	7f 24                	jg     40257f <rio_read+0x4a>
  40255b:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40255f:	8b 3b                	mov    (%rbx),%edi
  402561:	ba 00 20 00 00       	mov    $0x2000,%edx
  402566:	48 89 ee             	mov    %rbp,%rsi
  402569:	e8 32 e8 ff ff       	callq  400da0 <read@plt>
  40256e:	89 43 04             	mov    %eax,0x4(%rbx)
  402571:	85 c0                	test   %eax,%eax
  402573:	78 d5                	js     40254a <rio_read+0x15>
  402575:	85 c0                	test   %eax,%eax
  402577:	74 40                	je     4025b9 <rio_read+0x84>
  402579:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40257d:	eb d5                	jmp    402554 <rio_read+0x1f>
  40257f:	89 e8                	mov    %ebp,%eax
  402581:	4c 39 e0             	cmp    %r12,%rax
  402584:	72 03                	jb     402589 <rio_read+0x54>
  402586:	44 89 e5             	mov    %r12d,%ebp
  402589:	4c 63 e5             	movslq %ebp,%r12
  40258c:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402590:	4c 89 e2             	mov    %r12,%rdx
  402593:	4c 89 ef             	mov    %r13,%rdi
  402596:	e8 65 e8 ff ff       	callq  400e00 <memcpy@plt>
  40259b:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40259f:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4025a2:	4c 89 e0             	mov    %r12,%rax
  4025a5:	48 83 c4 08          	add    $0x8,%rsp
  4025a9:	5b                   	pop    %rbx
  4025aa:	5d                   	pop    %rbp
  4025ab:	41 5c                	pop    %r12
  4025ad:	41 5d                	pop    %r13
  4025af:	c3                   	retq   
  4025b0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4025b7:	eb ec                	jmp    4025a5 <rio_read+0x70>
  4025b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4025be:	eb e5                	jmp    4025a5 <rio_read+0x70>

00000000004025c0 <rio_readlineb>:
  4025c0:	41 55                	push   %r13
  4025c2:	41 54                	push   %r12
  4025c4:	55                   	push   %rbp
  4025c5:	53                   	push   %rbx
  4025c6:	48 83 ec 18          	sub    $0x18,%rsp
  4025ca:	49 89 fd             	mov    %rdi,%r13
  4025cd:	48 89 f5             	mov    %rsi,%rbp
  4025d0:	49 89 d4             	mov    %rdx,%r12
  4025d3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025da:	00 00 
  4025dc:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4025e1:	31 c0                	xor    %eax,%eax
  4025e3:	bb 01 00 00 00       	mov    $0x1,%ebx
  4025e8:	4c 39 e3             	cmp    %r12,%rbx
  4025eb:	73 47                	jae    402634 <rio_readlineb+0x74>
  4025ed:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4025f2:	ba 01 00 00 00       	mov    $0x1,%edx
  4025f7:	4c 89 ef             	mov    %r13,%rdi
  4025fa:	e8 36 ff ff ff       	callq  402535 <rio_read>
  4025ff:	83 f8 01             	cmp    $0x1,%eax
  402602:	75 1c                	jne    402620 <rio_readlineb+0x60>
  402604:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402608:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40260d:	88 55 00             	mov    %dl,0x0(%rbp)
  402610:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402615:	74 1a                	je     402631 <rio_readlineb+0x71>
  402617:	48 83 c3 01          	add    $0x1,%rbx
  40261b:	48 89 c5             	mov    %rax,%rbp
  40261e:	eb c8                	jmp    4025e8 <rio_readlineb+0x28>
  402620:	85 c0                	test   %eax,%eax
  402622:	75 32                	jne    402656 <rio_readlineb+0x96>
  402624:	48 83 fb 01          	cmp    $0x1,%rbx
  402628:	75 0a                	jne    402634 <rio_readlineb+0x74>
  40262a:	b8 00 00 00 00       	mov    $0x0,%eax
  40262f:	eb 0a                	jmp    40263b <rio_readlineb+0x7b>
  402631:	48 89 c5             	mov    %rax,%rbp
  402634:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402638:	48 89 d8             	mov    %rbx,%rax
  40263b:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402640:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402647:	00 00 
  402649:	75 14                	jne    40265f <rio_readlineb+0x9f>
  40264b:	48 83 c4 18          	add    $0x18,%rsp
  40264f:	5b                   	pop    %rbx
  402650:	5d                   	pop    %rbp
  402651:	41 5c                	pop    %r12
  402653:	41 5d                	pop    %r13
  402655:	c3                   	retq   
  402656:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40265d:	eb dc                	jmp    40263b <rio_readlineb+0x7b>
  40265f:	e8 4f fc ff ff       	callq  4022b3 <__stack_chk_fail>

0000000000402664 <urlencode>:
  402664:	41 54                	push   %r12
  402666:	55                   	push   %rbp
  402667:	53                   	push   %rbx
  402668:	48 83 ec 10          	sub    $0x10,%rsp
  40266c:	48 89 fb             	mov    %rdi,%rbx
  40266f:	48 89 f5             	mov    %rsi,%rbp
  402672:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402679:	00 00 
  40267b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402680:	31 c0                	xor    %eax,%eax
  402682:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402689:	f2 ae                	repnz scas %es:(%rdi),%al
  40268b:	48 89 ce             	mov    %rcx,%rsi
  40268e:	48 f7 d6             	not    %rsi
  402691:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402694:	eb 0f                	jmp    4026a5 <urlencode+0x41>
  402696:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40269a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40269e:	48 83 c3 01          	add    $0x1,%rbx
  4026a2:	44 89 e0             	mov    %r12d,%eax
  4026a5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4026a9:	85 c0                	test   %eax,%eax
  4026ab:	0f 84 a8 00 00 00    	je     402759 <urlencode+0xf5>
  4026b1:	44 0f b6 03          	movzbl (%rbx),%r8d
  4026b5:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4026b9:	0f 94 c2             	sete   %dl
  4026bc:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4026c0:	0f 94 c0             	sete   %al
  4026c3:	08 c2                	or     %al,%dl
  4026c5:	75 cf                	jne    402696 <urlencode+0x32>
  4026c7:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4026cb:	74 c9                	je     402696 <urlencode+0x32>
  4026cd:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4026d1:	74 c3                	je     402696 <urlencode+0x32>
  4026d3:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4026d7:	3c 09                	cmp    $0x9,%al
  4026d9:	76 bb                	jbe    402696 <urlencode+0x32>
  4026db:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4026df:	3c 19                	cmp    $0x19,%al
  4026e1:	76 b3                	jbe    402696 <urlencode+0x32>
  4026e3:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4026e7:	3c 19                	cmp    $0x19,%al
  4026e9:	76 ab                	jbe    402696 <urlencode+0x32>
  4026eb:	41 80 f8 20          	cmp    $0x20,%r8b
  4026ef:	74 56                	je     402747 <urlencode+0xe3>
  4026f1:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4026f5:	3c 5f                	cmp    $0x5f,%al
  4026f7:	0f 96 c2             	setbe  %dl
  4026fa:	41 80 f8 09          	cmp    $0x9,%r8b
  4026fe:	0f 94 c0             	sete   %al
  402701:	08 c2                	or     %al,%dl
  402703:	74 4f                	je     402754 <urlencode+0xf0>
  402705:	48 89 e7             	mov    %rsp,%rdi
  402708:	45 0f b6 c0          	movzbl %r8b,%r8d
  40270c:	48 8d 0d d5 13 00 00 	lea    0x13d5(%rip),%rcx        # 403ae8 <trans_char+0xc8>
  402713:	ba 08 00 00 00       	mov    $0x8,%edx
  402718:	be 01 00 00 00       	mov    $0x1,%esi
  40271d:	b8 00 00 00 00       	mov    $0x0,%eax
  402722:	e8 b9 e7 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402727:	0f b6 04 24          	movzbl (%rsp),%eax
  40272b:	88 45 00             	mov    %al,0x0(%rbp)
  40272e:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402733:	88 45 01             	mov    %al,0x1(%rbp)
  402736:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40273b:	88 45 02             	mov    %al,0x2(%rbp)
  40273e:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402742:	e9 57 ff ff ff       	jmpq   40269e <urlencode+0x3a>
  402747:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40274b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40274f:	e9 4a ff ff ff       	jmpq   40269e <urlencode+0x3a>
  402754:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402759:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40275e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402765:	00 00 
  402767:	75 09                	jne    402772 <urlencode+0x10e>
  402769:	48 83 c4 10          	add    $0x10,%rsp
  40276d:	5b                   	pop    %rbx
  40276e:	5d                   	pop    %rbp
  40276f:	41 5c                	pop    %r12
  402771:	c3                   	retq   
  402772:	e8 3c fb ff ff       	callq  4022b3 <__stack_chk_fail>

0000000000402777 <submitr>:
  402777:	41 57                	push   %r15
  402779:	41 56                	push   %r14
  40277b:	41 55                	push   %r13
  40277d:	41 54                	push   %r12
  40277f:	55                   	push   %rbp
  402780:	53                   	push   %rbx
  402781:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402788:	49 89 fd             	mov    %rdi,%r13
  40278b:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  40278f:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402794:	49 89 ce             	mov    %rcx,%r14
  402797:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40279c:	4d 89 cf             	mov    %r9,%r15
  40279f:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  4027a6:	00 
  4027a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027ae:	00 00 
  4027b0:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4027b7:	00 
  4027b8:	31 c0                	xor    %eax,%eax
  4027ba:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4027c1:	00 
  4027c2:	ba 00 00 00 00       	mov    $0x0,%edx
  4027c7:	be 01 00 00 00       	mov    $0x1,%esi
  4027cc:	bf 02 00 00 00       	mov    $0x2,%edi
  4027d1:	e8 1a e7 ff ff       	callq  400ef0 <socket@plt>
  4027d6:	85 c0                	test   %eax,%eax
  4027d8:	0f 88 ae 02 00 00    	js     402a8c <submitr+0x315>
  4027de:	89 c3                	mov    %eax,%ebx
  4027e0:	4c 89 ef             	mov    %r13,%rdi
  4027e3:	e8 e8 e5 ff ff       	callq  400dd0 <gethostbyname@plt>
  4027e8:	48 85 c0             	test   %rax,%rax
  4027eb:	0f 84 e7 02 00 00    	je     402ad8 <submitr+0x361>
  4027f1:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4027f6:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4027fd:	00 00 
  4027ff:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  402806:	00 
  402807:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  40280e:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402815:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402819:	48 8b 40 18          	mov    0x18(%rax),%rax
  40281d:	48 8b 30             	mov    (%rax),%rsi
  402820:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402825:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40282a:	e8 b1 e5 ff ff       	callq  400de0 <__memmove_chk@plt>
  40282f:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402834:	66 c1 c8 08          	ror    $0x8,%ax
  402838:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40283d:	ba 10 00 00 00       	mov    $0x10,%edx
  402842:	4c 89 e6             	mov    %r12,%rsi
  402845:	89 df                	mov    %ebx,%edi
  402847:	e8 74 e6 ff ff       	callq  400ec0 <connect@plt>
  40284c:	85 c0                	test   %eax,%eax
  40284e:	0f 88 fa 02 00 00    	js     402b4e <submitr+0x3d7>
  402854:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40285b:	b8 00 00 00 00       	mov    $0x0,%eax
  402860:	48 89 f1             	mov    %rsi,%rcx
  402863:	4c 89 ff             	mov    %r15,%rdi
  402866:	f2 ae                	repnz scas %es:(%rdi),%al
  402868:	48 89 ca             	mov    %rcx,%rdx
  40286b:	48 f7 d2             	not    %rdx
  40286e:	48 89 f1             	mov    %rsi,%rcx
  402871:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402876:	f2 ae                	repnz scas %es:(%rdi),%al
  402878:	48 f7 d1             	not    %rcx
  40287b:	49 89 c8             	mov    %rcx,%r8
  40287e:	48 89 f1             	mov    %rsi,%rcx
  402881:	4c 89 f7             	mov    %r14,%rdi
  402884:	f2 ae                	repnz scas %es:(%rdi),%al
  402886:	48 f7 d1             	not    %rcx
  402889:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40288e:	48 89 f1             	mov    %rsi,%rcx
  402891:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402896:	f2 ae                	repnz scas %es:(%rdi),%al
  402898:	48 89 c8             	mov    %rcx,%rax
  40289b:	48 f7 d0             	not    %rax
  40289e:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4028a3:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4028a8:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4028af:	00 
  4028b0:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4028b6:	0f 87 fa 02 00 00    	ja     402bb6 <submitr+0x43f>
  4028bc:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4028c3:	00 
  4028c4:	b9 00 04 00 00       	mov    $0x400,%ecx
  4028c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4028ce:	48 89 f7             	mov    %rsi,%rdi
  4028d1:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4028d4:	4c 89 ff             	mov    %r15,%rdi
  4028d7:	e8 88 fd ff ff       	callq  402664 <urlencode>
  4028dc:	85 c0                	test   %eax,%eax
  4028de:	0f 88 45 03 00 00    	js     402c29 <submitr+0x4b2>
  4028e4:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4028eb:	00 
  4028ec:	48 83 ec 08          	sub    $0x8,%rsp
  4028f0:	41 55                	push   %r13
  4028f2:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  4028f9:	00 
  4028fa:	50                   	push   %rax
  4028fb:	41 56                	push   %r14
  4028fd:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402902:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402907:	48 8d 0d 4a 11 00 00 	lea    0x114a(%rip),%rcx        # 403a58 <trans_char+0x38>
  40290e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402913:	be 01 00 00 00       	mov    $0x1,%esi
  402918:	4c 89 e7             	mov    %r12,%rdi
  40291b:	b8 00 00 00 00       	mov    $0x0,%eax
  402920:	e8 bb e5 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402925:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40292c:	b8 00 00 00 00       	mov    $0x0,%eax
  402931:	4c 89 e7             	mov    %r12,%rdi
  402934:	f2 ae                	repnz scas %es:(%rdi),%al
  402936:	48 89 ca             	mov    %rcx,%rdx
  402939:	48 f7 d2             	not    %rdx
  40293c:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402940:	48 83 c4 20          	add    $0x20,%rsp
  402944:	4c 89 e6             	mov    %r12,%rsi
  402947:	89 df                	mov    %ebx,%edi
  402949:	e8 89 fb ff ff       	callq  4024d7 <rio_writen>
  40294e:	48 85 c0             	test   %rax,%rax
  402951:	0f 88 5d 03 00 00    	js     402cb4 <submitr+0x53d>
  402957:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40295c:	89 de                	mov    %ebx,%esi
  40295e:	4c 89 e7             	mov    %r12,%rdi
  402961:	e8 2f fb ff ff       	callq  402495 <rio_readinitb>
  402966:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40296d:	00 
  40296e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402973:	4c 89 e7             	mov    %r12,%rdi
  402976:	e8 45 fc ff ff       	callq  4025c0 <rio_readlineb>
  40297b:	48 85 c0             	test   %rax,%rax
  40297e:	0f 8e 9c 03 00 00    	jle    402d20 <submitr+0x5a9>
  402984:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402989:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402990:	00 
  402991:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402998:	00 
  402999:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  4029a0:	00 
  4029a1:	48 8d 35 47 11 00 00 	lea    0x1147(%rip),%rsi        # 403aef <trans_char+0xcf>
  4029a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ad:	e8 8e e4 ff ff       	callq  400e40 <__isoc99_sscanf@plt>
  4029b2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4029b9:	00 
  4029ba:	b9 03 00 00 00       	mov    $0x3,%ecx
  4029bf:	48 8d 3d 40 11 00 00 	lea    0x1140(%rip),%rdi        # 403b06 <trans_char+0xe6>
  4029c6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4029c8:	0f 97 c0             	seta   %al
  4029cb:	1c 00                	sbb    $0x0,%al
  4029cd:	84 c0                	test   %al,%al
  4029cf:	0f 84 cb 03 00 00    	je     402da0 <submitr+0x629>
  4029d5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4029dc:	00 
  4029dd:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4029e2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029e7:	e8 d4 fb ff ff       	callq  4025c0 <rio_readlineb>
  4029ec:	48 85 c0             	test   %rax,%rax
  4029ef:	7f c1                	jg     4029b2 <submitr+0x23b>
  4029f1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029f8:	3a 20 43 
  4029fb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a02:	20 75 6e 
  402a05:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a09:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a0d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a14:	74 6f 20 
  402a17:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402a1e:	68 65 61 
  402a21:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a25:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a29:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a30:	66 72 6f 
  402a33:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402a3a:	6f 6c 61 
  402a3d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a41:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a45:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402a4c:	76 65 72 
  402a4f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a53:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402a57:	89 df                	mov    %ebx,%edi
  402a59:	e8 32 e3 ff ff       	callq  400d90 <close@plt>
  402a5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a63:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402a6a:	00 
  402a6b:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402a72:	00 00 
  402a74:	0f 85 96 04 00 00    	jne    402f10 <submitr+0x799>
  402a7a:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402a81:	5b                   	pop    %rbx
  402a82:	5d                   	pop    %rbp
  402a83:	41 5c                	pop    %r12
  402a85:	41 5d                	pop    %r13
  402a87:	41 5e                	pop    %r14
  402a89:	41 5f                	pop    %r15
  402a8b:	c3                   	retq   
  402a8c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a93:	3a 20 43 
  402a96:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a9d:	20 75 6e 
  402aa0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aa4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aa8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402aaf:	74 6f 20 
  402ab2:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402ab9:	65 20 73 
  402abc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ac0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ac4:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402acb:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402ad1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ad6:	eb 8b                	jmp    402a63 <submitr+0x2ec>
  402ad8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402adf:	3a 20 44 
  402ae2:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402ae9:	20 75 6e 
  402aec:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402af0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402af4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402afb:	74 6f 20 
  402afe:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402b05:	76 65 20 
  402b08:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b0c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b10:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402b17:	61 62 20 
  402b1a:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402b21:	72 20 61 
  402b24:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b28:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b2c:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402b33:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402b39:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402b3d:	89 df                	mov    %ebx,%edi
  402b3f:	e8 4c e2 ff ff       	callq  400d90 <close@plt>
  402b44:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b49:	e9 15 ff ff ff       	jmpq   402a63 <submitr+0x2ec>
  402b4e:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b55:	3a 20 55 
  402b58:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402b5f:	20 74 6f 
  402b62:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b66:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b6a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b71:	65 63 74 
  402b74:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402b7b:	68 65 20 
  402b7e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b82:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b86:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402b8d:	61 62 20 
  402b90:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b94:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  402b9b:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  402ba1:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402ba5:	89 df                	mov    %ebx,%edi
  402ba7:	e8 e4 e1 ff ff       	callq  400d90 <close@plt>
  402bac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bb1:	e9 ad fe ff ff       	jmpq   402a63 <submitr+0x2ec>
  402bb6:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402bbd:	3a 20 52 
  402bc0:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402bc7:	20 73 74 
  402bca:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bce:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bd2:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402bd9:	74 6f 6f 
  402bdc:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402be3:	65 2e 20 
  402be6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bea:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bee:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402bf5:	61 73 65 
  402bf8:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402bff:	49 54 52 
  402c02:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c06:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c0a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402c11:	55 46 00 
  402c14:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c18:	89 df                	mov    %ebx,%edi
  402c1a:	e8 71 e1 ff ff       	callq  400d90 <close@plt>
  402c1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c24:	e9 3a fe ff ff       	jmpq   402a63 <submitr+0x2ec>
  402c29:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402c30:	3a 20 52 
  402c33:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c3a:	20 73 74 
  402c3d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c41:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c45:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402c4c:	63 6f 6e 
  402c4f:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402c56:	20 61 6e 
  402c59:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c5d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c61:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402c68:	67 61 6c 
  402c6b:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402c72:	6e 70 72 
  402c75:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c79:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c7d:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402c84:	6c 65 20 
  402c87:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402c8e:	63 74 65 
  402c91:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c95:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402c99:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402c9f:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402ca3:	89 df                	mov    %ebx,%edi
  402ca5:	e8 e6 e0 ff ff       	callq  400d90 <close@plt>
  402caa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402caf:	e9 af fd ff ff       	jmpq   402a63 <submitr+0x2ec>
  402cb4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cbb:	3a 20 43 
  402cbe:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402cc5:	20 75 6e 
  402cc8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ccc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402cd0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cd7:	74 6f 20 
  402cda:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402ce1:	20 74 6f 
  402ce4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ce8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402cec:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402cf3:	41 75 74 
  402cf6:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402cfd:	73 65 72 
  402d00:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d04:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d08:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402d0f:	89 df                	mov    %ebx,%edi
  402d11:	e8 7a e0 ff ff       	callq  400d90 <close@plt>
  402d16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d1b:	e9 43 fd ff ff       	jmpq   402a63 <submitr+0x2ec>
  402d20:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d27:	3a 20 43 
  402d2a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d31:	20 75 6e 
  402d34:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d38:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d3c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d43:	74 6f 20 
  402d46:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402d4d:	66 69 72 
  402d50:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d54:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d58:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402d5f:	61 64 65 
  402d62:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402d69:	6d 20 41 
  402d6c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d70:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d74:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402d7b:	62 20 73 
  402d7e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d82:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402d89:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402d8f:	89 df                	mov    %ebx,%edi
  402d91:	e8 fa df ff ff       	callq  400d90 <close@plt>
  402d96:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d9b:	e9 c3 fc ff ff       	jmpq   402a63 <submitr+0x2ec>
  402da0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402da7:	00 
  402da8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402dad:	ba 00 20 00 00       	mov    $0x2000,%edx
  402db2:	e8 09 f8 ff ff       	callq  4025c0 <rio_readlineb>
  402db7:	48 85 c0             	test   %rax,%rax
  402dba:	0f 8e 96 00 00 00    	jle    402e56 <submitr+0x6df>
  402dc0:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402dc5:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402dcc:	0f 85 05 01 00 00    	jne    402ed7 <submitr+0x760>
  402dd2:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402dd9:	00 
  402dda:	48 89 ef             	mov    %rbp,%rdi
  402ddd:	e8 4e df ff ff       	callq  400d30 <strcpy@plt>
  402de2:	89 df                	mov    %ebx,%edi
  402de4:	e8 a7 df ff ff       	callq  400d90 <close@plt>
  402de9:	b9 04 00 00 00       	mov    $0x4,%ecx
  402dee:	48 8d 3d 0b 0d 00 00 	lea    0xd0b(%rip),%rdi        # 403b00 <trans_char+0xe0>
  402df5:	48 89 ee             	mov    %rbp,%rsi
  402df8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402dfa:	0f 97 c0             	seta   %al
  402dfd:	1c 00                	sbb    $0x0,%al
  402dff:	0f be c0             	movsbl %al,%eax
  402e02:	85 c0                	test   %eax,%eax
  402e04:	0f 84 59 fc ff ff    	je     402a63 <submitr+0x2ec>
  402e0a:	b9 05 00 00 00       	mov    $0x5,%ecx
  402e0f:	48 8d 3d ee 0c 00 00 	lea    0xcee(%rip),%rdi        # 403b04 <trans_char+0xe4>
  402e16:	48 89 ee             	mov    %rbp,%rsi
  402e19:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e1b:	0f 97 c0             	seta   %al
  402e1e:	1c 00                	sbb    $0x0,%al
  402e20:	0f be c0             	movsbl %al,%eax
  402e23:	85 c0                	test   %eax,%eax
  402e25:	0f 84 38 fc ff ff    	je     402a63 <submitr+0x2ec>
  402e2b:	b9 03 00 00 00       	mov    $0x3,%ecx
  402e30:	48 8d 3d d2 0c 00 00 	lea    0xcd2(%rip),%rdi        # 403b09 <trans_char+0xe9>
  402e37:	48 89 ee             	mov    %rbp,%rsi
  402e3a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e3c:	0f 97 c0             	seta   %al
  402e3f:	1c 00                	sbb    $0x0,%al
  402e41:	0f be c0             	movsbl %al,%eax
  402e44:	85 c0                	test   %eax,%eax
  402e46:	0f 84 17 fc ff ff    	je     402a63 <submitr+0x2ec>
  402e4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e51:	e9 0d fc ff ff       	jmpq   402a63 <submitr+0x2ec>
  402e56:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e5d:	3a 20 43 
  402e60:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e67:	20 75 6e 
  402e6a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e6e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402e72:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e79:	74 6f 20 
  402e7c:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402e83:	73 74 61 
  402e86:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e8a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402e8e:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402e95:	65 73 73 
  402e98:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402e9f:	72 6f 6d 
  402ea2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ea6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402eaa:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402eb1:	6c 61 62 
  402eb4:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402ebb:	65 72 00 
  402ebe:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ec2:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402ec6:	89 df                	mov    %ebx,%edi
  402ec8:	e8 c3 de ff ff       	callq  400d90 <close@plt>
  402ecd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ed2:	e9 8c fb ff ff       	jmpq   402a63 <submitr+0x2ec>
  402ed7:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402ede:	00 
  402edf:	48 8d 0d d2 0b 00 00 	lea    0xbd2(%rip),%rcx        # 403ab8 <trans_char+0x98>
  402ee6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402eed:	be 01 00 00 00       	mov    $0x1,%esi
  402ef2:	48 89 ef             	mov    %rbp,%rdi
  402ef5:	b8 00 00 00 00       	mov    $0x0,%eax
  402efa:	e8 e1 df ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402eff:	89 df                	mov    %ebx,%edi
  402f01:	e8 8a de ff ff       	callq  400d90 <close@plt>
  402f06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f0b:	e9 53 fb ff ff       	jmpq   402a63 <submitr+0x2ec>
  402f10:	e8 9e f3 ff ff       	callq  4022b3 <__stack_chk_fail>

0000000000402f15 <init_timeout>:
  402f15:	85 ff                	test   %edi,%edi
  402f17:	74 28                	je     402f41 <init_timeout+0x2c>
  402f19:	53                   	push   %rbx
  402f1a:	89 fb                	mov    %edi,%ebx
  402f1c:	85 ff                	test   %edi,%edi
  402f1e:	78 1a                	js     402f3a <init_timeout+0x25>
  402f20:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 4024a7 <sigalrm_handler>
  402f27:	bf 0e 00 00 00       	mov    $0xe,%edi
  402f2c:	e8 8f de ff ff       	callq  400dc0 <signal@plt>
  402f31:	89 df                	mov    %ebx,%edi
  402f33:	e8 48 de ff ff       	callq  400d80 <alarm@plt>
  402f38:	5b                   	pop    %rbx
  402f39:	c3                   	retq   
  402f3a:	bb 00 00 00 00       	mov    $0x0,%ebx
  402f3f:	eb df                	jmp    402f20 <init_timeout+0xb>
  402f41:	f3 c3                	repz retq 

0000000000402f43 <init_driver>:
  402f43:	41 54                	push   %r12
  402f45:	55                   	push   %rbp
  402f46:	53                   	push   %rbx
  402f47:	48 83 ec 20          	sub    $0x20,%rsp
  402f4b:	49 89 fc             	mov    %rdi,%r12
  402f4e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f55:	00 00 
  402f57:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402f5c:	31 c0                	xor    %eax,%eax
  402f5e:	be 01 00 00 00       	mov    $0x1,%esi
  402f63:	bf 0d 00 00 00       	mov    $0xd,%edi
  402f68:	e8 53 de ff ff       	callq  400dc0 <signal@plt>
  402f6d:	be 01 00 00 00       	mov    $0x1,%esi
  402f72:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402f77:	e8 44 de ff ff       	callq  400dc0 <signal@plt>
  402f7c:	be 01 00 00 00       	mov    $0x1,%esi
  402f81:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402f86:	e8 35 de ff ff       	callq  400dc0 <signal@plt>
  402f8b:	ba 00 00 00 00       	mov    $0x0,%edx
  402f90:	be 01 00 00 00       	mov    $0x1,%esi
  402f95:	bf 02 00 00 00       	mov    $0x2,%edi
  402f9a:	e8 51 df ff ff       	callq  400ef0 <socket@plt>
  402f9f:	85 c0                	test   %eax,%eax
  402fa1:	0f 88 a3 00 00 00    	js     40304a <init_driver+0x107>
  402fa7:	89 c3                	mov    %eax,%ebx
  402fa9:	48 8d 3d 5c 0b 00 00 	lea    0xb5c(%rip),%rdi        # 403b0c <trans_char+0xec>
  402fb0:	e8 1b de ff ff       	callq  400dd0 <gethostbyname@plt>
  402fb5:	48 85 c0             	test   %rax,%rax
  402fb8:	0f 84 df 00 00 00    	je     40309d <init_driver+0x15a>
  402fbe:	48 89 e5             	mov    %rsp,%rbp
  402fc1:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402fc8:	00 00 
  402fca:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402fd1:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402fd7:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402fdd:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402fe1:	48 8b 40 18          	mov    0x18(%rax),%rax
  402fe5:	48 8b 30             	mov    (%rax),%rsi
  402fe8:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402fec:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ff1:	e8 ea dd ff ff       	callq  400de0 <__memmove_chk@plt>
  402ff6:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  402ffd:	ba 10 00 00 00       	mov    $0x10,%edx
  403002:	48 89 ee             	mov    %rbp,%rsi
  403005:	89 df                	mov    %ebx,%edi
  403007:	e8 b4 de ff ff       	callq  400ec0 <connect@plt>
  40300c:	85 c0                	test   %eax,%eax
  40300e:	0f 88 fb 00 00 00    	js     40310f <init_driver+0x1cc>
  403014:	89 df                	mov    %ebx,%edi
  403016:	e8 75 dd ff ff       	callq  400d90 <close@plt>
  40301b:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  403022:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  403028:	b8 00 00 00 00       	mov    $0x0,%eax
  40302d:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403032:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403039:	00 00 
  40303b:	0f 85 28 01 00 00    	jne    403169 <init_driver+0x226>
  403041:	48 83 c4 20          	add    $0x20,%rsp
  403045:	5b                   	pop    %rbx
  403046:	5d                   	pop    %rbp
  403047:	41 5c                	pop    %r12
  403049:	c3                   	retq   
  40304a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403051:	3a 20 43 
  403054:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40305b:	20 75 6e 
  40305e:	49 89 04 24          	mov    %rax,(%r12)
  403062:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403067:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40306e:	74 6f 20 
  403071:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403078:	65 20 73 
  40307b:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403080:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403085:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  40308c:	6b 65 
  40308e:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  403095:	00 
  403096:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40309b:	eb 90                	jmp    40302d <init_driver+0xea>
  40309d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4030a4:	3a 20 44 
  4030a7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4030ae:	20 75 6e 
  4030b1:	49 89 04 24          	mov    %rax,(%r12)
  4030b5:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  4030ba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030c1:	74 6f 20 
  4030c4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4030cb:	76 65 20 
  4030ce:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4030d3:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4030d8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4030df:	72 20 61 
  4030e2:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  4030e7:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  4030ee:	72 65 
  4030f0:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  4030f7:	73 
  4030f8:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  4030fe:	89 df                	mov    %ebx,%edi
  403100:	e8 8b dc ff ff       	callq  400d90 <close@plt>
  403105:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40310a:	e9 1e ff ff ff       	jmpq   40302d <init_driver+0xea>
  40310f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403116:	3a 20 55 
  403119:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403120:	20 74 6f 
  403123:	49 89 04 24          	mov    %rax,(%r12)
  403127:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40312c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403133:	65 63 74 
  403136:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40313d:	65 72 76 
  403140:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403145:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40314a:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403151:	72 
  403152:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  403158:	89 df                	mov    %ebx,%edi
  40315a:	e8 31 dc ff ff       	callq  400d90 <close@plt>
  40315f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403164:	e9 c4 fe ff ff       	jmpq   40302d <init_driver+0xea>
  403169:	e8 45 f1 ff ff       	callq  4022b3 <__stack_chk_fail>

000000000040316e <driver_post>:
  40316e:	53                   	push   %rbx
  40316f:	4c 89 cb             	mov    %r9,%rbx
  403172:	45 85 c0             	test   %r8d,%r8d
  403175:	75 18                	jne    40318f <driver_post+0x21>
  403177:	48 85 ff             	test   %rdi,%rdi
  40317a:	74 05                	je     403181 <driver_post+0x13>
  40317c:	80 3f 00             	cmpb   $0x0,(%rdi)
  40317f:	75 37                	jne    4031b8 <driver_post+0x4a>
  403181:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403186:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40318a:	44 89 c0             	mov    %r8d,%eax
  40318d:	5b                   	pop    %rbx
  40318e:	c3                   	retq   
  40318f:	48 89 ca             	mov    %rcx,%rdx
  403192:	48 8d 35 83 09 00 00 	lea    0x983(%rip),%rsi        # 403b1c <trans_char+0xfc>
  403199:	bf 01 00 00 00       	mov    $0x1,%edi
  40319e:	b8 00 00 00 00       	mov    $0x0,%eax
  4031a3:	e8 b8 dc ff ff       	callq  400e60 <__printf_chk@plt>
  4031a8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4031ad:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4031b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4031b6:	eb d5                	jmp    40318d <driver_post+0x1f>
  4031b8:	48 83 ec 08          	sub    $0x8,%rsp
  4031bc:	41 51                	push   %r9
  4031be:	49 89 c9             	mov    %rcx,%r9
  4031c1:	49 89 d0             	mov    %rdx,%r8
  4031c4:	48 89 f9             	mov    %rdi,%rcx
  4031c7:	48 89 f2             	mov    %rsi,%rdx
  4031ca:	be b8 0b 00 00       	mov    $0xbb8,%esi
  4031cf:	48 8d 3d 36 09 00 00 	lea    0x936(%rip),%rdi        # 403b0c <trans_char+0xec>
  4031d6:	e8 9c f5 ff ff       	callq  402777 <submitr>
  4031db:	48 83 c4 10          	add    $0x10,%rsp
  4031df:	eb ac                	jmp    40318d <driver_post+0x1f>

00000000004031e1 <check>:
  4031e1:	89 f8                	mov    %edi,%eax
  4031e3:	c1 e8 1c             	shr    $0x1c,%eax
  4031e6:	85 c0                	test   %eax,%eax
  4031e8:	74 1d                	je     403207 <check+0x26>
  4031ea:	b9 00 00 00 00       	mov    $0x0,%ecx
  4031ef:	83 f9 1f             	cmp    $0x1f,%ecx
  4031f2:	7f 0d                	jg     403201 <check+0x20>
  4031f4:	89 f8                	mov    %edi,%eax
  4031f6:	d3 e8                	shr    %cl,%eax
  4031f8:	3c 0a                	cmp    $0xa,%al
  4031fa:	74 11                	je     40320d <check+0x2c>
  4031fc:	83 c1 08             	add    $0x8,%ecx
  4031ff:	eb ee                	jmp    4031ef <check+0xe>
  403201:	b8 01 00 00 00       	mov    $0x1,%eax
  403206:	c3                   	retq   
  403207:	b8 00 00 00 00       	mov    $0x0,%eax
  40320c:	c3                   	retq   
  40320d:	b8 00 00 00 00       	mov    $0x0,%eax
  403212:	c3                   	retq   

0000000000403213 <gencookie>:
  403213:	53                   	push   %rbx
  403214:	83 c7 01             	add    $0x1,%edi
  403217:	e8 e4 da ff ff       	callq  400d00 <srandom@plt>
  40321c:	e8 ff db ff ff       	callq  400e20 <random@plt>
  403221:	89 c3                	mov    %eax,%ebx
  403223:	89 c7                	mov    %eax,%edi
  403225:	e8 b7 ff ff ff       	callq  4031e1 <check>
  40322a:	85 c0                	test   %eax,%eax
  40322c:	74 ee                	je     40321c <gencookie+0x9>
  40322e:	89 d8                	mov    %ebx,%eax
  403230:	5b                   	pop    %rbx
  403231:	c3                   	retq   
  403232:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403239:	00 00 00 
  40323c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403240 <__libc_csu_init>:
  403240:	41 57                	push   %r15
  403242:	41 56                	push   %r14
  403244:	49 89 d7             	mov    %rdx,%r15
  403247:	41 55                	push   %r13
  403249:	41 54                	push   %r12
  40324b:	4c 8d 25 ae 1b 20 00 	lea    0x201bae(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403252:	55                   	push   %rbp
  403253:	48 8d 2d ae 1b 20 00 	lea    0x201bae(%rip),%rbp        # 604e08 <__do_global_dtors_aux_fini_array_entry>
  40325a:	53                   	push   %rbx
  40325b:	41 89 fd             	mov    %edi,%r13d
  40325e:	49 89 f6             	mov    %rsi,%r14
  403261:	4c 29 e5             	sub    %r12,%rbp
  403264:	48 83 ec 08          	sub    $0x8,%rsp
  403268:	48 c1 fd 03          	sar    $0x3,%rbp
  40326c:	e8 3f da ff ff       	callq  400cb0 <_init>
  403271:	48 85 ed             	test   %rbp,%rbp
  403274:	74 20                	je     403296 <__libc_csu_init+0x56>
  403276:	31 db                	xor    %ebx,%ebx
  403278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40327f:	00 
  403280:	4c 89 fa             	mov    %r15,%rdx
  403283:	4c 89 f6             	mov    %r14,%rsi
  403286:	44 89 ef             	mov    %r13d,%edi
  403289:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40328d:	48 83 c3 01          	add    $0x1,%rbx
  403291:	48 39 dd             	cmp    %rbx,%rbp
  403294:	75 ea                	jne    403280 <__libc_csu_init+0x40>
  403296:	48 83 c4 08          	add    $0x8,%rsp
  40329a:	5b                   	pop    %rbx
  40329b:	5d                   	pop    %rbp
  40329c:	41 5c                	pop    %r12
  40329e:	41 5d                	pop    %r13
  4032a0:	41 5e                	pop    %r14
  4032a2:	41 5f                	pop    %r15
  4032a4:	c3                   	retq   
  4032a5:	90                   	nop
  4032a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4032ad:	00 00 00 

00000000004032b0 <__libc_csu_fini>:
  4032b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004032b4 <_fini>:
  4032b4:	48 83 ec 08          	sub    $0x8,%rsp
  4032b8:	48 83 c4 08          	add    $0x8,%rsp
  4032bc:	c3                   	retq   
