#source: pr19636-2.s
#as: --64 -mrelax-relocations=no
#ld: -pie -m elf_x86_64 -z nodynamic-undefined-weak
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*


Disassembly of section .plt:

0+1a0 <.plt>:
[ 	]*[a-f0-9]+:	ff 35 2a 01 20 00    	pushq  0x20012a\(%rip\)        # 2002d0 <_GLOBAL_OFFSET_TABLE_\+0x8>
[ 	]*[a-f0-9]+:	ff 25 2c 01 20 00    	jmpq   \*0x20012c\(%rip\)        # 2002d8 <_GLOBAL_OFFSET_TABLE_\+0x10>
[ 	]*[a-f0-9]+:	0f 1f 40 00          	nopl   0x0\(%rax\)
[ 	]*[a-f0-9]+:	ff 25 2a 01 20 00    	jmpq   \*0x20012a\(%rip\)        # 2002e0 <_GLOBAL_OFFSET_TABLE_\+0x18>
[ 	]*[a-f0-9]+:	68 00 00 00 00       	pushq  \$0x0+
[ 	]*[a-f0-9]+:	e9 00 00 00 00       	jmpq   [a-f0-9]+ <.*>

Disassembly of section .text:

0+1c0 <_start>:
[ 	]*[a-f0-9]+:	48 3b 05 f1 00 20 00 	cmp    0x2000f1\(%rip\),%rax        # 2002b8 <_DYNAMIC\+0xe0>
[ 	]*[a-f0-9]+:	ff 25 f3 00 20 00    	jmpq   \*0x2000f3\(%rip\)        # 2002c0 <_DYNAMIC\+0xe8>
[ 	]*[a-f0-9]+:	e8 de ff ff ff       	callq  1b0 <_start-0x10>