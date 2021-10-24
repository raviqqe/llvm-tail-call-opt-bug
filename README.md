# Segmentation fault with `llc -tailcallopt`

## Usage

```sh
./compile.sh
./a.out
echo $?
```

Also, try fixing segmentation fault following workaround instructions in `min-test-case.ll`.

## Result

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

## License

[The Unlicense](UNLICENSE)
