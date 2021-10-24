@Foo = external global {}

declare fastcc {} @bar(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5)

define fastcc {} @main() {
entry:
  %condition = icmp eq i64 42, ptrtoint ({}* @Foo to i64)
  br i1 %condition, label %then, label %else

else:
  %result = tail call fastcc {} @foo(i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7)
  ret {} %result

then:
  ; Comment the line below to fix compile.
  %dummy = alloca i64
  unreachable
}

define fastcc {} @foo(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
entry:
  %result = tail call fastcc {} @bar(i64 %0, i64 %1, i64 %2, i64 %3, i64 %5, i64 %6)
  ret {} %result
}
