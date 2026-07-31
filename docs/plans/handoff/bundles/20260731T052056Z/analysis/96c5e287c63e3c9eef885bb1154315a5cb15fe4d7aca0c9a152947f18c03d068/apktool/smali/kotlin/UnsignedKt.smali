.class public abstract Lkotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v0, p5

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v12, p10

    .line 16
    .line 17
    move/from16 v13, p11

    .line 18
    .line 19
    const v2, 0x2a3e8512

    .line 20
    .line 21
    .line 22
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v2, v13, 0x6

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x2

    .line 38
    :goto_0
    or-int/2addr v2, v13

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v13

    .line 41
    :goto_1
    and-int/lit8 v9, v13, 0x30

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    const/16 v9, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v9, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v2, v9

    .line 57
    :cond_3
    and-int/lit16 v9, v13, 0x180

    .line 58
    .line 59
    if-nez v9, :cond_6

    .line 60
    .line 61
    and-int/lit16 v9, v13, 0x200

    .line 62
    .line 63
    if-nez v9, :cond_4

    .line 64
    .line 65
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    :goto_3
    if-eqz v9, :cond_5

    .line 75
    .line 76
    const/16 v9, 0x100

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    const/16 v9, 0x80

    .line 80
    .line 81
    :goto_4
    or-int/2addr v2, v9

    .line 82
    :cond_6
    and-int/lit16 v9, v13, 0xc00

    .line 83
    .line 84
    if-nez v9, :cond_8

    .line 85
    .line 86
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_7

    .line 91
    .line 92
    const/16 v9, 0x800

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_7
    const/16 v9, 0x400

    .line 96
    .line 97
    :goto_5
    or-int/2addr v2, v9

    .line 98
    :cond_8
    and-int/lit16 v9, v13, 0x6000

    .line 99
    .line 100
    const/4 v10, 0x0

    .line 101
    if-nez v9, :cond_a

    .line 102
    .line 103
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_9

    .line 108
    .line 109
    const/16 v9, 0x4000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/16 v9, 0x2000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v2, v9

    .line 115
    :cond_a
    const/high16 v9, 0x30000

    .line 116
    .line 117
    and-int v18, v13, v9

    .line 118
    .line 119
    const/4 v15, 0x1

    .line 120
    move/from16 v19, v9

    .line 121
    .line 122
    if-nez v18, :cond_c

    .line 123
    .line 124
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 125
    .line 126
    .line 127
    move-result v18

    .line 128
    if-eqz v18, :cond_b

    .line 129
    .line 130
    const/high16 v18, 0x20000

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_b
    const/high16 v18, 0x10000

    .line 134
    .line 135
    :goto_7
    or-int v2, v2, v18

    .line 136
    .line 137
    :cond_c
    const/high16 v18, 0x180000

    .line 138
    .line 139
    and-int v20, v13, v18

    .line 140
    .line 141
    move-object/from16 v15, p4

    .line 142
    .line 143
    if-nez v20, :cond_e

    .line 144
    .line 145
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v22

    .line 149
    if-eqz v22, :cond_d

    .line 150
    .line 151
    const/high16 v22, 0x100000

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_d
    const/high16 v22, 0x80000

    .line 155
    .line 156
    :goto_8
    or-int v2, v2, v22

    .line 157
    .line 158
    :cond_e
    const/high16 v22, 0xc00000

    .line 159
    .line 160
    and-int v23, v13, v22

    .line 161
    .line 162
    if-nez v23, :cond_10

    .line 163
    .line 164
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 165
    .line 166
    .line 167
    move-result v23

    .line 168
    if-eqz v23, :cond_f

    .line 169
    .line 170
    const/high16 v23, 0x800000

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_f
    const/high16 v23, 0x400000

    .line 174
    .line 175
    :goto_9
    or-int v2, v2, v23

    .line 176
    .line 177
    :cond_10
    const/high16 v23, 0x6000000

    .line 178
    .line 179
    and-int v23, v13, v23

    .line 180
    .line 181
    move-object/from16 v9, p6

    .line 182
    .line 183
    if-nez v23, :cond_12

    .line 184
    .line 185
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v24

    .line 189
    if-eqz v24, :cond_11

    .line 190
    .line 191
    const/high16 v24, 0x4000000

    .line 192
    .line 193
    goto :goto_a

    .line 194
    :cond_11
    const/high16 v24, 0x2000000

    .line 195
    .line 196
    :goto_a
    or-int v2, v2, v24

    .line 197
    .line 198
    :cond_12
    const/high16 v24, 0x30000000

    .line 199
    .line 200
    and-int v24, v13, v24

    .line 201
    .line 202
    if-nez v24, :cond_14

    .line 203
    .line 204
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v24

    .line 208
    if-eqz v24, :cond_13

    .line 209
    .line 210
    const/high16 v24, 0x20000000

    .line 211
    .line 212
    goto :goto_b

    .line 213
    :cond_13
    const/high16 v24, 0x10000000

    .line 214
    .line 215
    :goto_b
    or-int v2, v2, v24

    .line 216
    .line 217
    :cond_14
    and-int/lit8 v24, p12, 0x6

    .line 218
    .line 219
    if-nez v24, :cond_16

    .line 220
    .line 221
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v24

    .line 225
    if-eqz v24, :cond_15

    .line 226
    .line 227
    const/16 v24, 0x4

    .line 228
    .line 229
    goto :goto_c

    .line 230
    :cond_15
    const/16 v24, 0x2

    .line 231
    .line 232
    :goto_c
    or-int v24, p12, v24

    .line 233
    .line 234
    goto :goto_d

    .line 235
    :cond_16
    move/from16 v24, p12

    .line 236
    .line 237
    :goto_d
    and-int/lit8 v25, p12, 0x30

    .line 238
    .line 239
    move-object/from16 v10, p9

    .line 240
    .line 241
    if-nez v25, :cond_18

    .line 242
    .line 243
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v26

    .line 247
    if-eqz v26, :cond_17

    .line 248
    .line 249
    const/16 v16, 0x20

    .line 250
    .line 251
    goto :goto_e

    .line 252
    :cond_17
    const/16 v16, 0x10

    .line 253
    .line 254
    :goto_e
    or-int v24, v24, v16

    .line 255
    .line 256
    :cond_18
    const v16, 0x12492493

    .line 257
    .line 258
    .line 259
    and-int v11, v2, v16

    .line 260
    .line 261
    const v5, 0x12492492

    .line 262
    .line 263
    .line 264
    const/16 v14, 0x12

    .line 265
    .line 266
    if-ne v11, v5, :cond_1a

    .line 267
    .line 268
    and-int/lit8 v5, v24, 0x13

    .line 269
    .line 270
    if-eq v5, v14, :cond_19

    .line 271
    .line 272
    goto :goto_f

    .line 273
    :cond_19
    const/4 v5, 0x0

    .line 274
    goto :goto_10

    .line 275
    :cond_1a
    :goto_f
    const/4 v5, 0x1

    .line 276
    :goto_10
    and-int/lit8 v11, v2, 0x1

    .line 277
    .line 278
    invoke-virtual {v12, v11, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_49

    .line 283
    .line 284
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 285
    .line 286
    .line 287
    and-int/lit8 v5, v13, 0x1

    .line 288
    .line 289
    if-eqz v5, :cond_1c

    .line 290
    .line 291
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_1b

    .line 296
    .line 297
    goto :goto_11

    .line 298
    :cond_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 299
    .line 300
    .line 301
    :cond_1c
    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 302
    .line 303
    .line 304
    shr-int/lit8 v27, v2, 0x3

    .line 305
    .line 306
    and-int/lit8 v28, v27, 0xe

    .line 307
    .line 308
    and-int/lit8 v5, v24, 0x70

    .line 309
    .line 310
    or-int v5, v28, v5

    .line 311
    .line 312
    invoke-static/range {p9 .. p10}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    and-int/lit8 v29, v5, 0xe

    .line 317
    .line 318
    move/from16 v30, v14

    .line 319
    .line 320
    const/16 v31, 0x6

    .line 321
    .line 322
    xor-int/lit8 v14, v29, 0x6

    .line 323
    .line 324
    move/from16 v29, v2

    .line 325
    .line 326
    const/4 v2, 0x4

    .line 327
    if-le v14, v2, :cond_1d

    .line 328
    .line 329
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v14

    .line 333
    if-nez v14, :cond_1e

    .line 334
    .line 335
    :cond_1d
    and-int/lit8 v5, v5, 0x6

    .line 336
    .line 337
    if-ne v5, v2, :cond_1f

    .line 338
    .line 339
    :cond_1e
    const/4 v2, 0x1

    .line 340
    goto :goto_12

    .line 341
    :cond_1f
    const/4 v2, 0x0

    .line 342
    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 347
    .line 348
    if-nez v2, :cond_20

    .line 349
    .line 350
    if-ne v5, v14, :cond_21

    .line 351
    .line 352
    :cond_20
    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 353
    .line 354
    new-instance v5, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 355
    .line 356
    const/4 v9, 0x2

    .line 357
    invoke-direct {v5, v11, v9}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 358
    .line 359
    .line 360
    sget-object v9, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Lcom/caverock/androidsvg/SVG;

    .line 361
    .line 362
    new-instance v9, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 363
    .line 364
    invoke-direct {v9, v5, v2}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 365
    .line 366
    .line 367
    new-instance v5, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 368
    .line 369
    move/from16 v11, v31

    .line 370
    .line 371
    invoke-direct {v5, v11, v9, v3}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    new-instance v9, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 375
    .line 376
    invoke-direct {v9, v5, v2}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 377
    .line 378
    .line 379
    new-instance v32, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    .line 380
    .line 381
    const/16 v33, 0x0

    .line 382
    .line 383
    const/16 v34, 0x2

    .line 384
    .line 385
    const-class v35, Landroidx/compose/runtime/State;

    .line 386
    .line 387
    const-string/jumbo v37, "value"

    .line 388
    .line 389
    .line 390
    const-string v38, "getValue()Ljava/lang/Object;"

    .line 391
    .line 392
    move-object/from16 v36, v9

    .line 393
    .line 394
    invoke-direct/range {v32 .. v38}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v5, v32

    .line 398
    .line 399
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_21
    check-cast v5, Lkotlin/reflect/KProperty0;

    .line 403
    .line 404
    shr-int/lit8 v2, v29, 0x9

    .line 405
    .line 406
    and-int/lit8 v2, v2, 0x70

    .line 407
    .line 408
    or-int v2, v28, v2

    .line 409
    .line 410
    and-int/lit8 v9, v2, 0xe

    .line 411
    .line 412
    const/16 v31, 0x6

    .line 413
    .line 414
    xor-int/lit8 v9, v9, 0x6

    .line 415
    .line 416
    const/4 v11, 0x4

    .line 417
    if-le v9, v11, :cond_22

    .line 418
    .line 419
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    if-nez v9, :cond_23

    .line 424
    .line 425
    :cond_22
    and-int/lit8 v9, v2, 0x6

    .line 426
    .line 427
    if-ne v9, v11, :cond_24

    .line 428
    .line 429
    :cond_23
    const/4 v9, 0x1

    .line 430
    goto :goto_13

    .line 431
    :cond_24
    const/4 v9, 0x0

    .line 432
    :goto_13
    and-int/lit8 v11, v2, 0x70

    .line 433
    .line 434
    xor-int/lit8 v11, v11, 0x30

    .line 435
    .line 436
    move/from16 v16, v2

    .line 437
    .line 438
    const/16 v2, 0x20

    .line 439
    .line 440
    if-le v11, v2, :cond_25

    .line 441
    .line 442
    const/4 v11, 0x0

    .line 443
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 444
    .line 445
    .line 446
    move-result v26

    .line 447
    if-nez v26, :cond_26

    .line 448
    .line 449
    :cond_25
    and-int/lit8 v11, v16, 0x30

    .line 450
    .line 451
    if-ne v11, v2, :cond_27

    .line 452
    .line 453
    :cond_26
    const/4 v11, 0x1

    .line 454
    goto :goto_14

    .line 455
    :cond_27
    const/4 v11, 0x0

    .line 456
    :goto_14
    or-int v2, v9, v11

    .line 457
    .line 458
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    if-nez v2, :cond_28

    .line 463
    .line 464
    if-ne v9, v14, :cond_29

    .line 465
    .line 466
    :cond_28
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    .line 467
    .line 468
    invoke-direct {v9, v3}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    :cond_29
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    .line 475
    .line 476
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    if-ne v2, v14, :cond_2a

    .line 481
    .line 482
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    :cond_2a
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 490
    .line 491
    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 492
    .line 493
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    check-cast v11, Landroidx/compose/ui/graphics/GraphicsContext;

    .line 498
    .line 499
    move-object/from16 v16, v2

    .line 500
    .line 501
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 502
    .line 503
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Ljava/lang/Boolean;

    .line 508
    .line 509
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-nez v2, :cond_2b

    .line 514
    .line 515
    sget-object v2, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 516
    .line 517
    goto :goto_15

    .line 518
    :cond_2b
    const/4 v2, 0x0

    .line 519
    :goto_15
    const v32, 0x7fff0

    .line 520
    .line 521
    .line 522
    and-int v32, v29, v32

    .line 523
    .line 524
    shl-int/lit8 v24, v24, 0x12

    .line 525
    .line 526
    const/high16 v30, 0x380000

    .line 527
    .line 528
    and-int v24, v24, v30

    .line 529
    .line 530
    or-int v24, v32, v24

    .line 531
    .line 532
    const/16 v31, 0x6

    .line 533
    .line 534
    shr-int/lit8 v29, v29, 0x6

    .line 535
    .line 536
    const/high16 v32, 0x1c00000

    .line 537
    .line 538
    and-int v29, v29, v32

    .line 539
    .line 540
    move-object/from16 v33, v2

    .line 541
    .line 542
    or-int v2, v24, v29

    .line 543
    .line 544
    and-int/lit8 v24, v2, 0x70

    .line 545
    .line 546
    move-object/from16 v29, v5

    .line 547
    .line 548
    xor-int/lit8 v5, v24, 0x30

    .line 549
    .line 550
    move-object/from16 v24, v9

    .line 551
    .line 552
    const/16 v9, 0x20

    .line 553
    .line 554
    if-le v5, v9, :cond_2c

    .line 555
    .line 556
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v5

    .line 560
    if-nez v5, :cond_2d

    .line 561
    .line 562
    :cond_2c
    and-int/lit8 v5, v2, 0x30

    .line 563
    .line 564
    if-ne v5, v9, :cond_2e

    .line 565
    .line 566
    :cond_2d
    const/4 v5, 0x1

    .line 567
    goto :goto_16

    .line 568
    :cond_2e
    const/4 v5, 0x0

    .line 569
    :goto_16
    and-int/lit16 v9, v2, 0x380

    .line 570
    .line 571
    xor-int/lit16 v9, v9, 0x180

    .line 572
    .line 573
    const/16 v3, 0x100

    .line 574
    .line 575
    if-le v9, v3, :cond_2f

    .line 576
    .line 577
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v9

    .line 581
    if-nez v9, :cond_30

    .line 582
    .line 583
    :cond_2f
    and-int/lit16 v9, v2, 0x180

    .line 584
    .line 585
    if-ne v9, v3, :cond_31

    .line 586
    .line 587
    :cond_30
    const/4 v3, 0x1

    .line 588
    goto :goto_17

    .line 589
    :cond_31
    const/4 v3, 0x0

    .line 590
    :goto_17
    or-int/2addr v3, v5

    .line 591
    and-int/lit16 v5, v2, 0x1c00

    .line 592
    .line 593
    xor-int/lit16 v5, v5, 0xc00

    .line 594
    .line 595
    const/16 v9, 0x800

    .line 596
    .line 597
    if-le v5, v9, :cond_32

    .line 598
    .line 599
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-nez v5, :cond_33

    .line 604
    .line 605
    :cond_32
    and-int/lit16 v5, v2, 0xc00

    .line 606
    .line 607
    if-ne v5, v9, :cond_34

    .line 608
    .line 609
    :cond_33
    const/4 v5, 0x1

    .line 610
    goto :goto_18

    .line 611
    :cond_34
    const/4 v5, 0x0

    .line 612
    :goto_18
    or-int/2addr v3, v5

    .line 613
    const v5, 0xe000

    .line 614
    .line 615
    .line 616
    and-int/2addr v5, v2

    .line 617
    xor-int/lit16 v5, v5, 0x6000

    .line 618
    .line 619
    const/16 v9, 0x4000

    .line 620
    .line 621
    if-le v5, v9, :cond_35

    .line 622
    .line 623
    const/4 v5, 0x0

    .line 624
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 625
    .line 626
    .line 627
    move-result v17

    .line 628
    if-nez v17, :cond_36

    .line 629
    .line 630
    goto :goto_19

    .line 631
    :cond_35
    const/4 v5, 0x0

    .line 632
    :goto_19
    and-int/lit16 v5, v2, 0x6000

    .line 633
    .line 634
    if-ne v5, v9, :cond_37

    .line 635
    .line 636
    :cond_36
    const/4 v5, 0x1

    .line 637
    goto :goto_1a

    .line 638
    :cond_37
    const/4 v5, 0x0

    .line 639
    :goto_1a
    or-int/2addr v3, v5

    .line 640
    const/high16 v5, 0x70000

    .line 641
    .line 642
    and-int/2addr v5, v2

    .line 643
    xor-int v5, v5, v19

    .line 644
    .line 645
    const/high16 v9, 0x20000

    .line 646
    .line 647
    if-le v5, v9, :cond_38

    .line 648
    .line 649
    const/4 v5, 0x1

    .line 650
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 651
    .line 652
    .line 653
    move-result v17

    .line 654
    if-nez v17, :cond_39

    .line 655
    .line 656
    :cond_38
    and-int v5, v2, v19

    .line 657
    .line 658
    if-ne v5, v9, :cond_3a

    .line 659
    .line 660
    :cond_39
    const/4 v5, 0x1

    .line 661
    goto :goto_1b

    .line 662
    :cond_3a
    const/4 v5, 0x0

    .line 663
    :goto_1b
    or-int/2addr v3, v5

    .line 664
    and-int v5, v2, v30

    .line 665
    .line 666
    xor-int v5, v5, v18

    .line 667
    .line 668
    const/high16 v9, 0x100000

    .line 669
    .line 670
    if-le v5, v9, :cond_3b

    .line 671
    .line 672
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    if-nez v5, :cond_3c

    .line 677
    .line 678
    :cond_3b
    and-int v5, v2, v18

    .line 679
    .line 680
    if-ne v5, v9, :cond_3d

    .line 681
    .line 682
    :cond_3c
    const/4 v5, 0x1

    .line 683
    goto :goto_1c

    .line 684
    :cond_3d
    const/4 v5, 0x0

    .line 685
    :goto_1c
    or-int/2addr v3, v5

    .line 686
    and-int v5, v2, v32

    .line 687
    .line 688
    xor-int v5, v5, v22

    .line 689
    .line 690
    const/high16 v9, 0x800000

    .line 691
    .line 692
    if-le v5, v9, :cond_3e

    .line 693
    .line 694
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    if-nez v5, :cond_3f

    .line 699
    .line 700
    :cond_3e
    and-int v2, v2, v22

    .line 701
    .line 702
    if-ne v2, v9, :cond_40

    .line 703
    .line 704
    :cond_3f
    const/4 v2, 0x1

    .line 705
    goto :goto_1d

    .line 706
    :cond_40
    const/4 v2, 0x0

    .line 707
    :goto_1d
    or-int/2addr v2, v3

    .line 708
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    or-int/2addr v2, v3

    .line 713
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    if-nez v2, :cond_42

    .line 718
    .line 719
    if-ne v3, v14, :cond_41

    .line 720
    .line 721
    goto :goto_1e

    .line 722
    :cond_41
    move-object v2, v3

    .line 723
    move-object/from16 v39, v24

    .line 724
    .line 725
    move-object/from16 v10, v29

    .line 726
    .line 727
    const/4 v13, 0x0

    .line 728
    const/16 v21, 0x1

    .line 729
    .line 730
    move-object/from16 v3, p1

    .line 731
    .line 732
    goto :goto_1f

    .line 733
    :cond_42
    :goto_1e
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    .line 734
    .line 735
    move-object/from16 v3, p1

    .line 736
    .line 737
    move-object v10, v11

    .line 738
    move-object/from16 v9, v16

    .line 739
    .line 740
    move-object/from16 v39, v24

    .line 741
    .line 742
    move-object/from16 v5, v29

    .line 743
    .line 744
    move-object/from16 v11, v33

    .line 745
    .line 746
    const/4 v13, 0x0

    .line 747
    const/16 v21, 0x1

    .line 748
    .line 749
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;)V

    .line 750
    .line 751
    .line 752
    move-object v10, v5

    .line 753
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    :goto_1f
    move-object v11, v2

    .line 757
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 758
    .line 759
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 760
    .line 761
    if-eqz v0, :cond_48

    .line 762
    .line 763
    const v2, 0x1a048e3

    .line 764
    .line 765
    .line 766
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 767
    .line 768
    .line 769
    const/16 v31, 0x6

    .line 770
    .line 771
    xor-int/lit8 v2, v28, 0x6

    .line 772
    .line 773
    const/4 v5, 0x4

    .line 774
    if-le v2, v5, :cond_43

    .line 775
    .line 776
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    if-nez v2, :cond_45

    .line 781
    .line 782
    :cond_43
    and-int/lit8 v2, v27, 0x6

    .line 783
    .line 784
    if-ne v2, v5, :cond_44

    .line 785
    .line 786
    goto :goto_20

    .line 787
    :cond_44
    move/from16 v21, v13

    .line 788
    .line 789
    :cond_45
    :goto_20
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    if-nez v21, :cond_46

    .line 794
    .line 795
    if-ne v2, v14, :cond_47

    .line 796
    .line 797
    :cond_46
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    .line 798
    .line 799
    invoke-direct {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 803
    .line 804
    .line 805
    :cond_47
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    .line 806
    .line 807
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 808
    .line 809
    invoke-static {v2, v5, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 814
    .line 815
    .line 816
    goto :goto_21

    .line 817
    :cond_48
    const v2, 0x1a4cdf0

    .line 818
    .line 819
    .line 820
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 824
    .line 825
    .line 826
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 827
    .line 828
    :goto_21
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 829
    .line 830
    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    iget-object v6, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 835
    .line 836
    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    move-object/from16 v9, v39

    .line 841
    .line 842
    invoke-static {v5, v10, v9, v4, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    invoke-interface {v5, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    iget-object v5, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 851
    .line 852
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 853
    .line 854
    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    iget-object v8, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 859
    .line 860
    const/4 v9, 0x0

    .line 861
    move-object/from16 v5, p6

    .line 862
    .line 863
    move v6, v0

    .line 864
    move-object v7, v15

    .line 865
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/ImageKt;->scrollableArea(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    move-object v8, v3

    .line 870
    iget-object v4, v8, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 871
    .line 872
    const/4 v7, 0x0

    .line 873
    move-object v3, v0

    .line 874
    move-object v2, v10

    .line 875
    move-object v5, v11

    .line 876
    move-object v6, v12

    .line 877
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/GapComposer;I)V

    .line 878
    .line 879
    .line 880
    goto :goto_22

    .line 881
    :cond_49
    move-object v8, v3

    .line 882
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 883
    .line 884
    .line 885
    :goto_22
    invoke-virtual/range {p10 .. p10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 886
    .line 887
    .line 888
    move-result-object v13

    .line 889
    if-eqz v13, :cond_4a

    .line 890
    .line 891
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;

    .line 892
    .line 893
    move-object/from16 v3, p2

    .line 894
    .line 895
    move-object/from16 v4, p3

    .line 896
    .line 897
    move-object/from16 v5, p4

    .line 898
    .line 899
    move/from16 v6, p5

    .line 900
    .line 901
    move-object/from16 v7, p6

    .line 902
    .line 903
    move-object/from16 v9, p8

    .line 904
    .line 905
    move-object/from16 v10, p9

    .line 906
    .line 907
    move/from16 v11, p11

    .line 908
    .line 909
    move/from16 v12, p12

    .line 910
    .line 911
    move-object v2, v8

    .line 912
    move-object/from16 v8, p7

    .line 913
    .line 914
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V

    .line 915
    .line 916
    .line 917
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 918
    .line 919
    :cond_4a
    return-void
.end method

.method public static final awaitStarted(Landroidx/lifecycle/LifecycleRegistry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lcoil3/util/LifecyclesKt$awaitStarted$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->label:I

    .line 30
    .line 31
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v4, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    iget-object v0, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->L$0:Landroidx/lifecycle/LifecycleRegistry;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 59
    .line 60
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    :try_start_1
    iput-object p0, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->L$0:Landroidx/lifecycle/LifecycleRegistry;

    .line 75
    .line 76
    iput-object p1, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 77
    .line 78
    iput v4, v0, Lcoil3/util/LifecyclesKt$awaitStarted$1;->label:I

    .line 79
    .line 80
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v2, v4, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcoil3/util/LifecyclesKt$awaitStarted$2$1;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Lcoil3/util/LifecyclesKt$awaitStarted$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-ne v0, v1, :cond_4

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_4
    move-object v0, p0

    .line 110
    move-object p0, p1

    .line 111
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    .line 114
    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_2
    return-object v3

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    move-object v5, v0

    .line 123
    move-object v0, p0

    .line 124
    move-object p0, p1

    .line 125
    move-object p1, v5

    .line 126
    :goto_3
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    .line 129
    .line 130
    if-eqz p0, :cond_6

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    throw p1
.end method

.method public static final computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J
    .locals 2

    .line 1
    sget-object v0, Lcoil3/size/Size;->ORIGINAL:Lcoil3/size/Size;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p2, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 11
    .line 12
    invoke-static {p0, p3}, Lkotlin/UnsignedKt;->toPx(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iget-object p1, p2, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 17
    .line 18
    invoke-static {p1, p3}, Lkotlin/UnsignedKt;->toPx(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    iget-object p2, p4, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 23
    .line 24
    iget-object p3, p4, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 25
    .line 26
    instance-of p4, p2, Lcoil3/size/Dimension$Pixels;

    .line 27
    .line 28
    const v0, 0x7fffffff

    .line 29
    .line 30
    .line 31
    const/high16 v1, -0x80000000

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    if-eq p0, v1, :cond_2

    .line 36
    .line 37
    if-ne p0, v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    check-cast p2, Lcoil3/size/Dimension$Pixels;

    .line 41
    .line 42
    iget p2, p2, Lcoil3/size/Dimension$Pixels;->px:I

    .line 43
    .line 44
    if-le p0, p2, :cond_2

    .line 45
    .line 46
    move p0, p2

    .line 47
    :cond_2
    :goto_1
    instance-of p2, p3, Lcoil3/size/Dimension$Pixels;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    if-eq p1, v1, :cond_4

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    check-cast p3, Lcoil3/size/Dimension$Pixels;

    .line 57
    .line 58
    iget p2, p3, Lcoil3/size/Dimension$Pixels;->px:I

    .line 59
    .line 60
    if-le p1, p2, :cond_4

    .line 61
    .line 62
    move p1, p2

    .line 63
    :cond_4
    :goto_2
    int-to-long p2, p0

    .line 64
    const/16 p0, 0x20

    .line 65
    .line 66
    shl-long/2addr p2, p0

    .line 67
    int-to-long p0, p1

    .line 68
    const-wide v0, 0xffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr p0, v0

    .line 74
    or-long/2addr p0, p2

    .line 75
    return-wide p0
.end method

.method public static final computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D
    .locals 5

    .line 1
    int-to-double v0, p2

    .line 2
    int-to-double v2, p0

    .line 3
    div-double/2addr v0, v2

    .line 4
    int-to-double p2, p3

    .line 5
    int-to-double p0, p1

    .line 6
    div-double/2addr p2, p0

    .line 7
    sget-object v4, Lcoil3/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    aget p4, v4, p4

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eq p4, v4, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-ne p4, v4, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 27
    .line 28
    .line 29
    const-wide/16 p0, 0x0

    .line 30
    .line 31
    return-wide p0

    .line 32
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    :goto_0
    iget-object p4, p5, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 37
    .line 38
    instance-of v0, p4, Lcoil3/size/Dimension$Pixels;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    check-cast p4, Lcoil3/size/Dimension$Pixels;

    .line 43
    .line 44
    iget p4, p4, Lcoil3/size/Dimension$Pixels;->px:I

    .line 45
    .line 46
    int-to-double v0, p4

    .line 47
    div-double/2addr v0, v2

    .line 48
    cmpl-double p4, p2, v0

    .line 49
    .line 50
    if-lez p4, :cond_2

    .line 51
    .line 52
    move-wide p2, v0

    .line 53
    :cond_2
    iget-object p4, p5, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 54
    .line 55
    instance-of p5, p4, Lcoil3/size/Dimension$Pixels;

    .line 56
    .line 57
    if-eqz p5, :cond_3

    .line 58
    .line 59
    check-cast p4, Lcoil3/size/Dimension$Pixels;

    .line 60
    .line 61
    iget p4, p4, Lcoil3/size/Dimension$Pixels;->px:I

    .line 62
    .line 63
    int-to-double p4, p4

    .line 64
    div-double/2addr p4, p0

    .line 65
    cmpl-double p0, p2, p4

    .line 66
    .line 67
    if-lez p0, :cond_3

    .line 68
    .line 69
    return-wide p4

    .line 70
    :cond_3
    return-wide p2
.end method

.method public static create(Landroid/content/Context;)Landroidx/emoji2/text/FontRequestEmojiCompatConfig;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28;

    .line 11
    .line 12
    invoke-direct {v0, v2, v3}, Landroidx/transition/Transition$1;-><init>(IZ)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroidx/transition/Transition$1;

    .line 17
    .line 18
    invoke-direct {v0, v2, v3}, Landroidx/transition/Transition$1;-><init>(IZ)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "Package manager required to locate emoji font provider"

    .line 26
    .line 27
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v4, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 33
    .line 34
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 57
    .line 58
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    and-int/2addr v6, v7

    .line 70
    if-ne v6, v7, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, v5

    .line 74
    :goto_1
    if-nez v4, :cond_3

    .line 75
    .line 76
    :goto_2
    move-object v6, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v8}, Landroidx/transition/Transition$1;->getSigningSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    array-length v2, v0

    .line 92
    :goto_3
    if-ge v3, v2, :cond_4

    .line 93
    .line 94
    aget-object v4, v0, v3

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    new-instance v6, Landroidx/core/provider/FontRequest;

    .line 111
    .line 112
    const-string v9, "emojicompat-emoji-font"

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-direct/range {v6 .. v12}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 122
    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_4
    if-nez v6, :cond_5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v5, Landroidx/emoji2/text/FontRequestEmojiCompatConfig;

    .line 131
    .line 132
    new-instance v0, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    .line 133
    .line 134
    invoke-direct {v0, p0, v6}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v5
.end method

.method public static final createUniqueRemoteUiName(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "appWidget-"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final fastCbrt(F)F
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0x1ffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x3

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    const v1, 0x2a510554

    .line 17
    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    mul-float v1, v0, v0

    .line 25
    .line 26
    div-float v1, p0, v1

    .line 27
    .line 28
    sub-float v1, v0, v1

    .line 29
    .line 30
    const v2, 0x3eaaaaab

    .line 31
    .line 32
    .line 33
    mul-float/2addr v1, v2

    .line 34
    sub-float/2addr v0, v1

    .line 35
    mul-float v1, v0, v0

    .line 36
    .line 37
    div-float/2addr p0, v1

    .line 38
    sub-float p0, v0, p0

    .line 39
    .line 40
    mul-float/2addr p0, v2

    .line 41
    sub-float/2addr v0, p0

    .line 42
    return v0
.end method

.method public static findAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 20
    .line 21
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 34
    .line 35
    return-object v0
.end method

.method public static final flatMapClassifierNamesOrNull(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 21
    .line 22
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getClassifierNames()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Iterable;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public static from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->inputTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->density:Landroidx/compose/ui/unit/DensityImpl;

    .line 24
    .line 25
    iget v1, v1, Landroidx/compose/ui/unit/DensityImpl;->density:F

    .line 26
    .line 27
    cmpg-float v0, v0, v1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 32
    .line 33
    if-ne p4, v0, :cond_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    sget-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->last:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->inputTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->density:Landroidx/compose/ui/unit/DensityImpl;

    .line 61
    .line 62
    iget v1, v1, Landroidx/compose/ui/unit/DensityImpl;->density:F

    .line 63
    .line 64
    cmpg-float v0, v0, v1

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 69
    .line 70
    if-ne p4, v0, :cond_1

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_1
    new-instance p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 74
    .line 75
    invoke-static {p2, p1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    new-instance v1, Landroidx/compose/ui/unit/DensityImpl;

    .line 88
    .line 89
    invoke-direct {v1, v0, p3}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, p2, v1, p4}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/DensityImpl;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 93
    .line 94
    .line 95
    sput-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->last:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 96
    .line 97
    return-object p0
.end method

.method public static fromJvmMemberSignature(Landroidx/work/Operation$State;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;
    .locals 3

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    .line 6
    .line 7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->name:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;->desc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;

    .line 32
    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;->desc:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x23

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    return-object p0
.end method

.method public static final getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcoil3/util/UtilsKt;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v5, 0x0

    .line 34
    const/16 v6, 0x3f

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Column \'"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, "\' does not exist. Available columns: ["

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 p0, 0x5d

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public static final getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public static final getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sparse-switch v1, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :sswitch_0
    const-string v1, "short"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 41
    .line 42
    return-object p0

    .line 43
    :sswitch_1
    const-string v1, "float"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 53
    .line 54
    return-object p0

    .line 55
    :sswitch_2
    const-string v1, "boolean"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 65
    .line 66
    return-object p0

    .line 67
    :sswitch_3
    const-string/jumbo v1, "void"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 78
    .line 79
    return-object p0

    .line 80
    :sswitch_4
    const-string v1, "long"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 90
    .line 91
    return-object p0

    .line 92
    :sswitch_5
    const-string v1, "char"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 102
    .line 103
    return-object p0

    .line 104
    :sswitch_6
    const-string v1, "byte"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 114
    .line 115
    return-object p0

    .line 116
    :sswitch_7
    const-string v1, "int"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_8

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 126
    .line 127
    return-object p0

    .line 128
    :sswitch_8
    const-string v1, "double"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_9

    .line 135
    .line 136
    :goto_0
    return-object p0

    .line 137
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 138
    .line 139
    return-object p0

    .line 140
    nop

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getJavaPrimitiveType(Lkotlin/reflect/KClass;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sparse-switch v0, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_0
    const-string v0, "java.lang.Double"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    return-object p0

    .line 42
    :sswitch_1
    const-string v0, "java.lang.Void"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    return-object p0

    .line 54
    :sswitch_2
    const-string v0, "java.lang.Long"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    return-object p0

    .line 66
    :sswitch_3
    const-string v0, "java.lang.Byte"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    return-object p0

    .line 78
    :sswitch_4
    const-string v0, "java.lang.Boolean"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    return-object p0

    .line 90
    :sswitch_5
    const-string v0, "java.lang.Character"

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    return-object p0

    .line 102
    :sswitch_6
    const-string v0, "java.lang.Short"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 112
    .line 113
    return-object p0

    .line 114
    :sswitch_7
    const-string v0, "java.lang.Float"

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_8

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 124
    .line 125
    return-object p0

    .line 126
    :sswitch_8
    const-string v0, "java.lang.Integer"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_9

    .line 133
    .line 134
    :goto_0
    const/4 p0, 0x0

    .line 135
    return-object p0

    .line 136
    :cond_9
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 137
    .line 138
    return-object p0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_8
        -0x1f76ce78 -> :sswitch_7
        -0x1ec16c58 -> :sswitch_6
        0x9415455 -> :sswitch_5
        0x148d6054 -> :sswitch_4
        0x17c0bc5c -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x17c9ace8 -> :sswitch_1
        0x2d605225 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/NullableSerializer;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/NullableSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static hasAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->findAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static indexOf(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_7

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq p0, v1, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-eq p0, v2, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p0, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    const/16 p0, 0x9

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    const-string/jumbo v0, "type needs to be >= FIRST and <= LAST, type="

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return p0

    .line 53
    :cond_1
    return v1

    .line 54
    :cond_2
    const/4 p0, 0x7

    .line 55
    return p0

    .line 56
    :cond_3
    const/4 p0, 0x6

    .line 57
    return p0

    .line 58
    :cond_4
    const/4 p0, 0x5

    .line 59
    return p0

    .line 60
    :cond_5
    return v0

    .line 61
    :cond_6
    const/4 p0, 0x3

    .line 62
    return p0

    .line 63
    :cond_7
    return v1

    .line 64
    :cond_8
    return v0

    .line 65
    :cond_9
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static isEditable(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static isNotTrailingByte(B)Z
    .locals 1

    .line 1
    const/16 v0, -0x41

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;
    .locals 1

    .line 1
    new-instance v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v0, p0}, Lkotlin/ExceptionsKt;->createCoroutineUnintercepted(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    return-object v0
.end method

.method public static final lerp(FFF)F
    .locals 1

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public static final lerp(IFI)I
    .locals 2

    .line 1
    sub-int/2addr p2, p0

    .line 2
    int-to-double v0, p2

    .line 3
    float-to-double p1, p1

    .line 4
    mul-double/2addr v0, p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    long-to-int p1, p1

    .line 10
    add-int/2addr p0, p1

    .line 11
    return p0
.end method

.method public static final painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 63

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/content/Context;

    .line 12
    .line 13
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/content/res/Resources;

    .line 20
    .line 21
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResourceIdCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/compose/ui/res/ResourceIdCache;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    :try_start_0
    iget-object v5, v4, Landroidx/compose/ui/res/ResourceIdCache;->resIdPathMap:Landroidx/collection/MutableIntObjectMap;

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/util/TypedValue;

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    new-instance v5, Landroid/util/TypedValue;

    .line 42
    .line 43
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v7, v4, Landroidx/compose/ui/res/ResourceIdCache;->resIdPathMap:Landroidx/collection/MutableIntObjectMap;

    .line 50
    .line 51
    invoke-virtual {v7, v0}, Landroidx/collection/MutableIntObjectMap;->findAbsoluteInsertIndex(I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-object v9, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v10, v9, v8

    .line 58
    .line 59
    iget-object v7, v7, Landroidx/collection/IntObjectMap;->keys:[I

    .line 60
    .line 61
    aput v0, v7, v8

    .line 62
    .line 63
    aput-object v5, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_29

    .line 68
    .line 69
    :cond_0
    :goto_0
    monitor-exit v4

    .line 70
    iget-object v4, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 71
    .line 72
    const/4 v11, 0x6

    .line 73
    const/4 v13, 0x0

    .line 74
    if-eqz v4, :cond_3e

    .line 75
    .line 76
    const-string v14, ".xml"

    .line 77
    .line 78
    invoke-static {v4, v14}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-ne v14, v6, :cond_3e

    .line 83
    .line 84
    const v4, -0x699b7fa2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget v4, v5, Landroid/util/TypedValue;->changingConfigurations:I

    .line 95
    .line 96
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Landroidx/compose/ui/res/ImageVectorCache;

    .line 103
    .line 104
    new-instance v14, Landroidx/compose/ui/res/ImageVectorCache$Key;

    .line 105
    .line 106
    invoke-direct {v14, v2, v0}, Landroidx/compose/ui/res/ImageVectorCache$Key;-><init>(Landroid/content/res/Resources$Theme;I)V

    .line 107
    .line 108
    .line 109
    iget-object v15, v5, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 116
    .line 117
    if-eqz v15, :cond_1

    .line 118
    .line 119
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    check-cast v15, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    const/4 v15, 0x0

    .line 127
    :goto_1
    if-nez v15, :cond_38

    .line 128
    .line 129
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    const-wide v16, 0xffffffffL

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    :goto_2
    const/4 v7, 0x2

    .line 143
    if-eq v15, v7, :cond_2

    .line 144
    .line 145
    if-eq v15, v6, :cond_2

    .line 146
    .line 147
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    goto :goto_2

    .line 152
    :cond_2
    if-ne v15, v7, :cond_37

    .line 153
    .line 154
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    const-string/jumbo v15, "vector"

    .line 159
    .line 160
    .line 161
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_36

    .line 166
    .line 167
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    new-instance v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    .line 172
    .line 173
    invoke-direct {v15, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 174
    .line 175
    .line 176
    const/16 v18, 0x20

    .line 177
    .line 178
    sget-object v9, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    .line 179
    .line 180
    invoke-static {v3, v2, v8, v9}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    const/16 v19, 0x0

    .line 185
    .line 186
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    invoke-virtual {v15, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 191
    .line 192
    .line 193
    const-string v12, "autoMirrored"

    .line 194
    .line 195
    invoke-static {v0, v12}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    const/4 v10, 0x5

    .line 200
    if-nez v12, :cond_3

    .line 201
    .line 202
    move/from16 v29, v13

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {v9, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    move/from16 v29, v12

    .line 210
    .line 211
    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    invoke-virtual {v15, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 216
    .line 217
    .line 218
    const-string/jumbo v12, "viewportWidth"

    .line 219
    .line 220
    .line 221
    const/4 v13, 0x7

    .line 222
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v15, v9, v12, v13, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 224
    .line 225
    .line 226
    move-result v24

    .line 227
    const-string/jumbo v12, "viewportHeight"

    .line 228
    .line 229
    .line 230
    const/16 v13, 0x8

    .line 231
    .line 232
    invoke-virtual {v15, v9, v12, v13, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 233
    .line 234
    .line 235
    move-result v25

    .line 236
    cmpg-float v12, v24, v10

    .line 237
    .line 238
    if-lez v12, :cond_35

    .line 239
    .line 240
    cmpg-float v12, v25, v10

    .line 241
    .line 242
    if-lez v12, :cond_34

    .line 243
    .line 244
    const/4 v12, 0x3

    .line 245
    invoke-virtual {v9, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 246
    .line 247
    .line 248
    move-result v21

    .line 249
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    invoke-virtual {v15, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    invoke-virtual {v15, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    if-eqz v10, :cond_6

    .line 272
    .line 273
    new-instance v10, Landroid/util/TypedValue;

    .line 274
    .line 275
    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9, v6, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 279
    .line 280
    .line 281
    iget v10, v10, Landroid/util/TypedValue;->type:I

    .line 282
    .line 283
    if-ne v10, v7, :cond_4

    .line 284
    .line 285
    sget-wide v22, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 286
    .line 287
    :goto_4
    move-wide/from16 v26, v22

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_4
    invoke-static {v9, v0, v2}, Landroidx/core/content/res/CamUtils;->getNamedColorStateList(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    invoke-virtual {v15, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 299
    .line 300
    .line 301
    if-eqz v10, :cond_5

    .line 302
    .line 303
    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 308
    .line 309
    .line 310
    move-result-wide v22

    .line 311
    goto :goto_4

    .line 312
    :cond_5
    sget-wide v22, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_6
    sget-wide v22, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :goto_5
    const/4 v7, -0x1

    .line 319
    invoke-virtual {v9, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 320
    .line 321
    .line 322
    move-result v10

    .line 323
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    invoke-virtual {v15, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 328
    .line 329
    .line 330
    const/16 v11, 0x9

    .line 331
    .line 332
    if-eq v10, v7, :cond_7

    .line 333
    .line 334
    if-eq v10, v12, :cond_9

    .line 335
    .line 336
    const/4 v7, 0x5

    .line 337
    if-eq v10, v7, :cond_7

    .line 338
    .line 339
    if-eq v10, v11, :cond_8

    .line 340
    .line 341
    packed-switch v10, :pswitch_data_0

    .line 342
    .line 343
    .line 344
    :cond_7
    const/16 v28, 0x5

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :pswitch_0
    const/16 v28, 0xc

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :pswitch_1
    const/16 v7, 0xe

    .line 351
    .line 352
    move/from16 v28, v7

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :pswitch_2
    const/16 v28, 0xd

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_8
    move/from16 v28, v11

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_9
    move/from16 v28, v12

    .line 362
    .line 363
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 368
    .line 369
    div-float v22, v21, v7

    .line 370
    .line 371
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 376
    .line 377
    div-float v23, v13, v7

    .line 378
    .line 379
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 380
    .line 381
    .line 382
    new-instance v21, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 383
    .line 384
    const/16 v30, 0x1

    .line 385
    .line 386
    invoke-direct/range {v21 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(FFFFJIZI)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v7, v21

    .line 390
    .line 391
    const/4 v9, 0x0

    .line 392
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-eq v10, v6, :cond_a

    .line 397
    .line 398
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    if-ge v10, v6, :cond_b

    .line 403
    .line 404
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-ne v10, v12, :cond_b

    .line 409
    .line 410
    :cond_a
    move/from16 v24, v4

    .line 411
    .line 412
    goto/16 :goto_24

    .line 413
    .line 414
    :cond_b
    const-string v10, "group"

    .line 415
    .line 416
    sget-object v47, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 417
    .line 418
    const-string v13, ""

    .line 419
    .line 420
    iget-object v11, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 421
    .line 422
    move/from16 v22, v6

    .line 423
    .line 424
    iget-object v6, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->pathParser:Landroidx/paging/HintHandler;

    .line 425
    .line 426
    move-object/from16 v23, v0

    .line 427
    .line 428
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    move/from16 v24, v4

    .line 433
    .line 434
    const/4 v4, 0x2

    .line 435
    if-eq v0, v4, :cond_10

    .line 436
    .line 437
    if-eq v0, v12, :cond_d

    .line 438
    .line 439
    :cond_c
    move/from16 v26, v9

    .line 440
    .line 441
    move/from16 v25, v12

    .line 442
    .line 443
    const/16 v12, 0x9

    .line 444
    .line 445
    :goto_8
    const/16 v33, 0x2

    .line 446
    .line 447
    const/16 v37, -0x1

    .line 448
    .line 449
    goto/16 :goto_22

    .line 450
    .line 451
    :cond_d
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_c

    .line 460
    .line 461
    add-int/lit8 v9, v9, 0x1

    .line 462
    .line 463
    const/4 v0, 0x0

    .line 464
    :goto_9
    if-ge v0, v9, :cond_f

    .line 465
    .line 466
    iget-object v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 467
    .line 468
    iget-boolean v6, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 469
    .line 470
    if-eqz v6, :cond_e

    .line 471
    .line 472
    const-string v6, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 473
    .line 474
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    add-int/lit8 v6, v6, -0x1

    .line 482
    .line 483
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    check-cast v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 488
    .line 489
    move/from16 v10, v22

    .line 490
    .line 491
    invoke-static {v10, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    check-cast v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 496
    .line 497
    iget-object v4, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    .line 498
    .line 499
    new-instance v38, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 500
    .line 501
    iget-object v10, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    .line 502
    .line 503
    iget v11, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    .line 504
    .line 505
    iget v13, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    .line 506
    .line 507
    iget v12, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    .line 508
    .line 509
    move/from16 v26, v0

    .line 510
    .line 511
    iget v0, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    .line 512
    .line 513
    move/from16 v43, v0

    .line 514
    .line 515
    iget v0, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    .line 516
    .line 517
    move/from16 v44, v0

    .line 518
    .line 519
    iget v0, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    .line 520
    .line 521
    move/from16 v45, v0

    .line 522
    .line 523
    iget v0, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    .line 524
    .line 525
    move/from16 v46, v0

    .line 526
    .line 527
    iget-object v0, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    .line 528
    .line 529
    iget-object v6, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    .line 530
    .line 531
    move-object/from16 v47, v0

    .line 532
    .line 533
    move-object/from16 v48, v6

    .line 534
    .line 535
    move-object/from16 v39, v10

    .line 536
    .line 537
    move/from16 v40, v11

    .line 538
    .line 539
    move/from16 v42, v12

    .line 540
    .line 541
    move/from16 v41, v13

    .line 542
    .line 543
    invoke-direct/range {v38 .. v48}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 544
    .line 545
    .line 546
    move-object/from16 v0, v38

    .line 547
    .line 548
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    add-int/lit8 v0, v26, 0x1

    .line 552
    .line 553
    const/4 v12, 0x3

    .line 554
    const/16 v22, 0x1

    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_f
    move/from16 v25, v12

    .line 558
    .line 559
    const/4 v9, 0x0

    .line 560
    const/16 v12, 0x9

    .line 561
    .line 562
    :goto_a
    const/16 v33, 0x2

    .line 563
    .line 564
    const/16 v37, -0x1

    .line 565
    .line 566
    goto/16 :goto_23

    .line 567
    .line 568
    :cond_10
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    if-eqz v0, :cond_30

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    const v12, -0x624e8b7e

    .line 579
    .line 580
    .line 581
    if-eq v4, v12, :cond_2b

    .line 582
    .line 583
    const v12, 0x346425

    .line 584
    .line 585
    .line 586
    move/from16 v26, v9

    .line 587
    .line 588
    const/high16 v9, 0x3f800000    # 1.0f

    .line 589
    .line 590
    if-eq v4, v12, :cond_15

    .line 591
    .line 592
    const v6, 0x5e0f67f

    .line 593
    .line 594
    .line 595
    if-eq v4, v6, :cond_11

    .line 596
    .line 597
    :goto_b
    const/16 v12, 0x9

    .line 598
    .line 599
    const/16 v25, 0x3

    .line 600
    .line 601
    goto/16 :goto_8

    .line 602
    .line 603
    :cond_11
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-nez v0, :cond_12

    .line 608
    .line 609
    :goto_c
    goto :goto_b

    .line 610
    :cond_12
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    .line 611
    .line 612
    invoke-static {v3, v2, v8, v0}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 621
    .line 622
    .line 623
    const-string v4, "rotation"

    .line 624
    .line 625
    const/4 v6, 0x5

    .line 626
    const/4 v10, 0x0

    .line 627
    invoke-virtual {v15, v0, v4, v6, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 628
    .line 629
    .line 630
    move-result v40

    .line 631
    const/4 v4, 0x1

    .line 632
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 633
    .line 634
    .line 635
    move-result v41

    .line 636
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 641
    .line 642
    .line 643
    const/4 v4, 0x2

    .line 644
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 645
    .line 646
    .line 647
    move-result v42

    .line 648
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 653
    .line 654
    .line 655
    const-string v4, "scaleX"

    .line 656
    .line 657
    const/4 v6, 0x3

    .line 658
    invoke-virtual {v15, v0, v4, v6, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 659
    .line 660
    .line 661
    move-result v43

    .line 662
    const-string v4, "scaleY"

    .line 663
    .line 664
    const/4 v6, 0x4

    .line 665
    invoke-virtual {v15, v0, v4, v6, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 666
    .line 667
    .line 668
    move-result v44

    .line 669
    const-string/jumbo v4, "translateX"

    .line 670
    .line 671
    .line 672
    const/4 v6, 0x6

    .line 673
    invoke-virtual {v15, v0, v4, v6, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 674
    .line 675
    .line 676
    move-result v45

    .line 677
    const-string/jumbo v4, "translateY"

    .line 678
    .line 679
    .line 680
    const/4 v6, 0x7

    .line 681
    invoke-virtual {v15, v0, v4, v6, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 682
    .line 683
    .line 684
    move-result v46

    .line 685
    const/4 v4, 0x0

    .line 686
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 695
    .line 696
    .line 697
    if-nez v6, :cond_13

    .line 698
    .line 699
    move-object/from16 v39, v13

    .line 700
    .line 701
    goto :goto_d

    .line 702
    :cond_13
    move-object/from16 v39, v6

    .line 703
    .line 704
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 705
    .line 706
    .line 707
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 708
    .line 709
    iget-boolean v0, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 710
    .line 711
    if-eqz v0, :cond_14

    .line 712
    .line 713
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 714
    .line 715
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    :cond_14
    new-instance v38, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 719
    .line 720
    const/16 v48, 0x200

    .line 721
    .line 722
    invoke-direct/range {v38 .. v48}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 723
    .line 724
    .line 725
    move-object/from16 v0, v38

    .line 726
    .line 727
    iget-object v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 728
    .line 729
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move/from16 v9, v26

    .line 733
    .line 734
    const/16 v12, 0x9

    .line 735
    .line 736
    const/16 v25, 0x3

    .line 737
    .line 738
    goto/16 :goto_a

    .line 739
    .line 740
    :cond_15
    const-string v4, "path"

    .line 741
    .line 742
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    if-nez v0, :cond_16

    .line 747
    .line 748
    goto/16 :goto_c

    .line 749
    .line 750
    :cond_16
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    .line 751
    .line 752
    invoke-static {v3, v2, v8, v0}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 757
    .line 758
    .line 759
    move-result v4

    .line 760
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 761
    .line 762
    .line 763
    const-string v4, "pathData"

    .line 764
    .line 765
    const-string v10, "http://schemas.android.com/apk/res/android"

    .line 766
    .line 767
    invoke-interface {v11, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    if-eqz v4, :cond_2a

    .line 772
    .line 773
    const/4 v4, 0x0

    .line 774
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v10

    .line 778
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 783
    .line 784
    .line 785
    if-nez v10, :cond_17

    .line 786
    .line 787
    move-object/from16 v49, v13

    .line 788
    .line 789
    :goto_e
    const/4 v4, 0x2

    .line 790
    goto :goto_f

    .line 791
    :cond_17
    move-object/from16 v49, v10

    .line 792
    .line 793
    goto :goto_e

    .line 794
    :goto_f
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v10

    .line 798
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 803
    .line 804
    .line 805
    if-nez v10, :cond_18

    .line 806
    .line 807
    sget v4, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 808
    .line 809
    :goto_10
    move-object/from16 v50, v47

    .line 810
    .line 811
    goto :goto_11

    .line 812
    :cond_18
    invoke-static {v6, v10}, Landroidx/paging/HintHandler;->pathStringToNodes$default(Landroidx/paging/HintHandler;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 813
    .line 814
    .line 815
    move-result-object v47

    .line 816
    goto :goto_10

    .line 817
    :goto_11
    const-string v4, "fillColor"

    .line 818
    .line 819
    iget-object v6, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 820
    .line 821
    const/4 v10, 0x1

    .line 822
    invoke-static {v0, v6, v2, v4, v10}, Landroidx/core/content/res/CamUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lokhttp3/internal/http/StatusLine;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 827
    .line 828
    .line 829
    move-result v6

    .line 830
    invoke-virtual {v15, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 831
    .line 832
    .line 833
    const-string v6, "fillAlpha"

    .line 834
    .line 835
    const/16 v10, 0xc

    .line 836
    .line 837
    invoke-virtual {v15, v0, v6, v10, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 838
    .line 839
    .line 840
    move-result v53

    .line 841
    const-string v6, "strokeLineCap"

    .line 842
    .line 843
    iget-object v11, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 844
    .line 845
    invoke-static {v11, v6}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 846
    .line 847
    .line 848
    move-result v6

    .line 849
    if-nez v6, :cond_19

    .line 850
    .line 851
    const/4 v6, -0x1

    .line 852
    const/16 v11, 0x8

    .line 853
    .line 854
    goto :goto_12

    .line 855
    :cond_19
    const/4 v6, -0x1

    .line 856
    const/16 v11, 0x8

    .line 857
    .line 858
    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 859
    .line 860
    .line 861
    move-result v12

    .line 862
    move v6, v12

    .line 863
    :goto_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 864
    .line 865
    .line 866
    move-result v12

    .line 867
    invoke-virtual {v15, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 868
    .line 869
    .line 870
    if-eqz v6, :cond_1a

    .line 871
    .line 872
    const/4 v12, 0x1

    .line 873
    if-eq v6, v12, :cond_1c

    .line 874
    .line 875
    const/4 v12, 0x2

    .line 876
    if-eq v6, v12, :cond_1b

    .line 877
    .line 878
    :cond_1a
    const/16 v57, 0x0

    .line 879
    .line 880
    goto :goto_13

    .line 881
    :cond_1b
    const/16 v57, 0x2

    .line 882
    .line 883
    goto :goto_13

    .line 884
    :cond_1c
    const/16 v57, 0x1

    .line 885
    .line 886
    :goto_13
    const-string v6, "strokeLineJoin"

    .line 887
    .line 888
    iget-object v12, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 889
    .line 890
    invoke-static {v12, v6}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 891
    .line 892
    .line 893
    move-result v6

    .line 894
    if-nez v6, :cond_1d

    .line 895
    .line 896
    const/16 v12, 0x9

    .line 897
    .line 898
    const/4 v13, -0x1

    .line 899
    goto :goto_14

    .line 900
    :cond_1d
    const/4 v6, -0x1

    .line 901
    const/16 v12, 0x9

    .line 902
    .line 903
    invoke-virtual {v0, v12, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 904
    .line 905
    .line 906
    move-result v13

    .line 907
    :goto_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 908
    .line 909
    .line 910
    move-result v6

    .line 911
    invoke-virtual {v15, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 912
    .line 913
    .line 914
    if-eqz v13, :cond_20

    .line 915
    .line 916
    const/4 v6, 0x1

    .line 917
    if-eq v13, v6, :cond_1f

    .line 918
    .line 919
    const/4 v6, 0x2

    .line 920
    if-eq v13, v6, :cond_1e

    .line 921
    .line 922
    :goto_15
    const/16 v58, 0x0

    .line 923
    .line 924
    goto :goto_16

    .line 925
    :cond_1e
    move/from16 v58, v6

    .line 926
    .line 927
    goto :goto_16

    .line 928
    :cond_1f
    const/4 v6, 0x2

    .line 929
    const/16 v58, 0x1

    .line 930
    .line 931
    goto :goto_16

    .line 932
    :cond_20
    const/4 v6, 0x2

    .line 933
    goto :goto_15

    .line 934
    :goto_16
    const-string v13, "strokeMiterLimit"

    .line 935
    .line 936
    const/16 v6, 0xa

    .line 937
    .line 938
    const/high16 v10, 0x40800000    # 4.0f

    .line 939
    .line 940
    invoke-virtual {v15, v0, v13, v6, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 941
    .line 942
    .line 943
    move-result v59

    .line 944
    const-string v6, "strokeColor"

    .line 945
    .line 946
    iget-object v10, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 947
    .line 948
    const/4 v13, 0x3

    .line 949
    invoke-static {v0, v10, v2, v6, v13}, Landroidx/core/content/res/CamUtils;->getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lokhttp3/internal/http/StatusLine;

    .line 950
    .line 951
    .line 952
    move-result-object v6

    .line 953
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 954
    .line 955
    .line 956
    move-result v10

    .line 957
    invoke-virtual {v15, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 958
    .line 959
    .line 960
    const-string v10, "strokeAlpha"

    .line 961
    .line 962
    const/16 v11, 0xb

    .line 963
    .line 964
    invoke-virtual {v15, v0, v10, v11, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 965
    .line 966
    .line 967
    move-result v55

    .line 968
    const-string v10, "strokeWidth"

    .line 969
    .line 970
    const/4 v11, 0x4

    .line 971
    invoke-virtual {v15, v0, v10, v11, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 972
    .line 973
    .line 974
    move-result v56

    .line 975
    const-string/jumbo v10, "trimPathEnd"

    .line 976
    .line 977
    .line 978
    const/4 v11, 0x6

    .line 979
    invoke-virtual {v15, v0, v10, v11, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 980
    .line 981
    .line 982
    move-result v61

    .line 983
    const-string/jumbo v9, "trimPathOffset"

    .line 984
    .line 985
    .line 986
    const/4 v10, 0x7

    .line 987
    const/4 v11, 0x0

    .line 988
    invoke-virtual {v15, v0, v9, v10, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 989
    .line 990
    .line 991
    move-result v62

    .line 992
    const-string/jumbo v9, "trimPathStart"

    .line 993
    .line 994
    .line 995
    const/4 v10, 0x5

    .line 996
    invoke-virtual {v15, v0, v9, v10, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getNamedFloat(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 997
    .line 998
    .line 999
    move-result v60

    .line 1000
    const-string v9, "fillType"

    .line 1001
    .line 1002
    iget-object v10, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 1003
    .line 1004
    invoke-static {v10, v9}, Landroidx/core/content/res/CamUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v9

    .line 1008
    if-nez v9, :cond_21

    .line 1009
    .line 1010
    const/16 v10, 0xd

    .line 1011
    .line 1012
    const/16 v21, 0x0

    .line 1013
    .line 1014
    goto :goto_17

    .line 1015
    :cond_21
    const/4 v9, 0x0

    .line 1016
    const/16 v10, 0xd

    .line 1017
    .line 1018
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1019
    .line 1020
    .line 1021
    move-result v21

    .line 1022
    :goto_17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1023
    .line 1024
    .line 1025
    move-result v9

    .line 1026
    invoke-virtual {v15, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v4, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast v0, Landroid/graphics/Shader;

    .line 1035
    .line 1036
    if-eqz v0, :cond_22

    .line 1037
    .line 1038
    goto :goto_18

    .line 1039
    :cond_22
    iget v9, v4, Lokhttp3/internal/http/StatusLine;->code:I

    .line 1040
    .line 1041
    if-eqz v9, :cond_24

    .line 1042
    .line 1043
    :goto_18
    if-eqz v0, :cond_23

    .line 1044
    .line 1045
    new-instance v4, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 1046
    .line 1047
    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 1048
    .line 1049
    .line 1050
    move-object/from16 v52, v4

    .line 1051
    .line 1052
    goto :goto_19

    .line 1053
    :cond_23
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 1054
    .line 1055
    iget v4, v4, Lokhttp3/internal/http/StatusLine;->code:I

    .line 1056
    .line 1057
    invoke-static {v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 1058
    .line 1059
    .line 1060
    move-result-wide v10

    .line 1061
    invoke-direct {v0, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1062
    .line 1063
    .line 1064
    move-object/from16 v52, v0

    .line 1065
    .line 1066
    goto :goto_19

    .line 1067
    :cond_24
    move-object/from16 v52, v19

    .line 1068
    .line 1069
    :goto_19
    iget-object v0, v6, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 1070
    .line 1071
    check-cast v0, Landroid/graphics/Shader;

    .line 1072
    .line 1073
    if-eqz v0, :cond_25

    .line 1074
    .line 1075
    goto :goto_1a

    .line 1076
    :cond_25
    iget v4, v6, Lokhttp3/internal/http/StatusLine;->code:I

    .line 1077
    .line 1078
    if-eqz v4, :cond_27

    .line 1079
    .line 1080
    :goto_1a
    if-eqz v0, :cond_26

    .line 1081
    .line 1082
    new-instance v4, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 1083
    .line 1084
    invoke-direct {v4, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 1085
    .line 1086
    .line 1087
    :goto_1b
    move-object/from16 v54, v4

    .line 1088
    .line 1089
    goto :goto_1c

    .line 1090
    :cond_26
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    .line 1091
    .line 1092
    iget v0, v6, Lokhttp3/internal/http/StatusLine;->code:I

    .line 1093
    .line 1094
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 1095
    .line 1096
    .line 1097
    move-result-wide v9

    .line 1098
    invoke-direct {v4, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_1b

    .line 1102
    :cond_27
    move-object/from16 v54, v19

    .line 1103
    .line 1104
    :goto_1c
    if-nez v21, :cond_28

    .line 1105
    .line 1106
    const/16 v51, 0x0

    .line 1107
    .line 1108
    goto :goto_1d

    .line 1109
    :cond_28
    const/16 v51, 0x1

    .line 1110
    .line 1111
    :goto_1d
    iget-boolean v0, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 1112
    .line 1113
    if-eqz v0, :cond_29

    .line 1114
    .line 1115
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 1116
    .line 1117
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    :cond_29
    iget-object v0, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 1121
    .line 1122
    const/4 v10, 0x1

    .line 1123
    invoke-static {v10, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 1128
    .line 1129
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    .line 1130
    .line 1131
    new-instance v48, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 1132
    .line 1133
    invoke-direct/range {v48 .. v62}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    .line 1134
    .line 1135
    .line 1136
    move-object/from16 v4, v48

    .line 1137
    .line 1138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    move/from16 v25, v13

    .line 1142
    .line 1143
    move/from16 v9, v26

    .line 1144
    .line 1145
    goto/16 :goto_a

    .line 1146
    .line 1147
    :cond_2a
    const-string v0, "No path data available"

    .line 1148
    .line 1149
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    return-object v19

    .line 1153
    :cond_2b
    move/from16 v26, v9

    .line 1154
    .line 1155
    const/16 v12, 0x9

    .line 1156
    .line 1157
    const/16 v25, 0x3

    .line 1158
    .line 1159
    const/16 v33, 0x2

    .line 1160
    .line 1161
    const/16 v37, -0x1

    .line 1162
    .line 1163
    const-string v4, "clip-path"

    .line 1164
    .line 1165
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-nez v0, :cond_2c

    .line 1170
    .line 1171
    goto :goto_22

    .line 1172
    :cond_2c
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    .line 1173
    .line 1174
    invoke-static {v3, v2, v8, v0}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1179
    .line 1180
    .line 1181
    move-result v4

    .line 1182
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1183
    .line 1184
    .line 1185
    const/4 v4, 0x0

    .line 1186
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v9

    .line 1190
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1191
    .line 1192
    .line 1193
    move-result v4

    .line 1194
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1195
    .line 1196
    .line 1197
    if-nez v9, :cond_2d

    .line 1198
    .line 1199
    move-object/from16 v49, v13

    .line 1200
    .line 1201
    :goto_1e
    const/4 v10, 0x1

    .line 1202
    goto :goto_1f

    .line 1203
    :cond_2d
    move-object/from16 v49, v9

    .line 1204
    .line 1205
    goto :goto_1e

    .line 1206
    :goto_1f
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v4

    .line 1210
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1211
    .line 1212
    .line 1213
    move-result v9

    .line 1214
    invoke-virtual {v15, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->updateConfig(I)V

    .line 1215
    .line 1216
    .line 1217
    if-nez v4, :cond_2e

    .line 1218
    .line 1219
    sget v4, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 1220
    .line 1221
    :goto_20
    move-object/from16 v57, v47

    .line 1222
    .line 1223
    goto :goto_21

    .line 1224
    :cond_2e
    invoke-static {v6, v4}, Landroidx/paging/HintHandler;->pathStringToNodes$default(Landroidx/paging/HintHandler;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v47

    .line 1228
    goto :goto_20

    .line 1229
    :goto_21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1230
    .line 1231
    .line 1232
    iget-boolean v0, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 1233
    .line 1234
    if-eqz v0, :cond_2f

    .line 1235
    .line 1236
    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 1237
    .line 1238
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    :cond_2f
    new-instance v48, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 1242
    .line 1243
    const/16 v58, 0x200

    .line 1244
    .line 1245
    const/16 v50, 0x0

    .line 1246
    .line 1247
    const/16 v51, 0x0

    .line 1248
    .line 1249
    const/16 v52, 0x0

    .line 1250
    .line 1251
    const/high16 v53, 0x3f800000    # 1.0f

    .line 1252
    .line 1253
    const/high16 v54, 0x3f800000    # 1.0f

    .line 1254
    .line 1255
    const/16 v55, 0x0

    .line 1256
    .line 1257
    const/16 v56, 0x0

    .line 1258
    .line 1259
    invoke-direct/range {v48 .. v58}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;I)V

    .line 1260
    .line 1261
    .line 1262
    move-object/from16 v0, v48

    .line 1263
    .line 1264
    iget-object v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 1265
    .line 1266
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    add-int/lit8 v9, v26, 0x1

    .line 1270
    .line 1271
    goto :goto_23

    .line 1272
    :cond_30
    move/from16 v26, v9

    .line 1273
    .line 1274
    goto/16 :goto_b

    .line 1275
    .line 1276
    :goto_22
    move/from16 v9, v26

    .line 1277
    .line 1278
    :goto_23
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1279
    .line 1280
    .line 1281
    move v11, v12

    .line 1282
    move-object/from16 v0, v23

    .line 1283
    .line 1284
    move/from16 v4, v24

    .line 1285
    .line 1286
    move/from16 v12, v25

    .line 1287
    .line 1288
    const/4 v6, 0x1

    .line 1289
    goto/16 :goto_7

    .line 1290
    .line 1291
    :goto_24
    iget v0, v15, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->config:I

    .line 1292
    .line 1293
    or-int v0, v24, v0

    .line 1294
    .line 1295
    new-instance v15, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 1296
    .line 1297
    iget-object v2, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 1298
    .line 1299
    const-string v3, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 1300
    .line 1301
    iget-boolean v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 1302
    .line 1303
    if-eqz v4, :cond_31

    .line 1304
    .line 1305
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1306
    .line 1307
    .line 1308
    :cond_31
    :goto_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1309
    .line 1310
    .line 1311
    move-result v4

    .line 1312
    const/4 v10, 0x1

    .line 1313
    if-le v4, v10, :cond_33

    .line 1314
    .line 1315
    iget-boolean v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 1316
    .line 1317
    if-eqz v4, :cond_32

    .line 1318
    .line 1319
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1323
    .line 1324
    .line 1325
    move-result v4

    .line 1326
    sub-int/2addr v4, v10

    .line 1327
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v4

    .line 1331
    check-cast v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 1332
    .line 1333
    invoke-static {v10, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v6

    .line 1337
    check-cast v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 1338
    .line 1339
    iget-object v6, v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    .line 1340
    .line 1341
    new-instance v31, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 1342
    .line 1343
    iget-object v8, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    .line 1344
    .line 1345
    iget v9, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    .line 1346
    .line 1347
    iget v10, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    .line 1348
    .line 1349
    iget v11, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    .line 1350
    .line 1351
    iget v12, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    .line 1352
    .line 1353
    iget v13, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    .line 1354
    .line 1355
    move-object/from16 v20, v2

    .line 1356
    .line 1357
    iget v2, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    .line 1358
    .line 1359
    move/from16 v38, v2

    .line 1360
    .line 1361
    iget v2, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    .line 1362
    .line 1363
    move/from16 v39, v2

    .line 1364
    .line 1365
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    .line 1366
    .line 1367
    iget-object v4, v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    .line 1368
    .line 1369
    move-object/from16 v40, v2

    .line 1370
    .line 1371
    move-object/from16 v41, v4

    .line 1372
    .line 1373
    move-object/from16 v32, v8

    .line 1374
    .line 1375
    move/from16 v33, v9

    .line 1376
    .line 1377
    move/from16 v34, v10

    .line 1378
    .line 1379
    move/from16 v35, v11

    .line 1380
    .line 1381
    move/from16 v36, v12

    .line 1382
    .line 1383
    move/from16 v37, v13

    .line 1384
    .line 1385
    invoke-direct/range {v31 .. v41}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 1386
    .line 1387
    .line 1388
    move-object/from16 v2, v31

    .line 1389
    .line 1390
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-object/from16 v2, v20

    .line 1394
    .line 1395
    goto :goto_25

    .line 1396
    :cond_33
    new-instance v31, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1397
    .line 1398
    iget-object v2, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    .line 1399
    .line 1400
    iget v3, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    .line 1401
    .line 1402
    iget v4, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    .line 1403
    .line 1404
    iget v6, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    .line 1405
    .line 1406
    iget v8, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    .line 1407
    .line 1408
    iget-object v9, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 1409
    .line 1410
    new-instance v32, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 1411
    .line 1412
    iget-object v10, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    .line 1413
    .line 1414
    iget v11, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    .line 1415
    .line 1416
    iget v12, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    .line 1417
    .line 1418
    iget v13, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    .line 1419
    .line 1420
    move-object/from16 v20, v2

    .line 1421
    .line 1422
    iget v2, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    .line 1423
    .line 1424
    move/from16 v37, v2

    .line 1425
    .line 1426
    iget v2, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    .line 1427
    .line 1428
    move/from16 v38, v2

    .line 1429
    .line 1430
    iget v2, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    .line 1431
    .line 1432
    move/from16 v39, v2

    .line 1433
    .line 1434
    iget v2, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    .line 1435
    .line 1436
    move/from16 v40, v2

    .line 1437
    .line 1438
    iget-object v2, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    .line 1439
    .line 1440
    iget-object v9, v9, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/ArrayList;

    .line 1441
    .line 1442
    move-object/from16 v41, v2

    .line 1443
    .line 1444
    move-object/from16 v42, v9

    .line 1445
    .line 1446
    move-object/from16 v33, v10

    .line 1447
    .line 1448
    move/from16 v34, v11

    .line 1449
    .line 1450
    move/from16 v35, v12

    .line 1451
    .line 1452
    move/from16 v36, v13

    .line 1453
    .line 1454
    invoke-direct/range {v32 .. v42}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/ArrayList;)V

    .line 1455
    .line 1456
    .line 1457
    iget-wide v9, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    .line 1458
    .line 1459
    iget v2, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    .line 1460
    .line 1461
    iget-boolean v11, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    .line 1462
    .line 1463
    move/from16 v40, v2

    .line 1464
    .line 1465
    move/from16 v33, v3

    .line 1466
    .line 1467
    move/from16 v34, v4

    .line 1468
    .line 1469
    move/from16 v35, v6

    .line 1470
    .line 1471
    move/from16 v36, v8

    .line 1472
    .line 1473
    move-wide/from16 v38, v9

    .line 1474
    .line 1475
    move/from16 v41, v11

    .line 1476
    .line 1477
    move-object/from16 v37, v32

    .line 1478
    .line 1479
    move-object/from16 v32, v20

    .line 1480
    .line 1481
    invoke-direct/range {v31 .. v41}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZ)V

    .line 1482
    .line 1483
    .line 1484
    move-object/from16 v2, v31

    .line 1485
    .line 1486
    const/4 v10, 0x1

    .line 1487
    iput-boolean v10, v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 1488
    .line 1489
    invoke-direct {v15, v2, v0}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    .line 1490
    .line 1491
    .line 1492
    iget-object v0, v5, Landroidx/compose/ui/res/ImageVectorCache;->map:Ljava/util/HashMap;

    .line 1493
    .line 1494
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 1495
    .line 1496
    invoke-direct {v2, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    goto :goto_26

    .line 1503
    :cond_34
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1504
    .line 1505
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v1

    .line 1509
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    .line 1517
    const-string v1, "<VectorGraphic> tag requires viewportHeight > 0"

    .line 1518
    .line 1519
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v1

    .line 1526
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    throw v0

    .line 1530
    :cond_35
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1531
    .line 1532
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v1

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    const-string v1, "<VectorGraphic> tag requires viewportWidth > 0"

    .line 1545
    .line 1546
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v1

    .line 1553
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    throw v0

    .line 1557
    :cond_36
    const/16 v19, 0x0

    .line 1558
    .line 1559
    const-string v0, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP"

    .line 1560
    .line 1561
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    return-object v19

    .line 1565
    :cond_37
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1566
    .line 1567
    const-string v1, "No start tag found"

    .line 1568
    .line 1569
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    throw v0

    .line 1573
    :cond_38
    const-wide v16, 0xffffffffL

    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    const/16 v18, 0x20

    .line 1579
    .line 1580
    const/16 v19, 0x0

    .line 1581
    .line 1582
    :goto_26
    iget-object v0, v15, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1583
    .line 1584
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1585
    .line 1586
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v2

    .line 1590
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 1591
    .line 1592
    iget v3, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->genId:I

    .line 1593
    .line 1594
    int-to-float v3, v3

    .line 1595
    invoke-interface {v2}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 1596
    .line 1597
    .line 1598
    move-result v4

    .line 1599
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1600
    .line 1601
    .line 1602
    move-result v3

    .line 1603
    int-to-long v5, v3

    .line 1604
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1605
    .line 1606
    .line 1607
    move-result v3

    .line 1608
    int-to-long v3, v3

    .line 1609
    shl-long v5, v5, v18

    .line 1610
    .line 1611
    and-long v3, v3, v16

    .line 1612
    .line 1613
    or-long/2addr v3, v5

    .line 1614
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v4

    .line 1622
    if-nez v3, :cond_39

    .line 1623
    .line 1624
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1625
    .line 1626
    if-ne v4, v3, :cond_3d

    .line 1627
    .line 1628
    :cond_39
    new-instance v3, Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 1629
    .line 1630
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    .line 1631
    .line 1632
    .line 1633
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->root:Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 1634
    .line 1635
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/vector/PathParserKt;->createGroupComponent(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    .line 1636
    .line 1637
    .line 1638
    iget v4, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultWidth:F

    .line 1639
    .line 1640
    iget v5, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->defaultHeight:F

    .line 1641
    .line 1642
    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 1643
    .line 1644
    .line 1645
    move-result v4

    .line 1646
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 1647
    .line 1648
    .line 1649
    move-result v2

    .line 1650
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1651
    .line 1652
    .line 1653
    move-result v4

    .line 1654
    int-to-long v4, v4

    .line 1655
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1656
    .line 1657
    .line 1658
    move-result v2

    .line 1659
    int-to-long v6, v2

    .line 1660
    shl-long v4, v4, v18

    .line 1661
    .line 1662
    and-long v6, v6, v16

    .line 1663
    .line 1664
    or-long/2addr v4, v6

    .line 1665
    iget v2, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportWidth:F

    .line 1666
    .line 1667
    iget v6, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->viewportHeight:F

    .line 1668
    .line 1669
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v7

    .line 1673
    if-eqz v7, :cond_3a

    .line 1674
    .line 1675
    shr-long v7, v4, v18

    .line 1676
    .line 1677
    long-to-int v2, v7

    .line 1678
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1679
    .line 1680
    .line 1681
    move-result v2

    .line 1682
    :cond_3a
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 1683
    .line 1684
    .line 1685
    move-result v7

    .line 1686
    if-eqz v7, :cond_3b

    .line 1687
    .line 1688
    and-long v6, v4, v16

    .line 1689
    .line 1690
    long-to-int v6, v6

    .line 1691
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1692
    .line 1693
    .line 1694
    move-result v6

    .line 1695
    :cond_3b
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1696
    .line 1697
    .line 1698
    move-result v2

    .line 1699
    int-to-long v7, v2

    .line 1700
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1701
    .line 1702
    .line 1703
    move-result v2

    .line 1704
    int-to-long v9, v2

    .line 1705
    shl-long v6, v7, v18

    .line 1706
    .line 1707
    and-long v9, v9, v16

    .line 1708
    .line 1709
    or-long/2addr v6, v9

    .line 1710
    new-instance v2, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 1711
    .line 1712
    invoke-direct {v2, v3}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    .line 1713
    .line 1714
    .line 1715
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->name:Ljava/lang/String;

    .line 1716
    .line 1717
    iget-wide v8, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintColor:J

    .line 1718
    .line 1719
    iget v10, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->tintBlendMode:I

    .line 1720
    .line 1721
    const-wide/16 v11, 0x10

    .line 1722
    .line 1723
    cmp-long v11, v8, v11

    .line 1724
    .line 1725
    if-eqz v11, :cond_3c

    .line 1726
    .line 1727
    new-instance v12, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1728
    .line 1729
    invoke-direct {v12, v8, v9, v10}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JI)V

    .line 1730
    .line 1731
    .line 1732
    goto :goto_27

    .line 1733
    :cond_3c
    move-object/from16 v12, v19

    .line 1734
    .line 1735
    :goto_27
    iget-boolean v0, v0, Landroidx/compose/ui/graphics/vector/ImageVector;->autoMirror:Z

    .line 1736
    .line 1737
    iget-object v8, v2, Landroidx/compose/ui/graphics/vector/VectorPainter;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1738
    .line 1739
    new-instance v9, Landroidx/compose/ui/geometry/Size;

    .line 1740
    .line 1741
    invoke-direct {v9, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1745
    .line 1746
    .line 1747
    iget-object v4, v2, Landroidx/compose/ui/graphics/vector/VectorPainter;->autoMirror$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1748
    .line 1749
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v0

    .line 1753
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1754
    .line 1755
    .line 1756
    iget-object v0, v2, Landroidx/compose/ui/graphics/vector/VectorPainter;->vector:Landroidx/compose/ui/graphics/vector/VectorComponent;

    .line 1757
    .line 1758
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->intrinsicColorFilter$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1759
    .line 1760
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1761
    .line 1762
    .line 1763
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->viewportSize$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1764
    .line 1765
    new-instance v5, Landroidx/compose/ui/geometry/Size;

    .line 1766
    .line 1767
    invoke-direct {v5, v6, v7}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1771
    .line 1772
    .line 1773
    iput-object v3, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->name:Ljava/lang/String;

    .line 1774
    .line 1775
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1776
    .line 1777
    .line 1778
    move-object v4, v2

    .line 1779
    :cond_3d
    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 1780
    .line 1781
    const/4 v9, 0x0

    .line 1782
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1783
    .line 1784
    .line 1785
    return-object v4

    .line 1786
    :cond_3e
    move v10, v6

    .line 1787
    const-wide v16, 0xffffffffL

    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    const/16 v18, 0x20

    .line 1793
    .line 1794
    const/16 v19, 0x0

    .line 1795
    .line 1796
    const v5, -0x69992078

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1800
    .line 1801
    .line 1802
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v2

    .line 1806
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1807
    .line 1808
    .line 1809
    move-result v5

    .line 1810
    and-int/lit8 v6, p1, 0xe

    .line 1811
    .line 1812
    const/16 v34, 0x6

    .line 1813
    .line 1814
    xor-int/lit8 v6, v6, 0x6

    .line 1815
    .line 1816
    const/4 v11, 0x4

    .line 1817
    if-le v6, v11, :cond_3f

    .line 1818
    .line 1819
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1820
    .line 1821
    .line 1822
    move-result v6

    .line 1823
    if-nez v6, :cond_40

    .line 1824
    .line 1825
    :cond_3f
    and-int/lit8 v6, p1, 0x6

    .line 1826
    .line 1827
    if-ne v6, v11, :cond_41

    .line 1828
    .line 1829
    :cond_40
    move v6, v10

    .line 1830
    goto :goto_28

    .line 1831
    :cond_41
    const/4 v6, 0x0

    .line 1832
    :goto_28
    or-int/2addr v5, v6

    .line 1833
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v2

    .line 1837
    or-int/2addr v2, v5

    .line 1838
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v5

    .line 1842
    if-nez v2, :cond_42

    .line 1843
    .line 1844
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1845
    .line 1846
    if-ne v5, v2, :cond_43

    .line 1847
    .line 1848
    :cond_42
    move-object/from16 v2, v19

    .line 1849
    .line 1850
    :try_start_1
    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1855
    .line 1856
    .line 1857
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1858
    .line 1859
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v0

    .line 1863
    new-instance v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1864
    .line 1865
    invoke-direct {v5, v0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1866
    .line 1867
    .line 1868
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1869
    .line 1870
    .line 1871
    :cond_43
    check-cast v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 1872
    .line 1873
    new-instance v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 1874
    .line 1875
    iget-object v2, v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1876
    .line 1877
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1878
    .line 1879
    .line 1880
    move-result v2

    .line 1881
    iget-object v3, v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 1882
    .line 1883
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1884
    .line 1885
    .line 1886
    move-result v3

    .line 1887
    int-to-long v6, v2

    .line 1888
    shl-long v6, v6, v18

    .line 1889
    .line 1890
    int-to-long v2, v3

    .line 1891
    and-long v2, v2, v16

    .line 1892
    .line 1893
    or-long/2addr v2, v6

    .line 1894
    invoke-direct {v0, v5, v2, v3}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;J)V

    .line 1895
    .line 1896
    .line 1897
    const/4 v4, 0x0

    .line 1898
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1899
    .line 1900
    .line 1901
    return-object v0

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    new-instance v1, Lcoil3/network/HttpException;

    .line 1904
    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1906
    .line 1907
    const-string v3, "Error attempting to load resource: "

    .line 1908
    .line 1909
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1910
    .line 1911
    .line 1912
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v2

    .line 1919
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1920
    .line 1921
    .line 1922
    throw v1

    .line 1923
    :goto_29
    monitor-exit v4

    .line 1924
    throw v0

    .line 1925
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final resolveBulletTextUnitToPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F
    .locals 4

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return p2

    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide v2, 0x100000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    const-wide v2, 0x200000000L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    mul-float/2addr p0, p2

    .line 46
    return p0

    .line 47
    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 48
    .line 49
    return p0
.end method

.method public static final resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-double v0, v0

    .line 21
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpl-double v0, v0, v2

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p3, p2}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    div-float/2addr p0, p1

    .line 43
    :goto_0
    mul-float/2addr p0, p2

    .line 44
    return p0

    .line 45
    :cond_0
    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    const-wide v2, 0x200000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 67
    .line 68
    return p0
.end method

.method public static roundToInt(D)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmpl-double v0, p0, v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    const p0, 0x7fffffff

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    .line 21
    .line 22
    cmpg-double v0, p0, v0

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    const/high16 p0, -0x80000000

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    long-to-int p0, p0

    .line 34
    return p0

    .line 35
    :cond_2
    const-string p0, "Cannot round NaN value."

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static roundToInt(F)I
    .locals 1

    .line 42
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Cannot round NaN value."

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static roundToLong(D)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0

    .line 12
    :cond_0
    const-string p0, "Cannot round NaN value."

    .line 13
    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 p0, 0x0

    .line 18
    .line 19
    return-wide p0
.end method

.method public static final setColor-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x10

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x21

    .line 17
    .line 18
    invoke-interface {p0, v0, p3, p4, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x21

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 19
    .line 20
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-wide v4, 0x200000000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p3, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public static final setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    new-array p1, p1, [Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Ljava/util/Locale;

    .line 52
    .line 53
    array-length v0, p1

    .line 54
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [Ljava/util/Locale;

    .line 59
    .line 60
    invoke-static {p1}, Lorg/wikipedia/util/GeoUtil$$ExternalSyntheticApiModelOutline0;->m([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lorg/wikipedia/util/GeoUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    sget-object p1, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_1
    new-instance v0, Landroid/text/style/LocaleSpan;

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 95
    .line 96
    .line 97
    move-object p1, v0

    .line 98
    :goto_2
    const/16 v0, 0x21

    .line 99
    .line 100
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public static final setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 8
    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    .line 11
    aget-object p0, v2, p0

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->objects:I

    .line 14
    .line 15
    sub-int/2addr v1, p0

    .line 16
    add-int/2addr v1, p1

    .line 17
    aput-object p2, v0, v1

    .line 18
    .line 19
    return-void
.end method

.method public static final setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, -0x1

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->objects:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 15
    .line 16
    add-int/2addr p1, v0

    .line 17
    aput-object p2, p0, p1

    .line 18
    .line 19
    add-int/2addr v0, p3

    .line 20
    aput-object p4, p0, v0

    .line 21
    .line 22
    return-void
.end method

.method public static toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v0, v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    const-string p0, "bitmap is null"

    .line 63
    .line 64
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 79
    .line 80
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    .line 86
    invoke-static {v0, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    invoke-virtual {p0, v7, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    .line 98
    .line 99
    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    .line 107
    .line 108
    return-object v6
.end method

.method public static final toDescriptorVisibility(Landroidx/appcompat/view/ActionMode;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities;->visibilitiesMapping:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->toDescriptorVisibility(Landroidx/appcompat/view/ActionMode;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    return-object v0
.end method

.method public static toPx(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lcoil3/size/Dimension$Pixels;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcoil3/size/Dimension$Pixels;

    .line 6
    .line 7
    iget p0, p0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object p0, Lcoil3/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget p0, p0, p1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    if-eq p0, p1, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    if-ne p0, p1, :cond_1

    .line 23
    .line 24
    const p0, 0x7fffffff

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_2
    const/high16 p0, -0x80000000

    .line 34
    .line 35
    return p0
.end method

.method public static final toStringAsFixed(F)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "NaN"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    cmpg-float p0, p0, v0

    .line 18
    .line 19
    if-gez p0, :cond_1

    .line 20
    .line 21
    const-string p0, "-Infinity"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "Infinity"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 34
    .line 35
    int-to-double v3, v0

    .line 36
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    double-to-float v1, v1

    .line 41
    mul-float/2addr p0, v1

    .line 42
    float-to-int v2, p0

    .line 43
    int-to-float v3, v2

    .line 44
    sub-float/2addr p0, v3

    .line 45
    const/high16 v3, 0x3f000000    # 0.5f

    .line 46
    .line 47
    cmpl-float p0, p0, v3

    .line 48
    .line 49
    if-ltz p0, :cond_3

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    :cond_3
    int-to-float p0, v2

    .line 54
    div-float/2addr p0, v1

    .line 55
    if-lez v0, :cond_4

    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_4
    float-to-int p0, p0

    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static final ulongToDouble(J)D
    .locals 4

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
    .line 5
    long-to-double v0, v0

    .line 6
    const-wide/high16 v2, 0x40a0000000000000L    # 2048.0

    .line 7
    .line 8
    mul-double/2addr v0, v2

    .line 9
    const-wide/16 v2, 0x7ff

    .line 10
    .line 11
    and-long/2addr p0, v2

    .line 12
    long-to-double p0, p0

    .line 13
    add-double/2addr v0, p0

    .line 14
    return-wide v0
.end method

.method public static final ulongToString(JI)Ljava/lang/String;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    ushr-long v1, p0, v0

    .line 20
    .line 21
    int-to-long v3, p2

    .line 22
    div-long/2addr v1, v3

    .line 23
    shl-long v0, v1, v0

    .line 24
    .line 25
    mul-long v5, v0, v3

    .line 26
    .line 27
    sub-long/2addr p0, v5

    .line 28
    cmp-long v2, p0, v3

    .line 29
    .line 30
    if-ltz v2, :cond_1

    .line 31
    .line 32
    sub-long/2addr p0, v3

    .line 33
    const-wide/16 v2, 0x1

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    :cond_1
    invoke-static {p2}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcoil3/util/UtilsKt;->checkRadix(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static updateBounds$default(Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/GapComposer;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    instance-of p2, p1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move-object p2, p1

    .line 8
    check-cast p2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p2, Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;->INSTANCE:Landroidx/lifecycle/viewmodel/internal/DefaultViewModelProviderFactory;

    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance p4, Lcoil3/ImageLoader$Builder;

    .line 31
    .line 32
    invoke-direct {p4, p1, p2, p3}, Lcoil3/ImageLoader$Builder;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string p2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p4, p1, p0}, Lcoil3/ImageLoader$Builder;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method


# virtual methods
.method public canReverse()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract createKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.end method

.method public abstract createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/TypeBase;)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.end method

.method public reverse()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
