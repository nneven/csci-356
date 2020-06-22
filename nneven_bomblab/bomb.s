
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 e5 2f 00 00 	mov    0x2fe5(%rip),%rax        # 3ff0 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <sprintf@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <sprintf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <curl_free@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <curl_free@CURL_OPENSSL_4>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <curl_global_init@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <curl_global_init@CURL_OPENSSL_4>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <curl_global_cleanup@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <curl_global_cleanup@CURL_OPENSSL_4>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <curl_easy_getinfo@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <curl_easy_getinfo@CURL_OPENSSL_4>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <calloc@plt>:
    1090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4048 <calloc@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <memcpy@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4050 <memcpy@GLIBC_2.14>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

00000000000010b0 <__isoc99_sscanf@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 4058 <__isoc99_sscanf@GLIBC_2.7>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <.plt>

00000000000010c0 <fclose@plt>:
    10c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 4060 <fclose@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <.plt>

00000000000010d0 <__ctype_b_loc@plt>:
    10d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 4068 <__ctype_b_loc@GLIBC_2.3>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <.plt>

00000000000010e0 <fputs@plt>:
    10e0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 4070 <fputs@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <.plt>

00000000000010f0 <curl_easy_setopt@plt>:
    10f0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 4078 <curl_easy_setopt@CURL_OPENSSL_4>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <.plt>

0000000000001100 <fopen@plt>:
    1100:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 4080 <fopen@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <.plt>

0000000000001110 <free@plt>:
    1110:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 4088 <free@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <.plt>

0000000000001120 <exit@plt>:
    1120:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 4090 <exit@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <.plt>

0000000000001130 <getenv@plt>:
    1130:	ff 25 62 2f 00 00    	jmpq   *0x2f62(%rip)        # 4098 <getenv@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	pushq  $0x10
    113b:	e9 e0 fe ff ff       	jmpq   1020 <.plt>

0000000000001140 <curl_easy_cleanup@plt>:
    1140:	ff 25 5a 2f 00 00    	jmpq   *0x2f5a(%rip)        # 40a0 <curl_easy_cleanup@CURL_OPENSSL_4>
    1146:	68 11 00 00 00       	pushq  $0x11
    114b:	e9 d0 fe ff ff       	jmpq   1020 <.plt>

0000000000001150 <fputc@plt>:
    1150:	ff 25 52 2f 00 00    	jmpq   *0x2f52(%rip)        # 40a8 <fputc@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	pushq  $0x12
    115b:	e9 c0 fe ff ff       	jmpq   1020 <.plt>

0000000000001160 <curl_easy_init@plt>:
    1160:	ff 25 4a 2f 00 00    	jmpq   *0x2f4a(%rip)        # 40b0 <curl_easy_init@CURL_OPENSSL_4>
    1166:	68 13 00 00 00       	pushq  $0x13
    116b:	e9 b0 fe ff ff       	jmpq   1020 <.plt>

0000000000001170 <curl_easy_perform@plt>:
    1170:	ff 25 42 2f 00 00    	jmpq   *0x2f42(%rip)        # 40b8 <curl_easy_perform@CURL_OPENSSL_4>
    1176:	68 14 00 00 00       	pushq  $0x14
    117b:	e9 a0 fe ff ff       	jmpq   1020 <.plt>

0000000000001180 <strtol@plt>:
    1180:	ff 25 3a 2f 00 00    	jmpq   *0x2f3a(%rip)        # 40c0 <strtol@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	pushq  $0x15
    118b:	e9 90 fe ff ff       	jmpq   1020 <.plt>

0000000000001190 <curl_easy_strerror@plt>:
    1190:	ff 25 32 2f 00 00    	jmpq   *0x2f32(%rip)        # 40c8 <curl_easy_strerror@CURL_OPENSSL_4>
    1196:	68 16 00 00 00       	pushq  $0x16
    119b:	e9 80 fe ff ff       	jmpq   1020 <.plt>

00000000000011a0 <puts@plt>:
    11a0:	ff 25 2a 2f 00 00    	jmpq   *0x2f2a(%rip)        # 40d0 <puts@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	pushq  $0x17
    11ab:	e9 70 fe ff ff       	jmpq   1020 <.plt>

00000000000011b0 <fgets@plt>:
    11b0:	ff 25 22 2f 00 00    	jmpq   *0x2f22(%rip)        # 40d8 <fgets@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	pushq  $0x18
    11bb:	e9 60 fe ff ff       	jmpq   1020 <.plt>

00000000000011c0 <snprintf@plt>:
    11c0:	ff 25 1a 2f 00 00    	jmpq   *0x2f1a(%rip)        # 40e0 <snprintf@GLIBC_2.2.5>
    11c6:	68 19 00 00 00       	pushq  $0x19
    11cb:	e9 50 fe ff ff       	jmpq   1020 <.plt>

00000000000011d0 <memmove@plt>:
    11d0:	ff 25 12 2f 00 00    	jmpq   *0x2f12(%rip)        # 40e8 <memmove@GLIBC_2.2.5>
    11d6:	68 1a 00 00 00       	pushq  $0x1a
    11db:	e9 40 fe ff ff       	jmpq   1020 <.plt>

00000000000011e0 <realloc@plt>:
    11e0:	ff 25 0a 2f 00 00    	jmpq   *0x2f0a(%rip)        # 40f0 <realloc@GLIBC_2.2.5>
    11e6:	68 1b 00 00 00       	pushq  $0x1b
    11eb:	e9 30 fe ff ff       	jmpq   1020 <.plt>

00000000000011f0 <access@plt>:
    11f0:	ff 25 02 2f 00 00    	jmpq   *0x2f02(%rip)        # 40f8 <access@GLIBC_2.2.5>
    11f6:	68 1c 00 00 00       	pushq  $0x1c
    11fb:	e9 20 fe ff ff       	jmpq   1020 <.plt>

0000000000001200 <curl_easy_escape@plt>:
    1200:	ff 25 fa 2e 00 00    	jmpq   *0x2efa(%rip)        # 4100 <curl_easy_escape@CURL_OPENSSL_4>
    1206:	68 1d 00 00 00       	pushq  $0x1d
    120b:	e9 10 fe ff ff       	jmpq   1020 <.plt>

0000000000001210 <strdup@plt>:
    1210:	ff 25 f2 2e 00 00    	jmpq   *0x2ef2(%rip)        # 4108 <strdup@GLIBC_2.2.5>
    1216:	68 1e 00 00 00       	pushq  $0x1e
    121b:	e9 00 fe ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001220 <__cxa_finalize@plt>:
    1220:	ff 25 b2 2d 00 00    	jmpq   *0x2db2(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1226:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001230 <_start>:
    1230:	31 ed                	xor    %ebp,%ebp
    1232:	49 89 d1             	mov    %rdx,%r9
    1235:	5e                   	pop    %rsi
    1236:	48 89 e2             	mov    %rsp,%rdx
    1239:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    123d:	50                   	push   %rax
    123e:	54                   	push   %rsp
    123f:	4c 8d 05 8a 0c 00 00 	lea    0xc8a(%rip),%r8        # 1ed0 <__libc_csu_fini>
    1246:	48 8d 0d 23 0c 00 00 	lea    0xc23(%rip),%rcx        # 1e70 <__libc_csu_init>
    124d:	48 8d 3d 4f 01 00 00 	lea    0x14f(%rip),%rdi        # 13a3 <main>
    1254:	ff 15 8e 2d 00 00    	callq  *0x2d8e(%rip)        # 3fe8 <__libc_start_main@GLIBC_2.2.5>
    125a:	f4                   	hlt    
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <deregister_tm_clones>:
    1260:	48 8d 3d 19 2f 00 00 	lea    0x2f19(%rip),%rdi        # 4180 <stdin@@GLIBC_2.2.5>
    1267:	48 8d 05 12 2f 00 00 	lea    0x2f12(%rip),%rax        # 4180 <stdin@@GLIBC_2.2.5>
    126e:	48 39 f8             	cmp    %rdi,%rax
    1271:	74 15                	je     1288 <deregister_tm_clones+0x28>
    1273:	48 8b 05 66 2d 00 00 	mov    0x2d66(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable>
    127a:	48 85 c0             	test   %rax,%rax
    127d:	74 09                	je     1288 <deregister_tm_clones+0x28>
    127f:	ff e0                	jmpq   *%rax
    1281:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1288:	c3                   	retq   
    1289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001290 <register_tm_clones>:
    1290:	48 8d 3d e9 2e 00 00 	lea    0x2ee9(%rip),%rdi        # 4180 <stdin@@GLIBC_2.2.5>
    1297:	48 8d 35 e2 2e 00 00 	lea    0x2ee2(%rip),%rsi        # 4180 <stdin@@GLIBC_2.2.5>
    129e:	48 29 fe             	sub    %rdi,%rsi
    12a1:	48 89 f0             	mov    %rsi,%rax
    12a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    12a8:	48 c1 f8 03          	sar    $0x3,%rax
    12ac:	48 01 c6             	add    %rax,%rsi
    12af:	48 d1 fe             	sar    %rsi
    12b2:	74 14                	je     12c8 <register_tm_clones+0x38>
    12b4:	48 8b 05 3d 2d 00 00 	mov    0x2d3d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable>
    12bb:	48 85 c0             	test   %rax,%rax
    12be:	74 08                	je     12c8 <register_tm_clones+0x38>
    12c0:	ff e0                	jmpq   *%rax
    12c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12c8:	c3                   	retq   
    12c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012d0 <__do_global_dtors_aux>:
    12d0:	80 3d b1 2e 00 00 00 	cmpb   $0x0,0x2eb1(%rip)        # 4188 <completed.7447>
    12d7:	75 2f                	jne    1308 <__do_global_dtors_aux+0x38>
    12d9:	55                   	push   %rbp
    12da:	48 83 3d f6 2c 00 00 	cmpq   $0x0,0x2cf6(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    12e1:	00 
    12e2:	48 89 e5             	mov    %rsp,%rbp
    12e5:	74 0c                	je     12f3 <__do_global_dtors_aux+0x23>
    12e7:	48 8b 3d 3a 2e 00 00 	mov    0x2e3a(%rip),%rdi        # 4128 <__dso_handle>
    12ee:	e8 2d ff ff ff       	callq  1220 <__cxa_finalize@plt>
    12f3:	e8 68 ff ff ff       	callq  1260 <deregister_tm_clones>
    12f8:	c6 05 89 2e 00 00 01 	movb   $0x1,0x2e89(%rip)        # 4188 <completed.7447>
    12ff:	5d                   	pop    %rbp
    1300:	c3                   	retq   
    1301:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1308:	c3                   	retq   
    1309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001310 <frame_dummy>:
    1310:	e9 7b ff ff ff       	jmpq   1290 <register_tm_clones>

0000000000001315 <explode_bomb>:
    1315:	48 83 ec 08          	sub    $0x8,%rsp
    1319:	48 89 f2             	mov    %rsi,%rdx
    131c:	89 fe                	mov    %edi,%esi
    131e:	bf 00 00 00 00       	mov    $0x0,%edi
    1323:	e8 15 09 00 00       	callq  1c3d <driver_post>
    1328:	48 83 c4 08          	add    $0x8,%rsp
    132c:	c3                   	retq   

000000000000132d <strip>:
    132d:	41 54                	push   %r12
    132f:	55                   	push   %rbp
    1330:	53                   	push   %rbx
    1331:	49 89 fc             	mov    %rdi,%r12
    1334:	48 89 fd             	mov    %rdi,%rbp
    1337:	e8 94 fd ff ff       	callq  10d0 <__ctype_b_loc@plt>
    133c:	48 8b 10             	mov    (%rax),%rdx
    133f:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
    1343:	0f b6 c8             	movzbl %al,%ecx
    1346:	f6 44 4a 01 20       	testb  $0x20,0x1(%rdx,%rcx,2)
    134b:	74 06                	je     1353 <strip+0x26>
    134d:	48 83 c5 01          	add    $0x1,%rbp
    1351:	eb e4                	jmp    1337 <strip+0xa>
    1353:	84 c0                	test   %al,%al
    1355:	75 21                	jne    1378 <strip+0x4b>
    1357:	bb 00 00 00 00       	mov    $0x0,%ebx
    135c:	4c 39 e5             	cmp    %r12,%rbp
    135f:	74 0f                	je     1370 <strip+0x43>
    1361:	48 8d 53 01          	lea    0x1(%rbx),%rdx
    1365:	48 89 ee             	mov    %rbp,%rsi
    1368:	4c 89 e7             	mov    %r12,%rdi
    136b:	e8 60 fe ff ff       	callq  11d0 <memmove@plt>
    1370:	48 89 d8             	mov    %rbx,%rax
    1373:	5b                   	pop    %rbx
    1374:	5d                   	pop    %rbp
    1375:	41 5c                	pop    %r12
    1377:	c3                   	retq   
    1378:	48 89 e8             	mov    %rbp,%rax
    137b:	80 38 00             	cmpb   $0x0,(%rax)
    137e:	74 06                	je     1386 <strip+0x59>
    1380:	48 83 c0 01          	add    $0x1,%rax
    1384:	eb f5                	jmp    137b <strip+0x4e>
    1386:	48 89 c6             	mov    %rax,%rsi
    1389:	48 83 e8 01          	sub    $0x1,%rax
    138d:	0f b6 08             	movzbl (%rax),%ecx
    1390:	f6 44 4a 01 20       	testb  $0x20,0x1(%rdx,%rcx,2)
    1395:	75 ef                	jne    1386 <strip+0x59>
    1397:	c6 06 00             	movb   $0x0,(%rsi)
    139a:	48 29 e8             	sub    %rbp,%rax
    139d:	48 8d 58 01          	lea    0x1(%rax),%rbx
    13a1:	eb b9                	jmp    135c <strip+0x2f>

00000000000013a3 <main>:
    13a3:	55                   	push   %rbp
    13a4:	53                   	push   %rbx
    13a5:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
    13ac:	83 ff 02             	cmp    $0x2,%edi
    13af:	74 21                	je     13d2 <main+0x2f>
    13b1:	8b 35 79 2d 00 00    	mov    0x2d79(%rip),%esi        # 4130 <phases_count>
    13b7:	48 8d 3d 4a 0c 00 00 	lea    0xc4a(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    13be:	b8 00 00 00 00       	mov    $0x0,%eax
    13c3:	e8 68 fc ff ff       	callq  1030 <printf@plt>
    13c8:	bf 01 00 00 00       	mov    $0x1,%edi
    13cd:	e8 4e fd ff ff       	callq  1120 <exit@plt>
    13d2:	48 89 f3             	mov    %rsi,%rbx
    13d5:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    13da:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    13de:	ba 0a 00 00 00       	mov    $0xa,%edx
    13e3:	e8 98 fd ff ff       	callq  1180 <strtol@plt>
    13e8:	48 89 c5             	mov    %rax,%rbp
    13eb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    13ef:	48 3b 74 24 08       	cmp    0x8(%rsp),%rsi
    13f4:	74 35                	je     142b <main+0x88>
    13f6:	48 85 c0             	test   %rax,%rax
    13f9:	7e 0c                	jle    1407 <main+0x64>
    13fb:	48 63 05 2e 2d 00 00 	movslq 0x2d2e(%rip),%rax        # 4130 <phases_count>
    1402:	48 39 e8             	cmp    %rbp,%rax
    1405:	7d 3f                	jge    1446 <main+0xa3>
    1407:	8b 15 23 2d 00 00    	mov    0x2d23(%rip),%edx        # 4130 <phases_count>
    140d:	48 89 ee             	mov    %rbp,%rsi
    1410:	48 8d 3d 71 0c 00 00 	lea    0xc71(%rip),%rdi        # 2088 <_IO_stdin_used+0x88>
    1417:	b8 00 00 00 00       	mov    $0x0,%eax
    141c:	e8 0f fc ff ff       	callq  1030 <printf@plt>
    1421:	bf 01 00 00 00       	mov    $0x1,%edi
    1426:	e8 f5 fc ff ff       	callq  1120 <exit@plt>
    142b:	48 8d 3d 1e 0c 00 00 	lea    0xc1e(%rip),%rdi        # 2050 <_IO_stdin_used+0x50>
    1432:	b8 00 00 00 00       	mov    $0x0,%eax
    1437:	e8 f4 fb ff ff       	callq  1030 <printf@plt>
    143c:	bf 01 00 00 00       	mov    $0x1,%edi
    1441:	e8 da fc ff ff       	callq  1120 <exit@plt>
    1446:	48 8d 9c 24 e0 00 00 	lea    0xe0(%rsp),%rbx
    144d:	00 
    144e:	89 e9                	mov    %ebp,%ecx
    1450:	48 8d 15 ae 0d 00 00 	lea    0xdae(%rip),%rdx        # 2205 <_IO_stdin_used+0x205>
    1457:	be 14 00 00 00       	mov    $0x14,%esi
    145c:	48 89 df             	mov    %rbx,%rdi
    145f:	b8 00 00 00 00       	mov    $0x0,%eax
    1464:	e8 57 fd ff ff       	callq  11c0 <snprintf@plt>
    1469:	be 00 00 00 00       	mov    $0x0,%esi
    146e:	48 89 df             	mov    %rbx,%rdi
    1471:	e8 7a fd ff ff       	callq  11f0 <access@plt>
    1476:	85 c0                	test   %eax,%eax
    1478:	75 20                	jne    149a <main+0xf7>
    147a:	48 8d 94 24 e0 00 00 	lea    0xe0(%rsp),%rdx
    1481:	00 
    1482:	89 ee                	mov    %ebp,%esi
    1484:	48 8d 3d 35 0c 00 00 	lea    0xc35(%rip),%rdi        # 20c0 <_IO_stdin_used+0xc0>
    148b:	e8 a0 fb ff ff       	callq  1030 <printf@plt>
    1490:	bf 01 00 00 00       	mov    $0x1,%edi
    1495:	e8 86 fc ff ff       	callq  1120 <exit@plt>
    149a:	b8 00 00 00 00       	mov    $0x0,%eax
    149f:	e8 b0 06 00 00       	callq  1b54 <init_driver>
    14a4:	8b 35 86 2c 00 00    	mov    0x2c86(%rip),%esi        # 4130 <phases_count>
    14aa:	48 8d 3d 4f 0c 00 00 	lea    0xc4f(%rip),%rdi        # 2100 <_IO_stdin_used+0x100>
    14b1:	b8 00 00 00 00       	mov    $0x0,%eax
    14b6:	e8 75 fb ff ff       	callq  1030 <printf@plt>
    14bb:	89 ee                	mov    %ebp,%esi
    14bd:	48 8d 3d 74 0c 00 00 	lea    0xc74(%rip),%rdi        # 2138 <_IO_stdin_used+0x138>
    14c4:	b8 00 00 00 00       	mov    $0x0,%eax
    14c9:	e8 62 fb ff ff       	callq  1030 <printf@plt>
    14ce:	48 8d 3d 3a 0d 00 00 	lea    0xd3a(%rip),%rdi        # 220f <_IO_stdin_used+0x20f>
    14d5:	e8 c6 fc ff ff       	callq  11a0 <puts@plt>
    14da:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    14df:	48 8b 15 9a 2c 00 00 	mov    0x2c9a(%rip),%rdx        # 4180 <stdin@@GLIBC_2.2.5>
    14e6:	be c8 00 00 00       	mov    $0xc8,%esi
    14eb:	e8 c0 fc ff ff       	callq  11b0 <fgets@plt>
    14f0:	48 85 c0             	test   %rax,%rax
    14f3:	0f 84 c6 00 00 00    	je     15bf <main+0x21c>
    14f9:	48 8d 3d 8a 0e 00 00 	lea    0xe8a(%rip),%rdi        # 238a <xs.2352+0xca>
    1500:	e8 9b fc ff ff       	callq  11a0 <puts@plt>
    1505:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    150a:	e8 1e fe ff ff       	callq  132d <strip>
    150f:	80 7c 24 10 00       	cmpb   $0x0,0x10(%rsp)
    1514:	0f 84 bb 00 00 00    	je     15d5 <main+0x232>
    151a:	8d 45 ff             	lea    -0x1(%rbp),%eax
    151d:	48 98                	cltq   
    151f:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1524:	48 8d 15 15 2c 00 00 	lea    0x2c15(%rip),%rdx        # 4140 <phases>
    152b:	ff 14 c2             	callq  *(%rdx,%rax,8)
    152e:	85 c0                	test   %eax,%eax
    1530:	0f 85 d8 00 00 00    	jne    160e <main+0x26b>
    1536:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    153b:	89 ee                	mov    %ebp,%esi
    153d:	bf 01 00 00 00       	mov    $0x1,%edi
    1542:	e8 f6 06 00 00       	callq  1c3d <driver_post>
    1547:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
    154e:	00 
    154f:	48 8d 35 f3 0c 00 00 	lea    0xcf3(%rip),%rsi        # 2249 <_IO_stdin_used+0x249>
    1556:	e8 a5 fb ff ff       	callq  1100 <fopen@plt>
    155b:	48 89 c3             	mov    %rax,%rbx
    155e:	48 85 c0             	test   %rax,%rax
    1561:	0f 84 84 00 00 00    	je     15eb <main+0x248>
    1567:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    156c:	48 89 c6             	mov    %rax,%rsi
    156f:	e8 6c fb ff ff       	callq  10e0 <fputs@plt>
    1574:	48 89 de             	mov    %rbx,%rsi
    1577:	bf 0a 00 00 00       	mov    $0xa,%edi
    157c:	e8 cf fb ff ff       	callq  1150 <fputc@plt>
    1581:	48 89 df             	mov    %rbx,%rdi
    1584:	e8 37 fb ff ff       	callq  10c0 <fclose@plt>
    1589:	89 ee                	mov    %ebp,%esi
    158b:	48 8d 3d 16 0c 00 00 	lea    0xc16(%rip),%rdi        # 21a8 <_IO_stdin_used+0x1a8>
    1592:	b8 00 00 00 00       	mov    $0x0,%eax
    1597:	e8 94 fa ff ff       	callq  1030 <printf@plt>
    159c:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
    15a3:	00 
    15a4:	48 8d 3d 25 0c 00 00 	lea    0xc25(%rip),%rdi        # 21d0 <_IO_stdin_used+0x1d0>
    15ab:	b8 00 00 00 00       	mov    $0x0,%eax
    15b0:	e8 7b fa ff ff       	callq  1030 <printf@plt>
    15b5:	bf 00 00 00 00       	mov    $0x0,%edi
    15ba:	e8 61 fb ff ff       	callq  1120 <exit@plt>
    15bf:	48 8d 3d 5e 0c 00 00 	lea    0xc5e(%rip),%rdi        # 2224 <_IO_stdin_used+0x224>
    15c6:	e8 d5 fb ff ff       	callq  11a0 <puts@plt>
    15cb:	bf 01 00 00 00       	mov    $0x1,%edi
    15d0:	e8 4b fb ff ff       	callq  1120 <exit@plt>
    15d5:	48 8d 3d 59 0c 00 00 	lea    0xc59(%rip),%rdi        # 2235 <_IO_stdin_used+0x235>
    15dc:	e8 bf fb ff ff       	callq  11a0 <puts@plt>
    15e1:	bf 01 00 00 00       	mov    $0x1,%edi
    15e6:	e8 35 fb ff ff       	callq  1120 <exit@plt>
    15eb:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
    15f2:	00 
    15f3:	48 8d 3d 6e 0b 00 00 	lea    0xb6e(%rip),%rdi        # 2168 <_IO_stdin_used+0x168>
    15fa:	b8 00 00 00 00       	mov    $0x0,%eax
    15ff:	e8 2c fa ff ff       	callq  1030 <printf@plt>
    1604:	bf 01 00 00 00       	mov    $0x1,%edi
    1609:	e8 12 fb ff ff       	callq  1120 <exit@plt>
    160e:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    1613:	89 ef                	mov    %ebp,%edi
    1615:	e8 fb fc ff ff       	callq  1315 <explode_bomb>
    161a:	48 8d 3d 2a 0c 00 00 	lea    0xc2a(%rip),%rdi        # 224b <_IO_stdin_used+0x24b>
    1621:	e8 7a fb ff ff       	callq  11a0 <puts@plt>
    1626:	48 8d 3d 2f 0c 00 00 	lea    0xc2f(%rip),%rdi        # 225c <_IO_stdin_used+0x25c>
    162d:	e8 6e fb ff ff       	callq  11a0 <puts@plt>
    1632:	bf 02 00 00 00       	mov    $0x2,%edi
    1637:	e8 e4 fa ff ff       	callq  1120 <exit@plt>

000000000000163c <string_length>:
    163c:	b8 00 00 00 00       	mov    $0x0,%eax
    1641:	80 3f 00             	cmpb   $0x0,(%rdi)
    1644:	74 09                	je     164f <string_length+0x13>
    1646:	48 83 c7 01          	add    $0x1,%rdi
    164a:	83 c0 01             	add    $0x1,%eax
    164d:	eb f2                	jmp    1641 <string_length+0x5>
    164f:	c3                   	retq   

0000000000001650 <strings_not_equal>:
    1650:	41 54                	push   %r12
    1652:	55                   	push   %rbp
    1653:	53                   	push   %rbx
    1654:	48 89 fb             	mov    %rdi,%rbx
    1657:	48 89 f5             	mov    %rsi,%rbp
    165a:	e8 dd ff ff ff       	callq  163c <string_length>
    165f:	41 89 c4             	mov    %eax,%r12d
    1662:	48 89 ef             	mov    %rbp,%rdi
    1665:	e8 d2 ff ff ff       	callq  163c <string_length>
    166a:	41 39 c4             	cmp    %eax,%r12d
    166d:	75 1d                	jne    168c <strings_not_equal+0x3c>
    166f:	0f b6 03             	movzbl (%rbx),%eax
    1672:	84 c0                	test   %al,%al
    1674:	74 0f                	je     1685 <strings_not_equal+0x35>
    1676:	38 45 00             	cmp    %al,0x0(%rbp)
    1679:	75 1b                	jne    1696 <strings_not_equal+0x46>
    167b:	48 83 c3 01          	add    $0x1,%rbx
    167f:	48 83 c5 01          	add    $0x1,%rbp
    1683:	eb ea                	jmp    166f <strings_not_equal+0x1f>
    1685:	b8 00 00 00 00       	mov    $0x0,%eax
    168a:	eb 05                	jmp    1691 <strings_not_equal+0x41>
    168c:	b8 01 00 00 00       	mov    $0x1,%eax
    1691:	5b                   	pop    %rbx
    1692:	5d                   	pop    %rbp
    1693:	41 5c                	pop    %r12
    1695:	c3                   	retq   
    1696:	b8 01 00 00 00       	mov    $0x1,%eax
    169b:	eb f4                	jmp    1691 <strings_not_equal+0x41>

000000000000169d <phase1>:
    169d:	48 8d 35 34 0c 00 00 	lea    0xc34(%rip),%rsi        # 22d8 <xs.2352+0x18>
    16a4:	e8 a7 ff ff ff       	callq  1650 <strings_not_equal>
    16a9:	85 c0                	test   %eax,%eax
    16ab:	74 05                	je     16b2 <phase1+0x15>
    16ad:	b8 01 00 00 00       	mov    $0x1,%eax
    16b2:	c3                   	retq   

00000000000016b3 <string_length>:
    16b3:	b8 00 00 00 00       	mov    $0x0,%eax
    16b8:	80 3f 00             	cmpb   $0x0,(%rdi)
    16bb:	74 09                	je     16c6 <string_length+0x13>
    16bd:	48 83 c7 01          	add    $0x1,%rdi
    16c1:	83 c0 01             	add    $0x1,%eax
    16c4:	eb f2                	jmp    16b8 <string_length+0x5>
    16c6:	c3                   	retq   

00000000000016c7 <strings_not_equal>:
    16c7:	41 54                	push   %r12
    16c9:	55                   	push   %rbp
    16ca:	53                   	push   %rbx
    16cb:	48 89 fb             	mov    %rdi,%rbx
    16ce:	48 89 f5             	mov    %rsi,%rbp
    16d1:	e8 dd ff ff ff       	callq  16b3 <string_length>
    16d6:	41 89 c4             	mov    %eax,%r12d
    16d9:	48 89 ef             	mov    %rbp,%rdi
    16dc:	e8 d2 ff ff ff       	callq  16b3 <string_length>
    16e1:	41 39 c4             	cmp    %eax,%r12d
    16e4:	75 1d                	jne    1703 <strings_not_equal+0x3c>
    16e6:	0f b6 03             	movzbl (%rbx),%eax
    16e9:	84 c0                	test   %al,%al
    16eb:	74 0f                	je     16fc <strings_not_equal+0x35>
    16ed:	38 45 00             	cmp    %al,0x0(%rbp)
    16f0:	75 1b                	jne    170d <strings_not_equal+0x46>
    16f2:	48 83 c3 01          	add    $0x1,%rbx
    16f6:	48 83 c5 01          	add    $0x1,%rbp
    16fa:	eb ea                	jmp    16e6 <strings_not_equal+0x1f>
    16fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1701:	eb 05                	jmp    1708 <strings_not_equal+0x41>
    1703:	b8 01 00 00 00       	mov    $0x1,%eax
    1708:	5b                   	pop    %rbx
    1709:	5d                   	pop    %rbp
    170a:	41 5c                	pop    %r12
    170c:	c3                   	retq   
    170d:	b8 01 00 00 00       	mov    $0x1,%eax
    1712:	eb f4                	jmp    1708 <strings_not_equal+0x41>

0000000000001714 <phase2>:
    1714:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
    171b:	48 89 e1             	mov    %rsp,%rcx
    171e:	48 8d 94 24 cc 00 00 	lea    0xcc(%rsp),%rdx
    1725:	00 
    1726:	48 8d 35 3c 0c 00 00 	lea    0xc3c(%rip),%rsi        # 2369 <xs.2352+0xa9>
    172d:	b8 00 00 00 00       	mov    $0x0,%eax
    1732:	e8 79 f9 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    1737:	83 f8 02             	cmp    $0x2,%eax
    173a:	75 2e                	jne    176a <phase2+0x56>
    173c:	81 bc 24 cc 00 00 00 	cmpl   $0xe9da,0xcc(%rsp)
    1743:	da e9 00 00 
    1747:	74 07                	je     1750 <phase2+0x3c>
    1749:	b8 01 00 00 00       	mov    $0x1,%eax
    174e:	eb 1f                	jmp    176f <phase2+0x5b>
    1750:	48 89 e7             	mov    %rsp,%rdi
    1753:	48 8d 35 c6 0b 00 00 	lea    0xbc6(%rip),%rsi        # 2320 <xs.2352+0x60>
    175a:	e8 68 ff ff ff       	callq  16c7 <strings_not_equal>
    175f:	85 c0                	test   %eax,%eax
    1761:	74 0c                	je     176f <phase2+0x5b>
    1763:	b8 01 00 00 00       	mov    $0x1,%eax
    1768:	eb 05                	jmp    176f <phase2+0x5b>
    176a:	b8 01 00 00 00       	mov    $0x1,%eax
    176f:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
    1776:	c3                   	retq   

0000000000001777 <compute>:
    1777:	8d 87 ff ff 00 00    	lea    0xffff(%rdi),%eax
    177d:	85 ff                	test   %edi,%edi
    177f:	0f 49 c7             	cmovns %edi,%eax
    1782:	c1 f8 10             	sar    $0x10,%eax
    1785:	c3                   	retq   

0000000000001786 <phase3>:
    1786:	53                   	push   %rbx
    1787:	48 83 ec 10          	sub    $0x10,%rsp
    178b:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1790:	48 8d 35 de 0b 00 00 	lea    0xbde(%rip),%rsi        # 2375 <xs.2352+0xb5>
    1797:	b8 00 00 00 00       	mov    $0x0,%eax
    179c:	e8 0f f9 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    17a1:	83 f8 01             	cmp    $0x1,%eax
    17a4:	75 17                	jne    17bd <phase3+0x37>
    17a6:	89 c3                	mov    %eax,%ebx
    17a8:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    17ac:	e8 c6 ff ff ff       	callq  1777 <compute>
    17b1:	83 f8 ff             	cmp    $0xffffffff,%eax
    17b4:	75 0c                	jne    17c2 <phase3+0x3c>
    17b6:	bb 00 00 00 00       	mov    $0x0,%ebx
    17bb:	eb 05                	jmp    17c2 <phase3+0x3c>
    17bd:	bb 01 00 00 00       	mov    $0x1,%ebx
    17c2:	89 d8                	mov    %ebx,%eax
    17c4:	48 83 c4 10          	add    $0x10,%rsp
    17c8:	5b                   	pop    %rbx
    17c9:	c3                   	retq   

00000000000017ca <phase4>:
    17ca:	48 83 ec 18          	sub    $0x18,%rsp
    17ce:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    17d3:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    17d8:	48 8d 35 93 0b 00 00 	lea    0xb93(%rip),%rsi        # 2372 <xs.2352+0xb2>
    17df:	b8 00 00 00 00       	mov    $0x0,%eax
    17e4:	e8 c7 f8 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    17e9:	83 f8 02             	cmp    $0x2,%eax
    17ec:	75 75                	jne    1863 <phase4+0x99>
    17ee:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    17f2:	81 fa ae 18 bc ff    	cmp    $0xffbc18ae,%edx
    17f8:	75 73                	jne    186d <phase4+0xa3>
    17fa:	8b 44 24 08          	mov    0x8(%rsp),%eax
    17fe:	89 c1                	mov    %eax,%ecx
    1800:	c1 f9 1f             	sar    $0x1f,%ecx
    1803:	c1 e9 1d             	shr    $0x1d,%ecx
    1806:	01 c8                	add    %ecx,%eax
    1808:	83 e0 07             	and    $0x7,%eax
    180b:	29 c8                	sub    %ecx,%eax
    180d:	83 f8 06             	cmp    $0x6,%eax
    1810:	77 4c                	ja     185e <phase4+0x94>
    1812:	89 c0                	mov    %eax,%eax
    1814:	48 8d 0d 65 0a 00 00 	lea    0xa65(%rip),%rcx        # 2280 <_IO_stdin_used+0x280>
    181b:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
    181f:	48 01 c8             	add    %rcx,%rax
    1822:	ff e0                	jmpq   *%rax
    1824:	81 e2 6d 1a a8 6d    	and    $0x6da81a6d,%edx
    182a:	81 fa 2c 18 a8 6d    	cmp    $0x6da8182c,%edx
    1830:	75 42                	jne    1874 <phase4+0xaa>
    1832:	b8 00 00 00 00       	mov    $0x0,%eax
    1837:	eb 2f                	jmp    1868 <phase4+0x9e>
    1839:	81 ca a5 90 93 36    	or     $0x369390a5,%edx
    183f:	eb e9                	jmp    182a <phase4+0x60>
    1841:	81 f2 58 58 00 db    	xor    $0xdb005858,%edx
    1847:	eb e1                	jmp    182a <phase4+0x60>
    1849:	c1 fa 03             	sar    $0x3,%edx
    184c:	eb dc                	jmp    182a <phase4+0x60>
    184e:	81 c2 09 03 00 00    	add    $0x309,%edx
    1854:	eb d4                	jmp    182a <phase4+0x60>
    1856:	81 ea c0 1c 00 00    	sub    $0x1cc0,%edx
    185c:	eb cc                	jmp    182a <phase4+0x60>
    185e:	c1 e2 04             	shl    $0x4,%edx
    1861:	eb c7                	jmp    182a <phase4+0x60>
    1863:	b8 01 00 00 00       	mov    $0x1,%eax
    1868:	48 83 c4 18          	add    $0x18,%rsp
    186c:	c3                   	retq   
    186d:	b8 01 00 00 00       	mov    $0x1,%eax
    1872:	eb f4                	jmp    1868 <phase4+0x9e>
    1874:	b8 01 00 00 00       	mov    $0x1,%eax
    1879:	eb ed                	jmp    1868 <phase4+0x9e>

000000000000187b <phase5>:
    187b:	48 83 ec 18          	sub    $0x18,%rsp
    187f:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1884:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1889:	48 8d 35 e2 0a 00 00 	lea    0xae2(%rip),%rsi        # 2372 <xs.2352+0xb2>
    1890:	b8 00 00 00 00       	mov    $0x0,%eax
    1895:	e8 16 f8 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    189a:	83 f8 02             	cmp    $0x2,%eax
    189d:	75 23                	jne    18c2 <phase5+0x47>
    189f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    18a3:	ba 00 00 00 00       	mov    $0x0,%edx
    18a8:	83 f8 38             	cmp    $0x38,%eax
    18ab:	7f 09                	jg     18b6 <phase5+0x3b>
    18ad:	03 44 24 08          	add    0x8(%rsp),%eax
    18b1:	83 c2 01             	add    $0x1,%edx
    18b4:	eb f2                	jmp    18a8 <phase5+0x2d>
    18b6:	83 fa 05             	cmp    $0x5,%edx
    18b9:	75 11                	jne    18cc <phase5+0x51>
    18bb:	b8 00 00 00 00       	mov    $0x0,%eax
    18c0:	eb 05                	jmp    18c7 <phase5+0x4c>
    18c2:	b8 01 00 00 00       	mov    $0x1,%eax
    18c7:	48 83 c4 18          	add    $0x18,%rsp
    18cb:	c3                   	retq   
    18cc:	b8 01 00 00 00       	mov    $0x1,%eax
    18d1:	eb f4                	jmp    18c7 <phase5+0x4c>

00000000000018d3 <length>:
    18d3:	b8 00 00 00 00       	mov    $0x0,%eax
    18d8:	48 63 d0             	movslq %eax,%rdx
    18db:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
    18df:	74 05                	je     18e6 <length+0x13>
    18e1:	83 c0 01             	add    $0x1,%eax
    18e4:	eb f2                	jmp    18d8 <length+0x5>
    18e6:	c3                   	retq   

00000000000018e7 <half>:
    18e7:	89 f8                	mov    %edi,%eax
    18e9:	c1 e8 1f             	shr    $0x1f,%eax
    18ec:	01 f8                	add    %edi,%eax
    18ee:	d1 f8                	sar    %eax
    18f0:	c3                   	retq   

00000000000018f1 <all_equal>:
    18f1:	ba 00 00 00 00       	mov    $0x0,%edx
    18f6:	48 63 c2             	movslq %edx,%rax
    18f9:	0f b6 04 07          	movzbl (%rdi,%rax,1),%eax
    18fd:	84 c0                	test   %al,%al
    18ff:	74 09                	je     190a <all_equal+0x19>
    1901:	38 07                	cmp    %al,(%rdi)
    1903:	75 0b                	jne    1910 <all_equal+0x1f>
    1905:	83 c2 01             	add    $0x1,%edx
    1908:	eb ec                	jmp    18f6 <all_equal+0x5>
    190a:	b8 01 00 00 00       	mov    $0x1,%eax
    190f:	c3                   	retq   
    1910:	b8 00 00 00 00       	mov    $0x0,%eax
    1915:	c3                   	retq   

0000000000001916 <phase6>:
    1916:	41 55                	push   %r13
    1918:	41 54                	push   %r12
    191a:	55                   	push   %rbp
    191b:	53                   	push   %rbx
    191c:	48 83 ec 38          	sub    $0x38,%rsp
    1920:	48 89 e2             	mov    %rsp,%rdx
    1923:	48 8d 35 42 0a 00 00 	lea    0xa42(%rip),%rsi        # 236c <xs.2352+0xac>
    192a:	b8 00 00 00 00       	mov    $0x0,%eax
    192f:	e8 7c f7 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    1934:	83 f8 01             	cmp    $0x1,%eax
    1937:	75 54                	jne    198d <phase6+0x77>
    1939:	89 c3                	mov    %eax,%ebx
    193b:	80 3c 24 77          	cmpb   $0x77,(%rsp)
    193f:	75 51                	jne    1992 <phase6+0x7c>
    1941:	48 89 e7             	mov    %rsp,%rdi
    1944:	e8 8a ff ff ff       	callq  18d3 <length>
    1949:	41 89 c4             	mov    %eax,%r12d
    194c:	83 f8 0b             	cmp    $0xb,%eax
    194f:	75 41                	jne    1992 <phase6+0x7c>
    1951:	48 89 e7             	mov    %rsp,%rdi
    1954:	e8 98 ff ff ff       	callq  18f1 <all_equal>
    1959:	41 89 c5             	mov    %eax,%r13d
    195c:	85 c0                	test   %eax,%eax
    195e:	75 32                	jne    1992 <phase6+0x7c>
    1960:	89 c5                	mov    %eax,%ebp
    1962:	44 89 e7             	mov    %r12d,%edi
    1965:	e8 7d ff ff ff       	callq  18e7 <half>
    196a:	39 e8                	cmp    %ebp,%eax
    196c:	7e 1a                	jle    1988 <phase6+0x72>
    196e:	48 63 d5             	movslq %ebp,%rdx
    1971:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    1976:	29 e8                	sub    %ebp,%eax
    1978:	48 98                	cltq   
    197a:	0f b6 04 04          	movzbl (%rsp,%rax,1),%eax
    197e:	38 04 14             	cmp    %al,(%rsp,%rdx,1)
    1981:	75 0f                	jne    1992 <phase6+0x7c>
    1983:	83 c5 01             	add    $0x1,%ebp
    1986:	eb da                	jmp    1962 <phase6+0x4c>
    1988:	44 89 eb             	mov    %r13d,%ebx
    198b:	eb 05                	jmp    1992 <phase6+0x7c>
    198d:	bb 01 00 00 00       	mov    $0x1,%ebx
    1992:	89 d8                	mov    %ebx,%eax
    1994:	48 83 c4 38          	add    $0x38,%rsp
    1998:	5b                   	pop    %rbx
    1999:	5d                   	pop    %rbp
    199a:	41 5c                	pop    %r12
    199c:	41 5d                	pop    %r13
    199e:	c3                   	retq   

000000000000199f <phase7>:
    199f:	48 83 ec 18          	sub    $0x18,%rsp
    19a3:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    19a8:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    19ad:	48 8d 35 be 09 00 00 	lea    0x9be(%rip),%rsi        # 2372 <xs.2352+0xb2>
    19b4:	b8 00 00 00 00       	mov    $0x0,%eax
    19b9:	e8 f2 f6 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    19be:	83 f8 02             	cmp    $0x2,%eax
    19c1:	75 5c                	jne    1a1f <phase7+0x80>
    19c3:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    19c8:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    19cc:	b8 00 00 00 00       	mov    $0x0,%eax
    19d1:	ba 00 00 00 00       	mov    $0x0,%edx
    19d6:	eb 18                	jmp    19f0 <phase7+0x51>
    19d8:	48 63 c8             	movslq %eax,%rcx
    19db:	48 8d 35 be 08 00 00 	lea    0x8be(%rip),%rsi        # 22a0 <xs>
    19e2:	45 89 c2             	mov    %r8d,%r10d
    19e5:	44 0f af 14 8e       	imul   (%rsi,%rcx,4),%r10d
    19ea:	44 01 d2             	add    %r10d,%edx
    19ed:	83 c0 01             	add    $0x1,%eax
    19f0:	83 f8 05             	cmp    $0x5,%eax
    19f3:	7f 1b                	jg     1a10 <phase7+0x71>
    19f5:	a8 01                	test   $0x1,%al
    19f7:	75 df                	jne    19d8 <phase7+0x39>
    19f9:	48 63 c8             	movslq %eax,%rcx
    19fc:	48 8d 35 9d 08 00 00 	lea    0x89d(%rip),%rsi        # 22a0 <xs>
    1a03:	41 89 f9             	mov    %edi,%r9d
    1a06:	44 0f af 0c 8e       	imul   (%rsi,%rcx,4),%r9d
    1a0b:	44 01 ca             	add    %r9d,%edx
    1a0e:	eb dd                	jmp    19ed <phase7+0x4e>
    1a10:	81 fa a4 7a 3d 08    	cmp    $0x83d7aa4,%edx
    1a16:	75 11                	jne    1a29 <phase7+0x8a>
    1a18:	b8 00 00 00 00       	mov    $0x0,%eax
    1a1d:	eb 05                	jmp    1a24 <phase7+0x85>
    1a1f:	b8 01 00 00 00       	mov    $0x1,%eax
    1a24:	48 83 c4 18          	add    $0x18,%rsp
    1a28:	c3                   	retq   
    1a29:	b8 01 00 00 00       	mov    $0x1,%eax
    1a2e:	eb f4                	jmp    1a24 <phase7+0x85>

0000000000001a30 <phase8>:
    1a30:	48 83 ec 48          	sub    $0x48,%rsp
    1a34:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
    1a39:	48 8d 4c 24 24       	lea    0x24(%rsp),%rcx
    1a3e:	48 8d 44 24 34       	lea    0x34(%rsp),%rax
    1a43:	50                   	push   %rax
    1a44:	48 8d 44 24 38       	lea    0x38(%rsp),%rax
    1a49:	50                   	push   %rax
    1a4a:	4c 8d 4c 24 3c       	lea    0x3c(%rsp),%r9
    1a4f:	4c 8d 44 24 38       	lea    0x38(%rsp),%r8
    1a54:	48 8d 35 1d 09 00 00 	lea    0x91d(%rip),%rsi        # 2378 <xs.2352+0xb8>
    1a5b:	b8 00 00 00 00       	mov    $0x0,%eax
    1a60:	e8 4b f6 ff ff       	callq  10b0 <__isoc99_sscanf@plt>
    1a65:	48 83 c4 10          	add    $0x10,%rsp
    1a69:	83 f8 06             	cmp    $0x6,%eax
    1a6c:	75 7a                	jne    1ae8 <phase8+0xb8>
    1a6e:	b8 00 00 00 00       	mov    $0x0,%eax
    1a73:	83 f8 05             	cmp    $0x5,%eax
    1a76:	7f 14                	jg     1a8c <phase8+0x5c>
    1a78:	48 63 d0             	movslq %eax,%rdx
    1a7b:	8b 54 94 20          	mov    0x20(%rsp,%rdx,4),%edx
    1a7f:	83 ea 01             	sub    $0x1,%edx
    1a82:	83 fa 05             	cmp    $0x5,%edx
    1a85:	77 6b                	ja     1af2 <phase8+0xc2>
    1a87:	83 c0 01             	add    $0x1,%eax
    1a8a:	eb e7                	jmp    1a73 <phase8+0x43>
    1a8c:	ba 00 00 00 00       	mov    $0x0,%edx
    1a91:	83 fa 05             	cmp    $0x5,%edx
    1a94:	7f 1e                	jg     1ab4 <phase8+0x84>
    1a96:	48 63 ca             	movslq %edx,%rcx
    1a99:	8b 44 8c 20          	mov    0x20(%rsp,%rcx,4),%eax
    1a9d:	83 e8 01             	sub    $0x1,%eax
    1aa0:	48 8d 35 19 08 00 00 	lea    0x819(%rip),%rsi        # 22c0 <xs.2352>
    1aa7:	8b 0c 8e             	mov    (%rsi,%rcx,4),%ecx
    1aaa:	48 98                	cltq   
    1aac:	89 0c 84             	mov    %ecx,(%rsp,%rax,4)
    1aaf:	83 c2 01             	add    $0x1,%edx
    1ab2:	eb dd                	jmp    1a91 <phase8+0x61>
    1ab4:	ba 00 00 00 00       	mov    $0x0,%edx
    1ab9:	eb 03                	jmp    1abe <phase8+0x8e>
    1abb:	83 c2 01             	add    $0x1,%edx
    1abe:	83 fa 02             	cmp    $0x2,%edx
    1ac1:	7f 1e                	jg     1ae1 <phase8+0xb1>
    1ac3:	48 63 ca             	movslq %edx,%rcx
    1ac6:	b8 05 00 00 00       	mov    $0x5,%eax
    1acb:	29 d0                	sub    %edx,%eax
    1acd:	48 98                	cltq   
    1acf:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1ad2:	03 04 8c             	add    (%rsp,%rcx,4),%eax
    1ad5:	83 f8 29             	cmp    $0x29,%eax
    1ad8:	74 e1                	je     1abb <phase8+0x8b>
    1ada:	b8 01 00 00 00       	mov    $0x1,%eax
    1adf:	eb 0c                	jmp    1aed <phase8+0xbd>
    1ae1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae6:	eb 05                	jmp    1aed <phase8+0xbd>
    1ae8:	b8 01 00 00 00       	mov    $0x1,%eax
    1aed:	48 83 c4 48          	add    $0x48,%rsp
    1af1:	c3                   	retq   
    1af2:	b8 01 00 00 00       	mov    $0x1,%eax
    1af7:	eb f4                	jmp    1aed <phase8+0xbd>

0000000000001af9 <append_to_string>:
    1af9:	41 54                	push   %r12
    1afb:	55                   	push   %rbp
    1afc:	53                   	push   %rbx
    1afd:	49 89 fc             	mov    %rdi,%r12
    1b00:	48 89 cb             	mov    %rcx,%rbx
    1b03:	48 0f af f2          	imul   %rdx,%rsi
    1b07:	48 89 f5             	mov    %rsi,%rbp
    1b0a:	48 03 71 08          	add    0x8(%rcx),%rsi
    1b0e:	48 8b 39             	mov    (%rcx),%rdi
    1b11:	48 83 c6 01          	add    $0x1,%rsi
    1b15:	e8 c6 f6 ff ff       	callq  11e0 <realloc@plt>
    1b1a:	48 85 c0             	test   %rax,%rax
    1b1d:	74 2e                	je     1b4d <append_to_string+0x54>
    1b1f:	48 89 03             	mov    %rax,(%rbx)
    1b22:	48 03 43 08          	add    0x8(%rbx),%rax
    1b26:	48 89 c7             	mov    %rax,%rdi
    1b29:	48 89 ea             	mov    %rbp,%rdx
    1b2c:	4c 89 e6             	mov    %r12,%rsi
    1b2f:	e8 6c f5 ff ff       	callq  10a0 <memcpy@plt>
    1b34:	48 89 e8             	mov    %rbp,%rax
    1b37:	48 03 43 08          	add    0x8(%rbx),%rax
    1b3b:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1b3f:	48 03 03             	add    (%rbx),%rax
    1b42:	c6 00 00             	movb   $0x0,(%rax)
    1b45:	48 89 e8             	mov    %rbp,%rax
    1b48:	5b                   	pop    %rbx
    1b49:	5d                   	pop    %rbp
    1b4a:	41 5c                	pop    %r12
    1b4c:	c3                   	retq   
    1b4d:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b52:	eb f1                	jmp    1b45 <append_to_string+0x4c>

0000000000001b54 <init_driver>:
    1b54:	55                   	push   %rbp
    1b55:	53                   	push   %rbx
    1b56:	48 81 ec 08 20 00 00 	sub    $0x2008,%rsp
    1b5d:	bf 03 00 00 00       	mov    $0x3,%edi
    1b62:	e8 f9 f4 ff ff       	callq  1060 <curl_global_init@plt>
    1b67:	e8 f4 f5 ff ff       	callq  1160 <curl_easy_init@plt>
    1b6c:	48 85 c0             	test   %rax,%rax
    1b6f:	0f 84 a1 00 00 00    	je     1c16 <init_driver+0xc2>
    1b75:	48 89 c3             	mov    %rax,%rbx
    1b78:	48 89 e5             	mov    %rsp,%rbp
    1b7b:	4c 8d 0d 8e 08 00 00 	lea    0x88e(%rip),%r9        # 2410 <xs.2352+0x150>
    1b82:	4c 8d 05 1a 08 00 00 	lea    0x81a(%rip),%r8        # 23a3 <xs.2352+0xe3>
    1b89:	b9 bb 01 00 00       	mov    $0x1bb,%ecx
    1b8e:	48 8d 15 15 08 00 00 	lea    0x815(%rip),%rdx        # 23aa <xs.2352+0xea>
    1b95:	48 8d 35 9c 08 00 00 	lea    0x89c(%rip),%rsi        # 2438 <xs.2352+0x178>
    1b9c:	48 89 ef             	mov    %rbp,%rdi
    1b9f:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba4:	e8 97 f4 ff ff       	callq  1040 <sprintf@plt>
    1ba9:	48 89 ea             	mov    %rbp,%rdx
    1bac:	be 12 27 00 00       	mov    $0x2712,%esi
    1bb1:	48 89 df             	mov    %rbx,%rdi
    1bb4:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb9:	e8 32 f5 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1bbe:	ba 01 00 00 00       	mov    $0x1,%edx
    1bc3:	be 2c 00 00 00       	mov    $0x2c,%esi
    1bc8:	48 89 df             	mov    %rbx,%rdi
    1bcb:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd0:	e8 1b f5 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1bd5:	48 89 df             	mov    %rbx,%rdi
    1bd8:	e8 93 f5 ff ff       	callq  1170 <curl_easy_perform@plt>
    1bdd:	85 c0                	test   %eax,%eax
    1bdf:	75 21                	jne    1c02 <init_driver+0xae>
    1be1:	bd 00 00 00 00       	mov    $0x0,%ebp
    1be6:	48 89 df             	mov    %rbx,%rdi
    1be9:	e8 52 f5 ff ff       	callq  1140 <curl_easy_cleanup@plt>
    1bee:	e8 7d f4 ff ff       	callq  1070 <curl_global_cleanup@plt>
    1bf3:	48 85 ed             	test   %rbp,%rbp
    1bf6:	75 27                	jne    1c1f <init_driver+0xcb>
    1bf8:	48 81 c4 08 20 00 00 	add    $0x2008,%rsp
    1bff:	5b                   	pop    %rbx
    1c00:	5d                   	pop    %rbp
    1c01:	c3                   	retq   
    1c02:	89 c7                	mov    %eax,%edi
    1c04:	e8 87 f5 ff ff       	callq  1190 <curl_easy_strerror@plt>
    1c09:	48 89 c7             	mov    %rax,%rdi
    1c0c:	e8 ff f5 ff ff       	callq  1210 <strdup@plt>
    1c11:	48 89 c5             	mov    %rax,%rbp
    1c14:	eb d0                	jmp    1be6 <init_driver+0x92>
    1c16:	48 8d 2d 6e 07 00 00 	lea    0x76e(%rip),%rbp        # 238b <xs.2352+0xcb>
    1c1d:	eb cf                	jmp    1bee <init_driver+0x9a>
    1c1f:	48 89 ee             	mov    %rbp,%rsi
    1c22:	48 8d 3d 37 08 00 00 	lea    0x837(%rip),%rdi        # 2460 <xs.2352+0x1a0>
    1c29:	b8 00 00 00 00       	mov    $0x0,%eax
    1c2e:	e8 fd f3 ff ff       	callq  1030 <printf@plt>
    1c33:	bf 01 00 00 00       	mov    $0x1,%edi
    1c38:	e8 e3 f4 ff ff       	callq  1120 <exit@plt>

0000000000001c3d <driver_post>:
    1c3d:	41 57                	push   %r15
    1c3f:	41 56                	push   %r14
    1c41:	41 55                	push   %r13
    1c43:	41 54                	push   %r12
    1c45:	55                   	push   %rbp
    1c46:	53                   	push   %rbx
    1c47:	48 81 ec 28 20 00 00 	sub    $0x2028,%rsp
    1c4e:	41 89 fd             	mov    %edi,%r13d
    1c51:	41 89 f4             	mov    %esi,%r12d
    1c54:	49 89 d6             	mov    %rdx,%r14
    1c57:	48 8d 3d 83 07 00 00 	lea    0x783(%rip),%rdi        # 23e1 <xs.2352+0x121>
    1c5e:	e8 cd f4 ff ff       	callq  1130 <getenv@plt>
    1c63:	48 85 c0             	test   %rax,%rax
    1c66:	74 12                	je     1c7a <driver_post+0x3d>
    1c68:	48 81 c4 28 20 00 00 	add    $0x2028,%rsp
    1c6f:	5b                   	pop    %rbx
    1c70:	5d                   	pop    %rbp
    1c71:	41 5c                	pop    %r12
    1c73:	41 5d                	pop    %r13
    1c75:	41 5e                	pop    %r14
    1c77:	41 5f                	pop    %r15
    1c79:	c3                   	retq   
    1c7a:	48 89 c3             	mov    %rax,%rbx
    1c7d:	bf 03 00 00 00       	mov    $0x3,%edi
    1c82:	e8 d9 f3 ff ff       	callq  1060 <curl_global_init@plt>
    1c87:	e8 d4 f4 ff ff       	callq  1160 <curl_easy_init@plt>
    1c8c:	48 89 c5             	mov    %rax,%rbp
    1c8f:	48 85 c0             	test   %rax,%rax
    1c92:	0f 84 be 01 00 00    	je     1e56 <driver_post+0x219>
    1c98:	ba 00 00 00 00       	mov    $0x0,%edx
    1c9d:	4c 89 f6             	mov    %r14,%rsi
    1ca0:	48 89 c7             	mov    %rax,%rdi
    1ca3:	e8 58 f5 ff ff       	callq  1200 <curl_easy_escape@plt>
    1ca8:	49 89 c6             	mov    %rax,%r14
    1cab:	48 85 c0             	test   %rax,%rax
    1cae:	0f 84 96 01 00 00    	je     1e4a <driver_post+0x20d>
    1cb4:	4c 8d 7c 24 20       	lea    0x20(%rsp),%r15
    1cb9:	48 83 ec 08          	sub    $0x8,%rsp
    1cbd:	50                   	push   %rax
    1cbe:	41 55                	push   %r13
    1cc0:	41 54                	push   %r12
    1cc2:	4c 8d 0d 47 07 00 00 	lea    0x747(%rip),%r9        # 2410 <xs.2352+0x150>
    1cc9:	4c 8d 05 d3 06 00 00 	lea    0x6d3(%rip),%r8        # 23a3 <xs.2352+0xe3>
    1cd0:	b9 bb 01 00 00       	mov    $0x1bb,%ecx
    1cd5:	48 8d 15 ce 06 00 00 	lea    0x6ce(%rip),%rdx        # 23aa <xs.2352+0xea>
    1cdc:	48 8d 35 a5 07 00 00 	lea    0x7a5(%rip),%rsi        # 2488 <xs.2352+0x1c8>
    1ce3:	4c 89 ff             	mov    %r15,%rdi
    1ce6:	b8 00 00 00 00       	mov    $0x0,%eax
    1ceb:	e8 50 f3 ff ff       	callq  1040 <sprintf@plt>
    1cf0:	48 83 c4 20          	add    $0x20,%rsp
    1cf4:	be 01 00 00 00       	mov    $0x1,%esi
    1cf9:	bf 01 00 00 00       	mov    $0x1,%edi
    1cfe:	e8 8d f3 ff ff       	callq  1090 <calloc@plt>
    1d03:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    1d08:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    1d0f:	00 00 
    1d11:	4c 89 fa             	mov    %r15,%rdx
    1d14:	be 12 27 00 00       	mov    $0x2712,%esi
    1d19:	48 89 ef             	mov    %rbp,%rdi
    1d1c:	b8 00 00 00 00       	mov    $0x0,%eax
    1d21:	e8 ca f3 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1d26:	48 8d 15 5d 06 00 00 	lea    0x65d(%rip),%rdx        # 238a <xs.2352+0xca>
    1d2d:	be 1f 27 00 00       	mov    $0x271f,%esi
    1d32:	48 89 ef             	mov    %rbp,%rdi
    1d35:	b8 00 00 00 00       	mov    $0x0,%eax
    1d3a:	e8 b1 f3 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1d3f:	48 8d 15 b3 fd ff ff 	lea    -0x24d(%rip),%rdx        # 1af9 <append_to_string>
    1d46:	be 2b 4e 00 00       	mov    $0x4e2b,%esi
    1d4b:	48 89 ef             	mov    %rbp,%rdi
    1d4e:	b8 00 00 00 00       	mov    $0x0,%eax
    1d53:	e8 98 f3 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1d58:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1d5d:	be 11 27 00 00       	mov    $0x2711,%esi
    1d62:	48 89 ef             	mov    %rbp,%rdi
    1d65:	b8 00 00 00 00       	mov    $0x0,%eax
    1d6a:	e8 81 f3 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1d6f:	48 8d 15 7b 06 00 00 	lea    0x67b(%rip),%rdx        # 23f1 <xs.2352+0x131>
    1d76:	be 22 27 00 00       	mov    $0x2722,%esi
    1d7b:	48 89 ef             	mov    %rbp,%rdi
    1d7e:	b8 00 00 00 00       	mov    $0x0,%eax
    1d83:	e8 68 f3 ff ff       	callq  10f0 <curl_easy_setopt@plt>
    1d88:	48 89 ef             	mov    %rbp,%rdi
    1d8b:	e8 e0 f3 ff ff       	callq  1170 <curl_easy_perform@plt>
    1d90:	85 c0                	test   %eax,%eax
    1d92:	74 58                	je     1dec <driver_post+0x1af>
    1d94:	89 c7                	mov    %eax,%edi
    1d96:	e8 f5 f3 ff ff       	callq  1190 <curl_easy_strerror@plt>
    1d9b:	48 89 c7             	mov    %rax,%rdi
    1d9e:	e8 6d f4 ff ff       	callq  1210 <strdup@plt>
    1da3:	48 89 c3             	mov    %rax,%rbx
    1da6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1dab:	e8 60 f3 ff ff       	callq  1110 <free@plt>
    1db0:	4c 89 f7             	mov    %r14,%rdi
    1db3:	e8 98 f2 ff ff       	callq  1050 <curl_free@plt>
    1db8:	48 89 ef             	mov    %rbp,%rdi
    1dbb:	e8 80 f3 ff ff       	callq  1140 <curl_easy_cleanup@plt>
    1dc0:	e8 ab f2 ff ff       	callq  1070 <curl_global_cleanup@plt>
    1dc5:	48 85 db             	test   %rbx,%rbx
    1dc8:	0f 84 9a fe ff ff    	je     1c68 <driver_post+0x2b>
    1dce:	48 89 de             	mov    %rbx,%rsi
    1dd1:	48 8d 3d 28 06 00 00 	lea    0x628(%rip),%rdi        # 2400 <xs.2352+0x140>
    1dd8:	b8 00 00 00 00       	mov    $0x0,%eax
    1ddd:	e8 4e f2 ff ff       	callq  1030 <printf@plt>
    1de2:	bf 01 00 00 00       	mov    $0x1,%edi
    1de7:	e8 34 f3 ff ff       	callq  1120 <exit@plt>
    1dec:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1df1:	be 02 00 20 00       	mov    $0x200002,%esi
    1df6:	48 89 ef             	mov    %rbp,%rdi
    1df9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dfe:	e8 7d f2 ff ff       	callq  1080 <curl_easy_getinfo@plt>
    1e03:	48 81 7c 24 08 c8 00 	cmpq   $0xc8,0x8(%rsp)
    1e0a:	00 00 
    1e0c:	74 09                	je     1e17 <driver_post+0x1da>
    1e0e:	48 8d 1d a3 05 00 00 	lea    0x5a3(%rip),%rbx        # 23b8 <xs.2352+0xf8>
    1e15:	eb 8f                	jmp    1da6 <driver_post+0x169>
    1e17:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    1e1c:	b9 03 00 00 00       	mov    $0x3,%ecx
    1e21:	48 8d 3d d5 05 00 00 	lea    0x5d5(%rip),%rdi        # 23fd <xs.2352+0x13d>
    1e28:	48 89 d6             	mov    %rdx,%rsi
    1e2b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    1e2d:	0f 97 c0             	seta   %al
    1e30:	1c 00                	sbb    $0x0,%al
    1e32:	84 c0                	test   %al,%al
    1e34:	0f 84 6c ff ff ff    	je     1da6 <driver_post+0x169>
    1e3a:	48 89 d7             	mov    %rdx,%rdi
    1e3d:	e8 ce f3 ff ff       	callq  1210 <strdup@plt>
    1e42:	48 89 c3             	mov    %rax,%rbx
    1e45:	e9 5c ff ff ff       	jmpq   1da6 <driver_post+0x169>
    1e4a:	48 8d 1d 74 05 00 00 	lea    0x574(%rip),%rbx        # 23c5 <xs.2352+0x105>
    1e51:	e9 62 ff ff ff       	jmpq   1db8 <driver_post+0x17b>
    1e56:	48 8d 1d 2e 05 00 00 	lea    0x52e(%rip),%rbx        # 238b <xs.2352+0xcb>
    1e5d:	e9 5e ff ff ff       	jmpq   1dc0 <driver_post+0x183>
    1e62:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1e69:	00 00 00 
    1e6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001e70 <__libc_csu_init>:
    1e70:	41 57                	push   %r15
    1e72:	4c 8d 3d 5f 1f 00 00 	lea    0x1f5f(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    1e79:	41 56                	push   %r14
    1e7b:	49 89 d6             	mov    %rdx,%r14
    1e7e:	41 55                	push   %r13
    1e80:	49 89 f5             	mov    %rsi,%r13
    1e83:	41 54                	push   %r12
    1e85:	41 89 fc             	mov    %edi,%r12d
    1e88:	55                   	push   %rbp
    1e89:	48 8d 2d 50 1f 00 00 	lea    0x1f50(%rip),%rbp        # 3de0 <__init_array_end>
    1e90:	53                   	push   %rbx
    1e91:	4c 29 fd             	sub    %r15,%rbp
    1e94:	48 83 ec 08          	sub    $0x8,%rsp
    1e98:	e8 63 f1 ff ff       	callq  1000 <_init>
    1e9d:	48 c1 fd 03          	sar    $0x3,%rbp
    1ea1:	74 1b                	je     1ebe <__libc_csu_init+0x4e>
    1ea3:	31 db                	xor    %ebx,%ebx
    1ea5:	0f 1f 00             	nopl   (%rax)
    1ea8:	4c 89 f2             	mov    %r14,%rdx
    1eab:	4c 89 ee             	mov    %r13,%rsi
    1eae:	44 89 e7             	mov    %r12d,%edi
    1eb1:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1eb5:	48 83 c3 01          	add    $0x1,%rbx
    1eb9:	48 39 dd             	cmp    %rbx,%rbp
    1ebc:	75 ea                	jne    1ea8 <__libc_csu_init+0x38>
    1ebe:	48 83 c4 08          	add    $0x8,%rsp
    1ec2:	5b                   	pop    %rbx
    1ec3:	5d                   	pop    %rbp
    1ec4:	41 5c                	pop    %r12
    1ec6:	41 5d                	pop    %r13
    1ec8:	41 5e                	pop    %r14
    1eca:	41 5f                	pop    %r15
    1ecc:	c3                   	retq   
    1ecd:	0f 1f 00             	nopl   (%rax)

0000000000001ed0 <__libc_csu_fini>:
    1ed0:	c3                   	retq   

Disassembly of section .fini:

0000000000001ed4 <_fini>:
    1ed4:	48 83 ec 08          	sub    $0x8,%rsp
    1ed8:	48 83 c4 08          	add    $0x8,%rsp
    1edc:	c3                   	retq   
