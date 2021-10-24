# Stack pointer offset miscalculation bug for spilled arguments with `llc -tailcallopt`

This repository contains a sample program that fails due to a bug where `llc`'s `-tailcallopt` option calculates wrong stack pointer offsets for spilled arguments.

## Reproducing the bug

```sh
./compile.sh
./a.out
echo $?
```

Also, try fixing segmentation fault following workaround instructions in `min-test-case.ll`.

### Result

```sh
> ./compile.sh
+ llc -O3 -tailcallopt min-test-case.ll -filetype obj -o foo.o
+ llvm-objdump -d foo.o
+ clang foo.o stub.c

> ./a.out; echo $?
value: 4198710
zsh: segmentation fault (core dumped)  ./a.out
139
```

### Root cause

A `run` function is compiled wrongly and calls a `foo` function with a wrong stack pointer offset for spilled arguments.

```asm
0000000000000020 <run>:
      20: 48 83 ec 10                  	subq	$16, %rsp
      24: 55                           	pushq	%rbp
      25: 48 89 e5                     	movq	%rsp, %rbp
      28: 48 83 3d 00 00 00 00 2a      	cmpq	$42, (%rip)             # 0x30 <run+0x10>
      30: 74 43                        	je	0x75 <run+0x55>
      32: 48 83 ec 20                  	subq	$32, %rsp
      36: 48 8b 45 18                  	movq	24(%rbp), %rax
      3a: 48 89 45 08                  	movq	%rax, 8(%rbp)
      3e: 48 c7 45 10 06 00 00 00      	movq	$6, 16(%rbp)
      46: 48 c7 45 18 07 00 00 00      	movq	$7, 24(%rbp)
      4e: be 01 00 00 00               	movl	$1, %esi
      53: ba 02 00 00 00               	movl	$2, %edx
      58: b9 03 00 00 00               	movl	$3, %ecx
      5d: 41 b8 04 00 00 00            	movl	$4, %r8d
      63: 41 b9 05 00 00 00            	movl	$5, %r9d
      69: 31 ff                        	xorl	%edi, %edi
      6b: 48 8d 65 f0                  	leaq	-16(%rbp), %rsp # This offset should be 0 rather than -16.
      6f: 5d                           	popq	%rbp
      70: e9 00 00 00 00               	jmp	0x75 <run+0x55>
      75: 48 89 e0                     	movq	%rsp, %rax
      78: 48 83 c0 f0                  	addq	$-16, %rax
      7c: 48 89 c4                     	movq	%rax, %rsp
      7f: 90                           	nop

```

## Environment

```sh
> uname -a
Linux vps-bd8d07d6 5.14.8-arch1-1 #1 SMP PREEMPT Sun, 26 Sep 2021 19:36:15 +0000 x86_64 GNU/Linux

> cat /etc/os-release
NAME="Arch Linux"
PRETTY_NAME="Arch Linux"
ID=arch
BUILD_ID=rolling
ANSI_COLOR="38;2;23;147;209"
HOME_URL="https://archlinux.org/"
DOCUMENTATION_URL="https://wiki.archlinux.org/"
SUPPORT_URL="https://bbs.archlinux.org/"
BUG_REPORT_URL="https://bugs.archlinux.org/"
LOGO=archlinux

> llc --version
Homebrew LLVM version 13.0.0
  Optimized build.
  Default target: x86_64-unknown-linux-gnu
  Host CPU: haswell
```

## References

- [The original Gist](https://gist.github.com/raviqqe/64f04ff498b8aabb5231ddaefb5023e5)
- [x86-64 Architecture Guide](http://6.s081.scripts.mit.edu/sp18/x86-64-architecture-guide.html)
- [x64 cheat sheet](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)
- [GDB to LLDB command map](https://lldb.llvm.org/use/map.html#examining-variables)

## License

[The Unlicense](UNLICENSE)
