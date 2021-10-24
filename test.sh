#!/bin/sh

set -ex

compile() {
  $(dirname $0)/compile.sh
}

test_offset() {
  grep -- '-16(%rbp)' foo.s
}

compile
test_offset

sed -i 's/%dummy/;%dummy/' min-test-case.ll

compile
! test_offset

git checkout .
