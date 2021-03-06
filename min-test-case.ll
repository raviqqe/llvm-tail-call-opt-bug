@Foo = global {} {}

declare void @bar(i64 %0, i64 %1)

define i64 @main() {
  call fastcc {} @run()
  ret i64 42
}

define fastcc {} @run() {
entry:
  %condition = icmp eq i64 42, ptrtoint ({}* @Foo to i64)
  br i1 %condition, label %then, label %else

else:
  %result = tail call fastcc {} @foo(i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7)
  ret {} %result

then:
  ; To make a binary work, try one of the following workarounds.
  ; - Comment out the line of alloca below.
  ; - Reduce the @foo function's arguments not to spill arguments onto stacks.
  ; - Disable the -tailcallopt option of llc.
  ; - Set a RSP register's value manually in LLDB. haha
  %dummy = alloca i64
  unreachable
}

define void @separator() {
  ret void
}

define fastcc {} @foo(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
entry:
  call void @bar(i64 %6, i64 %7)
  ret {} {}
}
