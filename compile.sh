#!/bin/sh

set -ex

llc -O3 --fatal-warnings -tailcallopt min-test-case.ll -filetype obj -o foo.o
llvm-objdump -d foo.o >foo.s
clang foo.o stub.c
