.class public abstract Landroidx/compose/ui/graphics/vector/VectorKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public static final addPathNodes(Ljava/lang/String;)Ljava/util/List;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/16 v1, 0x40

    .line 9
    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    const/16 v6, 0x20

    .line 24
    .line 25
    if-ge v5, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-gtz v7, :cond_1

    .line 36
    .line 37
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    if-le v3, v5, :cond_2

    .line 41
    .line 42
    add-int/lit8 v7, v3, -0x1

    .line 43
    .line 44
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-gtz v7, :cond_2

    .line 53
    .line 54
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v7, v4

    .line 58
    :goto_2
    if-ge v5, v3, :cond_16

    .line 59
    .line 60
    :goto_3
    add-int/lit8 v8, v5, 0x1

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    or-int/lit8 v9, v5, 0x20

    .line 67
    .line 68
    add-int/lit8 v10, v9, -0x61

    .line 69
    .line 70
    add-int/lit8 v11, v9, -0x7a

    .line 71
    .line 72
    mul-int/2addr v11, v10

    .line 73
    if-gtz v11, :cond_3

    .line 74
    .line 75
    const/16 v10, 0x65

    .line 76
    .line 77
    if-eq v9, v10, :cond_3

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    if-lt v8, v3, :cond_15

    .line 81
    .line 82
    move v5, v4

    .line 83
    :goto_4
    if-eqz v5, :cond_14

    .line 84
    .line 85
    or-int/lit8 v9, v5, 0x20

    .line 86
    .line 87
    const/16 v10, 0x7a

    .line 88
    .line 89
    const/4 v11, 0x1

    .line 90
    if-eq v9, v10, :cond_d

    .line 91
    .line 92
    :goto_5
    if-ge v8, v3, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-gtz v7, :cond_4

    .line 103
    .line 104
    add-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_4
    const/16 v7, 0x61

    .line 108
    .line 109
    if-ne v9, v7, :cond_5

    .line 110
    .line 111
    move v7, v11

    .line 112
    goto :goto_6

    .line 113
    :cond_5
    move v7, v4

    .line 114
    :goto_6
    move v9, v4

    .line 115
    :cond_6
    if-eqz v7, :cond_7

    .line 116
    .line 117
    const/4 v10, 0x3

    .line 118
    if-gt v10, v9, :cond_7

    .line 119
    .line 120
    const/4 v10, 0x5

    .line 121
    if-ge v9, v10, :cond_7

    .line 122
    .line 123
    add-int/lit8 v10, v8, 0x1

    .line 124
    .line 125
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    invoke-static {v8, v10, v0}, Landroidx/compose/ui/graphics/vector/PathParserKt;->nextFloat(IILjava/lang/String;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v12

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    invoke-static {v8, v3, v0}, Landroidx/compose/ui/graphics/vector/PathParserKt;->nextFloat(IILjava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    :goto_7
    ushr-long v14, v12, v6

    .line 139
    .line 140
    long-to-int v8, v14

    .line 141
    const-wide v14, 0xffffffffL

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    and-long/2addr v12, v14

    .line 147
    long-to-int v10, v12

    .line 148
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-nez v12, :cond_9

    .line 157
    .line 158
    add-int/lit8 v12, v9, 0x1

    .line 159
    .line 160
    aput v10, v1, v9

    .line 161
    .line 162
    array-length v9, v1

    .line 163
    if-lt v12, v9, :cond_8

    .line 164
    .line 165
    mul-int/lit8 v9, v12, 0x2

    .line 166
    .line 167
    new-array v9, v9, [F

    .line 168
    .line 169
    array-length v13, v1

    .line 170
    invoke-static {v1, v4, v9, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    .line 172
    .line 173
    move-object v1, v9

    .line 174
    :cond_8
    move v9, v12

    .line 175
    :cond_9
    :goto_8
    if-ge v8, v3, :cond_b

    .line 176
    .line 177
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-lez v12, :cond_a

    .line 186
    .line 187
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    const/16 v13, 0x2c

    .line 192
    .line 193
    if-ne v12, v13, :cond_b

    .line 194
    .line 195
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_b
    if-ge v8, v3, :cond_c

    .line 199
    .line 200
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    if-eqz v10, :cond_6

    .line 205
    .line 206
    :cond_c
    move v7, v9

    .line 207
    :cond_d
    const/4 v9, 0x2

    .line 208
    const/4 v10, 0x0

    .line 209
    sparse-switch v5, :sswitch_data_0

    .line 210
    .line 211
    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v2, "Unknown command for: "

    .line 217
    .line 218
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :sswitch_0
    add-int/lit8 v5, v7, -0x1

    .line 233
    .line 234
    move v9, v4

    .line 235
    :goto_9
    if-gt v9, v5, :cond_e

    .line 236
    .line 237
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 238
    .line 239
    aget v11, v1, v9

    .line 240
    .line 241
    invoke-direct {v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    add-int/lit8 v9, v9, 0x1

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_e
    move/from16 v20, v4

    .line 251
    .line 252
    goto/16 :goto_1f

    .line 253
    .line 254
    :sswitch_1
    add-int/lit8 v5, v7, -0x2

    .line 255
    .line 256
    move v9, v4

    .line 257
    :goto_a
    if-gt v9, v5, :cond_e

    .line 258
    .line 259
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 260
    .line 261
    aget v11, v1, v9

    .line 262
    .line 263
    add-int/lit8 v12, v9, 0x1

    .line 264
    .line 265
    aget v12, v1, v12

    .line 266
    .line 267
    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    add-int/lit8 v9, v9, 0x2

    .line 274
    .line 275
    goto :goto_a

    .line 276
    :sswitch_2
    add-int/lit8 v5, v7, -0x4

    .line 277
    .line 278
    move v9, v4

    .line 279
    :goto_b
    if-gt v9, v5, :cond_e

    .line 280
    .line 281
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 282
    .line 283
    aget v11, v1, v9

    .line 284
    .line 285
    add-int/lit8 v12, v9, 0x1

    .line 286
    .line 287
    aget v12, v1, v12

    .line 288
    .line 289
    add-int/lit8 v13, v9, 0x2

    .line 290
    .line 291
    aget v13, v1, v13

    .line 292
    .line 293
    add-int/lit8 v14, v9, 0x3

    .line 294
    .line 295
    aget v14, v1, v14

    .line 296
    .line 297
    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    add-int/lit8 v9, v9, 0x4

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :sswitch_3
    add-int/lit8 v5, v7, -0x4

    .line 307
    .line 308
    move v9, v4

    .line 309
    :goto_c
    if-gt v9, v5, :cond_e

    .line 310
    .line 311
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 312
    .line 313
    aget v11, v1, v9

    .line 314
    .line 315
    add-int/lit8 v12, v9, 0x1

    .line 316
    .line 317
    aget v12, v1, v12

    .line 318
    .line 319
    add-int/lit8 v13, v9, 0x2

    .line 320
    .line 321
    aget v13, v1, v13

    .line 322
    .line 323
    add-int/lit8 v14, v9, 0x3

    .line 324
    .line 325
    aget v14, v1, v14

    .line 326
    .line 327
    invoke-direct {v10, v11, v12, v13, v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    add-int/lit8 v9, v9, 0x4

    .line 334
    .line 335
    goto :goto_c

    .line 336
    :sswitch_4
    add-int/lit8 v5, v7, -0x2

    .line 337
    .line 338
    if-ltz v5, :cond_e

    .line 339
    .line 340
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 341
    .line 342
    aget v12, v1, v4

    .line 343
    .line 344
    aget v11, v1, v11

    .line 345
    .line 346
    invoke-direct {v10, v12, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    :goto_d
    if-gt v9, v5, :cond_e

    .line 353
    .line 354
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 355
    .line 356
    aget v11, v1, v9

    .line 357
    .line 358
    add-int/lit8 v12, v9, 0x1

    .line 359
    .line 360
    aget v12, v1, v12

    .line 361
    .line 362
    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    add-int/lit8 v9, v9, 0x2

    .line 369
    .line 370
    goto :goto_d

    .line 371
    :sswitch_5
    add-int/lit8 v5, v7, -0x2

    .line 372
    .line 373
    move v9, v4

    .line 374
    :goto_e
    if-gt v9, v5, :cond_e

    .line 375
    .line 376
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 377
    .line 378
    aget v11, v1, v9

    .line 379
    .line 380
    add-int/lit8 v12, v9, 0x1

    .line 381
    .line 382
    aget v12, v1, v12

    .line 383
    .line 384
    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    add-int/lit8 v9, v9, 0x2

    .line 391
    .line 392
    goto :goto_e

    .line 393
    :sswitch_6
    add-int/lit8 v5, v7, -0x1

    .line 394
    .line 395
    move v9, v4

    .line 396
    :goto_f
    if-gt v9, v5, :cond_e

    .line 397
    .line 398
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 399
    .line 400
    aget v11, v1, v9

    .line 401
    .line 402
    invoke-direct {v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    add-int/lit8 v9, v9, 0x1

    .line 409
    .line 410
    goto :goto_f

    .line 411
    :sswitch_7
    add-int/lit8 v5, v7, -0x6

    .line 412
    .line 413
    move v9, v4

    .line 414
    :goto_10
    if-gt v9, v5, :cond_e

    .line 415
    .line 416
    new-instance v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 417
    .line 418
    aget v11, v1, v9

    .line 419
    .line 420
    add-int/lit8 v12, v9, 0x1

    .line 421
    .line 422
    aget v12, v1, v12

    .line 423
    .line 424
    add-int/lit8 v13, v9, 0x2

    .line 425
    .line 426
    aget v13, v1, v13

    .line 427
    .line 428
    add-int/lit8 v14, v9, 0x3

    .line 429
    .line 430
    aget v14, v1, v14

    .line 431
    .line 432
    add-int/lit8 v15, v9, 0x4

    .line 433
    .line 434
    aget v15, v1, v15

    .line 435
    .line 436
    add-int/lit8 v16, v9, 0x5

    .line 437
    .line 438
    aget v16, v1, v16

    .line 439
    .line 440
    invoke-direct/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    add-int/lit8 v9, v9, 0x6

    .line 447
    .line 448
    goto :goto_10

    .line 449
    :sswitch_8
    add-int/lit8 v5, v7, -0x7

    .line 450
    .line 451
    move v9, v4

    .line 452
    :goto_11
    if-gt v9, v5, :cond_e

    .line 453
    .line 454
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 455
    .line 456
    aget v13, v1, v9

    .line 457
    .line 458
    add-int/lit8 v14, v9, 0x1

    .line 459
    .line 460
    aget v14, v1, v14

    .line 461
    .line 462
    add-int/lit8 v15, v9, 0x2

    .line 463
    .line 464
    aget v15, v1, v15

    .line 465
    .line 466
    add-int/lit8 v16, v9, 0x3

    .line 467
    .line 468
    move/from16 v20, v4

    .line 469
    .line 470
    aget v4, v1, v16

    .line 471
    .line 472
    invoke-static {v4, v10}, Ljava/lang/Float;->compare(FF)I

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-eqz v4, :cond_f

    .line 477
    .line 478
    move/from16 v16, v11

    .line 479
    .line 480
    goto :goto_12

    .line 481
    :cond_f
    move/from16 v16, v20

    .line 482
    .line 483
    :goto_12
    add-int/lit8 v4, v9, 0x4

    .line 484
    .line 485
    aget v4, v1, v4

    .line 486
    .line 487
    invoke-static {v4, v10}, Ljava/lang/Float;->compare(FF)I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    if-eqz v4, :cond_10

    .line 492
    .line 493
    move/from16 v17, v11

    .line 494
    .line 495
    goto :goto_13

    .line 496
    :cond_10
    move/from16 v17, v20

    .line 497
    .line 498
    :goto_13
    add-int/lit8 v4, v9, 0x5

    .line 499
    .line 500
    aget v18, v1, v4

    .line 501
    .line 502
    add-int/lit8 v4, v9, 0x6

    .line 503
    .line 504
    aget v19, v1, v4

    .line 505
    .line 506
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    add-int/lit8 v9, v9, 0x7

    .line 513
    .line 514
    move/from16 v4, v20

    .line 515
    .line 516
    goto :goto_11

    .line 517
    :sswitch_9
    move/from16 v20, v4

    .line 518
    .line 519
    sget-object v4, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 520
    .line 521
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    goto/16 :goto_1f

    .line 525
    .line 526
    :sswitch_a
    move/from16 v20, v4

    .line 527
    .line 528
    add-int/lit8 v4, v7, -0x1

    .line 529
    .line 530
    move/from16 v5, v20

    .line 531
    .line 532
    :goto_14
    if-gt v5, v4, :cond_13

    .line 533
    .line 534
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 535
    .line 536
    aget v10, v1, v5

    .line 537
    .line 538
    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    add-int/lit8 v5, v5, 0x1

    .line 545
    .line 546
    goto :goto_14

    .line 547
    :sswitch_b
    move/from16 v20, v4

    .line 548
    .line 549
    add-int/lit8 v4, v7, -0x2

    .line 550
    .line 551
    move/from16 v5, v20

    .line 552
    .line 553
    :goto_15
    if-gt v5, v4, :cond_13

    .line 554
    .line 555
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 556
    .line 557
    aget v10, v1, v5

    .line 558
    .line 559
    add-int/lit8 v11, v5, 0x1

    .line 560
    .line 561
    aget v11, v1, v11

    .line 562
    .line 563
    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    add-int/lit8 v5, v5, 0x2

    .line 570
    .line 571
    goto :goto_15

    .line 572
    :sswitch_c
    move/from16 v20, v4

    .line 573
    .line 574
    add-int/lit8 v4, v7, -0x4

    .line 575
    .line 576
    move/from16 v5, v20

    .line 577
    .line 578
    :goto_16
    if-gt v5, v4, :cond_13

    .line 579
    .line 580
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 581
    .line 582
    aget v10, v1, v5

    .line 583
    .line 584
    add-int/lit8 v11, v5, 0x1

    .line 585
    .line 586
    aget v11, v1, v11

    .line 587
    .line 588
    add-int/lit8 v12, v5, 0x2

    .line 589
    .line 590
    aget v12, v1, v12

    .line 591
    .line 592
    add-int/lit8 v13, v5, 0x3

    .line 593
    .line 594
    aget v13, v1, v13

    .line 595
    .line 596
    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    add-int/lit8 v5, v5, 0x4

    .line 603
    .line 604
    goto :goto_16

    .line 605
    :sswitch_d
    move/from16 v20, v4

    .line 606
    .line 607
    add-int/lit8 v4, v7, -0x4

    .line 608
    .line 609
    move/from16 v5, v20

    .line 610
    .line 611
    :goto_17
    if-gt v5, v4, :cond_13

    .line 612
    .line 613
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 614
    .line 615
    aget v10, v1, v5

    .line 616
    .line 617
    add-int/lit8 v11, v5, 0x1

    .line 618
    .line 619
    aget v11, v1, v11

    .line 620
    .line 621
    add-int/lit8 v12, v5, 0x2

    .line 622
    .line 623
    aget v12, v1, v12

    .line 624
    .line 625
    add-int/lit8 v13, v5, 0x3

    .line 626
    .line 627
    aget v13, v1, v13

    .line 628
    .line 629
    invoke-direct {v9, v10, v11, v12, v13}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    add-int/lit8 v5, v5, 0x4

    .line 636
    .line 637
    goto :goto_17

    .line 638
    :sswitch_e
    move/from16 v20, v4

    .line 639
    .line 640
    add-int/lit8 v4, v7, -0x2

    .line 641
    .line 642
    if-ltz v4, :cond_13

    .line 643
    .line 644
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 645
    .line 646
    aget v10, v1, v20

    .line 647
    .line 648
    aget v11, v1, v11

    .line 649
    .line 650
    invoke-direct {v5, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    :goto_18
    if-gt v9, v4, :cond_13

    .line 657
    .line 658
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 659
    .line 660
    aget v10, v1, v9

    .line 661
    .line 662
    add-int/lit8 v11, v9, 0x1

    .line 663
    .line 664
    aget v11, v1, v11

    .line 665
    .line 666
    invoke-direct {v5, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    add-int/lit8 v9, v9, 0x2

    .line 673
    .line 674
    goto :goto_18

    .line 675
    :sswitch_f
    move/from16 v20, v4

    .line 676
    .line 677
    add-int/lit8 v4, v7, -0x2

    .line 678
    .line 679
    move/from16 v5, v20

    .line 680
    .line 681
    :goto_19
    if-gt v5, v4, :cond_13

    .line 682
    .line 683
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 684
    .line 685
    aget v10, v1, v5

    .line 686
    .line 687
    add-int/lit8 v11, v5, 0x1

    .line 688
    .line 689
    aget v11, v1, v11

    .line 690
    .line 691
    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    add-int/lit8 v5, v5, 0x2

    .line 698
    .line 699
    goto :goto_19

    .line 700
    :sswitch_10
    move/from16 v20, v4

    .line 701
    .line 702
    add-int/lit8 v4, v7, -0x1

    .line 703
    .line 704
    move/from16 v5, v20

    .line 705
    .line 706
    :goto_1a
    if-gt v5, v4, :cond_13

    .line 707
    .line 708
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 709
    .line 710
    aget v10, v1, v5

    .line 711
    .line 712
    invoke-direct {v9, v10}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    add-int/lit8 v5, v5, 0x1

    .line 719
    .line 720
    goto :goto_1a

    .line 721
    :sswitch_11
    move/from16 v20, v4

    .line 722
    .line 723
    add-int/lit8 v4, v7, -0x6

    .line 724
    .line 725
    move/from16 v5, v20

    .line 726
    .line 727
    :goto_1b
    if-gt v5, v4, :cond_13

    .line 728
    .line 729
    new-instance v9, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 730
    .line 731
    aget v10, v1, v5

    .line 732
    .line 733
    add-int/lit8 v11, v5, 0x1

    .line 734
    .line 735
    aget v11, v1, v11

    .line 736
    .line 737
    add-int/lit8 v12, v5, 0x2

    .line 738
    .line 739
    aget v12, v1, v12

    .line 740
    .line 741
    add-int/lit8 v13, v5, 0x3

    .line 742
    .line 743
    aget v13, v1, v13

    .line 744
    .line 745
    add-int/lit8 v14, v5, 0x4

    .line 746
    .line 747
    aget v14, v1, v14

    .line 748
    .line 749
    add-int/lit8 v15, v5, 0x5

    .line 750
    .line 751
    aget v15, v1, v15

    .line 752
    .line 753
    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    add-int/lit8 v5, v5, 0x6

    .line 760
    .line 761
    goto :goto_1b

    .line 762
    :sswitch_12
    move/from16 v20, v4

    .line 763
    .line 764
    add-int/lit8 v4, v7, -0x7

    .line 765
    .line 766
    move/from16 v5, v20

    .line 767
    .line 768
    :goto_1c
    if-gt v5, v4, :cond_13

    .line 769
    .line 770
    new-instance v12, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 771
    .line 772
    aget v13, v1, v5

    .line 773
    .line 774
    add-int/lit8 v9, v5, 0x1

    .line 775
    .line 776
    aget v14, v1, v9

    .line 777
    .line 778
    add-int/lit8 v9, v5, 0x2

    .line 779
    .line 780
    aget v15, v1, v9

    .line 781
    .line 782
    add-int/lit8 v9, v5, 0x3

    .line 783
    .line 784
    aget v9, v1, v9

    .line 785
    .line 786
    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    if-eqz v9, :cond_11

    .line 791
    .line 792
    move/from16 v16, v11

    .line 793
    .line 794
    goto :goto_1d

    .line 795
    :cond_11
    move/from16 v16, v20

    .line 796
    .line 797
    :goto_1d
    add-int/lit8 v9, v5, 0x4

    .line 798
    .line 799
    aget v9, v1, v9

    .line 800
    .line 801
    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    .line 802
    .line 803
    .line 804
    move-result v9

    .line 805
    if-eqz v9, :cond_12

    .line 806
    .line 807
    move/from16 v17, v11

    .line 808
    .line 809
    goto :goto_1e

    .line 810
    :cond_12
    move/from16 v17, v20

    .line 811
    .line 812
    :goto_1e
    add-int/lit8 v9, v5, 0x5

    .line 813
    .line 814
    aget v18, v1, v9

    .line 815
    .line 816
    add-int/lit8 v9, v5, 0x6

    .line 817
    .line 818
    aget v19, v1, v9

    .line 819
    .line 820
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    add-int/lit8 v5, v5, 0x7

    .line 827
    .line 828
    goto :goto_1c

    .line 829
    :cond_13
    :goto_1f
    move v5, v8

    .line 830
    move/from16 v4, v20

    .line 831
    .line 832
    goto/16 :goto_2

    .line 833
    .line 834
    :cond_14
    move v5, v8

    .line 835
    goto/16 :goto_2

    .line 836
    .line 837
    :cond_15
    move v5, v8

    .line 838
    goto/16 :goto_3

    .line 839
    .line 840
    :cond_16
    return-object v2

    .line 841
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_12
        0x43 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x51 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x56 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
        0x7a -> :sswitch_9
    .end sparse-switch
.end method
