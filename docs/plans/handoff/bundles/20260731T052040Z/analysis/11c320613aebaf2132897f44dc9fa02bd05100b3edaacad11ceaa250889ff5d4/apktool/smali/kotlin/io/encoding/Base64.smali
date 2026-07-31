.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Default:Lkotlin/io/encoding/Base64$Default;


# instance fields
.field public final isMimeScheme:Z

.field public final isUrlSafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/io/encoding/Base64$Default;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2}, Lkotlin/io/encoding/Base64;-><init>(IZZ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 9
    .line 10
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3, v2}, Lkotlin/io/encoding/Base64;-><init>(IZZ)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 17
    .line 18
    const/16 v1, 0x4c

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lkotlin/io/encoding/Base64;-><init>(IZZ)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lkotlin/io/encoding/Base64;

    .line 24
    .line 25
    const/16 v1, 0x40

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3}, Lkotlin/io/encoding/Base64;-><init>(IZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "Failed requirement."

    .line 14
    .line 15
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;II)[B
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    and-int/lit8 v2, p3, 0x2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p2

    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-boolean v5, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    instance-of v6, v1, Ljava/lang/String;

    .line 27
    .line 28
    const/16 v7, 0xff

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-static {v2, v4, v6}, Landroidx/core/os/BundleKt;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-static {v2, v4, v6}, Landroidx/core/os/BundleKt;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 60
    .line 61
    .line 62
    sub-int v6, v4, v2

    .line 63
    .line 64
    new-array v6, v6, [B

    .line 65
    .line 66
    move v8, v3

    .line 67
    :goto_1
    if-ge v2, v4, :cond_3

    .line 68
    .line 69
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-gt v9, v7, :cond_2

    .line 74
    .line 75
    add-int/lit8 v10, v8, 0x1

    .line 76
    .line 77
    int-to-byte v9, v9

    .line 78
    aput-byte v9, v6, v8

    .line 79
    .line 80
    move v8, v10

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    add-int/lit8 v9, v8, 0x1

    .line 83
    .line 84
    const/16 v10, 0x3f

    .line 85
    .line 86
    aput-byte v10, v6, v8

    .line 87
    .line 88
    move v8, v9

    .line 89
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move-object v1, v6

    .line 93
    :goto_3
    array-length v2, v1

    .line 94
    array-length v4, v1

    .line 95
    invoke-static {v3, v2, v4}, Landroidx/core/os/BundleKt;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 96
    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    const/16 v8, 0x3d

    .line 100
    .line 101
    const/4 v9, -0x2

    .line 102
    if-nez v2, :cond_4

    .line 103
    .line 104
    move v10, v3

    .line 105
    goto :goto_6

    .line 106
    :cond_4
    if-eq v2, v6, :cond_24

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    move v11, v2

    .line 111
    move v10, v3

    .line 112
    :goto_4
    if-ge v10, v2, :cond_9

    .line 113
    .line 114
    aget-byte v12, v1, v10

    .line 115
    .line 116
    and-int/2addr v12, v7

    .line 117
    sget-object v13, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 118
    .line 119
    aget v12, v13, v12

    .line 120
    .line 121
    if-gez v12, :cond_6

    .line 122
    .line 123
    if-ne v12, v9, :cond_5

    .line 124
    .line 125
    sub-int v10, v2, v10

    .line 126
    .line 127
    sub-int/2addr v11, v10

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 130
    .line 131
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_7
    add-int/lit8 v10, v2, -0x1

    .line 135
    .line 136
    aget-byte v10, v1, v10

    .line 137
    .line 138
    if-ne v10, v8, :cond_8

    .line 139
    .line 140
    add-int/lit8 v11, v2, -0x1

    .line 141
    .line 142
    add-int/lit8 v10, v2, -0x2

    .line 143
    .line 144
    aget-byte v10, v1, v10

    .line 145
    .line 146
    if-ne v10, v8, :cond_9

    .line 147
    .line 148
    add-int/lit8 v11, v2, -0x2

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    move v11, v2

    .line 152
    :cond_9
    :goto_5
    int-to-long v10, v11

    .line 153
    const-wide/16 v12, 0x6

    .line 154
    .line 155
    mul-long/2addr v10, v12

    .line 156
    const-wide/16 v12, 0x8

    .line 157
    .line 158
    div-long/2addr v10, v12

    .line 159
    long-to-int v10, v10

    .line 160
    :goto_6
    new-array v11, v10, [B

    .line 161
    .line 162
    iget-boolean v0, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 163
    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->base64UrlDecodeMap:[I

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_a
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 170
    .line 171
    :goto_7
    const/4 v12, -0x8

    .line 172
    move v13, v3

    .line 173
    move v15, v13

    .line 174
    move v14, v12

    .line 175
    const/16 p1, 0x0

    .line 176
    .line 177
    :goto_8
    move/from16 p2, v6

    .line 178
    .line 179
    const-string v6, ") at index "

    .line 180
    .line 181
    const-string v8, "\'("

    .line 182
    .line 183
    if-ge v13, v2, :cond_1a

    .line 184
    .line 185
    if-ne v14, v12, :cond_c

    .line 186
    .line 187
    const/16 v16, 0x8

    .line 188
    .line 189
    add-int/lit8 v4, v13, 0x3

    .line 190
    .line 191
    if-ge v4, v2, :cond_b

    .line 192
    .line 193
    add-int/lit8 v17, v13, 0x1

    .line 194
    .line 195
    aget-byte v12, v1, v13

    .line 196
    .line 197
    and-int/2addr v12, v7

    .line 198
    aget v12, v0, v12

    .line 199
    .line 200
    add-int/lit8 v18, v13, 0x2

    .line 201
    .line 202
    aget-byte v9, v1, v17

    .line 203
    .line 204
    and-int/2addr v9, v7

    .line 205
    aget v9, v0, v9

    .line 206
    .line 207
    move-object/from16 v17, v0

    .line 208
    .line 209
    aget-byte v0, v1, v18

    .line 210
    .line 211
    and-int/2addr v0, v7

    .line 212
    aget v0, v17, v0

    .line 213
    .line 214
    add-int/lit8 v18, v13, 0x4

    .line 215
    .line 216
    aget-byte v4, v1, v4

    .line 217
    .line 218
    and-int/2addr v4, v7

    .line 219
    aget v4, v17, v4

    .line 220
    .line 221
    shl-int/lit8 v12, v12, 0x12

    .line 222
    .line 223
    shl-int/lit8 v9, v9, 0xc

    .line 224
    .line 225
    or-int/2addr v9, v12

    .line 226
    shl-int/lit8 v0, v0, 0x6

    .line 227
    .line 228
    or-int/2addr v0, v9

    .line 229
    or-int/2addr v0, v4

    .line 230
    if-ltz v0, :cond_d

    .line 231
    .line 232
    add-int/lit8 v4, v3, 0x1

    .line 233
    .line 234
    shr-int/lit8 v6, v0, 0x10

    .line 235
    .line 236
    int-to-byte v6, v6

    .line 237
    aput-byte v6, v11, v3

    .line 238
    .line 239
    add-int/lit8 v6, v3, 0x2

    .line 240
    .line 241
    shr-int/lit8 v8, v0, 0x8

    .line 242
    .line 243
    int-to-byte v8, v8

    .line 244
    aput-byte v8, v11, v4

    .line 245
    .line 246
    add-int/lit8 v3, v3, 0x3

    .line 247
    .line 248
    int-to-byte v0, v0

    .line 249
    aput-byte v0, v11, v6

    .line 250
    .line 251
    move/from16 v6, p2

    .line 252
    .line 253
    move-object/from16 v0, v17

    .line 254
    .line 255
    move/from16 v13, v18

    .line 256
    .line 257
    const/16 v8, 0x3d

    .line 258
    .line 259
    :goto_9
    const/4 v9, -0x2

    .line 260
    const/4 v12, -0x8

    .line 261
    goto :goto_8

    .line 262
    :cond_b
    :goto_a
    move-object/from16 v17, v0

    .line 263
    .line 264
    goto :goto_b

    .line 265
    :cond_c
    const/16 v16, 0x8

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_d
    :goto_b
    aget-byte v0, v1, v13

    .line 269
    .line 270
    and-int/2addr v0, v7

    .line 271
    aget v4, v17, v0

    .line 272
    .line 273
    if-gez v4, :cond_18

    .line 274
    .line 275
    const/4 v9, -0x2

    .line 276
    if-ne v4, v9, :cond_16

    .line 277
    .line 278
    const/4 v4, -0x8

    .line 279
    if-eq v14, v4, :cond_15

    .line 280
    .line 281
    const/4 v0, -0x6

    .line 282
    if-eq v14, v0, :cond_e

    .line 283
    .line 284
    const/4 v0, -0x4

    .line 285
    if-eq v14, v0, :cond_10

    .line 286
    .line 287
    if-ne v14, v9, :cond_f

    .line 288
    .line 289
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 290
    .line 291
    goto :goto_e

    .line 292
    :cond_f
    const-string v0, "Unreachable"

    .line 293
    .line 294
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-object p1

    .line 298
    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 299
    .line 300
    if-nez v5, :cond_11

    .line 301
    .line 302
    goto :goto_d

    .line 303
    :cond_11
    :goto_c
    if-ge v13, v2, :cond_13

    .line 304
    .line 305
    aget-byte v0, v1, v13

    .line 306
    .line 307
    and-int/2addr v0, v7

    .line 308
    sget-object v4, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 309
    .line 310
    aget v0, v4, v0

    .line 311
    .line 312
    const/4 v4, -0x1

    .line 313
    if-eq v0, v4, :cond_12

    .line 314
    .line 315
    goto :goto_d

    .line 316
    :cond_12
    add-int/lit8 v13, v13, 0x1

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_13
    :goto_d
    if-eq v13, v2, :cond_14

    .line 320
    .line 321
    aget-byte v0, v1, v13

    .line 322
    .line 323
    const/16 v9, 0x3d

    .line 324
    .line 325
    if-ne v0, v9, :cond_14

    .line 326
    .line 327
    add-int/lit8 v13, v13, 0x1

    .line 328
    .line 329
    goto :goto_e

    .line 330
    :cond_14
    const-string v0, "Missing one pad character at index "

    .line 331
    .line 332
    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-object p1

    .line 340
    :goto_e
    move/from16 v0, p2

    .line 341
    .line 342
    const/4 v9, -0x2

    .line 343
    goto :goto_10

    .line 344
    :cond_15
    const-string v0, "Redundant pad character at index "

    .line 345
    .line 346
    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    return-object p1

    .line 354
    :cond_16
    const/16 v9, 0x3d

    .line 355
    .line 356
    if-eqz v5, :cond_17

    .line 357
    .line 358
    add-int/lit8 v13, v13, 0x1

    .line 359
    .line 360
    move/from16 v6, p2

    .line 361
    .line 362
    :goto_f
    move v8, v9

    .line 363
    move-object/from16 v0, v17

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 367
    .line 368
    int-to-char v2, v0

    .line 369
    invoke-static/range {v16 .. v16}, Lkotlin/text/CharsKt;->checkRadix(I)V

    .line 370
    .line 371
    .line 372
    move/from16 v3, v16

    .line 373
    .line 374
    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v4, "Invalid symbol \'"

    .line 384
    .line 385
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v1

    .line 411
    :cond_18
    const/16 v9, 0x3d

    .line 412
    .line 413
    add-int/lit8 v13, v13, 0x1

    .line 414
    .line 415
    shl-int/lit8 v0, v15, 0x6

    .line 416
    .line 417
    or-int v15, v0, v4

    .line 418
    .line 419
    add-int/lit8 v4, v14, 0x6

    .line 420
    .line 421
    if-ltz v4, :cond_19

    .line 422
    .line 423
    add-int/lit8 v0, v3, 0x1

    .line 424
    .line 425
    ushr-int v6, v15, v4

    .line 426
    .line 427
    int-to-byte v6, v6

    .line 428
    aput-byte v6, v11, v3

    .line 429
    .line 430
    shl-int v3, p2, v4

    .line 431
    .line 432
    add-int/lit8 v3, v3, -0x1

    .line 433
    .line 434
    and-int/2addr v15, v3

    .line 435
    add-int/lit8 v14, v14, -0x2

    .line 436
    .line 437
    move/from16 v6, p2

    .line 438
    .line 439
    move v3, v0

    .line 440
    goto :goto_f

    .line 441
    :cond_19
    move/from16 v6, p2

    .line 442
    .line 443
    move v14, v4

    .line 444
    goto :goto_f

    .line 445
    :cond_1a
    const/4 v0, 0x0

    .line 446
    :goto_10
    if-eq v14, v9, :cond_23

    .line 447
    .line 448
    const/4 v4, -0x8

    .line 449
    if-eq v14, v4, :cond_1c

    .line 450
    .line 451
    if-eqz v0, :cond_1b

    .line 452
    .line 453
    goto :goto_11

    .line 454
    :cond_1b
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    .line 455
    .line 456
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    return-object p1

    .line 460
    :cond_1c
    :goto_11
    if-nez v15, :cond_22

    .line 461
    .line 462
    if-nez v5, :cond_1d

    .line 463
    .line 464
    goto :goto_13

    .line 465
    :cond_1d
    :goto_12
    if-ge v13, v2, :cond_1f

    .line 466
    .line 467
    aget-byte v0, v1, v13

    .line 468
    .line 469
    and-int/2addr v0, v7

    .line 470
    sget-object v4, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 471
    .line 472
    aget v0, v4, v0

    .line 473
    .line 474
    const/4 v4, -0x1

    .line 475
    if-eq v0, v4, :cond_1e

    .line 476
    .line 477
    goto :goto_13

    .line 478
    :cond_1e
    add-int/lit8 v13, v13, 0x1

    .line 479
    .line 480
    goto :goto_12

    .line 481
    :cond_1f
    :goto_13
    if-lt v13, v2, :cond_21

    .line 482
    .line 483
    if-ne v3, v10, :cond_20

    .line 484
    .line 485
    return-object v11

    .line 486
    :cond_20
    const-string v0, "Check failed."

    .line 487
    .line 488
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    return-object p1

    .line 492
    :cond_21
    aget-byte v0, v1, v13

    .line 493
    .line 494
    and-int/2addr v0, v7

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v2, "Symbol \'"

    .line 498
    .line 499
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    int-to-char v2, v0

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const/16 v3, 0x8

    .line 510
    .line 511
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)V

    .line 512
    .line 513
    .line 514
    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    add-int/lit8 v13, v13, -0x1

    .line 528
    .line 529
    const-string v0, " is prohibited after the pad character"

    .line 530
    .line 531
    invoke-static {v1, v13, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    return-object p1

    .line 539
    :cond_22
    const-string v0, "The pad bits must be zeros"

    .line 540
    .line 541
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    return-object p1

    .line 545
    :cond_23
    const-string v0, "The last unit of input does not have enough bits"

    .line 546
    .line 547
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    return-object p1

    .line 551
    :cond_24
    const/16 p1, 0x0

    .line 552
    .line 553
    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    .line 554
    .line 555
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    return-object p1
.end method
