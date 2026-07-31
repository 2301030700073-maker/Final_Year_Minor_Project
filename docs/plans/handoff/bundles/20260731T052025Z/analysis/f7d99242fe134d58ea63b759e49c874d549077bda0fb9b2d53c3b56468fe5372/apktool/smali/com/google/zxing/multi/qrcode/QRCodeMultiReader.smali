.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;


# instance fields
.field public final decoder:Lokhttp3/ConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/zxing/Result;

    .line 3
    .line 4
    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokhttp3/ConnectionPool;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decoder:Lokhttp3/ConnectionPool;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 25

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v2, v3}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 21
    .line 22
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_2f

    .line 27
    .line 28
    :goto_0
    new-instance v4, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 38
    .line 39
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    move v7, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v7, v6

    .line 48
    :goto_1
    iget v8, v3, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 49
    .line 50
    iget v9, v3, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 51
    .line 52
    mul-int/lit8 v10, v8, 0x3

    .line 53
    .line 54
    div-int/lit16 v10, v10, 0x184

    .line 55
    .line 56
    const/4 v11, 0x3

    .line 57
    if-lt v10, v11, :cond_2

    .line 58
    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    :cond_2
    move v10, v11

    .line 62
    :cond_3
    const/4 v7, 0x5

    .line 63
    new-array v7, v7, [I

    .line 64
    .line 65
    add-int/lit8 v12, v10, -0x1

    .line 66
    .line 67
    :goto_2
    const/4 v13, 0x2

    .line 68
    if-ge v12, v8, :cond_b

    .line 69
    .line 70
    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([II)V

    .line 71
    .line 72
    .line 73
    move v14, v6

    .line 74
    move v15, v14

    .line 75
    :goto_3
    if-ge v14, v9, :cond_9

    .line 76
    .line 77
    invoke-virtual {v3, v14, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-eqz v16, :cond_5

    .line 82
    .line 83
    move/from16 p1, v11

    .line 84
    .line 85
    and-int/lit8 v11, v15, 0x1

    .line 86
    .line 87
    if-ne v11, v5, :cond_4

    .line 88
    .line 89
    add-int/lit8 v15, v15, 0x1

    .line 90
    .line 91
    :cond_4
    aget v11, v7, v15

    .line 92
    .line 93
    add-int/2addr v11, v5

    .line 94
    aput v11, v7, v15

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move/from16 p1, v11

    .line 98
    .line 99
    and-int/lit8 v11, v15, 0x1

    .line 100
    .line 101
    if-nez v11, :cond_8

    .line 102
    .line 103
    const/4 v11, 0x4

    .line 104
    if-ne v15, v11, :cond_7

    .line 105
    .line 106
    invoke-static {v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v15, :cond_6

    .line 111
    .line 112
    invoke-virtual {v4, v12, v14, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter(II[I)Z

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    if-eqz v15, :cond_6

    .line 117
    .line 118
    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([II)V

    .line 119
    .line 120
    .line 121
    move v15, v6

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    aget v15, v7, v13

    .line 124
    .line 125
    aput v15, v7, v6

    .line 126
    .line 127
    aget v15, v7, p1

    .line 128
    .line 129
    aput v15, v7, v5

    .line 130
    .line 131
    aget v15, v7, v11

    .line 132
    .line 133
    aput v15, v7, v13

    .line 134
    .line 135
    aput v5, v7, p1

    .line 136
    .line 137
    aput v6, v7, v11

    .line 138
    .line 139
    move/from16 v15, p1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 143
    .line 144
    aget v11, v7, v15

    .line 145
    .line 146
    add-int/2addr v11, v5

    .line 147
    aput v11, v7, v15

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    aget v11, v7, v15

    .line 151
    .line 152
    add-int/2addr v11, v5

    .line 153
    aput v11, v7, v15

    .line 154
    .line 155
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 156
    .line 157
    move/from16 v11, p1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    move/from16 p1, v11

    .line 161
    .line 162
    invoke-static {v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-eqz v11, :cond_a

    .line 167
    .line 168
    invoke-virtual {v4, v12, v9, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter(II[I)Z

    .line 169
    .line 170
    .line 171
    :cond_a
    add-int/2addr v12, v10

    .line 172
    move/from16 v11, p1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_b
    move/from16 p1, v11

    .line 176
    .line 177
    new-instance v3, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v4, v4, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->possibleCenters:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_d

    .line 193
    .line 194
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 199
    .line 200
    iget v8, v7, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    .line 201
    .line 202
    if-lt v8, v13, :cond_c

    .line 203
    .line 204
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    move/from16 v7, p1

    .line 213
    .line 214
    if-lt v4, v7, :cond_2e

    .line 215
    .line 216
    if-ne v4, v7, :cond_e

    .line 217
    .line 218
    sget-object v4, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 225
    .line 226
    new-array v4, v5, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 227
    .line 228
    aput-object v3, v4, v6

    .line 229
    .line 230
    move/from16 v20, v6

    .line 231
    .line 232
    move/from16 v16, v13

    .line 233
    .line 234
    goto/16 :goto_e

    .line 235
    .line 236
    :cond_e
    new-instance v7, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;

    .line 237
    .line 238
    invoke-direct {v7, v5}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    .line 243
    .line 244
    new-instance v7, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    move v8, v6

    .line 250
    :goto_6
    add-int/lit8 v9, v4, -0x2

    .line 251
    .line 252
    if-ge v8, v9, :cond_1a

    .line 253
    .line 254
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 259
    .line 260
    if-nez v9, :cond_10

    .line 261
    .line 262
    :cond_f
    :goto_7
    move-object/from16 v21, v3

    .line 263
    .line 264
    move/from16 v22, v4

    .line 265
    .line 266
    move/from16 v19, v5

    .line 267
    .line 268
    move/from16 v20, v6

    .line 269
    .line 270
    move/from16 v16, v13

    .line 271
    .line 272
    move v13, v8

    .line 273
    goto/16 :goto_d

    .line 274
    .line 275
    :cond_10
    iget v10, v9, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 276
    .line 277
    add-int/lit8 v11, v8, 0x1

    .line 278
    .line 279
    :goto_8
    add-int/lit8 v12, v4, -0x1

    .line 280
    .line 281
    if-ge v11, v12, :cond_f

    .line 282
    .line 283
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 288
    .line 289
    if-nez v12, :cond_12

    .line 290
    .line 291
    :cond_11
    move-object/from16 v21, v3

    .line 292
    .line 293
    move/from16 v22, v4

    .line 294
    .line 295
    move/from16 v19, v5

    .line 296
    .line 297
    move/from16 v20, v6

    .line 298
    .line 299
    move-object/from16 v24, v9

    .line 300
    .line 301
    move/from16 v16, v13

    .line 302
    .line 303
    move v13, v8

    .line 304
    goto/16 :goto_c

    .line 305
    .line 306
    :cond_12
    iget v14, v12, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 307
    .line 308
    sub-float v15, v10, v14

    .line 309
    .line 310
    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    .line 311
    .line 312
    .line 313
    move-result v16

    .line 314
    div-float v16, v15, v16

    .line 315
    .line 316
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 317
    .line 318
    .line 319
    move-result v15

    .line 320
    const/high16 v17, 0x3f000000    # 0.5f

    .line 321
    .line 322
    cmpl-float v15, v15, v17

    .line 323
    .line 324
    const v18, 0x3d4ccccd    # 0.05f

    .line 325
    .line 326
    .line 327
    if-lez v15, :cond_13

    .line 328
    .line 329
    cmpl-float v15, v16, v18

    .line 330
    .line 331
    if-ltz v15, :cond_13

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_13
    add-int/lit8 v15, v11, 0x1

    .line 335
    .line 336
    :goto_9
    if-ge v15, v4, :cond_11

    .line 337
    .line 338
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v16

    .line 342
    move/from16 v19, v5

    .line 343
    .line 344
    move-object/from16 v5, v16

    .line 345
    .line 346
    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 347
    .line 348
    if-nez v5, :cond_14

    .line 349
    .line 350
    move-object/from16 v21, v3

    .line 351
    .line 352
    move/from16 v22, v4

    .line 353
    .line 354
    move/from16 v20, v6

    .line 355
    .line 356
    move-object/from16 v24, v9

    .line 357
    .line 358
    move/from16 v16, v13

    .line 359
    .line 360
    move v13, v8

    .line 361
    goto/16 :goto_b

    .line 362
    .line 363
    :cond_14
    move/from16 v16, v13

    .line 364
    .line 365
    iget v13, v5, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 366
    .line 367
    sub-float v20, v14, v13

    .line 368
    .line 369
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    div-float v13, v20, v13

    .line 374
    .line 375
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    .line 376
    .line 377
    .line 378
    move-result v20

    .line 379
    cmpl-float v20, v20, v17

    .line 380
    .line 381
    if-lez v20, :cond_15

    .line 382
    .line 383
    cmpl-float v13, v13, v18

    .line 384
    .line 385
    if-ltz v13, :cond_15

    .line 386
    .line 387
    move-object/from16 v21, v3

    .line 388
    .line 389
    move/from16 v22, v4

    .line 390
    .line 391
    move/from16 v20, v6

    .line 392
    .line 393
    move v13, v8

    .line 394
    move-object/from16 v24, v9

    .line 395
    .line 396
    goto/16 :goto_c

    .line 397
    .line 398
    :cond_15
    move/from16 v20, v6

    .line 399
    .line 400
    const/4 v13, 0x3

    .line 401
    new-array v6, v13, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 402
    .line 403
    aput-object v9, v6, v20

    .line 404
    .line 405
    aput-object v12, v6, v19

    .line 406
    .line 407
    aput-object v5, v6, v16

    .line 408
    .line 409
    invoke-static {v6}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 410
    .line 411
    .line 412
    aget-object v5, v6, v20

    .line 413
    .line 414
    aget-object v13, v6, v19

    .line 415
    .line 416
    move-object/from16 v21, v3

    .line 417
    .line 418
    aget-object v3, v6, v16

    .line 419
    .line 420
    move/from16 v22, v4

    .line 421
    .line 422
    invoke-static {v13, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    invoke-static {v3, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    invoke-static {v13, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    add-float v13, v4, v3

    .line 435
    .line 436
    const/high16 v23, 0x40000000    # 2.0f

    .line 437
    .line 438
    mul-float v23, v23, v10

    .line 439
    .line 440
    div-float v13, v13, v23

    .line 441
    .line 442
    const/high16 v23, 0x43340000    # 180.0f

    .line 443
    .line 444
    cmpl-float v23, v13, v23

    .line 445
    .line 446
    if-gtz v23, :cond_16

    .line 447
    .line 448
    const/high16 v23, 0x41100000    # 9.0f

    .line 449
    .line 450
    cmpg-float v13, v13, v23

    .line 451
    .line 452
    if-gez v13, :cond_17

    .line 453
    .line 454
    :cond_16
    :goto_a
    move v13, v8

    .line 455
    move-object/from16 v24, v9

    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_17
    sub-float v13, v4, v3

    .line 459
    .line 460
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 461
    .line 462
    .line 463
    move-result v23

    .line 464
    div-float v13, v13, v23

    .line 465
    .line 466
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 467
    .line 468
    .line 469
    move-result v13

    .line 470
    const v23, 0x3dcccccd    # 0.1f

    .line 471
    .line 472
    .line 473
    cmpl-float v13, v13, v23

    .line 474
    .line 475
    if-ltz v13, :cond_18

    .line 476
    .line 477
    goto :goto_a

    .line 478
    :cond_18
    move v13, v8

    .line 479
    move-object/from16 v24, v9

    .line 480
    .line 481
    float-to-double v8, v4

    .line 482
    mul-double/2addr v8, v8

    .line 483
    float-to-double v3, v3

    .line 484
    mul-double/2addr v3, v3

    .line 485
    add-double/2addr v3, v8

    .line 486
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 487
    .line 488
    .line 489
    move-result-wide v3

    .line 490
    double-to-float v3, v3

    .line 491
    sub-float v4, v5, v3

    .line 492
    .line 493
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    div-float/2addr v4, v3

    .line 498
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    cmpl-float v3, v3, v23

    .line 503
    .line 504
    if-ltz v3, :cond_19

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_19
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    :goto_b
    add-int/lit8 v15, v15, 0x1

    .line 511
    .line 512
    move v8, v13

    .line 513
    move/from16 v13, v16

    .line 514
    .line 515
    move/from16 v5, v19

    .line 516
    .line 517
    move/from16 v6, v20

    .line 518
    .line 519
    move-object/from16 v3, v21

    .line 520
    .line 521
    move/from16 v4, v22

    .line 522
    .line 523
    move-object/from16 v9, v24

    .line 524
    .line 525
    goto/16 :goto_9

    .line 526
    .line 527
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 528
    .line 529
    move v8, v13

    .line 530
    move/from16 v13, v16

    .line 531
    .line 532
    move/from16 v5, v19

    .line 533
    .line 534
    move/from16 v6, v20

    .line 535
    .line 536
    move-object/from16 v3, v21

    .line 537
    .line 538
    move/from16 v4, v22

    .line 539
    .line 540
    move-object/from16 v9, v24

    .line 541
    .line 542
    goto/16 :goto_8

    .line 543
    .line 544
    :goto_d
    add-int/lit8 v8, v13, 0x1

    .line 545
    .line 546
    move/from16 v13, v16

    .line 547
    .line 548
    move/from16 v5, v19

    .line 549
    .line 550
    move/from16 v6, v20

    .line 551
    .line 552
    move-object/from16 v3, v21

    .line 553
    .line 554
    move/from16 v4, v22

    .line 555
    .line 556
    goto/16 :goto_6

    .line 557
    .line 558
    :cond_1a
    move/from16 v20, v6

    .line 559
    .line 560
    move/from16 v16, v13

    .line 561
    .line 562
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-nez v3, :cond_2d

    .line 567
    .line 568
    sget-object v3, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_FP_2D_ARRAY:[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 569
    .line 570
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    move-object v4, v3

    .line 575
    check-cast v4, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 576
    .line 577
    :goto_e
    new-instance v3, Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .line 581
    .line 582
    array-length v5, v4

    .line 583
    move/from16 v6, v20

    .line 584
    .line 585
    :goto_f
    if-ge v6, v5, :cond_1b

    .line 586
    .line 587
    aget-object v7, v4, v6

    .line 588
    .line 589
    invoke-static {v7}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 590
    .line 591
    .line 592
    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 593
    .line 594
    invoke-direct {v8, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    add-int/lit8 v6, v6, 0x1

    .line 601
    .line 602
    goto :goto_f

    .line 603
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    sget-object v5, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 608
    .line 609
    if-eqz v4, :cond_1c

    .line 610
    .line 611
    goto :goto_10

    .line 612
    :cond_1c
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    move-object v5, v3

    .line 617
    check-cast v5, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 618
    .line 619
    :goto_10
    array-length v3, v5

    .line 620
    if-eqz v3, :cond_2c

    .line 621
    .line 622
    new-instance v3, Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .line 626
    .line 627
    array-length v4, v5

    .line 628
    move/from16 v6, v20

    .line 629
    .line 630
    :goto_11
    if-ge v6, v4, :cond_1d

    .line 631
    .line 632
    aget-object v7, v5, v6

    .line 633
    .line 634
    :try_start_0
    invoke-virtual {v2, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    .line 635
    .line 636
    .line 637
    move-result-object v7

    .line 638
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    .line 640
    .line 641
    :catch_0
    add-int/lit8 v6, v6, 0x1

    .line 642
    .line 643
    goto :goto_11

    .line 644
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    sget-object v4, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    .line 649
    .line 650
    if-eqz v2, :cond_1e

    .line 651
    .line 652
    goto :goto_12

    .line 653
    :cond_1e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    move-object v4, v2

    .line 658
    check-cast v4, [Lcom/google/zxing/common/DetectorResult;

    .line 659
    .line 660
    :goto_12
    array-length v2, v4

    .line 661
    move/from16 v3, v20

    .line 662
    .line 663
    :goto_13
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 664
    .line 665
    sget-object v6, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 666
    .line 667
    if-ge v3, v2, :cond_24

    .line 668
    .line 669
    aget-object v7, v4, v3

    .line 670
    .line 671
    move-object/from16 v8, p0

    .line 672
    .line 673
    :try_start_1
    iget-object v9, v8, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decoder:Lokhttp3/ConnectionPool;

    .line 674
    .line 675
    iget-object v10, v7, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    .line 676
    .line 677
    invoke-virtual {v9, v10, v0}, Lokhttp3/ConnectionPool;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    .line 678
    .line 679
    .line 680
    move-result-object v9

    .line 681
    iget-object v7, v7, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;

    .line 682
    .line 683
    iget-object v10, v9, Lcom/google/zxing/common/DecoderResult;->other:Lokio/AsyncTimeout$Companion;

    .line 684
    .line 685
    invoke-static {v10}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v10

    .line 689
    if-eqz v10, :cond_20

    .line 690
    .line 691
    array-length v10, v7
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 692
    const/4 v13, 0x3

    .line 693
    if-ge v10, v13, :cond_1f

    .line 694
    .line 695
    goto :goto_14

    .line 696
    :cond_1f
    :try_start_2
    aget-object v10, v7, v20

    .line 697
    .line 698
    aget-object v11, v7, v16

    .line 699
    .line 700
    aput-object v11, v7, v20

    .line 701
    .line 702
    aput-object v10, v7, v16

    .line 703
    .line 704
    goto :goto_14

    .line 705
    :catch_1
    const/4 v13, 0x3

    .line 706
    goto :goto_15

    .line 707
    :cond_20
    const/4 v13, 0x3

    .line 708
    :goto_14
    new-instance v7, Lcom/google/zxing/Result;

    .line 709
    .line 710
    iget-object v10, v9, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    .line 711
    .line 712
    iget-object v11, v9, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    .line 713
    .line 714
    invoke-direct {v7, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B)V

    .line 715
    .line 716
    .line 717
    iget-object v10, v9, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    .line 718
    .line 719
    if-eqz v10, :cond_21

    .line 720
    .line 721
    invoke-virtual {v7, v6, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    :cond_21
    iget-object v6, v9, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    .line 725
    .line 726
    if-eqz v6, :cond_22

    .line 727
    .line 728
    sget-object v10, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 729
    .line 730
    invoke-virtual {v7, v10, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    :cond_22
    iget v6, v9, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    .line 734
    .line 735
    if-ltz v6, :cond_23

    .line 736
    .line 737
    iget v6, v9, Lcom/google/zxing/common/DecoderResult;->structuredAppendSequenceNumber:I

    .line 738
    .line 739
    if-ltz v6, :cond_23

    .line 740
    .line 741
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 742
    .line 743
    .line 744
    move-result-object v6

    .line 745
    invoke-virtual {v7, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 749
    .line 750
    iget v6, v9, Lcom/google/zxing/common/DecoderResult;->structuredAppendParity:I

    .line 751
    .line 752
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    invoke-virtual {v7, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    :cond_23
    sget-object v5, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 760
    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    const-string v10, "]Q"

    .line 767
    .line 768
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget v9, v9, Lcom/google/zxing/common/DecoderResult;->symbologyModifier:I

    .line 772
    .line 773
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v6

    .line 780
    invoke-virtual {v7, v5, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_2

    .line 784
    .line 785
    .line 786
    :catch_2
    :goto_15
    add-int/lit8 v3, v3, 0x1

    .line 787
    .line 788
    goto :goto_13

    .line 789
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    sget-object v2, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 794
    .line 795
    if-eqz v0, :cond_25

    .line 796
    .line 797
    return-object v2

    .line 798
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .line 802
    .line 803
    new-instance v3, Ljava/util/ArrayList;

    .line 804
    .line 805
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    if-eqz v7, :cond_27

    .line 817
    .line 818
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v7

    .line 822
    check-cast v7, Lcom/google/zxing/Result;

    .line 823
    .line 824
    iget-object v8, v7, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/EnumMap;

    .line 825
    .line 826
    invoke-virtual {v8, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v8

    .line 830
    if-eqz v8, :cond_26

    .line 831
    .line 832
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    goto :goto_16

    .line 836
    :cond_26
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    goto :goto_16

    .line 840
    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 841
    .line 842
    .line 843
    move-result v4

    .line 844
    if-eqz v4, :cond_28

    .line 845
    .line 846
    goto/16 :goto_19

    .line 847
    .line 848
    :cond_28
    new-instance v1, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;

    .line 849
    .line 850
    move/from16 v4, v20

    .line 851
    .line 852
    invoke-direct {v1, v4}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(I)V

    .line 853
    .line 854
    .line 855
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 856
    .line 857
    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .line 862
    .line 863
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 864
    .line 865
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 866
    .line 867
    .line 868
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 869
    .line 870
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 878
    .line 879
    .line 880
    move-result v7

    .line 881
    if-eqz v7, :cond_2a

    .line 882
    .line 883
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    check-cast v7, Lcom/google/zxing/Result;

    .line 888
    .line 889
    iget-object v8, v7, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 890
    .line 891
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    iget-object v8, v7, Lcom/google/zxing/Result;->rawBytes:[B

    .line 895
    .line 896
    array-length v9, v8

    .line 897
    const/4 v10, 0x0

    .line 898
    invoke-virtual {v4, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 899
    .line 900
    .line 901
    iget-object v7, v7, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/EnumMap;

    .line 902
    .line 903
    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    move-result-object v7

    .line 907
    check-cast v7, Ljava/lang/Iterable;

    .line 908
    .line 909
    if-eqz v7, :cond_29

    .line 910
    .line 911
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 912
    .line 913
    .line 914
    move-result-object v7

    .line 915
    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 916
    .line 917
    .line 918
    move-result v8

    .line 919
    if-eqz v8, :cond_29

    .line 920
    .line 921
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v8

    .line 925
    check-cast v8, [B

    .line 926
    .line 927
    array-length v9, v8

    .line 928
    const/4 v10, 0x0

    .line 929
    invoke-virtual {v5, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 930
    .line 931
    .line 932
    goto :goto_18

    .line 933
    :cond_29
    const/4 v10, 0x0

    .line 934
    goto :goto_17

    .line 935
    :cond_2a
    new-instance v3, Lcom/google/zxing/Result;

    .line 936
    .line 937
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 942
    .line 943
    .line 944
    move-result-object v4

    .line 945
    invoke-direct {v3, v1, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    if-lez v1, :cond_2b

    .line 953
    .line 954
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    invoke-virtual {v3, v6, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-object v1, v0

    .line 969
    :goto_19
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    check-cast v0, [Lcom/google/zxing/Result;

    .line 974
    .line 975
    return-object v0

    .line 976
    :cond_2c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    throw v0

    .line 981
    :cond_2d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    throw v0

    .line 986
    :cond_2e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    throw v0

    .line 991
    :cond_2f
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 992
    .line 993
    .line 994
    const/4 v0, 0x0

    .line 995
    return-object v0
.end method
