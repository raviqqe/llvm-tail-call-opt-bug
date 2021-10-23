define internal fastcc {} @_k_8f({ i8*, i64, i64 }* %0, { { {} (i64)*, {} (i64)* }*, i64 } %1) {
entry:
  %2 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %_k_94 = load i64, i64* %2, align 4
  br i1 false, label %then, label %else

then:                                             ; preds = %entry
  br label %phi

else:                                             ; preds = %entry
  br label %phi

phi:                                              ; preds = %else, %then
  %_k_95 = phi i64 [ 0, %then ], [ 40, %else ]
  %3 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %4 = sub i64 %_k_94, %_k_95
  store i64 %4, i64* %3, align 4
  %5 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 0
  %_k_96 = load i8*, i8** %5, align 8
  %6 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %_k_97 = load i64, i64* %6, align 4
  %7 = getelementptr i8, i8* %_k_96, i64 %_k_97
  %8 = ptrtoint i8* %7 to i64
  %9 = inttoptr i64 %8 to { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* }*
  %_k_98 = load { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* }, { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* }* %9, align 8
  %_k = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 0
  %_fmm_2e2 = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 1
  %_fmm_2fc = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 2
  %ctx = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 3
  %l = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 4
  %_fmm_303 = extractvalue { { {} (i64)*, {} (i64)* }*, i64 } %1, 0
  %10 = ptrtoint { {} (i64)*, {} (i64)* }* %_fmm_303 to i64
  %11 = icmp eq i64 %10, ptrtoint ({ {} (i64)*, {} (i64)* }* @"Record(Record { name: \22prelude:error\22 })" to i64)
  br i1 %11, label %then1, label %else2

then1:                                            ; preds = %phi
  %_fmm_304 = extractvalue { { {} (i64)*, {} (i64)* }*, i64 } %1, 1
  %12 = insertvalue { i64, [0 x i8] } zeroinitializer, i64 %_fmm_304, 0
  %13 = alloca { i64, [0 x i8] }, align 8
  store { i64, [0 x i8] } %12, { i64, [0 x i8] }* %13, align 4
  %14 = bitcast { i64, [0 x i8] }* %13 to { [1 x i64] }*
  %15 = load { [1 x i64] }, { [1 x i64] }* %14, align 4
  %16 = alloca { [1 x i64] }, align 8
  store { [1 x i64] } %15, { [1 x i64] }* %16, align 4
  %17 = bitcast { [1 x i64] }* %16 to { {}*, [0 x i8] }*
  %18 = load { {}*, [0 x i8] }, { {}*, [0 x i8] }* %17, align 8
  %_fmm_305 = extractvalue { {}*, [0 x i8] } %18, 0
  br i1 icmp ne (i64 or (i64 ptrtoint ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* @"/main.pen:serve" to i64), i64 1), i64 0), label %then4, label %else5

else2:                                            ; preds = %phi
  %_result16 = tail call fastcc {} @_if_2d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %_k, {}* %_fmm_2e2, { i64, i8 }* %_fmm_2fc, { { {} (i64)*, {} (i64)* }*, i64 } %1, {}* %ctx, {}* %l)
  ret {} %_result16

phi3:                                             ; No predecessors!
  call void @_pen_unreachable()
  unreachable

then4:                                            ; preds = %then1
  br i1 icmp ne (i64 and (i64 or (i64 ptrtoint ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* @"/main.pen:serve" to i64), i64 1), i64 1), i64 1), label %then7, label %else8

else5:                                            ; preds = %then1
  %_result15 = tail call fastcc {} @_if_3d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %_k, {}* %_fmm_2e2, { i64, i8 }* %_fmm_2fc, {}* %_fmm_305, {}* %ctx, {}* %l)
  ret {} %_result15

phi6:                                             ; No predecessors!
  call void @_pen_unreachable()
  unreachable

then7:                                            ; preds = %then4
  %19 = atomicrmw sub i64* getelementptr (i64, i64* inttoptr (i64 or (i64 ptrtoint ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* @"/main.pen:serve" to i64), i64 1) to i64*), i64 -1), i64 1 release, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %then10, label %else11

else8:                                            ; preds = %then4
  %_result14 = tail call fastcc {} @_if_48({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %_k, {}* %_fmm_2e2, { i64, i8 }* %_fmm_2fc, {}* %_fmm_305, {}* %ctx, {}* %l)
  ret {} %_result14

phi9:                                             ; No predecessors!
  call void @_pen_unreachable()
  unreachable

then10:                                           ; preds = %then7
  fence acquire
  %_fmm_307 = load {} (i64)*, {} (i64)** getelementptr ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }, { {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* inttoptr (i64 and (i64 or (i64 ptrtoint ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* @"/main.pen:serve" to i64), i64 1), i64 -2) to { {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }*), i32 0, i32 1), align 8
  %_fmm_308 = tail call {} %_fmm_307(i64 or (i64 ptrtoint ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* @"/main.pen:serve" to i64), i64 1))
  call void @_pen_free(i8* bitcast (i64* getelementptr (i64, i64* inttoptr (i64 or (i64 ptrtoint ({ {} ({ i8*, i64, i64 }*, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, {}*, {}*)*, {} (i64)*, {} }* @"/main.pen:serve" to i64), i64 1) to i64*), i64 -1) to i8*))
  %_result = tail call fastcc {} @_if_4a({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %_k, {}* %_fmm_2e2, { i64, i8 }* %_fmm_2fc, {}* %_fmm_305, {}* %ctx, {}* %l)
  ret {} %_result

else11:                                           ; preds = %then7
  %_result13 = tail call fastcc {} @_if_4a({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %_k, {}* %_fmm_2e2, { i64, i8 }* %_fmm_2fc, {}* %_fmm_305, {}* %ctx, {}* %l)
  ret {} %_result13

phi12:                                            ; No predecessors!
  call void @_pen_unreachable()
  unreachable
}

define internal fastcc {} @_if_2d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, { { {} (i64)*, {} (i64)* }*, i64 } %4, {}* %5, {}* %6) {
entry:
  %_fmm_315 = extractvalue { { {} (i64)*, {} (i64)* }*, i64 } %4, 0
  %7 = ptrtoint { {} (i64)*, {} (i64)* }* %_fmm_315 to i64
  %8 = icmp eq i64 %7, ptrtoint ({ {} (i64)*, {} (i64)* }* @None to i64)
  br i1 %8, label %then, label %else

then:                                             ; preds = %entry
  %_fmm_316 = extractvalue { { {} (i64)*, {} (i64)* }*, i64 } %4, 1
  %9 = insertvalue { i64, [0 x i8] } zeroinitializer, i64 %_fmm_316, 0
  %10 = alloca { i64, [0 x i8] }, align 8
  store { i64, [0 x i8] } %9, { i64, [0 x i8] }* %10, align 4
  %11 = bitcast { i64, [0 x i8] }* %10 to { [1 x i64] }*
  %12 = load { [1 x i64] }, { [1 x i64] }* %11, align 4
  %13 = alloca { [1 x i64] }, align 8
  store { [1 x i64] } %12, { [1 x i64] }* %13, align 4
  %14 = bitcast { [1 x i64] }* %13 to { {}, [8 x i8] }*
  %15 = load { {}, [8 x i8] }, { {}, [8 x i8] }* %14, align 1
  %_fmm_317 = extractvalue { {}, [8 x i8] } %15, 0
  %_result = tail call fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %5, {}* %6)
  ret {} %_result

else:                                             ; preds = %entry
  call void @_pen_unreachable()
  unreachable

phi:                                              ; No predecessors!
  call void @_pen_unreachable()
  unreachable
}
