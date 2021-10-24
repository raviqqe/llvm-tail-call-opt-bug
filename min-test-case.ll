@Foo = external global {}

declare fastcc {} @bar({}* %0, {}* %1, {}* %2, {}* %3, {}* %4, {}* %5)

define fastcc {} @main() {
entry:
  %_11 = icmp eq i64 42, ptrtoint ({}* @Foo to i64)
  br i1 %_11, label %then, label %else

else:
  %result = tail call fastcc {} @foo({}* @Foo, {}* @Foo, {}* @Foo, {}* @Foo, { i64, i64 } zeroinitializer, {}* @Foo, {}* @Foo)
  ret {} %result

then:
  ; Comment the line below to fix compile.
  %dummy = alloca i64
  unreachable
}

define fastcc {} @foo({}* %0, {}* %1, {}* %2, {}* %3, { i64, i64 } %4, {}* %5, {}* %6) {
entry:
  %_result = tail call fastcc {} @bar({}* %0, {}* %1, {}* %2, {}* %3, {}* %5, {}* %6)
  ret {} %_result
}
