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

## License

[The Unlicense](UNLICENSE)
