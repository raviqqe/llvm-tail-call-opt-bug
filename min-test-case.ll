@None = linkonce constant i64 0
@Record = linkonce constant i64 0

declare {} @"variant_clone_Record(Record { name: \22prelude:error\22 })"(i64 %0)
declare {} @"variant_drop_Record(Record { name: \22prelude:error\22 })"(i64 %0)
declare fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %4, {}* %5)

define fastcc {} @_k_8f({ i8*, i64, i64 }* %0, { { {} (i64)*, {} (i64)* }*, i64 } %1) {
entry:
  %_2 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %_3 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %_4 = sub i64 0, 0
  store i64 %_4, i64* %_3, align 4
  %_5 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 0
  %_k_96 = load i8*, i8** %_5, align 8
  %_6 = getelementptr { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i32 0, i32 1
  %_k_97 = load i64, i64* %_6, align 4
  %_7 = getelementptr i8, i8* %_k_96, i64 %_k_97
  %_8 = ptrtoint i8* %_7 to i64
  %_9 = inttoptr i64 %_8 to { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* }*
  %_k_98 = load { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* }, { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* }* %_9, align 8
  %_k = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 0
  %_fmm_2e2 = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 1
  %_fmm_2fc = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 2
  %ctx = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 3
  %l = extractvalue { {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })*, {}*, { i64, i8 }*, {}*, {}* } %_k_98, 4
  %_fmm_303 = extractvalue { { {} (i64)*, {} (i64)* }*, i64 } %1, 0
  %_10 = ptrtoint { {} (i64)*, {} (i64)* }* %_fmm_303 to i64
  %_11 = icmp eq i64 %_10, ptrtoint (i64* @Record to i64)
  br i1 %_11, label %then1, label %else2

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
  %_result = tail call fastcc {} @_if_2e({ i8*, i64, i64 }* %0, {} ({ i8*, i64, i64 }*, { { {} (i64)*, {} (i64)* }*, i64 })* %1, {}* %2, { i64, i8 }* %3, {}* %5, {}* %6)
  ret {} %_result
}
