#!/bin/sh

set -ex

llc -O3 -tailcallopt min-test-case.ll -filetype obj -o foo.o
llvm-objdump -d foo.o >foo.s
