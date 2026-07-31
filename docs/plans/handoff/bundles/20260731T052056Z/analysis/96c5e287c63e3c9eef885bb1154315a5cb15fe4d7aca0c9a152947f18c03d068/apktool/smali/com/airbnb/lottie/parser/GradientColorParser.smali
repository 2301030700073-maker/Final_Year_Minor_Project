.class public final Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# instance fields
.field public colorPoints:I


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    move v2, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v5

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    double-to-float v3, v6

    .line 37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v6, 0x3

    .line 50
    const/4 v7, 0x2

    .line 51
    const/4 v8, 0x4

    .line 52
    if-ne v3, v8, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Float;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/high16 v9, 0x3f800000    # 1.0f

    .line 65
    .line 66
    cmpl-float v3, v3, v9

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/Float;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/Float;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iput v7, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 113
    .line 114
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 117
    .line 118
    .line 119
    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 120
    .line 121
    const/4 v3, -0x1

    .line 122
    if-ne v2, v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    div-int/2addr v2, v8

    .line 129
    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 130
    .line 131
    :cond_5
    new-array v3, v2, [F

    .line 132
    .line 133
    new-array v9, v2, [I

    .line 134
    .line 135
    move v10, v5

    .line 136
    move v11, v10

    .line 137
    move v12, v11

    .line 138
    :goto_2
    iget v13, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 139
    .line 140
    mul-int/2addr v13, v8

    .line 141
    if-ge v10, v13, :cond_b

    .line 142
    .line 143
    div-int/lit8 v13, v10, 0x4

    .line 144
    .line 145
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    check-cast v14, Ljava/lang/Float;

    .line 150
    .line 151
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    float-to-double v14, v14

    .line 156
    move/from16 p2, v5

    .line 157
    .line 158
    rem-int/lit8 v5, v10, 0x4

    .line 159
    .line 160
    if-eqz v5, :cond_9

    .line 161
    .line 162
    const-wide v16, 0x406fe00000000000L    # 255.0

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    if-eq v5, v4, :cond_8

    .line 168
    .line 169
    if-eq v5, v7, :cond_7

    .line 170
    .line 171
    if-eq v5, v6, :cond_6

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    mul-double v14, v14, v16

    .line 175
    .line 176
    double-to-int v5, v14

    .line 177
    const/16 v14, 0xff

    .line 178
    .line 179
    invoke-static {v14, v11, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    aput v5, v9, v13

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    mul-double v14, v14, v16

    .line 187
    .line 188
    double-to-int v12, v14

    .line 189
    goto :goto_3

    .line 190
    :cond_8
    mul-double v14, v14, v16

    .line 191
    .line 192
    double-to-int v11, v14

    .line 193
    goto :goto_3

    .line 194
    :cond_9
    if-lez v13, :cond_a

    .line 195
    .line 196
    add-int/lit8 v5, v13, -0x1

    .line 197
    .line 198
    aget v5, v3, v5

    .line 199
    .line 200
    double-to-float v4, v14

    .line 201
    cmpl-float v5, v5, v4

    .line 202
    .line 203
    if-ltz v5, :cond_a

    .line 204
    .line 205
    const v5, 0x3c23d70a    # 0.01f

    .line 206
    .line 207
    .line 208
    add-float/2addr v4, v5

    .line 209
    aput v4, v3, v13

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_a
    double-to-float v4, v14

    .line 213
    aput v4, v3, v13

    .line 214
    .line 215
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 216
    .line 217
    move/from16 v5, p2

    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    goto :goto_2

    .line 221
    :cond_b
    move/from16 p2, v5

    .line 222
    .line 223
    new-instance v0, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 224
    .line 225
    invoke-direct {v0, v3, v9}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-gt v4, v13, :cond_c

    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    sub-int/2addr v4, v13

    .line 240
    div-int/2addr v4, v7

    .line 241
    new-array v5, v4, [F

    .line 242
    .line 243
    new-array v6, v4, [F

    .line 244
    .line 245
    move/from16 v8, p2

    .line 246
    .line 247
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    if-ge v13, v10, :cond_e

    .line 252
    .line 253
    rem-int/lit8 v10, v13, 0x2

    .line 254
    .line 255
    if-nez v10, :cond_d

    .line 256
    .line 257
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    check-cast v10, Ljava/lang/Float;

    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    aput v10, v5, v8

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_d
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    check-cast v10, Ljava/lang/Float;

    .line 275
    .line 276
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    aput v10, v6, v8

    .line 281
    .line 282
    add-int/lit8 v8, v8, 0x1

    .line 283
    .line 284
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_e
    iget-object v0, v0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 288
    .line 289
    array-length v1, v0

    .line 290
    if-nez v1, :cond_f

    .line 291
    .line 292
    move-object v0, v5

    .line 293
    goto :goto_b

    .line 294
    :cond_f
    if-nez v4, :cond_10

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_10
    array-length v1, v0

    .line 298
    add-int/2addr v1, v4

    .line 299
    new-array v8, v1, [F

    .line 300
    .line 301
    move/from16 v10, p2

    .line 302
    .line 303
    move v11, v10

    .line 304
    move v12, v11

    .line 305
    move v13, v12

    .line 306
    :goto_6
    if-ge v10, v1, :cond_17

    .line 307
    .line 308
    array-length v14, v0

    .line 309
    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 310
    .line 311
    if-ge v12, v14, :cond_11

    .line 312
    .line 313
    aget v14, v0, v12

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_11
    move v14, v15

    .line 317
    :goto_7
    if-ge v13, v4, :cond_12

    .line 318
    .line 319
    aget v15, v5, v13

    .line 320
    .line 321
    :cond_12
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 322
    .line 323
    .line 324
    move-result v17

    .line 325
    if-nez v17, :cond_16

    .line 326
    .line 327
    cmpg-float v17, v14, v15

    .line 328
    .line 329
    if-gez v17, :cond_13

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_13
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 333
    .line 334
    .line 335
    move-result v17

    .line 336
    if-nez v17, :cond_15

    .line 337
    .line 338
    cmpg-float v17, v15, v14

    .line 339
    .line 340
    if-gez v17, :cond_14

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_14
    aput v14, v8, v10

    .line 344
    .line 345
    add-int/lit8 v12, v12, 0x1

    .line 346
    .line 347
    add-int/lit8 v13, v13, 0x1

    .line 348
    .line 349
    add-int/lit8 v11, v11, 0x1

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_15
    :goto_8
    aput v15, v8, v10

    .line 353
    .line 354
    add-int/lit8 v13, v13, 0x1

    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_16
    :goto_9
    aput v14, v8, v10

    .line 358
    .line 359
    add-int/lit8 v12, v12, 0x1

    .line 360
    .line 361
    :goto_a
    add-int/lit8 v10, v10, 0x1

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_17
    if-nez v11, :cond_18

    .line 365
    .line 366
    move-object v0, v8

    .line 367
    goto :goto_b

    .line 368
    :cond_18
    sub-int/2addr v1, v11

    .line 369
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    :goto_b
    array-length v1, v0

    .line 374
    new-array v8, v1, [I

    .line 375
    .line 376
    move/from16 v10, p2

    .line 377
    .line 378
    :goto_c
    if-ge v10, v1, :cond_26

    .line 379
    .line 380
    aget v11, v0, v10

    .line 381
    .line 382
    invoke-static {v3, v11}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    invoke-static {v5, v11}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 387
    .line 388
    .line 389
    move-result v13

    .line 390
    const-string v15, "Unreachable code."

    .line 391
    .line 392
    const/high16 v17, 0x437f0000    # 255.0f

    .line 393
    .line 394
    if-ltz v12, :cond_19

    .line 395
    .line 396
    if-lez v13, :cond_1a

    .line 397
    .line 398
    :cond_19
    const/16 p0, 0x0

    .line 399
    .line 400
    goto :goto_12

    .line 401
    :cond_1a
    aget v12, v9, v12

    .line 402
    .line 403
    if-lt v4, v7, :cond_1f

    .line 404
    .line 405
    aget v13, v5, p2

    .line 406
    .line 407
    cmpg-float v13, v11, v13

    .line 408
    .line 409
    if-gtz v13, :cond_1b

    .line 410
    .line 411
    goto :goto_10

    .line 412
    :cond_1b
    const/4 v13, 0x1

    .line 413
    :goto_d
    if-ge v13, v4, :cond_1e

    .line 414
    .line 415
    aget v18, v5, v13

    .line 416
    .line 417
    cmpg-float v19, v18, v11

    .line 418
    .line 419
    if-gez v19, :cond_1c

    .line 420
    .line 421
    const/16 p0, 0x0

    .line 422
    .line 423
    add-int/lit8 v14, v4, -0x1

    .line 424
    .line 425
    if-eq v13, v14, :cond_1c

    .line 426
    .line 427
    add-int/lit8 v13, v13, 0x1

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_1c
    if-gtz v19, :cond_1d

    .line 431
    .line 432
    aget v11, v6, v13

    .line 433
    .line 434
    :goto_e
    mul-float v11, v11, v17

    .line 435
    .line 436
    float-to-int v11, v11

    .line 437
    goto :goto_f

    .line 438
    :cond_1d
    add-int/lit8 v14, v13, -0x1

    .line 439
    .line 440
    aget v15, v5, v14

    .line 441
    .line 442
    sub-float v18, v18, v15

    .line 443
    .line 444
    sub-float/2addr v11, v15

    .line 445
    div-float v11, v11, v18

    .line 446
    .line 447
    aget v14, v6, v14

    .line 448
    .line 449
    aget v13, v6, v13

    .line 450
    .line 451
    invoke-static {v14, v13, v11}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 452
    .line 453
    .line 454
    move-result v11

    .line 455
    goto :goto_e

    .line 456
    :goto_f
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    .line 457
    .line 458
    .line 459
    move-result v13

    .line 460
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    .line 461
    .line 462
    .line 463
    move-result v14

    .line 464
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    invoke-static {v11, v13, v14, v12}, Landroid/graphics/Color;->argb(IIII)I

    .line 469
    .line 470
    .line 471
    move-result v11

    .line 472
    goto :goto_11

    .line 473
    :cond_1e
    const/16 p0, 0x0

    .line 474
    .line 475
    invoke-static {v15}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    return-object p0

    .line 479
    :cond_1f
    :goto_10
    aget v11, v6, p2

    .line 480
    .line 481
    mul-float v11, v11, v17

    .line 482
    .line 483
    float-to-int v11, v11

    .line 484
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    .line 485
    .line 486
    .line 487
    move-result v13

    .line 488
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    .line 489
    .line 490
    .line 491
    move-result v14

    .line 492
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    invoke-static {v11, v13, v14, v12}, Landroid/graphics/Color;->argb(IIII)I

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    :goto_11
    aput v11, v8, v10

    .line 501
    .line 502
    goto/16 :goto_16

    .line 503
    .line 504
    :goto_12
    if-gez v13, :cond_20

    .line 505
    .line 506
    add-int/lit8 v13, v13, 0x1

    .line 507
    .line 508
    neg-int v13, v13

    .line 509
    :cond_20
    aget v12, v6, v13

    .line 510
    .line 511
    if-lt v2, v7, :cond_25

    .line 512
    .line 513
    aget v13, v3, p2

    .line 514
    .line 515
    cmpl-float v13, v11, v13

    .line 516
    .line 517
    if-nez v13, :cond_21

    .line 518
    .line 519
    goto :goto_14

    .line 520
    :cond_21
    const/4 v13, 0x1

    .line 521
    :goto_13
    if-ge v13, v2, :cond_24

    .line 522
    .line 523
    aget v14, v3, v13

    .line 524
    .line 525
    cmpg-float v18, v14, v11

    .line 526
    .line 527
    if-gez v18, :cond_22

    .line 528
    .line 529
    add-int/lit8 v7, v2, -0x1

    .line 530
    .line 531
    if-eq v13, v7, :cond_22

    .line 532
    .line 533
    add-int/lit8 v13, v13, 0x1

    .line 534
    .line 535
    const/4 v7, 0x2

    .line 536
    goto :goto_13

    .line 537
    :cond_22
    add-int/lit8 v7, v2, -0x1

    .line 538
    .line 539
    if-ne v13, v7, :cond_23

    .line 540
    .line 541
    cmpl-float v7, v11, v14

    .line 542
    .line 543
    if-ltz v7, :cond_23

    .line 544
    .line 545
    mul-float v12, v12, v17

    .line 546
    .line 547
    float-to-int v7, v12

    .line 548
    aget v11, v9, v13

    .line 549
    .line 550
    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    .line 551
    .line 552
    .line 553
    move-result v11

    .line 554
    aget v12, v9, v13

    .line 555
    .line 556
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    .line 557
    .line 558
    .line 559
    move-result v12

    .line 560
    aget v13, v9, v13

    .line 561
    .line 562
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    .line 563
    .line 564
    .line 565
    move-result v13

    .line 566
    invoke-static {v7, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    goto :goto_15

    .line 571
    :cond_23
    add-int/lit8 v7, v13, -0x1

    .line 572
    .line 573
    aget v15, v3, v7

    .line 574
    .line 575
    sub-float/2addr v14, v15

    .line 576
    sub-float/2addr v11, v15

    .line 577
    div-float/2addr v11, v14

    .line 578
    aget v13, v9, v13

    .line 579
    .line 580
    aget v7, v9, v7

    .line 581
    .line 582
    invoke-static {v7, v11, v13}, Lkotlin/uuid/UuidKt;->evaluate(IFI)I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    mul-float v12, v12, v17

    .line 587
    .line 588
    float-to-int v11, v12

    .line 589
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 590
    .line 591
    .line 592
    move-result v12

    .line 593
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 594
    .line 595
    .line 596
    move-result v13

    .line 597
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    invoke-static {v11, v12, v13, v7}, Landroid/graphics/Color;->argb(IIII)I

    .line 602
    .line 603
    .line 604
    move-result v7

    .line 605
    goto :goto_15

    .line 606
    :cond_24
    invoke-static {v15}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    return-object p0

    .line 610
    :cond_25
    :goto_14
    aget v7, v9, p2

    .line 611
    .line 612
    :goto_15
    aput v7, v8, v10

    .line 613
    .line 614
    :goto_16
    add-int/lit8 v10, v10, 0x1

    .line 615
    .line 616
    const/4 v7, 0x2

    .line 617
    goto/16 :goto_c

    .line 618
    .line 619
    :cond_26
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 620
    .line 621
    invoke-direct {v1, v0, v8}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 622
    .line 623
    .line 624
    return-object v1
.end method
