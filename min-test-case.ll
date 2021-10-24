@None = linkonce constant i64 0
@"Record(Record { name: \22prelude:error\22 })" = linkonce constant { {} (i64)*, {} (i64)* } { {} (i64)* @"variant_clone_Record(Record { name: \22prelude:error\22 })", {} (i64)* @"variant_drop_Record(Record { name: \22prelude:error\22 })" }

declare {} @"variant_clone_Record(Record { name: \22prelude:error\22 })"(i64 %0)
declare {} @"variant_drop_Record(Record { name: \22prelude:error\22 })"(i64 %0)
declare fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %4, {}* %5)

define fastcc {} @_k_8f({ i8*, i64, i64 }* %0, { { {} (i64)*, {} (i64)* }*, i64 } %1) {
entry:
  %2 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %3 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %4 = sub i64 0, 0
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

else2:                                            ; preds = %phi
  %_result16 = tail call fastcc {} @_if_2d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %_k, {}* %_fmm_2e2, { i64, i8 }* %_fmm_2fc, { { {} (i64)*, {} (i64)* }*, i64 } %1, {}* %ctx, {}* %l)
  ret {} %_result16

then1:                                             ; No predecessors!
  ; Comment the line below to fix compile.
  %dummy = alloca i64
  unreachable
}

define fastcc {} @_if_2d({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, { { {} (i64)*, {} (i64)* }*, i64 } %4, {}* %5, {}* %6) {
entry:
  %_fmm_316 = extractvalue { { {} (i64)*, {} (i64)* }*, i64 } %4, 1
  %_9 = insertvalue { i64, [0 x i8] } zeroinitializer, i64 %_fmm_316, 0
  %_10 = alloca { i64, [0 x i8] }, align 8
  store { i64, [0 x i8] } %_9, { i64, [0 x i8] }* %_10, align 4
  %_11 = bitcast { i64, [0 x i8] }* %_10 to { [1 x i64] }*
  %_12 = load { [1 x i64] }, { [1 x i64] }* %_11, align 4
  %_13 = alloca { [1 x i64] }, align 8
  store { [1 x i64] } %_12, { [1 x i64] }* %_13, align 4
  %_14 = bitcast { [1 x i64] }* %_13 to { {}, [8 x i8] }*
  %_15 = load { {}, [8 x i8] }, { {}, [8 x i8] }* %_14, align 1
  %_fmm_317 = extractvalue { {}, [8 x i8] } %_15, 0
  %_result = tail call fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %5, {}* %6)
  ret {} %_result
}
