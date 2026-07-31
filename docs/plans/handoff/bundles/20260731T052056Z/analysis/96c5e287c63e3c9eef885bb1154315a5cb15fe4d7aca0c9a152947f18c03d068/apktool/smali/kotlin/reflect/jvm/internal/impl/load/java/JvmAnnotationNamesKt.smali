.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ANDROIDX_RECENTLY_NON_NULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final ANDROIDX_RECENTLY_NULLABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final COMPATQUAL_NONNULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final COMPATQUAL_NULLABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JAVAX_CHECKFORNULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JAVAX_NONNULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSPECIFY_NULLABLE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSPECIFY_NULLNESS_UNKNOWN:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSPECIFY_NULL_MARKED:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSPECIFY_OLD_NULLABLE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSPECIFY_OLD_NULLNESS_UNKNOWN:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final JSPECIFY_OLD_NULL_MARKED:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final MUTABLE_ANNOTATIONS:Ljava/util/Set;

.field public static final NOT_NULL_ANNOTATIONS:Ljava/util/List;

.field public static final NULLABLE_ANNOTATIONS:Ljava/util/List;

.field public static final READ_ONLY_ANNOTATIONS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2
    .line 3
    const-string v1, "org.jspecify.nullness.Nullable"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JSPECIFY_OLD_NULLABLE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 9
    .line 10
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 11
    .line 12
    const-string v2, "org.jspecify.nullness.NullnessUnspecified"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JSPECIFY_OLD_NULLNESS_UNKNOWN:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 18
    .line 19
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 20
    .line 21
    const-string v2, "org.jspecify.nullness.NullMarked"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JSPECIFY_OLD_NULL_MARKED:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 27
    .line 28
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 29
    .line 30
    const-string v3, "org.jspecify.annotations.Nullable"

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JSPECIFY_NULLABLE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 36
    .line 37
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 38
    .line 39
    const-string v4, "org.jspecify.annotations.NullnessUnspecified"

    .line 40
    .line 41
    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JSPECIFY_NULLNESS_UNKNOWN:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 45
    .line 46
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 47
    .line 48
    const-string v4, "org.jspecify.annotations.NullMarked"

    .line 49
    .line 50
    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JSPECIFY_NULL_MARKED:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 54
    .line 55
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 56
    .line 57
    const-string v5, "androidx.annotation.Nullable"

    .line 58
    .line 59
    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 63
    .line 64
    const-string v6, "android.support.annotation.Nullable"

    .line 65
    .line 66
    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 70
    .line 71
    const-string v7, "android.annotation.Nullable"

    .line 72
    .line 73
    invoke-direct {v6, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 77
    .line 78
    const-string v8, "com.android.annotations.Nullable"

    .line 79
    .line 80
    invoke-direct {v7, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 84
    .line 85
    const-string v9, "org.eclipse.jdt.annotation.Nullable"

    .line 86
    .line 87
    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 91
    .line 92
    const-string v10, "org.checkerframework.checker.nullness.qual.Nullable"

    .line 93
    .line 94
    invoke-direct {v9, v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 98
    .line 99
    const-string v11, "javax.annotation.Nullable"

    .line 100
    .line 101
    invoke-direct {v10, v11}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 105
    .line 106
    const-string v12, "javax.annotation.CheckForNull"

    .line 107
    .line 108
    invoke-direct {v11, v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 112
    .line 113
    const-string v14, "edu.umd.cs.findbugs.annotations.CheckForNull"

    .line 114
    .line 115
    invoke-direct {v13, v14}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 119
    .line 120
    const-string v15, "edu.umd.cs.findbugs.annotations.Nullable"

    .line 121
    .line 122
    invoke-direct {v14, v15}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 126
    .line 127
    move-object/from16 v16, v4

    .line 128
    .line 129
    const-string v4, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    .line 130
    .line 131
    invoke-direct {v15, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 135
    .line 136
    move-object/from16 v17, v5

    .line 137
    .line 138
    const-string v5, "io.reactivex.annotations.Nullable"

    .line 139
    .line 140
    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 144
    .line 145
    move-object/from16 v18, v4

    .line 146
    .line 147
    const-string v4, "io.reactivex.rxjava3.annotations.Nullable"

    .line 148
    .line 149
    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/16 v4, 0xe

    .line 153
    .line 154
    new-array v4, v4, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 155
    .line 156
    sget-object v19, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->JETBRAINS_NULLABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 157
    .line 158
    const/16 v20, 0x0

    .line 159
    .line 160
    aput-object v19, v4, v20

    .line 161
    .line 162
    const/16 v19, 0x1

    .line 163
    .line 164
    aput-object v16, v4, v19

    .line 165
    .line 166
    move-object/from16 v16, v4

    .line 167
    .line 168
    const/4 v4, 0x2

    .line 169
    aput-object v17, v16, v4

    .line 170
    .line 171
    const/16 v17, 0x3

    .line 172
    .line 173
    aput-object v6, v16, v17

    .line 174
    .line 175
    const/4 v6, 0x4

    .line 176
    aput-object v7, v16, v6

    .line 177
    .line 178
    const/4 v7, 0x5

    .line 179
    aput-object v8, v16, v7

    .line 180
    .line 181
    const/4 v8, 0x6

    .line 182
    aput-object v9, v16, v8

    .line 183
    .line 184
    const/4 v9, 0x7

    .line 185
    aput-object v10, v16, v9

    .line 186
    .line 187
    const/16 v10, 0x8

    .line 188
    .line 189
    aput-object v11, v16, v10

    .line 190
    .line 191
    const/16 v11, 0x9

    .line 192
    .line 193
    aput-object v13, v16, v11

    .line 194
    .line 195
    const/16 v13, 0xa

    .line 196
    .line 197
    aput-object v14, v16, v13

    .line 198
    .line 199
    const/16 v14, 0xb

    .line 200
    .line 201
    aput-object v15, v16, v14

    .line 202
    .line 203
    const/16 v15, 0xc

    .line 204
    .line 205
    aput-object v18, v16, v15

    .line 206
    .line 207
    const/16 v15, 0xd

    .line 208
    .line 209
    aput-object v5, v16, v15

    .line 210
    .line 211
    invoke-static/range {v16 .. v16}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->NULLABLE_ANNOTATIONS:Ljava/util/List;

    .line 216
    .line 217
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 218
    .line 219
    move/from16 v16, v7

    .line 220
    .line 221
    const-string v7, "javax.annotation.Nonnull"

    .line 222
    .line 223
    invoke-direct {v15, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sput-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JAVAX_NONNULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 227
    .line 228
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 229
    .line 230
    invoke-direct {v7, v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->JAVAX_CHECKFORNULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 234
    .line 235
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 236
    .line 237
    const-string v12, "edu.umd.cs.findbugs.annotations.NonNull"

    .line 238
    .line 239
    invoke-direct {v7, v12}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 243
    .line 244
    move/from16 v18, v8

    .line 245
    .line 246
    const-string v8, "androidx.annotation.NonNull"

    .line 247
    .line 248
    invoke-direct {v12, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 252
    .line 253
    move/from16 v21, v9

    .line 254
    .line 255
    const-string v9, "android.support.annotation.NonNull"

    .line 256
    .line 257
    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 261
    .line 262
    move/from16 v22, v10

    .line 263
    .line 264
    const-string v10, "android.annotation.NonNull"

    .line 265
    .line 266
    invoke-direct {v9, v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 270
    .line 271
    move/from16 v23, v11

    .line 272
    .line 273
    const-string v11, "com.android.annotations.NonNull"

    .line 274
    .line 275
    invoke-direct {v10, v11}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 279
    .line 280
    move/from16 v24, v13

    .line 281
    .line 282
    const-string v13, "org.eclipse.jdt.annotation.NonNull"

    .line 283
    .line 284
    invoke-direct {v11, v13}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 288
    .line 289
    move/from16 v25, v6

    .line 290
    .line 291
    const-string v6, "org.checkerframework.checker.nullness.qual.NonNull"

    .line 292
    .line 293
    invoke-direct {v13, v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 297
    .line 298
    move/from16 v26, v4

    .line 299
    .line 300
    const-string v4, "lombok.NonNull"

    .line 301
    .line 302
    invoke-direct {v6, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 306
    .line 307
    const-string v14, "io.reactivex.annotations.NonNull"

    .line 308
    .line 309
    invoke-direct {v4, v14}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 313
    .line 314
    move-object/from16 v28, v4

    .line 315
    .line 316
    const-string v4, "io.reactivex.rxjava3.annotations.NonNull"

    .line 317
    .line 318
    invoke-direct {v14, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/16 v4, 0xb

    .line 322
    .line 323
    new-array v4, v4, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 324
    .line 325
    sget-object v27, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->JETBRAINS_NOT_NULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 326
    .line 327
    aput-object v27, v4, v20

    .line 328
    .line 329
    aput-object v7, v4, v19

    .line 330
    .line 331
    aput-object v12, v4, v26

    .line 332
    .line 333
    aput-object v8, v4, v17

    .line 334
    .line 335
    aput-object v9, v4, v25

    .line 336
    .line 337
    aput-object v10, v4, v16

    .line 338
    .line 339
    aput-object v11, v4, v18

    .line 340
    .line 341
    aput-object v13, v4, v21

    .line 342
    .line 343
    aput-object v6, v4, v22

    .line 344
    .line 345
    aput-object v28, v4, v23

    .line 346
    .line 347
    aput-object v14, v4, v24

    .line 348
    .line 349
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    sput-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->NOT_NULL_ANNOTATIONS:Ljava/util/List;

    .line 354
    .line 355
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 356
    .line 357
    const-string v7, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    .line 358
    .line 359
    invoke-direct {v6, v7}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->COMPATQUAL_NULLABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 363
    .line 364
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 365
    .line 366
    const-string v8, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    .line 367
    .line 368
    invoke-direct {v7, v8}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->COMPATQUAL_NONNULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 372
    .line 373
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 374
    .line 375
    const-string v9, "androidx.annotation.RecentlyNullable"

    .line 376
    .line 377
    invoke-direct {v8, v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sput-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->ANDROIDX_RECENTLY_NULLABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 381
    .line 382
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 383
    .line 384
    const-string v10, "androidx.annotation.RecentlyNonNull"

    .line 385
    .line 386
    invoke-direct {v9, v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    sput-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->ANDROIDX_RECENTLY_NON_NULL_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 390
    .line 391
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 392
    .line 393
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-static {v10, v5}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-static {v5, v15}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-static {v5, v4}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-static {v4, v6}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-static {v4, v7}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-static {v4, v8}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-static {v4, v9}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-static {v4, v0}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v0, v1}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v0, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v0, v3}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 437
    .line 438
    .line 439
    move/from16 v0, v26

    .line 440
    .line 441
    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 442
    .line 443
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->JETBRAINS_READONLY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 444
    .line 445
    aput-object v2, v1, v20

    .line 446
    .line 447
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->READONLY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 448
    .line 449
    aput-object v2, v1, v19

    .line 450
    .line 451
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->READ_ONLY_ANNOTATIONS:Ljava/util/Set;

    .line 456
    .line 457
    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 458
    .line 459
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->JETBRAINS_MUTABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 460
    .line 461
    aput-object v0, v1, v20

    .line 462
    .line 463
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->MUTABLE_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 464
    .line 465
    aput-object v0, v1, v19

    .line 466
    .line 467
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNamesKt;->MUTABLE_ANNOTATIONS:Ljava/util/Set;

    .line 472
    .line 473
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->TARGET_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 474
    .line 475
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->target:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 476
    .line 477
    new-instance v2, Lkotlin/Pair;

    .line 478
    .line 479
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->RETENTION_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 483
    .line 484
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->retention:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 485
    .line 486
    new-instance v3, Lkotlin/Pair;

    .line 487
    .line 488
    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->DEPRECATED_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 492
    .line 493
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->deprecated:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 494
    .line 495
    new-instance v4, Lkotlin/Pair;

    .line 496
    .line 497
    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->DOCUMENTED_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 501
    .line 502
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mustBeDocumented:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 503
    .line 504
    new-instance v5, Lkotlin/Pair;

    .line 505
    .line 506
    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    move/from16 v0, v25

    .line 510
    .line 511
    new-array v0, v0, [Lkotlin/Pair;

    .line 512
    .line 513
    aput-object v2, v0, v20

    .line 514
    .line 515
    aput-object v3, v0, v19

    .line 516
    .line 517
    const/16 v26, 0x2

    .line 518
    .line 519
    aput-object v4, v0, v26

    .line 520
    .line 521
    aput-object v5, v0, v17

    .line 522
    .line 523
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 524
    .line 525
    .line 526
    return-void
.end method
