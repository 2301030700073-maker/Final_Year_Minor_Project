.class public final Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final flexBoxConfigState:Landroidx/compose/runtime/MutableState;

.field public final resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->DefaultDensity:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 12
    .line 13
    iput-object v0, p1, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    .line 14
    .line 15
    const/16 v0, 0xf

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, v1, v1, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 19
    .line 20
    .line 21
    iput v1, p1, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p1, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 25
    .line 26
    iput v0, p1, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 29
    .line 30
    return-void
.end method

.method public static processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IJ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/foundation/layout/FlexLine;->startIndex:I

    .line 8
    .line 9
    iget v4, v0, Landroidx/compose/foundation/layout/FlexLine;->endIndex:I

    .line 10
    .line 11
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    sub-int v6, v4, v3

    .line 16
    .line 17
    if-lez v6, :cond_0

    .line 18
    .line 19
    add-int/lit8 v8, v6, -0x1

    .line 20
    .line 21
    iget v9, v2, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 22
    .line 23
    invoke-static {v2, v9}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    mul-int/2addr v2, v8

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    :goto_0
    const v8, 0x7fffffff

    .line 31
    .line 32
    .line 33
    const-string v9, ") is out of bounds [0, "

    .line 34
    .line 35
    const-string v10, "fromIndex ("

    .line 36
    .line 37
    const-string v11, "toIndex ("

    .line 38
    .line 39
    if-ne v5, v8, :cond_3

    .line 40
    .line 41
    if-ltz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-gt v3, v5, :cond_2

    .line 48
    .line 49
    if-ltz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-gt v4, v5, :cond_1

    .line 56
    .line 57
    :goto_1
    if-ge v3, v4, :cond_19

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 64
    .line 65
    iget v6, v5, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 66
    .line 67
    iput v6, v5, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 68
    .line 69
    add-int/2addr v2, v6

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-static {v4, v11, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    invoke-static {v3, v10, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    move/from16 v12, p3

    .line 98
    .line 99
    if-ge v12, v5, :cond_4

    .line 100
    .line 101
    const/4 v12, 0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const/4 v12, 0x0

    .line 104
    :goto_2
    if-ltz v3, :cond_1b

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    if-gt v3, v13, :cond_1b

    .line 111
    .line 112
    if-ltz v4, :cond_1a

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-gt v4, v13, :cond_1a

    .line 119
    .line 120
    move v14, v3

    .line 121
    const/4 v15, 0x0

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const/16 v18, 0x0

    .line 127
    .line 128
    const/16 v19, 0x0

    .line 129
    .line 130
    :goto_3
    const/high16 v20, 0x3f800000    # 1.0f

    .line 131
    .line 132
    if-ge v14, v4, :cond_9

    .line 133
    .line 134
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v21

    .line 138
    const/16 p2, 0x0

    .line 139
    .line 140
    move-object/from16 v13, v21

    .line 141
    .line 142
    check-cast v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 143
    .line 144
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    if-eqz v12, :cond_5

    .line 148
    .line 149
    move/from16 v21, p2

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    move/from16 v21, v20

    .line 153
    .line 154
    :goto_4
    cmpg-float v22, v21, p2

    .line 155
    .line 156
    if-nez v22, :cond_6

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_6
    if-nez v12, :cond_7

    .line 160
    .line 161
    iget v7, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 162
    .line 163
    iget v8, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 164
    .line 165
    if-ge v7, v8, :cond_7

    .line 166
    .line 167
    :goto_5
    iget v7, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 168
    .line 169
    iput v7, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 170
    .line 171
    const/4 v8, 0x1

    .line 172
    iput-boolean v8, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    .line 173
    .line 174
    add-int/2addr v15, v7

    .line 175
    const/4 v7, 0x0

    .line 176
    goto :goto_6

    .line 177
    :cond_7
    const/4 v7, 0x0

    .line 178
    iput-boolean v7, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    .line 179
    .line 180
    add-int/lit8 v18, v18, 0x1

    .line 181
    .line 182
    iget v8, v13, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 183
    .line 184
    add-int v16, v16, v8

    .line 185
    .line 186
    add-float v17, v17, v21

    .line 187
    .line 188
    if-eqz v12, :cond_8

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_8
    int-to-float v8, v8

    .line 192
    mul-float v20, v20, v8

    .line 193
    .line 194
    add-float v19, v20, v19

    .line 195
    .line 196
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_9
    const/16 p2, 0x0

    .line 200
    .line 201
    const/4 v7, 0x0

    .line 202
    sub-int v8, v5, v2

    .line 203
    .line 204
    sub-int/2addr v8, v15

    .line 205
    sub-int v8, v8, v16

    .line 206
    .line 207
    int-to-float v8, v8

    .line 208
    if-eqz v12, :cond_f

    .line 209
    .line 210
    add-int v6, v2, v15

    .line 211
    .line 212
    add-int v6, v6, v16

    .line 213
    .line 214
    sub-int/2addr v5, v6

    .line 215
    int-to-float v5, v5

    .line 216
    cmpg-float v6, v17, v20

    .line 217
    .line 218
    if-gez v6, :cond_a

    .line 219
    .line 220
    mul-float v8, v8, v17

    .line 221
    .line 222
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    cmpg-float v6, v6, v12

    .line 231
    .line 232
    if-gez v6, :cond_a

    .line 233
    .line 234
    move v5, v8

    .line 235
    :cond_a
    if-ltz v3, :cond_e

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-gt v3, v6, :cond_e

    .line 242
    .line 243
    if-ltz v4, :cond_d

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-gt v4, v6, :cond_d

    .line 250
    .line 251
    :goto_7
    if-ge v3, v4, :cond_c

    .line 252
    .line 253
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    check-cast v6, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 258
    .line 259
    iget-boolean v8, v6, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    .line 260
    .line 261
    if-nez v8, :cond_b

    .line 262
    .line 263
    mul-float v13, v5, p2

    .line 264
    .line 265
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    int-to-float v9, v8

    .line 270
    sub-float/2addr v5, v9

    .line 271
    iget v9, v6, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 272
    .line 273
    add-int/2addr v9, v8

    .line 274
    iput v9, v6, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 275
    .line 276
    add-int/2addr v7, v9

    .line 277
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_c
    move/from16 v23, v2

    .line 281
    .line 282
    goto/16 :goto_c

    .line 283
    .line 284
    :cond_d
    invoke-static {v4, v11, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_e
    invoke-static {v3, v10, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_f
    move v13, v7

    .line 309
    move v14, v13

    .line 310
    const/4 v12, 0x1

    .line 311
    :goto_8
    if-eqz v12, :cond_18

    .line 312
    .line 313
    if-ge v13, v6, :cond_18

    .line 314
    .line 315
    add-int/lit8 v13, v13, 0x1

    .line 316
    .line 317
    if-eqz v18, :cond_17

    .line 318
    .line 319
    add-int v12, v2, v15

    .line 320
    .line 321
    add-int v12, v12, v16

    .line 322
    .line 323
    sub-int v12, v5, v12

    .line 324
    .line 325
    int-to-float v12, v12

    .line 326
    cmpg-float v14, v17, v20

    .line 327
    .line 328
    if-gez v14, :cond_10

    .line 329
    .line 330
    mul-float v14, v8, v17

    .line 331
    .line 332
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 333
    .line 334
    .line 335
    move-result v21

    .line 336
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 337
    .line 338
    .line 339
    move-result v22

    .line 340
    cmpg-float v21, v21, v22

    .line 341
    .line 342
    if-gez v21, :cond_10

    .line 343
    .line 344
    move v12, v14

    .line 345
    :cond_10
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    if-ltz v3, :cond_16

    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    if-gt v3, v14, :cond_16

    .line 356
    .line 357
    if-ltz v4, :cond_15

    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    if-gt v4, v14, :cond_15

    .line 364
    .line 365
    move v14, v12

    .line 366
    move/from16 v21, v19

    .line 367
    .line 368
    move/from16 v22, v21

    .line 369
    .line 370
    move v12, v7

    .line 371
    move/from16 v19, v18

    .line 372
    .line 373
    move v7, v3

    .line 374
    move/from16 v18, v17

    .line 375
    .line 376
    move/from16 v17, v16

    .line 377
    .line 378
    move/from16 v16, v15

    .line 379
    .line 380
    move v15, v12

    .line 381
    :goto_9
    if-ge v7, v4, :cond_14

    .line 382
    .line 383
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v23

    .line 387
    move-object/from16 v1, v23

    .line 388
    .line 389
    check-cast v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 390
    .line 391
    move/from16 v23, v2

    .line 392
    .line 393
    iget-boolean v2, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    .line 394
    .line 395
    if-nez v2, :cond_13

    .line 396
    .line 397
    iget v2, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 398
    .line 399
    int-to-float v2, v2

    .line 400
    mul-float v2, v2, v20

    .line 401
    .line 402
    cmpl-float v24, v22, p2

    .line 403
    .line 404
    if-lez v24, :cond_11

    .line 405
    .line 406
    div-float v24, v2, v22

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_11
    move/from16 v24, p2

    .line 410
    .line 411
    :goto_a
    mul-float v24, v24, v14

    .line 412
    .line 413
    move/from16 p3, v2

    .line 414
    .line 415
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    move/from16 v24, v5

    .line 420
    .line 421
    iget v5, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 422
    .line 423
    sub-int/2addr v5, v2

    .line 424
    move/from16 v25, v6

    .line 425
    .line 426
    move/from16 p5, v7

    .line 427
    .line 428
    const/4 v6, 0x1

    .line 429
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMinMainAxisSize$foundation_layout(Z)I

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-ge v5, v7, :cond_12

    .line 434
    .line 435
    iput-boolean v6, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen:Z

    .line 436
    .line 437
    iget v2, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 438
    .line 439
    sub-int v5, v2, v7

    .line 440
    .line 441
    int-to-float v5, v5

    .line 442
    sub-float/2addr v14, v5

    .line 443
    sub-float v22, v22, p3

    .line 444
    .line 445
    iput v7, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 446
    .line 447
    add-int/lit8 v19, v19, -0x1

    .line 448
    .line 449
    add-int v16, v16, v7

    .line 450
    .line 451
    sub-int v17, v17, v2

    .line 452
    .line 453
    sub-float v21, v21, p3

    .line 454
    .line 455
    sub-float v18, v18, v20

    .line 456
    .line 457
    move v12, v6

    .line 458
    goto :goto_b

    .line 459
    :cond_12
    int-to-float v2, v2

    .line 460
    sub-float/2addr v14, v2

    .line 461
    sub-float v22, v22, p3

    .line 462
    .line 463
    iput v5, v1, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 464
    .line 465
    add-int/2addr v15, v5

    .line 466
    goto :goto_b

    .line 467
    :cond_13
    move/from16 v24, v5

    .line 468
    .line 469
    move/from16 v25, v6

    .line 470
    .line 471
    move/from16 p5, v7

    .line 472
    .line 473
    const/4 v6, 0x1

    .line 474
    :goto_b
    add-int/lit8 v7, p5, 0x1

    .line 475
    .line 476
    move-object/from16 v1, p1

    .line 477
    .line 478
    move/from16 v2, v23

    .line 479
    .line 480
    move/from16 v5, v24

    .line 481
    .line 482
    move/from16 v6, v25

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_14
    move-object/from16 v1, p1

    .line 486
    .line 487
    move v14, v15

    .line 488
    move/from16 v15, v16

    .line 489
    .line 490
    move/from16 v16, v17

    .line 491
    .line 492
    move/from16 v17, v18

    .line 493
    .line 494
    move/from16 v18, v19

    .line 495
    .line 496
    move/from16 v19, v21

    .line 497
    .line 498
    const/4 v7, 0x0

    .line 499
    goto/16 :goto_8

    .line 500
    .line 501
    :cond_15
    invoke-static {v4, v11, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_16
    invoke-static {v3, v10, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :cond_17
    move/from16 v23, v2

    .line 526
    .line 527
    const/4 v7, 0x0

    .line 528
    goto :goto_c

    .line 529
    :cond_18
    move/from16 v23, v2

    .line 530
    .line 531
    move v7, v14

    .line 532
    :goto_c
    add-int v2, v23, v15

    .line 533
    .line 534
    add-int/2addr v2, v7

    .line 535
    :cond_19
    iput v2, v0, Landroidx/compose/foundation/layout/FlexLine;->mainAxisSize:I

    .line 536
    .line 537
    return-void

    .line 538
    :cond_1a
    invoke-static {v4, v11, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :cond_1b
    invoke-static {v3, v10, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 559
    .line 560
    .line 561
    return-void
.end method


# virtual methods
.method public final maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, p3, v2, v2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    move v3, v2

    .line 43
    move v4, v3

    .line 44
    move v5, v4

    .line 45
    :goto_0
    if-ge v2, v1, :cond_3

    .line 46
    .line 47
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 52
    .line 53
    const v7, 0x7fffffff

    .line 54
    .line 55
    .line 56
    invoke-interface {v6, v7}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-interface {v6, v7}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iget v8, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    if-ne v8, v9, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v9, 0x2

    .line 71
    if-ne v8, v9, :cond_2

    .line 72
    .line 73
    :goto_1
    if-eqz v5, :cond_2

    .line 74
    .line 75
    add-int v8, v5, v7

    .line 76
    .line 77
    if-le v8, p3, :cond_2

    .line 78
    .line 79
    add-int/2addr v4, v0

    .line 80
    add-int/2addr v4, v3

    .line 81
    add-int/2addr v7, p1

    .line 82
    move v3, v4

    .line 83
    move v4, v6

    .line 84
    :goto_2
    move v5, v7

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    add-int/2addr v7, p1

    .line 87
    add-int/2addr v7, v5

    .line 88
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    goto :goto_2

    .line 93
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    add-int/2addr v3, v4

    .line 97
    return v3
.end method

.method public final maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v2, v2, p3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x2

    .line 38
    if-ne p0, v1, :cond_3

    .line 39
    .line 40
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    move p1, v2

    .line 45
    :goto_1
    if-ge v2, p0, :cond_2

    .line 46
    .line 47
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 52
    .line 53
    invoke-interface {v0, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return p1

    .line 65
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    move v1, v2

    .line 70
    move v3, v1

    .line 71
    :goto_2
    if-ge v1, p0, :cond_4

    .line 72
    .line 73
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 78
    .line 79
    invoke-interface {v4, p3}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    add-int/2addr v3, v4

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sub-int/2addr p0, v0

    .line 92
    if-gez p0, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    move v2, p0

    .line 96
    :goto_3
    mul-int/2addr v2, p1

    .line 97
    add-int/2addr v2, v3

    .line 98
    return v2
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v10, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/16 v3, 0x1d

    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v4, v0, v1, v10, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-object v0, v1, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;

    .line 40
    .line 41
    invoke-virtual {v1, v0, v4}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 46
    .line 47
    move-wide/from16 v2, p3

    .line 48
    .line 49
    invoke-static {v2, v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v15

    .line 53
    new-instance v12, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iget v0, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v6, 0x0

    .line 71
    :goto_0
    const/4 v9, 0x1

    .line 72
    if-ge v6, v0, :cond_4

    .line 73
    .line 74
    move-object/from16 v7, p2

    .line 75
    .line 76
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 81
    .line 82
    invoke-interface {v8}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 86
    .line 87
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v14, Landroidx/compose/foundation/layout/OffsetKt;->DefaultDensity:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 91
    .line 92
    iput-object v14, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_density:Landroidx/compose/foundation/layout/FlexBoxKt$DefaultDensity$1;

    .line 93
    .line 94
    const/4 v14, -0x1

    .line 95
    iput v14, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_minMainAxisSize:I

    .line 96
    .line 97
    iput v14, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    .line 98
    .line 99
    iput-object v8, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 100
    .line 101
    invoke-virtual {v11, v9}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMinMainAxisSize$foundation_layout(Z)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    iget v9, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    .line 106
    .line 107
    if-ne v9, v14, :cond_2

    .line 108
    .line 109
    iget-object v9, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 110
    .line 111
    if-eqz v9, :cond_1

    .line 112
    .line 113
    const v14, 0x7fffffff

    .line 114
    .line 115
    .line 116
    invoke-interface {v9, v14}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const/4 v9, 0x0

    .line 122
    :goto_1
    iput v9, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    .line 123
    .line 124
    :cond_2
    iget v9, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->_maxContentSize:I

    .line 125
    .line 126
    iput v9, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->flexBaseSize:I

    .line 127
    .line 128
    if-ge v9, v8, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    move v8, v9

    .line 132
    :goto_2
    iput v8, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 133
    .line 134
    iput v8, v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 135
    .line 136
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    iget v0, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 143
    .line 144
    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    iget v0, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 149
    .line 150
    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    .line 155
    .line 156
    const/16 v7, 0x8

    .line 157
    .line 158
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .line 160
    .line 161
    new-instance v7, Landroidx/compose/foundation/layout/FlexLine;

    .line 162
    .line 163
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    move v5, v11

    .line 175
    move-object v11, v7

    .line 176
    move v7, v5

    .line 177
    const/4 v5, 0x0

    .line 178
    const/4 v9, 0x0

    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    const/16 v18, 0x0

    .line 182
    .line 183
    const/16 v19, 0x0

    .line 184
    .line 185
    :goto_3
    if-ge v9, v14, :cond_8

    .line 186
    .line 187
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v20

    .line 191
    move-object/from16 v3, v20

    .line 192
    .line 193
    check-cast v3, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 194
    .line 195
    move/from16 p2, v0

    .line 196
    .line 197
    iget v0, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 198
    .line 199
    if-ne v0, v2, :cond_5

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_5
    const/4 v2, 0x2

    .line 203
    if-ne v0, v2, :cond_7

    .line 204
    .line 205
    :goto_4
    if-le v9, v5, :cond_7

    .line 206
    .line 207
    iget v0, v3, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 208
    .line 209
    add-int v0, v17, v0

    .line 210
    .line 211
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-le v0, v2, :cond_7

    .line 216
    .line 217
    iput v5, v11, Landroidx/compose/foundation/layout/FlexLine;->startIndex:I

    .line 218
    .line 219
    iput v9, v11, Landroidx/compose/foundation/layout/FlexLine;->endIndex:I

    .line 220
    .line 221
    sub-int v17, v17, v8

    .line 222
    .line 223
    move v0, v14

    .line 224
    move/from16 v14, v17

    .line 225
    .line 226
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IJ)V

    .line 227
    .line 228
    .line 229
    iget v2, v11, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 230
    .line 231
    add-int v18, v18, v2

    .line 232
    .line 233
    move/from16 v14, v19

    .line 234
    .line 235
    iput v14, v11, Landroidx/compose/foundation/layout/FlexLine;->crossStart:I

    .line 236
    .line 237
    add-int v2, v2, p2

    .line 238
    .line 239
    add-int v19, v2, v14

    .line 240
    .line 241
    sub-int v2, v7, v2

    .line 242
    .line 243
    if-gez v2, :cond_6

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    :cond_6
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    new-instance v5, Landroidx/compose/foundation/layout/FlexLine;

    .line 250
    .line 251
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 252
    .line 253
    .line 254
    iget v3, v3, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 255
    .line 256
    add-int/2addr v3, v8

    .line 257
    move v7, v2

    .line 258
    move/from16 v17, v3

    .line 259
    .line 260
    move-object v11, v5

    .line 261
    move v5, v9

    .line 262
    goto :goto_5

    .line 263
    :cond_7
    move v0, v14

    .line 264
    move/from16 v14, v19

    .line 265
    .line 266
    iget v2, v3, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->hypotheticalMainSize:I

    .line 267
    .line 268
    add-int/2addr v2, v8

    .line 269
    add-int v2, v2, v17

    .line 270
    .line 271
    move/from16 v17, v2

    .line 272
    .line 273
    move/from16 v19, v14

    .line 274
    .line 275
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 276
    .line 277
    move v14, v0

    .line 278
    const/4 v2, 0x1

    .line 279
    const/4 v3, 0x2

    .line 280
    move/from16 v0, p2

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_8
    move/from16 p2, v0

    .line 284
    .line 285
    move/from16 v14, v19

    .line 286
    .line 287
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-ge v5, v0, :cond_9

    .line 292
    .line 293
    iput v5, v11, Landroidx/compose/foundation/layout/FlexLine;->startIndex:I

    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    iput v0, v11, Landroidx/compose/foundation/layout/FlexLine;->endIndex:I

    .line 300
    .line 301
    sub-int v17, v17, v8

    .line 302
    .line 303
    move v5, v14

    .line 304
    move/from16 v14, v17

    .line 305
    .line 306
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IJ)V

    .line 307
    .line 308
    .line 309
    iget v0, v11, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 310
    .line 311
    add-int v18, v18, v0

    .line 312
    .line 313
    iput v5, v11, Landroidx/compose/foundation/layout/FlexLine;->crossStart:I

    .line 314
    .line 315
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    const/4 v2, 0x1

    .line 323
    if-ne v0, v2, :cond_a

    .line 324
    .line 325
    const/4 v0, 0x0

    .line 326
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Landroidx/compose/foundation/layout/FlexLine;

    .line 331
    .line 332
    iget v2, v2, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 333
    .line 334
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Landroidx/compose/foundation/layout/FlexLine;

    .line 347
    .line 348
    iput v2, v3, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 349
    .line 350
    :cond_a
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    move v3, v0

    .line 359
    move/from16 v5, v18

    .line 360
    .line 361
    const/4 v0, 0x0

    .line 362
    :goto_6
    if-ge v0, v2, :cond_13

    .line 363
    .line 364
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    check-cast v9, Landroidx/compose/foundation/layout/FlexLine;

    .line 369
    .line 370
    iget v11, v9, Landroidx/compose/foundation/layout/FlexLine;->startIndex:I

    .line 371
    .line 372
    iget v14, v9, Landroidx/compose/foundation/layout/FlexLine;->endIndex:I

    .line 373
    .line 374
    const/16 v17, 0x0

    .line 375
    .line 376
    const-string v7, ") is out of bounds [0, "

    .line 377
    .line 378
    if-ltz v11, :cond_12

    .line 379
    .line 380
    move/from16 v18, v0

    .line 381
    .line 382
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-gt v11, v0, :cond_12

    .line 387
    .line 388
    if-ltz v14, :cond_11

    .line 389
    .line 390
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-gt v14, v0, :cond_11

    .line 395
    .line 396
    const/4 v0, 0x0

    .line 397
    :goto_7
    if-ge v11, v14, :cond_f

    .line 398
    .line 399
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    check-cast v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    .line 404
    .line 405
    iget-object v1, v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 406
    .line 407
    if-eqz v1, :cond_b

    .line 408
    .line 409
    iget v1, v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossAxisSize:I

    .line 410
    .line 411
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    move/from16 v19, v2

    .line 416
    .line 417
    move/from16 v22, v11

    .line 418
    .line 419
    move-object/from16 v21, v12

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_b
    iget v1, v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->targetMainSize:I

    .line 423
    .line 424
    move/from16 v19, v2

    .line 425
    .line 426
    move/from16 v22, v11

    .line 427
    .line 428
    move-object/from16 v21, v12

    .line 429
    .line 430
    const/4 v2, 0x0

    .line 431
    invoke-static {v1, v1, v2, v3}, Lkotlin/math/MathKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    .line 432
    .line 433
    .line 434
    move-result-wide v11

    .line 435
    iget-object v1, v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 436
    .line 437
    if-eqz v1, :cond_c

    .line 438
    .line 439
    invoke-interface {v1, v11, v12}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    goto :goto_8

    .line 444
    :cond_c
    move-object/from16 v1, v17

    .line 445
    .line 446
    :goto_8
    iput-object v1, v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    .line 447
    .line 448
    if-eqz v1, :cond_d

    .line 449
    .line 450
    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_d
    const/4 v1, 0x0

    .line 454
    :goto_9
    iput v1, v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->crossAxisSize:I

    .line 455
    .line 456
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    const/4 v2, 0x1

    .line 465
    if-ne v1, v2, :cond_e

    .line 466
    .line 467
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    :cond_e
    :goto_a
    add-int/lit8 v11, v22, 0x1

    .line 476
    .line 477
    move-object/from16 v1, p0

    .line 478
    .line 479
    move/from16 v2, v19

    .line 480
    .line 481
    move-object/from16 v12, v21

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_f
    move/from16 v19, v2

    .line 485
    .line 486
    move-object/from16 v21, v12

    .line 487
    .line 488
    iput v0, v9, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 489
    .line 490
    add-int/2addr v5, v0

    .line 491
    sub-int/2addr v3, v0

    .line 492
    iget v0, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 493
    .line 494
    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    sub-int v0, v3, v0

    .line 499
    .line 500
    if-gez v0, :cond_10

    .line 501
    .line 502
    const/4 v3, 0x0

    .line 503
    goto :goto_b

    .line 504
    :cond_10
    move v3, v0

    .line 505
    :goto_b
    add-int/lit8 v0, v18, 0x1

    .line 506
    .line 507
    move-object/from16 v1, p0

    .line 508
    .line 509
    move/from16 v2, v19

    .line 510
    .line 511
    move-object/from16 v12, v21

    .line 512
    .line 513
    goto/16 :goto_6

    .line 514
    .line 515
    :cond_11
    move-object/from16 v21, v12

    .line 516
    .line 517
    const-string v0, "toIndex ("

    .line 518
    .line 519
    invoke-static {v14, v0, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 528
    .line 529
    .line 530
    return-object v17

    .line 531
    :cond_12
    move-object/from16 v21, v12

    .line 532
    .line 533
    const-string v0, "fromIndex ("

    .line 534
    .line 535
    invoke-static {v11, v0, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-static {v1, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;->m(ILjava/lang/StringBuilder;)V

    .line 544
    .line 545
    .line 546
    return-object v17

    .line 547
    :cond_13
    move-object/from16 v21, v12

    .line 548
    .line 549
    const/16 v17, 0x0

    .line 550
    .line 551
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    if-nez v1, :cond_19

    .line 564
    .line 565
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    const/4 v2, 0x1

    .line 570
    if-ne v1, v2, :cond_14

    .line 571
    .line 572
    goto :goto_f

    .line 573
    :cond_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    sub-int/2addr v1, v2

    .line 578
    mul-int v1, v1, p2

    .line 579
    .line 580
    sub-int/2addr v0, v5

    .line 581
    sub-int/2addr v0, v1

    .line 582
    iget v1, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 583
    .line 584
    const/4 v2, 0x2

    .line 585
    if-ne v1, v2, :cond_15

    .line 586
    .line 587
    goto :goto_c

    .line 588
    :cond_15
    const/4 v0, 0x0

    .line 589
    :goto_c
    if-ne v1, v2, :cond_16

    .line 590
    .line 591
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    iget v2, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 596
    .line 597
    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    .line 598
    .line 599
    neg-int v1, v1

    .line 600
    new-instance v3, Lkotlin/ranges/IntProgression;

    .line 601
    .line 602
    const/4 v5, 0x0

    .line 603
    invoke-direct {v3, v2, v5, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 604
    .line 605
    .line 606
    goto :goto_d

    .line 607
    :cond_16
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    :goto_d
    iget v1, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 612
    .line 613
    iget v2, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 614
    .line 615
    iget v3, v3, Lkotlin/ranges/IntProgression;->step:I

    .line 616
    .line 617
    if-lez v3, :cond_17

    .line 618
    .line 619
    if-le v1, v2, :cond_18

    .line 620
    .line 621
    :cond_17
    if-gez v3, :cond_19

    .line 622
    .line 623
    if-gt v2, v1, :cond_19

    .line 624
    .line 625
    :cond_18
    :goto_e
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    check-cast v5, Landroidx/compose/foundation/layout/FlexLine;

    .line 630
    .line 631
    iput v0, v5, Landroidx/compose/foundation/layout/FlexLine;->crossStart:I

    .line 632
    .line 633
    iget v5, v5, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 634
    .line 635
    add-int v5, v5, p2

    .line 636
    .line 637
    add-int/2addr v0, v5

    .line 638
    if-eq v1, v2, :cond_19

    .line 639
    .line 640
    add-int/2addr v1, v3

    .line 641
    goto :goto_e

    .line 642
    :cond_19
    :goto_f
    iget v0, v13, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 643
    .line 644
    const/4 v2, 0x2

    .line 645
    if-ne v0, v2, :cond_1a

    .line 646
    .line 647
    const/4 v0, 0x1

    .line 648
    goto :goto_10

    .line 649
    :cond_1a
    const/4 v0, 0x0

    .line 650
    :goto_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    if-eqz v1, :cond_1b

    .line 655
    .line 656
    const/4 v0, 0x0

    .line 657
    goto :goto_12

    .line 658
    :cond_1b
    if-eqz v0, :cond_1c

    .line 659
    .line 660
    const/4 v0, 0x0

    .line 661
    goto :goto_11

    .line 662
    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    const/16 v20, 0x1

    .line 667
    .line 668
    add-int/lit8 v0, v0, -0x1

    .line 669
    .line 670
    :goto_11
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    check-cast v1, Landroidx/compose/foundation/layout/FlexLine;

    .line 675
    .line 676
    iget v1, v1, Landroidx/compose/foundation/layout/FlexLine;->crossStart:I

    .line 677
    .line 678
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Landroidx/compose/foundation/layout/FlexLine;

    .line 683
    .line 684
    iget v0, v0, Landroidx/compose/foundation/layout/FlexLine;->crossAxisSize:I

    .line 685
    .line 686
    add-int/2addr v0, v1

    .line 687
    :goto_12
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-eqz v1, :cond_1d

    .line 700
    .line 701
    move-object/from16 v7, v17

    .line 702
    .line 703
    goto :goto_14

    .line 704
    :cond_1d
    const/4 v2, 0x0

    .line 705
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    move-object v2, v1

    .line 710
    check-cast v2, Landroidx/compose/foundation/layout/FlexLine;

    .line 711
    .line 712
    iget v2, v2, Landroidx/compose/foundation/layout/FlexLine;->mainAxisSize:I

    .line 713
    .line 714
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    const/4 v5, 0x1

    .line 719
    sub-int/2addr v3, v5

    .line 720
    if-gt v5, v3, :cond_1f

    .line 721
    .line 722
    move/from16 v23, v5

    .line 723
    .line 724
    move v5, v2

    .line 725
    move/from16 v2, v23

    .line 726
    .line 727
    :goto_13
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v7

    .line 731
    move-object v9, v7

    .line 732
    check-cast v9, Landroidx/compose/foundation/layout/FlexLine;

    .line 733
    .line 734
    iget v9, v9, Landroidx/compose/foundation/layout/FlexLine;->mainAxisSize:I

    .line 735
    .line 736
    if-ge v5, v9, :cond_1e

    .line 737
    .line 738
    move-object v1, v7

    .line 739
    move v5, v9

    .line 740
    :cond_1e
    if-eq v2, v3, :cond_1f

    .line 741
    .line 742
    add-int/lit8 v2, v2, 0x1

    .line 743
    .line 744
    goto :goto_13

    .line 745
    :cond_1f
    move-object v7, v1

    .line 746
    :goto_14
    check-cast v7, Landroidx/compose/foundation/layout/FlexLine;

    .line 747
    .line 748
    if-eqz v7, :cond_20

    .line 749
    .line 750
    iget v1, v7, Landroidx/compose/foundation/layout/FlexLine;->mainAxisSize:I

    .line 751
    .line 752
    goto :goto_15

    .line 753
    :cond_20
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    :goto_15
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 758
    .line 759
    .line 760
    move-result v2

    .line 761
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    if-ge v1, v2, :cond_21

    .line 774
    .line 775
    move v1, v2

    .line 776
    :cond_21
    if-le v1, v3, :cond_22

    .line 777
    .line 778
    goto :goto_16

    .line 779
    :cond_22
    move v3, v1

    .line 780
    :goto_16
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 785
    .line 786
    .line 787
    move-result v2

    .line 788
    if-ge v0, v1, :cond_23

    .line 789
    .line 790
    move v0, v1

    .line 791
    :cond_23
    if-le v0, v2, :cond_24

    .line 792
    .line 793
    move v7, v2

    .line 794
    goto :goto_17

    .line 795
    :cond_24
    move v7, v0

    .line 796
    :goto_17
    new-instance v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;

    .line 797
    .line 798
    move-object/from16 v1, p0

    .line 799
    .line 800
    move-object v2, v6

    .line 801
    move-object v5, v13

    .line 802
    const/4 v9, 0x1

    .line 803
    move v6, v3

    .line 804
    move-object/from16 v3, v21

    .line 805
    .line 806
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZ)V

    .line 807
    .line 808
    .line 809
    invoke-interface {v4, v6, v7, v10, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    return-object v0
.end method

.method public final minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, p3, v2, v2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 33
    .line 34
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    move v3, v2

    .line 43
    move v4, v3

    .line 44
    move v5, v4

    .line 45
    :goto_0
    if-ge v2, v1, :cond_3

    .line 46
    .line 47
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 52
    .line 53
    const v7, 0x7fffffff

    .line 54
    .line 55
    .line 56
    invoke-interface {v6, v7}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-interface {v6, v7}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    iget v8, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    if-ne v8, v9, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v9, 0x2

    .line 71
    if-ne v8, v9, :cond_2

    .line 72
    .line 73
    :goto_1
    if-eqz v5, :cond_2

    .line 74
    .line 75
    add-int v8, v5, v7

    .line 76
    .line 77
    if-le v8, p3, :cond_2

    .line 78
    .line 79
    add-int/2addr v4, v0

    .line 80
    add-int/2addr v4, v3

    .line 81
    add-int/2addr v7, p1

    .line 82
    move v3, v4

    .line 83
    move v4, v6

    .line 84
    :goto_2
    move v5, v7

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    add-int/2addr v7, p1

    .line 87
    add-int/2addr v7, v5

    .line 88
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    goto :goto_2

    .line 93
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    add-int/2addr v3, v4

    .line 97
    return v3
.end method

.method public final minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v2, v2, p3, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIII)J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget p0, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x2

    .line 38
    if-ne p0, v1, :cond_3

    .line 39
    .line 40
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    move p1, v2

    .line 45
    :goto_1
    if-ge v2, p0, :cond_2

    .line 46
    .line 47
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 52
    .line 53
    invoke-interface {v0, p3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return p1

    .line 65
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    move v1, v2

    .line 70
    move v3, v1

    .line 71
    :goto_2
    if-ge v1, p0, :cond_4

    .line 72
    .line 73
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 78
    .line 79
    invoke-interface {v4, p3}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    add-int/2addr v3, v4

    .line 84
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sub-int/2addr p0, v0

    .line 92
    if-gez p0, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    move v2, p0

    .line 96
    :goto_3
    mul-int/2addr v2, p1

    .line 97
    add-int/2addr v2, v3

    .line 98
    return v2
.end method

.method public final resolveFlexBoxConfig-3p2s80s(Lnet/thunderbird/core/ui/setting/dialog/ui/components/dialog/value/ColorDialogViewKt$$ExternalSyntheticLambda4;Landroidx/compose/ui/layout/IntrinsicMeasureScope;)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->_density:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 10
    .line 11
    iput p2, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->wrap:I

    .line 18
    .line 19
    const/high16 p1, 0x41000000    # 8.0f

    .line 20
    .line 21
    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->rowGap:F

    .line 22
    .line 23
    iput p1, p0, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->columnGap:F

    .line 24
    .line 25
    return-object p0
.end method
