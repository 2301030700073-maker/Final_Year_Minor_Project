.class public final Landroidx/compose/ui/graphics/LinearGradient;
.super Landroidx/compose/ui/graphics/ShaderBrush;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final colors:Ljava/util/List;

.field public final end:J

.field public final start:J

.field public final stops:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/ShaderBrush;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/LinearGradient;->colors:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/graphics/LinearGradient;->stops:Ljava/util/List;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/ui/graphics/LinearGradient;->start:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/compose/ui/graphics/LinearGradient;->end:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createShader-uvyYCjk(J)Landroid/graphics/Shader;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/compose/ui/graphics/LinearGradient;->start:J

    .line 4
    .line 5
    const/16 v3, 0x20

    .line 6
    .line 7
    shr-long v4, v1, v3

    .line 8
    .line 9
    long-to-int v4, v4

    .line 10
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 15
    .line 16
    cmpg-float v5, v5, v6

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    shr-long v4, p1, v3

    .line 21
    .line 22
    long-to-int v4, v4

    .line 23
    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-wide v7, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr v1, v7

    .line 33
    long-to-int v1, v1

    .line 34
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    cmpg-float v2, v2, v6

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    and-long v1, p1, v7

    .line 43
    .line 44
    long-to-int v1, v1

    .line 45
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-wide v9, v0, Landroidx/compose/ui/graphics/LinearGradient;->end:J

    .line 50
    .line 51
    shr-long v11, v9, v3

    .line 52
    .line 53
    long-to-int v2, v11

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    cmpg-float v5, v5, v6

    .line 59
    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    shr-long v11, p1, v3

    .line 63
    .line 64
    long-to-int v2, v11

    .line 65
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    and-long/2addr v9, v7

    .line 70
    long-to-int v5, v9

    .line 71
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    cmpg-float v6, v9, v6

    .line 76
    .line 77
    if-nez v6, :cond_3

    .line 78
    .line 79
    and-long v5, p1, v7

    .line 80
    .line 81
    long-to-int v5, v5

    .line 82
    :cond_3
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    int-to-long v9, v4

    .line 91
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    int-to-long v11, v1

    .line 96
    shl-long/2addr v9, v3

    .line 97
    and-long/2addr v11, v7

    .line 98
    or-long/2addr v9, v11

    .line 99
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    int-to-long v1, v1

    .line 104
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    int-to-long v4, v4

    .line 109
    shl-long/2addr v1, v3

    .line 110
    and-long/2addr v4, v7

    .line 111
    or-long/2addr v1, v4

    .line 112
    const/4 v4, 0x0

    .line 113
    iget-object v5, v0, Landroidx/compose/ui/graphics/LinearGradient;->colors:Ljava/util/List;

    .line 114
    .line 115
    iget-object v0, v0, Landroidx/compose/ui/graphics/LinearGradient;->stops:Ljava/util/List;

    .line 116
    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    const/4 v11, 0x2

    .line 124
    if-lt v6, v11, :cond_4

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const-string v0, "colors must have length of at least 2 if colorStops is omitted."

    .line 128
    .line 129
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object v4

    .line 133
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-ne v6, v11, :cond_15

    .line 142
    .line 143
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    .line 145
    const/4 v11, 0x1

    .line 146
    const/4 v12, 0x0

    .line 147
    const/16 v13, 0x1a

    .line 148
    .line 149
    const/4 v14, 0x0

    .line 150
    if-lt v6, v13, :cond_7

    .line 151
    .line 152
    move/from16 v16, v14

    .line 153
    .line 154
    :cond_6
    move/from16 v18, v3

    .line 155
    .line 156
    move-wide/from16 v19, v7

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    sub-int/2addr v6, v11

    .line 164
    move v15, v11

    .line 165
    move/from16 v16, v14

    .line 166
    .line 167
    :goto_1
    if-ge v15, v6, :cond_6

    .line 168
    .line 169
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v17

    .line 173
    move/from16 v18, v3

    .line 174
    .line 175
    move-object/from16 v3, v17

    .line 176
    .line 177
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 178
    .line 179
    move-wide/from16 v19, v7

    .line 180
    .line 181
    iget-wide v7, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 182
    .line 183
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    cmpg-float v3, v3, v12

    .line 188
    .line 189
    if-nez v3, :cond_8

    .line 190
    .line 191
    add-int/lit8 v16, v16, 0x1

    .line 192
    .line 193
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 194
    .line 195
    move/from16 v3, v18

    .line 196
    .line 197
    move-wide/from16 v7, v19

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :goto_2
    new-instance v21, Landroid/graphics/LinearGradient;

    .line 201
    .line 202
    shr-long v6, v9, v18

    .line 203
    .line 204
    long-to-int v3, v6

    .line 205
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 206
    .line 207
    .line 208
    move-result v22

    .line 209
    and-long v6, v9, v19

    .line 210
    .line 211
    long-to-int v3, v6

    .line 212
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 213
    .line 214
    .line 215
    move-result v23

    .line 216
    shr-long v6, v1, v18

    .line 217
    .line 218
    long-to-int v3, v6

    .line 219
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 220
    .line 221
    .line 222
    move-result v24

    .line 223
    and-long v1, v1, v19

    .line 224
    .line 225
    long-to-int v1, v1

    .line 226
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    .line 228
    .line 229
    move-result v25

    .line 230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 231
    .line 232
    if-lt v1, v13, :cond_a

    .line 233
    .line 234
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    new-array v2, v1, [I

    .line 239
    .line 240
    move v3, v14

    .line 241
    :goto_3
    if-ge v3, v1, :cond_9

    .line 242
    .line 243
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 248
    .line 249
    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    .line 250
    .line 251
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    aput v6, v2, v3

    .line 256
    .line 257
    add-int/lit8 v3, v3, 0x1

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_9
    move-object/from16 v26, v2

    .line 261
    .line 262
    goto/16 :goto_7

    .line 263
    .line 264
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    add-int v1, v1, v16

    .line 269
    .line 270
    new-array v2, v1, [I

    .line 271
    .line 272
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    sub-int/2addr v1, v11

    .line 277
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    move v6, v14

    .line 282
    move v7, v6

    .line 283
    :goto_4
    if-ge v6, v3, :cond_9

    .line 284
    .line 285
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 290
    .line 291
    iget-wide v8, v8, Landroidx/compose/ui/graphics/Color;->value:J

    .line 292
    .line 293
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    cmpg-float v10, v10, v12

    .line 298
    .line 299
    if-nez v10, :cond_d

    .line 300
    .line 301
    if-nez v6, :cond_b

    .line 302
    .line 303
    add-int/lit8 v8, v7, 0x1

    .line 304
    .line 305
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 310
    .line 311
    iget-wide v9, v9, Landroidx/compose/ui/graphics/Color;->value:J

    .line 312
    .line 313
    invoke-static {v12, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 314
    .line 315
    .line 316
    move-result-wide v9

    .line 317
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    aput v9, v2, v7

    .line 322
    .line 323
    :goto_5
    move v7, v8

    .line 324
    goto :goto_6

    .line 325
    :cond_b
    if-ne v6, v1, :cond_c

    .line 326
    .line 327
    add-int/lit8 v8, v7, 0x1

    .line 328
    .line 329
    add-int/lit8 v9, v6, -0x1

    .line 330
    .line 331
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 336
    .line 337
    iget-wide v9, v9, Landroidx/compose/ui/graphics/Color;->value:J

    .line 338
    .line 339
    invoke-static {v12, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 340
    .line 341
    .line 342
    move-result-wide v9

    .line 343
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    aput v9, v2, v7

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_c
    add-int/lit8 v8, v6, -0x1

    .line 351
    .line 352
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 357
    .line 358
    iget-wide v8, v8, Landroidx/compose/ui/graphics/Color;->value:J

    .line 359
    .line 360
    add-int/lit8 v10, v7, 0x1

    .line 361
    .line 362
    invoke-static {v12, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 363
    .line 364
    .line 365
    move-result-wide v8

    .line 366
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    aput v8, v2, v7

    .line 371
    .line 372
    add-int/lit8 v8, v6, 0x1

    .line 373
    .line 374
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    check-cast v8, Landroidx/compose/ui/graphics/Color;

    .line 379
    .line 380
    iget-wide v8, v8, Landroidx/compose/ui/graphics/Color;->value:J

    .line 381
    .line 382
    add-int/lit8 v7, v7, 0x2

    .line 383
    .line 384
    invoke-static {v12, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 385
    .line 386
    .line 387
    move-result-wide v8

    .line 388
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    aput v8, v2, v10

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_d
    add-int/lit8 v10, v7, 0x1

    .line 396
    .line 397
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    aput v8, v2, v7

    .line 402
    .line 403
    move v7, v10

    .line 404
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 405
    .line 406
    goto :goto_4

    .line 407
    :goto_7
    if-nez v16, :cond_f

    .line 408
    .line 409
    if-eqz v0, :cond_e

    .line 410
    .line 411
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    :cond_e
    :goto_8
    move-object/from16 v27, v4

    .line 416
    .line 417
    goto/16 :goto_e

    .line 418
    .line 419
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    add-int v1, v1, v16

    .line 424
    .line 425
    new-array v4, v1, [F

    .line 426
    .line 427
    if-eqz v0, :cond_10

    .line 428
    .line 429
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    check-cast v1, Ljava/lang/Number;

    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    goto :goto_9

    .line 440
    :cond_10
    move v1, v12

    .line 441
    :goto_9
    aput v1, v4, v14

    .line 442
    .line 443
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    sub-int/2addr v1, v11

    .line 448
    move v2, v11

    .line 449
    move v3, v2

    .line 450
    :goto_a
    if-ge v2, v1, :cond_13

    .line 451
    .line 452
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 457
    .line 458
    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->value:J

    .line 459
    .line 460
    if-eqz v0, :cond_11

    .line 461
    .line 462
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    check-cast v8, Ljava/lang/Number;

    .line 467
    .line 468
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    goto :goto_b

    .line 473
    :cond_11
    int-to-float v8, v2

    .line 474
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    sub-int/2addr v9, v11

    .line 479
    int-to-float v9, v9

    .line 480
    div-float/2addr v8, v9

    .line 481
    :goto_b
    add-int/lit8 v9, v3, 0x1

    .line 482
    .line 483
    aput v8, v4, v3

    .line 484
    .line 485
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    cmpg-float v6, v6, v12

    .line 490
    .line 491
    if-nez v6, :cond_12

    .line 492
    .line 493
    add-int/lit8 v3, v3, 0x2

    .line 494
    .line 495
    aput v8, v4, v9

    .line 496
    .line 497
    goto :goto_c

    .line 498
    :cond_12
    move v3, v9

    .line 499
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_13
    if-eqz v0, :cond_14

    .line 503
    .line 504
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    sub-int/2addr v1, v11

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    check-cast v0, Ljava/lang/Number;

    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    goto :goto_d

    .line 520
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 521
    .line 522
    :goto_d
    aput v0, v4, v3

    .line 523
    .line 524
    goto :goto_8

    .line 525
    :goto_e
    sget-object v28, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 526
    .line 527
    invoke-direct/range {v21 .. v28}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 528
    .line 529
    .line 530
    return-object v21

    .line 531
    :cond_15
    const-string v0, "colors and colorStops arguments must have equal length."

    .line 532
    .line 533
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/LinearGradient;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/LinearGradient;

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/compose/ui/graphics/LinearGradient;->colors:Ljava/util/List;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/graphics/LinearGradient;->colors:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->stops:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/compose/ui/graphics/LinearGradient;->stops:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-wide v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->start:J

    .line 35
    .line 36
    iget-wide v3, p1, Landroidx/compose/ui/graphics/LinearGradient;->start:J

    .line 37
    .line 38
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-wide v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->end:J

    .line 46
    .line 47
    iget-wide p0, p1, Landroidx/compose/ui/graphics/LinearGradient;->end:J

    .line 48
    .line 49
    invoke-static {v1, v2, p0, p1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_5

    .line 54
    .line 55
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/LinearGradient;->colors:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->stops:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->start:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    iget-wide v2, p0, Landroidx/compose/ui/graphics/LinearGradient;->end:J

    .line 32
    .line 33
    invoke-static {v2, v3}, Landroidx/compose/ui/Modifier$-CC;->m(J)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    add-int/2addr p0, v1

    .line 38
    mul-int/lit8 p0, p0, 0x1f

    .line 39
    .line 40
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/compose/ui/graphics/LinearGradient;->start:J

    .line 4
    .line 5
    const-wide v3, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long v5, v1, v3

    .line 11
    .line 12
    xor-long/2addr v5, v3

    .line 13
    const-wide v7, 0x100000001L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    sub-long/2addr v5, v7

    .line 19
    const-wide v9, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v5, v9

    .line 25
    const-wide/16 v11, 0x0

    .line 26
    .line 27
    cmp-long v5, v5, v11

    .line 28
    .line 29
    const-string v6, ""

    .line 30
    .line 31
    const-string v13, ", "

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v14, "start="

    .line 38
    .line 39
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v1, v6

    .line 58
    :goto_0
    iget-wide v14, v0, Landroidx/compose/ui/graphics/LinearGradient;->end:J

    .line 59
    .line 60
    and-long v16, v14, v3

    .line 61
    .line 62
    xor-long v3, v16, v3

    .line 63
    .line 64
    sub-long/2addr v3, v7

    .line 65
    and-long/2addr v3, v9

    .line 66
    cmp-long v2, v3, v11

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "end="

    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "LinearGradient(colors="

    .line 94
    .line 95
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v0, Landroidx/compose/ui/graphics/LinearGradient;->colors:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ", stops="

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v0, v0, Landroidx/compose/ui/graphics/LinearGradient;->stops:Ljava/util/List;

    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, "tileMode="

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, "Clamp"

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const/16 v0, 0x29

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0
.end method
