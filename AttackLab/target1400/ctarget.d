module ics-labs.AttackLab.target1400.ctarget;


ctarget:     file format elf64-x86-64


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
  400f0f:	49 c7 c0 90 31 40 00 	mov    $0x403190,%r8
  400f16:	48 c7 c1 20 31 40 00 	mov    $0x403120,%rcx
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
  400ff7:	48 8d 35 aa 21 00 00 	lea    0x21aa(%rip),%rsi        # 4031a8 <_IO_stdin_used+0x8>
  400ffe:	bf 01 00 00 00       	mov    $0x1,%edi
  401003:	b8 00 00 00 00       	mov    $0x0,%eax
  401008:	e8 53 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40100d:	48 8d 3d cc 21 00 00 	lea    0x21cc(%rip),%rdi        # 4031e0 <_IO_stdin_used+0x40>
  401014:	e8 27 fd ff ff       	callq  400d40 <puts@plt>
  401019:	48 8d 3d 50 23 00 00 	lea    0x2350(%rip),%rdi        # 403370 <_IO_stdin_used+0x1d0>
  401020:	e8 1b fd ff ff       	callq  400d40 <puts@plt>
  401025:	48 8d 3d dc 21 00 00 	lea    0x21dc(%rip),%rdi        # 403208 <_IO_stdin_used+0x68>
  40102c:	e8 0f fd ff ff       	callq  400d40 <puts@plt>
  401031:	48 8d 3d 52 23 00 00 	lea    0x2352(%rip),%rdi        # 40338a <_IO_stdin_used+0x1ea>
  401038:	e8 03 fd ff ff       	callq  400d40 <puts@plt>
  40103d:	bf 00 00 00 00       	mov    $0x0,%edi
  401042:	e8 69 fe ff ff       	callq  400eb0 <exit@plt>
  401047:	48 8d 35 58 23 00 00 	lea    0x2358(%rip),%rsi        # 4033a6 <_IO_stdin_used+0x206>
  40104e:	bf 01 00 00 00       	mov    $0x1,%edi
  401053:	b8 00 00 00 00       	mov    $0x0,%eax
  401058:	e8 03 fe ff ff       	callq  400e60 <__printf_chk@plt>
  40105d:	48 8d 3d cc 21 00 00 	lea    0x21cc(%rip),%rdi        # 403230 <_IO_stdin_used+0x90>
  401064:	e8 d7 fc ff ff       	callq  400d40 <puts@plt>
  401069:	48 8d 3d e8 21 00 00 	lea    0x21e8(%rip),%rdi        # 403258 <_IO_stdin_used+0xb8>
  401070:	e8 cb fc ff ff       	callq  400d40 <puts@plt>
  401075:	48 8d 3d 48 23 00 00 	lea    0x2348(%rip),%rdi        # 4033c4 <_IO_stdin_used+0x224>
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
  4010ad:	e8 40 20 00 00       	callq  4030f2 <gencookie>
  4010b2:	89 05 6c 44 20 00    	mov    %eax,0x20446c(%rip)        # 605524 <cookie>
  4010b8:	89 c7                	mov    %eax,%edi
  4010ba:	e8 33 20 00 00       	callq  4030f2 <gencookie>
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
  4010ff:	c6 05 42 50 20 00 63 	movb   $0x63,0x205042(%rip)        # 606148 <target_prefix>
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
  40118a:	48 8d 3d f7 20 00 00 	lea    0x20f7(%rip),%rdi        # 403288 <_IO_stdin_used+0xe8>
  401191:	e8 aa fb ff ff       	callq  400d40 <puts@plt>
  401196:	bf 08 00 00 00       	mov    $0x8,%edi
  40119b:	e8 10 fd ff ff       	callq  400eb0 <exit@plt>
  4011a0:	bd 01 00 00 00       	mov    $0x1,%ebp
  4011a5:	85 ed                	test   %ebp,%ebp
  4011a7:	74 3d                	je     4011e6 <initialize_target+0x163>
  4011a9:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4011b0:	00 
  4011b1:	e8 6c 1c 00 00       	callq  402e22 <init_driver>
  4011b6:	85 c0                	test   %eax,%eax
  4011b8:	0f 89 5a ff ff ff    	jns    401118 <initialize_target+0x95>
  4011be:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  4011c5:	00 
  4011c6:	48 8d 35 33 21 00 00 	lea    0x2133(%rip),%rsi        # 403300 <_IO_stdin_used+0x160>
  4011cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4011d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d7:	e8 84 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011dc:	bf 08 00 00 00       	mov    $0x8,%edi
  4011e1:	e8 ca fc ff ff       	callq  400eb0 <exit@plt>
  4011e6:	48 89 e2             	mov    %rsp,%rdx
  4011e9:	48 8d 35 d0 20 00 00 	lea    0x20d0(%rip),%rsi        # 4032c0 <_IO_stdin_used+0x120>
  4011f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4011f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011fa:	e8 61 fc ff ff       	callq  400e60 <__printf_chk@plt>
  4011ff:	bf 08 00 00 00       	mov    $0x8,%edi
  401204:	e8 a7 fc ff ff       	callq  400eb0 <exit@plt>
  401209:	e8 84 0f 00 00       	callq  402192 <__stack_chk_fail>

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
  401251:	48 c7 c6 93 20 40 00 	mov    $0x402093,%rsi
  401258:	bf 0b 00 00 00       	mov    $0xb,%edi
  40125d:	e8 5e fb ff ff       	callq  400dc0 <signal@plt>
  401262:	48 c7 c6 3f 20 40 00 	mov    $0x40203f,%rsi
  401269:	bf 07 00 00 00       	mov    $0x7,%edi
  40126e:	e8 4d fb ff ff       	callq  400dc0 <signal@plt>
  401273:	48 c7 c6 e7 20 40 00 	mov    $0x4020e7,%rsi
  40127a:	bf 04 00 00 00       	mov    $0x4,%edi
  40127f:	e8 3c fb ff ff       	callq  400dc0 <signal@plt>
  401284:	83 3d 9d 42 20 00 00 	cmpl   $0x0,0x20429d(%rip)        # 605528 <is_checker>
  40128b:	75 26                	jne    4012b3 <main+0xa5>
  40128d:	4c 8d 25 49 21 00 00 	lea    0x2149(%rip),%r12        # 4033dd <_IO_stdin_used+0x23d>
  401294:	48 8b 05 25 42 20 00 	mov    0x204225(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40129b:	48 89 05 6e 42 20 00 	mov    %rax,0x20426e(%rip)        # 605510 <infile>
  4012a2:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4012a8:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4012ae:	e9 8d 00 00 00       	jmpq   401340 <main+0x132>
  4012b3:	48 c7 c6 3b 21 40 00 	mov    $0x40213b,%rsi
  4012ba:	bf 0e 00 00 00       	mov    $0xe,%edi
  4012bf:	e8 fc fa ff ff       	callq  400dc0 <signal@plt>
  4012c4:	bf 02 00 00 00       	mov    $0x2,%edi
  4012c9:	e8 b2 fa ff ff       	callq  400d80 <alarm@plt>
  4012ce:	4c 8d 25 0d 21 00 00 	lea    0x210d(%rip),%r12        # 4033e2 <_IO_stdin_used+0x242>
  4012d5:	eb bd                	jmp    401294 <main+0x86>
  4012d7:	48 8b 3b             	mov    (%rbx),%rdi
  4012da:	e8 08 fd ff ff       	callq  400fe7 <usage>
  4012df:	48 8d 35 ca 21 00 00 	lea    0x21ca(%rip),%rsi        # 4034b0 <_IO_stdin_used+0x310>
  4012e6:	48 8b 3d db 41 20 00 	mov    0x2041db(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ed:	e8 7e fb ff ff       	callq  400e70 <fopen@plt>
  4012f2:	48 89 05 17 42 20 00 	mov    %rax,0x204217(%rip)        # 605510 <infile>
  4012f9:	48 85 c0             	test   %rax,%rax
  4012fc:	75 42                	jne    401340 <main+0x132>
  4012fe:	48 8b 0d c3 41 20 00 	mov    0x2041c3(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401305:	48 8d 15 e0 20 00 00 	lea    0x20e0(%rip),%rdx        # 4033ec <_IO_stdin_used+0x24c>
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
  40135e:	48 8d 0d c7 20 00 00 	lea    0x20c7(%rip),%rcx        # 40342c <_IO_stdin_used+0x28c>
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
  4013ab:	48 8d 35 57 20 00 00 	lea    0x2057(%rip),%rsi        # 403409 <_IO_stdin_used+0x269>
  4013b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4013b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bc:	e8 9f fa ff ff       	callq  400e60 <__printf_chk@plt>
  4013c1:	48 8b 3b             	mov    (%rbx),%rdi
  4013c4:	e8 1e fc ff ff       	callq  400fe7 <usage>
  4013c9:	be 00 00 00 00       	mov    $0x0,%esi
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
  4013fe:	48 8d 35 23 1f 00 00 	lea    0x1f23(%rip),%rsi        # 403328 <_IO_stdin_used+0x188>
  401405:	bf 01 00 00 00       	mov    $0x1,%edi
  40140a:	b8 00 00 00 00       	mov    $0x0,%eax
  40140f:	e8 4c fa ff ff       	callq  400e60 <__printf_chk@plt>
  401414:	b8 00 00 00 00       	mov    $0x0,%eax
  401419:	e8 89 08 00 00       	callq  401ca7 <check_fail>
  40141e:	8b 15 00 41 20 00    	mov    0x204100(%rip),%edx        # 605524 <cookie>
  401424:	48 8d 35 f1 1f 00 00 	lea    0x1ff1(%rip),%rsi        # 40341c <_IO_stdin_used+0x27c>
  40142b:	bf 01 00 00 00       	mov    $0x1,%edi
  401430:	b8 00 00 00 00       	mov    $0x0,%eax
  401435:	e8 26 fa ff ff       	callq  400e60 <__printf_chk@plt>
  40143a:	be 00 00 00 00       	mov    $0x0,%esi
  40143f:	48 8b 3d 5a 40 20 00 	mov    0x20405a(%rip),%rdi        # 6054a0 <buf_offset>
  401446:	e8 67 0e 00 00       	callq  4022b2 <stable_launch>
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
  40146d:	e8 20 0d 00 00       	callq  402192 <__stack_chk_fail>

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
  40199d:	e8 f0 07 00 00       	callq  402192 <__stack_chk_fail>

00000000004019a2 <getbuf>:
  4019a2:	48 83 ec 38          	sub    $0x38,%rsp
  4019a6:	48 89 e7             	mov    %rsp,%rdi
  4019a9:	e8 31 03 00 00       	callq  401cdf <Gets>
  4019ae:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b3:	48 83 c4 38          	add    $0x38,%rsp
  4019b7:	c3                   	retq   

00000000004019b8 <getbuf_withcanary>:
  4019b8:	55                   	push   %rbp
  4019b9:	48 89 e5             	mov    %rsp,%rbp
  4019bc:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  4019c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019ca:	00 00 
  4019cc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4019d0:	31 c0                	xor    %eax,%eax
  4019d2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4019d9:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019e0:	48 89 c7             	mov    %rax,%rdi
  4019e3:	e8 f7 02 00 00       	callq  401cdf <Gets>
  4019e8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4019eb:	48 98                	cltq   
  4019ed:	48 8d 95 e0 fe ff ff 	lea    -0x120(%rbp),%rdx
  4019f4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  4019f8:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
  4019ff:	ba 80 00 00 00       	mov    $0x80,%edx
  401a04:	48 89 c6             	mov    %rax,%rsi
  401a07:	48 89 cf             	mov    %rcx,%rdi
  401a0a:	e8 f1 f3 ff ff       	callq  400e00 <memcpy@plt>
  401a0f:	b8 01 00 00 00       	mov    $0x1,%eax
  401a14:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  401a18:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401a1f:	00 00 
  401a21:	74 05                	je     401a28 <getbuf_withcanary+0x70>
  401a23:	e8 6a 07 00 00       	callq  402192 <__stack_chk_fail>
  401a28:	c9                   	leaveq 
  401a29:	c3                   	retq   

0000000000401a2a <touch1>:
  401a2a:	48 83 ec 08          	sub    $0x8,%rsp
  401a2e:	c7 05 e4 3a 20 00 01 	movl   $0x1,0x203ae4(%rip)        # 60551c <vlevel>
  401a35:	00 00 00 
  401a38:	48 8d 3d 73 1a 00 00 	lea    0x1a73(%rip),%rdi        # 4034b2 <_IO_stdin_used+0x312>
  401a3f:	e8 fc f2 ff ff       	callq  400d40 <puts@plt>
  401a44:	bf 01 00 00 00       	mov    $0x1,%edi
  401a49:	e8 f9 04 00 00       	callq  401f47 <validate>
  401a4e:	bf 00 00 00 00       	mov    $0x0,%edi
  401a53:	e8 58 f4 ff ff       	callq  400eb0 <exit@plt>

0000000000401a58 <touch2>:
  401a58:	48 83 ec 08          	sub    $0x8,%rsp
  401a5c:	89 fa                	mov    %edi,%edx
  401a5e:	c7 05 b4 3a 20 00 02 	movl   $0x2,0x203ab4(%rip)        # 60551c <vlevel>
  401a65:	00 00 00 
  401a68:	39 3d b6 3a 20 00    	cmp    %edi,0x203ab6(%rip)        # 605524 <cookie>
  401a6e:	74 2a                	je     401a9a <touch2+0x42>
  401a70:	48 8d 35 89 1a 00 00 	lea    0x1a89(%rip),%rsi        # 403500 <_IO_stdin_used+0x360>
  401a77:	bf 01 00 00 00       	mov    $0x1,%edi
  401a7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a81:	e8 da f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401a86:	bf 02 00 00 00       	mov    $0x2,%edi
  401a8b:	e8 87 05 00 00       	callq  402017 <fail>
  401a90:	bf 00 00 00 00       	mov    $0x0,%edi
  401a95:	e8 16 f4 ff ff       	callq  400eb0 <exit@plt>
  401a9a:	48 8d 35 37 1a 00 00 	lea    0x1a37(%rip),%rsi        # 4034d8 <_IO_stdin_used+0x338>
  401aa1:	bf 01 00 00 00       	mov    $0x1,%edi
  401aa6:	b8 00 00 00 00       	mov    $0x0,%eax
  401aab:	e8 b0 f3 ff ff       	callq  400e60 <__printf_chk@plt>
  401ab0:	bf 02 00 00 00       	mov    $0x2,%edi
  401ab5:	e8 8d 04 00 00       	callq  401f47 <validate>
  401aba:	eb d4                	jmp    401a90 <touch2+0x38>

0000000000401abc <hexmatch>:
  401abc:	41 54                	push   %r12
  401abe:	55                   	push   %rbp
  401abf:	53                   	push   %rbx
  401ac0:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401ac4:	89 fd                	mov    %edi,%ebp
  401ac6:	48 89 f3             	mov    %rsi,%rbx
  401ac9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ad0:	00 00 
  401ad2:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401ad7:	31 c0                	xor    %eax,%eax
  401ad9:	e8 42 f3 ff ff       	callq  400e20 <random@plt>
  401ade:	48 89 c1             	mov    %rax,%rcx
  401ae1:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401ae8:	0a d7 a3 
  401aeb:	48 f7 ea             	imul   %rdx
  401aee:	48 01 ca             	add    %rcx,%rdx
  401af1:	48 c1 fa 06          	sar    $0x6,%rdx
  401af5:	48 89 c8             	mov    %rcx,%rax
  401af8:	48 c1 f8 3f          	sar    $0x3f,%rax
  401afc:	48 29 c2             	sub    %rax,%rdx
  401aff:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401b03:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401b07:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401b0e:	00 
  401b0f:	48 29 c1             	sub    %rax,%rcx
  401b12:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401b16:	41 89 e8             	mov    %ebp,%r8d
  401b19:	48 8d 0d af 19 00 00 	lea    0x19af(%rip),%rcx        # 4034cf <_IO_stdin_used+0x32f>
  401b20:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401b27:	be 01 00 00 00       	mov    $0x1,%esi
  401b2c:	4c 89 e7             	mov    %r12,%rdi
  401b2f:	b8 00 00 00 00       	mov    $0x0,%eax
  401b34:	e8 a7 f3 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401b39:	ba 09 00 00 00       	mov    $0x9,%edx
  401b3e:	4c 89 e6             	mov    %r12,%rsi
  401b41:	48 89 df             	mov    %rbx,%rdi
  401b44:	e8 d7 f1 ff ff       	callq  400d20 <strncmp@plt>
  401b49:	85 c0                	test   %eax,%eax
  401b4b:	0f 94 c0             	sete   %al
  401b4e:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401b53:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401b5a:	00 00 
  401b5c:	75 0c                	jne    401b6a <hexmatch+0xae>
  401b5e:	0f b6 c0             	movzbl %al,%eax
  401b61:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401b65:	5b                   	pop    %rbx
  401b66:	5d                   	pop    %rbp
  401b67:	41 5c                	pop    %r12
  401b69:	c3                   	retq   
  401b6a:	e8 23 06 00 00       	callq  402192 <__stack_chk_fail>

0000000000401b6f <touch3>:
  401b6f:	53                   	push   %rbx
  401b70:	48 89 fb             	mov    %rdi,%rbx
  401b73:	c7 05 9f 39 20 00 03 	movl   $0x3,0x20399f(%rip)        # 60551c <vlevel>
  401b7a:	00 00 00 
  401b7d:	48 89 fe             	mov    %rdi,%rsi
  401b80:	8b 3d 9e 39 20 00    	mov    0x20399e(%rip),%edi        # 605524 <cookie>
  401b86:	e8 31 ff ff ff       	callq  401abc <hexmatch>
  401b8b:	85 c0                	test   %eax,%eax
  401b8d:	74 2d                	je     401bbc <touch3+0x4d>
  401b8f:	48 89 da             	mov    %rbx,%rdx
  401b92:	48 8d 35 8f 19 00 00 	lea    0x198f(%rip),%rsi        # 403528 <_IO_stdin_used+0x388>
  401b99:	bf 01 00 00 00       	mov    $0x1,%edi
  401b9e:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba3:	e8 b8 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401ba8:	bf 03 00 00 00       	mov    $0x3,%edi
  401bad:	e8 95 03 00 00       	callq  401f47 <validate>
  401bb2:	bf 00 00 00 00       	mov    $0x0,%edi
  401bb7:	e8 f4 f2 ff ff       	callq  400eb0 <exit@plt>
  401bbc:	48 89 da             	mov    %rbx,%rdx
  401bbf:	48 8d 35 8a 19 00 00 	lea    0x198a(%rip),%rsi        # 403550 <_IO_stdin_used+0x3b0>
  401bc6:	bf 01 00 00 00       	mov    $0x1,%edi
  401bcb:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd0:	e8 8b f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401bd5:	bf 03 00 00 00       	mov    $0x3,%edi
  401bda:	e8 38 04 00 00       	callq  402017 <fail>
  401bdf:	eb d1                	jmp    401bb2 <touch3+0x43>

0000000000401be1 <test>:
  401be1:	48 83 ec 08          	sub    $0x8,%rsp
  401be5:	b8 00 00 00 00       	mov    $0x0,%eax
  401bea:	e8 b3 fd ff ff       	callq  4019a2 <getbuf>
  401bef:	89 c2                	mov    %eax,%edx
  401bf1:	48 8d 35 80 19 00 00 	lea    0x1980(%rip),%rsi        # 403578 <_IO_stdin_used+0x3d8>
  401bf8:	bf 01 00 00 00       	mov    $0x1,%edi
  401bfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401c02:	e8 59 f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401c07:	48 83 c4 08          	add    $0x8,%rsp
  401c0b:	c3                   	retq   

0000000000401c0c <test2>:
  401c0c:	48 83 ec 08          	sub    $0x8,%rsp
  401c10:	b8 00 00 00 00       	mov    $0x0,%eax
  401c15:	e8 9e fd ff ff       	callq  4019b8 <getbuf_withcanary>
  401c1a:	89 c2                	mov    %eax,%edx
  401c1c:	48 8d 35 7d 19 00 00 	lea    0x197d(%rip),%rsi        # 4035a0 <_IO_stdin_used+0x400>
  401c23:	bf 01 00 00 00       	mov    $0x1,%edi
  401c28:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2d:	e8 2e f2 ff ff       	callq  400e60 <__printf_chk@plt>
  401c32:	48 83 c4 08          	add    $0x8,%rsp
  401c36:	c3                   	retq   

0000000000401c37 <save_char>:
  401c37:	8b 05 07 45 20 00    	mov    0x204507(%rip),%eax        # 606144 <gets_cnt>
  401c3d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c42:	7f 4a                	jg     401c8e <save_char+0x57>
  401c44:	89 f9                	mov    %edi,%ecx
  401c46:	c0 e9 04             	shr    $0x4,%cl
  401c49:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c4c:	4c 8d 05 ad 1c 00 00 	lea    0x1cad(%rip),%r8        # 403900 <trans_char>
  401c53:	83 e1 0f             	and    $0xf,%ecx
  401c56:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c5b:	48 8d 0d de 38 20 00 	lea    0x2038de(%rip),%rcx        # 605540 <gets_buf>
  401c62:	48 63 f2             	movslq %edx,%rsi
  401c65:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401c69:	8d 72 01             	lea    0x1(%rdx),%esi
  401c6c:	83 e7 0f             	and    $0xf,%edi
  401c6f:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401c74:	48 63 f6             	movslq %esi,%rsi
  401c77:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401c7b:	83 c2 02             	add    $0x2,%edx
  401c7e:	48 63 d2             	movslq %edx,%rdx
  401c81:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401c85:	83 c0 01             	add    $0x1,%eax
  401c88:	89 05 b6 44 20 00    	mov    %eax,0x2044b6(%rip)        # 606144 <gets_cnt>
  401c8e:	f3 c3                	repz retq 

0000000000401c90 <save_term>:
  401c90:	8b 05 ae 44 20 00    	mov    0x2044ae(%rip),%eax        # 606144 <gets_cnt>
  401c96:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401c99:	48 98                	cltq   
  401c9b:	48 8d 15 9e 38 20 00 	lea    0x20389e(%rip),%rdx        # 605540 <gets_buf>
  401ca2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401ca6:	c3                   	retq   

0000000000401ca7 <check_fail>:
  401ca7:	48 83 ec 08          	sub    $0x8,%rsp
  401cab:	0f be 15 96 44 20 00 	movsbl 0x204496(%rip),%edx        # 606148 <target_prefix>
  401cb2:	4c 8d 05 87 38 20 00 	lea    0x203887(%rip),%r8        # 605540 <gets_buf>
  401cb9:	8b 0d 59 38 20 00    	mov    0x203859(%rip),%ecx        # 605518 <check_level>
  401cbf:	48 8d 35 08 19 00 00 	lea    0x1908(%rip),%rsi        # 4035ce <_IO_stdin_used+0x42e>
  401cc6:	bf 01 00 00 00       	mov    $0x1,%edi
  401ccb:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd0:	e8 8b f1 ff ff       	callq  400e60 <__printf_chk@plt>
  401cd5:	bf 01 00 00 00       	mov    $0x1,%edi
  401cda:	e8 d1 f1 ff ff       	callq  400eb0 <exit@plt>

0000000000401cdf <Gets>:
  401cdf:	41 54                	push   %r12
  401ce1:	55                   	push   %rbp
  401ce2:	53                   	push   %rbx
  401ce3:	49 89 fc             	mov    %rdi,%r12
  401ce6:	c7 05 54 44 20 00 00 	movl   $0x0,0x204454(%rip)        # 606144 <gets_cnt>
  401ced:	00 00 00 
  401cf0:	48 89 fb             	mov    %rdi,%rbx
  401cf3:	eb 11                	jmp    401d06 <Gets+0x27>
  401cf5:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401cf9:	88 03                	mov    %al,(%rbx)
  401cfb:	0f b6 f8             	movzbl %al,%edi
  401cfe:	e8 34 ff ff ff       	callq  401c37 <save_char>
  401d03:	48 89 eb             	mov    %rbp,%rbx
  401d06:	48 8b 3d 03 38 20 00 	mov    0x203803(%rip),%rdi        # 605510 <infile>
  401d0d:	e8 1e f1 ff ff       	callq  400e30 <_IO_getc@plt>
  401d12:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d15:	74 05                	je     401d1c <Gets+0x3d>
  401d17:	83 f8 0a             	cmp    $0xa,%eax
  401d1a:	75 d9                	jne    401cf5 <Gets+0x16>
  401d1c:	c6 03 00             	movb   $0x0,(%rbx)
  401d1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d24:	e8 67 ff ff ff       	callq  401c90 <save_term>
  401d29:	4c 89 e0             	mov    %r12,%rax
  401d2c:	5b                   	pop    %rbx
  401d2d:	5d                   	pop    %rbp
  401d2e:	41 5c                	pop    %r12
  401d30:	c3                   	retq   

0000000000401d31 <notify_server>:
  401d31:	55                   	push   %rbp
  401d32:	53                   	push   %rbx
  401d33:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401d3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d41:	00 00 
  401d43:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d4a:	00 
  401d4b:	31 c0                	xor    %eax,%eax
  401d4d:	83 3d d4 37 20 00 00 	cmpl   $0x0,0x2037d4(%rip)        # 605528 <is_checker>
  401d54:	0f 85 cb 01 00 00    	jne    401f25 <notify_server+0x1f4>
  401d5a:	89 fb                	mov    %edi,%ebx
  401d5c:	8b 05 e2 43 20 00    	mov    0x2043e2(%rip),%eax        # 606144 <gets_cnt>
  401d62:	83 c0 64             	add    $0x64,%eax
  401d65:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d6a:	0f 8f bd 00 00 00    	jg     401e2d <notify_server+0xfc>
  401d70:	0f be 05 d1 43 20 00 	movsbl 0x2043d1(%rip),%eax        # 606148 <target_prefix>
  401d77:	83 3d 2a 37 20 00 00 	cmpl   $0x0,0x20372a(%rip)        # 6054a8 <notify>
  401d7e:	0f 84 c9 00 00 00    	je     401e4d <notify_server+0x11c>
  401d84:	8b 15 96 37 20 00    	mov    0x203796(%rip),%edx        # 605520 <authkey>
  401d8a:	85 db                	test   %ebx,%ebx
  401d8c:	0f 84 c5 00 00 00    	je     401e57 <notify_server+0x126>
  401d92:	48 8d 2d 4b 18 00 00 	lea    0x184b(%rip),%rbp        # 4035e4 <_IO_stdin_used+0x444>
  401d99:	48 89 e7             	mov    %rsp,%rdi
  401d9c:	48 8d 0d 9d 37 20 00 	lea    0x20379d(%rip),%rcx        # 605540 <gets_buf>
  401da3:	51                   	push   %rcx
  401da4:	56                   	push   %rsi
  401da5:	50                   	push   %rax
  401da6:	52                   	push   %rdx
  401da7:	49 89 e9             	mov    %rbp,%r9
  401daa:	44 8b 05 9f 33 20 00 	mov    0x20339f(%rip),%r8d        # 605150 <target_id>
  401db1:	48 8d 0d 36 18 00 00 	lea    0x1836(%rip),%rcx        # 4035ee <_IO_stdin_used+0x44e>
  401db8:	ba 00 20 00 00       	mov    $0x2000,%edx
  401dbd:	be 01 00 00 00       	mov    $0x1,%esi
  401dc2:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc7:	e8 14 f1 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  401dcc:	48 83 c4 20          	add    $0x20,%rsp
  401dd0:	83 3d d1 36 20 00 00 	cmpl   $0x0,0x2036d1(%rip)        # 6054a8 <notify>
  401dd7:	0f 84 bf 00 00 00    	je     401e9c <notify_server+0x16b>
  401ddd:	48 89 e1             	mov    %rsp,%rcx
  401de0:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401de7:	00 
  401de8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401dee:	48 8b 15 73 33 20 00 	mov    0x203373(%rip),%rdx        # 605168 <lab>
  401df5:	48 8b 35 74 33 20 00 	mov    0x203374(%rip),%rsi        # 605170 <course>
  401dfc:	48 8b 3d 5d 33 20 00 	mov    0x20335d(%rip),%rdi        # 605160 <user_id>
  401e03:	e8 45 12 00 00       	callq  40304d <driver_post>
  401e08:	85 c0                	test   %eax,%eax
  401e0a:	78 57                	js     401e63 <notify_server+0x132>
  401e0c:	85 db                	test   %ebx,%ebx
  401e0e:	74 7b                	je     401e8b <notify_server+0x15a>
  401e10:	48 8d 3d 29 19 00 00 	lea    0x1929(%rip),%rdi        # 403740 <_IO_stdin_used+0x5a0>
  401e17:	e8 24 ef ff ff       	callq  400d40 <puts@plt>
  401e1c:	48 8d 3d f3 17 00 00 	lea    0x17f3(%rip),%rdi        # 403616 <_IO_stdin_used+0x476>
  401e23:	e8 18 ef ff ff       	callq  400d40 <puts@plt>
  401e28:	e9 f8 00 00 00       	jmpq   401f25 <notify_server+0x1f4>
  401e2d:	48 8d 35 dc 18 00 00 	lea    0x18dc(%rip),%rsi        # 403710 <_IO_stdin_used+0x570>
  401e34:	bf 01 00 00 00       	mov    $0x1,%edi
  401e39:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3e:	e8 1d f0 ff ff       	callq  400e60 <__printf_chk@plt>
  401e43:	bf 01 00 00 00       	mov    $0x1,%edi
  401e48:	e8 63 f0 ff ff       	callq  400eb0 <exit@plt>
  401e4d:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e52:	e9 33 ff ff ff       	jmpq   401d8a <notify_server+0x59>
  401e57:	48 8d 2d 8b 17 00 00 	lea    0x178b(%rip),%rbp        # 4035e9 <_IO_stdin_used+0x449>
  401e5e:	e9 36 ff ff ff       	jmpq   401d99 <notify_server+0x68>
  401e63:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e6a:	00 
  401e6b:	48 8d 35 98 17 00 00 	lea    0x1798(%rip),%rsi        # 40360a <_IO_stdin_used+0x46a>
  401e72:	bf 01 00 00 00       	mov    $0x1,%edi
  401e77:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7c:	e8 df ef ff ff       	callq  400e60 <__printf_chk@plt>
  401e81:	bf 01 00 00 00       	mov    $0x1,%edi
  401e86:	e8 25 f0 ff ff       	callq  400eb0 <exit@plt>
  401e8b:	48 8d 3d 8e 17 00 00 	lea    0x178e(%rip),%rdi        # 403620 <_IO_stdin_used+0x480>
  401e92:	e8 a9 ee ff ff       	callq  400d40 <puts@plt>
  401e97:	e9 89 00 00 00       	jmpq   401f25 <notify_server+0x1f4>
  401e9c:	48 89 ea             	mov    %rbp,%rdx
  401e9f:	48 8d 35 d2 18 00 00 	lea    0x18d2(%rip),%rsi        # 403778 <_IO_stdin_used+0x5d8>
  401ea6:	bf 01 00 00 00       	mov    $0x1,%edi
  401eab:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb0:	e8 ab ef ff ff       	callq  400e60 <__printf_chk@plt>
  401eb5:	48 8b 15 a4 32 20 00 	mov    0x2032a4(%rip),%rdx        # 605160 <user_id>
  401ebc:	48 8d 35 64 17 00 00 	lea    0x1764(%rip),%rsi        # 403627 <_IO_stdin_used+0x487>
  401ec3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecd:	e8 8e ef ff ff       	callq  400e60 <__printf_chk@plt>
  401ed2:	48 8b 15 97 32 20 00 	mov    0x203297(%rip),%rdx        # 605170 <course>
  401ed9:	48 8d 35 54 17 00 00 	lea    0x1754(%rip),%rsi        # 403634 <_IO_stdin_used+0x494>
  401ee0:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eea:	e8 71 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401eef:	48 8b 15 72 32 20 00 	mov    0x203272(%rip),%rdx        # 605168 <lab>
  401ef6:	48 8d 35 43 17 00 00 	lea    0x1743(%rip),%rsi        # 403640 <_IO_stdin_used+0x4a0>
  401efd:	bf 01 00 00 00       	mov    $0x1,%edi
  401f02:	b8 00 00 00 00       	mov    $0x0,%eax
  401f07:	e8 54 ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f0c:	48 89 e2             	mov    %rsp,%rdx
  401f0f:	48 8d 35 33 17 00 00 	lea    0x1733(%rip),%rsi        # 403649 <_IO_stdin_used+0x4a9>
  401f16:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f20:	e8 3b ef ff ff       	callq  400e60 <__printf_chk@plt>
  401f25:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f2c:	00 
  401f2d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f34:	00 00 
  401f36:	75 0a                	jne    401f42 <notify_server+0x211>
  401f38:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401f3f:	5b                   	pop    %rbx
  401f40:	5d                   	pop    %rbp
  401f41:	c3                   	retq   
  401f42:	e8 4b 02 00 00       	callq  402192 <__stack_chk_fail>

0000000000401f47 <validate>:
  401f47:	53                   	push   %rbx
  401f48:	89 fb                	mov    %edi,%ebx
  401f4a:	83 3d d7 35 20 00 00 	cmpl   $0x0,0x2035d7(%rip)        # 605528 <is_checker>
  401f51:	74 72                	je     401fc5 <validate+0x7e>
  401f53:	39 3d c3 35 20 00    	cmp    %edi,0x2035c3(%rip)        # 60551c <vlevel>
  401f59:	75 32                	jne    401f8d <validate+0x46>
  401f5b:	8b 15 b7 35 20 00    	mov    0x2035b7(%rip),%edx        # 605518 <check_level>
  401f61:	39 fa                	cmp    %edi,%edx
  401f63:	75 3e                	jne    401fa3 <validate+0x5c>
  401f65:	0f be 15 dc 41 20 00 	movsbl 0x2041dc(%rip),%edx        # 606148 <target_prefix>
  401f6c:	4c 8d 05 cd 35 20 00 	lea    0x2035cd(%rip),%r8        # 605540 <gets_buf>
  401f73:	89 f9                	mov    %edi,%ecx
  401f75:	48 8d 35 f7 16 00 00 	lea    0x16f7(%rip),%rsi        # 403673 <_IO_stdin_used+0x4d3>
  401f7c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f81:	b8 00 00 00 00       	mov    $0x0,%eax
  401f86:	e8 d5 ee ff ff       	callq  400e60 <__printf_chk@plt>
  401f8b:	5b                   	pop    %rbx
  401f8c:	c3                   	retq   
  401f8d:	48 8d 3d c1 16 00 00 	lea    0x16c1(%rip),%rdi        # 403655 <_IO_stdin_used+0x4b5>
  401f94:	e8 a7 ed ff ff       	callq  400d40 <puts@plt>
  401f99:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9e:	e8 04 fd ff ff       	callq  401ca7 <check_fail>
  401fa3:	89 f9                	mov    %edi,%ecx
  401fa5:	48 8d 35 f4 17 00 00 	lea    0x17f4(%rip),%rsi        # 4037a0 <_IO_stdin_used+0x600>
  401fac:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb1:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb6:	e8 a5 ee ff ff       	callq  400e60 <__printf_chk@plt>
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 e2 fc ff ff       	callq  401ca7 <check_fail>
  401fc5:	39 3d 51 35 20 00    	cmp    %edi,0x203551(%rip)        # 60551c <vlevel>
  401fcb:	74 1a                	je     401fe7 <validate+0xa0>
  401fcd:	48 8d 3d 81 16 00 00 	lea    0x1681(%rip),%rdi        # 403655 <_IO_stdin_used+0x4b5>
  401fd4:	e8 67 ed ff ff       	callq  400d40 <puts@plt>
  401fd9:	89 de                	mov    %ebx,%esi
  401fdb:	bf 00 00 00 00       	mov    $0x0,%edi
  401fe0:	e8 4c fd ff ff       	callq  401d31 <notify_server>
  401fe5:	eb a4                	jmp    401f8b <validate+0x44>
  401fe7:	0f be 0d 5a 41 20 00 	movsbl 0x20415a(%rip),%ecx        # 606148 <target_prefix>
  401fee:	89 fa                	mov    %edi,%edx
  401ff0:	48 8d 35 d1 17 00 00 	lea    0x17d1(%rip),%rsi        # 4037c8 <_IO_stdin_used+0x628>
  401ff7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ffc:	b8 00 00 00 00       	mov    $0x0,%eax
  402001:	e8 5a ee ff ff       	callq  400e60 <__printf_chk@plt>
  402006:	89 de                	mov    %ebx,%esi
  402008:	bf 01 00 00 00       	mov    $0x1,%edi
  40200d:	e8 1f fd ff ff       	callq  401d31 <notify_server>
  402012:	e9 74 ff ff ff       	jmpq   401f8b <validate+0x44>

0000000000402017 <fail>:
  402017:	48 83 ec 08          	sub    $0x8,%rsp
  40201b:	83 3d 06 35 20 00 00 	cmpl   $0x0,0x203506(%rip)        # 605528 <is_checker>
  402022:	75 11                	jne    402035 <fail+0x1e>
  402024:	89 fe                	mov    %edi,%esi
  402026:	bf 00 00 00 00       	mov    $0x0,%edi
  40202b:	e8 01 fd ff ff       	callq  401d31 <notify_server>
  402030:	48 83 c4 08          	add    $0x8,%rsp
  402034:	c3                   	retq   
  402035:	b8 00 00 00 00       	mov    $0x0,%eax
  40203a:	e8 68 fc ff ff       	callq  401ca7 <check_fail>

000000000040203f <bushandler>:
  40203f:	48 83 ec 08          	sub    $0x8,%rsp
  402043:	83 3d de 34 20 00 00 	cmpl   $0x0,0x2034de(%rip)        # 605528 <is_checker>
  40204a:	74 16                	je     402062 <bushandler+0x23>
  40204c:	48 8d 3d 35 16 00 00 	lea    0x1635(%rip),%rdi        # 403688 <_IO_stdin_used+0x4e8>
  402053:	e8 e8 ec ff ff       	callq  400d40 <puts@plt>
  402058:	b8 00 00 00 00       	mov    $0x0,%eax
  40205d:	e8 45 fc ff ff       	callq  401ca7 <check_fail>
  402062:	48 8d 3d 97 17 00 00 	lea    0x1797(%rip),%rdi        # 403800 <_IO_stdin_used+0x660>
  402069:	e8 d2 ec ff ff       	callq  400d40 <puts@plt>
  40206e:	48 8d 3d 1d 16 00 00 	lea    0x161d(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  402075:	e8 c6 ec ff ff       	callq  400d40 <puts@plt>
  40207a:	be 00 00 00 00       	mov    $0x0,%esi
  40207f:	bf 00 00 00 00       	mov    $0x0,%edi
  402084:	e8 a8 fc ff ff       	callq  401d31 <notify_server>
  402089:	bf 01 00 00 00       	mov    $0x1,%edi
  40208e:	e8 1d ee ff ff       	callq  400eb0 <exit@plt>

0000000000402093 <seghandler>:
  402093:	48 83 ec 08          	sub    $0x8,%rsp
  402097:	83 3d 8a 34 20 00 00 	cmpl   $0x0,0x20348a(%rip)        # 605528 <is_checker>
  40209e:	74 16                	je     4020b6 <seghandler+0x23>
  4020a0:	48 8d 3d 01 16 00 00 	lea    0x1601(%rip),%rdi        # 4036a8 <_IO_stdin_used+0x508>
  4020a7:	e8 94 ec ff ff       	callq  400d40 <puts@plt>
  4020ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b1:	e8 f1 fb ff ff       	callq  401ca7 <check_fail>
  4020b6:	48 8d 3d 63 17 00 00 	lea    0x1763(%rip),%rdi        # 403820 <_IO_stdin_used+0x680>
  4020bd:	e8 7e ec ff ff       	callq  400d40 <puts@plt>
  4020c2:	48 8d 3d c9 15 00 00 	lea    0x15c9(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  4020c9:	e8 72 ec ff ff       	callq  400d40 <puts@plt>
  4020ce:	be 00 00 00 00       	mov    $0x0,%esi
  4020d3:	bf 00 00 00 00       	mov    $0x0,%edi
  4020d8:	e8 54 fc ff ff       	callq  401d31 <notify_server>
  4020dd:	bf 01 00 00 00       	mov    $0x1,%edi
  4020e2:	e8 c9 ed ff ff       	callq  400eb0 <exit@plt>

00000000004020e7 <illegalhandler>:
  4020e7:	48 83 ec 08          	sub    $0x8,%rsp
  4020eb:	83 3d 36 34 20 00 00 	cmpl   $0x0,0x203436(%rip)        # 605528 <is_checker>
  4020f2:	74 16                	je     40210a <illegalhandler+0x23>
  4020f4:	48 8d 3d c0 15 00 00 	lea    0x15c0(%rip),%rdi        # 4036bb <_IO_stdin_used+0x51b>
  4020fb:	e8 40 ec ff ff       	callq  400d40 <puts@plt>
  402100:	b8 00 00 00 00       	mov    $0x0,%eax
  402105:	e8 9d fb ff ff       	callq  401ca7 <check_fail>
  40210a:	48 8d 3d 37 17 00 00 	lea    0x1737(%rip),%rdi        # 403848 <_IO_stdin_used+0x6a8>
  402111:	e8 2a ec ff ff       	callq  400d40 <puts@plt>
  402116:	48 8d 3d 75 15 00 00 	lea    0x1575(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  40211d:	e8 1e ec ff ff       	callq  400d40 <puts@plt>
  402122:	be 00 00 00 00       	mov    $0x0,%esi
  402127:	bf 00 00 00 00       	mov    $0x0,%edi
  40212c:	e8 00 fc ff ff       	callq  401d31 <notify_server>
  402131:	bf 01 00 00 00       	mov    $0x1,%edi
  402136:	e8 75 ed ff ff       	callq  400eb0 <exit@plt>

000000000040213b <sigalrmhandler>:
  40213b:	48 83 ec 08          	sub    $0x8,%rsp
  40213f:	83 3d e2 33 20 00 00 	cmpl   $0x0,0x2033e2(%rip)        # 605528 <is_checker>
  402146:	74 16                	je     40215e <sigalrmhandler+0x23>
  402148:	48 8d 3d 80 15 00 00 	lea    0x1580(%rip),%rdi        # 4036cf <_IO_stdin_used+0x52f>
  40214f:	e8 ec eb ff ff       	callq  400d40 <puts@plt>
  402154:	b8 00 00 00 00       	mov    $0x0,%eax
  402159:	e8 49 fb ff ff       	callq  401ca7 <check_fail>
  40215e:	ba 02 00 00 00       	mov    $0x2,%edx
  402163:	48 8d 35 0e 17 00 00 	lea    0x170e(%rip),%rsi        # 403878 <_IO_stdin_used+0x6d8>
  40216a:	bf 01 00 00 00       	mov    $0x1,%edi
  40216f:	b8 00 00 00 00       	mov    $0x0,%eax
  402174:	e8 e7 ec ff ff       	callq  400e60 <__printf_chk@plt>
  402179:	be 00 00 00 00       	mov    $0x0,%esi
  40217e:	bf 00 00 00 00       	mov    $0x0,%edi
  402183:	e8 a9 fb ff ff       	callq  401d31 <notify_server>
  402188:	bf 01 00 00 00       	mov    $0x1,%edi
  40218d:	e8 1e ed ff ff       	callq  400eb0 <exit@plt>

0000000000402192 <__stack_chk_fail>:
  402192:	48 83 ec 08          	sub    $0x8,%rsp
  402196:	83 3d 8b 33 20 00 00 	cmpl   $0x0,0x20338b(%rip)        # 605528 <is_checker>
  40219d:	74 16                	je     4021b5 <__stack_chk_fail+0x23>
  40219f:	48 8d 3d 31 15 00 00 	lea    0x1531(%rip),%rdi        # 4036d7 <_IO_stdin_used+0x537>
  4021a6:	e8 95 eb ff ff       	callq  400d40 <puts@plt>
  4021ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b0:	e8 f2 fa ff ff       	callq  401ca7 <check_fail>
  4021b5:	48 8d 3d f4 16 00 00 	lea    0x16f4(%rip),%rdi        # 4038b0 <_IO_stdin_used+0x710>
  4021bc:	e8 7f eb ff ff       	callq  400d40 <puts@plt>
  4021c1:	48 8d 3d ca 14 00 00 	lea    0x14ca(%rip),%rdi        # 403692 <_IO_stdin_used+0x4f2>
  4021c8:	e8 73 eb ff ff       	callq  400d40 <puts@plt>
  4021cd:	be 00 00 00 00       	mov    $0x0,%esi
  4021d2:	bf 00 00 00 00       	mov    $0x0,%edi
  4021d7:	e8 55 fb ff ff       	callq  401d31 <notify_server>
  4021dc:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e1:	e8 ca ec ff ff       	callq  400eb0 <exit@plt>

00000000004021e6 <launch>:
  4021e6:	55                   	push   %rbp
  4021e7:	48 89 e5             	mov    %rsp,%rbp
  4021ea:	53                   	push   %rbx
  4021eb:	48 83 ec 18          	sub    $0x18,%rsp
  4021ef:	48 89 fa             	mov    %rdi,%rdx
  4021f2:	89 f3                	mov    %esi,%ebx
  4021f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021fb:	00 00 
  4021fd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402201:	31 c0                	xor    %eax,%eax
  402203:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402207:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40220b:	48 29 c4             	sub    %rax,%rsp
  40220e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402213:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402217:	be f4 00 00 00       	mov    $0xf4,%esi
  40221c:	e8 4f eb ff ff       	callq  400d70 <memset@plt>
  402221:	48 8b 05 98 32 20 00 	mov    0x203298(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402228:	48 39 05 e1 32 20 00 	cmp    %rax,0x2032e1(%rip)        # 605510 <infile>
  40222f:	74 42                	je     402273 <launch+0x8d>
  402231:	c7 05 e1 32 20 00 00 	movl   $0x0,0x2032e1(%rip)        # 60551c <vlevel>
  402238:	00 00 00 
  40223b:	85 db                	test   %ebx,%ebx
  40223d:	75 4c                	jne    40228b <launch+0xa5>
  40223f:	b8 00 00 00 00       	mov    $0x0,%eax
  402244:	e8 98 f9 ff ff       	callq  401be1 <test>
  402249:	83 3d d8 32 20 00 00 	cmpl   $0x0,0x2032d8(%rip)        # 605528 <is_checker>
  402250:	75 45                	jne    402297 <launch+0xb1>
  402252:	48 8d 3d a5 14 00 00 	lea    0x14a5(%rip),%rdi        # 4036fe <_IO_stdin_used+0x55e>
  402259:	e8 e2 ea ff ff       	callq  400d40 <puts@plt>
  40225e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402262:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402269:	00 00 
  40226b:	75 40                	jne    4022ad <launch+0xc7>
  40226d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402271:	c9                   	leaveq 
  402272:	c3                   	retq   
  402273:	48 8d 35 6c 14 00 00 	lea    0x146c(%rip),%rsi        # 4036e6 <_IO_stdin_used+0x546>
  40227a:	bf 01 00 00 00       	mov    $0x1,%edi
  40227f:	b8 00 00 00 00       	mov    $0x0,%eax
  402284:	e8 d7 eb ff ff       	callq  400e60 <__printf_chk@plt>
  402289:	eb a6                	jmp    402231 <launch+0x4b>
  40228b:	b8 00 00 00 00       	mov    $0x0,%eax
  402290:	e8 77 f9 ff ff       	callq  401c0c <test2>
  402295:	eb b2                	jmp    402249 <launch+0x63>
  402297:	48 8d 3d 55 14 00 00 	lea    0x1455(%rip),%rdi        # 4036f3 <_IO_stdin_used+0x553>
  40229e:	e8 9d ea ff ff       	callq  400d40 <puts@plt>
  4022a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a8:	e8 fa f9 ff ff       	callq  401ca7 <check_fail>
  4022ad:	e8 e0 fe ff ff       	callq  402192 <__stack_chk_fail>

00000000004022b2 <stable_launch>:
  4022b2:	55                   	push   %rbp
  4022b3:	53                   	push   %rbx
  4022b4:	48 83 ec 08          	sub    $0x8,%rsp
  4022b8:	89 f5                	mov    %esi,%ebp
  4022ba:	48 89 3d 47 32 20 00 	mov    %rdi,0x203247(%rip)        # 605508 <global_offset>
  4022c1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4022c7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022cd:	b9 32 01 00 00       	mov    $0x132,%ecx
  4022d2:	ba 07 00 00 00       	mov    $0x7,%edx
  4022d7:	be 00 00 10 00       	mov    $0x100000,%esi
  4022dc:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4022e1:	e8 7a ea ff ff       	callq  400d60 <mmap@plt>
  4022e6:	48 89 c3             	mov    %rax,%rbx
  4022e9:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4022ef:	75 4a                	jne    40233b <stable_launch+0x89>
  4022f1:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4022f8:	48 89 15 51 3e 20 00 	mov    %rdx,0x203e51(%rip)        # 606150 <stack_top>
  4022ff:	48 89 e0             	mov    %rsp,%rax
  402302:	48 89 d4             	mov    %rdx,%rsp
  402305:	48 89 c2             	mov    %rax,%rdx
  402308:	48 89 15 f1 31 20 00 	mov    %rdx,0x2031f1(%rip)        # 605500 <global_save_stack>
  40230f:	89 ee                	mov    %ebp,%esi
  402311:	48 8b 3d f0 31 20 00 	mov    0x2031f0(%rip),%rdi        # 605508 <global_offset>
  402318:	e8 c9 fe ff ff       	callq  4021e6 <launch>
  40231d:	48 8b 05 dc 31 20 00 	mov    0x2031dc(%rip),%rax        # 605500 <global_save_stack>
  402324:	48 89 c4             	mov    %rax,%rsp
  402327:	be 00 00 10 00       	mov    $0x100000,%esi
  40232c:	48 89 df             	mov    %rbx,%rdi
  40232f:	e8 1c eb ff ff       	callq  400e50 <munmap@plt>
  402334:	48 83 c4 08          	add    $0x8,%rsp
  402338:	5b                   	pop    %rbx
  402339:	5d                   	pop    %rbp
  40233a:	c3                   	retq   
  40233b:	be 00 00 10 00       	mov    $0x100000,%esi
  402340:	48 89 c7             	mov    %rax,%rdi
  402343:	e8 08 eb ff ff       	callq  400e50 <munmap@plt>
  402348:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40234d:	48 8d 15 84 15 00 00 	lea    0x1584(%rip),%rdx        # 4038d8 <_IO_stdin_used+0x738>
  402354:	be 01 00 00 00       	mov    $0x1,%esi
  402359:	48 8b 3d 80 31 20 00 	mov    0x203180(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402360:	b8 00 00 00 00       	mov    $0x0,%eax
  402365:	e8 66 eb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  40236a:	bf 01 00 00 00       	mov    $0x1,%edi
  40236f:	e8 3c eb ff ff       	callq  400eb0 <exit@plt>

0000000000402374 <rio_readinitb>:
  402374:	89 37                	mov    %esi,(%rdi)
  402376:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40237d:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402381:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402385:	c3                   	retq   

0000000000402386 <sigalrm_handler>:
  402386:	48 83 ec 08          	sub    $0x8,%rsp
  40238a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40238f:	48 8d 15 7a 15 00 00 	lea    0x157a(%rip),%rdx        # 403910 <trans_char+0x10>
  402396:	be 01 00 00 00       	mov    $0x1,%esi
  40239b:	48 8b 3d 3e 31 20 00 	mov    0x20313e(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4023a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a7:	e8 24 eb ff ff       	callq  400ed0 <__fprintf_chk@plt>
  4023ac:	bf 01 00 00 00       	mov    $0x1,%edi
  4023b1:	e8 fa ea ff ff       	callq  400eb0 <exit@plt>

00000000004023b6 <rio_writen>:
  4023b6:	41 55                	push   %r13
  4023b8:	41 54                	push   %r12
  4023ba:	55                   	push   %rbp
  4023bb:	53                   	push   %rbx
  4023bc:	48 83 ec 08          	sub    $0x8,%rsp
  4023c0:	41 89 fc             	mov    %edi,%r12d
  4023c3:	48 89 f5             	mov    %rsi,%rbp
  4023c6:	49 89 d5             	mov    %rdx,%r13
  4023c9:	48 89 d3             	mov    %rdx,%rbx
  4023cc:	eb 06                	jmp    4023d4 <rio_writen+0x1e>
  4023ce:	48 29 c3             	sub    %rax,%rbx
  4023d1:	48 01 c5             	add    %rax,%rbp
  4023d4:	48 85 db             	test   %rbx,%rbx
  4023d7:	74 24                	je     4023fd <rio_writen+0x47>
  4023d9:	48 89 da             	mov    %rbx,%rdx
  4023dc:	48 89 ee             	mov    %rbp,%rsi
  4023df:	44 89 e7             	mov    %r12d,%edi
  4023e2:	e8 69 e9 ff ff       	callq  400d50 <write@plt>
  4023e7:	48 85 c0             	test   %rax,%rax
  4023ea:	7f e2                	jg     4023ce <rio_writen+0x18>
  4023ec:	e8 ff e8 ff ff       	callq  400cf0 <__errno_location@plt>
  4023f1:	83 38 04             	cmpl   $0x4,(%rax)
  4023f4:	75 15                	jne    40240b <rio_writen+0x55>
  4023f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4023fb:	eb d1                	jmp    4023ce <rio_writen+0x18>
  4023fd:	4c 89 e8             	mov    %r13,%rax
  402400:	48 83 c4 08          	add    $0x8,%rsp
  402404:	5b                   	pop    %rbx
  402405:	5d                   	pop    %rbp
  402406:	41 5c                	pop    %r12
  402408:	41 5d                	pop    %r13
  40240a:	c3                   	retq   
  40240b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402412:	eb ec                	jmp    402400 <rio_writen+0x4a>

0000000000402414 <rio_read>:
  402414:	41 55                	push   %r13
  402416:	41 54                	push   %r12
  402418:	55                   	push   %rbp
  402419:	53                   	push   %rbx
  40241a:	48 83 ec 08          	sub    $0x8,%rsp
  40241e:	48 89 fb             	mov    %rdi,%rbx
  402421:	49 89 f5             	mov    %rsi,%r13
  402424:	49 89 d4             	mov    %rdx,%r12
  402427:	eb 0a                	jmp    402433 <rio_read+0x1f>
  402429:	e8 c2 e8 ff ff       	callq  400cf0 <__errno_location@plt>
  40242e:	83 38 04             	cmpl   $0x4,(%rax)
  402431:	75 5c                	jne    40248f <rio_read+0x7b>
  402433:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402436:	85 ed                	test   %ebp,%ebp
  402438:	7f 24                	jg     40245e <rio_read+0x4a>
  40243a:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40243e:	8b 3b                	mov    (%rbx),%edi
  402440:	ba 00 20 00 00       	mov    $0x2000,%edx
  402445:	48 89 ee             	mov    %rbp,%rsi
  402448:	e8 53 e9 ff ff       	callq  400da0 <read@plt>
  40244d:	89 43 04             	mov    %eax,0x4(%rbx)
  402450:	85 c0                	test   %eax,%eax
  402452:	78 d5                	js     402429 <rio_read+0x15>
  402454:	85 c0                	test   %eax,%eax
  402456:	74 40                	je     402498 <rio_read+0x84>
  402458:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40245c:	eb d5                	jmp    402433 <rio_read+0x1f>
  40245e:	89 e8                	mov    %ebp,%eax
  402460:	4c 39 e0             	cmp    %r12,%rax
  402463:	72 03                	jb     402468 <rio_read+0x54>
  402465:	44 89 e5             	mov    %r12d,%ebp
  402468:	4c 63 e5             	movslq %ebp,%r12
  40246b:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40246f:	4c 89 e2             	mov    %r12,%rdx
  402472:	4c 89 ef             	mov    %r13,%rdi
  402475:	e8 86 e9 ff ff       	callq  400e00 <memcpy@plt>
  40247a:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40247e:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402481:	4c 89 e0             	mov    %r12,%rax
  402484:	48 83 c4 08          	add    $0x8,%rsp
  402488:	5b                   	pop    %rbx
  402489:	5d                   	pop    %rbp
  40248a:	41 5c                	pop    %r12
  40248c:	41 5d                	pop    %r13
  40248e:	c3                   	retq   
  40248f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402496:	eb ec                	jmp    402484 <rio_read+0x70>
  402498:	b8 00 00 00 00       	mov    $0x0,%eax
  40249d:	eb e5                	jmp    402484 <rio_read+0x70>

000000000040249f <rio_readlineb>:
  40249f:	41 55                	push   %r13
  4024a1:	41 54                	push   %r12
  4024a3:	55                   	push   %rbp
  4024a4:	53                   	push   %rbx
  4024a5:	48 83 ec 18          	sub    $0x18,%rsp
  4024a9:	49 89 fd             	mov    %rdi,%r13
  4024ac:	48 89 f5             	mov    %rsi,%rbp
  4024af:	49 89 d4             	mov    %rdx,%r12
  4024b2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024b9:	00 00 
  4024bb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024c0:	31 c0                	xor    %eax,%eax
  4024c2:	bb 01 00 00 00       	mov    $0x1,%ebx
  4024c7:	4c 39 e3             	cmp    %r12,%rbx
  4024ca:	73 47                	jae    402513 <rio_readlineb+0x74>
  4024cc:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4024d1:	ba 01 00 00 00       	mov    $0x1,%edx
  4024d6:	4c 89 ef             	mov    %r13,%rdi
  4024d9:	e8 36 ff ff ff       	callq  402414 <rio_read>
  4024de:	83 f8 01             	cmp    $0x1,%eax
  4024e1:	75 1c                	jne    4024ff <rio_readlineb+0x60>
  4024e3:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4024e7:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4024ec:	88 55 00             	mov    %dl,0x0(%rbp)
  4024ef:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4024f4:	74 1a                	je     402510 <rio_readlineb+0x71>
  4024f6:	48 83 c3 01          	add    $0x1,%rbx
  4024fa:	48 89 c5             	mov    %rax,%rbp
  4024fd:	eb c8                	jmp    4024c7 <rio_readlineb+0x28>
  4024ff:	85 c0                	test   %eax,%eax
  402501:	75 32                	jne    402535 <rio_readlineb+0x96>
  402503:	48 83 fb 01          	cmp    $0x1,%rbx
  402507:	75 0a                	jne    402513 <rio_readlineb+0x74>
  402509:	b8 00 00 00 00       	mov    $0x0,%eax
  40250e:	eb 0a                	jmp    40251a <rio_readlineb+0x7b>
  402510:	48 89 c5             	mov    %rax,%rbp
  402513:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402517:	48 89 d8             	mov    %rbx,%rax
  40251a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40251f:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402526:	00 00 
  402528:	75 14                	jne    40253e <rio_readlineb+0x9f>
  40252a:	48 83 c4 18          	add    $0x18,%rsp
  40252e:	5b                   	pop    %rbx
  40252f:	5d                   	pop    %rbp
  402530:	41 5c                	pop    %r12
  402532:	41 5d                	pop    %r13
  402534:	c3                   	retq   
  402535:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40253c:	eb dc                	jmp    40251a <rio_readlineb+0x7b>
  40253e:	e8 4f fc ff ff       	callq  402192 <__stack_chk_fail>

0000000000402543 <urlencode>:
  402543:	41 54                	push   %r12
  402545:	55                   	push   %rbp
  402546:	53                   	push   %rbx
  402547:	48 83 ec 10          	sub    $0x10,%rsp
  40254b:	48 89 fb             	mov    %rdi,%rbx
  40254e:	48 89 f5             	mov    %rsi,%rbp
  402551:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402558:	00 00 
  40255a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40255f:	31 c0                	xor    %eax,%eax
  402561:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402568:	f2 ae                	repnz scas %es:(%rdi),%al
  40256a:	48 89 ce             	mov    %rcx,%rsi
  40256d:	48 f7 d6             	not    %rsi
  402570:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402573:	eb 0f                	jmp    402584 <urlencode+0x41>
  402575:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402579:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40257d:	48 83 c3 01          	add    $0x1,%rbx
  402581:	44 89 e0             	mov    %r12d,%eax
  402584:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402588:	85 c0                	test   %eax,%eax
  40258a:	0f 84 a8 00 00 00    	je     402638 <urlencode+0xf5>
  402590:	44 0f b6 03          	movzbl (%rbx),%r8d
  402594:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402598:	0f 94 c2             	sete   %dl
  40259b:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40259f:	0f 94 c0             	sete   %al
  4025a2:	08 c2                	or     %al,%dl
  4025a4:	75 cf                	jne    402575 <urlencode+0x32>
  4025a6:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4025aa:	74 c9                	je     402575 <urlencode+0x32>
  4025ac:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4025b0:	74 c3                	je     402575 <urlencode+0x32>
  4025b2:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4025b6:	3c 09                	cmp    $0x9,%al
  4025b8:	76 bb                	jbe    402575 <urlencode+0x32>
  4025ba:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4025be:	3c 19                	cmp    $0x19,%al
  4025c0:	76 b3                	jbe    402575 <urlencode+0x32>
  4025c2:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4025c6:	3c 19                	cmp    $0x19,%al
  4025c8:	76 ab                	jbe    402575 <urlencode+0x32>
  4025ca:	41 80 f8 20          	cmp    $0x20,%r8b
  4025ce:	74 56                	je     402626 <urlencode+0xe3>
  4025d0:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4025d4:	3c 5f                	cmp    $0x5f,%al
  4025d6:	0f 96 c2             	setbe  %dl
  4025d9:	41 80 f8 09          	cmp    $0x9,%r8b
  4025dd:	0f 94 c0             	sete   %al
  4025e0:	08 c2                	or     %al,%dl
  4025e2:	74 4f                	je     402633 <urlencode+0xf0>
  4025e4:	48 89 e7             	mov    %rsp,%rdi
  4025e7:	45 0f b6 c0          	movzbl %r8b,%r8d
  4025eb:	48 8d 0d d6 13 00 00 	lea    0x13d6(%rip),%rcx        # 4039c8 <trans_char+0xc8>
  4025f2:	ba 08 00 00 00       	mov    $0x8,%edx
  4025f7:	be 01 00 00 00       	mov    $0x1,%esi
  4025fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402601:	e8 da e8 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402606:	0f b6 04 24          	movzbl (%rsp),%eax
  40260a:	88 45 00             	mov    %al,0x0(%rbp)
  40260d:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402612:	88 45 01             	mov    %al,0x1(%rbp)
  402615:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40261a:	88 45 02             	mov    %al,0x2(%rbp)
  40261d:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402621:	e9 57 ff ff ff       	jmpq   40257d <urlencode+0x3a>
  402626:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40262a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40262e:	e9 4a ff ff ff       	jmpq   40257d <urlencode+0x3a>
  402633:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402638:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40263d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402644:	00 00 
  402646:	75 09                	jne    402651 <urlencode+0x10e>
  402648:	48 83 c4 10          	add    $0x10,%rsp
  40264c:	5b                   	pop    %rbx
  40264d:	5d                   	pop    %rbp
  40264e:	41 5c                	pop    %r12
  402650:	c3                   	retq   
  402651:	e8 3c fb ff ff       	callq  402192 <__stack_chk_fail>

0000000000402656 <submitr>:
  402656:	41 57                	push   %r15
  402658:	41 56                	push   %r14
  40265a:	41 55                	push   %r13
  40265c:	41 54                	push   %r12
  40265e:	55                   	push   %rbp
  40265f:	53                   	push   %rbx
  402660:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402667:	49 89 fd             	mov    %rdi,%r13
  40266a:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  40266e:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402673:	49 89 ce             	mov    %rcx,%r14
  402676:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  40267b:	4d 89 cf             	mov    %r9,%r15
  40267e:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402685:	00 
  402686:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40268d:	00 00 
  40268f:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402696:	00 
  402697:	31 c0                	xor    %eax,%eax
  402699:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4026a0:	00 
  4026a1:	ba 00 00 00 00       	mov    $0x0,%edx
  4026a6:	be 01 00 00 00       	mov    $0x1,%esi
  4026ab:	bf 02 00 00 00       	mov    $0x2,%edi
  4026b0:	e8 3b e8 ff ff       	callq  400ef0 <socket@plt>
  4026b5:	85 c0                	test   %eax,%eax
  4026b7:	0f 88 ae 02 00 00    	js     40296b <submitr+0x315>
  4026bd:	89 c3                	mov    %eax,%ebx
  4026bf:	4c 89 ef             	mov    %r13,%rdi
  4026c2:	e8 09 e7 ff ff       	callq  400dd0 <gethostbyname@plt>
  4026c7:	48 85 c0             	test   %rax,%rax
  4026ca:	0f 84 e7 02 00 00    	je     4029b7 <submitr+0x361>
  4026d0:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4026d5:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4026dc:	00 00 
  4026de:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4026e5:	00 
  4026e6:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4026ed:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4026f4:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026f8:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026fc:	48 8b 30             	mov    (%rax),%rsi
  4026ff:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402704:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402709:	e8 d2 e6 ff ff       	callq  400de0 <__memmove_chk@plt>
  40270e:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402713:	66 c1 c8 08          	ror    $0x8,%ax
  402717:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40271c:	ba 10 00 00 00       	mov    $0x10,%edx
  402721:	4c 89 e6             	mov    %r12,%rsi
  402724:	89 df                	mov    %ebx,%edi
  402726:	e8 95 e7 ff ff       	callq  400ec0 <connect@plt>
  40272b:	85 c0                	test   %eax,%eax
  40272d:	0f 88 fa 02 00 00    	js     402a2d <submitr+0x3d7>
  402733:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40273a:	b8 00 00 00 00       	mov    $0x0,%eax
  40273f:	48 89 f1             	mov    %rsi,%rcx
  402742:	4c 89 ff             	mov    %r15,%rdi
  402745:	f2 ae                	repnz scas %es:(%rdi),%al
  402747:	48 89 ca             	mov    %rcx,%rdx
  40274a:	48 f7 d2             	not    %rdx
  40274d:	48 89 f1             	mov    %rsi,%rcx
  402750:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402755:	f2 ae                	repnz scas %es:(%rdi),%al
  402757:	48 f7 d1             	not    %rcx
  40275a:	49 89 c8             	mov    %rcx,%r8
  40275d:	48 89 f1             	mov    %rsi,%rcx
  402760:	4c 89 f7             	mov    %r14,%rdi
  402763:	f2 ae                	repnz scas %es:(%rdi),%al
  402765:	48 f7 d1             	not    %rcx
  402768:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40276d:	48 89 f1             	mov    %rsi,%rcx
  402770:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402775:	f2 ae                	repnz scas %es:(%rdi),%al
  402777:	48 89 c8             	mov    %rcx,%rax
  40277a:	48 f7 d0             	not    %rax
  40277d:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402782:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402787:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40278e:	00 
  40278f:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402795:	0f 87 fa 02 00 00    	ja     402a95 <submitr+0x43f>
  40279b:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4027a2:	00 
  4027a3:	b9 00 04 00 00       	mov    $0x400,%ecx
  4027a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ad:	48 89 f7             	mov    %rsi,%rdi
  4027b0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4027b3:	4c 89 ff             	mov    %r15,%rdi
  4027b6:	e8 88 fd ff ff       	callq  402543 <urlencode>
  4027bb:	85 c0                	test   %eax,%eax
  4027bd:	0f 88 45 03 00 00    	js     402b08 <submitr+0x4b2>
  4027c3:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4027ca:	00 
  4027cb:	48 83 ec 08          	sub    $0x8,%rsp
  4027cf:	41 55                	push   %r13
  4027d1:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  4027d8:	00 
  4027d9:	50                   	push   %rax
  4027da:	41 56                	push   %r14
  4027dc:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  4027e1:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4027e6:	48 8d 0d 4b 11 00 00 	lea    0x114b(%rip),%rcx        # 403938 <trans_char+0x38>
  4027ed:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027f2:	be 01 00 00 00       	mov    $0x1,%esi
  4027f7:	4c 89 e7             	mov    %r12,%rdi
  4027fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4027ff:	e8 dc e6 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402804:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40280b:	b8 00 00 00 00       	mov    $0x0,%eax
  402810:	4c 89 e7             	mov    %r12,%rdi
  402813:	f2 ae                	repnz scas %es:(%rdi),%al
  402815:	48 89 ca             	mov    %rcx,%rdx
  402818:	48 f7 d2             	not    %rdx
  40281b:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40281f:	48 83 c4 20          	add    $0x20,%rsp
  402823:	4c 89 e6             	mov    %r12,%rsi
  402826:	89 df                	mov    %ebx,%edi
  402828:	e8 89 fb ff ff       	callq  4023b6 <rio_writen>
  40282d:	48 85 c0             	test   %rax,%rax
  402830:	0f 88 5d 03 00 00    	js     402b93 <submitr+0x53d>
  402836:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40283b:	89 de                	mov    %ebx,%esi
  40283d:	4c 89 e7             	mov    %r12,%rdi
  402840:	e8 2f fb ff ff       	callq  402374 <rio_readinitb>
  402845:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40284c:	00 
  40284d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402852:	4c 89 e7             	mov    %r12,%rdi
  402855:	e8 45 fc ff ff       	callq  40249f <rio_readlineb>
  40285a:	48 85 c0             	test   %rax,%rax
  40285d:	0f 8e 9c 03 00 00    	jle    402bff <submitr+0x5a9>
  402863:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402868:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  40286f:	00 
  402870:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402877:	00 
  402878:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40287f:	00 
  402880:	48 8d 35 48 11 00 00 	lea    0x1148(%rip),%rsi        # 4039cf <trans_char+0xcf>
  402887:	b8 00 00 00 00       	mov    $0x0,%eax
  40288c:	e8 af e5 ff ff       	callq  400e40 <__isoc99_sscanf@plt>
  402891:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402898:	00 
  402899:	b9 03 00 00 00       	mov    $0x3,%ecx
  40289e:	48 8d 3d 41 11 00 00 	lea    0x1141(%rip),%rdi        # 4039e6 <trans_char+0xe6>
  4028a5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028a7:	0f 97 c0             	seta   %al
  4028aa:	1c 00                	sbb    $0x0,%al
  4028ac:	84 c0                	test   %al,%al
  4028ae:	0f 84 cb 03 00 00    	je     402c7f <submitr+0x629>
  4028b4:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4028bb:	00 
  4028bc:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4028c1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028c6:	e8 d4 fb ff ff       	callq  40249f <rio_readlineb>
  4028cb:	48 85 c0             	test   %rax,%rax
  4028ce:	7f c1                	jg     402891 <submitr+0x23b>
  4028d0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028d7:	3a 20 43 
  4028da:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028e1:	20 75 6e 
  4028e4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028e8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028ec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028f3:	74 6f 20 
  4028f6:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4028fd:	68 65 61 
  402900:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402904:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402908:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40290f:	66 72 6f 
  402912:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402919:	6f 6c 61 
  40291c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402920:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402924:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  40292b:	76 65 72 
  40292e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402932:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402936:	89 df                	mov    %ebx,%edi
  402938:	e8 53 e4 ff ff       	callq  400d90 <close@plt>
  40293d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402942:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402949:	00 
  40294a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402951:	00 00 
  402953:	0f 85 96 04 00 00    	jne    402def <submitr+0x799>
  402959:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402960:	5b                   	pop    %rbx
  402961:	5d                   	pop    %rbp
  402962:	41 5c                	pop    %r12
  402964:	41 5d                	pop    %r13
  402966:	41 5e                	pop    %r14
  402968:	41 5f                	pop    %r15
  40296a:	c3                   	retq   
  40296b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402972:	3a 20 43 
  402975:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40297c:	20 75 6e 
  40297f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402983:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402987:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40298e:	74 6f 20 
  402991:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402998:	65 20 73 
  40299b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40299f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029a3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4029aa:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4029b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029b5:	eb 8b                	jmp    402942 <submitr+0x2ec>
  4029b7:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4029be:	3a 20 44 
  4029c1:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4029c8:	20 75 6e 
  4029cb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029cf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029da:	74 6f 20 
  4029dd:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4029e4:	76 65 20 
  4029e7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029eb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029ef:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4029f6:	61 62 20 
  4029f9:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402a00:	72 20 61 
  402a03:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a07:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a0b:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402a12:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402a18:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402a1c:	89 df                	mov    %ebx,%edi
  402a1e:	e8 6d e3 ff ff       	callq  400d90 <close@plt>
  402a23:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a28:	e9 15 ff ff ff       	jmpq   402942 <submitr+0x2ec>
  402a2d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a34:	3a 20 55 
  402a37:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402a3e:	20 74 6f 
  402a41:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a45:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a49:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a50:	65 63 74 
  402a53:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402a5a:	68 65 20 
  402a5d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a61:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a65:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402a6c:	61 62 20 
  402a6f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a73:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  402a7a:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  402a80:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a84:	89 df                	mov    %ebx,%edi
  402a86:	e8 05 e3 ff ff       	callq  400d90 <close@plt>
  402a8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a90:	e9 ad fe ff ff       	jmpq   402942 <submitr+0x2ec>
  402a95:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a9c:	3a 20 52 
  402a9f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402aa6:	20 73 74 
  402aa9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402aad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ab1:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402ab8:	74 6f 6f 
  402abb:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402ac2:	65 2e 20 
  402ac5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ac9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402acd:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402ad4:	61 73 65 
  402ad7:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402ade:	49 54 52 
  402ae1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ae5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ae9:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402af0:	55 46 00 
  402af3:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402af7:	89 df                	mov    %ebx,%edi
  402af9:	e8 92 e2 ff ff       	callq  400d90 <close@plt>
  402afe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b03:	e9 3a fe ff ff       	jmpq   402942 <submitr+0x2ec>
  402b08:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402b0f:	3a 20 52 
  402b12:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402b19:	20 73 74 
  402b1c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b20:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b24:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402b2b:	63 6f 6e 
  402b2e:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402b35:	20 61 6e 
  402b38:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b3c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b40:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402b47:	67 61 6c 
  402b4a:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402b51:	6e 70 72 
  402b54:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b58:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b5c:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402b63:	6c 65 20 
  402b66:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b6d:	63 74 65 
  402b70:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b74:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402b78:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402b7e:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402b82:	89 df                	mov    %ebx,%edi
  402b84:	e8 07 e2 ff ff       	callq  400d90 <close@plt>
  402b89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b8e:	e9 af fd ff ff       	jmpq   402942 <submitr+0x2ec>
  402b93:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b9a:	3a 20 43 
  402b9d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ba4:	20 75 6e 
  402ba7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bab:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402baf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bb6:	74 6f 20 
  402bb9:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402bc0:	20 74 6f 
  402bc3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bc7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bcb:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402bd2:	41 75 74 
  402bd5:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  402bdc:	73 65 72 
  402bdf:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402be3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402be7:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  402bee:	89 df                	mov    %ebx,%edi
  402bf0:	e8 9b e1 ff ff       	callq  400d90 <close@plt>
  402bf5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bfa:	e9 43 fd ff ff       	jmpq   402942 <submitr+0x2ec>
  402bff:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c06:	3a 20 43 
  402c09:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c10:	20 75 6e 
  402c13:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c17:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c1b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c22:	74 6f 20 
  402c25:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402c2c:	66 69 72 
  402c2f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c33:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c37:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402c3e:	61 64 65 
  402c41:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  402c48:	6d 20 41 
  402c4b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c4f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c53:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402c5a:	62 20 73 
  402c5d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c61:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  402c68:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  402c6e:	89 df                	mov    %ebx,%edi
  402c70:	e8 1b e1 ff ff       	callq  400d90 <close@plt>
  402c75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c7a:	e9 c3 fc ff ff       	jmpq   402942 <submitr+0x2ec>
  402c7f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402c86:	00 
  402c87:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402c8c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c91:	e8 09 f8 ff ff       	callq  40249f <rio_readlineb>
  402c96:	48 85 c0             	test   %rax,%rax
  402c99:	0f 8e 96 00 00 00    	jle    402d35 <submitr+0x6df>
  402c9f:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402ca4:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402cab:	0f 85 05 01 00 00    	jne    402db6 <submitr+0x760>
  402cb1:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402cb8:	00 
  402cb9:	48 89 ef             	mov    %rbp,%rdi
  402cbc:	e8 6f e0 ff ff       	callq  400d30 <strcpy@plt>
  402cc1:	89 df                	mov    %ebx,%edi
  402cc3:	e8 c8 e0 ff ff       	callq  400d90 <close@plt>
  402cc8:	b9 04 00 00 00       	mov    $0x4,%ecx
  402ccd:	48 8d 3d 0c 0d 00 00 	lea    0xd0c(%rip),%rdi        # 4039e0 <trans_char+0xe0>
  402cd4:	48 89 ee             	mov    %rbp,%rsi
  402cd7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cd9:	0f 97 c0             	seta   %al
  402cdc:	1c 00                	sbb    $0x0,%al
  402cde:	0f be c0             	movsbl %al,%eax
  402ce1:	85 c0                	test   %eax,%eax
  402ce3:	0f 84 59 fc ff ff    	je     402942 <submitr+0x2ec>
  402ce9:	b9 05 00 00 00       	mov    $0x5,%ecx
  402cee:	48 8d 3d ef 0c 00 00 	lea    0xcef(%rip),%rdi        # 4039e4 <trans_char+0xe4>
  402cf5:	48 89 ee             	mov    %rbp,%rsi
  402cf8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cfa:	0f 97 c0             	seta   %al
  402cfd:	1c 00                	sbb    $0x0,%al
  402cff:	0f be c0             	movsbl %al,%eax
  402d02:	85 c0                	test   %eax,%eax
  402d04:	0f 84 38 fc ff ff    	je     402942 <submitr+0x2ec>
  402d0a:	b9 03 00 00 00       	mov    $0x3,%ecx
  402d0f:	48 8d 3d d3 0c 00 00 	lea    0xcd3(%rip),%rdi        # 4039e9 <trans_char+0xe9>
  402d16:	48 89 ee             	mov    %rbp,%rsi
  402d19:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d1b:	0f 97 c0             	seta   %al
  402d1e:	1c 00                	sbb    $0x0,%al
  402d20:	0f be c0             	movsbl %al,%eax
  402d23:	85 c0                	test   %eax,%eax
  402d25:	0f 84 17 fc ff ff    	je     402942 <submitr+0x2ec>
  402d2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d30:	e9 0d fc ff ff       	jmpq   402942 <submitr+0x2ec>
  402d35:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d3c:	3a 20 43 
  402d3f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d46:	20 75 6e 
  402d49:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d4d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d51:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d58:	74 6f 20 
  402d5b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402d62:	73 74 61 
  402d65:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d69:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d6d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d74:	65 73 73 
  402d77:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d7e:	72 6f 6d 
  402d81:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d85:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d89:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402d90:	6c 61 62 
  402d93:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  402d9a:	65 72 00 
  402d9d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402da1:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402da5:	89 df                	mov    %ebx,%edi
  402da7:	e8 e4 df ff ff       	callq  400d90 <close@plt>
  402dac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402db1:	e9 8c fb ff ff       	jmpq   402942 <submitr+0x2ec>
  402db6:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402dbd:	00 
  402dbe:	48 8d 0d d3 0b 00 00 	lea    0xbd3(%rip),%rcx        # 403998 <trans_char+0x98>
  402dc5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402dcc:	be 01 00 00 00       	mov    $0x1,%esi
  402dd1:	48 89 ef             	mov    %rbp,%rdi
  402dd4:	b8 00 00 00 00       	mov    $0x0,%eax
  402dd9:	e8 02 e1 ff ff       	callq  400ee0 <__sprintf_chk@plt>
  402dde:	89 df                	mov    %ebx,%edi
  402de0:	e8 ab df ff ff       	callq  400d90 <close@plt>
  402de5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dea:	e9 53 fb ff ff       	jmpq   402942 <submitr+0x2ec>
  402def:	e8 9e f3 ff ff       	callq  402192 <__stack_chk_fail>

0000000000402df4 <init_timeout>:
  402df4:	85 ff                	test   %edi,%edi
  402df6:	74 28                	je     402e20 <init_timeout+0x2c>
  402df8:	53                   	push   %rbx
  402df9:	89 fb                	mov    %edi,%ebx
  402dfb:	85 ff                	test   %edi,%edi
  402dfd:	78 1a                	js     402e19 <init_timeout+0x25>
  402dff:	48 8d 35 80 f5 ff ff 	lea    -0xa80(%rip),%rsi        # 402386 <sigalrm_handler>
  402e06:	bf 0e 00 00 00       	mov    $0xe,%edi
  402e0b:	e8 b0 df ff ff       	callq  400dc0 <signal@plt>
  402e10:	89 df                	mov    %ebx,%edi
  402e12:	e8 69 df ff ff       	callq  400d80 <alarm@plt>
  402e17:	5b                   	pop    %rbx
  402e18:	c3                   	retq   
  402e19:	bb 00 00 00 00       	mov    $0x0,%ebx
  402e1e:	eb df                	jmp    402dff <init_timeout+0xb>
  402e20:	f3 c3                	repz retq 

0000000000402e22 <init_driver>:
  402e22:	41 54                	push   %r12
  402e24:	55                   	push   %rbp
  402e25:	53                   	push   %rbx
  402e26:	48 83 ec 20          	sub    $0x20,%rsp
  402e2a:	49 89 fc             	mov    %rdi,%r12
  402e2d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e34:	00 00 
  402e36:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402e3b:	31 c0                	xor    %eax,%eax
  402e3d:	be 01 00 00 00       	mov    $0x1,%esi
  402e42:	bf 0d 00 00 00       	mov    $0xd,%edi
  402e47:	e8 74 df ff ff       	callq  400dc0 <signal@plt>
  402e4c:	be 01 00 00 00       	mov    $0x1,%esi
  402e51:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e56:	e8 65 df ff ff       	callq  400dc0 <signal@plt>
  402e5b:	be 01 00 00 00       	mov    $0x1,%esi
  402e60:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402e65:	e8 56 df ff ff       	callq  400dc0 <signal@plt>
  402e6a:	ba 00 00 00 00       	mov    $0x0,%edx
  402e6f:	be 01 00 00 00       	mov    $0x1,%esi
  402e74:	bf 02 00 00 00       	mov    $0x2,%edi
  402e79:	e8 72 e0 ff ff       	callq  400ef0 <socket@plt>
  402e7e:	85 c0                	test   %eax,%eax
  402e80:	0f 88 a3 00 00 00    	js     402f29 <init_driver+0x107>
  402e86:	89 c3                	mov    %eax,%ebx
  402e88:	48 8d 3d 5d 0b 00 00 	lea    0xb5d(%rip),%rdi        # 4039ec <trans_char+0xec>
  402e8f:	e8 3c df ff ff       	callq  400dd0 <gethostbyname@plt>
  402e94:	48 85 c0             	test   %rax,%rax
  402e97:	0f 84 df 00 00 00    	je     402f7c <init_driver+0x15a>
  402e9d:	48 89 e5             	mov    %rsp,%rbp
  402ea0:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402ea7:	00 00 
  402ea9:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402eb0:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402eb6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402ebc:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ec0:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ec4:	48 8b 30             	mov    (%rax),%rsi
  402ec7:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402ecb:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ed0:	e8 0b df ff ff       	callq  400de0 <__memmove_chk@plt>
  402ed5:	66 c7 44 24 02 0b b8 	movw   $0xb80b,0x2(%rsp)
  402edc:	ba 10 00 00 00       	mov    $0x10,%edx
  402ee1:	48 89 ee             	mov    %rbp,%rsi
  402ee4:	89 df                	mov    %ebx,%edi
  402ee6:	e8 d5 df ff ff       	callq  400ec0 <connect@plt>
  402eeb:	85 c0                	test   %eax,%eax
  402eed:	0f 88 fb 00 00 00    	js     402fee <init_driver+0x1cc>
  402ef3:	89 df                	mov    %ebx,%edi
  402ef5:	e8 96 de ff ff       	callq  400d90 <close@plt>
  402efa:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402f01:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402f07:	b8 00 00 00 00       	mov    $0x0,%eax
  402f0c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f11:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f18:	00 00 
  402f1a:	0f 85 28 01 00 00    	jne    403048 <init_driver+0x226>
  402f20:	48 83 c4 20          	add    $0x20,%rsp
  402f24:	5b                   	pop    %rbx
  402f25:	5d                   	pop    %rbp
  402f26:	41 5c                	pop    %r12
  402f28:	c3                   	retq   
  402f29:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f30:	3a 20 43 
  402f33:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f3a:	20 75 6e 
  402f3d:	49 89 04 24          	mov    %rax,(%r12)
  402f41:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f46:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f4d:	74 6f 20 
  402f50:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f57:	65 20 73 
  402f5a:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f5f:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f64:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402f6b:	6b 65 
  402f6d:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402f74:	00 
  402f75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f7a:	eb 90                	jmp    402f0c <init_driver+0xea>
  402f7c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f83:	3a 20 44 
  402f86:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f8d:	20 75 6e 
  402f90:	49 89 04 24          	mov    %rax,(%r12)
  402f94:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f99:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fa0:	74 6f 20 
  402fa3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402faa:	76 65 20 
  402fad:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402fb2:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402fb7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402fbe:	72 20 61 
  402fc1:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402fc6:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402fcd:	72 65 
  402fcf:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402fd6:	73 
  402fd7:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402fdd:	89 df                	mov    %ebx,%edi
  402fdf:	e8 ac dd ff ff       	callq  400d90 <close@plt>
  402fe4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fe9:	e9 1e ff ff ff       	jmpq   402f0c <init_driver+0xea>
  402fee:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ff5:	3a 20 55 
  402ff8:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402fff:	20 74 6f 
  403002:	49 89 04 24          	mov    %rax,(%r12)
  403006:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40300b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403012:	65 63 74 
  403015:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  40301c:	65 72 76 
  40301f:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403024:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  403029:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403030:	72 
  403031:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  403037:	89 df                	mov    %ebx,%edi
  403039:	e8 52 dd ff ff       	callq  400d90 <close@plt>
  40303e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403043:	e9 c4 fe ff ff       	jmpq   402f0c <init_driver+0xea>
  403048:	e8 45 f1 ff ff       	callq  402192 <__stack_chk_fail>

000000000040304d <driver_post>:
  40304d:	53                   	push   %rbx
  40304e:	4c 89 cb             	mov    %r9,%rbx
  403051:	45 85 c0             	test   %r8d,%r8d
  403054:	75 18                	jne    40306e <driver_post+0x21>
  403056:	48 85 ff             	test   %rdi,%rdi
  403059:	74 05                	je     403060 <driver_post+0x13>
  40305b:	80 3f 00             	cmpb   $0x0,(%rdi)
  40305e:	75 37                	jne    403097 <driver_post+0x4a>
  403060:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403065:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403069:	44 89 c0             	mov    %r8d,%eax
  40306c:	5b                   	pop    %rbx
  40306d:	c3                   	retq   
  40306e:	48 89 ca             	mov    %rcx,%rdx
  403071:	48 8d 35 84 09 00 00 	lea    0x984(%rip),%rsi        # 4039fc <trans_char+0xfc>
  403078:	bf 01 00 00 00       	mov    $0x1,%edi
  40307d:	b8 00 00 00 00       	mov    $0x0,%eax
  403082:	e8 d9 dd ff ff       	callq  400e60 <__printf_chk@plt>
  403087:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40308c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403090:	b8 00 00 00 00       	mov    $0x0,%eax
  403095:	eb d5                	jmp    40306c <driver_post+0x1f>
  403097:	48 83 ec 08          	sub    $0x8,%rsp
  40309b:	41 51                	push   %r9
  40309d:	49 89 c9             	mov    %rcx,%r9
  4030a0:	49 89 d0             	mov    %rdx,%r8
  4030a3:	48 89 f9             	mov    %rdi,%rcx
  4030a6:	48 89 f2             	mov    %rsi,%rdx
  4030a9:	be b8 0b 00 00       	mov    $0xbb8,%esi
  4030ae:	48 8d 3d 37 09 00 00 	lea    0x937(%rip),%rdi        # 4039ec <trans_char+0xec>
  4030b5:	e8 9c f5 ff ff       	callq  402656 <submitr>
  4030ba:	48 83 c4 10          	add    $0x10,%rsp
  4030be:	eb ac                	jmp    40306c <driver_post+0x1f>

00000000004030c0 <check>:
  4030c0:	89 f8                	mov    %edi,%eax
  4030c2:	c1 e8 1c             	shr    $0x1c,%eax
  4030c5:	85 c0                	test   %eax,%eax
  4030c7:	74 1d                	je     4030e6 <check+0x26>
  4030c9:	b9 00 00 00 00       	mov    $0x0,%ecx
  4030ce:	83 f9 1f             	cmp    $0x1f,%ecx
  4030d1:	7f 0d                	jg     4030e0 <check+0x20>
  4030d3:	89 f8                	mov    %edi,%eax
  4030d5:	d3 e8                	shr    %cl,%eax
  4030d7:	3c 0a                	cmp    $0xa,%al
  4030d9:	74 11                	je     4030ec <check+0x2c>
  4030db:	83 c1 08             	add    $0x8,%ecx
  4030de:	eb ee                	jmp    4030ce <check+0xe>
  4030e0:	b8 01 00 00 00       	mov    $0x1,%eax
  4030e5:	c3                   	retq   
  4030e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4030eb:	c3                   	retq   
  4030ec:	b8 00 00 00 00       	mov    $0x0,%eax
  4030f1:	c3                   	retq   

00000000004030f2 <gencookie>:
  4030f2:	53                   	push   %rbx
  4030f3:	83 c7 01             	add    $0x1,%edi
  4030f6:	e8 05 dc ff ff       	callq  400d00 <srandom@plt>
  4030fb:	e8 20 dd ff ff       	callq  400e20 <random@plt>
  403100:	89 c3                	mov    %eax,%ebx
  403102:	89 c7                	mov    %eax,%edi
  403104:	e8 b7 ff ff ff       	callq  4030c0 <check>
  403109:	85 c0                	test   %eax,%eax
  40310b:	74 ee                	je     4030fb <gencookie+0x9>
  40310d:	89 d8                	mov    %ebx,%eax
  40310f:	5b                   	pop    %rbx
  403110:	c3                   	retq   
  403111:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403118:	00 00 00 
  40311b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403120 <__libc_csu_init>:
  403120:	41 57                	push   %r15
  403122:	41 56                	push   %r14
  403124:	49 89 d7             	mov    %rdx,%r15
  403127:	41 55                	push   %r13
  403129:	41 54                	push   %r12
  40312b:	4c 8d 25 ce 1c 20 00 	lea    0x201cce(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403132:	55                   	push   %rbp
  403133:	48 8d 2d ce 1c 20 00 	lea    0x201cce(%rip),%rbp        # 604e08 <__do_global_dtors_aux_fini_array_entry>
  40313a:	53                   	push   %rbx
  40313b:	41 89 fd             	mov    %edi,%r13d
  40313e:	49 89 f6             	mov    %rsi,%r14
  403141:	4c 29 e5             	sub    %r12,%rbp
  403144:	48 83 ec 08          	sub    $0x8,%rsp
  403148:	48 c1 fd 03          	sar    $0x3,%rbp
  40314c:	e8 5f db ff ff       	callq  400cb0 <_init>
  403151:	48 85 ed             	test   %rbp,%rbp
  403154:	74 20                	je     403176 <__libc_csu_init+0x56>
  403156:	31 db                	xor    %ebx,%ebx
  403158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40315f:	00 
  403160:	4c 89 fa             	mov    %r15,%rdx
  403163:	4c 89 f6             	mov    %r14,%rsi
  403166:	44 89 ef             	mov    %r13d,%edi
  403169:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40316d:	48 83 c3 01          	add    $0x1,%rbx
  403171:	48 39 dd             	cmp    %rbx,%rbp
  403174:	75 ea                	jne    403160 <__libc_csu_init+0x40>
  403176:	48 83 c4 08          	add    $0x8,%rsp
  40317a:	5b                   	pop    %rbx
  40317b:	5d                   	pop    %rbp
  40317c:	41 5c                	pop    %r12
  40317e:	41 5d                	pop    %r13
  403180:	41 5e                	pop    %r14
  403182:	41 5f                	pop    %r15
  403184:	c3                   	retq   
  403185:	90                   	nop
  403186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40318d:	00 00 00 

0000000000403190 <__libc_csu_fini>:
  403190:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403194 <_fini>:
  403194:	48 83 ec 08          	sub    $0x8,%rsp
  403198:	48 83 c4 08          	add    $0x8,%rsp
  40319c:	c3                   	retq   
