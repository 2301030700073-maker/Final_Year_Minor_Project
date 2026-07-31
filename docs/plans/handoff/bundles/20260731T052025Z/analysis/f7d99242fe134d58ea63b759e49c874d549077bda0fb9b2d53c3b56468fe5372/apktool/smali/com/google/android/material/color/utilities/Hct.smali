.class public final Lcom/google/android/material/color/utilities/Hct;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public argb:I

.field public chroma:D

.field public hue:D

.field public tone:D


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final setInternalState(I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iput v1, v0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    .line 6
    .line 7
    sget-object v2, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 8
    .line 9
    const/high16 v3, 0xff0000

    .line 10
    .line 11
    and-int/2addr v3, v1

    .line 12
    shr-int/lit8 v3, v3, 0x10

    .line 13
    .line 14
    const v4, 0xff00

    .line 15
    .line 16
    .line 17
    and-int/2addr v4, v1

    .line 18
    shr-int/lit8 v4, v4, 0x8

    .line 19
    .line 20
    and-int/lit16 v5, v1, 0xff

    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/android/material/color/utilities/Cam16;->linearized(I)D

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    invoke-static {v4}, Lcom/google/android/material/color/utilities/Cam16;->linearized(I)D

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v5}, Lcom/google/android/material/color/utilities/Cam16;->linearized(I)D

    .line 31
    .line 32
    .line 33
    move-result-wide v8

    .line 34
    const-wide v10, 0x3fda63c2e8477c96L    # 0.41233895

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double/2addr v10, v6

    .line 40
    const-wide v12, 0x3fd6e341ae4b2c79L    # 0.35762064

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    mul-double/2addr v12, v3

    .line 46
    add-double/2addr v12, v10

    .line 47
    const-wide v10, 0x3fc71af7273e5d5eL    # 0.18051042

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    mul-double/2addr v10, v8

    .line 53
    add-double/2addr v10, v12

    .line 54
    const-wide v12, 0x3fcb367a0f9096bcL    # 0.2126

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    mul-double/2addr v12, v6

    .line 60
    const-wide v14, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    mul-double/2addr v14, v3

    .line 66
    add-double/2addr v14, v12

    .line 67
    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    mul-double/2addr v12, v8

    .line 73
    add-double/2addr v12, v14

    .line 74
    const-wide v14, 0x3f93c8fde0401c25L    # 0.01932141

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    mul-double/2addr v6, v14

    .line 80
    const-wide v14, 0x3fbe818525c434ceL    # 0.11916382

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    mul-double/2addr v3, v14

    .line 86
    add-double/2addr v3, v6

    .line 87
    const-wide v6, 0x3fee693974c0c730L    # 0.95034478

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    mul-double/2addr v8, v6

    .line 93
    add-double/2addr v8, v3

    .line 94
    sget-object v3, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    aget-object v6, v3, v4

    .line 98
    .line 99
    aget-wide v14, v6, v4

    .line 100
    .line 101
    mul-double/2addr v14, v10

    .line 102
    const/4 v7, 0x1

    .line 103
    aget-wide v16, v6, v7

    .line 104
    .line 105
    mul-double v16, v16, v12

    .line 106
    .line 107
    add-double v16, v16, v14

    .line 108
    .line 109
    const/4 v14, 0x2

    .line 110
    aget-wide v18, v6, v14

    .line 111
    .line 112
    mul-double v18, v18, v8

    .line 113
    .line 114
    add-double v18, v18, v16

    .line 115
    .line 116
    aget-object v6, v3, v7

    .line 117
    .line 118
    aget-wide v15, v6, v4

    .line 119
    .line 120
    mul-double/2addr v15, v10

    .line 121
    aget-wide v20, v6, v7

    .line 122
    .line 123
    mul-double v20, v20, v12

    .line 124
    .line 125
    add-double v20, v20, v15

    .line 126
    .line 127
    aget-wide v15, v6, v14

    .line 128
    .line 129
    mul-double/2addr v15, v8

    .line 130
    add-double v15, v15, v20

    .line 131
    .line 132
    aget-object v3, v3, v14

    .line 133
    .line 134
    aget-wide v20, v3, v4

    .line 135
    .line 136
    mul-double v10, v10, v20

    .line 137
    .line 138
    aget-wide v20, v3, v7

    .line 139
    .line 140
    mul-double v12, v12, v20

    .line 141
    .line 142
    add-double/2addr v12, v10

    .line 143
    aget-wide v10, v3, v14

    .line 144
    .line 145
    mul-double/2addr v8, v10

    .line 146
    add-double/2addr v8, v12

    .line 147
    iget-object v3, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    .line 148
    .line 149
    iget-wide v10, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    .line 150
    .line 151
    iget-wide v12, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 152
    .line 153
    move/from16 v17, v4

    .line 154
    .line 155
    move v6, v5

    .line 156
    iget-wide v4, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 157
    .line 158
    aget-wide v20, v3, v17

    .line 159
    .line 160
    mul-double v20, v20, v18

    .line 161
    .line 162
    aget-wide v18, v3, v7

    .line 163
    .line 164
    mul-double v18, v18, v15

    .line 165
    .line 166
    aget-wide v15, v3, v14

    .line 167
    .line 168
    mul-double/2addr v15, v8

    .line 169
    iget-wide v8, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    .line 170
    .line 171
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    .line 172
    .line 173
    .line 174
    move-result-wide v22

    .line 175
    mul-double v22, v22, v8

    .line 176
    .line 177
    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    .line 178
    .line 179
    move v3, v7

    .line 180
    move-wide/from16 v26, v8

    .line 181
    .line 182
    div-double v7, v22, v24

    .line 183
    .line 184
    move-wide/from16 v22, v4

    .line 185
    .line 186
    move v5, v3

    .line 187
    const-wide v3, 0x3fdae147ae147ae1L    # 0.42

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v28

    .line 200
    mul-double v28, v28, v26

    .line 201
    .line 202
    move/from16 v30, v5

    .line 203
    .line 204
    move v9, v6

    .line 205
    div-double v5, v28, v24

    .line 206
    .line 207
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    .line 212
    .line 213
    .line 214
    move-result-wide v28

    .line 215
    mul-double v28, v28, v26

    .line 216
    .line 217
    move/from16 v26, v14

    .line 218
    .line 219
    move-wide/from16 v31, v15

    .line 220
    .line 221
    div-double v14, v28, v24

    .line 222
    .line 223
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 224
    .line 225
    .line 226
    move-result-wide v3

    .line 227
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->signum(D)D

    .line 228
    .line 229
    .line 230
    move-result-wide v14

    .line 231
    const-wide/high16 v20, 0x4079000000000000L    # 400.0

    .line 232
    .line 233
    mul-double v14, v14, v20

    .line 234
    .line 235
    mul-double/2addr v14, v7

    .line 236
    const-wide v27, 0x403b2147ae147ae1L    # 27.13

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    add-double v7, v7, v27

    .line 242
    .line 243
    div-double/2addr v14, v7

    .line 244
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->signum(D)D

    .line 245
    .line 246
    .line 247
    move-result-wide v7

    .line 248
    mul-double v7, v7, v20

    .line 249
    .line 250
    mul-double/2addr v7, v5

    .line 251
    add-double v5, v5, v27

    .line 252
    .line 253
    div-double/2addr v7, v5

    .line 254
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->signum(D)D

    .line 255
    .line 256
    .line 257
    move-result-wide v5

    .line 258
    mul-double v5, v5, v20

    .line 259
    .line 260
    mul-double/2addr v5, v3

    .line 261
    add-double v3, v3, v27

    .line 262
    .line 263
    div-double/2addr v5, v3

    .line 264
    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    .line 265
    .line 266
    mul-double v18, v14, v3

    .line 267
    .line 268
    const-wide/high16 v20, -0x3fd8000000000000L    # -12.0

    .line 269
    .line 270
    mul-double v20, v20, v7

    .line 271
    .line 272
    add-double v20, v20, v18

    .line 273
    .line 274
    add-double v20, v20, v5

    .line 275
    .line 276
    div-double v3, v20, v3

    .line 277
    .line 278
    add-double v18, v14, v7

    .line 279
    .line 280
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    .line 281
    .line 282
    mul-double v27, v5, v20

    .line 283
    .line 284
    sub-double v18, v18, v27

    .line 285
    .line 286
    const-wide/high16 v27, 0x4022000000000000L    # 9.0

    .line 287
    .line 288
    move-wide/from16 v31, v5

    .line 289
    .line 290
    div-double v5, v18, v27

    .line 291
    .line 292
    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    .line 293
    .line 294
    mul-double v27, v14, v18

    .line 295
    .line 296
    mul-double v7, v7, v18

    .line 297
    .line 298
    add-double v27, v27, v7

    .line 299
    .line 300
    const-wide/high16 v33, 0x4035000000000000L    # 21.0

    .line 301
    .line 302
    mul-double v33, v33, v31

    .line 303
    .line 304
    add-double v33, v33, v27

    .line 305
    .line 306
    div-double v33, v33, v18

    .line 307
    .line 308
    const-wide/high16 v27, 0x4044000000000000L    # 40.0

    .line 309
    .line 310
    mul-double v14, v14, v27

    .line 311
    .line 312
    add-double/2addr v14, v7

    .line 313
    add-double v14, v14, v31

    .line 314
    .line 315
    div-double v14, v14, v18

    .line 316
    .line 317
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 318
    .line 319
    .line 320
    move-result-wide v7

    .line 321
    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    .line 322
    .line 323
    .line 324
    move-result-wide v7

    .line 325
    const-wide/16 v18, 0x0

    .line 326
    .line 327
    cmpg-double v16, v7, v18

    .line 328
    .line 329
    const-wide v18, 0x4076800000000000L    # 360.0

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    if-gez v16, :cond_0

    .line 335
    .line 336
    add-double v7, v7, v18

    .line 337
    .line 338
    goto :goto_0

    .line 339
    :cond_0
    cmpl-double v16, v7, v18

    .line 340
    .line 341
    if-ltz v16, :cond_1

    .line 342
    .line 343
    sub-double v7, v7, v18

    .line 344
    .line 345
    :cond_1
    :goto_0
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    .line 346
    .line 347
    .line 348
    move-result-wide v27

    .line 349
    move-wide/from16 v31, v10

    .line 350
    .line 351
    move v11, v9

    .line 352
    iget-wide v9, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 353
    .line 354
    mul-double/2addr v14, v9

    .line 355
    div-double v14, v14, v22

    .line 356
    .line 357
    iget-wide v9, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 358
    .line 359
    mul-double/2addr v9, v12

    .line 360
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 361
    .line 362
    .line 363
    move-result-wide v9

    .line 364
    mul-double v9, v9, v24

    .line 365
    .line 366
    div-double v9, v9, v24

    .line 367
    .line 368
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 369
    .line 370
    .line 371
    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    .line 372
    .line 373
    add-double v14, v22, v14

    .line 374
    .line 375
    const-wide v22, 0x403423d70a3d70a4L    # 20.14

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    cmpg-double v16, v7, v22

    .line 381
    .line 382
    if-gez v16, :cond_2

    .line 383
    .line 384
    add-double v18, v7, v18

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_2
    move-wide/from16 v18, v7

    .line 388
    .line 389
    :goto_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    .line 390
    .line 391
    .line 392
    move-result-wide v18

    .line 393
    add-double v18, v18, v20

    .line 394
    .line 395
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 396
    .line 397
    .line 398
    move-result-wide v18

    .line 399
    const-wide v20, 0x400e666666666666L    # 3.8

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    add-double v18, v18, v20

    .line 405
    .line 406
    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    .line 407
    .line 408
    mul-double v18, v18, v20

    .line 409
    .line 410
    const-wide v20, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    mul-double v18, v18, v20

    .line 416
    .line 417
    move-wide/from16 v20, v9

    .line 418
    .line 419
    iget-wide v9, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 420
    .line 421
    mul-double v18, v18, v9

    .line 422
    .line 423
    iget-wide v9, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 424
    .line 425
    mul-double v18, v18, v9

    .line 426
    .line 427
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 428
    .line 429
    .line 430
    move-result-wide v3

    .line 431
    mul-double v3, v3, v18

    .line 432
    .line 433
    const-wide v5, 0x3fd3851eb851eb85L    # 0.305

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    add-double v33, v33, v5

    .line 439
    .line 440
    div-double v3, v3, v33

    .line 441
    .line 442
    const-wide v5, 0x3fd28f5c28f5c28fL    # 0.29

    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    iget-wide v9, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 448
    .line 449
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 450
    .line 451
    .line 452
    move-result-wide v5

    .line 453
    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    sub-double/2addr v9, v5

    .line 459
    const-wide v5, 0x3fe75c28f5c28f5cL    # 0.73

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 465
    .line 466
    .line 467
    move-result-wide v5

    .line 468
    const-wide v9, 0x3feccccccccccccdL    # 0.9

    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 474
    .line 475
    .line 476
    move-result-wide v2

    .line 477
    mul-double/2addr v2, v5

    .line 478
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    .line 479
    .line 480
    .line 481
    move-result-wide v4

    .line 482
    mul-double/2addr v4, v2

    .line 483
    mul-double v9, v4, v31

    .line 484
    .line 485
    mul-double/2addr v2, v12

    .line 486
    div-double/2addr v2, v14

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 488
    .line 489
    .line 490
    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    mul-double/2addr v9, v2

    .line 496
    invoke-static {v9, v10}, Ljava/lang/Math;->log1p(D)D

    .line 497
    .line 498
    .line 499
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 500
    .line 501
    .line 502
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    .line 503
    .line 504
    .line 505
    iput-wide v7, v0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 506
    .line 507
    iput-wide v4, v0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    .line 508
    .line 509
    shr-int/lit8 v2, v1, 0x10

    .line 510
    .line 511
    and-int/lit16 v2, v2, 0xff

    .line 512
    .line 513
    invoke-static {v2}, Lcom/google/android/material/color/utilities/Cam16;->linearized(I)D

    .line 514
    .line 515
    .line 516
    move-result-wide v2

    .line 517
    shr-int/lit8 v1, v1, 0x8

    .line 518
    .line 519
    and-int/lit16 v1, v1, 0xff

    .line 520
    .line 521
    invoke-static {v1}, Lcom/google/android/material/color/utilities/Cam16;->linearized(I)D

    .line 522
    .line 523
    .line 524
    move-result-wide v4

    .line 525
    invoke-static {v11}, Lcom/google/android/material/color/utilities/Cam16;->linearized(I)D

    .line 526
    .line 527
    .line 528
    move-result-wide v6

    .line 529
    const/4 v1, 0x3

    .line 530
    new-array v1, v1, [D

    .line 531
    .line 532
    aput-wide v2, v1, v17

    .line 533
    .line 534
    aput-wide v4, v1, v30

    .line 535
    .line 536
    aput-wide v6, v1, v26

    .line 537
    .line 538
    sget-object v2, Lcom/google/android/material/color/utilities/Cam16;->SRGB_TO_XYZ:[[D

    .line 539
    .line 540
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/Cam16;->matrixMultiply([D[[D)[D

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    aget-wide v2, v1, v30

    .line 545
    .line 546
    div-double v2, v2, v24

    .line 547
    .line 548
    const-wide v4, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    cmpl-double v1, v2, v4

    .line 554
    .line 555
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 556
    .line 557
    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    .line 558
    .line 559
    if-lez v1, :cond_3

    .line 560
    .line 561
    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 567
    .line 568
    .line 569
    move-result-wide v1

    .line 570
    goto :goto_2

    .line 571
    :cond_3
    const-wide v8, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    mul-double/2addr v2, v8

    .line 577
    add-double/2addr v2, v4

    .line 578
    div-double v1, v2, v6

    .line 579
    .line 580
    :goto_2
    mul-double/2addr v1, v6

    .line 581
    sub-double/2addr v1, v4

    .line 582
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    .line 583
    .line 584
    return-void
.end method
