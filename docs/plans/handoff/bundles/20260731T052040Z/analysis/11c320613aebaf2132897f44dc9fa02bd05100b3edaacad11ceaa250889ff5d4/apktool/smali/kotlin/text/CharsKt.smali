.class public abstract Lkotlin/text/CharsKt;
.super Ljava/lang/Object;


# direct methods
.method public static final LazyList(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V
    .locals 38

    .line 1
    move/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    move-object/from16 v1, p6

    .line 10
    .line 11
    move-object/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v9, p9

    .line 14
    .line 15
    move-object/from16 v12, p10

    .line 16
    .line 17
    move/from16 v13, p11

    .line 18
    .line 19
    move-object/from16 v14, p7

    .line 20
    .line 21
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    const v0, 0x37213af3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v0, v10, 0x6

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    :goto_0
    or-int/2addr v0, v10

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v10

    .line 45
    :goto_1
    and-int/lit8 v5, v10, 0x30

    .line 46
    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    const/16 v5, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v5, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v5

    .line 61
    :cond_3
    and-int/lit16 v5, v10, 0x180

    .line 62
    .line 63
    if-nez v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    const/16 v5, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/16 v5, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v0, v5

    .line 77
    :cond_5
    and-int/lit16 v5, v10, 0xc00

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    const/16 v16, 0x400

    .line 81
    .line 82
    if-nez v5, :cond_7

    .line 83
    .line 84
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_6

    .line 89
    .line 90
    const/16 v5, 0x800

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move/from16 v5, v16

    .line 94
    .line 95
    :goto_4
    or-int/2addr v0, v5

    .line 96
    :cond_7
    and-int/lit16 v5, v10, 0x6000

    .line 97
    .line 98
    const/4 v8, 0x1

    .line 99
    if-nez v5, :cond_9

    .line 100
    .line 101
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_8

    .line 106
    .line 107
    const/16 v5, 0x4000

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_8
    const/16 v5, 0x2000

    .line 111
    .line 112
    :goto_5
    or-int/2addr v0, v5

    .line 113
    :cond_9
    const/high16 v5, 0x30000

    .line 114
    .line 115
    and-int/2addr v5, v10

    .line 116
    if-nez v5, :cond_b

    .line 117
    .line 118
    move-object/from16 v5, p3

    .line 119
    .line 120
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v18

    .line 124
    if-eqz v18, :cond_a

    .line 125
    .line 126
    const/high16 v18, 0x20000

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_a
    const/high16 v18, 0x10000

    .line 130
    .line 131
    :goto_6
    or-int v0, v0, v18

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    move-object/from16 v5, p3

    .line 135
    .line 136
    :goto_7
    const/high16 v18, 0x180000

    .line 137
    .line 138
    and-int v19, v10, v18

    .line 139
    .line 140
    if-nez v19, :cond_d

    .line 141
    .line 142
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 143
    .line 144
    .line 145
    move-result v19

    .line 146
    if-eqz v19, :cond_c

    .line 147
    .line 148
    const/high16 v19, 0x100000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_c
    const/high16 v19, 0x80000

    .line 152
    .line 153
    :goto_8
    or-int v0, v0, v19

    .line 154
    .line 155
    :cond_d
    const/high16 v19, 0xc00000

    .line 156
    .line 157
    and-int v20, v10, v19

    .line 158
    .line 159
    move-object/from16 v6, p2

    .line 160
    .line 161
    if-nez v20, :cond_f

    .line 162
    .line 163
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v21

    .line 167
    if-eqz v21, :cond_e

    .line 168
    .line 169
    const/high16 v21, 0x800000

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_e
    const/high16 v21, 0x400000

    .line 173
    .line 174
    :goto_9
    or-int v0, v0, v21

    .line 175
    .line 176
    :cond_f
    const/high16 v21, 0x6000000

    .line 177
    .line 178
    and-int v22, v10, v21

    .line 179
    .line 180
    if-nez v22, :cond_10

    .line 181
    .line 182
    const/high16 v22, 0x2000000

    .line 183
    .line 184
    or-int v0, v0, v22

    .line 185
    .line 186
    :cond_10
    const/high16 v22, 0x30000000

    .line 187
    .line 188
    and-int v23, v10, v22

    .line 189
    .line 190
    if-nez v23, :cond_12

    .line 191
    .line 192
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v23

    .line 196
    if-eqz v23, :cond_11

    .line 197
    .line 198
    const/high16 v23, 0x20000000

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_11
    const/high16 v23, 0x10000000

    .line 202
    .line 203
    :goto_a
    or-int v0, v0, v23

    .line 204
    .line 205
    :cond_12
    and-int/lit8 v23, v11, 0x6

    .line 206
    .line 207
    if-nez v23, :cond_14

    .line 208
    .line 209
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v23

    .line 213
    if-eqz v23, :cond_13

    .line 214
    .line 215
    const/16 v23, 0x4

    .line 216
    .line 217
    goto :goto_b

    .line 218
    :cond_13
    const/16 v23, 0x2

    .line 219
    .line 220
    :goto_b
    or-int v23, v11, v23

    .line 221
    .line 222
    move/from16 v3, v23

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_14
    move v3, v11

    .line 226
    :goto_c
    or-int/lit16 v3, v3, 0x1b0

    .line 227
    .line 228
    and-int/lit16 v8, v11, 0xc00

    .line 229
    .line 230
    if-nez v8, :cond_16

    .line 231
    .line 232
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_15

    .line 237
    .line 238
    const/16 v16, 0x800

    .line 239
    .line 240
    :cond_15
    or-int v3, v3, v16

    .line 241
    .line 242
    :cond_16
    const v8, 0x12492493

    .line 243
    .line 244
    .line 245
    and-int/2addr v8, v0

    .line 246
    const v15, 0x12492492

    .line 247
    .line 248
    .line 249
    if-ne v8, v15, :cond_18

    .line 250
    .line 251
    and-int/lit16 v8, v3, 0x493

    .line 252
    .line 253
    const/16 v15, 0x492

    .line 254
    .line 255
    if-eq v8, v15, :cond_17

    .line 256
    .line 257
    goto :goto_d

    .line 258
    :cond_17
    const/4 v8, 0x0

    .line 259
    goto :goto_e

    .line 260
    :cond_18
    :goto_d
    const/4 v8, 0x1

    .line 261
    :goto_e
    and-int/lit8 v15, v0, 0x1

    .line 262
    .line 263
    invoke-virtual {v14, v15, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-eqz v8, :cond_48

    .line 268
    .line 269
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 270
    .line 271
    .line 272
    and-int/lit8 v8, v10, 0x1

    .line 273
    .line 274
    const v15, -0xe000001

    .line 275
    .line 276
    .line 277
    if-eqz v8, :cond_1a

    .line 278
    .line 279
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_19

    .line 284
    .line 285
    goto :goto_f

    .line 286
    :cond_19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    .line 288
    .line 289
    :cond_1a
    :goto_f
    and-int/2addr v0, v15

    .line 290
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 291
    .line 292
    .line 293
    shr-int/lit8 v15, v0, 0x3

    .line 294
    .line 295
    and-int/lit8 v8, v15, 0xe

    .line 296
    .line 297
    shr-int/lit8 v26, v3, 0x6

    .line 298
    .line 299
    and-int/lit8 v26, v26, 0x70

    .line 300
    .line 301
    or-int v26, v8, v26

    .line 302
    .line 303
    move/from16 v27, v0

    .line 304
    .line 305
    invoke-static {v12, v14}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    and-int/lit8 v28, v26, 0xe

    .line 310
    .line 311
    move/from16 v29, v3

    .line 312
    .line 313
    xor-int/lit8 v3, v28, 0x6

    .line 314
    .line 315
    const/4 v5, 0x4

    .line 316
    if-le v3, v5, :cond_1b

    .line 317
    .line 318
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_1c

    .line 323
    .line 324
    :cond_1b
    and-int/lit8 v3, v26, 0x6

    .line 325
    .line 326
    if-ne v3, v5, :cond_1d

    .line 327
    .line 328
    :cond_1c
    const/4 v3, 0x1

    .line 329
    goto :goto_10

    .line 330
    :cond_1d
    const/4 v3, 0x0

    .line 331
    :goto_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 336
    .line 337
    if-nez v3, :cond_1f

    .line 338
    .line 339
    if-ne v5, v10, :cond_1e

    .line 340
    .line 341
    goto :goto_11

    .line 342
    :cond_1e
    move/from16 v26, v8

    .line 343
    .line 344
    goto :goto_12

    .line 345
    :cond_1f
    :goto_11
    new-instance v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 346
    .line 347
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 348
    .line 349
    .line 350
    new-instance v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 351
    .line 352
    const v6, 0x7fffffff

    .line 353
    .line 354
    .line 355
    invoke-direct {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 356
    .line 357
    .line 358
    iput-object v5, v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 359
    .line 360
    new-instance v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 361
    .line 362
    invoke-direct {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 363
    .line 364
    .line 365
    iput-object v5, v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 366
    .line 367
    sget-object v5, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 368
    .line 369
    new-instance v6, Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;

    .line 370
    .line 371
    move/from16 v26, v8

    .line 372
    .line 373
    const/4 v8, 0x1

    .line 374
    invoke-direct {v6, v0, v8}, Lnet/newpipe/app/screen/about/LicensePageKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 375
    .line 376
    .line 377
    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-instance v6, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 382
    .line 383
    const/4 v8, 0x2

    .line 384
    invoke-direct {v6, v8, v0, v1, v3}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 388
    .line 389
    .line 390
    move-result-object v34

    .line 391
    new-instance v30, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 392
    .line 393
    const/16 v31, 0x0

    .line 394
    .line 395
    const/16 v32, 0x1

    .line 396
    .line 397
    const-class v33, Landroidx/compose/runtime/State;

    .line 398
    .line 399
    const-string/jumbo v35, "value"

    .line 400
    .line 401
    .line 402
    const-string v36, "getValue()Ljava/lang/Object;"

    .line 403
    .line 404
    invoke-direct/range {v30 .. v36}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v5, v30

    .line 408
    .line 409
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :goto_12
    move-object v0, v5

    .line 413
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 414
    .line 415
    shr-int/lit8 v3, v27, 0x9

    .line 416
    .line 417
    and-int/lit8 v5, v3, 0x70

    .line 418
    .line 419
    or-int v5, v26, v5

    .line 420
    .line 421
    and-int/lit8 v6, v5, 0xe

    .line 422
    .line 423
    xor-int/lit8 v6, v6, 0x6

    .line 424
    .line 425
    const/4 v8, 0x4

    .line 426
    if-le v6, v8, :cond_20

    .line 427
    .line 428
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    if-nez v6, :cond_21

    .line 433
    .line 434
    :cond_20
    and-int/lit8 v6, v5, 0x6

    .line 435
    .line 436
    if-ne v6, v8, :cond_22

    .line 437
    .line 438
    :cond_21
    const/4 v6, 0x1

    .line 439
    goto :goto_13

    .line 440
    :cond_22
    const/4 v6, 0x0

    .line 441
    :goto_13
    and-int/lit8 v8, v5, 0x70

    .line 442
    .line 443
    xor-int/lit8 v8, v8, 0x30

    .line 444
    .line 445
    move-object/from16 v24, v0

    .line 446
    .line 447
    const/16 v0, 0x20

    .line 448
    .line 449
    if-le v8, v0, :cond_23

    .line 450
    .line 451
    const/4 v8, 0x1

    .line 452
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 453
    .line 454
    .line 455
    move-result v17

    .line 456
    if-nez v17, :cond_24

    .line 457
    .line 458
    :cond_23
    and-int/lit8 v5, v5, 0x30

    .line 459
    .line 460
    if-ne v5, v0, :cond_25

    .line 461
    .line 462
    :cond_24
    const/4 v0, 0x1

    .line 463
    goto :goto_14

    .line 464
    :cond_25
    const/4 v0, 0x0

    .line 465
    :goto_14
    or-int/2addr v0, v6

    .line 466
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    if-nez v0, :cond_26

    .line 471
    .line 472
    if-ne v5, v10, :cond_27

    .line 473
    .line 474
    :cond_26
    new-instance v5, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    .line 475
    .line 476
    invoke-direct {v5, v1}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    :cond_27
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 483
    .line 484
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    if-ne v0, v10, :cond_28

    .line 489
    .line 490
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    :cond_28
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 498
    .line 499
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 500
    .line 501
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    check-cast v6, Landroidx/compose/ui/graphics/GraphicsContext;

    .line 506
    .line 507
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 508
    .line 509
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    check-cast v8, Ljava/lang/Boolean;

    .line 514
    .line 515
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    move-object/from16 v26, v0

    .line 520
    .line 521
    if-nez v8, :cond_29

    .line 522
    .line 523
    sget-object v8, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    .line 524
    .line 525
    goto :goto_15

    .line 526
    :cond_29
    const/4 v8, 0x0

    .line 527
    :goto_15
    const v28, 0xfff0

    .line 528
    .line 529
    .line 530
    and-int v27, v27, v28

    .line 531
    .line 532
    const/high16 v28, 0x380000

    .line 533
    .line 534
    and-int v3, v3, v28

    .line 535
    .line 536
    or-int v3, v27, v3

    .line 537
    .line 538
    shl-int/lit8 v27, v29, 0x12

    .line 539
    .line 540
    const/high16 v30, 0x1c00000

    .line 541
    .line 542
    and-int v31, v27, v30

    .line 543
    .line 544
    or-int v3, v3, v31

    .line 545
    .line 546
    const/high16 v31, 0xe000000

    .line 547
    .line 548
    and-int v27, v27, v31

    .line 549
    .line 550
    or-int v3, v3, v27

    .line 551
    .line 552
    shl-int/lit8 v27, v29, 0x1b

    .line 553
    .line 554
    const/high16 v29, 0x70000000

    .line 555
    .line 556
    and-int v27, v27, v29

    .line 557
    .line 558
    or-int v3, v3, v27

    .line 559
    .line 560
    and-int/lit8 v27, v3, 0x70

    .line 561
    .line 562
    xor-int/lit8 v0, v27, 0x30

    .line 563
    .line 564
    move-object/from16 v27, v5

    .line 565
    .line 566
    const/16 v5, 0x20

    .line 567
    .line 568
    if-le v0, v5, :cond_2a

    .line 569
    .line 570
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-nez v0, :cond_2b

    .line 575
    .line 576
    :cond_2a
    and-int/lit8 v0, v3, 0x30

    .line 577
    .line 578
    if-ne v0, v5, :cond_2c

    .line 579
    .line 580
    :cond_2b
    const/4 v0, 0x1

    .line 581
    goto :goto_16

    .line 582
    :cond_2c
    const/4 v0, 0x0

    .line 583
    :goto_16
    and-int/lit16 v5, v3, 0x380

    .line 584
    .line 585
    xor-int/lit16 v5, v5, 0x180

    .line 586
    .line 587
    move/from16 v17, v0

    .line 588
    .line 589
    const/16 v0, 0x100

    .line 590
    .line 591
    if-le v5, v0, :cond_2d

    .line 592
    .line 593
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v5

    .line 597
    if-nez v5, :cond_2e

    .line 598
    .line 599
    :cond_2d
    and-int/lit16 v5, v3, 0x180

    .line 600
    .line 601
    if-ne v5, v0, :cond_2f

    .line 602
    .line 603
    :cond_2e
    const/4 v0, 0x1

    .line 604
    goto :goto_17

    .line 605
    :cond_2f
    const/4 v0, 0x0

    .line 606
    :goto_17
    or-int v0, v17, v0

    .line 607
    .line 608
    and-int/lit16 v5, v3, 0x1c00

    .line 609
    .line 610
    xor-int/lit16 v5, v5, 0xc00

    .line 611
    .line 612
    move/from16 p7, v0

    .line 613
    .line 614
    const/16 v0, 0x800

    .line 615
    .line 616
    if-le v5, v0, :cond_30

    .line 617
    .line 618
    const/4 v5, 0x0

    .line 619
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 620
    .line 621
    .line 622
    move-result v17

    .line 623
    if-nez v17, :cond_31

    .line 624
    .line 625
    :cond_30
    and-int/lit16 v5, v3, 0xc00

    .line 626
    .line 627
    if-ne v5, v0, :cond_32

    .line 628
    .line 629
    :cond_31
    const/4 v0, 0x1

    .line 630
    goto :goto_18

    .line 631
    :cond_32
    const/4 v0, 0x0

    .line 632
    :goto_18
    or-int v0, p7, v0

    .line 633
    .line 634
    const v5, 0xe000

    .line 635
    .line 636
    .line 637
    and-int/2addr v5, v3

    .line 638
    xor-int/lit16 v5, v5, 0x6000

    .line 639
    .line 640
    move/from16 p7, v0

    .line 641
    .line 642
    const/16 v0, 0x4000

    .line 643
    .line 644
    if-le v5, v0, :cond_33

    .line 645
    .line 646
    const/4 v5, 0x1

    .line 647
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 648
    .line 649
    .line 650
    move-result v17

    .line 651
    if-nez v17, :cond_34

    .line 652
    .line 653
    goto :goto_19

    .line 654
    :cond_33
    const/4 v5, 0x1

    .line 655
    :goto_19
    and-int/lit16 v5, v3, 0x6000

    .line 656
    .line 657
    if-ne v5, v0, :cond_35

    .line 658
    .line 659
    :cond_34
    const/4 v0, 0x1

    .line 660
    goto :goto_1a

    .line 661
    :cond_35
    const/4 v0, 0x0

    .line 662
    :goto_1a
    or-int v0, p7, v0

    .line 663
    .line 664
    const/4 v5, 0x0

    .line 665
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 666
    .line 667
    .line 668
    move-result v17

    .line 669
    or-int v0, v0, v17

    .line 670
    .line 671
    and-int v17, v3, v28

    .line 672
    .line 673
    xor-int v5, v17, v18

    .line 674
    .line 675
    move/from16 p7, v0

    .line 676
    .line 677
    const/high16 v0, 0x100000

    .line 678
    .line 679
    if-le v5, v0, :cond_36

    .line 680
    .line 681
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    if-nez v5, :cond_37

    .line 686
    .line 687
    :cond_36
    and-int v5, v3, v18

    .line 688
    .line 689
    if-ne v5, v0, :cond_38

    .line 690
    .line 691
    :cond_37
    const/4 v0, 0x1

    .line 692
    goto :goto_1b

    .line 693
    :cond_38
    const/4 v0, 0x0

    .line 694
    :goto_1b
    or-int v0, p7, v0

    .line 695
    .line 696
    and-int v5, v3, v30

    .line 697
    .line 698
    xor-int v5, v5, v19

    .line 699
    .line 700
    move/from16 p7, v0

    .line 701
    .line 702
    const/high16 v0, 0x800000

    .line 703
    .line 704
    if-le v5, v0, :cond_3a

    .line 705
    .line 706
    const/4 v0, 0x0

    .line 707
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    if-nez v5, :cond_39

    .line 712
    .line 713
    goto :goto_1c

    .line 714
    :cond_39
    const/4 v5, 0x1

    .line 715
    goto :goto_1d

    .line 716
    :cond_3a
    const/4 v0, 0x0

    .line 717
    :goto_1c
    const/4 v5, 0x0

    .line 718
    :goto_1d
    or-int v5, p7, v5

    .line 719
    .line 720
    and-int v17, v3, v31

    .line 721
    .line 722
    xor-int v0, v17, v21

    .line 723
    .line 724
    const/high16 v1, 0x4000000

    .line 725
    .line 726
    if-le v0, v1, :cond_3c

    .line 727
    .line 728
    const/4 v0, 0x0

    .line 729
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-nez v0, :cond_3b

    .line 734
    .line 735
    goto :goto_1e

    .line 736
    :cond_3b
    const/4 v0, 0x1

    .line 737
    goto :goto_1f

    .line 738
    :cond_3c
    :goto_1e
    const/4 v0, 0x0

    .line 739
    :goto_1f
    or-int/2addr v0, v5

    .line 740
    and-int v1, v3, v29

    .line 741
    .line 742
    xor-int v1, v1, v22

    .line 743
    .line 744
    const/high16 v5, 0x20000000

    .line 745
    .line 746
    if-le v1, v5, :cond_3d

    .line 747
    .line 748
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    if-nez v1, :cond_3e

    .line 753
    .line 754
    :cond_3d
    and-int v1, v3, v22

    .line 755
    .line 756
    if-ne v1, v5, :cond_3f

    .line 757
    .line 758
    :cond_3e
    const/4 v1, 0x1

    .line 759
    goto :goto_20

    .line 760
    :cond_3f
    const/4 v1, 0x0

    .line 761
    :goto_20
    or-int/2addr v0, v1

    .line 762
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    or-int/2addr v0, v1

    .line 767
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    or-int/2addr v0, v1

    .line 772
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    if-nez v0, :cond_41

    .line 777
    .line 778
    if-ne v1, v10, :cond_40

    .line 779
    .line 780
    goto :goto_21

    .line 781
    :cond_40
    move-object v0, v1

    .line 782
    move-object/from16 v8, v24

    .line 783
    .line 784
    move-object/from16 v37, v27

    .line 785
    .line 786
    const/4 v11, 0x0

    .line 787
    const/16 v25, 0x1

    .line 788
    .line 789
    move-object/from16 v1, p6

    .line 790
    .line 791
    goto :goto_22

    .line 792
    :cond_41
    :goto_21
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 793
    .line 794
    move-object v1, v8

    .line 795
    move-object v8, v7

    .line 796
    move-object v7, v1

    .line 797
    move-object/from16 v1, p6

    .line 798
    .line 799
    move-object/from16 v3, v24

    .line 800
    .line 801
    move-object/from16 v5, v26

    .line 802
    .line 803
    move-object/from16 v37, v27

    .line 804
    .line 805
    const/4 v11, 0x0

    .line 806
    const/16 v25, 0x1

    .line 807
    .line 808
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 809
    .line 810
    .line 811
    move-object v8, v3

    .line 812
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    :goto_22
    move-object/from16 v17, v0

    .line 816
    .line 817
    check-cast v17, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 818
    .line 819
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 820
    .line 821
    if-eqz v13, :cond_47

    .line 822
    .line 823
    const v0, -0x7bcec0e8

    .line 824
    .line 825
    .line 826
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 827
    .line 828
    .line 829
    and-int/lit8 v0, v15, 0xe

    .line 830
    .line 831
    xor-int/lit8 v0, v0, 0x6

    .line 832
    .line 833
    const/4 v5, 0x4

    .line 834
    if-le v0, v5, :cond_42

    .line 835
    .line 836
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    if-nez v0, :cond_44

    .line 841
    .line 842
    :cond_42
    and-int/lit8 v0, v15, 0x6

    .line 843
    .line 844
    if-ne v0, v5, :cond_43

    .line 845
    .line 846
    goto :goto_23

    .line 847
    :cond_43
    move/from16 v25, v11

    .line 848
    .line 849
    :cond_44
    :goto_23
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    or-int v0, v25, v0

    .line 854
    .line 855
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    if-nez v0, :cond_45

    .line 860
    .line 861
    if-ne v3, v10, :cond_46

    .line 862
    .line 863
    :cond_45
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    .line 864
    .line 865
    invoke-direct {v3, v1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    :cond_46
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    .line 872
    .line 873
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 874
    .line 875
    invoke-static {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 880
    .line 881
    .line 882
    goto :goto_24

    .line 883
    :cond_47
    const v0, -0x7bc835d1

    .line 884
    .line 885
    .line 886
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 890
    .line 891
    .line 892
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 893
    .line 894
    :goto_24
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    .line 895
    .line 896
    invoke-interface {v9, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 901
    .line 902
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    move-object/from16 v5, v37

    .line 907
    .line 908
    invoke-static {v3, v8, v5, v2, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 917
    .line 918
    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 919
    .line 920
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 925
    .line 926
    const/4 v7, 0x0

    .line 927
    move-object/from16 v3, p2

    .line 928
    .line 929
    move-object/from16 v5, p3

    .line 930
    .line 931
    move v4, v13

    .line 932
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/ImageKt;->scrollableArea(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    move-object v6, v1

    .line 937
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 938
    .line 939
    const/4 v5, 0x0

    .line 940
    move-object v1, v0

    .line 941
    move-object v0, v8

    .line 942
    move-object v4, v14

    .line 943
    move-object/from16 v3, v17

    .line 944
    .line 945
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/Composer;I)V

    .line 946
    .line 947
    .line 948
    goto :goto_25

    .line 949
    :cond_48
    move-object v6, v1

    .line 950
    move-object v4, v14

    .line 951
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 952
    .line 953
    .line 954
    :goto_25
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 955
    .line 956
    .line 957
    move-result-object v13

    .line 958
    if-eqz v13, :cond_49

    .line 959
    .line 960
    new-instance v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda11;

    .line 961
    .line 962
    move/from16 v10, p0

    .line 963
    .line 964
    move/from16 v11, p1

    .line 965
    .line 966
    move-object/from16 v4, p3

    .line 967
    .line 968
    move-object/from16 v8, p4

    .line 969
    .line 970
    move-object/from16 v3, p5

    .line 971
    .line 972
    move-object/from16 v7, p8

    .line 973
    .line 974
    move/from16 v5, p11

    .line 975
    .line 976
    move-object v2, v6

    .line 977
    move-object v1, v9

    .line 978
    move-object v9, v12

    .line 979
    move-object/from16 v6, p2

    .line 980
    .line 981
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlin/jvm/functions/Function1;II)V

    .line 982
    .line 983
    .line 984
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 985
    .line 986
    :cond_49
    return-void
.end method

.method public static final access$subarrayContentToString([Ljava/lang/Object;IILkotlin/collections/AbstractMutableList;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "["

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_2

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v2, ", "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int v2, p1, v1

    .line 26
    .line 27
    aget-object v2, p0, v2

    .line 28
    .line 29
    if-ne v2, p3, :cond_1

    .line 30
    .line 31
    const-string v2, "(this Collection)"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static final access$verify(Lkotlinx/serialization/encoding/Encoder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableIntList;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-lez v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/collection/IntList;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le p1, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    .line 43
    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->set(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static applyAlpha(II)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    shl-int/lit8 p1, p1, 0x18

    .line 6
    .line 7
    or-int/2addr p0, p1

    .line 8
    return p0
.end method

.method public static applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    array-length v2, p0

    .line 28
    array-length v3, p0

    .line 29
    array-length v4, v1

    .line 30
    add-int/2addr v3, v4

    .line 31
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v3, 0x0

    .line 36
    array-length v4, v1

    .line 37
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    if-eqz p3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eq p0, v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public static final asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlinx/serialization/json/JsonDecoder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public static final await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/text/UStringsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroidx/work/impl/ToContinuation;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, v1}, Landroidx/work/impl/ToContinuation;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    .line 28
    .line 29
    invoke-interface {p0, p1, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroidx/concurrent/futures/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/concurrent/futures/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance p0, Lkotlin/KotlinNullPointerException;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 56
    .line 57
    .line 58
    const-class p1, Lkotlin/jvm/internal/Intrinsics;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static checkRadix(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt v0, p0, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x25

    .line 5
    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v1, "radix "

    .line 10
    .line 11
    const-string v2, " was not in valid range "

    .line 12
    .line 13
    invoke-static {v1, p0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 18
    .line 19
    const/16 v2, 0x24

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v1, v0, v2, v3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    return-void
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
    invoke-static {p0, p3}, Lkotlin/text/CharsKt;->toPx(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iget-object p1, p2, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 17
    .line 18
    invoke-static {p1, p3}, Lkotlin/text/CharsKt;->toPx(Lcoil3/size/Dimension;Lcoil3/size/Scale;)I

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
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne p4, v4, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 22
    .line 23
    .line 24
    const-wide/16 p0, 0x0

    .line 25
    .line 26
    return-wide p0

    .line 27
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide p2

    .line 31
    :goto_0
    iget-object p4, p5, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 32
    .line 33
    instance-of v0, p4, Lcoil3/size/Dimension$Pixels;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p4, Lcoil3/size/Dimension$Pixels;

    .line 38
    .line 39
    iget p4, p4, Lcoil3/size/Dimension$Pixels;->px:I

    .line 40
    .line 41
    int-to-double v0, p4

    .line 42
    div-double/2addr v0, v2

    .line 43
    cmpl-double p4, p2, v0

    .line 44
    .line 45
    if-lez p4, :cond_2

    .line 46
    .line 47
    move-wide p2, v0

    .line 48
    :cond_2
    iget-object p4, p5, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 49
    .line 50
    instance-of p5, p4, Lcoil3/size/Dimension$Pixels;

    .line 51
    .line 52
    if-eqz p5, :cond_3

    .line 53
    .line 54
    check-cast p4, Lcoil3/size/Dimension$Pixels;

    .line 55
    .line 56
    iget p4, p4, Lcoil3/size/Dimension$Pixels;->px:I

    .line 57
    .line 58
    int-to-double p4, p4

    .line 59
    div-double/2addr p4, p0

    .line 60
    cmpl-double p0, p2, p4

    .line 61
    .line 62
    if-lez p0, :cond_3

    .line 63
    .line 64
    return-wide p4

    .line 65
    :cond_3
    return-wide p2
.end method

.method public static convertScaleType(I)Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 37
    .line 38
    return-object p0
.end method

.method public static final equals(CCZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eq p0, p1, :cond_3

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p0, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return v1

    .line 31
    :cond_3
    :goto_0
    return v0
.end method

.method public static final generateId()Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lkotlin/uuid/SecureRandomHolder;->instance:Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    aget-byte v2, v0, v1

    .line 12
    .line 13
    and-int/lit8 v2, v2, 0xf

    .line 14
    .line 15
    int-to-byte v2, v2

    .line 16
    aput-byte v2, v0, v1

    .line 17
    .line 18
    or-int/lit8 v2, v2, 0x40

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v1

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    aget-byte v2, v0, v1

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0x3f

    .line 28
    .line 29
    int-to-byte v2, v2

    .line 30
    aput-byte v2, v0, v1

    .line 31
    .line 32
    or-int/lit16 v2, v2, 0x80

    .line 33
    .line 34
    int-to-byte v2, v2

    .line 35
    aput-byte v2, v0, v1

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v2, v0}, Lokio/Okio;->getLongAt(I[B)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v1, v0}, Lokio/Okio;->getLongAt(I[B)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    cmp-long v6, v2, v4

    .line 49
    .line 50
    if-nez v6, :cond_0

    .line 51
    .line 52
    cmp-long v4, v0, v4

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    sget-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v4, Lkotlin/uuid/Uuid;

    .line 60
    .line 61
    invoke-direct {v4, v2, v3, v0, v1}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    move-object v0, v4

    .line 65
    :goto_0
    invoke-virtual {v0}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public static final getKey-ZmokQxo(Landroid/view/KeyEvent;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroidx/room/Room;->Key(I)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static final getType-ZmokQxo(Landroid/view/KeyEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    const/4 p0, 0x2

    .line 14
    return p0
.end method

.method public static final varargs hasCause(Ljava/lang/Throwable;Z[Ljava/lang/Class;)Z
    .locals 5

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_3

    .line 5
    :cond_0
    array-length v1, p2

    .line 6
    move v2, v0

    .line 7
    :goto_1
    if-ge v2, v1, :cond_3

    .line 8
    .line 9
    aget-object v3, p2, v2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    :goto_2
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eq p0, v1, :cond_4

    .line 44
    .line 45
    array-length p0, p2

    .line 46
    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    move-object p2, p0

    .line 51
    check-cast p2, [Ljava/lang/Class;

    .line 52
    .line 53
    move-object p0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    :goto_3
    return v0
.end method

.method public static isFromSource(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/2addr p0, p1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static final modulate-DxMtmZc(JF)J
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v0, p2, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    mul-float/2addr v0, p2

    .line 19
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JF)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static final permitsRequestBody(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "GET"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "HEAD"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static final populate(Landroid/view/ViewStructure;Landroidx/compose/ui/node/LayoutNode;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v8, 0x2

    .line 14
    const/16 v11, 0x8

    .line 15
    .line 16
    const/4 v14, 0x1

    .line 17
    if-eqz v2, :cond_14

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    if-eqz v2, :cond_14

    .line 22
    .line 23
    iget-object v15, v2, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 24
    .line 25
    const-wide/16 v16, 0x80

    .line 26
    .line 27
    iget-object v3, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 30
    .line 31
    array-length v4, v2

    .line 32
    sub-int/2addr v4, v8

    .line 33
    move/from16 v31, v8

    .line 34
    .line 35
    if-ltz v4, :cond_12

    .line 36
    .line 37
    move/from16 v28, v14

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const-wide/16 v18, 0xff

    .line 42
    .line 43
    const/16 v20, 0x0

    .line 44
    .line 45
    const/16 v21, 0x0

    .line 46
    .line 47
    const/16 v22, 0x0

    .line 48
    .line 49
    const/16 v23, 0x0

    .line 50
    .line 51
    const/16 v24, 0x0

    .line 52
    .line 53
    const/16 v25, 0x0

    .line 54
    .line 55
    const/16 v26, 0x0

    .line 56
    .line 57
    const/16 v27, 0x0

    .line 58
    .line 59
    const/16 v29, 0x0

    .line 60
    .line 61
    const/16 v30, 0x7

    .line 62
    .line 63
    :goto_0
    aget-wide v7, v2, v5

    .line 64
    .line 65
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    not-long v9, v7

    .line 71
    shl-long v9, v9, v30

    .line 72
    .line 73
    and-long/2addr v9, v7

    .line 74
    and-long v9, v9, v32

    .line 75
    .line 76
    cmp-long v9, v9, v32

    .line 77
    .line 78
    if-eqz v9, :cond_11

    .line 79
    .line 80
    sub-int v9, v5, v4

    .line 81
    .line 82
    not-int v9, v9

    .line 83
    ushr-int/lit8 v9, v9, 0x1f

    .line 84
    .line 85
    rsub-int/lit8 v9, v9, 0x8

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    :goto_1
    if-ge v10, v9, :cond_10

    .line 89
    .line 90
    and-long v34, v7, v18

    .line 91
    .line 92
    cmp-long v34, v34, v16

    .line 93
    .line 94
    if-gez v34, :cond_f

    .line 95
    .line 96
    shl-int/lit8 v34, v5, 0x3

    .line 97
    .line 98
    add-int v34, v34, v10

    .line 99
    .line 100
    aget-object v35, v15, v34

    .line 101
    .line 102
    aget-object v34, v3, v34

    .line 103
    .line 104
    move-object/from16 v12, v35

    .line 105
    .line 106
    check-cast v12, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 107
    .line 108
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 109
    .line 110
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    if-eqz v13, :cond_0

    .line 115
    .line 116
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-object/from16 v6, v34

    .line 120
    .line 121
    check-cast v6, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_0
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 126
    .line 127
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_1

    .line 132
    .line 133
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    check-cast v34, Ljava/util/List;

    .line 137
    .line 138
    invoke-static/range {v34 .. v34}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    check-cast v12, Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v12, :cond_f

    .line 145
    .line 146
    invoke-virtual {v0, v12}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_1
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 152
    .line 153
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    if-eqz v13, :cond_2

    .line 158
    .line 159
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-object/from16 v24, v34

    .line 163
    .line 164
    check-cast v24, Landroidx/compose/ui/autofill/ContentType;

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_2
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->FillableData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 169
    .line 170
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    if-eqz v13, :cond_3

    .line 175
    .line 176
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-object/from16 v23, v34

    .line 180
    .line 181
    check-cast v23, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :cond_3
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 186
    .line 187
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    if-eqz v13, :cond_4

    .line 192
    .line 193
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-object/from16 v22, v34

    .line 197
    .line 198
    check-cast v22, Landroidx/compose/ui/text/AnnotatedString;

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_4
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 203
    .line 204
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    if-eqz v13, :cond_5

    .line 209
    .line 210
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    check-cast v34, Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    invoke-virtual {v0, v12}, Landroid/view/ViewStructure;->setFocused(Z)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :cond_5
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 225
    .line 226
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v13

    .line 230
    if-eqz v13, :cond_6

    .line 231
    .line 232
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-object/from16 v29, v34

    .line 236
    .line 237
    check-cast v29, Ljava/lang/Integer;

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_6
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 242
    .line 243
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-eqz v13, :cond_7

    .line 248
    .line 249
    move/from16 v27, v14

    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_7
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 254
    .line 255
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-eqz v13, :cond_8

    .line 260
    .line 261
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    check-cast v34, Ljava/lang/Boolean;

    .line 265
    .line 266
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    .line 267
    .line 268
    .line 269
    move-result v28

    .line 270
    goto :goto_2

    .line 271
    :cond_8
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 272
    .line 273
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    if-eqz v13, :cond_9

    .line 278
    .line 279
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    move-object/from16 v26, v34

    .line 283
    .line 284
    check-cast v26, Landroidx/compose/ui/semantics/Role;

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_9
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 288
    .line 289
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    if-eqz v13, :cond_a

    .line 294
    .line 295
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    move-object/from16 v25, v34

    .line 299
    .line 300
    check-cast v25, Ljava/lang/Boolean;

    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_a
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 304
    .line 305
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    if-eqz v13, :cond_b

    .line 310
    .line 311
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    move-object/from16 v21, v34

    .line 315
    .line 316
    check-cast v21, Landroidx/compose/ui/state/ToggleableState;

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_b
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 320
    .line 321
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    if-eqz v13, :cond_c

    .line 326
    .line 327
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setClickable(Z)V

    .line 328
    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_c
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 332
    .line 333
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v13

    .line 337
    if-eqz v13, :cond_d

    .line 338
    .line 339
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_d
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 344
    .line 345
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    if-eqz v13, :cond_e

    .line 350
    .line 351
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setFocusable(Z)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_e
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 356
    .line 357
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    if-eqz v12, :cond_f

    .line 362
    .line 363
    move/from16 v20, v14

    .line 364
    .line 365
    :cond_f
    :goto_2
    shr-long/2addr v7, v11

    .line 366
    add-int/lit8 v10, v10, 0x1

    .line 367
    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :cond_10
    if-ne v9, v11, :cond_13

    .line 371
    .line 372
    :cond_11
    if-eq v5, v4, :cond_13

    .line 373
    .line 374
    add-int/lit8 v5, v5, 0x1

    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :cond_12
    const-wide/16 v18, 0xff

    .line 379
    .line 380
    const/16 v30, 0x7

    .line 381
    .line 382
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    move/from16 v28, v14

    .line 388
    .line 389
    const/4 v6, 0x0

    .line 390
    const/16 v20, 0x0

    .line 391
    .line 392
    const/16 v21, 0x0

    .line 393
    .line 394
    const/16 v22, 0x0

    .line 395
    .line 396
    const/16 v23, 0x0

    .line 397
    .line 398
    const/16 v24, 0x0

    .line 399
    .line 400
    const/16 v25, 0x0

    .line 401
    .line 402
    const/16 v26, 0x0

    .line 403
    .line 404
    const/16 v27, 0x0

    .line 405
    .line 406
    const/16 v29, 0x0

    .line 407
    .line 408
    :cond_13
    move-object/from16 v2, v21

    .line 409
    .line 410
    move-object/from16 v3, v22

    .line 411
    .line 412
    move-object/from16 v4, v23

    .line 413
    .line 414
    move-object/from16 v5, v26

    .line 415
    .line 416
    goto :goto_3

    .line 417
    :cond_14
    move/from16 v31, v8

    .line 418
    .line 419
    const-wide/16 v16, 0x80

    .line 420
    .line 421
    const-wide/16 v18, 0xff

    .line 422
    .line 423
    const/16 v30, 0x7

    .line 424
    .line 425
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    move/from16 v28, v14

    .line 431
    .line 432
    const/4 v2, 0x0

    .line 433
    const/4 v3, 0x0

    .line 434
    const/4 v4, 0x0

    .line 435
    const/4 v5, 0x0

    .line 436
    const/4 v6, 0x0

    .line 437
    const/16 v20, 0x0

    .line 438
    .line 439
    const/16 v24, 0x0

    .line 440
    .line 441
    const/16 v25, 0x0

    .line 442
    .line 443
    const/16 v27, 0x0

    .line 444
    .line 445
    const/16 v29, 0x0

    .line 446
    .line 447
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    if-eqz v7, :cond_19

    .line 452
    .line 453
    iget-boolean v8, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 454
    .line 455
    if-eqz v8, :cond_19

    .line 456
    .line 457
    iget-boolean v8, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 458
    .line 459
    if-eqz v8, :cond_15

    .line 460
    .line 461
    goto :goto_5

    .line 462
    :cond_15
    new-instance v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 463
    .line 464
    invoke-direct {v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 465
    .line 466
    .line 467
    iget-boolean v9, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 468
    .line 469
    iput-boolean v9, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 470
    .line 471
    iget-boolean v9, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 472
    .line 473
    iput-boolean v9, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 474
    .line 475
    iget-object v9, v8, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 476
    .line 477
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 478
    .line 479
    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterMap;->putAll(Landroidx/collection/MutableScatterMap;)V

    .line 480
    .line 481
    .line 482
    new-instance v7, Landroidx/collection/MutableObjectList;

    .line 483
    .line 484
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    check-cast v9, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 489
    .line 490
    iget-object v9, v9, Landroidx/collection/MutableObjectList$ObjectListMutableList;->objectList:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 493
    .line 494
    iget v9, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 495
    .line 496
    invoke-direct {v7, v9}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    invoke-virtual {v7, v9}, Landroidx/collection/MutableObjectList;->addAll(Ljava/util/List;)V

    .line 504
    .line 505
    .line 506
    :cond_16
    :goto_4
    invoke-virtual {v7}, Landroidx/collection/ObjectList;->isNotEmpty()Z

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    if-eqz v9, :cond_18

    .line 511
    .line 512
    iget v9, v7, Landroidx/collection/ObjectList;->_size:I

    .line 513
    .line 514
    sub-int/2addr v9, v14

    .line 515
    invoke-virtual {v7, v9}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v9

    .line 519
    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 520
    .line 521
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 522
    .line 523
    .line 524
    move-result-object v10

    .line 525
    if-eqz v10, :cond_16

    .line 526
    .line 527
    iget-boolean v12, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 528
    .line 529
    if-eqz v12, :cond_17

    .line 530
    .line 531
    goto :goto_4

    .line 532
    :cond_17
    invoke-virtual {v8, v10}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->mergeChild$ui(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 533
    .line 534
    .line 535
    iget-boolean v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 536
    .line 537
    if-nez v10, :cond_16

    .line 538
    .line 539
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 540
    .line 541
    .line 542
    move-result-object v9

    .line 543
    invoke-virtual {v7, v9}, Landroidx/collection/MutableObjectList;->addAll(Ljava/util/List;)V

    .line 544
    .line 545
    .line 546
    goto :goto_4

    .line 547
    :cond_18
    move-object v7, v8

    .line 548
    :cond_19
    :goto_5
    if-eqz v7, :cond_1f

    .line 549
    .line 550
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 551
    .line 552
    if-eqz v7, :cond_1f

    .line 553
    .line 554
    iget-object v8, v7, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 555
    .line 556
    iget-object v9, v7, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 557
    .line 558
    iget-object v7, v7, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 559
    .line 560
    array-length v10, v7

    .line 561
    add-int/lit8 v10, v10, -0x2

    .line 562
    .line 563
    move/from16 v21, v14

    .line 564
    .line 565
    if-ltz v10, :cond_20

    .line 566
    .line 567
    const/4 v12, 0x0

    .line 568
    const/4 v13, 0x0

    .line 569
    :goto_6
    aget-wide v14, v7, v12

    .line 570
    .line 571
    move/from16 v22, v11

    .line 572
    .line 573
    move/from16 v23, v12

    .line 574
    .line 575
    not-long v11, v14

    .line 576
    shl-long v11, v11, v30

    .line 577
    .line 578
    and-long/2addr v11, v14

    .line 579
    and-long v11, v11, v32

    .line 580
    .line 581
    cmp-long v11, v11, v32

    .line 582
    .line 583
    if-eqz v11, :cond_1e

    .line 584
    .line 585
    sub-int v12, v23, v10

    .line 586
    .line 587
    not-int v11, v12

    .line 588
    ushr-int/lit8 v11, v11, 0x1f

    .line 589
    .line 590
    rsub-int/lit8 v11, v11, 0x8

    .line 591
    .line 592
    const/4 v12, 0x0

    .line 593
    :goto_7
    if-ge v12, v11, :cond_1d

    .line 594
    .line 595
    and-long v36, v14, v18

    .line 596
    .line 597
    cmp-long v26, v36, v16

    .line 598
    .line 599
    if-gez v26, :cond_1b

    .line 600
    .line 601
    shl-int/lit8 v26, v23, 0x3

    .line 602
    .line 603
    add-int v26, v26, v12

    .line 604
    .line 605
    aget-object v34, v8, v26

    .line 606
    .line 607
    aget-object v26, v9, v26

    .line 608
    .line 609
    move-object/from16 v36, v7

    .line 610
    .line 611
    move-object/from16 v7, v34

    .line 612
    .line 613
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 614
    .line 615
    move-object/from16 v34, v8

    .line 616
    .line 617
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 618
    .line 619
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    if-eqz v8, :cond_1a

    .line 624
    .line 625
    const/4 v8, 0x0

    .line 626
    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->setEnabled(Z)V

    .line 627
    .line 628
    .line 629
    goto :goto_8

    .line 630
    :cond_1a
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 631
    .line 632
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v7

    .line 636
    if-eqz v7, :cond_1c

    .line 637
    .line 638
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    move-object/from16 v13, v26

    .line 642
    .line 643
    check-cast v13, Ljava/util/List;

    .line 644
    .line 645
    goto :goto_8

    .line 646
    :cond_1b
    move-object/from16 v36, v7

    .line 647
    .line 648
    move-object/from16 v34, v8

    .line 649
    .line 650
    :cond_1c
    :goto_8
    shr-long v14, v14, v22

    .line 651
    .line 652
    add-int/lit8 v12, v12, 0x1

    .line 653
    .line 654
    move-object/from16 v8, v34

    .line 655
    .line 656
    move-object/from16 v7, v36

    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_1d
    move-object/from16 v36, v7

    .line 660
    .line 661
    move-object/from16 v34, v8

    .line 662
    .line 663
    move/from16 v7, v22

    .line 664
    .line 665
    if-ne v11, v7, :cond_21

    .line 666
    .line 667
    :goto_9
    move/from16 v8, v23

    .line 668
    .line 669
    goto :goto_a

    .line 670
    :cond_1e
    move-object/from16 v36, v7

    .line 671
    .line 672
    move-object/from16 v34, v8

    .line 673
    .line 674
    move/from16 v7, v22

    .line 675
    .line 676
    goto :goto_9

    .line 677
    :goto_a
    if-eq v8, v10, :cond_21

    .line 678
    .line 679
    add-int/lit8 v12, v8, 0x1

    .line 680
    .line 681
    move v11, v7

    .line 682
    move-object/from16 v8, v34

    .line 683
    .line 684
    move-object/from16 v7, v36

    .line 685
    .line 686
    goto :goto_6

    .line 687
    :cond_1f
    move/from16 v21, v14

    .line 688
    .line 689
    :cond_20
    const/4 v13, 0x0

    .line 690
    :cond_21
    iget v7, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 691
    .line 692
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    if-nez v8, :cond_22

    .line 701
    .line 702
    const/4 v7, 0x0

    .line 703
    :cond_22
    if-eqz v7, :cond_23

    .line 704
    .line 705
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 706
    .line 707
    .line 708
    move-result v7

    .line 709
    :goto_b
    move-object/from16 v8, p2

    .line 710
    .line 711
    goto :goto_c

    .line 712
    :cond_23
    const/4 v7, -0x1

    .line 713
    goto :goto_b

    .line 714
    :goto_c
    invoke-static {v0, v8, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillId(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 715
    .line 716
    .line 717
    move-object/from16 v8, p3

    .line 718
    .line 719
    const/4 v9, 0x0

    .line 720
    invoke-virtual {v0, v7, v8, v9, v9}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    if-eqz v6, :cond_24

    .line 724
    .line 725
    iget v6, v6, Landroidx/compose/ui/autofill/AndroidContentDataType;->androidAutofillType:I

    .line 726
    .line 727
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    .line 729
    .line 730
    move-result-object v12

    .line 731
    goto :goto_d

    .line 732
    :cond_24
    if-eqz v20, :cond_25

    .line 733
    .line 734
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 735
    .line 736
    .line 737
    move-result-object v12

    .line 738
    goto :goto_d

    .line 739
    :cond_25
    if-eqz v2, :cond_26

    .line 740
    .line 741
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 742
    .line 743
    .line 744
    move-result-object v12

    .line 745
    goto :goto_d

    .line 746
    :cond_26
    move-object v12, v9

    .line 747
    :goto_d
    if-eqz v12, :cond_27

    .line 748
    .line 749
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    invoke-static {v0, v6}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillType(Landroid/view/ViewStructure;I)V

    .line 754
    .line 755
    .line 756
    :cond_27
    if-eqz v3, :cond_28

    .line 757
    .line 758
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 759
    .line 760
    invoke-static {v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    invoke-static {v0, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 765
    .line 766
    .line 767
    :cond_28
    if-eqz v4, :cond_29

    .line 768
    .line 769
    iget-object v3, v4, Landroidx/compose/ui/autofill/AndroidFillableData;->autofillValue:Landroid/view/autofill/AutofillValue;

    .line 770
    .line 771
    invoke-static {v0, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 772
    .line 773
    .line 774
    :cond_29
    if-eqz v24, :cond_2a

    .line 775
    .line 776
    invoke-static/range {v24 .. v24}, Landroidx/sqlite/SQLite;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    if-eqz v3, :cond_2a

    .line 781
    .line 782
    invoke-static {v0, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillHints(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    :cond_2a
    move-object/from16 v3, p4

    .line 786
    .line 787
    iget-object v3, v3, Landroidx/compose/ui/spatial/RectManager;->rects:Lcom/grack/nanojson/JsonParser;

    .line 788
    .line 789
    iget v4, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 790
    .line 791
    new-instance v6, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$7;

    .line 792
    .line 793
    invoke-direct {v6, v0}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$7;-><init>(Landroid/view/ViewStructure;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v3, v4, v6}, Lcom/grack/nanojson/JsonParser;->withRect(ILkotlin/jvm/functions/Function4;)V

    .line 797
    .line 798
    .line 799
    if-eqz v25, :cond_2b

    .line 800
    .line 801
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    .line 802
    .line 803
    .line 804
    move-result v3

    .line 805
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setSelected(Z)V

    .line 806
    .line 807
    .line 808
    :cond_2b
    const/4 v8, 0x4

    .line 809
    if-eqz v2, :cond_2d

    .line 810
    .line 811
    move/from16 v3, v21

    .line 812
    .line 813
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setCheckable(Z)V

    .line 814
    .line 815
    .line 816
    sget-object v3, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 817
    .line 818
    if-ne v2, v3, :cond_2c

    .line 819
    .line 820
    const/4 v2, 0x1

    .line 821
    goto :goto_e

    .line 822
    :cond_2c
    const/4 v2, 0x0

    .line 823
    :goto_e
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    .line 824
    .line 825
    .line 826
    goto :goto_10

    .line 827
    :cond_2d
    if-eqz v25, :cond_30

    .line 828
    .line 829
    if-nez v5, :cond_2f

    .line 830
    .line 831
    :cond_2e
    const/4 v3, 0x1

    .line 832
    goto :goto_f

    .line 833
    :cond_2f
    iget v2, v5, Landroidx/compose/ui/semantics/Role;->value:I

    .line 834
    .line 835
    if-ne v2, v8, :cond_2e

    .line 836
    .line 837
    goto :goto_10

    .line 838
    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setCheckable(Z)V

    .line 839
    .line 840
    .line 841
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    .line 842
    .line 843
    .line 844
    move-result v2

    .line 845
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    .line 846
    .line 847
    .line 848
    :cond_30
    :goto_10
    sget-object v2, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 849
    .line 850
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    .line 852
    .line 853
    sget-object v2, Landroidx/compose/ui/autofill/ContentType$Companion;->Password:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 854
    .line 855
    invoke-static {v2}, Landroidx/sqlite/SQLite;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    .line 861
    .line 862
    array-length v3, v2

    .line 863
    if-eqz v3, :cond_3d

    .line 864
    .line 865
    const/16 v35, 0x0

    .line 866
    .line 867
    aget-object v2, v2, v35

    .line 868
    .line 869
    if-eqz v24, :cond_32

    .line 870
    .line 871
    invoke-static/range {v24 .. v24}, Landroidx/sqlite/SQLite;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    if-eqz v3, :cond_32

    .line 876
    .line 877
    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    const/4 v3, 0x1

    .line 882
    if-ne v2, v3, :cond_31

    .line 883
    .line 884
    move v2, v3

    .line 885
    goto :goto_12

    .line 886
    :cond_31
    :goto_11
    move/from16 v2, v35

    .line 887
    .line 888
    goto :goto_12

    .line 889
    :cond_32
    const/4 v3, 0x1

    .line 890
    goto :goto_11

    .line 891
    :goto_12
    if-nez v27, :cond_34

    .line 892
    .line 893
    if-eqz v2, :cond_33

    .line 894
    .line 895
    goto :goto_13

    .line 896
    :cond_33
    move/from16 v2, v35

    .line 897
    .line 898
    goto :goto_14

    .line 899
    :cond_34
    :goto_13
    move v2, v3

    .line 900
    :goto_14
    if-nez v2, :cond_36

    .line 901
    .line 902
    if-eqz v28, :cond_35

    .line 903
    .line 904
    goto :goto_15

    .line 905
    :cond_35
    move/from16 v14, v35

    .line 906
    .line 907
    goto :goto_16

    .line 908
    :cond_36
    :goto_15
    move v14, v3

    .line 909
    :goto_16
    invoke-static {v0, v14}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setDataIsSensitive(Landroid/view/ViewStructure;Z)V

    .line 910
    .line 911
    .line 912
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 913
    .line 914
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 915
    .line 916
    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    if-eqz v3, :cond_37

    .line 921
    .line 922
    goto :goto_17

    .line 923
    :cond_37
    move/from16 v8, v35

    .line 924
    .line 925
    :goto_17
    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->setVisibility(I)V

    .line 926
    .line 927
    .line 928
    if-eqz v13, :cond_39

    .line 929
    .line 930
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    const-string v4, ""

    .line 935
    .line 936
    move/from16 v6, v35

    .line 937
    .line 938
    :goto_18
    if-ge v6, v3, :cond_38

    .line 939
    .line 940
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v7

    .line 944
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 945
    .line 946
    invoke-static {v4}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    move-result-object v4

    .line 950
    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 951
    .line 952
    const/16 v8, 0xa

    .line 953
    .line 954
    invoke-static {v4, v7, v8}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v4

    .line 958
    add-int/lit8 v6, v6, 0x1

    .line 959
    .line 960
    goto :goto_18

    .line 961
    :cond_38
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 962
    .line 963
    .line 964
    const-string v3, "android.widget.TextView"

    .line 965
    .line 966
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    :cond_39
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    check-cast v1, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 974
    .line 975
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList$ObjectListMutableList;->isEmpty()Z

    .line 976
    .line 977
    .line 978
    move-result v1

    .line 979
    if-eqz v1, :cond_3a

    .line 980
    .line 981
    if-eqz v5, :cond_3a

    .line 982
    .line 983
    iget v1, v5, Landroidx/compose/ui/semantics/Role;->value:I

    .line 984
    .line 985
    invoke-static {v1}, Landroidx/compose/ui/platform/TestTagKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    if-eqz v1, :cond_3a

    .line 990
    .line 991
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    :cond_3a
    if-eqz v20, :cond_3c

    .line 995
    .line 996
    const-string v1, "android.widget.EditText"

    .line 997
    .line 998
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1002
    .line 1003
    const/16 v3, 0x1c

    .line 1004
    .line 1005
    if-lt v1, v3, :cond_3b

    .line 1006
    .line 1007
    if-eqz v29, :cond_3b

    .line 1008
    .line 1009
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    invoke-static {v0, v1}, Lorg/acra/util/PackageManagerWrapperKt;->setMaxTextLength(Landroid/view/ViewStructure;I)V

    .line 1014
    .line 1015
    .line 1016
    :cond_3b
    if-eqz v2, :cond_3c

    .line 1017
    .line 1018
    invoke-static {v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setInputType(Landroid/view/ViewStructure;)V

    .line 1019
    .line 1020
    .line 1021
    :cond_3c
    return-void

    .line 1022
    :cond_3d
    const-string v0, "Array is empty."

    .line 1023
    .line 1024
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    return-void
.end method

.method public static refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v2, p0

    .line 29
    array-length v3, p0

    .line 30
    array-length v4, v1

    .line 31
    add-int/2addr v3, v4

    .line 32
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v3, 0x0

    .line 37
    array-length v4, v1

    .line 38
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public static final resetRange([Ljava/lang/Object;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    if-ge p1, p2, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aput-object v0, p0, p1

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public static setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    :cond_1
    move v1, v2

    .line 19
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v2, 0x2

    .line 35
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final shareSelectedTextWithShareUtils(Landroid/widget/TextView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-le v1, v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, ""

    .line 53
    .line 54
    invoke-static {v2, v3, v1, v3}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_2
    instance-of v1, v0, Landroid/text/Spannable;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    check-cast v0, Landroid/text/Spannable;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {v0, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 68
    .line 69
    .line 70
    :cond_5
    return-void
.end method

.method public static final takeMax-impl(Landroidx/collection/MutableIntList;)I
    .locals 10

    .line 1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    :cond_0
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/collection/IntList;->last()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    .line 33
    .line 34
    ushr-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_0
    if-ge v4, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/collection/IntList;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-int/lit8 v6, v4, 0x1

    .line 44
    .line 45
    mul-int/lit8 v6, v6, 0x2

    .line 46
    .line 47
    add-int/lit8 v7, v6, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v7}, Landroidx/collection/IntList;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ge v6, v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Landroidx/collection/IntList;->get(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-le v9, v8, :cond_1

    .line 60
    .line 61
    if-le v9, v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, v4, v9}, Landroidx/collection/MutableIntList;->set(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v6, v5}, Landroidx/collection/MutableIntList;->set(II)V

    .line 67
    .line 68
    .line 69
    move v4, v6

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-le v8, v5, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v4, v8}, Landroidx/collection/MutableIntList;->set(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v5}, Landroidx/collection/MutableIntList;->set(II)V

    .line 77
    .line 78
    .line 79
    move v4, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return v1
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
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    const p0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_2
    const/high16 p0, -0x80000000

    .line 29
    .line 30
    return p0
.end method


# virtual methods
.method public abstract bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lkotlin/text/CharsKt;->createQuery()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lkotlin/text/CharsKt;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {p1, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :catchall_1
    move-exception p2

    .line 29
    invoke-static {p1, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method public insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-wide/16 p0, -0x1

    .line 7
    .line 8
    return-wide p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lkotlin/text/CharsKt;->createQuery()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lkotlin/text/CharsKt;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-static {v0, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/room/util/DBUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    return-wide p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    invoke-static {v0, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Lorg/jsoup/Jsoup;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lkotlin/text/CharsKt;->createQuery()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Lkotlin/text/CharsKt;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroidx/room/util/DBUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-wide/16 v2, -0x1

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 p0, 0x0

    .line 73
    invoke-static {v1, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    invoke-static {v1, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public abstract onFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onLoaded(Lokhttp3/Dispatcher;)V
.end method
