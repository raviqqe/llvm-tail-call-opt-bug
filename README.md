# Segmentation fault with `llc -tailcallopt`

## Usage

```sh
./compile.sh
./a.out
echo $?
```

Also, try fixing segmentation fault following instructions in `min-test-case.ll`.

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

## References

- [The original Gist](https://gist.github.com/raviqqe/64f04ff498b8aabb5231ddaefb5023e5)
- [x86-64 Architecture Guide](http://6.s081.scripts.mit.edu/sp18/x86-64-architecture-guide.html)
- [x64 cheat sheet](https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf)

## License

[The Unlicense](UNLICENSE)
