.class public abstract Landroidx/recyclerview/widget/DiffUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DIAGONAL_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    .line 8
    .line 9
    return-void
.end method

.method public static calculateDiff(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil;->getOldListSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/DiffUtil;->getNewListSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v5, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 28
    .line 29
    iput v1, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 30
    .line 31
    iput v6, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 32
    .line 33
    iput v2, v5, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/2addr v1, v2

    .line 39
    const/4 v2, 0x1

    .line 40
    add-int/2addr v1, v2

    .line 41
    div-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    mul-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    add-int/2addr v1, v2

    .line 46
    new-array v5, v1, [I

    .line 47
    .line 48
    div-int/lit8 v7, v1, 0x2

    .line 49
    .line 50
    new-array v1, v1, [I

    .line 51
    .line 52
    new-instance v8, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-nez v9, :cond_1c

    .line 62
    .line 63
    invoke-static {v2, v4}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 68
    .line 69
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-lt v10, v2, :cond_15

    .line 74
    .line 75
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-ge v10, v2, :cond_0

    .line 80
    .line 81
    goto/16 :goto_15

    .line 82
    .line 83
    :cond_0
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    add-int/2addr v12, v10

    .line 92
    add-int/2addr v12, v2

    .line 93
    div-int/lit8 v12, v12, 0x2

    .line 94
    .line 95
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 96
    .line 97
    add-int v13, v2, v7

    .line 98
    .line 99
    aput v10, v5, v13

    .line 100
    .line 101
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 102
    .line 103
    aput v10, v1, v13

    .line 104
    .line 105
    move v10, v6

    .line 106
    :goto_1
    if-ge v10, v12, :cond_15

    .line 107
    .line 108
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    sub-int/2addr v13, v14

    .line 117
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    rem-int/lit8 v13, v13, 0x2

    .line 122
    .line 123
    if-ne v13, v2, :cond_1

    .line 124
    .line 125
    move v13, v2

    .line 126
    goto :goto_2

    .line 127
    :cond_1
    move v13, v6

    .line 128
    :goto_2
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    sub-int/2addr v14, v15

    .line 137
    neg-int v15, v10

    .line 138
    move v11, v15

    .line 139
    :goto_3
    if-gt v11, v10, :cond_9

    .line 140
    .line 141
    if-eq v11, v15, :cond_3

    .line 142
    .line 143
    if-eq v11, v10, :cond_2

    .line 144
    .line 145
    add-int/lit8 v16, v11, 0x1

    .line 146
    .line 147
    add-int v16, v16, v7

    .line 148
    .line 149
    aget v2, v5, v16

    .line 150
    .line 151
    add-int/lit8 v16, v11, -0x1

    .line 152
    .line 153
    add-int v16, v16, v7

    .line 154
    .line 155
    aget v6, v5, v16

    .line 156
    .line 157
    if-le v2, v6, :cond_2

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_2
    add-int/lit8 v2, v11, -0x1

    .line 161
    .line 162
    add-int/2addr v2, v7

    .line 163
    aget v2, v5, v2

    .line 164
    .line 165
    add-int/lit8 v6, v2, 0x1

    .line 166
    .line 167
    :goto_4
    move/from16 v16, v7

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_3
    :goto_5
    add-int/lit8 v2, v11, 0x1

    .line 171
    .line 172
    add-int/2addr v2, v7

    .line 173
    aget v2, v5, v2

    .line 174
    .line 175
    move v6, v2

    .line 176
    goto :goto_4

    .line 177
    :goto_6
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 178
    .line 179
    move/from16 v17, v7

    .line 180
    .line 181
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 182
    .line 183
    sub-int v7, v6, v7

    .line 184
    .line 185
    add-int v7, v7, v17

    .line 186
    .line 187
    sub-int/2addr v7, v11

    .line 188
    if-eqz v10, :cond_5

    .line 189
    .line 190
    if-eq v6, v2, :cond_4

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_4
    add-int/lit8 v17, v7, -0x1

    .line 194
    .line 195
    move/from16 v20, v17

    .line 196
    .line 197
    move/from16 v17, v6

    .line 198
    .line 199
    move/from16 v6, v20

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_5
    :goto_7
    move/from16 v17, v6

    .line 203
    .line 204
    move v6, v7

    .line 205
    :goto_8
    move/from16 v18, v11

    .line 206
    .line 207
    move v11, v7

    .line 208
    move/from16 v7, v17

    .line 209
    .line 210
    move/from16 v17, v18

    .line 211
    .line 212
    move/from16 v18, v12

    .line 213
    .line 214
    :goto_9
    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 215
    .line 216
    if-ge v7, v12, :cond_6

    .line 217
    .line 218
    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 219
    .line 220
    if-ge v11, v12, :cond_6

    .line 221
    .line 222
    invoke-virtual {v0, v7, v11}, Landroidx/recyclerview/widget/DiffUtil;->areItemsTheSame(II)Z

    .line 223
    .line 224
    .line 225
    move-result v12

    .line 226
    if-eqz v12, :cond_6

    .line 227
    .line 228
    add-int/lit8 v7, v7, 0x1

    .line 229
    .line 230
    add-int/lit8 v11, v11, 0x1

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_6
    add-int v12, v17, v16

    .line 234
    .line 235
    aput v7, v5, v12

    .line 236
    .line 237
    if-eqz v13, :cond_8

    .line 238
    .line 239
    sub-int v12, v14, v17

    .line 240
    .line 241
    move/from16 v19, v13

    .line 242
    .line 243
    add-int/lit8 v13, v15, 0x1

    .line 244
    .line 245
    if-lt v12, v13, :cond_7

    .line 246
    .line 247
    add-int/lit8 v13, v10, -0x1

    .line 248
    .line 249
    if-gt v12, v13, :cond_7

    .line 250
    .line 251
    add-int v12, v12, v16

    .line 252
    .line 253
    aget v12, v1, v12

    .line 254
    .line 255
    if-gt v12, v7, :cond_7

    .line 256
    .line 257
    new-instance v12, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 258
    .line 259
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 260
    .line 261
    .line 262
    iput v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 263
    .line 264
    iput v6, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 265
    .line 266
    iput v7, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 267
    .line 268
    iput v11, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 269
    .line 270
    const/4 v2, 0x0

    .line 271
    iput-boolean v2, v12, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_7
    :goto_a
    const/4 v2, 0x0

    .line 275
    goto :goto_b

    .line 276
    :cond_8
    move/from16 v19, v13

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :goto_b
    add-int/lit8 v11, v17, 0x2

    .line 280
    .line 281
    move v6, v2

    .line 282
    move/from16 v7, v16

    .line 283
    .line 284
    move/from16 v12, v18

    .line 285
    .line 286
    move/from16 v13, v19

    .line 287
    .line 288
    const/4 v2, 0x1

    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :cond_9
    move v2, v6

    .line 292
    move/from16 v16, v7

    .line 293
    .line 294
    move/from16 v18, v12

    .line 295
    .line 296
    const/4 v12, 0x0

    .line 297
    :goto_c
    if-eqz v12, :cond_a

    .line 298
    .line 299
    move-object v11, v12

    .line 300
    goto/16 :goto_16

    .line 301
    .line 302
    :cond_a
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    sub-int/2addr v6, v7

    .line 311
    rem-int/lit8 v6, v6, 0x2

    .line 312
    .line 313
    if-nez v6, :cond_b

    .line 314
    .line 315
    const/4 v6, 0x1

    .line 316
    goto :goto_d

    .line 317
    :cond_b
    move v6, v2

    .line 318
    :goto_d
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->oldSize()I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    invoke-virtual {v9}, Landroidx/recyclerview/widget/DiffUtil$Range;->newSize()I

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    sub-int/2addr v7, v11

    .line 327
    move v11, v15

    .line 328
    :goto_e
    if-gt v11, v10, :cond_13

    .line 329
    .line 330
    if-eq v11, v15, :cond_d

    .line 331
    .line 332
    if-eq v11, v10, :cond_c

    .line 333
    .line 334
    add-int/lit8 v12, v11, 0x1

    .line 335
    .line 336
    add-int v12, v12, v16

    .line 337
    .line 338
    aget v12, v1, v12

    .line 339
    .line 340
    add-int/lit8 v13, v11, -0x1

    .line 341
    .line 342
    add-int v13, v13, v16

    .line 343
    .line 344
    aget v13, v1, v13

    .line 345
    .line 346
    if-ge v12, v13, :cond_c

    .line 347
    .line 348
    goto :goto_f

    .line 349
    :cond_c
    add-int/lit8 v12, v11, -0x1

    .line 350
    .line 351
    add-int v12, v12, v16

    .line 352
    .line 353
    aget v12, v1, v12

    .line 354
    .line 355
    add-int/lit8 v13, v12, -0x1

    .line 356
    .line 357
    goto :goto_10

    .line 358
    :cond_d
    :goto_f
    add-int/lit8 v12, v11, 0x1

    .line 359
    .line 360
    add-int v12, v12, v16

    .line 361
    .line 362
    aget v12, v1, v12

    .line 363
    .line 364
    move v13, v12

    .line 365
    :goto_10
    iget v14, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 366
    .line 367
    iget v2, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 368
    .line 369
    sub-int/2addr v2, v13

    .line 370
    sub-int/2addr v2, v11

    .line 371
    sub-int/2addr v14, v2

    .line 372
    if-eqz v10, :cond_f

    .line 373
    .line 374
    if-eq v13, v12, :cond_e

    .line 375
    .line 376
    goto :goto_11

    .line 377
    :cond_e
    add-int/lit8 v2, v14, 0x1

    .line 378
    .line 379
    goto :goto_12

    .line 380
    :cond_f
    :goto_11
    move v2, v14

    .line 381
    :goto_12
    move/from16 v17, v6

    .line 382
    .line 383
    :goto_13
    iget v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 384
    .line 385
    if-le v13, v6, :cond_10

    .line 386
    .line 387
    iget v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 388
    .line 389
    if-le v14, v6, :cond_10

    .line 390
    .line 391
    add-int/lit8 v6, v13, -0x1

    .line 392
    .line 393
    move/from16 v19, v7

    .line 394
    .line 395
    add-int/lit8 v7, v14, -0x1

    .line 396
    .line 397
    invoke-virtual {v0, v6, v7}, Landroidx/recyclerview/widget/DiffUtil;->areItemsTheSame(II)Z

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-eqz v6, :cond_11

    .line 402
    .line 403
    add-int/lit8 v13, v13, -0x1

    .line 404
    .line 405
    add-int/lit8 v14, v14, -0x1

    .line 406
    .line 407
    move/from16 v7, v19

    .line 408
    .line 409
    goto :goto_13

    .line 410
    :cond_10
    move/from16 v19, v7

    .line 411
    .line 412
    :cond_11
    add-int v7, v11, v16

    .line 413
    .line 414
    aput v13, v1, v7

    .line 415
    .line 416
    if-eqz v17, :cond_12

    .line 417
    .line 418
    sub-int v7, v19, v11

    .line 419
    .line 420
    if-lt v7, v15, :cond_12

    .line 421
    .line 422
    if-gt v7, v10, :cond_12

    .line 423
    .line 424
    add-int v7, v7, v16

    .line 425
    .line 426
    aget v6, v5, v7

    .line 427
    .line 428
    if-lt v6, v13, :cond_12

    .line 429
    .line 430
    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Snake;

    .line 431
    .line 432
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 433
    .line 434
    .line 435
    iput v13, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 436
    .line 437
    iput v14, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 438
    .line 439
    iput v12, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 440
    .line 441
    iput v2, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 442
    .line 443
    const/4 v2, 0x1

    .line 444
    iput-boolean v2, v6, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 445
    .line 446
    goto :goto_14

    .line 447
    :cond_12
    add-int/lit8 v11, v11, 0x2

    .line 448
    .line 449
    move/from16 v6, v17

    .line 450
    .line 451
    move/from16 v7, v19

    .line 452
    .line 453
    const/4 v2, 0x0

    .line 454
    goto :goto_e

    .line 455
    :cond_13
    const/4 v6, 0x0

    .line 456
    :goto_14
    if-eqz v6, :cond_14

    .line 457
    .line 458
    move-object v11, v6

    .line 459
    goto :goto_16

    .line 460
    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 461
    .line 462
    move/from16 v7, v16

    .line 463
    .line 464
    move/from16 v12, v18

    .line 465
    .line 466
    const/4 v2, 0x1

    .line 467
    const/4 v6, 0x0

    .line 468
    goto/16 :goto_1

    .line 469
    .line 470
    :cond_15
    :goto_15
    move/from16 v16, v7

    .line 471
    .line 472
    const/4 v11, 0x0

    .line 473
    :goto_16
    if-eqz v11, :cond_1b

    .line 474
    .line 475
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-lez v2, :cond_19

    .line 480
    .line 481
    iget v2, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 482
    .line 483
    iget v6, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 484
    .line 485
    sub-int/2addr v2, v6

    .line 486
    iget v7, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 487
    .line 488
    iget v10, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 489
    .line 490
    sub-int/2addr v7, v10

    .line 491
    if-eq v2, v7, :cond_18

    .line 492
    .line 493
    iget-boolean v12, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    .line 494
    .line 495
    if-eqz v12, :cond_16

    .line 496
    .line 497
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 498
    .line 499
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    invoke-direct {v2, v10, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 504
    .line 505
    .line 506
    goto :goto_17

    .line 507
    :cond_16
    if-le v2, v7, :cond_17

    .line 508
    .line 509
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 510
    .line 511
    add-int/lit8 v6, v6, 0x1

    .line 512
    .line 513
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    invoke-direct {v2, v10, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 518
    .line 519
    .line 520
    goto :goto_17

    .line 521
    :cond_17
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 522
    .line 523
    add-int/lit8 v10, v10, 0x1

    .line 524
    .line 525
    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    invoke-direct {v2, v10, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 530
    .line 531
    .line 532
    goto :goto_17

    .line 533
    :cond_18
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 534
    .line 535
    invoke-direct {v2, v10, v6, v7}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 536
    .line 537
    .line 538
    :goto_17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    :cond_19
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_1a

    .line 546
    .line 547
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 548
    .line 549
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 550
    .line 551
    .line 552
    move-object v6, v2

    .line 553
    const/4 v2, 0x1

    .line 554
    goto :goto_18

    .line 555
    :cond_1a
    const/4 v2, 0x1

    .line 556
    invoke-static {v2, v8}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    .line 561
    .line 562
    :goto_18
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 563
    .line 564
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 565
    .line 566
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 567
    .line 568
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 569
    .line 570
    iget v7, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    .line 571
    .line 572
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 573
    .line 574
    iget v7, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    .line 575
    .line 576
    iput v7, v6, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 577
    .line 578
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    iget v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 582
    .line 583
    iput v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 584
    .line 585
    iget v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 586
    .line 587
    iput v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 588
    .line 589
    iget v6, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    .line 590
    .line 591
    iput v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 592
    .line 593
    iget v6, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    .line 594
    .line 595
    iput v6, v9, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 596
    .line 597
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    goto :goto_19

    .line 601
    :cond_1b
    const/4 v2, 0x1

    .line 602
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    :goto_19
    move/from16 v7, v16

    .line 606
    .line 607
    const/4 v6, 0x0

    .line 608
    goto/16 :goto_0

    .line 609
    .line 610
    :cond_1c
    sget-object v2, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    .line 611
    .line 612
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 613
    .line 614
    .line 615
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 616
    .line 617
    invoke-direct {v2, v0, v3, v5, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil;Ljava/util/ArrayList;[I[I)V

    .line 618
    .line 619
    .line 620
    return-object v2
.end method

.method public static computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/room/RoomOpenDelegate;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez p5, :cond_1

    .line 19
    .line 20
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sub-int/2addr p0, p1

    .line 29
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    return p0

    .line 36
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int/2addr p0, p2

    .line 45
    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getTotalSpace()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public static computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/room/RoomOpenDelegate;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 3

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p4, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    if-eqz p4, :cond_3

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz p6, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    sub-int/2addr p0, v1

    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    .line 52
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    :goto_0
    if-nez p5, :cond_2

    .line 62
    .line 63
    return p0

    .line 64
    :cond_2
    invoke-virtual {p1, p3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    invoke-virtual {p1, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result p5

    .line 72
    sub-int/2addr p4, p5

    .line 73
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 78
    .line 79
    .line 80
    move-result p5

    .line 81
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    sub-int/2addr p5, p3

    .line 86
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    add-int/lit8 p3, p3, 0x1

    .line 91
    .line 92
    int-to-float p4, p4

    .line 93
    int-to-float p3, p3

    .line 94
    div-float/2addr p4, p3

    .line 95
    int-to-float p0, p0

    .line 96
    mul-float/2addr p0, p4

    .line 97
    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getStartAfterPadding()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    invoke-virtual {p1, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    sub-int/2addr p3, p1

    .line 106
    int-to-float p1, p3

    .line 107
    add-float/2addr p0, p1

    .line 108
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_3
    :goto_1
    return v0
.end method

.method public static computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/room/RoomOpenDelegate;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez p5, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/room/RoomOpenDelegate;->getDecoratedEnd(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    invoke-virtual {p1, p2}, Landroidx/room/RoomOpenDelegate;->getDecoratedStart(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sub-int/2addr p4, p1

    .line 34
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    sub-int/2addr p1, p2

    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    int-to-float p2, p4

    .line 50
    int-to-float p1, p1

    .line 51
    div-float/2addr p2, p1

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    int-to-float p0, p0

    .line 57
    mul-float/2addr p2, p0

    .line 58
    float-to-int p0, p2

    .line 59
    return p0

    .line 60
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 61
    return p0
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
.end method

.method public abstract areItemsTheSame(II)Z
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method
