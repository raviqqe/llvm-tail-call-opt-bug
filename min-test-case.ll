@Foo = linkonce constant i64 0
@Bar = linkonce constant i64 0

declare fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { i64, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %4, {}* %5)

define fastcc {} @_k_8f({ i8*, i64, i64 }* %0, { i64, i64 } %1) {
entry:
  %_11 = icmp eq i64 42, ptrtoint (i64* @Bar to i64)
  br i1 %_11, label %then1, label %else2

else2:                                            ; preds = %phi
  %_result16 = tail call fastcc {} @_if_2d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { i64, i64 })* undef, {}* undef, { i64, i8 }* undef, { i64, i64 } %1, {}* undef, {}* undef)
  ret {} %_result16

then1:                                             ; No predecessors!
  ; Comment the line below to fix compile.
  %dummy = alloca i64
  unreachable
}

define fastcc {} @_if_2d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { i64, i64 })* %1, {}* %2, { i64, i8 }* %3, { i64, i64 } %4, {}* %5, {}* %6) {
entry:
  %_result = tail call fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { i64, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %5, {}* %6)
  ret {} %_result
}
