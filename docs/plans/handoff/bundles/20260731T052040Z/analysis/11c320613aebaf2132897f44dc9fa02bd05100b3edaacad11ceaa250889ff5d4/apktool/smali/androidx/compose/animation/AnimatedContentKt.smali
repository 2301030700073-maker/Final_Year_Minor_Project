.class public abstract Landroidx/compose/animation/AnimatedContentKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static final AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    move-object/from16 v8, p6

    .line 6
    .line 7
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x1e804e2f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v7, 0x6

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v7

    .line 31
    :goto_1
    and-int/lit8 v3, p8, 0x1

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    or-int/lit8 v0, v0, 0x30

    .line 36
    .line 37
    :cond_2
    move-object/from16 v4, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v4, v7, 0x30

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    move-object/from16 v4, p1

    .line 45
    .line 46
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    const/16 v5, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/16 v5, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v5

    .line 58
    :goto_3
    and-int/lit8 v5, p8, 0x2

    .line 59
    .line 60
    if-eqz v5, :cond_6

    .line 61
    .line 62
    or-int/lit16 v0, v0, 0x180

    .line 63
    .line 64
    :cond_5
    move-object/from16 v6, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v6, v7, 0x180

    .line 68
    .line 69
    if-nez v6, :cond_5

    .line 70
    .line 71
    move-object/from16 v6, p2

    .line 72
    .line 73
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_7

    .line 78
    .line 79
    const/16 v10, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v10, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v10

    .line 85
    :goto_5
    and-int/lit8 v10, p8, 0x4

    .line 86
    .line 87
    if-eqz v10, :cond_9

    .line 88
    .line 89
    or-int/lit16 v0, v0, 0xc00

    .line 90
    .line 91
    :cond_8
    move-object/from16 v11, p3

    .line 92
    .line 93
    goto :goto_7

    .line 94
    :cond_9
    and-int/lit16 v11, v7, 0xc00

    .line 95
    .line 96
    if-nez v11, :cond_8

    .line 97
    .line 98
    move-object/from16 v11, p3

    .line 99
    .line 100
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-eqz v12, :cond_a

    .line 105
    .line 106
    const/16 v12, 0x800

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    const/16 v12, 0x400

    .line 110
    .line 111
    :goto_6
    or-int/2addr v0, v12

    .line 112
    :goto_7
    and-int/lit8 v12, p8, 0x8

    .line 113
    .line 114
    if-eqz v12, :cond_c

    .line 115
    .line 116
    or-int/lit16 v0, v0, 0x6000

    .line 117
    .line 118
    :cond_b
    move-object/from16 v13, p4

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_c
    and-int/lit16 v13, v7, 0x6000

    .line 122
    .line 123
    if-nez v13, :cond_b

    .line 124
    .line 125
    move-object/from16 v13, p4

    .line 126
    .line 127
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_d

    .line 132
    .line 133
    const/16 v14, 0x4000

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_d
    const/16 v14, 0x2000

    .line 137
    .line 138
    :goto_8
    or-int/2addr v0, v14

    .line 139
    :goto_9
    const/high16 v14, 0x30000

    .line 140
    .line 141
    and-int/2addr v14, v7

    .line 142
    if-nez v14, :cond_f

    .line 143
    .line 144
    move-object/from16 v14, p5

    .line 145
    .line 146
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-eqz v15, :cond_e

    .line 151
    .line 152
    const/high16 v15, 0x20000

    .line 153
    .line 154
    goto :goto_a

    .line 155
    :cond_e
    const/high16 v15, 0x10000

    .line 156
    .line 157
    :goto_a
    or-int/2addr v0, v15

    .line 158
    goto :goto_b

    .line 159
    :cond_f
    move-object/from16 v14, p5

    .line 160
    .line 161
    :goto_b
    const v15, 0x12493

    .line 162
    .line 163
    .line 164
    and-int/2addr v15, v0

    .line 165
    const/16 p6, 0x20

    .line 166
    .line 167
    const v9, 0x12492

    .line 168
    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    if-eq v15, v9, :cond_10

    .line 172
    .line 173
    const/4 v9, 0x1

    .line 174
    goto :goto_c

    .line 175
    :cond_10
    move v9, v2

    .line 176
    :goto_c
    and-int/lit8 v15, v0, 0x1

    .line 177
    .line 178
    invoke-virtual {v8, v15, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_3b

    .line 183
    .line 184
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 185
    .line 186
    if-eqz v3, :cond_11

    .line 187
    .line 188
    move-object v15, v9

    .line 189
    goto :goto_d

    .line 190
    :cond_11
    move-object v15, v4

    .line 191
    :goto_d
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 192
    .line 193
    if-eqz v5, :cond_13

    .line 194
    .line 195
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    if-ne v4, v3, :cond_12

    .line 200
    .line 201
    sget-object v4, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 202
    .line 203
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_12
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 207
    .line 208
    goto :goto_e

    .line 209
    :cond_13
    move-object v4, v6

    .line 210
    :goto_e
    if-eqz v10, :cond_14

    .line 211
    .line 212
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 213
    .line 214
    move-object v11, v5

    .line 215
    :cond_14
    if-eqz v12, :cond_16

    .line 216
    .line 217
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    if-ne v5, v3, :cond_15

    .line 222
    .line 223
    sget-object v5, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 224
    .line 225
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 229
    .line 230
    move-object v13, v5

    .line 231
    :cond_16
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 232
    .line 233
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 238
    .line 239
    and-int/lit8 v0, v0, 0xe

    .line 240
    .line 241
    const/4 v5, 0x4

    .line 242
    if-ne v0, v5, :cond_17

    .line 243
    .line 244
    const/4 v5, 0x1

    .line 245
    goto :goto_f

    .line 246
    :cond_17
    move v5, v2

    .line 247
    :goto_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    if-nez v5, :cond_18

    .line 252
    .line 253
    if-ne v6, v3, :cond_19

    .line 254
    .line 255
    :cond_18
    new-instance v6, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 256
    .line 257
    invoke-direct {v6, v1, v11}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_19
    check-cast v6, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 264
    .line 265
    const/4 v5, 0x4

    .line 266
    if-ne v0, v5, :cond_1a

    .line 267
    .line 268
    const/4 v5, 0x1

    .line 269
    goto :goto_10

    .line 270
    :cond_1a
    move v5, v2

    .line 271
    :goto_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    if-nez v5, :cond_1b

    .line 276
    .line 277
    if-ne v10, v3, :cond_1c

    .line 278
    .line 279
    :cond_1b
    iget-object v5, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 280
    .line 281
    invoke-virtual {v5}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const/4 v10, 0x1

    .line 286
    new-array v12, v10, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object v5, v12, v2

    .line 289
    .line 290
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 291
    .line 292
    invoke-direct {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-static {v12}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_1c
    move-object v5, v10

    .line 306
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 307
    .line 308
    const/4 v10, 0x4

    .line 309
    if-ne v0, v10, :cond_1d

    .line 310
    .line 311
    const/4 v0, 0x1

    .line 312
    goto :goto_11

    .line 313
    :cond_1d
    move v0, v2

    .line 314
    :goto_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    if-nez v0, :cond_1e

    .line 319
    .line 320
    if-ne v10, v3, :cond_1f

    .line 321
    .line 322
    :cond_1e
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 323
    .line 324
    new-instance v10, Landroidx/collection/MutableScatterMap;

    .line 325
    .line 326
    invoke-direct {v10}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_1f
    check-cast v10, Landroidx/collection/MutableScatterMap;

    .line 333
    .line 334
    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 335
    .line 336
    iget-object v12, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 337
    .line 338
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-nez v2, :cond_20

    .line 347
    .line 348
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    :cond_20
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    move-object/from16 p1, v0

    .line 363
    .line 364
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_25

    .line 373
    .line 374
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    const/4 v2, 0x1

    .line 379
    if-ne v0, v2, :cond_21

    .line 380
    .line 381
    const/4 v0, 0x0

    .line 382
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_22

    .line 395
    .line 396
    :cond_21
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 397
    .line 398
    .line 399
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    :cond_22
    iget v0, v10, Landroidx/collection/MutableScatterMap;->_size:I

    .line 407
    .line 408
    const/4 v2, 0x1

    .line 409
    if-ne v0, v2, :cond_23

    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_24

    .line 420
    .line 421
    :cond_23
    invoke-virtual {v10}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 422
    .line 423
    .line 424
    :cond_24
    iput-object v11, v6, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->contentAlignment:Landroidx/compose/ui/Alignment;

    .line 425
    .line 426
    goto :goto_12

    .line 427
    :cond_25
    const/4 v2, 0x1

    .line 428
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_29

    .line 441
    .line 442
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-nez v0, :cond_29

    .line 451
    .line 452
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    const/4 v2, 0x0

    .line 457
    :goto_13
    move-object/from16 v18, v0

    .line 458
    .line 459
    check-cast v18, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 460
    .line 461
    invoke-virtual/range {v18 .. v18}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v19

    .line 465
    move-object/from16 p2, v0

    .line 466
    .line 467
    if-eqz v19, :cond_27

    .line 468
    .line 469
    invoke-virtual/range {v18 .. v18}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-interface {v13, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_26

    .line 490
    .line 491
    :goto_14
    const/4 v0, -0x1

    .line 492
    goto :goto_15

    .line 493
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 494
    .line 495
    move-object/from16 v1, p0

    .line 496
    .line 497
    move-object/from16 v0, p2

    .line 498
    .line 499
    goto :goto_13

    .line 500
    :cond_27
    const/4 v2, -0x1

    .line 501
    goto :goto_14

    .line 502
    :goto_15
    if-ne v2, v0, :cond_28

    .line 503
    .line 504
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_16

    .line 512
    :cond_28
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v5, v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    :cond_29
    :goto_16
    invoke-virtual {v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-eqz v0, :cond_2a

    .line 528
    .line 529
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v10, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-nez v0, :cond_2b

    .line 538
    .line 539
    :cond_2a
    const/4 v0, 0x0

    .line 540
    goto :goto_17

    .line 541
    :cond_2b
    const v0, 0x755c7cd3

    .line 542
    .line 543
    .line 544
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 545
    .line 546
    .line 547
    const/4 v0, 0x0

    .line 548
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 549
    .line 550
    .line 551
    move v14, v0

    .line 552
    move-object/from16 v20, v3

    .line 553
    .line 554
    move-object v0, v6

    .line 555
    move-object v6, v4

    .line 556
    goto :goto_19

    .line 557
    :goto_17
    const v1, 0x75350ad1

    .line 558
    .line 559
    .line 560
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v10}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 567
    .line 568
    .line 569
    move-result v12

    .line 570
    move v1, v0

    .line 571
    :goto_18
    if-ge v1, v12, :cond_2c

    .line 572
    .line 573
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    move/from16 v16, v0

    .line 578
    .line 579
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    .line 580
    .line 581
    move-object/from16 v20, v3

    .line 582
    .line 583
    move-object v3, v4

    .line 584
    move-object v4, v6

    .line 585
    move-object v6, v14

    .line 586
    move/from16 v14, v16

    .line 587
    .line 588
    move/from16 v16, v1

    .line 589
    .line 590
    move-object/from16 v1, p0

    .line 591
    .line 592
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function4;)V

    .line 593
    .line 594
    .line 595
    move-object v1, v0

    .line 596
    move-object v6, v3

    .line 597
    move-object v0, v4

    .line 598
    const v3, -0x16ceaa7

    .line 599
    .line 600
    .line 601
    invoke-static {v3, v1, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-virtual {v10, v2, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    add-int/lit8 v1, v16, 0x1

    .line 609
    .line 610
    move-object v4, v6

    .line 611
    move-object/from16 v3, v20

    .line 612
    .line 613
    move-object v6, v0

    .line 614
    move v0, v14

    .line 615
    move-object/from16 v14, p5

    .line 616
    .line 617
    goto :goto_18

    .line 618
    :cond_2c
    move v14, v0

    .line 619
    move-object/from16 v20, v3

    .line 620
    .line 621
    move-object v0, v6

    .line 622
    move-object v6, v4

    .line 623
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 624
    .line 625
    .line 626
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    or-int/2addr v1, v2

    .line 639
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    move-object/from16 v12, v20

    .line 644
    .line 645
    if-nez v1, :cond_2d

    .line 646
    .line 647
    if-ne v2, v12, :cond_2e

    .line 648
    .line 649
    :cond_2d
    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    move-object v2, v1

    .line 654
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 655
    .line 656
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    :cond_2e
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 660
    .line 661
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 662
    .line 663
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    if-nez v3, :cond_2f

    .line 672
    .line 673
    if-ne v4, v12, :cond_30

    .line 674
    .line 675
    :cond_2f
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 676
    .line 677
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    :cond_30
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 685
    .line 686
    iget-object v2, v2, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

    .line 687
    .line 688
    invoke-static {v2, v8}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    iget-object v3, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 693
    .line 694
    invoke-virtual {v3}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 699
    .line 700
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    if-eqz v1, :cond_31

    .line 709
    .line 710
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 711
    .line 712
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    goto :goto_1a

    .line 716
    :cond_31
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    if-eqz v1, :cond_32

    .line 721
    .line 722
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 723
    .line 724
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    :cond_32
    :goto_1a
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Ljava/lang/Boolean;

    .line 732
    .line 733
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_35

    .line 738
    .line 739
    const v1, 0x50a652f9

    .line 740
    .line 741
    .line 742
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 743
    .line 744
    .line 745
    move-object v4, v0

    .line 746
    iget-object v0, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 747
    .line 748
    sget-object v1, Landroidx/compose/animation/core/ArcSplineKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 749
    .line 750
    move-object v3, v4

    .line 751
    const/4 v4, 0x0

    .line 752
    move-object/from16 v16, v5

    .line 753
    .line 754
    const/4 v5, 0x2

    .line 755
    move-object/from16 v17, v2

    .line 756
    .line 757
    const/4 v2, 0x0

    .line 758
    move-object/from16 v21, v8

    .line 759
    .line 760
    move-object v8, v3

    .line 761
    move-object/from16 v3, v21

    .line 762
    .line 763
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    if-nez v1, :cond_33

    .line 776
    .line 777
    if-ne v2, v12, :cond_34

    .line 778
    .line 779
    :cond_33
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    check-cast v1, Landroidx/compose/animation/SizeTransformImpl;

    .line 784
    .line 785
    invoke-static {v9}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    :cond_34
    move-object v9, v2

    .line 793
    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 794
    .line 795
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 796
    .line 797
    .line 798
    goto :goto_1b

    .line 799
    :cond_35
    move-object/from16 v17, v2

    .line 800
    .line 801
    move-object/from16 v16, v5

    .line 802
    .line 803
    move-object v3, v8

    .line 804
    move-object v8, v0

    .line 805
    const v0, 0x50aa6233

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 812
    .line 813
    .line 814
    const/4 v0, 0x0

    .line 815
    :goto_1b
    new-instance v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    .line 816
    .line 817
    move-object/from16 v2, v17

    .line 818
    .line 819
    invoke-direct {v1, v0, v2, v8}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 820
    .line 821
    .line 822
    invoke-interface {v9, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-interface {v15, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    if-ne v1, v12, :cond_36

    .line 835
    .line 836
    new-instance v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 837
    .line 838
    invoke-direct {v1, v8}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    :cond_36
    check-cast v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 845
    .line 846
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 847
    .line 848
    ushr-long v8, v4, p6

    .line 849
    .line 850
    xor-long/2addr v4, v8

    .line 851
    long-to-int v2, v4

    .line 852
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 853
    .line 854
    .line 855
    move-result-object v4

    .line 856
    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 861
    .line 862
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 866
    .line 867
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 868
    .line 869
    .line 870
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 871
    .line 872
    if-eqz v8, :cond_37

    .line 873
    .line 874
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 875
    .line 876
    .line 877
    goto :goto_1c

    .line 878
    :cond_37
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 879
    .line 880
    .line 881
    :goto_1c
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 882
    .line 883
    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 884
    .line 885
    .line 886
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 887
    .line 888
    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 889
    .line 890
    .line 891
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 896
    .line 897
    iget-boolean v4, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 898
    .line 899
    if-eqz v4, :cond_38

    .line 900
    .line 901
    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/GapComposer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 902
    .line 903
    .line 904
    :cond_38
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 905
    .line 906
    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 907
    .line 908
    .line 909
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 910
    .line 911
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 912
    .line 913
    .line 914
    const v0, -0x334534ba    # -9.793387E7f

    .line 915
    .line 916
    .line 917
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 918
    .line 919
    .line 920
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    move v2, v14

    .line 925
    :goto_1d
    if-ge v2, v0, :cond_3a

    .line 926
    .line 927
    move-object/from16 v5, v16

    .line 928
    .line 929
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    const v4, -0x78c25a0a

    .line 934
    .line 935
    .line 936
    invoke-interface {v13, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v8

    .line 940
    invoke-virtual {v3, v4, v8}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v10, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 948
    .line 949
    if-nez v1, :cond_39

    .line 950
    .line 951
    const v1, 0x6077a733

    .line 952
    .line 953
    .line 954
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 955
    .line 956
    .line 957
    :goto_1e
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 958
    .line 959
    .line 960
    goto :goto_1f

    .line 961
    :cond_39
    const v4, -0x78c25572

    .line 962
    .line 963
    .line 964
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 965
    .line 966
    .line 967
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 968
    .line 969
    .line 970
    move-result-object v4

    .line 971
    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    goto :goto_1e

    .line 975
    :goto_1f
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 976
    .line 977
    .line 978
    add-int/lit8 v2, v2, 0x1

    .line 979
    .line 980
    move-object/from16 v16, v5

    .line 981
    .line 982
    goto :goto_1d

    .line 983
    :cond_3a
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 984
    .line 985
    .line 986
    const/4 v2, 0x1

    .line 987
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 988
    .line 989
    .line 990
    move-object v2, v15

    .line 991
    :goto_20
    move-object v0, v3

    .line 992
    move-object v3, v6

    .line 993
    move-object v4, v11

    .line 994
    move-object v5, v13

    .line 995
    goto :goto_21

    .line 996
    :cond_3b
    move-object v3, v8

    .line 997
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 998
    .line 999
    .line 1000
    move-object v2, v4

    .line 1001
    goto :goto_20

    .line 1002
    :goto_21
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v9

    .line 1006
    if-eqz v9, :cond_3c

    .line 1007
    .line 1008
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;

    .line 1009
    .line 1010
    move-object/from16 v1, p0

    .line 1011
    .line 1012
    move-object/from16 v6, p5

    .line 1013
    .line 1014
    move/from16 v8, p8

    .line 1015
    .line 1016
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;II)V

    .line 1017
    .line 1018
    .line 1019
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1020
    .line 1021
    :cond_3c
    return-void
.end method

.method public static final AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v12, p7

    .line 18
    .line 19
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v0, 0x72039c2f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v0, v8, 0x6

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    move v0, v9

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v0, v8

    .line 44
    :goto_1
    and-int/lit8 v10, v8, 0x30

    .line 45
    .line 46
    if-nez v10, :cond_3

    .line 47
    .line 48
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_2

    .line 53
    .line 54
    const/16 v10, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v10, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v10

    .line 60
    :cond_3
    and-int/lit16 v10, v8, 0x180

    .line 61
    .line 62
    if-nez v10, :cond_5

    .line 63
    .line 64
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    const/16 v10, 0x100

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/16 v10, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v0, v10

    .line 76
    :cond_5
    and-int/lit16 v10, v8, 0xc00

    .line 77
    .line 78
    if-nez v10, :cond_7

    .line 79
    .line 80
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_6

    .line 85
    .line 86
    const/16 v10, 0x800

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    const/16 v10, 0x400

    .line 90
    .line 91
    :goto_4
    or-int/2addr v0, v10

    .line 92
    :cond_7
    and-int/lit16 v10, v8, 0x6000

    .line 93
    .line 94
    if-nez v10, :cond_9

    .line 95
    .line 96
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_8

    .line 101
    .line 102
    const/16 v10, 0x4000

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_8
    const/16 v10, 0x2000

    .line 106
    .line 107
    :goto_5
    or-int/2addr v0, v10

    .line 108
    :cond_9
    const/high16 v10, 0x30000

    .line 109
    .line 110
    and-int/2addr v10, v8

    .line 111
    if-nez v10, :cond_b

    .line 112
    .line 113
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_a

    .line 118
    .line 119
    const/high16 v10, 0x20000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v10, 0x10000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v0, v10

    .line 125
    :cond_b
    and-int/lit8 v10, p9, 0x40

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    const/high16 v13, 0x180000

    .line 129
    .line 130
    if-eqz v10, :cond_c

    .line 131
    .line 132
    or-int/2addr v0, v13

    .line 133
    goto :goto_9

    .line 134
    :cond_c
    and-int v10, v8, v13

    .line 135
    .line 136
    if-nez v10, :cond_f

    .line 137
    .line 138
    const/high16 v10, 0x200000

    .line 139
    .line 140
    and-int/2addr v10, v8

    .line 141
    if-nez v10, :cond_d

    .line 142
    .line 143
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    goto :goto_7

    .line 148
    :cond_d
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    :goto_7
    if-eqz v10, :cond_e

    .line 153
    .line 154
    const/high16 v10, 0x100000

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_e
    const/high16 v10, 0x80000

    .line 158
    .line 159
    :goto_8
    or-int/2addr v0, v10

    .line 160
    :cond_f
    :goto_9
    const/high16 v10, 0xc00000

    .line 161
    .line 162
    and-int/2addr v10, v8

    .line 163
    if-nez v10, :cond_11

    .line 164
    .line 165
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_10

    .line 170
    .line 171
    const/high16 v10, 0x800000

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_10
    const/high16 v10, 0x400000

    .line 175
    .line 176
    :goto_a
    or-int/2addr v0, v10

    .line 177
    :cond_11
    const v10, 0x492493

    .line 178
    .line 179
    .line 180
    and-int/2addr v10, v0

    .line 181
    const v13, 0x492492

    .line 182
    .line 183
    .line 184
    const/16 p7, 0x20

    .line 185
    .line 186
    const/4 v15, 0x0

    .line 187
    if-eq v10, v13, :cond_12

    .line 188
    .line 189
    const/4 v10, 0x1

    .line 190
    goto :goto_b

    .line 191
    :cond_12
    move v10, v15

    .line 192
    :goto_b
    and-int/lit8 v13, v0, 0x1

    .line 193
    .line 194
    invoke-virtual {v12, v13, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_4f

    .line 199
    .line 200
    iget-object v10, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 201
    .line 202
    iget-object v13, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 203
    .line 204
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    check-cast v10, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-nez v10, :cond_14

    .line 219
    .line 220
    invoke-virtual {v13}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    check-cast v10, Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-nez v10, :cond_14

    .line 235
    .line 236
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-nez v10, :cond_14

    .line 241
    .line 242
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getHasInitialValueAnimations()Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-eqz v10, :cond_13

    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_13
    const v0, -0xdabcc8d

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 256
    .line 257
    .line 258
    move-object v1, v7

    .line 259
    goto/16 :goto_27

    .line 260
    .line 261
    :cond_14
    :goto_c
    const v10, -0xdd9ee57

    .line 262
    .line 263
    .line 264
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 265
    .line 266
    .line 267
    and-int/lit8 v10, v0, 0xe

    .line 268
    .line 269
    or-int/lit8 v16, v10, 0x30

    .line 270
    .line 271
    and-int/lit8 v14, v16, 0xe

    .line 272
    .line 273
    xor-int/lit8 v11, v14, 0x6

    .line 274
    .line 275
    if-le v11, v9, :cond_15

    .line 276
    .line 277
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    if-nez v11, :cond_16

    .line 282
    .line 283
    :cond_15
    and-int/lit8 v11, v16, 0x6

    .line 284
    .line 285
    if-ne v11, v9, :cond_17

    .line 286
    .line 287
    :cond_16
    const/4 v11, 0x1

    .line 288
    goto :goto_d

    .line 289
    :cond_17
    move v11, v15

    .line 290
    :goto_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    move-object/from16 v18, v13

    .line 295
    .line 296
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 297
    .line 298
    if-nez v11, :cond_18

    .line 299
    .line 300
    if-ne v9, v13, :cond_19

    .line 301
    .line 302
    :cond_18
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_19
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    if-eqz v11, :cond_1a

    .line 314
    .line 315
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    :cond_1a
    const v11, 0x6defb3b0

    .line 320
    .line 321
    .line 322
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 323
    .line 324
    .line 325
    invoke-static {v1, v2, v9, v12}, Landroidx/compose/animation/AnimatedContentKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 330
    .line 331
    .line 332
    iget-object v15, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 333
    .line 334
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v15

    .line 338
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v2, v15, v12}, Landroidx/compose/animation/AnimatedContentKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;

    .line 342
    .line 343
    .line 344
    move-result-object v11

    .line 345
    const/4 v15, 0x0

    .line 346
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 347
    .line 348
    .line 349
    or-int/lit16 v14, v14, 0xc00

    .line 350
    .line 351
    and-int/lit8 v15, v14, 0xe

    .line 352
    .line 353
    xor-int/lit8 v15, v15, 0x6

    .line 354
    .line 355
    move/from16 v19, v0

    .line 356
    .line 357
    const/4 v0, 0x4

    .line 358
    if-le v15, v0, :cond_1b

    .line 359
    .line 360
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v16

    .line 364
    if-nez v16, :cond_1c

    .line 365
    .line 366
    :cond_1b
    and-int/lit8 v2, v14, 0x6

    .line 367
    .line 368
    if-ne v2, v0, :cond_1d

    .line 369
    .line 370
    :cond_1c
    const/4 v0, 0x1

    .line 371
    goto :goto_e

    .line 372
    :cond_1d
    const/4 v0, 0x0

    .line 373
    :goto_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    if-nez v0, :cond_1f

    .line 378
    .line 379
    if-ne v2, v13, :cond_1e

    .line 380
    .line 381
    goto :goto_f

    .line 382
    :cond_1e
    move/from16 v20, v14

    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_1f
    :goto_f
    new-instance v2, Landroidx/compose/animation/core/Transition;

    .line 386
    .line 387
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 388
    .line 389
    invoke-direct {v0, v9}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    new-instance v8, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    move/from16 v20, v14

    .line 398
    .line 399
    iget-object v14, v1, Landroidx/compose/animation/core/Transition;->label:Ljava/lang/String;

    .line 400
    .line 401
    const-string v7, " > EnterExitTransition"

    .line 402
    .line 403
    invoke-static {v8, v14, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-direct {v2, v0, v1, v7}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/TransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    :goto_10
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 414
    .line 415
    const/4 v0, 0x4

    .line 416
    if-le v15, v0, :cond_20

    .line 417
    .line 418
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-nez v7, :cond_21

    .line 423
    .line 424
    :cond_20
    and-int/lit8 v7, v20, 0x6

    .line 425
    .line 426
    if-ne v7, v0, :cond_22

    .line 427
    .line 428
    :cond_21
    const/4 v0, 0x1

    .line 429
    goto :goto_11

    .line 430
    :cond_22
    const/4 v0, 0x0

    .line 431
    :goto_11
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    or-int/2addr v0, v7

    .line 436
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    if-nez v0, :cond_23

    .line 441
    .line 442
    if-ne v7, v13, :cond_24

    .line 443
    .line 444
    :cond_23
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 445
    .line 446
    const/4 v0, 0x4

    .line 447
    invoke-direct {v7, v1, v2, v0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :cond_24
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 454
    .line 455
    invoke-static {v2, v7, v12}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    if-eqz v0, :cond_25

    .line 463
    .line 464
    invoke-virtual {v2, v9, v11}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    goto :goto_12

    .line 468
    :cond_25
    invoke-virtual {v2, v11}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 472
    .line 473
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 474
    .line 475
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :goto_12
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 479
    .line 480
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    if-nez v0, :cond_26

    .line 489
    .line 490
    if-ne v7, v13, :cond_27

    .line 491
    .line 492
    :cond_26
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_27
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 500
    .line 501
    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 502
    .line 503
    iget-object v8, v2, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 504
    .line 505
    iget-object v9, v2, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 506
    .line 507
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v11

    .line 515
    sget-object v14, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 516
    .line 517
    if-ne v0, v11, :cond_29

    .line 518
    .line 519
    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    if-ne v0, v14, :cond_29

    .line 524
    .line 525
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_28

    .line 530
    .line 531
    invoke-interface {v7, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    goto :goto_13

    .line 535
    :cond_28
    sget-object v0, Landroidx/compose/animation/EnterTransition;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 536
    .line 537
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    goto :goto_13

    .line 541
    :cond_29
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-ne v0, v14, :cond_2a

    .line 546
    .line 547
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    check-cast v0, Landroidx/compose/animation/EnterTransition;

    .line 552
    .line 553
    invoke-virtual {v0, v4}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    :cond_2a
    :goto_13
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Landroidx/compose/animation/EnterTransition;

    .line 565
    .line 566
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v11

    .line 574
    if-nez v7, :cond_2b

    .line 575
    .line 576
    if-ne v11, v13, :cond_2c

    .line 577
    .line 578
    :cond_2b
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 579
    .line 580
    .line 581
    move-result-object v11

    .line 582
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    :cond_2c
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 586
    .line 587
    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v15

    .line 595
    if-ne v7, v15, :cond_2f

    .line 596
    .line 597
    invoke-virtual {v8}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    if-ne v7, v14, :cond_2f

    .line 602
    .line 603
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    if-eqz v7, :cond_2e

    .line 608
    .line 609
    invoke-interface {v11, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    :cond_2d
    :goto_14
    move-object/from16 v20, v8

    .line 613
    .line 614
    move-object/from16 v21, v9

    .line 615
    .line 616
    goto :goto_17

    .line 617
    :cond_2e
    sget-object v7, Landroidx/compose/animation/ExitTransition;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 618
    .line 619
    invoke-interface {v11, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    goto :goto_14

    .line 623
    :cond_2f
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    if-eq v7, v14, :cond_2d

    .line 628
    .line 629
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    check-cast v7, Landroidx/compose/animation/ExitTransition;

    .line 634
    .line 635
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    new-instance v14, Landroidx/compose/animation/ExitTransitionImpl;

    .line 639
    .line 640
    new-instance v15, Landroidx/compose/animation/TransitionData;

    .line 641
    .line 642
    move-object v1, v5

    .line 643
    check-cast v1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 644
    .line 645
    iget-object v1, v1, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 646
    .line 647
    iget-object v1, v1, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 648
    .line 649
    if-nez v1, :cond_30

    .line 650
    .line 651
    move-object v1, v7

    .line 652
    check-cast v1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 653
    .line 654
    iget-object v1, v1, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 655
    .line 656
    iget-object v1, v1, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 657
    .line 658
    :cond_30
    move-object v4, v5

    .line 659
    check-cast v4, Landroidx/compose/animation/ExitTransitionImpl;

    .line 660
    .line 661
    iget-object v4, v4, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 662
    .line 663
    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    .line 664
    .line 665
    iget-object v7, v7, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 666
    .line 667
    iget-object v5, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 668
    .line 669
    if-nez v5, :cond_31

    .line 670
    .line 671
    iget-object v5, v7, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 672
    .line 673
    :cond_31
    move-object/from16 v20, v8

    .line 674
    .line 675
    iget-boolean v8, v4, Landroidx/compose/animation/TransitionData;->hold:Z

    .line 676
    .line 677
    if-nez v8, :cond_33

    .line 678
    .line 679
    iget-boolean v8, v7, Landroidx/compose/animation/TransitionData;->hold:Z

    .line 680
    .line 681
    if-eqz v8, :cond_32

    .line 682
    .line 683
    goto :goto_15

    .line 684
    :cond_32
    const/4 v8, 0x0

    .line 685
    goto :goto_16

    .line 686
    :cond_33
    :goto_15
    const/4 v8, 0x1

    .line 687
    :goto_16
    iget-object v7, v7, Landroidx/compose/animation/TransitionData;->effectsMap:Ljava/util/Map;

    .line 688
    .line 689
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->effectsMap:Ljava/util/Map;

    .line 690
    .line 691
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    .line 696
    .line 697
    move-object/from16 v21, v9

    .line 698
    .line 699
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 700
    .line 701
    invoke-direct {v9, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v9, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 705
    .line 706
    .line 707
    invoke-direct {v15, v1, v5, v8, v9}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Scale;ZLjava/util/Map;)V

    .line 708
    .line 709
    .line 710
    invoke-direct {v14, v15}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 711
    .line 712
    .line 713
    invoke-interface {v11, v14}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    check-cast v1, Landroidx/compose/animation/ExitTransition;

    .line 721
    .line 722
    invoke-static {v6, v12}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    invoke-interface {v6, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v7

    .line 742
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    or-int/2addr v7, v8

    .line 747
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v8

    .line 751
    if-nez v7, :cond_34

    .line 752
    .line 753
    if-ne v8, v13, :cond_35

    .line 754
    .line 755
    :cond_34
    new-instance v8, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;

    .line 756
    .line 757
    const/4 v7, 0x0

    .line 758
    invoke-direct {v8, v2, v4, v7}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    :cond_35
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 765
    .line 766
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    if-ne v4, v13, :cond_36

    .line 771
    .line 772
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    :cond_36
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 780
    .line 781
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v7

    .line 789
    if-nez v5, :cond_38

    .line 790
    .line 791
    if-ne v7, v13, :cond_37

    .line 792
    .line 793
    goto :goto_18

    .line 794
    :cond_37
    const/4 v5, 0x0

    .line 795
    goto :goto_19

    .line 796
    :cond_38
    :goto_18
    new-instance v7, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;

    .line 797
    .line 798
    const/4 v5, 0x0

    .line 799
    invoke-direct {v7, v8, v4, v5}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 803
    .line 804
    .line 805
    :goto_19
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 806
    .line 807
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 808
    .line 809
    invoke-static {v12, v8, v7}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v7

    .line 816
    sget-object v8, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 817
    .line 818
    if-ne v7, v8, :cond_3a

    .line 819
    .line 820
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    if-ne v7, v8, :cond_3a

    .line 825
    .line 826
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    check-cast v4, Ljava/lang/Boolean;

    .line 831
    .line 832
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 833
    .line 834
    .line 835
    move-result v4

    .line 836
    if-nez v4, :cond_39

    .line 837
    .line 838
    goto :goto_1a

    .line 839
    :cond_39
    const v0, -0xdabe3cd

    .line 840
    .line 841
    .line 842
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 843
    .line 844
    .line 845
    const/4 v15, 0x0

    .line 846
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 847
    .line 848
    .line 849
    move-object/from16 v1, p6

    .line 850
    .line 851
    goto/16 :goto_26

    .line 852
    .line 853
    :cond_3a
    :goto_1a
    const v4, -0xdc032f6

    .line 854
    .line 855
    .line 856
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 857
    .line 858
    .line 859
    const/4 v4, 0x4

    .line 860
    if-ne v10, v4, :cond_3b

    .line 861
    .line 862
    const/4 v4, 0x1

    .line 863
    goto :goto_1b

    .line 864
    :cond_3b
    const/4 v4, 0x0

    .line 865
    :goto_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    if-nez v4, :cond_3c

    .line 870
    .line 871
    if-ne v7, v13, :cond_3d

    .line 872
    .line 873
    :cond_3c
    new-instance v7, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 874
    .line 875
    invoke-direct {v7}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>()V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    :cond_3d
    check-cast v7, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 882
    .line 883
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    if-ne v4, v13, :cond_3e

    .line 888
    .line 889
    sget-object v4, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;

    .line 890
    .line 891
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 892
    .line 893
    .line 894
    :cond_3e
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 895
    .line 896
    const v8, -0xa02f001

    .line 897
    .line 898
    .line 899
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 900
    .line 901
    .line 902
    const/4 v15, 0x0

    .line 903
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 904
    .line 905
    .line 906
    const v8, -0xa02e522

    .line 907
    .line 908
    .line 909
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 913
    .line 914
    .line 915
    move-object v8, v0

    .line 916
    check-cast v8, Landroidx/compose/animation/EnterTransitionImpl;

    .line 917
    .line 918
    iget-object v8, v8, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 919
    .line 920
    move-object v8, v1

    .line 921
    check-cast v8, Landroidx/compose/animation/ExitTransitionImpl;

    .line 922
    .line 923
    iget-object v8, v8, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 924
    .line 925
    move-object v8, v0

    .line 926
    check-cast v8, Landroidx/compose/animation/EnterTransitionImpl;

    .line 927
    .line 928
    iget-object v8, v8, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 929
    .line 930
    const v9, -0x36529734    # -1420569.5f

    .line 931
    .line 932
    .line 933
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 937
    .line 938
    .line 939
    const v9, -0x364f7fbd

    .line 940
    .line 941
    .line 942
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 946
    .line 947
    .line 948
    const v9, -0x364bc67d

    .line 949
    .line 950
    .line 951
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 955
    .line 956
    .line 957
    sget-object v9, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 958
    .line 959
    const v9, -0x363f7c78    # -1577073.0f

    .line 960
    .line 961
    .line 962
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 966
    .line 967
    .line 968
    move-object v9, v1

    .line 969
    check-cast v9, Landroidx/compose/animation/ExitTransitionImpl;

    .line 970
    .line 971
    iget-object v9, v9, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 972
    .line 973
    sget-object v10, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 974
    .line 975
    iget-object v11, v8, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 976
    .line 977
    if-nez v11, :cond_40

    .line 978
    .line 979
    iget-object v11, v9, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 980
    .line 981
    if-eqz v11, :cond_3f

    .line 982
    .line 983
    goto :goto_1c

    .line 984
    :cond_3f
    const/4 v11, 0x0

    .line 985
    goto :goto_1d

    .line 986
    :cond_40
    :goto_1c
    const/4 v11, 0x1

    .line 987
    :goto_1d
    iget-object v8, v8, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 988
    .line 989
    if-nez v8, :cond_42

    .line 990
    .line 991
    iget-object v8, v9, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 992
    .line 993
    if-eqz v8, :cond_41

    .line 994
    .line 995
    goto :goto_1e

    .line 996
    :cond_41
    const/4 v8, 0x0

    .line 997
    goto :goto_1f

    .line 998
    :cond_42
    :goto_1e
    const/4 v8, 0x1

    .line 999
    :goto_1f
    if-eqz v11, :cond_44

    .line 1000
    .line 1001
    const v9, -0x29f458fd

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v9

    .line 1011
    if-ne v9, v13, :cond_43

    .line 1012
    .line 1013
    const-string v9, "Built-in alpha"

    .line 1014
    .line 1015
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    :cond_43
    move-object v11, v9

    .line 1019
    check-cast v11, Ljava/lang/String;

    .line 1020
    .line 1021
    move-object v9, v13

    .line 1022
    const/16 v13, 0x180

    .line 1023
    .line 1024
    const/4 v14, 0x0

    .line 1025
    move-object/from16 v17, v9

    .line 1026
    .line 1027
    move-object v9, v2

    .line 1028
    move-object/from16 v2, v17

    .line 1029
    .line 1030
    move-object/from16 v17, v5

    .line 1031
    .line 1032
    const/4 v5, 0x1

    .line 1033
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v11

    .line 1037
    const/4 v15, 0x0

    .line 1038
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1039
    .line 1040
    .line 1041
    move-object v15, v11

    .line 1042
    goto :goto_20

    .line 1043
    :cond_44
    move-object v9, v2

    .line 1044
    move-object/from16 v17, v5

    .line 1045
    .line 1046
    move-object v2, v13

    .line 1047
    const/4 v5, 0x1

    .line 1048
    const/4 v15, 0x0

    .line 1049
    const v11, -0x29f1c318

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1056
    .line 1057
    .line 1058
    move-object/from16 v15, v17

    .line 1059
    .line 1060
    :goto_20
    if-eqz v8, :cond_46

    .line 1061
    .line 1062
    const v11, -0x29f0badd

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v11

    .line 1072
    if-ne v11, v2, :cond_45

    .line 1073
    .line 1074
    const-string v11, "Built-in scale"

    .line 1075
    .line 1076
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1077
    .line 1078
    .line 1079
    :cond_45
    check-cast v11, Ljava/lang/String;

    .line 1080
    .line 1081
    const/16 v13, 0x180

    .line 1082
    .line 1083
    const/4 v14, 0x0

    .line 1084
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v11

    .line 1088
    const/4 v10, 0x0

    .line 1089
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1090
    .line 1091
    .line 1092
    move-object/from16 v23, v11

    .line 1093
    .line 1094
    goto :goto_21

    .line 1095
    :cond_46
    const/4 v10, 0x0

    .line 1096
    const v11, -0x29ee24f8

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1103
    .line 1104
    .line 1105
    move-object/from16 v23, v17

    .line 1106
    .line 1107
    :goto_21
    if-eqz v8, :cond_47

    .line 1108
    .line 1109
    const v8, -0x29ecf5a0

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1113
    .line 1114
    .line 1115
    move/from16 v18, v10

    .line 1116
    .line 1117
    sget-object v10, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 1118
    .line 1119
    const/16 v13, 0x180

    .line 1120
    .line 1121
    const/4 v14, 0x0

    .line 1122
    const-string v11, "TransformOriginInterruptionHandling"

    .line 1123
    .line 1124
    move/from16 v5, v18

    .line 1125
    .line 1126
    move-object/from16 v8, v23

    .line 1127
    .line 1128
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v11

    .line 1132
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1133
    .line 1134
    .line 1135
    goto :goto_22

    .line 1136
    :cond_47
    move v5, v10

    .line 1137
    move-object/from16 v8, v23

    .line 1138
    .line 1139
    const v10, -0x29ea5478

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1146
    .line 1147
    .line 1148
    move-object/from16 v11, v17

    .line 1149
    .line 1150
    :goto_22
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v5

    .line 1154
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v10

    .line 1158
    or-int/2addr v5, v10

    .line 1159
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v10

    .line 1163
    or-int/2addr v5, v10

    .line 1164
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v10

    .line 1168
    or-int/2addr v5, v10

    .line 1169
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v10

    .line 1173
    or-int/2addr v5, v10

    .line 1174
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v10

    .line 1178
    or-int/2addr v5, v10

    .line 1179
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v10

    .line 1183
    if-nez v5, :cond_49

    .line 1184
    .line 1185
    if-ne v10, v2, :cond_48

    .line 1186
    .line 1187
    goto :goto_23

    .line 1188
    :cond_48
    move-object/from16 v23, v0

    .line 1189
    .line 1190
    move-object/from16 v24, v1

    .line 1191
    .line 1192
    goto :goto_24

    .line 1193
    :cond_49
    :goto_23
    new-instance v21, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 1194
    .line 1195
    move-object/from16 v25, v0

    .line 1196
    .line 1197
    move-object/from16 v26, v1

    .line 1198
    .line 1199
    move-object/from16 v23, v8

    .line 1200
    .line 1201
    move-object/from16 v24, v9

    .line 1202
    .line 1203
    move-object/from16 v27, v11

    .line 1204
    .line 1205
    move-object/from16 v22, v15

    .line 1206
    .line 1207
    invoke-direct/range {v21 .. v27}, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    .line 1208
    .line 1209
    .line 1210
    move-object/from16 v10, v21

    .line 1211
    .line 1212
    move-object/from16 v23, v25

    .line 1213
    .line 1214
    move-object/from16 v24, v26

    .line 1215
    .line 1216
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1217
    .line 1218
    .line 1219
    :goto_24
    move-object/from16 v26, v10

    .line 1220
    .line 1221
    check-cast v26, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 1222
    .line 1223
    const/4 v5, 0x1

    .line 1224
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v1

    .line 1232
    or-int/2addr v0, v1

    .line 1233
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    if-nez v0, :cond_4a

    .line 1238
    .line 1239
    if-ne v1, v2, :cond_4b

    .line 1240
    .line 1241
    :cond_4a
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;

    .line 1242
    .line 1243
    invoke-direct {v1, v5, v4}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1247
    .line 1248
    .line 1249
    :cond_4b
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1250
    .line 1251
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1252
    .line 1253
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    new-instance v21, Landroidx/compose/animation/EnterExitTransitionElement;

    .line 1258
    .line 1259
    move-object/from16 v25, v4

    .line 1260
    .line 1261
    move-object/from16 v22, v9

    .line 1262
    .line 1263
    invoke-direct/range {v21 .. v26}, Landroidx/compose/animation/EnterExitTransitionElement;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V

    .line 1264
    .line 1265
    .line 1266
    move-object/from16 v4, v21

    .line 1267
    .line 1268
    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    const v4, -0x70fb69

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1280
    .line 1281
    .line 1282
    const/4 v15, 0x0

    .line 1283
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1284
    .line 1285
    .line 1286
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v0

    .line 1294
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    if-ne v1, v2, :cond_4c

    .line 1299
    .line 1300
    new-instance v1, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 1301
    .line 1302
    invoke-direct {v1, v7}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1306
    .line 1307
    .line 1308
    :cond_4c
    check-cast v1, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 1309
    .line 1310
    iget-wide v4, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1311
    .line 1312
    ushr-long v8, v4, p7

    .line 1313
    .line 1314
    xor-long/2addr v4, v8

    .line 1315
    long-to-int v2, v4

    .line 1316
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v4

    .line 1320
    invoke-static {v12, v0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1325
    .line 1326
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1327
    .line 1328
    .line 1329
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1330
    .line 1331
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1332
    .line 1333
    .line 1334
    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1335
    .line 1336
    if-eqz v8, :cond_4d

    .line 1337
    .line 1338
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1339
    .line 1340
    .line 1341
    goto :goto_25

    .line 1342
    :cond_4d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1343
    .line 1344
    .line 1345
    :goto_25
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1346
    .line 1347
    invoke-static {v12, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1348
    .line 1349
    .line 1350
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1351
    .line 1352
    invoke-static {v12, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1360
    .line 1361
    iget-boolean v4, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1362
    .line 1363
    if-eqz v4, :cond_4e

    .line 1364
    .line 1365
    invoke-virtual {v12, v1, v2}, Landroidx/compose/runtime/GapComposer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1366
    .line 1367
    .line 1368
    :cond_4e
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1369
    .line 1370
    invoke-static {v12, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1371
    .line 1372
    .line 1373
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1374
    .line 1375
    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1376
    .line 1377
    .line 1378
    shr-int/lit8 v0, v19, 0x12

    .line 1379
    .line 1380
    and-int/lit8 v0, v0, 0x70

    .line 1381
    .line 1382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    move-object/from16 v1, p6

    .line 1387
    .line 1388
    invoke-interface {v1, v7, v12, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    const/4 v5, 0x1

    .line 1392
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1393
    .line 1394
    .line 1395
    const/4 v15, 0x0

    .line 1396
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1397
    .line 1398
    .line 1399
    :goto_26
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1400
    .line 1401
    .line 1402
    goto :goto_27

    .line 1403
    :cond_4f
    move-object v1, v7

    .line 1404
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1405
    .line 1406
    .line 1407
    :goto_27
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v10

    .line 1411
    if-eqz v10, :cond_50

    .line 1412
    .line 1413
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;

    .line 1414
    .line 1415
    move-object/from16 v2, p1

    .line 1416
    .line 1417
    move-object/from16 v4, p3

    .line 1418
    .line 1419
    move-object/from16 v5, p4

    .line 1420
    .line 1421
    move/from16 v8, p8

    .line 1422
    .line 1423
    move/from16 v9, p9

    .line 1424
    .line 1425
    move-object v7, v1

    .line 1426
    move-object/from16 v1, p0

    .line 1427
    .line 1428
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    .line 1429
    .line 1430
    .line 1431
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1432
    .line 1433
    :cond_50
    return-void
.end method

.method public static final targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x192ea2d9

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0, p0}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 18
    .line 19
    sget-object v3, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const v0, -0xca56761

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    move-object v1, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_6

    .line 62
    .line 63
    move-object v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const v0, -0xca1388c

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 76
    .line 77
    if-ne v0, v5, :cond_2

    .line 78
    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_3

    .line 105
    .line 106
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_4

    .line 122
    .line 123
    move-object v1, v3

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_5

    .line 136
    .line 137
    move-object v1, v2

    .line 138
    :cond_5
    :goto_0
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 139
    .line 140
    .line 141
    :cond_6
    :goto_1
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 142
    .line 143
    .line 144
    return-object v1
.end method
