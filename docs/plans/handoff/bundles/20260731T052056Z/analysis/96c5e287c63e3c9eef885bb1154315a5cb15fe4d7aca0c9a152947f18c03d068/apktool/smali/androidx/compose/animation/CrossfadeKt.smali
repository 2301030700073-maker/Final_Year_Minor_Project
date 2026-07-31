.class public abstract Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static final AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    move-object/from16 v9, p4

    .line 10
    .line 11
    move-object/from16 v10, p6

    .line 12
    .line 13
    move/from16 v11, p7

    .line 14
    .line 15
    const v0, 0x1e804e2f

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v11, 0x6

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :goto_0
    or-int/2addr v0, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v11

    .line 38
    :goto_1
    and-int/lit8 v4, v11, 0x30

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v4, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v4

    .line 54
    :cond_3
    and-int/lit16 v4, v11, 0x180

    .line 55
    .line 56
    if-nez v4, :cond_5

    .line 57
    .line 58
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    const/16 v4, 0x100

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v4, 0x80

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v4

    .line 70
    :cond_5
    and-int/lit16 v4, v11, 0xc00

    .line 71
    .line 72
    if-nez v4, :cond_7

    .line 73
    .line 74
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    const/16 v4, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v4, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v4

    .line 86
    :cond_7
    and-int/lit16 v4, v11, 0x6000

    .line 87
    .line 88
    if-nez v4, :cond_9

    .line 89
    .line 90
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_8

    .line 95
    .line 96
    const/16 v4, 0x4000

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    const/16 v4, 0x2000

    .line 100
    .line 101
    :goto_5
    or-int/2addr v0, v4

    .line 102
    :cond_9
    const/high16 v4, 0x30000

    .line 103
    .line 104
    and-int/2addr v4, v11

    .line 105
    move-object/from16 v6, p5

    .line 106
    .line 107
    if-nez v4, :cond_b

    .line 108
    .line 109
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_a

    .line 114
    .line 115
    const/high16 v4, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v4, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v0, v4

    .line 121
    :cond_b
    const v4, 0x12493

    .line 122
    .line 123
    .line 124
    and-int/2addr v4, v0

    .line 125
    const v5, 0x12492

    .line 126
    .line 127
    .line 128
    const/4 v13, 0x1

    .line 129
    const/4 v14, 0x0

    .line 130
    if-eq v4, v5, :cond_c

    .line 131
    .line 132
    move v4, v13

    .line 133
    goto :goto_7

    .line 134
    :cond_c
    move v4, v14

    .line 135
    :goto_7
    and-int/lit8 v5, v0, 0x1

    .line 136
    .line 137
    invoke-virtual {v10, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_30

    .line 142
    .line 143
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 144
    .line 145
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 150
    .line 151
    and-int/lit8 v0, v0, 0xe

    .line 152
    .line 153
    if-ne v0, v2, :cond_d

    .line 154
    .line 155
    move v4, v13

    .line 156
    goto :goto_8

    .line 157
    :cond_d
    move v4, v14

    .line 158
    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 163
    .line 164
    if-nez v4, :cond_e

    .line 165
    .line 166
    if-ne v5, v15, :cond_f

    .line 167
    .line 168
    :cond_e
    new-instance v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 169
    .line 170
    invoke-direct {v5, v1, v8}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_f
    move-object v4, v5

    .line 177
    check-cast v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 178
    .line 179
    if-ne v0, v2, :cond_10

    .line 180
    .line 181
    move v5, v13

    .line 182
    :goto_9
    const/16 v16, 0x20

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_10
    move v5, v14

    .line 186
    goto :goto_9

    .line 187
    :goto_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    if-nez v5, :cond_11

    .line 192
    .line 193
    if-ne v12, v15, :cond_12

    .line 194
    .line 195
    :cond_11
    iget-object v5, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 196
    .line 197
    invoke-virtual {v5}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    new-array v12, v13, [Ljava/lang/Object;

    .line 202
    .line 203
    aput-object v5, v12, v14

    .line 204
    .line 205
    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 206
    .line 207
    invoke-direct {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    move-object v12, v5

    .line 221
    :cond_12
    move-object v5, v12

    .line 222
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 223
    .line 224
    if-ne v0, v2, :cond_13

    .line 225
    .line 226
    move v0, v13

    .line 227
    goto :goto_b

    .line 228
    :cond_13
    move v0, v14

    .line 229
    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-nez v0, :cond_14

    .line 234
    .line 235
    if-ne v2, v15, :cond_15

    .line 236
    .line 237
    :cond_14
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 238
    .line 239
    new-instance v2, Landroidx/collection/MutableScatterMap;

    .line 240
    .line 241
    invoke-direct {v2}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_15
    move-object v12, v2

    .line 248
    check-cast v12, Landroidx/collection/MutableScatterMap;

    .line 249
    .line 250
    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 251
    .line 252
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 253
    .line 254
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    if-nez v14, :cond_16

    .line 263
    .line 264
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v14

    .line 271
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    :cond_16
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    if-eqz v13, :cond_1b

    .line 287
    .line 288
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    const/4 v14, 0x1

    .line 293
    if-ne v13, v14, :cond_17

    .line 294
    .line 295
    const/4 v13, 0x0

    .line 296
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    if-nez v13, :cond_18

    .line 309
    .line 310
    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v13

    .line 317
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :cond_18
    iget v13, v12, Landroidx/collection/MutableScatterMap;->_size:I

    .line 321
    .line 322
    const/4 v14, 0x1

    .line 323
    if-ne v13, v14, :cond_19

    .line 324
    .line 325
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v13

    .line 329
    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v13

    .line 333
    if-eqz v13, :cond_1a

    .line 334
    .line 335
    :cond_19
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 336
    .line 337
    .line 338
    :cond_1a
    iput-object v8, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->contentAlignment:Landroidx/compose/ui/Alignment;

    .line 339
    .line 340
    :cond_1b
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v14

    .line 348
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    if-nez v13, :cond_1f

    .line 353
    .line 354
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    if-nez v13, :cond_1f

    .line 363
    .line 364
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 365
    .line 366
    .line 367
    move-result-object v13

    .line 368
    const/4 v14, 0x0

    .line 369
    :goto_c
    move-object/from16 v17, v13

    .line 370
    .line 371
    check-cast v17, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 372
    .line 373
    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v18

    .line 377
    move-object/from16 v19, v0

    .line 378
    .line 379
    if-eqz v18, :cond_1d

    .line 380
    .line 381
    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_1c

    .line 402
    .line 403
    :goto_d
    const/4 v0, -0x1

    .line 404
    goto :goto_e

    .line 405
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    .line 406
    .line 407
    move-object/from16 v1, p0

    .line 408
    .line 409
    move-object/from16 v0, v19

    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_1d
    const/4 v14, -0x1

    .line 413
    goto :goto_d

    .line 414
    :goto_e
    if-ne v14, v0, :cond_1e

    .line 415
    .line 416
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v5, v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    goto :goto_f

    .line 432
    :cond_1f
    move-object/from16 v19, v0

    .line 433
    .line 434
    :goto_f
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_21

    .line 443
    .line 444
    invoke-virtual/range {v19 .. v19}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_20

    .line 453
    .line 454
    goto :goto_10

    .line 455
    :cond_20
    const v0, 0x755c7cd3

    .line 456
    .line 457
    .line 458
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 459
    .line 460
    .line 461
    const/4 v13, 0x0

    .line 462
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 463
    .line 464
    .line 465
    move-object v6, v3

    .line 466
    move-object v0, v4

    .line 467
    goto :goto_12

    .line 468
    :cond_21
    :goto_10
    const v0, 0x75350ad1

    .line 469
    .line 470
    .line 471
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 478
    .line 479
    .line 480
    move-result v13

    .line 481
    const/4 v14, 0x0

    .line 482
    :goto_11
    if-ge v14, v13, :cond_22

    .line 483
    .line 484
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    .line 489
    .line 490
    move-object/from16 v1, p0

    .line 491
    .line 492
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 493
    .line 494
    .line 495
    move-object v1, v0

    .line 496
    move-object v6, v3

    .line 497
    move-object v0, v4

    .line 498
    const v3, -0x16ceaa7

    .line 499
    .line 500
    .line 501
    invoke-static {v3, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v12, v2, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v14, v14, 0x1

    .line 509
    .line 510
    move-object v3, v6

    .line 511
    move-object/from16 v6, p5

    .line 512
    .line 513
    goto :goto_11

    .line 514
    :cond_22
    move-object v6, v3

    .line 515
    move-object v0, v4

    .line 516
    const/4 v1, 0x0

    .line 517
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 518
    .line 519
    .line 520
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    or-int/2addr v1, v2

    .line 533
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    if-nez v1, :cond_23

    .line 538
    .line 539
    if-ne v2, v15, :cond_24

    .line 540
    .line 541
    :cond_23
    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    move-object v2, v1

    .line 546
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 547
    .line 548
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    :cond_24
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 552
    .line 553
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 554
    .line 555
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    if-nez v3, :cond_25

    .line 564
    .line 565
    if-ne v4, v15, :cond_26

    .line 566
    .line 567
    :cond_25
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 568
    .line 569
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    :cond_26
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 577
    .line 578
    iget-object v2, v2, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

    .line 579
    .line 580
    invoke-static {v2, v10}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 581
    .line 582
    .line 583
    move-result-object v13

    .line 584
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 585
    .line 586
    invoke-virtual {v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 591
    .line 592
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_27

    .line 601
    .line 602
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 603
    .line 604
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    goto :goto_13

    .line 608
    :cond_27
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    if-eqz v1, :cond_28

    .line 613
    .line 614
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 615
    .line 616
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    :cond_28
    :goto_13
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    check-cast v1, Ljava/lang/Boolean;

    .line 624
    .line 625
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 630
    .line 631
    if-eqz v1, :cond_2b

    .line 632
    .line 633
    const v1, 0x50a652f9

    .line 634
    .line 635
    .line 636
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 637
    .line 638
    .line 639
    move-object v4, v0

    .line 640
    iget-object v0, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 641
    .line 642
    sget-object v1, Landroidx/compose/animation/core/ArcSplineKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 643
    .line 644
    move-object v2, v4

    .line 645
    const/4 v4, 0x0

    .line 646
    move-object v3, v5

    .line 647
    const/4 v5, 0x2

    .line 648
    move-object/from16 v17, v2

    .line 649
    .line 650
    const/4 v2, 0x0

    .line 651
    move-object/from16 v20, v17

    .line 652
    .line 653
    move-object/from16 v17, v3

    .line 654
    .line 655
    move-object v3, v10

    .line 656
    move-object/from16 v10, v20

    .line 657
    .line 658
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    if-nez v1, :cond_29

    .line 671
    .line 672
    if-ne v2, v15, :cond_2a

    .line 673
    .line 674
    :cond_29
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    check-cast v1, Landroidx/compose/animation/SizeTransformImpl;

    .line 679
    .line 680
    invoke-static {v14}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    :cond_2a
    move-object v14, v2

    .line 688
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 689
    .line 690
    const/4 v1, 0x0

    .line 691
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 692
    .line 693
    .line 694
    goto :goto_14

    .line 695
    :cond_2b
    move-object/from16 v17, v5

    .line 696
    .line 697
    move-object v3, v10

    .line 698
    const/4 v1, 0x0

    .line 699
    move-object v10, v0

    .line 700
    const v0, 0x50aa6233

    .line 701
    .line 702
    .line 703
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 707
    .line 708
    .line 709
    const/4 v0, 0x0

    .line 710
    :goto_14
    new-instance v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    .line 711
    .line 712
    invoke-direct {v1, v0, v13, v10}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 713
    .line 714
    .line 715
    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-interface {v7, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    if-ne v1, v15, :cond_2c

    .line 728
    .line 729
    new-instance v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 730
    .line 731
    invoke-direct {v1, v10}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    :cond_2c
    check-cast v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 738
    .line 739
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 740
    .line 741
    ushr-long v13, v4, v16

    .line 742
    .line 743
    xor-long/2addr v4, v13

    .line 744
    long-to-int v2, v4

    .line 745
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    invoke-static {v3, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 754
    .line 755
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 759
    .line 760
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 761
    .line 762
    .line 763
    iget-boolean v10, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 764
    .line 765
    if-eqz v10, :cond_2d

    .line 766
    .line 767
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 768
    .line 769
    .line 770
    goto :goto_15

    .line 771
    :cond_2d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 772
    .line 773
    .line 774
    :goto_15
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 775
    .line 776
    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 777
    .line 778
    .line 779
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 780
    .line 781
    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 782
    .line 783
    .line 784
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 789
    .line 790
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 791
    .line 792
    .line 793
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 794
    .line 795
    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 796
    .line 797
    .line 798
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 799
    .line 800
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 801
    .line 802
    .line 803
    const v0, -0x334534ba    # -9.793387E7f

    .line 804
    .line 805
    .line 806
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    const/4 v13, 0x0

    .line 814
    :goto_16
    if-ge v13, v0, :cond_2f

    .line 815
    .line 816
    move-object/from16 v5, v17

    .line 817
    .line 818
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    const v2, -0x78c25a0a

    .line 823
    .line 824
    .line 825
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v12, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 837
    .line 838
    if-nez v1, :cond_2e

    .line 839
    .line 840
    const v1, 0x6077a733

    .line 841
    .line 842
    .line 843
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 844
    .line 845
    .line 846
    const/4 v2, 0x0

    .line 847
    :goto_17
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 848
    .line 849
    .line 850
    goto :goto_18

    .line 851
    :cond_2e
    const/4 v2, 0x0

    .line 852
    const v4, -0x78c25572

    .line 853
    .line 854
    .line 855
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 856
    .line 857
    .line 858
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    goto :goto_17

    .line 866
    :goto_18
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 867
    .line 868
    .line 869
    add-int/lit8 v13, v13, 0x1

    .line 870
    .line 871
    move-object/from16 v17, v5

    .line 872
    .line 873
    goto :goto_16

    .line 874
    :cond_2f
    const/4 v2, 0x0

    .line 875
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 876
    .line 877
    .line 878
    const/4 v14, 0x1

    .line 879
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 880
    .line 881
    .line 882
    goto :goto_19

    .line 883
    :cond_30
    move-object v6, v3

    .line 884
    move-object v3, v10

    .line 885
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 886
    .line 887
    .line 888
    :goto_19
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 889
    .line 890
    .line 891
    move-result-object v10

    .line 892
    if-eqz v10, :cond_31

    .line 893
    .line 894
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;

    .line 895
    .line 896
    move-object/from16 v1, p0

    .line 897
    .line 898
    move-object v3, v6

    .line 899
    move-object v2, v7

    .line 900
    move-object v4, v8

    .line 901
    move-object v5, v9

    .line 902
    move v7, v11

    .line 903
    move-object/from16 v6, p5

    .line 904
    .line 905
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 906
    .line 907
    .line 908
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 909
    .line 910
    :cond_31
    return-void
.end method

.method public static final AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 10

    move-object/from16 v6, p7

    move/from16 v8, p8

    const v0, 0x598416e0

    .line 911
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v8

    or-int/lit8 v1, v0, 0x30

    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_1

    or-int/lit16 v0, v0, 0x1b0

    goto :goto_2

    :cond_1
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x100

    goto :goto_1

    :cond_2
    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v1

    :goto_2
    or-int/lit16 v1, v0, 0xc00

    and-int/lit8 v3, p9, 0x10

    if-eqz v3, :cond_3

    or-int/lit16 v1, v0, 0x6c00

    goto :goto_4

    :cond_3
    and-int/lit16 v0, v8, 0x6000

    if-nez v0, :cond_5

    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x4000

    goto :goto_3

    :cond_4
    const/16 v0, 0x2000

    :goto_3
    or-int/2addr v1, v0

    :cond_5
    :goto_4
    const/high16 v0, 0x30000

    or-int/2addr v0, v1

    const v1, 0x92493

    and-int/2addr v1, v0

    const v4, 0x92492

    if-eq v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v6, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 912
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v2, :cond_8

    .line 913
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_7

    .line 914
    sget-object p2, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$1:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 915
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 916
    :cond_7
    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_8
    move-object v2, p2

    .line 917
    sget-object p3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    if-eqz v3, :cond_9

    .line 918
    const-string p4, "AnimatedContent"

    .line 919
    :cond_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_a

    .line 920
    sget-object p2, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$2:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 921
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 922
    :cond_a
    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    and-int/lit8 p1, v0, 0xe

    shr-int/lit8 p2, v0, 0x9

    and-int/lit8 p2, p2, 0x70

    or-int/2addr p1, p2

    .line 923
    invoke-static {p0, p4, v6, p1}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition;

    move-result-object p1

    and-int/lit16 p2, v0, 0x1ff0

    const v0, 0x36000

    or-int v7, p2, v0

    .line 924
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v0, p1

    move-object v3, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    move-object v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_6
    move-object v5, p4

    goto :goto_7

    .line 925
    :cond_b
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    goto :goto_6

    .line 926
    :goto_7
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;

    move-object v1, p0

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 927
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 30

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
    move-object/from16 v11, p7

    .line 16
    .line 17
    move/from16 v0, p8

    .line 18
    .line 19
    const v8, 0x72039c2f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v8, v0, 0x6

    .line 26
    .line 27
    const/4 v9, 0x4

    .line 28
    if-nez v8, :cond_1

    .line 29
    .line 30
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    move v8, v9

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v8, 0x2

    .line 39
    :goto_0
    or-int/2addr v8, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v8, v0

    .line 42
    :goto_1
    and-int/lit8 v10, v0, 0x30

    .line 43
    .line 44
    if-nez v10, :cond_3

    .line 45
    .line 46
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_2

    .line 51
    .line 52
    const/16 v10, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v10, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v8, v10

    .line 58
    :cond_3
    and-int/lit16 v10, v0, 0x180

    .line 59
    .line 60
    if-nez v10, :cond_5

    .line 61
    .line 62
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    const/16 v10, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v10, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v8, v10

    .line 74
    :cond_5
    and-int/lit16 v10, v0, 0xc00

    .line 75
    .line 76
    if-nez v10, :cond_7

    .line 77
    .line 78
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_6

    .line 83
    .line 84
    const/16 v10, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v10, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v8, v10

    .line 90
    :cond_7
    and-int/lit16 v10, v0, 0x6000

    .line 91
    .line 92
    if-nez v10, :cond_9

    .line 93
    .line 94
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_8

    .line 99
    .line 100
    const/16 v10, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v10, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v8, v10

    .line 106
    :cond_9
    const/high16 v10, 0x30000

    .line 107
    .line 108
    and-int/2addr v10, v0

    .line 109
    if-nez v10, :cond_b

    .line 110
    .line 111
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_a

    .line 116
    .line 117
    const/high16 v10, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v10, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v8, v10

    .line 123
    :cond_b
    const/high16 v10, 0x180000

    .line 124
    .line 125
    or-int/2addr v8, v10

    .line 126
    const/high16 v10, 0xc00000

    .line 127
    .line 128
    and-int/2addr v10, v0

    .line 129
    if-nez v10, :cond_d

    .line 130
    .line 131
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_c

    .line 136
    .line 137
    const/high16 v10, 0x800000

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_c
    const/high16 v10, 0x400000

    .line 141
    .line 142
    :goto_7
    or-int/2addr v8, v10

    .line 143
    :cond_d
    move v15, v8

    .line 144
    const v8, 0x492493

    .line 145
    .line 146
    .line 147
    and-int/2addr v8, v15

    .line 148
    const v10, 0x492492

    .line 149
    .line 150
    .line 151
    const/4 v13, 0x0

    .line 152
    if-eq v8, v10, :cond_e

    .line 153
    .line 154
    const/4 v8, 0x1

    .line 155
    goto :goto_8

    .line 156
    :cond_e
    move v8, v13

    .line 157
    :goto_8
    and-int/lit8 v10, v15, 0x1

    .line 158
    .line 159
    invoke-virtual {v11, v10, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_49

    .line 164
    .line 165
    iget-object v8, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 166
    .line 167
    iget-object v10, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 168
    .line 169
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-nez v8, :cond_10

    .line 184
    .line 185
    invoke-virtual {v10}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_10

    .line 200
    .line 201
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_10

    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getHasInitialValueAnimations()Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_f

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_f
    const v8, -0xdabcc8d

    .line 215
    .line 216
    .line 217
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_25

    .line 224
    .line 225
    :cond_10
    :goto_9
    const v8, -0xdd9ee57

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 229
    .line 230
    .line 231
    and-int/lit8 v8, v15, 0xe

    .line 232
    .line 233
    or-int/lit8 v16, v8, 0x30

    .line 234
    .line 235
    const/16 v17, 0x20

    .line 236
    .line 237
    and-int/lit8 v14, v16, 0xe

    .line 238
    .line 239
    xor-int/lit8 v12, v14, 0x6

    .line 240
    .line 241
    if-le v12, v9, :cond_11

    .line 242
    .line 243
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-nez v12, :cond_12

    .line 248
    .line 249
    :cond_11
    and-int/lit8 v12, v16, 0x6

    .line 250
    .line 251
    if-ne v12, v9, :cond_13

    .line 252
    .line 253
    :cond_12
    const/4 v12, 0x1

    .line 254
    goto :goto_a

    .line 255
    :cond_13
    move v12, v13

    .line 256
    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    move/from16 v18, v12

    .line 261
    .line 262
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 263
    .line 264
    if-nez v18, :cond_14

    .line 265
    .line 266
    if-ne v9, v12, :cond_15

    .line 267
    .line 268
    :cond_14
    invoke-virtual {v10}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 276
    .line 277
    .line 278
    move-result v18

    .line 279
    if-eqz v18, :cond_16

    .line 280
    .line 281
    invoke-virtual {v10}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    :cond_16
    const v10, 0x6defb3b0

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 289
    .line 290
    .line 291
    invoke-static {v1, v2, v9, v11}, Landroidx/compose/animation/CrossfadeKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/EnterExitState;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 296
    .line 297
    .line 298
    iget-object v13, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 299
    .line 300
    invoke-virtual {v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 305
    .line 306
    .line 307
    invoke-static {v1, v2, v13, v11}, Landroidx/compose/animation/CrossfadeKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/EnterExitState;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    const/4 v13, 0x0

    .line 312
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 313
    .line 314
    .line 315
    or-int/lit16 v13, v14, 0xc00

    .line 316
    .line 317
    and-int/lit8 v14, v13, 0xe

    .line 318
    .line 319
    xor-int/lit8 v14, v14, 0x6

    .line 320
    .line 321
    const/4 v0, 0x4

    .line 322
    if-le v14, v0, :cond_17

    .line 323
    .line 324
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v16

    .line 328
    if-nez v16, :cond_18

    .line 329
    .line 330
    :cond_17
    and-int/lit8 v2, v13, 0x6

    .line 331
    .line 332
    if-ne v2, v0, :cond_19

    .line 333
    .line 334
    :cond_18
    const/4 v0, 0x1

    .line 335
    goto :goto_b

    .line 336
    :cond_19
    const/4 v0, 0x0

    .line 337
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-nez v0, :cond_1b

    .line 342
    .line 343
    if-ne v2, v12, :cond_1a

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_1a
    move/from16 v19, v13

    .line 347
    .line 348
    move/from16 v20, v15

    .line 349
    .line 350
    goto :goto_d

    .line 351
    :cond_1b
    :goto_c
    new-instance v2, Landroidx/compose/animation/core/Transition;

    .line 352
    .line 353
    new-instance v0, Landroidx/compose/animation/core/MutableTransitionState;

    .line 354
    .line 355
    invoke-direct {v0, v9}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    move/from16 v19, v13

    .line 359
    .line 360
    new-instance v13, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    move/from16 v20, v15

    .line 366
    .line 367
    iget-object v15, v1, Landroidx/compose/animation/core/Transition;->label:Ljava/lang/String;

    .line 368
    .line 369
    const-string v7, " > EnterExitTransition"

    .line 370
    .line 371
    invoke-static {v13, v15, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-direct {v2, v0, v1, v7}, Landroidx/compose/animation/core/Transition;-><init>(Lorg/wikipedia/settings/BasePreferenceLoader;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :goto_d
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 382
    .line 383
    const/4 v0, 0x4

    .line 384
    if-le v14, v0, :cond_1c

    .line 385
    .line 386
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-nez v7, :cond_1d

    .line 391
    .line 392
    :cond_1c
    and-int/lit8 v7, v19, 0x6

    .line 393
    .line 394
    if-ne v7, v0, :cond_1e

    .line 395
    .line 396
    :cond_1d
    const/4 v0, 0x1

    .line 397
    goto :goto_e

    .line 398
    :cond_1e
    const/4 v0, 0x0

    .line 399
    :goto_e
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    or-int/2addr v0, v7

    .line 404
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    if-nez v0, :cond_1f

    .line 409
    .line 410
    if-ne v7, v12, :cond_20

    .line 411
    .line 412
    :cond_1f
    new-instance v7, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 413
    .line 414
    const/4 v0, 0x7

    .line 415
    invoke-direct {v7, v0, v1, v2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_20
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 422
    .line 423
    invoke-static {v2, v7, v11}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_21

    .line 431
    .line 432
    invoke-virtual {v2, v9, v10}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto :goto_f

    .line 436
    :cond_21
    invoke-virtual {v2, v10}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 440
    .line 441
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    :goto_f
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 447
    .line 448
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    if-nez v0, :cond_22

    .line 457
    .line 458
    if-ne v7, v12, :cond_23

    .line 459
    .line 460
    :cond_22
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    :cond_23
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 468
    .line 469
    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 470
    .line 471
    iget-object v9, v2, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 472
    .line 473
    iget-object v10, v2, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 474
    .line 475
    invoke-virtual {v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v13

    .line 483
    if-ne v0, v13, :cond_25

    .line 484
    .line 485
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    sget-object v13, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 490
    .line 491
    if-ne v0, v13, :cond_25

    .line 492
    .line 493
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-eqz v0, :cond_24

    .line 498
    .line 499
    invoke-interface {v7, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    goto :goto_10

    .line 503
    :cond_24
    sget-object v0, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 504
    .line 505
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_25
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    sget-object v13, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 514
    .line 515
    if-ne v0, v13, :cond_26

    .line 516
    .line 517
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 522
    .line 523
    invoke-virtual {v0, v4}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :cond_26
    :goto_10
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 535
    .line 536
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v7

    .line 540
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v14

    .line 544
    if-nez v7, :cond_27

    .line 545
    .line 546
    if-ne v14, v12, :cond_28

    .line 547
    .line 548
    :cond_27
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 549
    .line 550
    .line 551
    move-result-object v14

    .line 552
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    :cond_28
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 556
    .line 557
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v15

    .line 565
    if-ne v7, v15, :cond_2a

    .line 566
    .line 567
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    if-ne v7, v13, :cond_2a

    .line 572
    .line 573
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    if-eqz v7, :cond_29

    .line 578
    .line 579
    invoke-interface {v14, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    goto :goto_11

    .line 583
    :cond_29
    sget-object v7, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 584
    .line 585
    invoke-interface {v14, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    goto :goto_11

    .line 589
    :cond_2a
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v7

    .line 593
    if-eq v7, v13, :cond_2b

    .line 594
    .line 595
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    .line 600
    .line 601
    invoke-virtual {v7, v5}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    invoke-interface {v14, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :cond_2b
    :goto_11
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    .line 613
    .line 614
    invoke-static {v6, v11}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 615
    .line 616
    .line 617
    move-result-object v13

    .line 618
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v14

    .line 622
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v15

    .line 626
    invoke-interface {v6, v14, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v14

    .line 630
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v15

    .line 634
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v19

    .line 638
    or-int v15, v15, v19

    .line 639
    .line 640
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    const/4 v4, 0x0

    .line 645
    if-nez v15, :cond_2d

    .line 646
    .line 647
    if-ne v1, v12, :cond_2c

    .line 648
    .line 649
    goto :goto_12

    .line 650
    :cond_2c
    const/4 v15, 0x1

    .line 651
    goto :goto_13

    .line 652
    :cond_2d
    :goto_12
    new-instance v1, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 653
    .line 654
    const/4 v15, 0x1

    .line 655
    invoke-direct {v1, v2, v13, v4, v15}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    :goto_13
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 662
    .line 663
    invoke-static {v11, v14, v1}, Landroidx/compose/runtime/Updater;->produceState(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    invoke-virtual {v9}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v9

    .line 671
    sget-object v13, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 672
    .line 673
    if-ne v9, v13, :cond_2f

    .line 674
    .line 675
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v9

    .line 679
    if-ne v9, v13, :cond_2f

    .line 680
    .line 681
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    check-cast v1, Ljava/lang/Boolean;

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-nez v1, :cond_2e

    .line 692
    .line 693
    goto :goto_14

    .line 694
    :cond_2e
    const v0, -0xdabe3cd

    .line 695
    .line 696
    .line 697
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 698
    .line 699
    .line 700
    const/4 v13, 0x0

    .line 701
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 702
    .line 703
    .line 704
    move-object/from16 v7, p6

    .line 705
    .line 706
    move v5, v13

    .line 707
    goto/16 :goto_24

    .line 708
    .line 709
    :cond_2f
    :goto_14
    const v1, -0xdc032f6

    .line 710
    .line 711
    .line 712
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 713
    .line 714
    .line 715
    const/4 v1, 0x4

    .line 716
    if-ne v8, v1, :cond_30

    .line 717
    .line 718
    move v1, v15

    .line 719
    goto :goto_15

    .line 720
    :cond_30
    const/4 v1, 0x0

    .line 721
    :goto_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v8

    .line 725
    if-nez v1, :cond_31

    .line 726
    .line 727
    if-ne v8, v12, :cond_32

    .line 728
    .line 729
    :cond_31
    new-instance v8, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 730
    .line 731
    invoke-direct {v8}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    :cond_32
    move-object v1, v8

    .line 738
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 739
    .line 740
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v8

    .line 744
    if-ne v8, v12, :cond_33

    .line 745
    .line 746
    sget-object v8, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;

    .line 747
    .line 748
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    :cond_33
    move-object v14, v8

    .line 752
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 753
    .line 754
    const v8, -0xa02f001

    .line 755
    .line 756
    .line 757
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 758
    .line 759
    .line 760
    const/4 v13, 0x0

    .line 761
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 762
    .line 763
    .line 764
    const v8, -0xa02e522

    .line 765
    .line 766
    .line 767
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 771
    .line 772
    .line 773
    iget-object v8, v0, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 774
    .line 775
    iget-object v9, v7, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 776
    .line 777
    iget-object v10, v8, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 778
    .line 779
    if-nez v10, :cond_35

    .line 780
    .line 781
    iget-object v10, v9, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 782
    .line 783
    if-eqz v10, :cond_34

    .line 784
    .line 785
    goto :goto_16

    .line 786
    :cond_34
    const/16 v16, 0x0

    .line 787
    .line 788
    goto :goto_17

    .line 789
    :cond_35
    :goto_16
    move/from16 v16, v15

    .line 790
    .line 791
    :goto_17
    const v10, -0x36529734    # -1420569.5f

    .line 792
    .line 793
    .line 794
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 795
    .line 796
    .line 797
    const/4 v13, 0x0

    .line 798
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 799
    .line 800
    .line 801
    if-eqz v16, :cond_37

    .line 802
    .line 803
    const v10, -0x365130a5

    .line 804
    .line 805
    .line 806
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 807
    .line 808
    .line 809
    move-object v10, v9

    .line 810
    sget-object v9, Landroidx/compose/animation/core/ArcSplineKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 811
    .line 812
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    if-ne v4, v12, :cond_36

    .line 817
    .line 818
    const-string v4, "Built-in shrink/expand"

    .line 819
    .line 820
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    :cond_36
    check-cast v4, Ljava/lang/String;

    .line 824
    .line 825
    move-object/from16 v18, v12

    .line 826
    .line 827
    const/16 v12, 0x180

    .line 828
    .line 829
    move/from16 v19, v13

    .line 830
    .line 831
    const/4 v13, 0x0

    .line 832
    move-object v5, v8

    .line 833
    move-object v8, v2

    .line 834
    move-object v2, v5

    .line 835
    move-object v5, v10

    .line 836
    move-object v10, v4

    .line 837
    move-object v4, v5

    .line 838
    move-object/from16 v5, v18

    .line 839
    .line 840
    move/from16 v18, v15

    .line 841
    .line 842
    move-object v15, v5

    .line 843
    move/from16 v5, v19

    .line 844
    .line 845
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 846
    .line 847
    .line 848
    move-result-object v9

    .line 849
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 850
    .line 851
    .line 852
    move-object/from16 v19, v9

    .line 853
    .line 854
    goto :goto_18

    .line 855
    :cond_37
    move-object v4, v8

    .line 856
    move-object v8, v2

    .line 857
    move-object v2, v4

    .line 858
    move-object v4, v9

    .line 859
    move v5, v13

    .line 860
    move/from16 v18, v15

    .line 861
    .line 862
    move-object v15, v12

    .line 863
    const v9, -0x364f7fbd

    .line 864
    .line 865
    .line 866
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 870
    .line 871
    .line 872
    const/16 v19, 0x0

    .line 873
    .line 874
    :goto_18
    if-eqz v16, :cond_39

    .line 875
    .line 876
    const v9, -0x364e6023

    .line 877
    .line 878
    .line 879
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 880
    .line 881
    .line 882
    sget-object v9, Landroidx/compose/animation/core/ArcSplineKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 883
    .line 884
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v10

    .line 888
    if-ne v10, v15, :cond_38

    .line 889
    .line 890
    const-string v10, "Built-in InterruptionHandlingOffset"

    .line 891
    .line 892
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    :cond_38
    check-cast v10, Ljava/lang/String;

    .line 896
    .line 897
    const/16 v12, 0x180

    .line 898
    .line 899
    const/4 v13, 0x0

    .line 900
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 901
    .line 902
    .line 903
    move-result-object v9

    .line 904
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 905
    .line 906
    .line 907
    move-object/from16 v28, v9

    .line 908
    .line 909
    goto :goto_19

    .line 910
    :cond_39
    const v9, -0x364bc67d

    .line 911
    .line 912
    .line 913
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 917
    .line 918
    .line 919
    const/16 v28, 0x0

    .line 920
    .line 921
    :goto_19
    xor-int/lit8 v9, v16, 0x1

    .line 922
    .line 923
    sget-object v10, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 924
    .line 925
    const v10, -0x363f7c78    # -1577073.0f

    .line 926
    .line 927
    .line 928
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 932
    .line 933
    .line 934
    move v10, v9

    .line 935
    sget-object v9, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 936
    .line 937
    iget-object v12, v2, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 938
    .line 939
    if-nez v12, :cond_3b

    .line 940
    .line 941
    iget-object v12, v4, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 942
    .line 943
    if-eqz v12, :cond_3a

    .line 944
    .line 945
    goto :goto_1a

    .line 946
    :cond_3a
    move v12, v5

    .line 947
    goto :goto_1b

    .line 948
    :cond_3b
    :goto_1a
    move/from16 v12, v18

    .line 949
    .line 950
    :goto_1b
    iget-object v2, v2, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 951
    .line 952
    if-nez v2, :cond_3d

    .line 953
    .line 954
    iget-object v2, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 955
    .line 956
    if-eqz v2, :cond_3c

    .line 957
    .line 958
    goto :goto_1c

    .line 959
    :cond_3c
    move v2, v5

    .line 960
    goto :goto_1d

    .line 961
    :cond_3d
    :goto_1c
    move/from16 v2, v18

    .line 962
    .line 963
    :goto_1d
    if-eqz v12, :cond_3f

    .line 964
    .line 965
    const v4, -0x29f458fd

    .line 966
    .line 967
    .line 968
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    if-ne v4, v15, :cond_3e

    .line 976
    .line 977
    const-string v4, "Built-in alpha"

    .line 978
    .line 979
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 980
    .line 981
    .line 982
    :cond_3e
    check-cast v4, Ljava/lang/String;

    .line 983
    .line 984
    const/16 v12, 0x180

    .line 985
    .line 986
    const/4 v13, 0x0

    .line 987
    move/from16 v29, v10

    .line 988
    .line 989
    move-object v10, v4

    .line 990
    move/from16 v4, v29

    .line 991
    .line 992
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 993
    .line 994
    .line 995
    move-result-object v10

    .line 996
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 997
    .line 998
    .line 999
    move-object/from16 v22, v10

    .line 1000
    .line 1001
    goto :goto_1e

    .line 1002
    :cond_3f
    move v4, v10

    .line 1003
    const v10, -0x29f1c318

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1010
    .line 1011
    .line 1012
    const/16 v22, 0x0

    .line 1013
    .line 1014
    :goto_1e
    if-eqz v2, :cond_41

    .line 1015
    .line 1016
    const v10, -0x29f0badd

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v10

    .line 1026
    if-ne v10, v15, :cond_40

    .line 1027
    .line 1028
    const-string v10, "Built-in scale"

    .line 1029
    .line 1030
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1031
    .line 1032
    .line 1033
    :cond_40
    check-cast v10, Ljava/lang/String;

    .line 1034
    .line 1035
    const/16 v12, 0x180

    .line 1036
    .line 1037
    const/4 v13, 0x0

    .line 1038
    move/from16 v16, v2

    .line 1039
    .line 1040
    move-object/from16 v2, v22

    .line 1041
    .line 1042
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v9

    .line 1046
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1047
    .line 1048
    .line 1049
    move-object/from16 v23, v9

    .line 1050
    .line 1051
    goto :goto_1f

    .line 1052
    :cond_41
    move/from16 v16, v2

    .line 1053
    .line 1054
    move-object/from16 v2, v22

    .line 1055
    .line 1056
    const v9, -0x29ee24f8

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1063
    .line 1064
    .line 1065
    const/16 v23, 0x0

    .line 1066
    .line 1067
    :goto_1f
    if-eqz v16, :cond_42

    .line 1068
    .line 1069
    const v9, -0x29ecf5a0

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1073
    .line 1074
    .line 1075
    sget-object v9, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 1076
    .line 1077
    const/16 v12, 0x180

    .line 1078
    .line 1079
    const/4 v13, 0x0

    .line 1080
    const-string v10, "TransformOriginInterruptionHandling"

    .line 1081
    .line 1082
    move-object/from16 v6, v23

    .line 1083
    .line 1084
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v9

    .line 1088
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_20

    .line 1092
    :cond_42
    move-object/from16 v6, v23

    .line 1093
    .line 1094
    const v9, -0x29ea5478

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1101
    .line 1102
    .line 1103
    const/4 v9, 0x0

    .line 1104
    :goto_20
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v10

    .line 1108
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v12

    .line 1112
    or-int/2addr v10, v12

    .line 1113
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v12

    .line 1117
    or-int/2addr v10, v12

    .line 1118
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v12

    .line 1122
    or-int/2addr v10, v12

    .line 1123
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v12

    .line 1127
    or-int/2addr v10, v12

    .line 1128
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v12

    .line 1132
    or-int/2addr v10, v12

    .line 1133
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v12

    .line 1137
    if-nez v10, :cond_44

    .line 1138
    .line 1139
    if-ne v12, v15, :cond_43

    .line 1140
    .line 1141
    goto :goto_21

    .line 1142
    :cond_43
    move-object/from16 v25, v0

    .line 1143
    .line 1144
    move-object/from16 v26, v7

    .line 1145
    .line 1146
    goto :goto_22

    .line 1147
    :cond_44
    :goto_21
    new-instance v21, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 1148
    .line 1149
    move-object/from16 v25, v0

    .line 1150
    .line 1151
    move-object/from16 v22, v2

    .line 1152
    .line 1153
    move-object/from16 v23, v6

    .line 1154
    .line 1155
    move-object/from16 v26, v7

    .line 1156
    .line 1157
    move-object/from16 v24, v8

    .line 1158
    .line 1159
    move-object/from16 v27, v9

    .line 1160
    .line 1161
    invoke-direct/range {v21 .. v27}, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    .line 1162
    .line 1163
    .line 1164
    move-object/from16 v12, v21

    .line 1165
    .line 1166
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    :goto_22
    check-cast v12, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 1170
    .line 1171
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v0

    .line 1175
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v2

    .line 1179
    or-int/2addr v0, v2

    .line 1180
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v2

    .line 1184
    if-nez v0, :cond_45

    .line 1185
    .line 1186
    if-ne v2, v15, :cond_46

    .line 1187
    .line 1188
    :cond_45
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;

    .line 1189
    .line 1190
    invoke-direct {v2, v4, v14}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1194
    .line 1195
    .line 1196
    :cond_46
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1197
    .line 1198
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1199
    .line 1200
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v2

    .line 1204
    new-instance v21, Landroidx/compose/animation/EnterExitTransitionElement;

    .line 1205
    .line 1206
    move-object/from16 v22, v8

    .line 1207
    .line 1208
    move-object/from16 v27, v14

    .line 1209
    .line 1210
    move-object/from16 v23, v19

    .line 1211
    .line 1212
    move-object/from16 v24, v28

    .line 1213
    .line 1214
    move-object/from16 v28, v12

    .line 1215
    .line 1216
    invoke-direct/range {v21 .. v28}, Landroidx/compose/animation/EnterExitTransitionElement;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V

    .line 1217
    .line 1218
    .line 1219
    move-object/from16 v4, v21

    .line 1220
    .line 1221
    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    const v4, -0x70fb69

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1236
    .line 1237
    .line 1238
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    if-ne v2, v15, :cond_47

    .line 1251
    .line 1252
    new-instance v2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 1253
    .line 1254
    invoke-direct {v2, v1}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1258
    .line 1259
    .line 1260
    :cond_47
    check-cast v2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 1261
    .line 1262
    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1263
    .line 1264
    ushr-long v8, v6, v17

    .line 1265
    .line 1266
    xor-long/2addr v6, v8

    .line 1267
    long-to-int v4, v6

    .line 1268
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v6

    .line 1272
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1277
    .line 1278
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1279
    .line 1280
    .line 1281
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1282
    .line 1283
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1284
    .line 1285
    .line 1286
    iget-boolean v8, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1287
    .line 1288
    if-eqz v8, :cond_48

    .line 1289
    .line 1290
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1291
    .line 1292
    .line 1293
    goto :goto_23

    .line 1294
    :cond_48
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1295
    .line 1296
    .line 1297
    :goto_23
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1298
    .line 1299
    invoke-static {v11, v2, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1300
    .line 1301
    .line 1302
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1303
    .line 1304
    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v2

    .line 1311
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1312
    .line 1313
    invoke-static {v11, v2, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 1314
    .line 1315
    .line 1316
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1317
    .line 1318
    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1319
    .line 1320
    .line 1321
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1322
    .line 1323
    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1324
    .line 1325
    .line 1326
    shr-int/lit8 v0, v20, 0x12

    .line 1327
    .line 1328
    and-int/lit8 v0, v0, 0x70

    .line 1329
    .line 1330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    move-object/from16 v7, p6

    .line 1335
    .line 1336
    invoke-virtual {v7, v1, v11, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move/from16 v15, v18

    .line 1340
    .line 1341
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1345
    .line 1346
    .line 1347
    :goto_24
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_25

    .line 1351
    :cond_49
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1352
    .line 1353
    .line 1354
    :goto_25
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v9

    .line 1358
    if-eqz v9, :cond_4a

    .line 1359
    .line 1360
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;

    .line 1361
    .line 1362
    move-object/from16 v1, p0

    .line 1363
    .line 1364
    move-object/from16 v2, p1

    .line 1365
    .line 1366
    move-object/from16 v4, p3

    .line 1367
    .line 1368
    move-object/from16 v5, p4

    .line 1369
    .line 1370
    move-object/from16 v6, p5

    .line 1371
    .line 1372
    move/from16 v8, p8

    .line 1373
    .line 1374
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 1375
    .line 1376
    .line 1377
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1378
    .line 1379
    :cond_4a
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 10

    move-object/from16 v6, p6

    const v0, 0xdf36d93

    .line 186
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int v0, p7, v0

    const v1, 0x30d80

    or-int/2addr v0, v1

    const v1, 0x92491

    and-int/2addr v1, v0

    const v2, 0x92490

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v6, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 187
    invoke-static {v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v1, v1, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally$default(Landroidx/compose/animation/core/SpringSpec;Landroidx/compose/ui/BiasAlignment$Horizontal;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v3

    .line 188
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    shr-int/2addr v0, v2

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    const-string v9, "AnimatedVisibility"

    invoke-static {v1, v9, v6, v0}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    .line 189
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 190
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v2, :cond_2

    .line 191
    sget-object v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$4:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 192
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    :cond_2
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v7, 0x36db0

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    move-object v4, v3

    move-object v6, v9

    move-object v3, v2

    goto :goto_2

    .line 194
    :cond_3
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 195
    :goto_2
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$4;

    move v2, p0

    move-object v5, p3

    move-object v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$4;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 196
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 10

    .line 1
    move-object/from16 v6, p6

    .line 2
    .line 3
    move/from16 v8, p7

    .line 4
    .line 5
    const v0, -0x5659dfc5

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, v8

    .line 21
    and-int/lit8 v1, p8, 0x2

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    or-int/lit8 v0, v0, 0x30

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    and-int/lit8 v2, v8, 0x30

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/16 v2, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v2

    .line 44
    :cond_3
    :goto_2
    and-int/lit16 v2, v8, 0x180

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x100

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/16 v2, 0x80

    .line 58
    .line 59
    :goto_3
    or-int/2addr v0, v2

    .line 60
    :cond_5
    and-int/lit16 v2, v8, 0xc00

    .line 61
    .line 62
    if-nez v2, :cond_7

    .line 63
    .line 64
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_6

    .line 69
    .line 70
    const/16 v2, 0x800

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    const/16 v2, 0x400

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v2

    .line 76
    :cond_7
    or-int/lit16 v0, v0, 0x6000

    .line 77
    .line 78
    const v2, 0x12493

    .line 79
    .line 80
    .line 81
    and-int/2addr v2, v0

    .line 82
    const v3, 0x12492

    .line 83
    .line 84
    .line 85
    if-eq v2, v3, :cond_8

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    goto :goto_5

    .line 89
    :cond_8
    const/4 v2, 0x0

    .line 90
    :goto_5
    and-int/lit8 v3, v0, 0x1

    .line 91
    .line 92
    invoke-virtual {v6, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_b

    .line 97
    .line 98
    if-eqz v1, :cond_9

    .line 99
    .line 100
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 101
    .line 102
    :cond_9
    move-object v2, p1

    .line 103
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    and-int/lit8 p4, v0, 0xe

    .line 108
    .line 109
    or-int/lit8 p4, p4, 0x30

    .line 110
    .line 111
    const-string v9, "AnimatedVisibility"

    .line 112
    .line 113
    invoke-static {p1, v9, v6, p4}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 122
    .line 123
    if-ne p4, v1, :cond_a

    .line 124
    .line 125
    sget-object p4, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$3:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 126
    .line 127
    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_a
    move-object v1, p4

    .line 131
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    shl-int/lit8 p4, v0, 0x3

    .line 134
    .line 135
    and-int/lit16 v0, p4, 0x380

    .line 136
    .line 137
    or-int/lit8 v0, v0, 0x30

    .line 138
    .line 139
    and-int/lit16 v3, p4, 0x1c00

    .line 140
    .line 141
    or-int/2addr v0, v3

    .line 142
    const v3, 0xe000

    .line 143
    .line 144
    .line 145
    and-int/2addr p4, v3

    .line 146
    or-int/2addr p4, v0

    .line 147
    const/high16 v0, 0x30000

    .line 148
    .line 149
    or-int v7, p4, v0

    .line 150
    .line 151
    move-object v0, p1

    .line 152
    move-object v3, p2

    .line 153
    move-object v4, p3

    .line 154
    move-object v5, p5

    .line 155
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 156
    .line 157
    .line 158
    move-object v5, v9

    .line 159
    goto :goto_6

    .line 160
    :cond_b
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 161
    .line 162
    .line 163
    move-object v2, p1

    .line 164
    move-object v5, p4

    .line 165
    :goto_6
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_c

    .line 170
    .line 171
    new-instance v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;

    .line 172
    .line 173
    move v1, p0

    .line 174
    move-object v3, p2

    .line 175
    move-object v4, p3

    .line 176
    move-object v6, p5

    .line 177
    move v7, v8

    .line 178
    move/from16 v8, p8

    .line 179
    .line 180
    invoke-direct/range {v0 .. v8}, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 184
    .line 185
    :cond_c
    return-void
.end method

.method public static final AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v7, p6

    .line 8
    .line 9
    move/from16 v10, p7

    .line 10
    .line 11
    const v2, 0x65b46798

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v10, 0x6

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x2

    .line 31
    :goto_0
    or-int/2addr v2, v10

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v10

    .line 34
    :goto_1
    and-int/lit8 v4, v10, 0x30

    .line 35
    .line 36
    const/16 v5, 0x20

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    move v4, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v4, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v2, v4

    .line 51
    :cond_3
    and-int/lit16 v4, v10, 0x180

    .line 52
    .line 53
    if-nez v4, :cond_5

    .line 54
    .line 55
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v4, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v2, v4

    .line 67
    :cond_5
    and-int/lit16 v4, v10, 0xc00

    .line 68
    .line 69
    if-nez v4, :cond_7

    .line 70
    .line 71
    move-object/from16 v4, p3

    .line 72
    .line 73
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_6

    .line 78
    .line 79
    const/16 v6, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v6, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v2, v6

    .line 85
    goto :goto_5

    .line 86
    :cond_7
    move-object/from16 v4, p3

    .line 87
    .line 88
    :goto_5
    and-int/lit16 v6, v10, 0x6000

    .line 89
    .line 90
    if-nez v6, :cond_9

    .line 91
    .line 92
    move-object/from16 v6, p4

    .line 93
    .line 94
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_8

    .line 99
    .line 100
    const/16 v8, 0x4000

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_8
    const/16 v8, 0x2000

    .line 104
    .line 105
    :goto_6
    or-int/2addr v2, v8

    .line 106
    goto :goto_7

    .line 107
    :cond_9
    move-object/from16 v6, p4

    .line 108
    .line 109
    :goto_7
    const/high16 v8, 0x30000

    .line 110
    .line 111
    and-int v11, v10, v8

    .line 112
    .line 113
    if-nez v11, :cond_b

    .line 114
    .line 115
    move-object/from16 v11, p5

    .line 116
    .line 117
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-eqz v12, :cond_a

    .line 122
    .line 123
    const/high16 v12, 0x20000

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_a
    const/high16 v12, 0x10000

    .line 127
    .line 128
    :goto_8
    or-int/2addr v2, v12

    .line 129
    goto :goto_9

    .line 130
    :cond_b
    move-object/from16 v11, p5

    .line 131
    .line 132
    :goto_9
    const v12, 0x12493

    .line 133
    .line 134
    .line 135
    and-int/2addr v12, v2

    .line 136
    const v13, 0x12492

    .line 137
    .line 138
    .line 139
    const/4 v14, 0x0

    .line 140
    const/4 v15, 0x1

    .line 141
    if-eq v12, v13, :cond_c

    .line 142
    .line 143
    move v12, v15

    .line 144
    goto :goto_a

    .line 145
    :cond_c
    move v12, v14

    .line 146
    :goto_a
    and-int/lit8 v13, v2, 0x1

    .line 147
    .line 148
    invoke-virtual {v7, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    if-eqz v12, :cond_12

    .line 153
    .line 154
    and-int/lit8 v12, v2, 0x70

    .line 155
    .line 156
    if-ne v12, v5, :cond_d

    .line 157
    .line 158
    move v5, v15

    .line 159
    goto :goto_b

    .line 160
    :cond_d
    move v5, v14

    .line 161
    :goto_b
    and-int/lit8 v13, v2, 0xe

    .line 162
    .line 163
    if-ne v13, v3, :cond_e

    .line 164
    .line 165
    move v14, v15

    .line 166
    :cond_e
    or-int v3, v5, v14

    .line 167
    .line 168
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 173
    .line 174
    if-nez v3, :cond_f

    .line 175
    .line 176
    if-ne v5, v14, :cond_10

    .line 177
    .line 178
    :cond_f
    new-instance v5, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;

    .line 179
    .line 180
    invoke-direct {v5, v1, v0}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Transition;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 187
    .line 188
    invoke-static {v9, v5}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-ne v5, v14, :cond_11

    .line 197
    .line 198
    sget-object v5, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 199
    .line 200
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_11
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 204
    .line 205
    or-int/2addr v8, v13

    .line 206
    or-int/2addr v8, v12

    .line 207
    and-int/lit16 v12, v2, 0x1c00

    .line 208
    .line 209
    or-int/2addr v8, v12

    .line 210
    const v12, 0xe000

    .line 211
    .line 212
    .line 213
    and-int/2addr v12, v2

    .line 214
    or-int/2addr v8, v12

    .line 215
    const/high16 v12, 0x1c00000

    .line 216
    .line 217
    shl-int/lit8 v2, v2, 0x6

    .line 218
    .line 219
    and-int/2addr v2, v12

    .line 220
    or-int/2addr v8, v2

    .line 221
    move-object v2, v3

    .line 222
    move-object v3, v4

    .line 223
    move-object v4, v6

    .line 224
    move-object v6, v11

    .line 225
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/CrossfadeKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 226
    .line 227
    .line 228
    goto :goto_c

    .line 229
    :cond_12
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 230
    .line 231
    .line 232
    :goto_c
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    if-eqz v8, :cond_13

    .line 237
    .line 238
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;

    .line 239
    .line 240
    move-object/from16 v1, p0

    .line 241
    .line 242
    move-object/from16 v2, p1

    .line 243
    .line 244
    move-object/from16 v4, p3

    .line 245
    .line 246
    move-object/from16 v5, p4

    .line 247
    .line 248
    move-object/from16 v6, p5

    .line 249
    .line 250
    move-object v3, v9

    .line 251
    move v7, v10

    .line 252
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 253
    .line 254
    .line 255
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    :cond_13
    return-void
.end method

.method public static final Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 17

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
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v0, p5

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    iget-object v4, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 14
    .line 15
    const v7, -0x6fe6665e

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v7, v6, 0x6

    .line 22
    .line 23
    if-nez v7, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v7, 0x2

    .line 34
    :goto_0
    or-int/2addr v7, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v7, v6

    .line 37
    :goto_1
    and-int/lit8 v9, v6, 0x30

    .line 38
    .line 39
    if-nez v9, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_2

    .line 46
    .line 47
    const/16 v9, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v9, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v7, v9

    .line 53
    :cond_3
    and-int/lit16 v9, v6, 0x180

    .line 54
    .line 55
    if-nez v9, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_4

    .line 62
    .line 63
    const/16 v9, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v9, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v7, v9

    .line 69
    :cond_5
    or-int/lit16 v7, v7, 0xc00

    .line 70
    .line 71
    and-int/lit16 v9, v6, 0x6000

    .line 72
    .line 73
    if-nez v9, :cond_7

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_6

    .line 80
    .line 81
    const/16 v9, 0x4000

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    const/16 v9, 0x2000

    .line 85
    .line 86
    :goto_4
    or-int/2addr v7, v9

    .line 87
    :cond_7
    and-int/lit16 v9, v7, 0x2493

    .line 88
    .line 89
    const/16 v11, 0x2492

    .line 90
    .line 91
    const/4 v12, 0x1

    .line 92
    const/4 v13, 0x0

    .line 93
    if-eq v9, v11, :cond_8

    .line 94
    .line 95
    move v9, v12

    .line 96
    goto :goto_5

    .line 97
    :cond_8
    move v9, v13

    .line 98
    :goto_5
    and-int/lit8 v11, v7, 0x1

    .line 99
    .line 100
    invoke-virtual {v0, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_1a

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 111
    .line 112
    if-ne v9, v11, :cond_9

    .line 113
    .line 114
    sget-object v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 115
    .line 116
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    if-ne v14, v11, :cond_a

    .line 126
    .line 127
    new-instance v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 128
    .line 129
    invoke-direct {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_a
    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    if-ne v15, v11, :cond_b

    .line 149
    .line 150
    sget-object v15, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 151
    .line 152
    new-instance v15, Landroidx/collection/MutableScatterMap;

    .line 153
    .line 154
    invoke-direct {v15}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_b
    check-cast v15, Landroidx/collection/MutableScatterMap;

    .line 161
    .line 162
    const/16 v16, 0x20

    .line 163
    .line 164
    iget-object v10, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 165
    .line 166
    invoke-virtual {v4}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_11

    .line 179
    .line 180
    const v4, 0x13244968

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-ne v4, v12, :cond_d

    .line 191
    .line 192
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_c

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_c
    const v4, 0x13293d80

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_d
    :goto_6
    const v4, 0x1326563a

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 221
    .line 222
    .line 223
    and-int/lit8 v4, v7, 0xe

    .line 224
    .line 225
    const/4 v7, 0x4

    .line 226
    if-ne v4, v7, :cond_e

    .line 227
    .line 228
    move v4, v12

    .line 229
    goto :goto_7

    .line 230
    :cond_e
    move v4, v13

    .line 231
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    if-nez v4, :cond_f

    .line 236
    .line 237
    if-ne v7, v11, :cond_10

    .line 238
    .line 239
    :cond_f
    new-instance v7, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 240
    .line 241
    const/4 v4, 0x3

    .line 242
    invoke-direct {v7, v4, v1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_10
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 249
    .line 250
    invoke-static {v14, v7}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 257
    .line 258
    .line 259
    :goto_8
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 260
    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_11
    const v4, 0x132954c0

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 270
    .line 271
    .line 272
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v15, v4}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-nez v4, :cond_16

    .line 281
    .line 282
    const v4, 0x132a41bb

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    move v7, v13

    .line 293
    :goto_a
    move-object v8, v4

    .line 294
    check-cast v8, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 295
    .line 296
    invoke-virtual {v8}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    const/4 v12, -0x1

    .line 301
    if-eqz v11, :cond_13

    .line 302
    .line 303
    invoke-virtual {v8}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-interface {v9, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-eqz v8, :cond_12

    .line 324
    .line 325
    goto :goto_b

    .line 326
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 327
    .line 328
    const/4 v12, 0x1

    .line 329
    goto :goto_a

    .line 330
    :cond_13
    move v7, v12

    .line 331
    :goto_b
    if-ne v7, v12, :cond_14

    .line 332
    .line 333
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_14
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v14, v7, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    :goto_c
    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    move v7, v13

    .line 356
    :goto_d
    if-ge v7, v4, :cond_15

    .line 357
    .line 358
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    new-instance v10, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    .line 363
    .line 364
    invoke-direct {v10, v1, v3, v8, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 365
    .line 366
    .line 367
    const v11, -0x37b2e7f5

    .line 368
    .line 369
    .line 370
    invoke-static {v11, v10, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    invoke-virtual {v15, v8, v10}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    add-int/lit8 v7, v7, 0x1

    .line 378
    .line 379
    goto :goto_d

    .line 380
    :cond_15
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 381
    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_16
    const v4, 0x13359780

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 391
    .line 392
    .line 393
    :goto_e
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 394
    .line 395
    invoke-static {v4, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    iget-wide v7, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 400
    .line 401
    ushr-long v10, v7, v16

    .line 402
    .line 403
    xor-long/2addr v7, v10

    .line 404
    long-to-int v7, v7

    .line 405
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    invoke-static {v0, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 414
    .line 415
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 419
    .line 420
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 421
    .line 422
    .line 423
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 424
    .line 425
    if-eqz v12, :cond_17

    .line 426
    .line 427
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 428
    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 432
    .line 433
    .line 434
    :goto_f
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 435
    .line 436
    invoke-static {v0, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 437
    .line 438
    .line 439
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 440
    .line 441
    invoke-static {v0, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 449
    .line 450
    invoke-static {v0, v4, v7}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 451
    .line 452
    .line 453
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 454
    .line 455
    invoke-static {v0, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 456
    .line 457
    .line 458
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 459
    .line 460
    invoke-static {v0, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    const v4, -0x4e3e53b8

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    move v7, v13

    .line 474
    :goto_10
    if-ge v7, v4, :cond_19

    .line 475
    .line 476
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    const v10, 0x45d4d0b9

    .line 481
    .line 482
    .line 483
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v15, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 495
    .line 496
    if-nez v8, :cond_18

    .line 497
    .line 498
    const v8, 0x74c5d4d0

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 502
    .line 503
    .line 504
    :goto_11
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 505
    .line 506
    .line 507
    goto :goto_12

    .line 508
    :cond_18
    const v10, 0x45d4d551

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 512
    .line 513
    .line 514
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    invoke-interface {v8, v0, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    goto :goto_11

    .line 522
    :goto_12
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 523
    .line 524
    .line 525
    add-int/lit8 v7, v7, 0x1

    .line 526
    .line 527
    goto :goto_10

    .line 528
    :cond_19
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 529
    .line 530
    .line 531
    const/4 v4, 0x1

    .line 532
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 533
    .line 534
    .line 535
    move-object v4, v9

    .line 536
    goto :goto_13

    .line 537
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 538
    .line 539
    .line 540
    move-object/from16 v4, p3

    .line 541
    .line 542
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    if-eqz v7, :cond_1b

    .line 547
    .line 548
    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    .line 549
    .line 550
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 551
    .line 552
    .line 553
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 554
    .line 555
    :cond_1b
    return-void
.end method

.method public static final Crossfade(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 10

    const v0, -0x1e970fed

    .line 556
    invoke-virtual {p5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {p5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    or-int/lit8 v0, v0, 0x30

    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x100

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0xc00

    and-int/lit16 v2, v0, 0x2493

    const/16 v4, 0x2492

    if-eq v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {p5, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    and-int/lit8 v2, v0, 0xe

    or-int/lit8 v2, v2, 0x30

    .line 557
    const-string v9, "Crossfade"

    invoke-static {p0, v9, p5, v2}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    const v4, 0xe3f0

    and-int v8, v0, v4

    .line 558
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    move-object v2, v3

    move-object v4, v9

    goto :goto_3

    .line 559
    :cond_3
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object v2, p1

    move-object v4, p3

    .line 560
    :goto_3
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 561
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static animateContentSize$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/ui/unit/IntSize;

    .line 4
    .line 5
    const-wide v1, 0x100000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/high16 v2, 0x43c80000    # 400.0f

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v1, Landroidx/compose/animation/SizeAnimationModifierElement;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Landroidx/compose/animation/SizeAnimationModifierElement;-><init>(Landroidx/compose/animation/core/SpringSpec;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/EnterExitState;
    .locals 3

    .line 1
    const v0, -0x192ea2d9

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0, p0}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const v0, -0xca56761

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    sget-object p0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const v0, -0xca1388c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 73
    .line 74
    if-ne v0, v2, :cond_3

    .line 75
    .line 76
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 86
    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    sget-object p0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_6

    .line 134
    .line 135
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 139
    .line 140
    :goto_0
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method

.method public static final togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/animation/SizeTransformImpl;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Landroidx/compose/animation/SizeTransformImpl;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;FLandroidx/compose/animation/SizeTransformImpl;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
