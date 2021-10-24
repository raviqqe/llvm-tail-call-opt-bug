@Bar = linkonce constant i64 0
@Foo = linkonce constant {} {}

declare fastcc {} @_if_2e({}* %0, {}* %1, {}* %2, {}* %3, {}* %4, {}* %5)

define fastcc {} @main() {
entry:
  %_11 = icmp eq i64 42, ptrtoint (i64* @Bar to i64)
  br i1 %_11, label %then1, label %else2

else2:
  %result = tail call fastcc {} @_if_2d({}* @Foo, {}* @Foo, {}* @Foo, {}* @Foo, { i64, i64 } zeroinitializer, {}* @Foo, {}* @Foo)
  ret {} %result

then1:                                             ; No predecessors!
  ; Comment the line below to fix compile.
  %dummy = alloca i64
  unreachable
}

define fastcc {} @_if_2d({}* %0, {}* %1, {}* %2, {}* %3, { i64, i64 } %4, {}* %5, {}* %6) {
entry:
  %_result = tail call fastcc {} @_if_2e({}* %0, {}* %1, {}* %2, {}* %3, {}* %5, {}* %6)
  ret {} %_result
}
