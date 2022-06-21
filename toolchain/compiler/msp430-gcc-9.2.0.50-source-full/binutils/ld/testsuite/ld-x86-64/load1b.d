#source: load1.s
#as: --x32 -mrelax-relocations=yes
#ld: -melf32_x86_64 -z max-page-size=0x200000 -z noseparate-code
#objdump: -dw --syms
#notarget: x86_64-*-nacl*

.*: +file format .*

SYMBOL TABLE:
#...
0+600162 l     O .data	0+1 bar
#...
0+600163 g     O .data	0+1 foo
#...


Disassembly of section .text:

0+400074 <_start>:
 +[a-f0-9]+:	81 d0 62 01 60 00    	adc    \$0x600162,%eax
 +[a-f0-9]+:	81 c3 62 01 60 00    	add    \$0x600162,%ebx
 +[a-f0-9]+:	81 e1 62 01 60 00    	and    \$0x600162,%ecx
 +[a-f0-9]+:	81 fa 62 01 60 00    	cmp    \$0x600162,%edx
 +[a-f0-9]+:	81 ce 62 01 60 00    	or     \$0x600162,%esi
 +[a-f0-9]+:	81 df 62 01 60 00    	sbb    \$0x600162,%edi
 +[a-f0-9]+:	81 ed 62 01 60 00    	sub    \$0x600162,%ebp
 +[a-f0-9]+:	41 81 f0 62 01 60 00 	xor    \$0x600162,%r8d
 +[a-f0-9]+:	41 f7 c7 62 01 60 00 	test   \$0x600162,%r15d
 +[a-f0-9]+:	48 81 d0 62 01 60 00 	adc    \$0x600162,%rax
 +[a-f0-9]+:	48 81 c3 62 01 60 00 	add    \$0x600162,%rbx
 +[a-f0-9]+:	48 81 e1 62 01 60 00 	and    \$0x600162,%rcx
 +[a-f0-9]+:	48 81 fa 62 01 60 00 	cmp    \$0x600162,%rdx
 +[a-f0-9]+:	48 81 cf 62 01 60 00 	or     \$0x600162,%rdi
 +[a-f0-9]+:	48 81 de 62 01 60 00 	sbb    \$0x600162,%rsi
 +[a-f0-9]+:	48 81 ed 62 01 60 00 	sub    \$0x600162,%rbp
 +[a-f0-9]+:	49 81 f0 62 01 60 00 	xor    \$0x600162,%r8
 +[a-f0-9]+:	49 f7 c7 62 01 60 00 	test   \$0x600162,%r15
 +[a-f0-9]+:	81 d0 63 01 60 00    	adc    \$0x600163,%eax
 +[a-f0-9]+:	81 c3 63 01 60 00    	add    \$0x600163,%ebx
 +[a-f0-9]+:	81 e1 63 01 60 00    	and    \$0x600163,%ecx
 +[a-f0-9]+:	81 fa 63 01 60 00    	cmp    \$0x600163,%edx
 +[a-f0-9]+:	81 ce 63 01 60 00    	or     \$0x600163,%esi
 +[a-f0-9]+:	81 df 63 01 60 00    	sbb    \$0x600163,%edi
 +[a-f0-9]+:	81 ed 63 01 60 00    	sub    \$0x600163,%ebp
 +[a-f0-9]+:	41 81 f0 63 01 60 00 	xor    \$0x600163,%r8d
 +[a-f0-9]+:	41 f7 c7 63 01 60 00 	test   \$0x600163,%r15d
 +[a-f0-9]+:	48 81 d0 63 01 60 00 	adc    \$0x600163,%rax
 +[a-f0-9]+:	48 81 c3 63 01 60 00 	add    \$0x600163,%rbx
 +[a-f0-9]+:	48 81 e1 63 01 60 00 	and    \$0x600163,%rcx
 +[a-f0-9]+:	48 81 fa 63 01 60 00 	cmp    \$0x600163,%rdx
 +[a-f0-9]+:	48 81 cf 63 01 60 00 	or     \$0x600163,%rdi
 +[a-f0-9]+:	48 81 de 63 01 60 00 	sbb    \$0x600163,%rsi
 +[a-f0-9]+:	48 81 ed 63 01 60 00 	sub    \$0x600163,%rbp
 +[a-f0-9]+:	49 81 f0 63 01 60 00 	xor    \$0x600163,%r8
 +[a-f0-9]+:	49 f7 c7 63 01 60 00 	test   \$0x600163,%r15
#pass
#pass