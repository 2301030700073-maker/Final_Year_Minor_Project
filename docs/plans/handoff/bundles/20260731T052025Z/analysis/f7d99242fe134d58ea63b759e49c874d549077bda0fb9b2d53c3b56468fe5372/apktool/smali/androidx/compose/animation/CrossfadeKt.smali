.class public abstract Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 20

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
    move/from16 v10, p7

    .line 12
    .line 13
    move-object/from16 v11, p6

    .line 14
    .line 15
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, 0x1e804e2f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, v10, 0x6

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x2

    .line 37
    :goto_0
    or-int/2addr v0, v10

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v0, v10

    .line 40
    :goto_1
    and-int/lit8 v4, v10, 0x30

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v4, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v4

    .line 56
    :cond_3
    and-int/lit16 v4, v10, 0x180

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const/16 v4, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v4, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v4

    .line 72
    :cond_5
    and-int/lit16 v4, v10, 0xc00

    .line 73
    .line 74
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    const/16 v4, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v4, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v4

    .line 88
    :cond_7
    and-int/lit16 v4, v10, 0x6000

    .line 89
    .line 90
    if-nez v4, :cond_9

    .line 91
    .line 92
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_8

    .line 97
    .line 98
    const/16 v4, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v4, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v0, v4

    .line 104
    :cond_9
    const/high16 v4, 0x30000

    .line 105
    .line 106
    and-int/2addr v4, v10

    .line 107
    move-object/from16 v6, p5

    .line 108
    .line 109
    if-nez v4, :cond_b

    .line 110
    .line 111
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_a

    .line 116
    .line 117
    const/high16 v4, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v4, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v0, v4

    .line 123
    :cond_b
    const v4, 0x12493

    .line 124
    .line 125
    .line 126
    and-int/2addr v4, v0

    .line 127
    const v5, 0x12492

    .line 128
    .line 129
    .line 130
    const/4 v13, 0x1

    .line 131
    const/4 v14, 0x0

    .line 132
    if-eq v4, v5, :cond_c

    .line 133
    .line 134
    move v4, v13

    .line 135
    goto :goto_7

    .line 136
    :cond_c
    move v4, v14

    .line 137
    :goto_7
    and-int/lit8 v5, v0, 0x1

    .line 138
    .line 139
    invoke-virtual {v11, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_30

    .line 144
    .line 145
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 146
    .line 147
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 152
    .line 153
    and-int/lit8 v0, v0, 0xe

    .line 154
    .line 155
    if-ne v0, v2, :cond_d

    .line 156
    .line 157
    move v4, v13

    .line 158
    goto :goto_8

    .line 159
    :cond_d
    move v4, v14

    .line 160
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 165
    .line 166
    if-nez v4, :cond_e

    .line 167
    .line 168
    if-ne v5, v15, :cond_f

    .line 169
    .line 170
    :cond_e
    new-instance v5, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 171
    .line 172
    invoke-direct {v5, v1, v8}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_f
    move-object v4, v5

    .line 179
    check-cast v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 180
    .line 181
    if-ne v0, v2, :cond_10

    .line 182
    .line 183
    move v5, v13

    .line 184
    :goto_9
    const/16 p6, 0x20

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_10
    move v5, v14

    .line 188
    goto :goto_9

    .line 189
    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    if-nez v5, :cond_11

    .line 194
    .line 195
    if-ne v12, v15, :cond_12

    .line 196
    .line 197
    :cond_11
    iget-object v5, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 198
    .line 199
    invoke-virtual {v5}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    new-array v12, v13, [Ljava/lang/Object;

    .line 204
    .line 205
    aput-object v5, v12, v14

    .line 206
    .line 207
    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 208
    .line 209
    invoke-direct {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    move-object v12, v5

    .line 223
    :cond_12
    move-object v5, v12

    .line 224
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 225
    .line 226
    if-ne v0, v2, :cond_13

    .line 227
    .line 228
    move v0, v13

    .line 229
    goto :goto_b

    .line 230
    :cond_13
    move v0, v14

    .line 231
    :goto_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-nez v0, :cond_14

    .line 236
    .line 237
    if-ne v2, v15, :cond_15

    .line 238
    .line 239
    :cond_14
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 240
    .line 241
    new-instance v2, Landroidx/collection/MutableScatterMap;

    .line 242
    .line 243
    invoke-direct {v2}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_15
    move-object v12, v2

    .line 250
    check-cast v12, Landroidx/collection/MutableScatterMap;

    .line 251
    .line 252
    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 253
    .line 254
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 255
    .line 256
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    if-nez v14, :cond_16

    .line 265
    .line 266
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :cond_16
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v13

    .line 284
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    if-eqz v13, :cond_1b

    .line 289
    .line 290
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v13

    .line 294
    const/4 v14, 0x1

    .line 295
    if-ne v13, v14, :cond_17

    .line 296
    .line 297
    const/4 v13, 0x0

    .line 298
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-nez v13, :cond_18

    .line 311
    .line 312
    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    :cond_18
    iget v13, v12, Landroidx/collection/MutableScatterMap;->_size:I

    .line 323
    .line 324
    const/4 v14, 0x1

    .line 325
    if-ne v13, v14, :cond_19

    .line 326
    .line 327
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v13

    .line 331
    invoke-virtual {v12, v13}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-eqz v13, :cond_1a

    .line 336
    .line 337
    :cond_19
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 338
    .line 339
    .line 340
    :cond_1a
    iput-object v8, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->contentAlignment:Landroidx/compose/ui/Alignment;

    .line 341
    .line 342
    :cond_1b
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-nez v13, :cond_1f

    .line 355
    .line 356
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v13

    .line 364
    if-nez v13, :cond_1f

    .line 365
    .line 366
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    const/4 v14, 0x0

    .line 371
    :goto_c
    move-object/from16 v16, v13

    .line 372
    .line 373
    check-cast v16, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 374
    .line 375
    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v17

    .line 379
    move-object/from16 v18, v0

    .line 380
    .line 381
    if-eqz v17, :cond_1d

    .line 382
    .line 383
    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_1c

    .line 404
    .line 405
    :goto_d
    const/4 v0, -0x1

    .line 406
    goto :goto_e

    .line 407
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    .line 408
    .line 409
    move-object/from16 v1, p0

    .line 410
    .line 411
    move-object/from16 v0, v18

    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_1d
    const/4 v14, -0x1

    .line 415
    goto :goto_d

    .line 416
    :goto_e
    if-ne v14, v0, :cond_1e

    .line 417
    .line 418
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_1e
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v5, v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    goto :goto_f

    .line 434
    :cond_1f
    move-object/from16 v18, v0

    .line 435
    .line 436
    :goto_f
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_21

    .line 445
    .line 446
    invoke-virtual/range {v18 .. v18}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v12, v0}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_20

    .line 455
    .line 456
    goto :goto_10

    .line 457
    :cond_20
    const v0, 0x755c7cd3

    .line 458
    .line 459
    .line 460
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 461
    .line 462
    .line 463
    const/4 v13, 0x0

    .line 464
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 465
    .line 466
    .line 467
    move-object v6, v3

    .line 468
    move-object v0, v4

    .line 469
    goto :goto_12

    .line 470
    :cond_21
    :goto_10
    const v0, 0x75350ad1

    .line 471
    .line 472
    .line 473
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v12}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 480
    .line 481
    .line 482
    move-result v13

    .line 483
    const/4 v14, 0x0

    .line 484
    :goto_11
    if-ge v14, v13, :cond_22

    .line 485
    .line 486
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;

    .line 491
    .line 492
    move-object/from16 v1, p0

    .line 493
    .line 494
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 495
    .line 496
    .line 497
    move-object v1, v0

    .line 498
    move-object v6, v3

    .line 499
    move-object v0, v4

    .line 500
    const v3, -0x16ceaa7

    .line 501
    .line 502
    .line 503
    invoke-static {v3, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v12, v2, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    add-int/lit8 v14, v14, 0x1

    .line 511
    .line 512
    move-object v3, v6

    .line 513
    move-object/from16 v6, p5

    .line 514
    .line 515
    goto :goto_11

    .line 516
    :cond_22
    move-object v6, v3

    .line 517
    move-object v0, v4

    .line 518
    const/4 v1, 0x0

    .line 519
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 520
    .line 521
    .line 522
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    or-int/2addr v1, v2

    .line 535
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    if-nez v1, :cond_23

    .line 540
    .line 541
    if-ne v2, v15, :cond_24

    .line 542
    .line 543
    :cond_23
    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    move-object v2, v1

    .line 548
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 549
    .line 550
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    :cond_24
    check-cast v2, Landroidx/compose/animation/ContentTransform;

    .line 554
    .line 555
    iget-object v1, v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 556
    .line 557
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    if-nez v3, :cond_25

    .line 566
    .line 567
    if-ne v4, v15, :cond_26

    .line 568
    .line 569
    :cond_25
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 570
    .line 571
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    :cond_26
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 579
    .line 580
    iget-object v2, v2, Landroidx/compose/animation/ContentTransform;->sizeTransform:Landroidx/compose/animation/SizeTransformImpl;

    .line 581
    .line 582
    invoke-static {v2, v11}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 583
    .line 584
    .line 585
    move-result-object v13

    .line 586
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 587
    .line 588
    invoke-virtual {v2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 593
    .line 594
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    if-eqz v1, :cond_27

    .line 603
    .line 604
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 605
    .line 606
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    goto :goto_13

    .line 610
    :cond_27
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    if-eqz v1, :cond_28

    .line 615
    .line 616
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 617
    .line 618
    invoke-interface {v4, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    :cond_28
    :goto_13
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    check-cast v1, Ljava/lang/Boolean;

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 632
    .line 633
    if-eqz v1, :cond_2b

    .line 634
    .line 635
    const v1, 0x50a652f9

    .line 636
    .line 637
    .line 638
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 639
    .line 640
    .line 641
    move-object v4, v0

    .line 642
    iget-object v0, v4, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->transition:Landroidx/compose/animation/core/Transition;

    .line 643
    .line 644
    sget-object v1, Landroidx/compose/animation/core/ArcSplineKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 645
    .line 646
    move-object v2, v4

    .line 647
    const/4 v4, 0x0

    .line 648
    move-object v3, v5

    .line 649
    const/4 v5, 0x2

    .line 650
    move-object/from16 v16, v2

    .line 651
    .line 652
    const/4 v2, 0x0

    .line 653
    move-object/from16 v19, v16

    .line 654
    .line 655
    move-object/from16 v16, v3

    .line 656
    .line 657
    move-object v3, v11

    .line 658
    move-object/from16 v11, v19

    .line 659
    .line 660
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    if-nez v1, :cond_29

    .line 673
    .line 674
    if-ne v2, v15, :cond_2a

    .line 675
    .line 676
    :cond_29
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    check-cast v1, Landroidx/compose/animation/SizeTransformImpl;

    .line 681
    .line 682
    invoke-static {v14}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    :cond_2a
    move-object v14, v2

    .line 690
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 691
    .line 692
    const/4 v1, 0x0

    .line 693
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 694
    .line 695
    .line 696
    goto :goto_14

    .line 697
    :cond_2b
    move-object/from16 v16, v5

    .line 698
    .line 699
    move-object v3, v11

    .line 700
    const/4 v1, 0x0

    .line 701
    move-object v11, v0

    .line 702
    const v0, 0x50aa6233

    .line 703
    .line 704
    .line 705
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 709
    .line 710
    .line 711
    const/4 v0, 0x0

    .line 712
    :goto_14
    new-instance v1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;

    .line 713
    .line 714
    invoke-direct {v1, v0, v13, v11}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 715
    .line 716
    .line 717
    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-interface {v7, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    if-ne v1, v15, :cond_2c

    .line 730
    .line 731
    new-instance v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 732
    .line 733
    invoke-direct {v1, v11}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    :cond_2c
    check-cast v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 740
    .line 741
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 742
    .line 743
    ushr-long v13, v4, p6

    .line 744
    .line 745
    xor-long/2addr v4, v13

    .line 746
    long-to-int v2, v4

    .line 747
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    invoke-static {v3, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 756
    .line 757
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 761
    .line 762
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 763
    .line 764
    .line 765
    iget-boolean v11, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 766
    .line 767
    if-eqz v11, :cond_2d

    .line 768
    .line 769
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 770
    .line 771
    .line 772
    goto :goto_15

    .line 773
    :cond_2d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 774
    .line 775
    .line 776
    :goto_15
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 777
    .line 778
    invoke-static {v3, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 779
    .line 780
    .line 781
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 782
    .line 783
    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 784
    .line 785
    .line 786
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 791
    .line 792
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 793
    .line 794
    .line 795
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 796
    .line 797
    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 798
    .line 799
    .line 800
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 801
    .line 802
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 803
    .line 804
    .line 805
    const v0, -0x334534ba    # -9.793387E7f

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 809
    .line 810
    .line 811
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    const/4 v13, 0x0

    .line 816
    :goto_16
    if-ge v13, v0, :cond_2f

    .line 817
    .line 818
    move-object/from16 v5, v16

    .line 819
    .line 820
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    const v2, -0x78c25a0a

    .line 825
    .line 826
    .line 827
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v12, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 839
    .line 840
    if-nez v1, :cond_2e

    .line 841
    .line 842
    const v1, 0x6077a733

    .line 843
    .line 844
    .line 845
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 846
    .line 847
    .line 848
    const/4 v2, 0x0

    .line 849
    :goto_17
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 850
    .line 851
    .line 852
    goto :goto_18

    .line 853
    :cond_2e
    const/4 v2, 0x0

    .line 854
    const v4, -0x78c25572

    .line 855
    .line 856
    .line 857
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 858
    .line 859
    .line 860
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    goto :goto_17

    .line 868
    :goto_18
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 869
    .line 870
    .line 871
    add-int/lit8 v13, v13, 0x1

    .line 872
    .line 873
    move-object/from16 v16, v5

    .line 874
    .line 875
    goto :goto_16

    .line 876
    :cond_2f
    const/4 v2, 0x0

    .line 877
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 878
    .line 879
    .line 880
    const/4 v14, 0x1

    .line 881
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 882
    .line 883
    .line 884
    goto :goto_19

    .line 885
    :cond_30
    move-object v6, v3

    .line 886
    move-object v3, v11

    .line 887
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 888
    .line 889
    .line 890
    :goto_19
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 891
    .line 892
    .line 893
    move-result-object v11

    .line 894
    if-eqz v11, :cond_31

    .line 895
    .line 896
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;

    .line 897
    .line 898
    move-object/from16 v1, p0

    .line 899
    .line 900
    move-object v3, v6

    .line 901
    move-object v2, v7

    .line 902
    move-object v4, v8

    .line 903
    move-object v5, v9

    .line 904
    move v7, v10

    .line 905
    move-object/from16 v6, p5

    .line 906
    .line 907
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 908
    .line 909
    .line 910
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 911
    .line 912
    :cond_31
    return-void
.end method

.method public static final AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v8, p8

    .line 913
    move-object/from16 v15, p7

    check-cast v15, Landroidx/compose/runtime/GapComposer;

    const v0, 0x598416e0

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v8, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, v8, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v8

    goto :goto_2

    :cond_2
    move v0, v8

    :goto_2
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x30

    :cond_3
    move-object/from16 v3, p1

    goto :goto_4

    :cond_4
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_3

    :cond_5
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v0, v4

    :goto_4
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v5, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v5, v8, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_5

    :cond_8
    const/16 v6, 0x80

    :goto_5
    or-int/2addr v0, v6

    :goto_6
    or-int/lit16 v6, v0, 0xc00

    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_a

    or-int/lit16 v6, v0, 0x6c00

    :cond_9
    move-object/from16 v0, p4

    goto :goto_8

    :cond_a
    and-int/lit16 v0, v8, 0x6000

    if-nez v0, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x4000

    goto :goto_7

    :cond_b
    const/16 v9, 0x2000

    :goto_7
    or-int/2addr v6, v9

    :goto_8
    and-int/lit8 v9, p9, 0x20

    const/high16 v10, 0x30000

    if-eqz v9, :cond_d

    or-int/2addr v6, v10

    :cond_c
    move-object/from16 v10, p5

    goto :goto_a

    :cond_d
    and-int/2addr v10, v8

    if-nez v10, :cond_c

    move-object/from16 v10, p5

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/high16 v11, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v11, 0x10000

    :goto_9
    or-int/2addr v6, v11

    :goto_a
    const/high16 v11, 0x180000

    and-int/2addr v11, v8

    move-object/from16 v14, p6

    if-nez v11, :cond_10

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/high16 v11, 0x100000

    goto :goto_b

    :cond_f
    const/high16 v11, 0x80000

    :goto_b
    or-int/2addr v6, v11

    :cond_10
    const v11, 0x92493

    and-int/2addr v11, v6

    const v12, 0x92492

    const/4 v13, 0x0

    if-eq v11, v12, :cond_11

    const/4 v11, 0x1

    goto :goto_c

    :cond_11
    move v11, v13

    :goto_c
    and-int/lit8 v12, v6, 0x1

    invoke-virtual {v15, v12, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v11

    if-eqz v11, :cond_18

    if-eqz v2, :cond_12

    .line 914
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v2

    goto :goto_d

    :cond_12
    move-object v10, v3

    :goto_d
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v4, :cond_14

    .line 915
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_13

    .line 916
    sget-object v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$1:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 917
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 918
    :cond_13
    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v11, v3

    goto :goto_e

    :cond_14
    move-object v11, v5

    .line 919
    :goto_e
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    if-eqz v7, :cond_15

    .line 920
    const-string v0, "AnimatedContent"

    :cond_15
    if-eqz v9, :cond_17

    .line 921
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_16

    .line 922
    sget-object v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$2:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 923
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 924
    :cond_16
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    goto :goto_f

    :cond_17
    move-object/from16 v2, p5

    :goto_f
    and-int/lit8 v3, v6, 0xe

    shr-int/lit8 v4, v6, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    .line 925
    invoke-static {v1, v0, v15, v3, v13}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v9

    and-int/lit16 v3, v6, 0x1ff0

    shr-int/lit8 v4, v6, 0x3

    const v5, 0xe000

    and-int/2addr v5, v4

    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int/2addr v4, v5

    or-int v16, v3, v4

    move-object v13, v2

    .line 926
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v6, v13

    :goto_10
    move-object v5, v0

    goto :goto_11

    .line 927
    :cond_18
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object v2, v3

    move-object v3, v5

    goto :goto_10

    .line 928
    :goto_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 929
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
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
    const/high16 v10, 0x180000

    .line 126
    .line 127
    or-int/2addr v0, v10

    .line 128
    const/high16 v10, 0xc00000

    .line 129
    .line 130
    and-int/2addr v10, v8

    .line 131
    if-nez v10, :cond_d

    .line 132
    .line 133
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_c

    .line 138
    .line 139
    const/high16 v10, 0x800000

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_c
    const/high16 v10, 0x400000

    .line 143
    .line 144
    :goto_7
    or-int/2addr v0, v10

    .line 145
    :cond_d
    const v10, 0x492493

    .line 146
    .line 147
    .line 148
    and-int/2addr v10, v0

    .line 149
    const v11, 0x492492

    .line 150
    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    if-eq v10, v11, :cond_e

    .line 154
    .line 155
    const/4 v10, 0x1

    .line 156
    goto :goto_8

    .line 157
    :cond_e
    move v10, v14

    .line 158
    :goto_8
    and-int/lit8 v11, v0, 0x1

    .line 159
    .line 160
    invoke-virtual {v12, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_50

    .line 165
    .line 166
    iget-object v10, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 167
    .line 168
    iget-object v11, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 169
    .line 170
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    check-cast v10, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-nez v10, :cond_10

    .line 185
    .line 186
    invoke-virtual {v11}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    check-cast v10, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-nez v10, :cond_10

    .line 201
    .line 202
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-nez v10, :cond_10

    .line 207
    .line 208
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getHasInitialValueAnimations()Z

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-eqz v10, :cond_f

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_f
    const v0, -0xdabcc8d

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_28

    .line 225
    .line 226
    :cond_10
    :goto_9
    const v10, -0xdd9ee57

    .line 227
    .line 228
    .line 229
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 230
    .line 231
    .line 232
    and-int/lit8 v10, v0, 0xe

    .line 233
    .line 234
    or-int/lit8 v16, v10, 0x30

    .line 235
    .line 236
    and-int/lit8 v13, v16, 0xe

    .line 237
    .line 238
    const/16 v17, 0x20

    .line 239
    .line 240
    xor-int/lit8 v15, v13, 0x6

    .line 241
    .line 242
    if-le v15, v9, :cond_11

    .line 243
    .line 244
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    if-nez v15, :cond_12

    .line 249
    .line 250
    :cond_11
    and-int/lit8 v15, v16, 0x6

    .line 251
    .line 252
    if-ne v15, v9, :cond_13

    .line 253
    .line 254
    :cond_12
    const/4 v15, 0x1

    .line 255
    goto :goto_a

    .line 256
    :cond_13
    move v15, v14

    .line 257
    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 262
    .line 263
    if-nez v15, :cond_14

    .line 264
    .line 265
    if-ne v9, v14, :cond_15

    .line 266
    .line 267
    :cond_14
    invoke-virtual {v11}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    if-eqz v15, :cond_16

    .line 279
    .line 280
    invoke-virtual {v11}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    :cond_16
    const v11, 0x6defb3b0

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v2, v9, v12}, Landroidx/compose/animation/CrossfadeKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const/4 v15, 0x0

    .line 295
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 296
    .line 297
    .line 298
    iget-object v15, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 299
    .line 300
    invoke-virtual {v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 305
    .line 306
    .line 307
    invoke-static {v1, v2, v15, v12}, Landroidx/compose/animation/CrossfadeKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;

    .line 308
    .line 309
    .line 310
    move-result-object v11

    .line 311
    const/4 v15, 0x0

    .line 312
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 313
    .line 314
    .line 315
    or-int/lit16 v13, v13, 0xc00

    .line 316
    .line 317
    and-int/lit8 v15, v13, 0xe

    .line 318
    .line 319
    xor-int/lit8 v15, v15, 0x6

    .line 320
    .line 321
    move/from16 v19, v0

    .line 322
    .line 323
    const/4 v0, 0x4

    .line 324
    if-le v15, v0, :cond_17

    .line 325
    .line 326
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v16

    .line 330
    if-nez v16, :cond_18

    .line 331
    .line 332
    :cond_17
    and-int/lit8 v2, v13, 0x6

    .line 333
    .line 334
    if-ne v2, v0, :cond_19

    .line 335
    .line 336
    :cond_18
    const/4 v0, 0x1

    .line 337
    goto :goto_b

    .line 338
    :cond_19
    const/4 v0, 0x0

    .line 339
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    if-nez v0, :cond_1b

    .line 344
    .line 345
    if-ne v2, v14, :cond_1a

    .line 346
    .line 347
    goto :goto_c

    .line 348
    :cond_1a
    move/from16 v20, v13

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
    new-instance v8, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    move/from16 v20, v13

    .line 364
    .line 365
    iget-object v13, v1, Landroidx/compose/animation/core/Transition;->label:Ljava/lang/String;

    .line 366
    .line 367
    const-string v7, " > EnterExitTransition"

    .line 368
    .line 369
    invoke-static {v8, v13, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-direct {v2, v0, v1, v7}, Landroidx/compose/animation/core/Transition;-><init>(Lorg/minidns/dnsqueryresult/DnsQueryResult;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :goto_d
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 380
    .line 381
    const/4 v0, 0x4

    .line 382
    if-le v15, v0, :cond_1c

    .line 383
    .line 384
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-nez v7, :cond_1d

    .line 389
    .line 390
    :cond_1c
    and-int/lit8 v7, v20, 0x6

    .line 391
    .line 392
    if-ne v7, v0, :cond_1e

    .line 393
    .line 394
    :cond_1d
    const/4 v0, 0x1

    .line 395
    goto :goto_e

    .line 396
    :cond_1e
    const/4 v0, 0x0

    .line 397
    :goto_e
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    or-int/2addr v0, v7

    .line 402
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    if-nez v0, :cond_1f

    .line 407
    .line 408
    if-ne v7, v14, :cond_20

    .line 409
    .line 410
    :cond_1f
    new-instance v7, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 411
    .line 412
    const/16 v0, 0xa

    .line 413
    .line 414
    invoke-direct {v7, v0, v1, v2}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :cond_20
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 421
    .line 422
    invoke-static {v2, v7, v12}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_21

    .line 430
    .line 431
    invoke-virtual {v2, v9, v11}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    goto :goto_f

    .line 435
    :cond_21
    invoke-virtual {v2, v11}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->isSeeking$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 439
    .line 440
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 441
    .line 442
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    :goto_f
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 446
    .line 447
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    if-nez v0, :cond_22

    .line 456
    .line 457
    if-ne v7, v14, :cond_23

    .line 458
    .line 459
    :cond_22
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_23
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 467
    .line 468
    iget-object v0, v2, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 469
    .line 470
    iget-object v8, v2, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 471
    .line 472
    iget-object v9, v2, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 473
    .line 474
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v11

    .line 482
    sget-object v13, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 483
    .line 484
    if-ne v0, v11, :cond_25

    .line 485
    .line 486
    invoke-virtual {v8}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-ne v0, v13, :cond_25

    .line 491
    .line 492
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-eqz v0, :cond_24

    .line 497
    .line 498
    invoke-interface {v7, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    goto :goto_10

    .line 502
    :cond_24
    sget-object v0, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 503
    .line 504
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    goto :goto_10

    .line 508
    :cond_25
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    if-ne v0, v13, :cond_26

    .line 513
    .line 514
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 519
    .line 520
    invoke-virtual {v0, v4}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-interface {v7, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    :cond_26
    :goto_10
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 532
    .line 533
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v11

    .line 541
    if-nez v7, :cond_27

    .line 542
    .line 543
    if-ne v11, v14, :cond_28

    .line 544
    .line 545
    :cond_27
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 546
    .line 547
    .line 548
    move-result-object v11

    .line 549
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    :cond_28
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 553
    .line 554
    invoke-virtual {v8}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v15

    .line 562
    if-ne v7, v15, :cond_2a

    .line 563
    .line 564
    invoke-virtual {v8}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    if-ne v7, v13, :cond_2a

    .line 569
    .line 570
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 571
    .line 572
    .line 573
    move-result v7

    .line 574
    if-eqz v7, :cond_29

    .line 575
    .line 576
    invoke-interface {v11, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    goto :goto_11

    .line 580
    :cond_29
    sget-object v7, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 581
    .line 582
    invoke-interface {v11, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    goto :goto_11

    .line 586
    :cond_2a
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    if-eq v7, v13, :cond_2b

    .line 591
    .line 592
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    .line 597
    .line 598
    invoke-virtual {v7, v5}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    invoke-interface {v11, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    :cond_2b
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    .line 610
    .line 611
    invoke-static {v6, v12}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 612
    .line 613
    .line 614
    move-result-object v11

    .line 615
    invoke-virtual {v8}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v13

    .line 619
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v15

    .line 623
    invoke-interface {v6, v13, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v13

    .line 627
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v15

    .line 631
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v20

    .line 635
    or-int v15, v15, v20

    .line 636
    .line 637
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    move-object/from16 v20, v13

    .line 642
    .line 643
    const/4 v13, 0x0

    .line 644
    if-nez v15, :cond_2c

    .line 645
    .line 646
    if-ne v1, v14, :cond_2d

    .line 647
    .line 648
    :cond_2c
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 649
    .line 650
    const/16 v15, 0x9

    .line 651
    .line 652
    invoke-direct {v1, v2, v11, v13, v15}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    :cond_2d
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 659
    .line 660
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v11

    .line 664
    if-ne v11, v14, :cond_2e

    .line 665
    .line 666
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 667
    .line 668
    .line 669
    move-result-object v11

    .line 670
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    :cond_2e
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 674
    .line 675
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v15

    .line 679
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v13

    .line 683
    if-nez v15, :cond_30

    .line 684
    .line 685
    if-ne v13, v14, :cond_2f

    .line 686
    .line 687
    goto :goto_12

    .line 688
    :cond_2f
    move-object/from16 v24, v2

    .line 689
    .line 690
    const/4 v15, 0x0

    .line 691
    goto :goto_13

    .line 692
    :cond_30
    :goto_12
    new-instance v13, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;

    .line 693
    .line 694
    move-object/from16 v24, v2

    .line 695
    .line 696
    const/4 v2, 0x0

    .line 697
    const/4 v15, 0x0

    .line 698
    invoke-direct {v13, v1, v11, v15, v2}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    :goto_13
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 705
    .line 706
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 707
    .line 708
    invoke-static {v12, v1, v13}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v8}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    sget-object v2, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 716
    .line 717
    if-ne v1, v2, :cond_32

    .line 718
    .line 719
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    if-ne v1, v2, :cond_32

    .line 724
    .line 725
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v1

    .line 729
    check-cast v1, Ljava/lang/Boolean;

    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-nez v1, :cond_31

    .line 736
    .line 737
    goto :goto_14

    .line 738
    :cond_31
    const v0, -0xdabe3cd

    .line 739
    .line 740
    .line 741
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 742
    .line 743
    .line 744
    const/4 v15, 0x0

    .line 745
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 746
    .line 747
    .line 748
    move-object/from16 v7, p6

    .line 749
    .line 750
    move v6, v15

    .line 751
    goto/16 :goto_27

    .line 752
    .line 753
    :cond_32
    :goto_14
    const v1, -0xdc032f6

    .line 754
    .line 755
    .line 756
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 757
    .line 758
    .line 759
    const/4 v1, 0x4

    .line 760
    if-ne v10, v1, :cond_33

    .line 761
    .line 762
    const/4 v1, 0x1

    .line 763
    goto :goto_15

    .line 764
    :cond_33
    const/4 v1, 0x0

    .line 765
    :goto_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    if-nez v1, :cond_34

    .line 770
    .line 771
    if-ne v2, v14, :cond_35

    .line 772
    .line 773
    :cond_34
    new-instance v2, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 774
    .line 775
    invoke-direct {v2}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>()V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    :cond_35
    check-cast v2, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 782
    .line 783
    sget-object v10, Landroidx/compose/animation/core/ArcSplineKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 784
    .line 785
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    if-ne v1, v14, :cond_36

    .line 790
    .line 791
    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1$1;

    .line 792
    .line 793
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 794
    .line 795
    .line 796
    :cond_36
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 797
    .line 798
    const v8, -0xa02f001

    .line 799
    .line 800
    .line 801
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 802
    .line 803
    .line 804
    const/4 v8, 0x0

    .line 805
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 806
    .line 807
    .line 808
    const v9, -0xa02e522

    .line 809
    .line 810
    .line 811
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 815
    .line 816
    .line 817
    iget-object v9, v0, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 818
    .line 819
    iget-object v11, v7, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 820
    .line 821
    iget-object v13, v9, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    .line 822
    .line 823
    iget-object v8, v9, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 824
    .line 825
    if-nez v13, :cond_38

    .line 826
    .line 827
    iget-object v13, v11, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    .line 828
    .line 829
    if-eqz v13, :cond_37

    .line 830
    .line 831
    goto :goto_16

    .line 832
    :cond_37
    const/4 v13, 0x0

    .line 833
    goto :goto_17

    .line 834
    :cond_38
    :goto_16
    const/4 v13, 0x1

    .line 835
    :goto_17
    if-nez v8, :cond_3a

    .line 836
    .line 837
    iget-object v8, v11, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    .line 838
    .line 839
    if-eqz v8, :cond_39

    .line 840
    .line 841
    goto :goto_18

    .line 842
    :cond_39
    const/4 v8, 0x0

    .line 843
    goto :goto_19

    .line 844
    :cond_3a
    :goto_18
    const/4 v8, 0x1

    .line 845
    :goto_19
    if-eqz v13, :cond_3c

    .line 846
    .line 847
    const v13, -0x3654347f

    .line 848
    .line 849
    .line 850
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v13

    .line 857
    if-ne v13, v14, :cond_3b

    .line 858
    .line 859
    const-string v13, "Built-in slide"

    .line 860
    .line 861
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 862
    .line 863
    .line 864
    :cond_3b
    check-cast v13, Ljava/lang/String;

    .line 865
    .line 866
    move-object/from16 v16, v11

    .line 867
    .line 868
    move-object v11, v13

    .line 869
    const/16 v13, 0x180

    .line 870
    .line 871
    move-object/from16 v20, v14

    .line 872
    .line 873
    const/4 v14, 0x0

    .line 874
    move-object v15, v9

    .line 875
    move-object/from16 v4, v16

    .line 876
    .line 877
    move-object/from16 v5, v20

    .line 878
    .line 879
    move-object/from16 v9, v24

    .line 880
    .line 881
    const/16 p7, 0x1

    .line 882
    .line 883
    const/4 v6, 0x0

    .line 884
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 885
    .line 886
    .line 887
    move-result-object v13

    .line 888
    move-object/from16 v16, v10

    .line 889
    .line 890
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 891
    .line 892
    .line 893
    move-object/from16 v18, v13

    .line 894
    .line 895
    goto :goto_1a

    .line 896
    :cond_3c
    move-object v15, v9

    .line 897
    move-object/from16 v16, v10

    .line 898
    .line 899
    move-object v4, v11

    .line 900
    move-object v5, v14

    .line 901
    move-object/from16 v9, v24

    .line 902
    .line 903
    const/16 p7, 0x1

    .line 904
    .line 905
    const/4 v6, 0x0

    .line 906
    const v10, -0x36529734    # -1420569.5f

    .line 907
    .line 908
    .line 909
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 913
    .line 914
    .line 915
    const/16 v18, 0x0

    .line 916
    .line 917
    :goto_1a
    if-eqz v8, :cond_3e

    .line 918
    .line 919
    const v10, -0x365130a5

    .line 920
    .line 921
    .line 922
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 923
    .line 924
    .line 925
    sget-object v10, Landroidx/compose/animation/core/ArcSplineKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 926
    .line 927
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object v11

    .line 931
    if-ne v11, v5, :cond_3d

    .line 932
    .line 933
    const-string v11, "Built-in shrink/expand"

    .line 934
    .line 935
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 936
    .line 937
    .line 938
    :cond_3d
    check-cast v11, Ljava/lang/String;

    .line 939
    .line 940
    const/16 v13, 0x180

    .line 941
    .line 942
    const/4 v14, 0x0

    .line 943
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 944
    .line 945
    .line 946
    move-result-object v13

    .line 947
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 948
    .line 949
    .line 950
    move-object/from16 v28, v13

    .line 951
    .line 952
    goto :goto_1b

    .line 953
    :cond_3e
    const v10, -0x364f7fbd

    .line 954
    .line 955
    .line 956
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 960
    .line 961
    .line 962
    const/16 v28, 0x0

    .line 963
    .line 964
    :goto_1b
    if-eqz v8, :cond_40

    .line 965
    .line 966
    const v10, -0x364e6023

    .line 967
    .line 968
    .line 969
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v10

    .line 976
    if-ne v10, v5, :cond_3f

    .line 977
    .line 978
    const-string v10, "Built-in InterruptionHandlingOffset"

    .line 979
    .line 980
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    :cond_3f
    move-object v11, v10

    .line 984
    check-cast v11, Ljava/lang/String;

    .line 985
    .line 986
    const/16 v13, 0x180

    .line 987
    .line 988
    const/4 v14, 0x0

    .line 989
    move-object/from16 v10, v16

    .line 990
    .line 991
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 992
    .line 993
    .line 994
    move-result-object v13

    .line 995
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 996
    .line 997
    .line 998
    move-object/from16 v16, v13

    .line 999
    .line 1000
    goto :goto_1c

    .line 1001
    :cond_40
    const v10, -0x364bc67d

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1008
    .line 1009
    .line 1010
    const/16 v16, 0x0

    .line 1011
    .line 1012
    :goto_1c
    xor-int/lit8 v8, v8, 0x1

    .line 1013
    .line 1014
    sget-object v10, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->SrgbPrimaries:[F

    .line 1015
    .line 1016
    const v10, -0x363f7c78    # -1577073.0f

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1023
    .line 1024
    .line 1025
    sget-object v10, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 1026
    .line 1027
    iget-object v11, v15, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 1028
    .line 1029
    if-nez v11, :cond_42

    .line 1030
    .line 1031
    iget-object v11, v4, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    .line 1032
    .line 1033
    if-eqz v11, :cond_41

    .line 1034
    .line 1035
    goto :goto_1d

    .line 1036
    :cond_41
    move v13, v6

    .line 1037
    goto :goto_1e

    .line 1038
    :cond_42
    :goto_1d
    move/from16 v13, p7

    .line 1039
    .line 1040
    :goto_1e
    iget-object v11, v15, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 1041
    .line 1042
    if-nez v11, :cond_44

    .line 1043
    .line 1044
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 1045
    .line 1046
    if-eqz v4, :cond_43

    .line 1047
    .line 1048
    goto :goto_1f

    .line 1049
    :cond_43
    move v4, v6

    .line 1050
    goto :goto_20

    .line 1051
    :cond_44
    :goto_1f
    move/from16 v4, p7

    .line 1052
    .line 1053
    :goto_20
    if-eqz v13, :cond_46

    .line 1054
    .line 1055
    const v11, -0x29f458fd

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v11

    .line 1065
    if-ne v11, v5, :cond_45

    .line 1066
    .line 1067
    const-string v11, "Built-in alpha"

    .line 1068
    .line 1069
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1070
    .line 1071
    .line 1072
    :cond_45
    check-cast v11, Ljava/lang/String;

    .line 1073
    .line 1074
    const/16 v13, 0x180

    .line 1075
    .line 1076
    const/4 v14, 0x0

    .line 1077
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v13

    .line 1081
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1082
    .line 1083
    .line 1084
    move-object v15, v13

    .line 1085
    goto :goto_21

    .line 1086
    :cond_46
    const v11, -0x29f1c318

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1093
    .line 1094
    .line 1095
    const/4 v15, 0x0

    .line 1096
    :goto_21
    if-eqz v4, :cond_48

    .line 1097
    .line 1098
    const v11, -0x29f0badd

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v11

    .line 1108
    if-ne v11, v5, :cond_47

    .line 1109
    .line 1110
    const-string v11, "Built-in scale"

    .line 1111
    .line 1112
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1113
    .line 1114
    .line 1115
    :cond_47
    check-cast v11, Ljava/lang/String;

    .line 1116
    .line 1117
    const/16 v13, 0x180

    .line 1118
    .line 1119
    const/4 v14, 0x0

    .line 1120
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v13

    .line 1124
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1125
    .line 1126
    .line 1127
    move-object/from16 v23, v13

    .line 1128
    .line 1129
    goto :goto_22

    .line 1130
    :cond_48
    const v10, -0x29ee24f8

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1137
    .line 1138
    .line 1139
    const/16 v23, 0x0

    .line 1140
    .line 1141
    :goto_22
    if-eqz v4, :cond_49

    .line 1142
    .line 1143
    const v4, -0x29ecf5a0

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1147
    .line 1148
    .line 1149
    sget-object v10, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 1150
    .line 1151
    const/16 v13, 0x180

    .line 1152
    .line 1153
    const/4 v14, 0x0

    .line 1154
    const-string v11, "TransformOriginInterruptionHandling"

    .line 1155
    .line 1156
    move-object/from16 v4, v23

    .line 1157
    .line 1158
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v13

    .line 1162
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1163
    .line 1164
    .line 1165
    goto :goto_23

    .line 1166
    :cond_49
    move-object/from16 v4, v23

    .line 1167
    .line 1168
    const v10, -0x29ea5478

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1175
    .line 1176
    .line 1177
    const/4 v13, 0x0

    .line 1178
    :goto_23
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v10

    .line 1182
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v11

    .line 1186
    or-int/2addr v10, v11

    .line 1187
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v11

    .line 1191
    or-int/2addr v10, v11

    .line 1192
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v11

    .line 1196
    or-int/2addr v10, v11

    .line 1197
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v11

    .line 1201
    or-int/2addr v10, v11

    .line 1202
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v11

    .line 1206
    or-int/2addr v10, v11

    .line 1207
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v11

    .line 1211
    if-nez v10, :cond_4b

    .line 1212
    .line 1213
    if-ne v11, v5, :cond_4a

    .line 1214
    .line 1215
    goto :goto_24

    .line 1216
    :cond_4a
    move-object/from16 v25, v0

    .line 1217
    .line 1218
    move-object/from16 v26, v7

    .line 1219
    .line 1220
    goto :goto_25

    .line 1221
    :cond_4b
    :goto_24
    new-instance v21, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 1222
    .line 1223
    move-object/from16 v25, v0

    .line 1224
    .line 1225
    move-object/from16 v23, v4

    .line 1226
    .line 1227
    move-object/from16 v26, v7

    .line 1228
    .line 1229
    move-object/from16 v24, v9

    .line 1230
    .line 1231
    move-object/from16 v27, v13

    .line 1232
    .line 1233
    move-object/from16 v22, v15

    .line 1234
    .line 1235
    invoke-direct/range {v21 .. v27}, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    .line 1236
    .line 1237
    .line 1238
    move-object/from16 v11, v21

    .line 1239
    .line 1240
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1241
    .line 1242
    .line 1243
    :goto_25
    move-object/from16 v29, v11

    .line 1244
    .line 1245
    check-cast v29, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 1246
    .line 1247
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v0

    .line 1251
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v4

    .line 1255
    or-int/2addr v0, v4

    .line 1256
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v4

    .line 1260
    if-nez v0, :cond_4c

    .line 1261
    .line 1262
    if-ne v4, v5, :cond_4d

    .line 1263
    .line 1264
    :cond_4c
    new-instance v4, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;

    .line 1265
    .line 1266
    invoke-direct {v4, v8, v1}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1270
    .line 1271
    .line 1272
    :cond_4d
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1273
    .line 1274
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1275
    .line 1276
    invoke-static {v0, v4}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v4

    .line 1280
    new-instance v21, Landroidx/compose/animation/EnterExitTransitionElement;

    .line 1281
    .line 1282
    move-object/from16 v22, v9

    .line 1283
    .line 1284
    move-object/from16 v24, v16

    .line 1285
    .line 1286
    move-object/from16 v27, v26

    .line 1287
    .line 1288
    move-object/from16 v23, v28

    .line 1289
    .line 1290
    move-object/from16 v28, v1

    .line 1291
    .line 1292
    move-object/from16 v26, v25

    .line 1293
    .line 1294
    move-object/from16 v25, v18

    .line 1295
    .line 1296
    invoke-direct/range {v21 .. v29}, Landroidx/compose/animation/EnterExitTransitionElement;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V

    .line 1297
    .line 1298
    .line 1299
    move-object/from16 v1, v21

    .line 1300
    .line 1301
    invoke-interface {v4, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v1

    .line 1305
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    const v4, -0x70fb69

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1316
    .line 1317
    .line 1318
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    if-ne v1, v5, :cond_4e

    .line 1331
    .line 1332
    new-instance v1, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 1333
    .line 1334
    invoke-direct {v1, v2}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1338
    .line 1339
    .line 1340
    :cond_4e
    check-cast v1, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 1341
    .line 1342
    iget-wide v4, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1343
    .line 1344
    ushr-long v7, v4, v17

    .line 1345
    .line 1346
    xor-long/2addr v4, v7

    .line 1347
    long-to-int v4, v4

    .line 1348
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v5

    .line 1352
    invoke-static {v12, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1357
    .line 1358
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1359
    .line 1360
    .line 1361
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1362
    .line 1363
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1364
    .line 1365
    .line 1366
    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1367
    .line 1368
    if-eqz v8, :cond_4f

    .line 1369
    .line 1370
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1371
    .line 1372
    .line 1373
    goto :goto_26

    .line 1374
    :cond_4f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1375
    .line 1376
    .line 1377
    :goto_26
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1378
    .line 1379
    invoke-static {v12, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1380
    .line 1381
    .line 1382
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1383
    .line 1384
    invoke-static {v12, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v1

    .line 1391
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1392
    .line 1393
    invoke-static {v12, v1, v4}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 1394
    .line 1395
    .line 1396
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1397
    .line 1398
    invoke-static {v12, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1399
    .line 1400
    .line 1401
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1402
    .line 1403
    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1404
    .line 1405
    .line 1406
    shr-int/lit8 v0, v19, 0x12

    .line 1407
    .line 1408
    and-int/lit8 v0, v0, 0x70

    .line 1409
    .line 1410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    move-object/from16 v7, p6

    .line 1415
    .line 1416
    invoke-virtual {v7, v2, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move/from16 v0, p7

    .line 1420
    .line 1421
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1425
    .line 1426
    .line 1427
    :goto_27
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1428
    .line 1429
    .line 1430
    goto :goto_28

    .line 1431
    :cond_50
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1432
    .line 1433
    .line 1434
    :goto_28
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v9

    .line 1438
    if-eqz v9, :cond_51

    .line 1439
    .line 1440
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;

    .line 1441
    .line 1442
    move-object/from16 v1, p0

    .line 1443
    .line 1444
    move-object/from16 v2, p1

    .line 1445
    .line 1446
    move-object/from16 v4, p3

    .line 1447
    .line 1448
    move-object/from16 v5, p4

    .line 1449
    .line 1450
    move-object/from16 v6, p5

    .line 1451
    .line 1452
    move/from16 v8, p8

    .line 1453
    .line 1454
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 1455
    .line 1456
    .line 1457
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1458
    .line 1459
    :cond_51
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move/from16 v7, p7

    .line 254
    move-object/from16 v14, p6

    check-cast v14, Landroidx/compose/runtime/GapComposer;

    const v0, -0x5659dfc5

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v7, 0x6

    move/from16 v1, p0

    if-nez v0, :cond_1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    or-int/lit8 v0, v0, 0x30

    and-int/lit16 v2, v7, 0x180

    move-object/from16 v11, p2

    if-nez v2, :cond_3

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit16 v2, v7, 0xc00

    move-object/from16 v12, p3

    if-nez v2, :cond_5

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x800

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    :cond_5
    or-int/lit16 v0, v0, 0x6000

    const/high16 v2, 0x30000

    and-int/2addr v2, v7

    move-object/from16 v13, p5

    if-nez v2, :cond_7

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x20000

    goto :goto_4

    :cond_6
    const/high16 v2, 0x10000

    :goto_4
    or-int/2addr v0, v2

    :cond_7
    const v2, 0x12493

    and-int/2addr v2, v0

    const v3, 0x12492

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v14, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    and-int/lit8 v3, v0, 0xe

    shr-int/lit8 v5, v0, 0x9

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v3, v5

    const-string v5, "AnimatedVisibility"

    invoke-static {v2, v5, v14, v3, v4}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v8

    .line 256
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 257
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v3, :cond_9

    .line 258
    sget-object v2, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$3:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 259
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    :cond_9
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v2, v0, 0x3

    and-int/lit16 v3, v2, 0x380

    or-int/lit8 v3, v3, 0x30

    and-int/lit16 v4, v2, 0x1c00

    or-int/2addr v3, v4

    const v4, 0xe000

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v0, v3

    or-int v15, v2, v0

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v10

    goto :goto_6

    .line 261
    :cond_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    .line 262
    :goto_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 263
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    move-object/from16 v14, p6

    .line 4
    .line 5
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x6b47faab

    .line 8
    .line 9
    .line 10
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move/from16 v1, p0

    .line 14
    .line 15
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x10

    .line 25
    .line 26
    :goto_0
    or-int/2addr v0, v7

    .line 27
    and-int/lit8 v2, p8, 0x2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    or-int/lit16 v0, v0, 0x180

    .line 32
    .line 33
    move-object/from16 v3, p1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move-object/from16 v3, p1

    .line 37
    .line 38
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    const/16 v4, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/16 v4, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v0, v4

    .line 50
    :goto_2
    and-int/lit8 v4, p8, 0x4

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    or-int/lit16 v0, v0, 0xc00

    .line 55
    .line 56
    :cond_3
    move-object/from16 v5, p2

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    and-int/lit16 v5, v7, 0xc00

    .line 60
    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    move-object/from16 v5, p2

    .line 64
    .line 65
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    const/16 v6, 0x800

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    const/16 v6, 0x400

    .line 75
    .line 76
    :goto_3
    or-int/2addr v0, v6

    .line 77
    :goto_4
    and-int/lit8 v6, p8, 0x8

    .line 78
    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x6000

    .line 82
    .line 83
    :cond_6
    move-object/from16 v8, p3

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_7
    and-int/lit16 v8, v7, 0x6000

    .line 87
    .line 88
    if-nez v8, :cond_6

    .line 89
    .line 90
    move-object/from16 v8, p3

    .line 91
    .line 92
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_8

    .line 97
    .line 98
    const/16 v9, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v9, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v0, v9

    .line 104
    :goto_6
    const/high16 v9, 0x30000

    .line 105
    .line 106
    or-int/2addr v0, v9

    .line 107
    const v10, 0x92491

    .line 108
    .line 109
    .line 110
    and-int/2addr v10, v0

    .line 111
    const v11, 0x92490

    .line 112
    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    if-eq v10, v11, :cond_9

    .line 116
    .line 117
    const/4 v10, 0x1

    .line 118
    goto :goto_7

    .line 119
    :cond_9
    move v10, v12

    .line 120
    :goto_7
    and-int/lit8 v11, v0, 0x1

    .line 121
    .line 122
    invoke-virtual {v14, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_e

    .line 127
    .line 128
    if-eqz v2, :cond_a

    .line 129
    .line 130
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 131
    .line 132
    move-object v10, v2

    .line 133
    goto :goto_8

    .line 134
    :cond_a
    move-object v10, v3

    .line 135
    :goto_8
    const/16 v2, 0xf

    .line 136
    .line 137
    const/4 v3, 0x3

    .line 138
    const/4 v11, 0x0

    .line 139
    if-eqz v4, :cond_b

    .line 140
    .line 141
    invoke-static {v11, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v2}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v4, v5}, Landroidx/compose/animation/EnterTransitionImpl;->plus(Landroidx/compose/animation/EnterTransitionImpl;)Landroidx/compose/animation/EnterTransitionImpl;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    goto :goto_9

    .line 154
    :cond_b
    move-object v4, v5

    .line 155
    :goto_9
    if-eqz v6, :cond_c

    .line 156
    .line 157
    invoke-static {v11, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v11, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v3, v2}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    move-object v8, v2

    .line 170
    :cond_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    shr-int/lit8 v3, v0, 0x3

    .line 175
    .line 176
    and-int/lit8 v3, v3, 0xe

    .line 177
    .line 178
    or-int/lit8 v3, v3, 0x30

    .line 179
    .line 180
    const-string v5, "AnimatedVisibility"

    .line 181
    .line 182
    invoke-static {v2, v5, v14, v3, v12}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 191
    .line 192
    if-ne v3, v6, :cond_d

    .line 193
    .line 194
    sget-object v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$4:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 195
    .line 196
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 200
    .line 201
    and-int/lit16 v6, v0, 0x380

    .line 202
    .line 203
    or-int/lit8 v6, v6, 0x30

    .line 204
    .line 205
    and-int/lit16 v11, v0, 0x1c00

    .line 206
    .line 207
    or-int/2addr v6, v11

    .line 208
    const v11, 0xe000

    .line 209
    .line 210
    .line 211
    and-int/2addr v0, v11

    .line 212
    or-int/2addr v0, v6

    .line 213
    or-int v15, v0, v9

    .line 214
    .line 215
    move-object/from16 v13, p5

    .line 216
    .line 217
    move-object v9, v3

    .line 218
    move-object v11, v4

    .line 219
    move-object v12, v8

    .line 220
    move-object v8, v2

    .line 221
    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 222
    .line 223
    .line 224
    move-object v2, v10

    .line 225
    move-object v3, v11

    .line 226
    move-object v4, v12

    .line 227
    goto :goto_a

    .line 228
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    move-object v2, v3

    .line 232
    move-object v3, v5

    .line 233
    move-object v4, v8

    .line 234
    move-object/from16 v5, p4

    .line 235
    .line 236
    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    if-eqz v9, :cond_f

    .line 241
    .line 242
    new-instance v0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;

    .line 243
    .line 244
    move-object/from16 v6, p5

    .line 245
    .line 246
    move/from16 v8, p8

    .line 247
    .line 248
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 249
    .line 250
    .line 251
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 252
    .line 253
    :cond_f
    return-void
.end method

.method public static final AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
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
    move/from16 v10, p7

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v2, 0x65b46798

    .line 14
    .line 15
    .line 16
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v2, v10, 0x6

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x2

    .line 33
    :goto_0
    or-int/2addr v2, v10

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v2, v10

    .line 36
    :goto_1
    and-int/lit8 v4, v10, 0x30

    .line 37
    .line 38
    const/16 v5, 0x20

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    move v4, v5

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v4, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v2, v4

    .line 53
    :cond_3
    and-int/lit16 v4, v10, 0x180

    .line 54
    .line 55
    if-nez v4, :cond_5

    .line 56
    .line 57
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    const/16 v4, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v4, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v2, v4

    .line 69
    :cond_5
    and-int/lit16 v4, v10, 0xc00

    .line 70
    .line 71
    if-nez v4, :cond_7

    .line 72
    .line 73
    move-object/from16 v4, p3

    .line 74
    .line 75
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    const/16 v6, 0x800

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    const/16 v6, 0x400

    .line 85
    .line 86
    :goto_4
    or-int/2addr v2, v6

    .line 87
    goto :goto_5

    .line 88
    :cond_7
    move-object/from16 v4, p3

    .line 89
    .line 90
    :goto_5
    and-int/lit16 v6, v10, 0x6000

    .line 91
    .line 92
    if-nez v6, :cond_9

    .line 93
    .line 94
    move-object/from16 v6, p4

    .line 95
    .line 96
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-eqz v8, :cond_8

    .line 101
    .line 102
    const/16 v8, 0x4000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_8
    const/16 v8, 0x2000

    .line 106
    .line 107
    :goto_6
    or-int/2addr v2, v8

    .line 108
    goto :goto_7

    .line 109
    :cond_9
    move-object/from16 v6, p4

    .line 110
    .line 111
    :goto_7
    const/high16 v8, 0x30000

    .line 112
    .line 113
    and-int v11, v10, v8

    .line 114
    .line 115
    if-nez v11, :cond_b

    .line 116
    .line 117
    move-object/from16 v11, p5

    .line 118
    .line 119
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_a

    .line 124
    .line 125
    const/high16 v12, 0x20000

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_a
    const/high16 v12, 0x10000

    .line 129
    .line 130
    :goto_8
    or-int/2addr v2, v12

    .line 131
    goto :goto_9

    .line 132
    :cond_b
    move-object/from16 v11, p5

    .line 133
    .line 134
    :goto_9
    const v12, 0x12493

    .line 135
    .line 136
    .line 137
    and-int/2addr v12, v2

    .line 138
    const v13, 0x12492

    .line 139
    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    const/4 v15, 0x1

    .line 143
    if-eq v12, v13, :cond_c

    .line 144
    .line 145
    move v12, v15

    .line 146
    goto :goto_a

    .line 147
    :cond_c
    move v12, v14

    .line 148
    :goto_a
    and-int/lit8 v13, v2, 0x1

    .line 149
    .line 150
    invoke-virtual {v7, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    if-eqz v12, :cond_12

    .line 155
    .line 156
    and-int/lit8 v12, v2, 0x70

    .line 157
    .line 158
    if-ne v12, v5, :cond_d

    .line 159
    .line 160
    move v5, v15

    .line 161
    goto :goto_b

    .line 162
    :cond_d
    move v5, v14

    .line 163
    :goto_b
    and-int/lit8 v13, v2, 0xe

    .line 164
    .line 165
    if-ne v13, v3, :cond_e

    .line 166
    .line 167
    move v14, v15

    .line 168
    :cond_e
    or-int v3, v5, v14

    .line 169
    .line 170
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 175
    .line 176
    if-nez v3, :cond_f

    .line 177
    .line 178
    if-ne v5, v14, :cond_10

    .line 179
    .line 180
    :cond_f
    new-instance v5, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;

    .line 181
    .line 182
    invoke-direct {v5, v1, v0}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Transition;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 189
    .line 190
    invoke-static {v9, v5}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    if-ne v5, v14, :cond_11

    .line 199
    .line 200
    sget-object v5, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE$1:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 201
    .line 202
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_11
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 206
    .line 207
    or-int/2addr v8, v13

    .line 208
    or-int/2addr v8, v12

    .line 209
    and-int/lit16 v12, v2, 0x1c00

    .line 210
    .line 211
    or-int/2addr v8, v12

    .line 212
    const v12, 0xe000

    .line 213
    .line 214
    .line 215
    and-int/2addr v12, v2

    .line 216
    or-int/2addr v8, v12

    .line 217
    const/high16 v12, 0x1c00000

    .line 218
    .line 219
    shl-int/lit8 v2, v2, 0x6

    .line 220
    .line 221
    and-int/2addr v2, v12

    .line 222
    or-int/2addr v8, v2

    .line 223
    move-object v2, v3

    .line 224
    move-object v3, v4

    .line 225
    move-object v4, v6

    .line 226
    move-object v6, v11

    .line 227
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/CrossfadeKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 228
    .line 229
    .line 230
    goto :goto_c

    .line 231
    :cond_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 232
    .line 233
    .line 234
    :goto_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    if-eqz v8, :cond_13

    .line 239
    .line 240
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;

    .line 241
    .line 242
    move-object/from16 v1, p0

    .line 243
    .line 244
    move-object/from16 v2, p1

    .line 245
    .line 246
    move-object/from16 v4, p3

    .line 247
    .line 248
    move-object/from16 v5, p4

    .line 249
    .line 250
    move-object/from16 v6, p5

    .line 251
    .line 252
    move-object v3, v9

    .line 253
    move v7, v10

    .line 254
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$9;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 255
    .line 256
    .line 257
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 258
    .line 259
    :cond_13
    return-void
.end method

.method public static final Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 16

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
    move/from16 v6, p6

    .line 10
    .line 11
    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 12
    .line 13
    move-object/from16 v4, p5

    .line 14
    .line 15
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v7, -0x6fe6665e

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v7, v6, 0x6

    .line 24
    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v7, 0x2

    .line 36
    :goto_0
    or-int/2addr v7, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v7, v6

    .line 39
    :goto_1
    and-int/lit8 v9, v6, 0x30

    .line 40
    .line 41
    if-nez v9, :cond_3

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v9, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v7, v9

    .line 55
    :cond_3
    and-int/lit16 v9, v6, 0x180

    .line 56
    .line 57
    if-nez v9, :cond_5

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_4

    .line 64
    .line 65
    const/16 v9, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v9, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v7, v9

    .line 71
    :cond_5
    or-int/lit16 v7, v7, 0xc00

    .line 72
    .line 73
    and-int/lit16 v9, v6, 0x6000

    .line 74
    .line 75
    if-nez v9, :cond_7

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_6

    .line 82
    .line 83
    const/16 v9, 0x4000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v9, 0x2000

    .line 87
    .line 88
    :goto_4
    or-int/2addr v7, v9

    .line 89
    :cond_7
    and-int/lit16 v9, v7, 0x2493

    .line 90
    .line 91
    const/16 v11, 0x2492

    .line 92
    .line 93
    const/4 v12, 0x1

    .line 94
    const/4 v13, 0x0

    .line 95
    if-eq v9, v11, :cond_8

    .line 96
    .line 97
    move v9, v12

    .line 98
    goto :goto_5

    .line 99
    :cond_8
    move v9, v13

    .line 100
    :goto_5
    and-int/lit8 v11, v7, 0x1

    .line 101
    .line 102
    invoke-virtual {v4, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_1a

    .line 107
    .line 108
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 113
    .line 114
    if-ne v9, v11, :cond_9

    .line 115
    .line 116
    sget-object v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 117
    .line 118
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 122
    .line 123
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    if-ne v14, v11, :cond_a

    .line 128
    .line 129
    new-instance v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 130
    .line 131
    invoke-direct {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v15

    .line 138
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_a
    check-cast v14, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 145
    .line 146
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    if-ne v15, v11, :cond_b

    .line 151
    .line 152
    sget-object v15, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 153
    .line 154
    new-instance v15, Landroidx/collection/MutableScatterMap;

    .line 155
    .line 156
    invoke-direct {v15}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_b
    check-cast v15, Landroidx/collection/MutableScatterMap;

    .line 163
    .line 164
    const/16 p5, 0x20

    .line 165
    .line 166
    iget-object v10, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 167
    .line 168
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_11

    .line 181
    .line 182
    const v0, 0x13244968

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ne v0, v12, :cond_d

    .line 193
    .line 194
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_c

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_c
    const v0, 0x13293d80

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_d
    :goto_6
    const v0, 0x1326563a

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 223
    .line 224
    .line 225
    and-int/lit8 v0, v7, 0xe

    .line 226
    .line 227
    const/4 v7, 0x4

    .line 228
    if-ne v0, v7, :cond_e

    .line 229
    .line 230
    move v0, v12

    .line 231
    goto :goto_7

    .line 232
    :cond_e
    move v0, v13

    .line 233
    :goto_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    if-nez v0, :cond_f

    .line 238
    .line 239
    if-ne v7, v11, :cond_10

    .line 240
    .line 241
    :cond_f
    new-instance v7, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 242
    .line 243
    const/4 v0, 0x3

    .line 244
    invoke-direct {v7, v0, v1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_10
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 251
    .line 252
    invoke-static {v14, v7}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 259
    .line 260
    .line 261
    :goto_8
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_11
    const v0, 0x132954c0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 272
    .line 273
    .line 274
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v15, v0}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_16

    .line 283
    .line 284
    const v0, 0x132a41bb

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    move v7, v13

    .line 295
    :goto_a
    move-object v8, v0

    .line 296
    check-cast v8, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 297
    .line 298
    invoke-virtual {v8}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v11

    .line 302
    const/4 v12, -0x1

    .line 303
    if-eqz v11, :cond_13

    .line 304
    .line 305
    invoke-virtual {v8}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    invoke-interface {v9, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    if-eqz v8, :cond_12

    .line 326
    .line 327
    goto :goto_b

    .line 328
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 329
    .line 330
    const/4 v12, 0x1

    .line 331
    goto :goto_a

    .line 332
    :cond_13
    move v7, v12

    .line 333
    :goto_b
    if-ne v7, v12, :cond_14

    .line 334
    .line 335
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    goto :goto_c

    .line 343
    :cond_14
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v14, v7, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    :goto_c
    invoke-virtual {v15}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    move v7, v13

    .line 358
    :goto_d
    if-ge v7, v0, :cond_15

    .line 359
    .line 360
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    new-instance v10, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    .line 365
    .line 366
    invoke-direct {v10, v1, v3, v8, v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 367
    .line 368
    .line 369
    const v11, -0x37b2e7f5

    .line 370
    .line 371
    .line 372
    invoke-static {v11, v10, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    invoke-virtual {v15, v8, v10}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    add-int/lit8 v7, v7, 0x1

    .line 380
    .line 381
    goto :goto_d

    .line 382
    :cond_15
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 383
    .line 384
    .line 385
    goto :goto_e

    .line 386
    :cond_16
    const v0, 0x13359780

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 393
    .line 394
    .line 395
    :goto_e
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 396
    .line 397
    invoke-static {v0, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iget-wide v7, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 402
    .line 403
    ushr-long v10, v7, p5

    .line 404
    .line 405
    xor-long/2addr v7, v10

    .line 406
    long-to-int v7, v7

    .line 407
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-static {v4, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 412
    .line 413
    .line 414
    move-result-object v10

    .line 415
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 416
    .line 417
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 421
    .line 422
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 423
    .line 424
    .line 425
    iget-boolean v12, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 426
    .line 427
    if-eqz v12, :cond_17

    .line 428
    .line 429
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 430
    .line 431
    .line 432
    goto :goto_f

    .line 433
    :cond_17
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 434
    .line 435
    .line 436
    :goto_f
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 437
    .line 438
    invoke-static {v4, v0, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 439
    .line 440
    .line 441
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 442
    .line 443
    invoke-static {v4, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 444
    .line 445
    .line 446
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 451
    .line 452
    invoke-static {v4, v0, v7}, Landroidx/compose/runtime/Updater;->init-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 453
    .line 454
    .line 455
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 456
    .line 457
    invoke-static {v4, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 458
    .line 459
    .line 460
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 461
    .line 462
    invoke-static {v4, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 463
    .line 464
    .line 465
    const v0, -0x4e3e53b8

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    move v7, v13

    .line 476
    :goto_10
    if-ge v7, v0, :cond_19

    .line 477
    .line 478
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    const v10, 0x45d4d0b9

    .line 483
    .line 484
    .line 485
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    invoke-virtual {v4, v10, v11}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v15, v8}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 497
    .line 498
    if-nez v8, :cond_18

    .line 499
    .line 500
    const v8, 0x74c5d4d0

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 504
    .line 505
    .line 506
    :goto_11
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 507
    .line 508
    .line 509
    goto :goto_12

    .line 510
    :cond_18
    const v10, 0x45d4d551

    .line 511
    .line 512
    .line 513
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 514
    .line 515
    .line 516
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object v10

    .line 520
    invoke-interface {v8, v4, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    goto :goto_11

    .line 524
    :goto_12
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 525
    .line 526
    .line 527
    add-int/lit8 v7, v7, 0x1

    .line 528
    .line 529
    goto :goto_10

    .line 530
    :cond_19
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 531
    .line 532
    .line 533
    const/4 v0, 0x1

    .line 534
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 535
    .line 536
    .line 537
    goto :goto_13

    .line 538
    :cond_1a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 539
    .line 540
    .line 541
    move-object/from16 v9, p3

    .line 542
    .line 543
    :goto_13
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    if-eqz v7, :cond_1b

    .line 548
    .line 549
    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    .line 550
    .line 551
    move-object v4, v9

    .line 552
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 553
    .line 554
    .line 555
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 556
    .line 557
    :cond_1b
    return-void
.end method

.method public static final Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    move/from16 v6, p6

    .line 558
    move-object/from16 v12, p5

    check-cast v12, Landroidx/compose/runtime/GapComposer;

    const v0, -0x1e970fed

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v6, 0x6

    if-nez v0, :cond_2

    and-int/lit8 v0, v6, 0x8

    if-nez v0, :cond_0

    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    or-int/2addr v0, v6

    goto :goto_2

    :cond_2
    move v0, v6

    :goto_2
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_4

    :cond_3
    and-int/lit8 v2, v6, 0x30

    if-nez v2, :cond_5

    invoke-virtual {v12, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_3

    :cond_4
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v0, v2

    :cond_5
    :goto_4
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v3, v6, 0x180

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x100

    goto :goto_5

    :cond_8
    const/16 v4, 0x80

    :goto_5
    or-int/2addr v0, v4

    :goto_6
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move-object/from16 v5, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v5, v6, 0xc00

    if-nez v5, :cond_9

    move-object/from16 v5, p3

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_7

    :cond_b
    const/16 v7, 0x400

    :goto_7
    or-int/2addr v0, v7

    :goto_8
    and-int/lit16 v7, v6, 0x6000

    move-object/from16 v11, p4

    if-nez v7, :cond_d

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x4000

    goto :goto_9

    :cond_c
    const/16 v7, 0x2000

    :goto_9
    or-int/2addr v0, v7

    :cond_d
    and-int/lit16 v7, v0, 0x2493

    const/16 v8, 0x2492

    const/4 v9, 0x0

    if-eq v7, v8, :cond_e

    const/4 v7, 0x1

    goto :goto_a

    :cond_e
    move v7, v9

    :goto_a
    and-int/lit8 v8, v0, 0x1

    invoke-virtual {v12, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v1, :cond_f

    .line 559
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :cond_f
    move-object v8, p1

    if-eqz v2, :cond_10

    const/4 p1, 0x7

    const/4 v1, 0x0

    .line 560
    invoke-static {v9, v9, v1, p1}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    goto :goto_b

    :cond_10
    move-object p1, v3

    :goto_b
    if-eqz v4, :cond_11

    .line 561
    const-string v1, "Crossfade"

    goto :goto_c

    :cond_11
    move-object v1, v5

    :goto_c
    and-int/lit8 v2, v0, 0xe

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    .line 562
    invoke-static {p0, v1, v12, v2, v9}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v7

    const v2, 0xe3f0

    and-int v13, v0, v2

    const/4 v10, 0x0

    move-object v9, p1

    .line 563
    invoke-static/range {v7 .. v13}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v1

    move-object v2, v8

    move-object v3, v9

    goto :goto_d

    .line 564
    :cond_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object v2, p1

    move-object v4, v5

    .line 565
    :goto_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_13

    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    move-object v1, p0

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 566
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public static animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/util/Map;

    .line 6
    .line 7
    new-instance p1, Landroidx/compose/ui/unit/IntSize;

    .line 8
    .line 9
    const-wide v1, 0x100000001L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    const/high16 v1, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {p2, v1, p1, v0}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p2, Landroidx/compose/animation/SizeAnimationModifierElement;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Landroidx/compose/animation/SizeAnimationModifierElement;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
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
    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

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
    invoke-virtual {p0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

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
    invoke-virtual {p0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

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
