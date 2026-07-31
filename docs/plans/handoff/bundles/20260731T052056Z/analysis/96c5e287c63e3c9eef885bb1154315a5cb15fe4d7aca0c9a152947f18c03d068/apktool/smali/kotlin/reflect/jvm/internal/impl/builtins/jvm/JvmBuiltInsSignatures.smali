.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final HIDDEN_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final MUTABLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

.field public static final VISIBLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 56

    .line 1
    const-string v0, "toArray()[Ljava/lang/Object;"

    .line 2
    .line 3
    const-string v1, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Collection"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v2, v0, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 25
    .line 26
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    aput-object v3, v2, v5

    .line 35
    .line 36
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 60
    .line 61
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v9, "Value()"

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    filled-new-array {v6}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    const-string v8, "java/lang/"

    .line 109
    .line 110
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, [Ljava/lang/String;

    .line 119
    .line 120
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 121
    .line 122
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 123
    .line 124
    .line 125
    array-length v9, v6

    .line 126
    move v10, v4

    .line 127
    :goto_1
    if-ge v10, v9, :cond_0

    .line 128
    .line 129
    aget-object v11, v6, v10

    .line 130
    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const/16 v13, 0x2e

    .line 137
    .line 138
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_0
    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    const-string v2, "sort(Ljava/util/Comparator;)V"

    .line 159
    .line 160
    filled-new-array {v2}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    const-string v7, "List"

    .line 165
    .line 166
    invoke-static {v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v54, "lines()Ljava/util/stream/Stream;"

    .line 175
    .line 176
    const-string v55, "repeat(I)Ljava/lang/String;"

    .line 177
    .line 178
    const-string v8, "codePointAt(I)I"

    .line 179
    .line 180
    const-string v9, "codePointBefore(I)I"

    .line 181
    .line 182
    const-string v10, "codePointCount(II)I"

    .line 183
    .line 184
    const-string v11, "compareToIgnoreCase(Ljava/lang/String;)I"

    .line 185
    .line 186
    const-string v12, "concat(Ljava/lang/String;)Ljava/lang/String;"

    .line 187
    .line 188
    const-string v13, "contains(Ljava/lang/CharSequence;)Z"

    .line 189
    .line 190
    const-string v14, "contentEquals(Ljava/lang/CharSequence;)Z"

    .line 191
    .line 192
    const-string v15, "contentEquals(Ljava/lang/StringBuffer;)Z"

    .line 193
    .line 194
    const-string v16, "endsWith(Ljava/lang/String;)Z"

    .line 195
    .line 196
    const-string v17, "equalsIgnoreCase(Ljava/lang/String;)Z"

    .line 197
    .line 198
    const-string v18, "getBytes()[B"

    .line 199
    .line 200
    const-string v19, "getBytes(II[BI)V"

    .line 201
    .line 202
    const-string v20, "getBytes(Ljava/lang/String;)[B"

    .line 203
    .line 204
    const-string v21, "getBytes(Ljava/nio/charset/Charset;)[B"

    .line 205
    .line 206
    const-string v22, "getChars(II[CI)V"

    .line 207
    .line 208
    const-string v23, "indexOf(I)I"

    .line 209
    .line 210
    const-string v24, "indexOf(II)I"

    .line 211
    .line 212
    const-string v25, "indexOf(Ljava/lang/String;)I"

    .line 213
    .line 214
    const-string v26, "indexOf(Ljava/lang/String;I)I"

    .line 215
    .line 216
    const-string v27, "intern()Ljava/lang/String;"

    .line 217
    .line 218
    const-string v28, "isEmpty()Z"

    .line 219
    .line 220
    const-string v29, "lastIndexOf(I)I"

    .line 221
    .line 222
    const-string v30, "lastIndexOf(II)I"

    .line 223
    .line 224
    const-string v31, "lastIndexOf(Ljava/lang/String;)I"

    .line 225
    .line 226
    const-string v32, "lastIndexOf(Ljava/lang/String;I)I"

    .line 227
    .line 228
    const-string v33, "matches(Ljava/lang/String;)Z"

    .line 229
    .line 230
    const-string v34, "offsetByCodePoints(II)I"

    .line 231
    .line 232
    const-string v35, "regionMatches(ILjava/lang/String;II)Z"

    .line 233
    .line 234
    const-string v36, "regionMatches(ZILjava/lang/String;II)Z"

    .line 235
    .line 236
    const-string v37, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    .line 237
    .line 238
    const-string v38, "replace(CC)Ljava/lang/String;"

    .line 239
    .line 240
    const-string v39, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    .line 241
    .line 242
    const-string v40, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    .line 243
    .line 244
    const-string v41, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    .line 245
    .line 246
    const-string v42, "split(Ljava/lang/String;)[Ljava/lang/String;"

    .line 247
    .line 248
    const-string v43, "startsWith(Ljava/lang/String;I)Z"

    .line 249
    .line 250
    const-string v44, "startsWith(Ljava/lang/String;)Z"

    .line 251
    .line 252
    const-string v45, "substring(II)Ljava/lang/String;"

    .line 253
    .line 254
    const-string v46, "substring(I)Ljava/lang/String;"

    .line 255
    .line 256
    const-string v47, "toCharArray()[C"

    .line 257
    .line 258
    const-string v48, "toLowerCase()Ljava/lang/String;"

    .line 259
    .line 260
    const-string v49, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    .line 261
    .line 262
    const-string v50, "toUpperCase()Ljava/lang/String;"

    .line 263
    .line 264
    const-string v51, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    .line 265
    .line 266
    const-string/jumbo v52, "trim()Ljava/lang/String;"

    .line 267
    .line 268
    .line 269
    const-string v53, "isBlank()Z"

    .line 270
    .line 271
    filled-new-array/range {v8 .. v55}, [Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    const-string v8, "String"

    .line 276
    .line 277
    invoke-static {v8, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v6, "Double"

    .line 286
    .line 287
    const-string v9, "isInfinite()Z"

    .line 288
    .line 289
    const-string v10, "isNaN()Z"

    .line 290
    .line 291
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-static {v6, v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    const-string v9, "Float"

    .line 308
    .line 309
    invoke-static {v9, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    const-string v6, "getDeclaringClass()Ljava/lang/Class;"

    .line 318
    .line 319
    const-string v10, "finalize()V"

    .line 320
    .line 321
    filled-new-array {v6, v10}, [Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    const-string v10, "Enum"

    .line 326
    .line 327
    invoke-static {v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    const-string v6, "isEmpty()Z"

    .line 336
    .line 337
    filled-new-array {v6}, [Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    const-string v10, "CharSequence"

    .line 342
    .line 343
    invoke-static {v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    .line 352
    .line 353
    const-string v3, "codePoints()Ljava/util/stream/IntStream;"

    .line 354
    .line 355
    const-string v6, "chars()Ljava/util/stream/IntStream;"

    .line 356
    .line 357
    filled-new-array {v3, v6}, [Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-static {v10, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    const-string v6, "forEachRemaining(Ljava/util/function/Consumer;)V"

    .line 366
    .line 367
    filled-new-array {v6}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    const-string v10, "Iterator"

    .line 372
    .line 373
    invoke-static {v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    const-string v6, "forEach(Ljava/util/function/Consumer;)V"

    .line 382
    .line 383
    const-string v10, "spliterator()Ljava/util/Spliterator;"

    .line 384
    .line 385
    filled-new-array {v6, v10}, [Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    const-string v11, "Iterable"

    .line 390
    .line 391
    invoke-static {v11, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    const-string v19, "getSuppressed()[Ljava/lang/Throwable;"

    .line 400
    .line 401
    const-string v20, "addSuppressed(Ljava/lang/Throwable;)V"

    .line 402
    .line 403
    const-string v11, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    .line 404
    .line 405
    const-string v12, "fillInStackTrace()Ljava/lang/Throwable;"

    .line 406
    .line 407
    const-string v13, "getLocalizedMessage()Ljava/lang/String;"

    .line 408
    .line 409
    const-string v14, "printStackTrace()V"

    .line 410
    .line 411
    const-string v15, "printStackTrace(Ljava/io/PrintStream;)V"

    .line 412
    .line 413
    const-string v16, "printStackTrace(Ljava/io/PrintWriter;)V"

    .line 414
    .line 415
    const-string v17, "getStackTrace()[Ljava/lang/StackTraceElement;"

    .line 416
    .line 417
    const-string v18, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    .line 418
    .line 419
    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    const-string v11, "Throwable"

    .line 424
    .line 425
    invoke-static {v11, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    const-string v6, "parallelStream()Ljava/util/stream/Stream;"

    .line 434
    .line 435
    const-string v12, "stream()Ljava/util/stream/Stream;"

    .line 436
    .line 437
    const-string v13, "removeIf(Ljava/util/function/Predicate;)Z"

    .line 438
    .line 439
    filled-new-array {v10, v6, v12, v13}, [Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-static {v1, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-static {v3, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    const-string v6, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    .line 452
    .line 453
    filled-new-array {v6}, [Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    invoke-static {v7, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 458
    .line 459
    .line 460
    move-result-object v10

    .line 461
    invoke-static {v3, v10}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    const-string v22, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    .line 466
    .line 467
    const-string v23, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 468
    .line 469
    const-string v14, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 470
    .line 471
    const-string v15, "forEach(Ljava/util/function/BiConsumer;)V"

    .line 472
    .line 473
    const-string v16, "replaceAll(Ljava/util/function/BiFunction;)V"

    .line 474
    .line 475
    const-string v17, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 476
    .line 477
    const-string v18, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 478
    .line 479
    const-string v19, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 480
    .line 481
    const-string v20, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 482
    .line 483
    const-string v21, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 484
    .line 485
    filled-new-array/range {v14 .. v23}, [Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    const-string v12, "Map"

    .line 490
    .line 491
    invoke-static {v12, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    invoke-static {v3, v10}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    .line 500
    .line 501
    filled-new-array {v13}, [Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    filled-new-array {v6, v2}, [Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-static {v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-static {v1, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    const-string v20, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 522
    .line 523
    const-string v21, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 524
    .line 525
    const-string v13, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    .line 526
    .line 527
    const-string v14, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 528
    .line 529
    const-string v15, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 530
    .line 531
    const-string v16, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    .line 532
    .line 533
    const-string v17, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 534
    .line 535
    const-string v18, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    .line 536
    .line 537
    const-string v19, "replaceAll(Ljava/util/function/BiFunction;)V"

    .line 538
    .line 539
    filled-new-array/range {v13 .. v21}, [Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-static {v12, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v1, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/LinkedHashSet;

    .line 552
    .line 553
    const/16 v1, 0x8

    .line 554
    .line 555
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 556
    .line 557
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 558
    .line 559
    aput-object v2, v1, v4

    .line 560
    .line 561
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 562
    .line 563
    aput-object v2, v1, v5

    .line 564
    .line 565
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 566
    .line 567
    aput-object v3, v1, v0

    .line 568
    .line 569
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 570
    .line 571
    const/4 v3, 0x3

    .line 572
    aput-object v0, v1, v3

    .line 573
    .line 574
    const/4 v0, 0x4

    .line 575
    aput-object v2, v1, v0

    .line 576
    .line 577
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 578
    .line 579
    const/4 v2, 0x5

    .line 580
    aput-object v0, v1, v2

    .line 581
    .line 582
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 583
    .line 584
    const/4 v2, 0x6

    .line 585
    aput-object v0, v1, v2

    .line 586
    .line 587
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 588
    .line 589
    const/4 v2, 0x7

    .line 590
    aput-object v0, v1, v2

    .line 591
    .line 592
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 597
    .line 598
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-eqz v2, :cond_2

    .line 610
    .line 611
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 616
    .line 617
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    const-string v3, "Ljava/lang/String;"

    .line 633
    .line 634
    filled-new-array {v3}, [Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    array-length v4, v3

    .line 643
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    check-cast v3, [Ljava/lang/String;

    .line 648
    .line 649
    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 654
    .line 655
    .line 656
    goto :goto_2

    .line 657
    :cond_2
    const-string v0, "D"

    .line 658
    .line 659
    filled-new-array {v0}, [Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    array-length v2, v0

    .line 668
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    check-cast v0, [Ljava/lang/String;

    .line 673
    .line 674
    invoke-static {v9, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    const-string v21, "Ljava/lang/StringBuffer;"

    .line 683
    .line 684
    const-string v22, "Ljava/lang/StringBuilder;"

    .line 685
    .line 686
    const-string v12, "[C"

    .line 687
    .line 688
    const-string v13, "[CII"

    .line 689
    .line 690
    const-string v14, "[III"

    .line 691
    .line 692
    const-string v15, "[BIILjava/lang/String;"

    .line 693
    .line 694
    const-string v16, "[BIILjava/nio/charset/Charset;"

    .line 695
    .line 696
    const-string v17, "[BLjava/lang/String;"

    .line 697
    .line 698
    const-string v18, "[BLjava/nio/charset/Charset;"

    .line 699
    .line 700
    const-string v19, "[BII"

    .line 701
    .line 702
    const-string v20, "[B"

    .line 703
    .line 704
    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    array-length v2, v1

    .line 713
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    check-cast v1, [Ljava/lang/String;

    .line 718
    .line 719
    invoke-static {v8, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

    .line 728
    .line 729
    const-string v0, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    .line 730
    .line 731
    filled-new-array {v0}, [Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    array-length v1, v0

    .line 740
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    check-cast v0, [Ljava/lang/String;

    .line 745
    .line 746
    invoke-static {v11, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedHashSet;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/LinkedHashSet;

    .line 751
    .line 752
    return-void
.end method
