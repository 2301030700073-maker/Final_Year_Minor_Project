.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

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

.method public static decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/String;II)[B
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p3, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v1, p2

    .line 11
    .line 12
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-boolean v4, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v1, v3, v5}, Landroidx/work/Operation$State;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v5, p1

    .line 32
    .line 33
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v3, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    array-length v3, v1

    .line 47
    array-length v5, v1

    .line 48
    invoke-static {v2, v3, v5}, Landroidx/work/Operation$State;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    const/16 v7, 0x3d

    .line 53
    .line 54
    const/4 v8, -0x2

    .line 55
    if-nez v3, :cond_1

    .line 56
    .line 57
    move v9, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_1
    if-eq v3, v6, :cond_20

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    move v9, v2

    .line 64
    move v10, v3

    .line 65
    :goto_1
    if-ge v9, v3, :cond_6

    .line 66
    .line 67
    aget-byte v11, v1, v9

    .line 68
    .line 69
    and-int/lit16 v11, v11, 0xff

    .line 70
    .line 71
    sget-object v12, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 72
    .line 73
    aget v11, v12, v11

    .line 74
    .line 75
    if-gez v11, :cond_3

    .line 76
    .line 77
    if-ne v11, v8, :cond_2

    .line 78
    .line 79
    sub-int v9, v3, v9

    .line 80
    .line 81
    sub-int/2addr v10, v9

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 84
    .line 85
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    add-int/lit8 v9, v3, -0x1

    .line 89
    .line 90
    aget-byte v9, v1, v9

    .line 91
    .line 92
    if-ne v9, v7, :cond_5

    .line 93
    .line 94
    add-int/lit8 v10, v3, -0x1

    .line 95
    .line 96
    add-int/lit8 v9, v3, -0x2

    .line 97
    .line 98
    aget-byte v9, v1, v9

    .line 99
    .line 100
    if-ne v9, v7, :cond_6

    .line 101
    .line 102
    add-int/lit8 v10, v3, -0x2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v10, v3

    .line 106
    :cond_6
    :goto_2
    int-to-long v9, v10

    .line 107
    const-wide/16 v11, 0x6

    .line 108
    .line 109
    mul-long/2addr v9, v11

    .line 110
    const-wide/16 v11, 0x8

    .line 111
    .line 112
    div-long/2addr v9, v11

    .line 113
    long-to-int v9, v9

    .line 114
    :goto_3
    new-array v10, v9, [B

    .line 115
    .line 116
    iget-boolean v0, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->base64UrlDecodeMap:[I

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    sget-object v0, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 124
    .line 125
    :goto_4
    const/4 v11, -0x8

    .line 126
    move v12, v2

    .line 127
    move v14, v12

    .line 128
    move v15, v14

    .line 129
    move v13, v11

    .line 130
    :goto_5
    const/16 p1, 0x0

    .line 131
    .line 132
    const-string v5, ") at index "

    .line 133
    .line 134
    move/from16 p2, v6

    .line 135
    .line 136
    const-string v6, "\'("

    .line 137
    .line 138
    if-ge v12, v3, :cond_16

    .line 139
    .line 140
    if-ne v13, v11, :cond_8

    .line 141
    .line 142
    const/16 p0, 0x8

    .line 143
    .line 144
    add-int/lit8 v7, v12, 0x3

    .line 145
    .line 146
    if-ge v7, v3, :cond_9

    .line 147
    .line 148
    add-int/lit8 v16, v12, 0x1

    .line 149
    .line 150
    aget-byte v2, v1, v12

    .line 151
    .line 152
    and-int/lit16 v2, v2, 0xff

    .line 153
    .line 154
    aget v2, v0, v2

    .line 155
    .line 156
    add-int/lit8 v17, v12, 0x2

    .line 157
    .line 158
    aget-byte v11, v1, v16

    .line 159
    .line 160
    and-int/lit16 v11, v11, 0xff

    .line 161
    .line 162
    aget v11, v0, v11

    .line 163
    .line 164
    aget-byte v8, v1, v17

    .line 165
    .line 166
    and-int/lit16 v8, v8, 0xff

    .line 167
    .line 168
    aget v8, v0, v8

    .line 169
    .line 170
    add-int/lit8 v17, v12, 0x4

    .line 171
    .line 172
    aget-byte v7, v1, v7

    .line 173
    .line 174
    and-int/lit16 v7, v7, 0xff

    .line 175
    .line 176
    aget v7, v0, v7

    .line 177
    .line 178
    shl-int/lit8 v2, v2, 0x12

    .line 179
    .line 180
    shl-int/lit8 v11, v11, 0xc

    .line 181
    .line 182
    or-int/2addr v2, v11

    .line 183
    shl-int/lit8 v8, v8, 0x6

    .line 184
    .line 185
    or-int/2addr v2, v8

    .line 186
    or-int/2addr v2, v7

    .line 187
    if-ltz v2, :cond_9

    .line 188
    .line 189
    add-int/lit8 v5, v15, 0x1

    .line 190
    .line 191
    shr-int/lit8 v6, v2, 0x10

    .line 192
    .line 193
    int-to-byte v6, v6

    .line 194
    aput-byte v6, v10, v15

    .line 195
    .line 196
    add-int/lit8 v6, v15, 0x2

    .line 197
    .line 198
    shr-int/lit8 v7, v2, 0x8

    .line 199
    .line 200
    int-to-byte v7, v7

    .line 201
    aput-byte v7, v10, v5

    .line 202
    .line 203
    add-int/lit8 v15, v15, 0x3

    .line 204
    .line 205
    int-to-byte v2, v2

    .line 206
    aput-byte v2, v10, v6

    .line 207
    .line 208
    move/from16 v6, p2

    .line 209
    .line 210
    move/from16 v12, v17

    .line 211
    .line 212
    const/16 v7, 0x3d

    .line 213
    .line 214
    :goto_6
    const/4 v8, -0x2

    .line 215
    const/4 v11, -0x8

    .line 216
    goto :goto_5

    .line 217
    :cond_8
    const/16 p0, 0x8

    .line 218
    .line 219
    :cond_9
    aget-byte v2, v1, v12

    .line 220
    .line 221
    and-int/lit16 v2, v2, 0xff

    .line 222
    .line 223
    aget v7, v0, v2

    .line 224
    .line 225
    if-gez v7, :cond_14

    .line 226
    .line 227
    const/4 v8, -0x2

    .line 228
    if-ne v7, v8, :cond_12

    .line 229
    .line 230
    const/4 v7, -0x8

    .line 231
    if-eq v13, v7, :cond_11

    .line 232
    .line 233
    const/4 v0, -0x6

    .line 234
    if-eq v13, v0, :cond_a

    .line 235
    .line 236
    const/4 v0, -0x4

    .line 237
    if-eq v13, v0, :cond_c

    .line 238
    .line 239
    if-ne v13, v8, :cond_b

    .line 240
    .line 241
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_b
    const-string v0, "Unreachable"

    .line 245
    .line 246
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-object p1

    .line 250
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 251
    .line 252
    if-nez v4, :cond_d

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_d
    :goto_7
    if-ge v12, v3, :cond_f

    .line 256
    .line 257
    aget-byte v0, v1, v12

    .line 258
    .line 259
    and-int/lit16 v0, v0, 0xff

    .line 260
    .line 261
    sget-object v2, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 262
    .line 263
    aget v0, v2, v0

    .line 264
    .line 265
    const/4 v2, -0x1

    .line 266
    if-eq v0, v2, :cond_e

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_e
    add-int/lit8 v12, v12, 0x1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_f
    :goto_8
    if-eq v12, v3, :cond_10

    .line 273
    .line 274
    aget-byte v0, v1, v12

    .line 275
    .line 276
    const/16 v8, 0x3d

    .line 277
    .line 278
    if-ne v0, v8, :cond_10

    .line 279
    .line 280
    add-int/lit8 v12, v12, 0x1

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_10
    const-string v0, "Missing one pad character at index "

    .line 284
    .line 285
    invoke-static {v0, v12}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return-object p1

    .line 293
    :goto_9
    move/from16 v2, p2

    .line 294
    .line 295
    const/4 v8, -0x2

    .line 296
    goto :goto_b

    .line 297
    :cond_11
    const-string v0, "Redundant pad character at index "

    .line 298
    .line 299
    invoke-static {v0, v12}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-object p1

    .line 307
    :cond_12
    const/16 v8, 0x3d

    .line 308
    .line 309
    if-eqz v4, :cond_13

    .line 310
    .line 311
    add-int/lit8 v12, v12, 0x1

    .line 312
    .line 313
    move/from16 v6, p2

    .line 314
    .line 315
    :goto_a
    move v7, v8

    .line 316
    goto :goto_6

    .line 317
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 318
    .line 319
    int-to-char v1, v2

    .line 320
    invoke-static/range {p0 .. p0}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 321
    .line 322
    .line 323
    move/from16 v3, p0

    .line 324
    .line 325
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v4, "Invalid symbol \'"

    .line 335
    .line 336
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_14
    const/16 v8, 0x3d

    .line 363
    .line 364
    add-int/lit8 v12, v12, 0x1

    .line 365
    .line 366
    shl-int/lit8 v2, v14, 0x6

    .line 367
    .line 368
    or-int v14, v2, v7

    .line 369
    .line 370
    add-int/lit8 v7, v13, 0x6

    .line 371
    .line 372
    if-ltz v7, :cond_15

    .line 373
    .line 374
    add-int/lit8 v2, v15, 0x1

    .line 375
    .line 376
    ushr-int v5, v14, v7

    .line 377
    .line 378
    int-to-byte v5, v5

    .line 379
    aput-byte v5, v10, v15

    .line 380
    .line 381
    shl-int v5, p2, v7

    .line 382
    .line 383
    add-int/lit8 v5, v5, -0x1

    .line 384
    .line 385
    and-int/2addr v14, v5

    .line 386
    add-int/lit8 v13, v13, -0x2

    .line 387
    .line 388
    move/from16 v6, p2

    .line 389
    .line 390
    move v15, v2

    .line 391
    goto :goto_a

    .line 392
    :cond_15
    move/from16 v6, p2

    .line 393
    .line 394
    move v13, v7

    .line 395
    goto :goto_a

    .line 396
    :cond_16
    const/4 v2, 0x0

    .line 397
    :goto_b
    if-eq v13, v8, :cond_1f

    .line 398
    .line 399
    const/4 v7, -0x8

    .line 400
    if-eq v13, v7, :cond_18

    .line 401
    .line 402
    if-eqz v2, :cond_17

    .line 403
    .line 404
    goto :goto_c

    .line 405
    :cond_17
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    .line 406
    .line 407
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    return-object p1

    .line 411
    :cond_18
    :goto_c
    if-nez v14, :cond_1e

    .line 412
    .line 413
    if-nez v4, :cond_19

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_19
    :goto_d
    if-ge v12, v3, :cond_1b

    .line 417
    .line 418
    aget-byte v0, v1, v12

    .line 419
    .line 420
    and-int/lit16 v0, v0, 0xff

    .line 421
    .line 422
    sget-object v2, Lkotlin/io/encoding/Base64Kt;->base64DecodeMap:[I

    .line 423
    .line 424
    aget v0, v2, v0

    .line 425
    .line 426
    const/4 v2, -0x1

    .line 427
    if-eq v0, v2, :cond_1a

    .line 428
    .line 429
    goto :goto_e

    .line 430
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 431
    .line 432
    goto :goto_d

    .line 433
    :cond_1b
    :goto_e
    if-lt v12, v3, :cond_1d

    .line 434
    .line 435
    if-ne v15, v9, :cond_1c

    .line 436
    .line 437
    return-object v10

    .line 438
    :cond_1c
    const-string v0, "Check failed."

    .line 439
    .line 440
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    return-object p1

    .line 444
    :cond_1d
    aget-byte v0, v1, v12

    .line 445
    .line 446
    and-int/lit16 v0, v0, 0xff

    .line 447
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string v2, "Symbol \'"

    .line 451
    .line 452
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    int-to-char v2, v0

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const/16 v3, 0x8

    .line 463
    .line 464
    invoke-static {v3}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 465
    .line 466
    .line 467
    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    add-int/lit8 v12, v12, -0x1

    .line 481
    .line 482
    const-string v0, " is prohibited after the pad character"

    .line 483
    .line 484
    invoke-static {v1, v12, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    return-object p1

    .line 492
    :cond_1e
    const-string v0, "The pad bits must be zeros"

    .line 493
    .line 494
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return-object p1

    .line 498
    :cond_1f
    const-string v0, "The last unit of input does not have enough bits"

    .line 499
    .line 500
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    return-object p1

    .line 504
    :cond_20
    const/16 p1, 0x0

    .line 505
    .line 506
    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    .line 507
    .line 508
    invoke-static {v0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return-object p1
.end method
